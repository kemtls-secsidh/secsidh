.intel_syntax noprefix

.section .rodata

.set pbits,2047
.set pbytes,256
.set plimbs,32

.section .text

.global secsidh_internal_2047m1l226_fp_cmov
secsidh_internal_2047m1l226_fp_cmov:
    movzx rax, dl
    neg rax
    .set k, 0
    .rept plimbs
        mov rcx, [rdi + 8*k]
        mov rdx, [rsi + 8*k]
        xor rdx, rcx
        and rdx, rax
        xor rcx, rdx
        mov [rdi + 8*k], rcx
        .set k, k+1
    .endr
    ret

