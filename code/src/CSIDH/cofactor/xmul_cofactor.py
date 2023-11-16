import click
from math import sqrt, floor

phi = (1.0 + sqrt(0.5)) / 2.0
phi_nu, phi_de = phi.as_integer_ratio()

# Montgomery ladder
def LADDER(s):

	click.echo('#include \"mont.h\"')
	click.echo('// Next function implements a Montgomery ladder algorithm')
	click.echo('void xmul_cofactor(proj Q, proj const P, proj const A)\n{')

	click.echo('\tproj x0, x1;')
	click.echo('\tproj_copy(x0, P);')
	click.echo('\txDBL(x1, P, A);')
	assert(int(bin(s),2) == s)
	s_binary = bin(s)[2:][::-1]
	s_length = len(s_binary)
	for i in range(s_length - 2, -1, -1):
		if s_binary[i] == '0':
			click.echo(f'\txADD(x1, (const fp*)x0, (const fp*)x1, P); xDBL(x0, (const fp*)x0, A);')
		else:
			click.echo(f'\txADD(x0, (const fp*)x0, (const fp*)x1, P); xDBL(x1, (const fp*)x1, A);')

	click.echo('\tproj_copy(Q, (const fp*)x0);\n}')

# EUCLID2D: 2-dimensional scalar pseudomultiplication
def EUCLID2D(m : int, n : int, P :str, Q : str, PQ : str):

	click.echo('\n\t// Performing the 2-dimensional scalar pseudomultiplication x([r]P + [s - r]P) with r = s / {Golden Ratio}')
	#( (s0, s1), (x0, x1, diff) ) = ( (m,n), (P, Q, PQ))
	s0, s1 = m, n
	click.echo('\tproj x0, x1, diff;')
	click.echo(f'\tproj_copy(&x0, &{P});')
	click.echo(f'\tproj_copy(&x1, &{Q});')
	click.echo(f'\tproj_copy(&diff, &{PQ});')

	while s0 != 0:
		if s1 < s0:
			click.echo('\tproj_cswap(&x0, &x1, 1);')
			s0, s1 = s1, s0
		if s1 <= 4*s0:
			click.echo('\tproj_copy(&x, &x0); xADD(&x0, &x1, &x0, &diff); proj_copy(&diff, &x); //Fibonacci step')
			s1 -= s0
		elif (s0 % 2) == (s1 % 2):
			click.echo('\txADD(&x0, &x1, &x0, &diff); xDBL(&x1, &x1, A, 1);')
			s1 = (s1 - s0)//2
		elif (s1 % 2) == 0:
			click.echo('\txADD(&diff, &x1, &diff, &x0); xDBL(&x1, &x1, A, 1);')
			s1 //= 2
		else:
			click.echo('\txADD(&diff, &x0, &diff, &x1); xDBL(&x0, &x0, A, 1);')
			s0 //= 2

	while s1 % 2 == 0:
		click.echo('\txDBL(x1, (const fp*)x1, A);')
		s1 //= 2

	if s1 > 1:
		# ---- Ladder step
		click.echo('\n\t// Ladder step on the missing part: x0 will correspond with Ladder(x1)')
		click.echo(f'\tproj_copy(&diff, &x1);')
		click.echo(f'\txDBL(&x0, &x1, A, 1);')
		s1_binary = bin(s1)[2:][::-1]
		s1_length = len(s1_binary)
		for i in range(s1_length - 2, -1, -1):
			click.echo(f'\tproj_cswap(&x0, &x1, {int(s1_binary[i + 1]) ^ int(s1_binary[i])}); xADD(&x1, &x0, &x1, &diff); xDBL(&x0, &x0, A, 1);')

		click.echo(f'\tproj_cswap(&x0, &x1, {int(s1_binary[0])});')
	else:
		# ---
		click.echo('\n\t// The output is stored in x1, so we need to swap')
		click.echo(f'\tproj_cswap(&x0, &x1, 1);')


# PRAC: (simplified) 1-D Euclidean pseudomultiplication
def PRAC(k : int):

	s = k
	click.echo('#include \"../../common/mont.h\"')
	click.echo('// Next function implements PRAC algorithm')
	click.echo('void xmul_cofactor(proj *Q, proj const *P, proj const *A)\n{')
	click.echo('\tproj x, infty;\n')
	click.echo('\t// Point at infinity')
	click.echo('\tfp_set1(infty.x);')
	click.echo('\tfp_set0(infty.z);\n')

	click.echo('\t// Reducing the problem from k = 2^i x s to s')
	click.echo('\tproj_copy(&x, P);')
	while s % 2 == 0:
		click.echo('\txDBL(&x, &x, A, 1);')
		s //= 2

	r = (s * phi_nu) // phi_de
	EUCLID2D(r, s - r, 'x', 'x', 'infty')
	
	click.echo('\n\t// Finally, the output point must be stored in Q')
	click.echo('\tproj_copy(Q, &x0);\n}')
	return None

@click.command()
@click.option('--cofactor', default=None, type=str, help='Cofactor h: p = h x ell_1 x ... ell_n x 3 x 5 x 7 - 1 being ell_1 = 3, ell_2 = 5, and ell_3 = 7.')
def main(cofactor : int):

	cofactor_int = int(cofactor,16)
	#click.echo(f'Cofactor (in base 10): {cofactor_int}')
	#EUCLID2D(1, 2, 'P', 'Q', 'PQ')
	PRAC(cofactor_int)
	#LADDER(cofactor_int)
	#click.echo(f'Cofactor (in base 10): {cofactor_int}')

if __name__ == '__main__':
	main()
