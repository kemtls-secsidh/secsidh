.att_syntax prefix

.global sqr
sqr:
    push	%rdi
	push	%rsi
    push	%rbx
    push    %rbp
    push    %r12
    push    %r13
    push    %r14
    push    %r15    

	lea	-3(%rdx), %ebx
	lea	5(%rdx), %ecx
	mov	%edx, %eax
	and	$-8, %ebx
	shr	$3, %ecx		# count for mul_1 loop
	neg	%rbx			# 8*count and offert for addmul_1 loops
	and	$7, %eax		# clear CF for adc as side-effect

	mov	(%rsi), %rdx

	lea	Lmtab(%rip), %r10

	movslq	(%r10,%rax,4), %r8
	lea	(%r8, %r10), %r10
	jmp	*%r10


Lmf0:	mulx	%rdx, %r8, %r9		# %rsi[0]^2
	add	%rdx, %rdx
	mulx	8(%rsi), %r10, %r11
	lea	64(%rsi), %rsi
	add	%r9, %r10
	jmp	Lmb0

Lmf3:	mulx	%rdx, %r10, %r11		# %rsi[0]^2
	add	%rdx, %rdx
	mov	%r10, (%rdi)
	mulx	8(%rsi), %r8, %r9
	lea	24(%rsi), %rsi
	lea	24(%rdi), %rdi
	add	%r11, %r8
	jmp	Lmb3

Lmf4:	mulx	%rdx, %r8, %r9		# %rsi[0]^
	add	%rdx, %rdx
	mulx	8(%rsi), %r10, %r11
	mov	%r8, (%rdi)
	lea	32(%rsi), %rsi
	lea	32(%rdi), %rdi
	add	%r9, %r10
	jmp	Lmb4

Lmf5:	mulx	%rdx, %r10, %r11		# %rsi[0]^
	add	%rdx, %rdx
	mulx	8(%rsi), %r8, %r9
	mov	%r10, (%rdi)
	lea	40(%rsi), %rsi
	lea	40(%rdi), %rdi
	add	%r11, %r8
	jmp	Lmb5

Lmf6:	mulx	%rdx, %r8, %r9		# %rsi[0]^
	add	%rdx, %rdx
	mulx	8(%rsi), %r10, %r11
	mov	%r8, (%rdi)
	lea	48(%rsi), %rsi
	lea	48(%rdi), %rdi
	add	%r9, %r10
	jmp	Lmb6

Lmf7:	mulx	%rdx, %r10, %r11		# %rsi[0]^
	add	%rdx, %rdx
	mulx	8(%rsi), %r8, %r9
	mov	%r10, (%rdi)
	lea	56(%rsi), %rsi
	lea	56(%rdi), %rdi
	add	%r11, %r8
	jmp	Lmb7

Lmf1:	mulx	%rdx, %r10, %r11		# %rsi[0]^
	add	%rdx, %rdx
	mulx	8(%rsi), %r8, %r9
	mov	%r10, (%rdi)
	lea	8(%rsi), %rsi
	lea	8(%rdi), %rdi
	add	%r11, %r8
	jmp	Lmb1

Lmf2:	mulx	%rdx, %r8, %r9		# %rsi[0]^
	add	%rdx, %rdx
	mulx	8(%rsi), %r10, %r11
	mov	%r8, (%rdi)
	lea	16(%rsi), %rsi
	lea	16(%rdi), %rdi
	dec	%ecx
	add	%r9, %r10
	mulx	(%rsi), %r8, %r9

	.align 16
Ltop:	mov	%r10, -8(%rdi)
	adc	%r11, %r8
Lmb1:	mulx	8(%rsi), %r10, %r11
	adc	%r9, %r10
	lea	64(%rsi), %rsi
Lmb0:	mov	%r8, (%rdi)
	mov	%r10, 8(%rdi)
	mulx	-48(%rsi), %r8, %r9
	lea	64(%rdi), %rdi
	adc	%r11, %r8
Lmb7:	mulx	-40(%rsi), %r10, %r11
	mov	%r8, -48(%rdi)
	adc	%r9, %r10
Lmb6:	mov	%r10, -40(%rdi)
	mulx	-32(%rsi), %r8, %r9
	adc	%r11, %r8
Lmb5:	mulx	-24(%rsi), %r10, %r11
	mov	%r8, -32(%rdi)
	adc	%r9, %r10
