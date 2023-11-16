.intel_syntax noprefix

.section .rodata

.set pbits,6143
.set pbytes,768
.set plimbs,96

.section .text

.global secsidh_internal_6143m59l262_fp_cmov
secsidh_internal_6143m59l262_fp_cmov:
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

