.intel_syntax noprefix

.section .rodata

.set pbits,8191
.set pbytes,1024
.set plimbs,128

.section .text

.global secsidh_internal_8191m78l338_fp_cmov
secsidh_internal_8191m78l338_fp_cmov:
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