Lmb4:	mulx	-16(%rsi), %r8, %r9
	mov	%r10, -24(%rdi)
	adc	%r11, %r8
Lmb3:	mulx	-8(%rsi), %r10, %r11
	adc	%r9, %r10
	mov	%r8, -16(%rdi)
	dec	%ecx
	mulx	(%rsi), %r8, %r9
	jnz	Ltop

Lend:	mov	%r10, -8(%rdi)
	adc	%r11, %r8
	lea	Latab(%rip), %r10
	movslq	(%r10,%rax,4), %r11
	lea	(%r11, %r10), %r11
	mov	$63, %eax
	jmp	*%r11

Led0:	adox	(%rdi), %r8
	adox	%rcx, %r9		# relies on rcx = 
Lf7:	mov	%r8, (%rdi)
	adc	%rcx, %r9		# relies on rcx = 0
	mov	%r9, 8(%rdi)
	lea	-64(%rsi,%rbx,8), %rsi
	mov	%ebx, %ecx
	lea	-56(%rdi,%rbx,8), %rdi
	mov	(%rsi), %r9		# %rsi[-1]
	mov	8(%rsi), %rdx		# %rsi[0]
	shrx	%rax, %r9, %r8
	sarx	%rax, %r9, %r9
	and	%rdx, %r9			# "ci" in # code
	mulx	%rdx, %r10, %r11		# %rsi[0]^
	lea	(%r8,%rdx,2), %rdx		# "%rdx" arg in # code
	jmp	Lb7

	.align 16
