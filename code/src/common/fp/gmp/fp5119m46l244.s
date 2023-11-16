.intel_syntax noprefix

.section .rodata

.set pbits,5119
.set pbytes,640
.set plimbs,80

.section .text

.global secsidh_internal_5119m46l244_fp_cmov
secsidh_internal_5119m46l244_fp_cmov:
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