Ltp0:	adox	-8(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, -8(%rdi)
	jrcxz	Led0
	mulx	8(%rsi), %r10, %r11
	adox	(%rdi), %r8
	lea	8(%rcx), %ecx
Lb0:	mov	%r8, (%rdi)
	adcx	%r9, %r10
	mulx	16(%rsi), %r8, %r9
	adcx	%r11, %r8
	adox	8(%rdi), %r10
	mov	%r10, 8(%rdi)
	mulx	24(%rsi), %r10, %r11
	lea	64(%rsi), %rsi
	adcx	%r9, %r10
	adox	16(%rdi), %r8
	mov	%r8, 16(%rdi)
	mulx	-32(%rsi), %r8, %r9
	adox	24(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 24(%rdi)
	mulx	-24(%rsi), %r10, %r11
	adcx	%r9, %r10
	adox	32(%rdi), %r8
	mov	%r8, 32(%rdi)
	mulx	-16(%rsi), %r8, %r9
	adox	40(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 40(%rdi)
	adox	48(%rdi), %r8
	mulx	-8(%rsi), %r10, %r11
	mov	%r8, 48(%rdi)
	lea	64(%rdi), %rdi
	adcx	%r9, %r10
	mulx	(%rsi), %r8, %r9
	jmp	Ltp0

Led1:	adox	(%rdi), %r8
	adox	%rcx, %r9		# relies on rcx = 
Lf0:	mov	%r8, (%rdi)
	adc	%rcx, %r9		# relies on rcx = 0
	mov	%r9, 8(%rdi)
	lea	-64(%rsi,%rbx,8), %rsi
	mov	%ebx, %ecx
	lea	-56(%rdi,%rbx,8), %rdi
	mov	-8(%rsi), %r11		# %rsi[-1]
	mov	(%rsi), %rdx		# %rsi[0]
	shrx	%rax, %r11, %r10
	sarx	%rax, %r11, %r11
	and	%rdx, %r11			# "ci" in # code
	mulx	%rdx, %r8, %r9		# %rsi[0]^
	lea	(%r10,%rdx,2), %rdx		# "%rdx" arg in # code
	adcx	%r11, %r8
	mulx	8(%rsi), %r10, %r11
	adox	(%rdi), %r8
	jmp	Lb0

	.align 16
Ltp1:	adox	-8(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, -8(%rdi)
	jrcxz	Led1
Lb1:	mulx	8(%rsi), %r10, %r11
	adox	(%rdi), %r8
	lea	8(%rcx), %ecx
	mov	%r8, (%rdi)
	adcx	%r9, %r10
	mulx	16(%rsi), %r8, %r9
	adcx	%r11, %r8
	adox	8(%rdi), %r10
	mov	%r10, 8(%rdi)
	mulx	24(%rsi), %r10, %r11
	lea	64(%rsi), %rsi
	adcx	%r9, %r10
	adox	16(%rdi), %r8
	mov	%r8, 16(%rdi)
	mulx	-32(%rsi), %r8, %r9
	adox	24(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 24(%rdi)
	mulx	-24(%rsi), %r10, %r11
	adcx	%r9, %r10
	adox	32(%rdi), %r8
	mov	%r8, 32(%rdi)
	mulx	-16(%rsi), %r8, %r9
	adox	40(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 40(%rdi)
	adox	48(%rdi), %r8
	mulx	-8(%rsi), %r10, %r11
	mov	%r8, 48(%rdi)
	lea	64(%rdi), %rdi
	adcx	%r9, %r10
	mulx	(%rsi), %r8, %r9
	jmp	Ltp1

Led2:	adox	(%rdi), %r8
	adox	%rcx, %r9		# relies on rcx = 
Lf1:	mov	%r8, (%rdi)
	adc	%rcx, %r9		# relies on rcx = 0
	mov	%r9, 8(%rdi)
	lea	(%rsi,%rbx,8), %rsi
	mov	%ebx, %ecx
	lea	8(%rbx), %rbx
	lea	-56(%rdi,%rbx,8), %rdi
	mov	-16(%rsi), %r9		# %rsi[-1]
	mov	-8(%rsi), %rdx		# %rsi[0]
	shrx	%rax, %r9, %r8
	sarx	%rax, %r9, %r9
	and	%rdx, %r9			# "ci" in # code
	mulx	%rdx, %r10, %r11		# %rsi[0]^
	lea	(%r8,%rdx,2), %rdx		# "%rdx" arg in # code
	adcx	%r9, %r10			# FIXME: crossjump
	mulx	(%rsi), %r8, %r9
	adox	-8(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, -8(%rdi)
	jmp	Lb1

	.align 16
Ltp2:	adox	-8(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, -8(%rdi)
	jrcxz	Led2
	mulx	8(%rsi), %r10, %r11
	adox	(%rdi), %r8
	lea	8(%rcx), %ecx
	mov	%r8, (%rdi)
	adcx	%r9, %r10
	mulx	16(%rsi), %r8, %r9
	adcx	%r11, %r8
	adox	8(%rdi), %r10
	mov	%r10, 8(%rdi)
	mulx	24(%rsi), %r10, %r11
	lea	64(%rsi), %rsi
	adcx	%r9, %r10
	adox	16(%rdi), %r8
	mov	%r8, 16(%rdi)
	mulx	-32(%rsi), %r8, %r9
	adox	24(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 24(%rdi)
	mulx	-24(%rsi), %r10, %r11
	adcx	%r9, %r10
	adox	32(%rdi), %r8
	mov	%r8, 32(%rdi)
	mulx	-16(%rsi), %r8, %r9
	adox	40(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 40(%rdi)
Lb2:	adox	48(%rdi), %r8
	mulx	-8(%rsi), %r10, %r11
	mov	%r8, 48(%rdi)
	lea	64(%rdi), %rdi
	adcx	%r9, %r10
	mulx	(%rsi), %r8, %r9
	jmp	Ltp2

Led3:	adox	(%rdi), %r8
	adox	%rcx, %r9		# relies on rcx = 
Lf2:	mov	%r8, (%rdi)
	adc	%rcx, %r9		# relies on rcx = 0
	mov	%r9, 8(%rdi)
	lea	(%rsi,%rbx,8), %rsi
	or	%ebx, %ecx
	jz	Lcor3
	lea	-56(%rdi,%rbx,8), %rdi
	mov	-24(%rsi), %r11		# %rsi[-1]
	mov	-16(%rsi), %rdx		# %rsi[0]
	shrx	%rax, %r11, %r10
	sarx	%rax, %r11, %r11
	and	%rdx, %r11			# "ci" in # code
	mulx	%rdx, %r8, %r9		# %rsi[0]^
	lea	(%r10,%rdx,2), %rdx		# "%rdx" arg in # code
	adcx	%r11, %r8
	jmp	Lb2

	.align 16
Ltp3:	adox	-8(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, -8(%rdi)
	jrcxz	Led3
	mulx	8(%rsi), %r10, %r11
	adox	(%rdi), %r8
	lea	8(%rcx), %ecx
	mov	%r8, (%rdi)
	adcx	%r9, %r10
	mulx	16(%rsi), %r8, %r9
	adcx	%r11, %r8
	adox	8(%rdi), %r10
	mov	%r10, 8(%rdi)
	mulx	24(%rsi), %r10, %r11
	lea	64(%rsi), %rsi
	adcx	%r9, %r10
	adox	16(%rdi), %r8
	mov	%r8, 16(%rdi)
	mulx	-32(%rsi), %r8, %r9
	adox	24(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 24(%rdi)
	mulx	-24(%rsi), %r10, %r11
	adcx	%r9, %r10
	adox	32(%rdi), %r8
	mov	%r8, 32(%rdi)
Lb3:	mulx	-16(%rsi), %r8, %r9
	adox	40(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 40(%rdi)
	adox	48(%rdi), %r8
	mulx	-8(%rsi), %r10, %r11
	mov	%r8, 48(%rdi)
	lea	64(%rdi), %rdi
	adcx	%r9, %r10
	mulx	(%rsi), %r8, %r9
	jmp	Ltp3

Led4:	adox	(%rdi), %r8
	adox	%rcx, %r9		# relies on rcx = 
Lf3:	mov	%r8, (%rdi)
	adc	%rcx, %r9		# relies on rcx = 0
	mov	%r9, 8(%rdi)
	lea	(%rsi,%rbx,8), %rsi
	mov	%ebx, %ecx
	lea	-56(%rdi,%rbx,8), %rdi
	mov	-32(%rsi), %r9		# %rsi[-1]
	mov	-24(%rsi), %rdx		# %rsi[0]
	shrx	%rax, %r9, %r8
	sarx	%rax, %r9, %r9
	and	%rdx, %r9			# "ci" in # code
	mulx	%rdx, %r10, %r11		# %rsi[0]^
	lea	(%r8,%rdx,2), %rdx		# "%rdx" arg in # code
	adcx	%r9, %r10
	jmp	Lb3

	.align 16
Ltp4:	adox	-8(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, -8(%rdi)
	jrcxz	Led4
	mulx	8(%rsi), %r10, %r11
	adox	(%rdi), %r8
	lea	8(%rcx), %ecx
	mov	%r8, (%rdi)
	adcx	%r9, %r10
	mulx	16(%rsi), %r8, %r9
	adcx	%r11, %r8
	adox	8(%rdi), %r10
	mov	%r10, 8(%rdi)
	mulx	24(%rsi), %r10, %r11
	lea	64(%rsi), %rsi
	adcx	%r9, %r10
	adox	16(%rdi), %r8
	mov	%r8, 16(%rdi)
	mulx	-32(%rsi), %r8, %r9
	adox	24(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 24(%rdi)
Lb4:	mulx	-24(%rsi), %r10, %r11
	adcx	%r9, %r10
	adox	32(%rdi), %r8
	mov	%r8, 32(%rdi)
	mulx	-16(%rsi), %r8, %r9
	adox	40(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 40(%rdi)
	adox	48(%rdi), %r8
	mulx	-8(%rsi), %r10, %r11
	mov	%r8, 48(%rdi)
	lea	64(%rdi), %rdi
	adcx	%r9, %r10
	mulx	(%rsi), %r8, %r9
	jmp	Ltp4

Led5:	adox	(%rdi), %r8
	adox	%rcx, %r9		# relies on rcx = 
Lf4:	mov	%r8, (%rdi)
	adc	%rcx, %r9		# relies on rcx = 0
	mov	%r9, 8(%rdi)
	lea	(%rsi,%rbx,8), %rsi
	mov	%ebx, %ecx
	lea	-56(%rdi,%rbx,8), %rdi
	mov	-40(%rsi), %r11		# %rsi[-1]
	mov	-32(%rsi), %rdx		# %rsi[0]
	shrx	%rax, %r11, %r10
	sarx	%rax, %r11, %r11
	and	%rdx, %r11			# "ci" in # code
	mulx	%rdx, %r8, %r9		# %rsi[0]^
	lea	(%r10,%rdx,2), %rdx		# "%rdx" arg in # code
	adcx	%r11, %r8
	jmp	Lb4

	.align 16
Ltp5:	adox	-8(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, -8(%rdi)
	jrcxz	Led5
	mulx	8(%rsi), %r10, %r11
	adox	(%rdi), %r8
	lea	8(%rcx), %ecx
	mov	%r8, (%rdi)
	adcx	%r9, %r10
	mulx	16(%rsi), %r8, %r9
	adcx	%r11, %r8
	adox	8(%rdi), %r10
	mov	%r10, 8(%rdi)
	mulx	24(%rsi), %r10, %r11
	lea	64(%rsi), %rsi
	adcx	%r9, %r10
	adox	16(%rdi), %r8
	mov	%r8, 16(%rdi)
Lb5:	mulx	-32(%rsi), %r8, %r9
	adox	24(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 24(%rdi)
	mulx	-24(%rsi), %r10, %r11
	adcx	%r9, %r10
	adox	32(%rdi), %r8
	mov	%r8, 32(%rdi)
	mulx	-16(%rsi), %r8, %r9
	adox	40(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 40(%rdi)
	adox	48(%rdi), %r8
	mulx	-8(%rsi), %r10, %r11
	mov	%r8, 48(%rdi)
	lea	64(%rdi), %rdi
	adcx	%r9, %r10
	mulx	(%rsi), %r8, %r9
	jmp	Ltp5

Led6:	adox	(%rdi), %r8
	adox	%rcx, %r9		# relies on rcx = 
Lf5:	mov	%r8, (%rdi)
	adc	%rcx, %r9		# relies on rcx = 0
	mov	%r9, 8(%rdi)
	lea	(%rsi,%rbx,8), %rsi
	mov	%ebx, %ecx
	lea	-56(%rdi,%rbx,8), %rdi
	mov	-48(%rsi), %r9		# %rsi[-1]
	mov	-40(%rsi), %rdx		# %rsi[0]
	shrx	%rax, %r9, %r8
	sarx	%rax, %r9, %r9
	and	%rdx, %r9			# "ci" in # code
	mulx	%rdx, %r10, %r11		# %rsi[0]^2
	lea	(%r8,%rdx,2), %rdx		# "%rdx" arg in # code
	adcx	%r9, %r10
	jmp	Lb5

	.align 16
Ltp6:	adox	-8(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, -8(%rdi)
	jrcxz	Led6
	mulx	8(%rsi), %r10, %r11
	adox	(%rdi), %r8
	lea	8(%rcx), %ecx
	mov	%r8, (%rdi)
	adcx	%r9, %r10
	mulx	16(%rsi), %r8, %r9
	adcx	%r11, %r8
	adox	8(%rdi), %r10
	mov	%r10, 8(%rdi)
	mulx	24(%rsi), %r10, %r11
	lea	64(%rsi), %rsi
Lb6:	adcx	%r9, %r10
	adox	16(%rdi), %r8
	mov	%r8, 16(%rdi)
	mulx	-32(%rsi), %r8, %r9
	adox	24(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 24(%rdi)
	mulx	-24(%rsi), %r10, %r11
	adcx	%r9, %r10
	adox	32(%rdi), %r8
	mov	%r8, 32(%rdi)
	mulx	-16(%rsi), %r8, %r9
	adox	40(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 40(%rdi)
	adox	48(%rdi), %r8
	mulx	-8(%rsi), %r10, %r11
	mov	%r8, 48(%rdi)
	lea	64(%rdi), %rdi
	adcx	%r9, %r10
	mulx	(%rsi), %r8, %r9
	jmp	Ltp6

Led7:	adox	(%rdi), %r8
	adox	%rcx, %r9		# relies on rcx = 
Lf6:	mov	%r8, (%rdi)
	adc	%rcx, %r9		# relies on rcx = 0
	mov	%r9, 8(%rdi)
	lea	(%rsi,%rbx,8), %rsi
	mov	%ebx, %ecx
	lea	-56(%rdi,%rbx,8), %rdi
	mov	-56(%rsi), %r11		# %rsi[-1]
	mov	-48(%rsi), %rdx		# %rsi[0]
	shrx	%rax, %r11, %r10
	sarx	%rax, %r11, %r11
	and	%rdx, %r11			# "ci" in # code
	mulx	%rdx, %r8, %r9		# %rsi[0]^
	lea	(%r10,%rdx,2), %rdx		# "%rdx" arg in # code
	adcx	%r11, %r8
	mulx	-40(%rsi), %r10, %r11
	jmp	Lb6

	.align 16
Ltp7:	adox	-8(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, -8(%rdi)
	jrcxz	Led7
	mulx	8(%rsi), %r10, %r11
	adox	(%rdi), %r8
	lea	8(%rcx), %ecx
	mov	%r8, (%rdi)
Lb7:	adcx	%r9, %r10
	mulx	16(%rsi), %r8, %r9
	adcx	%r11, %r8
	adox	8(%rdi), %r10
	mov	%r10, 8(%rdi)
	mulx	24(%rsi), %r10, %r11
	lea	64(%rsi), %rsi
	adcx	%r9, %r10
	adox	16(%rdi), %r8
	mov	%r8, 16(%rdi)
	mulx	-32(%rsi), %r8, %r9
	adox	24(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 24(%rdi)
	mulx	-24(%rsi), %r10, %r11
	adcx	%r9, %r10
	adox	32(%rdi), %r8
	mov	%r8, 32(%rdi)
	mulx	-16(%rsi), %r8, %r9
	adox	40(%rdi), %r10
	adcx	%r11, %r8
	mov	%r10, 40(%rdi)
	adox	48(%rdi), %r8
	mulx	-8(%rsi), %r10, %r11
	mov	%r8, 48(%rdi)
	lea	64(%rdi), %rdi
	adcx	%r9, %r10
	mulx	(%rsi), %r8, %r9
	jmp	Ltp7

Lcor3:lea	-64(%rdi), %rdi
	mov	-24(%rsi), %r11		# %rsi[-1]
	mov	-16(%rsi), %rdx		# %rsi[0]
	shrx	%rax, %r11, %r10
	sarx	%rax, %r11, %r11
	and	%rdx, %r11			# "ci" in # code
	mulx	%rdx, %r8, %r9		# %rsi[0]^
	lea	(%r10,%rdx,2), %rdx		# "%rdx" arg in # code
	adcx	%r11, %r8
	adox	56(%rdi), %r8
	mulx	-8(%rsi), %r10, %r11
	mov	%r8, 56(%rdi)
	adcx	%r9, %r10
	mulx	(%rsi), %rbx, %r9
	adox	64(%rdi), %r10
	adcx	%r11, %rbx
	mov	%r10, 64(%rdi)
	adox	72(%rdi), %rbx
	adox	%rcx, %r9		# relies on rcx = 0
	adc	%rcx, %r9		# relies on rcx = 0
	mov	%r9, 80(%rdi)	# FIXME
# wd2
	mov	-16(%rsi), %r9		# %rsi[-1]
	mov	-8(%rsi), %rdx		# %rsi[0]
	shrx	%rax, %r9, %r8
	sarx	%rax, %r9, %r9
	and	%rdx, %r9			# "ci" in # code
	mulx	%rdx, %r10, %r11		# %rsi[0]^2
	lea	(%r8,%rdx,2), %rdx		# "%rdx" arg in # code
	adcx	%r9, %r10
	mulx	(%rsi), %r8, %rax
	adox	%rbx, %r10
	adcx	%r11, %r8
	mov	%r10, 72(%rdi)
	adox	80(%rdi), %r8
	adox	%rcx, %rax		# relies on rcx = 0
	mov	%r8, 80(%rdi)
	adc	%rcx, %rax		# relies on rcx = 0
# wd1
	mov	-8(%rsi), %r11		# %rsi[-1]
	mov	(%rsi), %rdx		# %rsi[0]
	sar	$63, %r11
	and	%rdx, %r11			# "ci" in # code
	mulx	%rdx, %r8, %r9		# %rsi[0]^2
	adcx	%r11, %r8
	adox	%rax, %r8
	mov	%r8, 88(%rdi)
	adcx	%rcx, %r9
	adox	%rcx, %r9
	mov	%r9, 96(%rdi)

    pop    %r15 
    pop    %r14
    pop    %r13
    pop    %r12
    pop    %rbp
    pop	   %rbx
	pop	   %rsi
    pop	   %rdi

    ret

.section	.rodata

.align 8

Lmtab:
    .long Lmf7-Lmtab
	.long Lmf0-Lmtab
	.long Lmf1-Lmtab
	.long Lmf2-Lmtab
	.long Lmf3-Lmtab
	.long Lmf4-Lmtab
	.long Lmf5-Lmtab
	.long Lmf6-Lmtab
Latab:
    .long Lf6-Latab
	.long Lf7-Latab
	.long Lf0-Latab
	.long Lf1-Latab
	.long Lf2-Latab
	.long Lf3-Latab
	.long Lf4-Latab
	.long Lf5-Latab

