.intel_syntax noprefix

.section .rodata

.set pbits,8191
.set pbytes,1024
.set plimbs,128

.global secsidh_internal_8191m78l338_redc_alpha
secsidh_internal_8191m78l338_redc_alpha:
.quad  0x3EAF65A95F0041ED, 0x372B7D9154133882, 0x5A58A580E1CA9829, 0x8FC4156DDCAD437 
.quad  0x4CE6AE3C63765131, 0x4F3865F90F46D0D3, 0xB6AA2C454C34E51B, 0xD434D3F80A147B77 
.quad  0x6B926F74A2AA5C76, 0x43BCB530BDFEAFF9, 0x671D6CE9572B43C1, 0xD5B30D80ECB73020 
.quad  0xF823265621739F49, 0xC1754744306061CA, 0x6171E42D89E177BB, 0x8994F48EF23A7F2A 
.quad  0xA2057C82B399C3AF, 0xC60CD8BEC9D528B1, 0xB9B5FAB739469676, 0x601A2E4779AEC853 
.quad  0xE00D857E16B58377, 0xE65DEF66D0C08A1D, 0x26692BC11E11E82B, 0x3A2B8F6CD365560D 
.quad  0x39E653855729C7FB, 0xC10B3B5E0D9DE1C4, 0x7D13530314EEC59E, 0xD0A1B556BFEAF779 
.quad  0xE63C16F48D4938B9, 0x3839DF74876C52B0, 0x5AD0EACB1BD7283, 0xC1709D8F85717F0F 
.quad  0x185BC2F57DE71EB1, 0x2F9EC8170F78D4E0, 0xF519D562D85DB142, 0x9CCB77F2238053C5 
.quad  0x6BB5CF773506E8B0, 0x2770E39BEED00FEB, 0x3A51E0099D663BC, 0x5E93F3908FA8986E 
.quad  0x4AE63438608085B, 0x5290F3FDF0F9F666, 0xA5E5B7F7D86B7F44, 0xAB4BD70919AC3458 
.quad  0x60473AD832847641, 0xC35589BD7E5B6D68, 0x60340C810D6E6475, 0xDA4E9331BBBE84E 
.quad  0x8726969D65FA39A0, 0x558064826AE53F6C, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 

.section .text


.global secsidh_internal_8191m78l338_fp_copy
secsidh_internal_8191m78l338_fp_copy:
    cld
    mov rcx, plimbs
    rep movsq
    ret

.global secsidh_internal_8191m78l338_fp_cswap
secsidh_internal_8191m78l338_fp_cswap:
    movzx rax, dl
    neg rax
    .set k, 0
    .rept plimbs
        mov rcx, [rdi + 8*k]
        mov rdx, [rsi + 8*k]
        mov r8, rcx
        xor r8, rdx
        and r8, rax

        xor rcx, r8
        xor rdx, r8

        mov [rdi + 8*k], rcx
        mov [rsi + 8*k], rdx

        .set k, k+1
    .endr
    ret


.reduce_once:
    push rbp
    push r12
    push r13
    mov rbp, rdi
    mov r12, secsidh_internal_8191m78l338_p@GOTPCREL[rip]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    mov rdi, [rbp +  64]
    sbb rdi, [r12 + 64]
    mov rsi, [rbp +  72]
    sbb rsi, [r12 + 72]
    mov rdx, [rbp +  80]
    sbb rdx, [r12 + 80]
    mov rcx, [rbp +  88]
    sbb rcx, [r12 + 88]
    mov r8, [rbp +  96]
    sbb r8, [r12 + 96]
    mov r9, [rbp +  104]
    sbb r9, [r12 + 104]
    mov r10, [rbp +  112]
    sbb r10, [r12 + 112]
    mov r11, [rbp +  120]
    sbb r11, [r12 + 120]

    mov rdi, [rbp +  128]
    sbb rdi, [r12 + 128]
    mov rsi, [rbp +  136]
    sbb rsi, [r12 + 136]
    mov rdx, [rbp +  144]
    sbb rdx, [r12 + 144]
    mov rcx, [rbp +  152]
    sbb rcx, [r12 + 152]
    mov r8, [rbp +  160]
    sbb r8, [r12 + 160]
    mov r9, [rbp +  168]
    sbb r9, [r12 + 168]
    mov r10, [rbp +  176]
    sbb r10, [r12 + 176]
    mov r11, [rbp +  184]
    sbb r11, [r12 + 184]

    mov rdi, [rbp +  192]
    sbb rdi, [r12 + 192]
    mov rsi, [rbp +  200]
    sbb rsi, [r12 + 200]
    mov rdx, [rbp +  208]
    sbb rdx, [r12 + 208]
    mov rcx, [rbp +  216]
    sbb rcx, [r12 + 216]
    mov r8, [rbp +  224]
    sbb r8, [r12 + 224]
    mov r9, [rbp +  232]
    sbb r9, [r12 + 232]
    mov r10, [rbp +  240]
    sbb r10, [r12 + 240]
    mov r11, [rbp +  248]
    sbb r11, [r12 + 248]

    mov rdi, [rbp +  256]
    sbb rdi, [r12 + 256]
    mov rsi, [rbp +  264]
    sbb rsi, [r12 + 264]
    mov rdx, [rbp +  272]
    sbb rdx, [r12 + 272]
    mov rcx, [rbp +  280]
    sbb rcx, [r12 + 280]
    mov r8, [rbp +  288]
    sbb r8, [r12 + 288]
    mov r9, [rbp +  296]
    sbb r9, [r12 + 296]
    mov r10, [rbp +  304]
    sbb r10, [r12 + 304]
    mov r11, [rbp +  312]
    sbb r11, [r12 + 312]

    mov rdi, [rbp +  320]
    sbb rdi, [r12 + 320]
    mov rsi, [rbp +  328]
    sbb rsi, [r12 + 328]
    mov rdx, [rbp +  336]
    sbb rdx, [r12 + 336]
    mov rcx, [rbp +  344]
    sbb rcx, [r12 + 344]
    mov r8, [rbp +  352]
    sbb r8, [r12 + 352]
    mov r9, [rbp +  360]
    sbb r9, [r12 + 360]
    mov r10, [rbp +  368]
    sbb r10, [r12 + 368]
    mov r11, [rbp +  376]
    sbb r11, [r12 + 376]

    mov rdi, [rbp +  384]
    sbb rdi, [r12 + 384]
    mov rsi, [rbp +  392]
    sbb rsi, [r12 + 392]
    mov rdx, [rbp +  400]
    sbb rdx, [r12 + 400]
    mov rcx, [rbp +  408]
    sbb rcx, [r12 + 408]
    mov r8, [rbp +  416]
    sbb r8, [r12 + 416]
    mov r9, [rbp +  424]
    sbb r9, [r12 + 424]
    mov r10, [rbp +  432]
    sbb r10, [r12 + 432]
    mov r11, [rbp +  440]
    sbb r11, [r12 + 440]

    mov rdi, [rbp +  448]
    sbb rdi, [r12 + 448]
    mov rsi, [rbp +  456]
    sbb rsi, [r12 + 456]
    mov rdx, [rbp +  464]
    sbb rdx, [r12 + 464]
    mov rcx, [rbp +  472]
    sbb rcx, [r12 + 472]
    mov r8, [rbp +  480]
    sbb r8, [r12 + 480]
    mov r9, [rbp +  488]
    sbb r9, [r12 + 488]
    mov r10, [rbp +  496]
    sbb r10, [r12 + 496]
    mov r11, [rbp +  504]
    sbb r11, [r12 + 504]

    mov rdi, [rbp +  512]
    sbb rdi, [r12 + 512]
    mov rsi, [rbp +  520]
    sbb rsi, [r12 + 520]
    mov rdx, [rbp +  528]
    sbb rdx, [r12 + 528]
    mov rcx, [rbp +  536]
    sbb rcx, [r12 + 536]
    mov r8, [rbp +  544]
    sbb r8, [r12 + 544]
    mov r9, [rbp +  552]
    sbb r9, [r12 + 552]
    mov r10, [rbp +  560]
    sbb r10, [r12 + 560]
    mov r11, [rbp +  568]
    sbb r11, [r12 + 568]

    mov rdi, [rbp +  576]
    sbb rdi, [r12 + 576]
    mov rsi, [rbp +  584]
    sbb rsi, [r12 + 584]
    mov rdx, [rbp +  592]
    sbb rdx, [r12 + 592]
    mov rcx, [rbp +  600]
    sbb rcx, [r12 + 600]
    mov r8, [rbp +  608]
    sbb r8, [r12 + 608]
    mov r9, [rbp +  616]
    sbb r9, [r12 + 616]
    mov r10, [rbp +  624]
    sbb r10, [r12 + 624]
    mov r11, [rbp +  632]
    sbb r11, [r12 + 632]

    mov rdi, [rbp +  640]
    sbb rdi, [r12 + 640]
    mov rsi, [rbp +  648]
    sbb rsi, [r12 + 648]
    mov rdx, [rbp +  656]
    sbb rdx, [r12 + 656]
    mov rcx, [rbp +  664]
    sbb rcx, [r12 + 664]
    mov r8, [rbp +  672]
    sbb r8, [r12 + 672]
    mov r9, [rbp +  680]
    sbb r9, [r12 + 680]
    mov r10, [rbp +  688]
    sbb r10, [r12 + 688]
    mov r11, [rbp +  696]
    sbb r11, [r12 + 696]

    mov rdi, [rbp +  704]
    sbb rdi, [r12 + 704]
    mov rsi, [rbp +  712]
    sbb rsi, [r12 + 712]
    mov rdx, [rbp +  720]
    sbb rdx, [r12 + 720]
    mov rcx, [rbp +  728]
    sbb rcx, [r12 + 728]
    mov r8, [rbp +  736]
    sbb r8, [r12 + 736]
    mov r9, [rbp +  744]
    sbb r9, [r12 + 744]
    mov r10, [rbp +  752]
    sbb r10, [r12 + 752]
    mov r11, [rbp +  760]
    sbb r11, [r12 + 760]

    mov rdi, [rbp +  768]
    sbb rdi, [r12 + 768]
    mov rsi, [rbp +  776]
    sbb rsi, [r12 + 776]
    mov rdx, [rbp +  784]
    sbb rdx, [r12 + 784]
    mov rcx, [rbp +  792]
    sbb rcx, [r12 + 792]
    mov r8, [rbp +  800]
    sbb r8, [r12 + 800]
    mov r9, [rbp +  808]
    sbb r9, [r12 + 808]
    mov r10, [rbp +  816]
    sbb r10, [r12 + 816]
    mov r11, [rbp +  824]
    sbb r11, [r12 + 824]

    mov rdi, [rbp +  832]
    sbb rdi, [r12 + 832]
    mov rsi, [rbp +  840]
    sbb rsi, [r12 + 840]
    mov rdx, [rbp +  848]
    sbb rdx, [r12 + 848]
    mov rcx, [rbp +  856]
    sbb rcx, [r12 + 856]
    mov r8, [rbp +  864]
    sbb r8, [r12 + 864]
    mov r9, [rbp +  872]
    sbb r9, [r12 + 872]
    mov r10, [rbp +  880]
    sbb r10, [r12 + 880]
    mov r11, [rbp +  888]
    sbb r11, [r12 + 888]

    mov rdi, [rbp +  896]
    sbb rdi, [r12 + 896]
    mov rsi, [rbp +  904]
    sbb rsi, [r12 + 904]
    mov rdx, [rbp +  912]
    sbb rdx, [r12 + 912]
    mov rcx, [rbp +  920]
    sbb rcx, [r12 + 920]
    mov r8, [rbp +  928]
    sbb r8, [r12 + 928]
    mov r9, [rbp +  936]
    sbb r9, [r12 + 936]
    mov r10, [rbp +  944]
    sbb r10, [r12 + 944]
    mov r11, [rbp +  952]
    sbb r11, [r12 + 952]

    mov rdi, [rbp +  960]
    sbb rdi, [r12 + 960]
    mov rsi, [rbp +  968]
    sbb rsi, [r12 + 968]
    mov rdx, [rbp +  976]
    sbb rdx, [r12 + 976]
    mov rcx, [rbp +  984]
    sbb rcx, [r12 + 984]
    mov r8, [rbp +  992]
    sbb r8, [r12 + 992]
    mov r9, [rbp +  1000]
    sbb r9, [r12 + 1000]
    mov r10, [rbp +  1008]
    sbb r10, [r12 + 1008]
    mov r11, [rbp +  1016]
    sbb r11, [r12 + 1016]


    setnc al
    movzx rax, al
    neg rax

.macro cswap2, r, m
    xor \r, \m
    and \r, rax
    xor \m, \r
.endm


    cswap2 rdi, [rbp +  960]
    cswap2 rsi, [rbp +  968]
    cswap2 rdx, [rbp +  976]
    cswap2 rcx, [rbp +  984]
    cswap2 r8, [rbp +  992]
    cswap2 r9, [rbp +  1000]
    cswap2 r10, [rbp +  1008]
    cswap2 r11, [rbp +  1016]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    mov rdi, [rbp +  64]
    sbb rdi, [r12 + 64]
    mov rsi, [rbp +  72]
    sbb rsi, [r12 + 72]
    mov rdx, [rbp +  80]
    sbb rdx, [r12 + 80]
    mov rcx, [rbp +  88]
    sbb rcx, [r12 + 88]
    mov r8, [rbp +  96]
    sbb r8, [r12 + 96]
    mov r9, [rbp +  104]
    sbb r9, [r12 + 104]
    mov r10, [rbp +  112]
    sbb r10, [r12 + 112]
    mov r11, [rbp +  120]
    sbb r11, [r12 + 120]

    mov rdi, [rbp +  128]
    sbb rdi, [r12 + 128]
    mov rsi, [rbp +  136]
    sbb rsi, [r12 + 136]
    mov rdx, [rbp +  144]
    sbb rdx, [r12 + 144]
    mov rcx, [rbp +  152]
    sbb rcx, [r12 + 152]
    mov r8, [rbp +  160]
    sbb r8, [r12 + 160]
    mov r9, [rbp +  168]
    sbb r9, [r12 + 168]
    mov r10, [rbp +  176]
    sbb r10, [r12 + 176]
    mov r11, [rbp +  184]
    sbb r11, [r12 + 184]

    mov rdi, [rbp +  192]
    sbb rdi, [r12 + 192]
    mov rsi, [rbp +  200]
    sbb rsi, [r12 + 200]
    mov rdx, [rbp +  208]
    sbb rdx, [r12 + 208]
    mov rcx, [rbp +  216]
    sbb rcx, [r12 + 216]
    mov r8, [rbp +  224]
    sbb r8, [r12 + 224]
    mov r9, [rbp +  232]
    sbb r9, [r12 + 232]
    mov r10, [rbp +  240]
    sbb r10, [r12 + 240]
    mov r11, [rbp +  248]
    sbb r11, [r12 + 248]

    mov rdi, [rbp +  256]
    sbb rdi, [r12 + 256]
    mov rsi, [rbp +  264]
    sbb rsi, [r12 + 264]
    mov rdx, [rbp +  272]
    sbb rdx, [r12 + 272]
    mov rcx, [rbp +  280]
    sbb rcx, [r12 + 280]
    mov r8, [rbp +  288]
    sbb r8, [r12 + 288]
    mov r9, [rbp +  296]
    sbb r9, [r12 + 296]
    mov r10, [rbp +  304]
    sbb r10, [r12 + 304]
    mov r11, [rbp +  312]
    sbb r11, [r12 + 312]

    mov rdi, [rbp +  320]
    sbb rdi, [r12 + 320]
    mov rsi, [rbp +  328]
    sbb rsi, [r12 + 328]
    mov rdx, [rbp +  336]
    sbb rdx, [r12 + 336]
    mov rcx, [rbp +  344]
    sbb rcx, [r12 + 344]
    mov r8, [rbp +  352]
    sbb r8, [r12 + 352]
    mov r9, [rbp +  360]
    sbb r9, [r12 + 360]
    mov r10, [rbp +  368]
    sbb r10, [r12 + 368]
    mov r11, [rbp +  376]
    sbb r11, [r12 + 376]

    mov rdi, [rbp +  384]
    sbb rdi, [r12 + 384]
    mov rsi, [rbp +  392]
    sbb rsi, [r12 + 392]
    mov rdx, [rbp +  400]
    sbb rdx, [r12 + 400]
    mov rcx, [rbp +  408]
    sbb rcx, [r12 + 408]
    mov r8, [rbp +  416]
    sbb r8, [r12 + 416]
    mov r9, [rbp +  424]
    sbb r9, [r12 + 424]
    mov r10, [rbp +  432]
    sbb r10, [r12 + 432]
    mov r11, [rbp +  440]
    sbb r11, [r12 + 440]

    mov rdi, [rbp +  448]
    sbb rdi, [r12 + 448]
    mov rsi, [rbp +  456]
    sbb rsi, [r12 + 456]
    mov rdx, [rbp +  464]
    sbb rdx, [r12 + 464]
    mov rcx, [rbp +  472]
    sbb rcx, [r12 + 472]
    mov r8, [rbp +  480]
    sbb r8, [r12 + 480]
    mov r9, [rbp +  488]
    sbb r9, [r12 + 488]
    mov r10, [rbp +  496]
    sbb r10, [r12 + 496]
    mov r11, [rbp +  504]
    sbb r11, [r12 + 504]

    mov rdi, [rbp +  512]
    sbb rdi, [r12 + 512]
    mov rsi, [rbp +  520]
    sbb rsi, [r12 + 520]
    mov rdx, [rbp +  528]
    sbb rdx, [r12 + 528]
    mov rcx, [rbp +  536]
    sbb rcx, [r12 + 536]
    mov r8, [rbp +  544]
    sbb r8, [r12 + 544]
    mov r9, [rbp +  552]
    sbb r9, [r12 + 552]
    mov r10, [rbp +  560]
    sbb r10, [r12 + 560]
    mov r11, [rbp +  568]
    sbb r11, [r12 + 568]

    mov rdi, [rbp +  576]
    sbb rdi, [r12 + 576]
    mov rsi, [rbp +  584]
    sbb rsi, [r12 + 584]
    mov rdx, [rbp +  592]
    sbb rdx, [r12 + 592]
    mov rcx, [rbp +  600]
    sbb rcx, [r12 + 600]
    mov r8, [rbp +  608]
    sbb r8, [r12 + 608]
    mov r9, [rbp +  616]
    sbb r9, [r12 + 616]
    mov r10, [rbp +  624]
    sbb r10, [r12 + 624]
    mov r11, [rbp +  632]
    sbb r11, [r12 + 632]

    mov rdi, [rbp +  640]
    sbb rdi, [r12 + 640]
    mov rsi, [rbp +  648]
    sbb rsi, [r12 + 648]
    mov rdx, [rbp +  656]
    sbb rdx, [r12 + 656]
    mov rcx, [rbp +  664]
    sbb rcx, [r12 + 664]
    mov r8, [rbp +  672]
    sbb r8, [r12 + 672]
    mov r9, [rbp +  680]
    sbb r9, [r12 + 680]
    mov r10, [rbp +  688]
    sbb r10, [r12 + 688]
    mov r11, [rbp +  696]
    sbb r11, [r12 + 696]

    mov rdi, [rbp +  704]
    sbb rdi, [r12 + 704]
    mov rsi, [rbp +  712]
    sbb rsi, [r12 + 712]
    mov rdx, [rbp +  720]
    sbb rdx, [r12 + 720]
    mov rcx, [rbp +  728]
    sbb rcx, [r12 + 728]
    mov r8, [rbp +  736]
    sbb r8, [r12 + 736]
    mov r9, [rbp +  744]
    sbb r9, [r12 + 744]
    mov r10, [rbp +  752]
    sbb r10, [r12 + 752]
    mov r11, [rbp +  760]
    sbb r11, [r12 + 760]

    mov rdi, [rbp +  768]
    sbb rdi, [r12 + 768]
    mov rsi, [rbp +  776]
    sbb rsi, [r12 + 776]
    mov rdx, [rbp +  784]
    sbb rdx, [r12 + 784]
    mov rcx, [rbp +  792]
    sbb rcx, [r12 + 792]
    mov r8, [rbp +  800]
    sbb r8, [r12 + 800]
    mov r9, [rbp +  808]
    sbb r9, [r12 + 808]
    mov r10, [rbp +  816]
    sbb r10, [r12 + 816]
    mov r11, [rbp +  824]
    sbb r11, [r12 + 824]

    mov rdi, [rbp +  832]
    sbb rdi, [r12 + 832]
    mov rsi, [rbp +  840]
    sbb rsi, [r12 + 840]
    mov rdx, [rbp +  848]
    sbb rdx, [r12 + 848]
    mov rcx, [rbp +  856]
    sbb rcx, [r12 + 856]
    mov r8, [rbp +  864]
    sbb r8, [r12 + 864]
    mov r9, [rbp +  872]
    sbb r9, [r12 + 872]
    mov r10, [rbp +  880]
    sbb r10, [r12 + 880]
    mov r11, [rbp +  888]
    sbb r11, [r12 + 888]

    mov rdi, [rbp +  896]
    sbb rdi, [r12 + 896]
    mov rsi, [rbp +  904]
    sbb rsi, [r12 + 904]
    mov rdx, [rbp +  912]
    sbb rdx, [r12 + 912]
    mov rcx, [rbp +  920]
    sbb rcx, [r12 + 920]
    mov r8, [rbp +  928]
    sbb r8, [r12 + 928]
    mov r9, [rbp +  936]
    sbb r9, [r12 + 936]
    mov r10, [rbp +  944]
    sbb r10, [r12 + 944]
    mov r11, [rbp +  952]
    sbb r11, [r12 + 952]

    cswap2 rdi, [rbp +  896]
    cswap2 rsi, [rbp +  904]
    cswap2 rdx, [rbp +  912]
    cswap2 rcx, [rbp +  920]
    cswap2 r8, [rbp +  928]
    cswap2 r9, [rbp +  936]
    cswap2 r10, [rbp +  944]
    cswap2 r11, [rbp +  952]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    mov rdi, [rbp +  64]
    sbb rdi, [r12 + 64]
    mov rsi, [rbp +  72]
    sbb rsi, [r12 + 72]
    mov rdx, [rbp +  80]
    sbb rdx, [r12 + 80]
    mov rcx, [rbp +  88]
    sbb rcx, [r12 + 88]
    mov r8, [rbp +  96]
    sbb r8, [r12 + 96]
    mov r9, [rbp +  104]
    sbb r9, [r12 + 104]
    mov r10, [rbp +  112]
    sbb r10, [r12 + 112]
    mov r11, [rbp +  120]
    sbb r11, [r12 + 120]

    mov rdi, [rbp +  128]
    sbb rdi, [r12 + 128]
    mov rsi, [rbp +  136]
    sbb rsi, [r12 + 136]
    mov rdx, [rbp +  144]
    sbb rdx, [r12 + 144]
    mov rcx, [rbp +  152]
    sbb rcx, [r12 + 152]
    mov r8, [rbp +  160]
    sbb r8, [r12 + 160]
    mov r9, [rbp +  168]
    sbb r9, [r12 + 168]
    mov r10, [rbp +  176]
    sbb r10, [r12 + 176]
    mov r11, [rbp +  184]
    sbb r11, [r12 + 184]

    mov rdi, [rbp +  192]
    sbb rdi, [r12 + 192]
    mov rsi, [rbp +  200]
    sbb rsi, [r12 + 200]
    mov rdx, [rbp +  208]
    sbb rdx, [r12 + 208]
    mov rcx, [rbp +  216]
    sbb rcx, [r12 + 216]
    mov r8, [rbp +  224]
    sbb r8, [r12 + 224]
    mov r9, [rbp +  232]
    sbb r9, [r12 + 232]
    mov r10, [rbp +  240]
    sbb r10, [r12 + 240]
    mov r11, [rbp +  248]
    sbb r11, [r12 + 248]

    mov rdi, [rbp +  256]
    sbb rdi, [r12 + 256]
    mov rsi, [rbp +  264]
    sbb rsi, [r12 + 264]
    mov rdx, [rbp +  272]
    sbb rdx, [r12 + 272]
    mov rcx, [rbp +  280]
    sbb rcx, [r12 + 280]
    mov r8, [rbp +  288]
    sbb r8, [r12 + 288]
    mov r9, [rbp +  296]
    sbb r9, [r12 + 296]
    mov r10, [rbp +  304]
    sbb r10, [r12 + 304]
    mov r11, [rbp +  312]
    sbb r11, [r12 + 312]

    mov rdi, [rbp +  320]
    sbb rdi, [r12 + 320]
    mov rsi, [rbp +  328]
    sbb rsi, [r12 + 328]
    mov rdx, [rbp +  336]
    sbb rdx, [r12 + 336]
    mov rcx, [rbp +  344]
    sbb rcx, [r12 + 344]
    mov r8, [rbp +  352]
    sbb r8, [r12 + 352]
    mov r9, [rbp +  360]
    sbb r9, [r12 + 360]
    mov r10, [rbp +  368]
    sbb r10, [r12 + 368]
    mov r11, [rbp +  376]
    sbb r11, [r12 + 376]

    mov rdi, [rbp +  384]
    sbb rdi, [r12 + 384]
    mov rsi, [rbp +  392]
    sbb rsi, [r12 + 392]
    mov rdx, [rbp +  400]
    sbb rdx, [r12 + 400]
    mov rcx, [rbp +  408]
    sbb rcx, [r12 + 408]
    mov r8, [rbp +  416]
    sbb r8, [r12 + 416]
    mov r9, [rbp +  424]
    sbb r9, [r12 + 424]
    mov r10, [rbp +  432]
    sbb r10, [r12 + 432]
    mov r11, [rbp +  440]
    sbb r11, [r12 + 440]

    mov rdi, [rbp +  448]
    sbb rdi, [r12 + 448]
    mov rsi, [rbp +  456]
    sbb rsi, [r12 + 456]
    mov rdx, [rbp +  464]
    sbb rdx, [r12 + 464]
    mov rcx, [rbp +  472]
    sbb rcx, [r12 + 472]
    mov r8, [rbp +  480]
    sbb r8, [r12 + 480]
    mov r9, [rbp +  488]
    sbb r9, [r12 + 488]
    mov r10, [rbp +  496]
    sbb r10, [r12 + 496]
    mov r11, [rbp +  504]
    sbb r11, [r12 + 504]

    mov rdi, [rbp +  512]
    sbb rdi, [r12 + 512]
    mov rsi, [rbp +  520]
    sbb rsi, [r12 + 520]
    mov rdx, [rbp +  528]
    sbb rdx, [r12 + 528]
    mov rcx, [rbp +  536]
    sbb rcx, [r12 + 536]
    mov r8, [rbp +  544]
    sbb r8, [r12 + 544]
    mov r9, [rbp +  552]
    sbb r9, [r12 + 552]
    mov r10, [rbp +  560]
    sbb r10, [r12 + 560]
    mov r11, [rbp +  568]
    sbb r11, [r12 + 568]

    mov rdi, [rbp +  576]
    sbb rdi, [r12 + 576]
    mov rsi, [rbp +  584]
    sbb rsi, [r12 + 584]
    mov rdx, [rbp +  592]
    sbb rdx, [r12 + 592]
    mov rcx, [rbp +  600]
    sbb rcx, [r12 + 600]
    mov r8, [rbp +  608]
    sbb r8, [r12 + 608]
    mov r9, [rbp +  616]
    sbb r9, [r12 + 616]
    mov r10, [rbp +  624]
    sbb r10, [r12 + 624]
    mov r11, [rbp +  632]
    sbb r11, [r12 + 632]

    mov rdi, [rbp +  640]
    sbb rdi, [r12 + 640]
    mov rsi, [rbp +  648]
    sbb rsi, [r12 + 648]
    mov rdx, [rbp +  656]
    sbb rdx, [r12 + 656]
    mov rcx, [rbp +  664]
    sbb rcx, [r12 + 664]
    mov r8, [rbp +  672]
    sbb r8, [r12 + 672]
    mov r9, [rbp +  680]
    sbb r9, [r12 + 680]
    mov r10, [rbp +  688]
    sbb r10, [r12 + 688]
    mov r11, [rbp +  696]
    sbb r11, [r12 + 696]

    mov rdi, [rbp +  704]
    sbb rdi, [r12 + 704]
    mov rsi, [rbp +  712]
    sbb rsi, [r12 + 712]
    mov rdx, [rbp +  720]
    sbb rdx, [r12 + 720]
    mov rcx, [rbp +  728]
    sbb rcx, [r12 + 728]
    mov r8, [rbp +  736]
    sbb r8, [r12 + 736]
    mov r9, [rbp +  744]
    sbb r9, [r12 + 744]
    mov r10, [rbp +  752]
    sbb r10, [r12 + 752]
    mov r11, [rbp +  760]
    sbb r11, [r12 + 760]

    mov rdi, [rbp +  768]
    sbb rdi, [r12 + 768]
    mov rsi, [rbp +  776]
    sbb rsi, [r12 + 776]
    mov rdx, [rbp +  784]
    sbb rdx, [r12 + 784]
    mov rcx, [rbp +  792]
    sbb rcx, [r12 + 792]
    mov r8, [rbp +  800]
    sbb r8, [r12 + 800]
    mov r9, [rbp +  808]
    sbb r9, [r12 + 808]
    mov r10, [rbp +  816]
    sbb r10, [r12 + 816]
    mov r11, [rbp +  824]
    sbb r11, [r12 + 824]

    mov rdi, [rbp +  832]
    sbb rdi, [r12 + 832]
    mov rsi, [rbp +  840]
    sbb rsi, [r12 + 840]
    mov rdx, [rbp +  848]
    sbb rdx, [r12 + 848]
    mov rcx, [rbp +  856]
    sbb rcx, [r12 + 856]
    mov r8, [rbp +  864]
    sbb r8, [r12 + 864]
    mov r9, [rbp +  872]
    sbb r9, [r12 + 872]
    mov r10, [rbp +  880]
    sbb r10, [r12 + 880]
    mov r11, [rbp +  888]
    sbb r11, [r12 + 888]

    cswap2 rdi, [rbp +  832]
    cswap2 rsi, [rbp +  840]
    cswap2 rdx, [rbp +  848]
    cswap2 rcx, [rbp +  856]
    cswap2 r8, [rbp +  864]
    cswap2 r9, [rbp +  872]
    cswap2 r10, [rbp +  880]
    cswap2 r11, [rbp +  888]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    mov rdi, [rbp +  64]
    sbb rdi, [r12 + 64]
    mov rsi, [rbp +  72]
    sbb rsi, [r12 + 72]
    mov rdx, [rbp +  80]
    sbb rdx, [r12 + 80]
    mov rcx, [rbp +  88]
    sbb rcx, [r12 + 88]
    mov r8, [rbp +  96]
    sbb r8, [r12 + 96]
    mov r9, [rbp +  104]
    sbb r9, [r12 + 104]
    mov r10, [rbp +  112]
    sbb r10, [r12 + 112]
    mov r11, [rbp +  120]
    sbb r11, [r12 + 120]

    mov rdi, [rbp +  128]
    sbb rdi, [r12 + 128]
    mov rsi, [rbp +  136]
    sbb rsi, [r12 + 136]
    mov rdx, [rbp +  144]
    sbb rdx, [r12 + 144]
    mov rcx, [rbp +  152]
    sbb rcx, [r12 + 152]
    mov r8, [rbp +  160]
    sbb r8, [r12 + 160]
    mov r9, [rbp +  168]
    sbb r9, [r12 + 168]
    mov r10, [rbp +  176]
    sbb r10, [r12 + 176]
    mov r11, [rbp +  184]
    sbb r11, [r12 + 184]

    mov rdi, [rbp +  192]
    sbb rdi, [r12 + 192]
    mov rsi, [rbp +  200]
    sbb rsi, [r12 + 200]
    mov rdx, [rbp +  208]
    sbb rdx, [r12 + 208]
    mov rcx, [rbp +  216]
    sbb rcx, [r12 + 216]
    mov r8, [rbp +  224]
    sbb r8, [r12 + 224]
    mov r9, [rbp +  232]
    sbb r9, [r12 + 232]
    mov r10, [rbp +  240]
    sbb r10, [r12 + 240]
    mov r11, [rbp +  248]
    sbb r11, [r12 + 248]

    mov rdi, [rbp +  256]
    sbb rdi, [r12 + 256]
    mov rsi, [rbp +  264]
    sbb rsi, [r12 + 264]
    mov rdx, [rbp +  272]
    sbb rdx, [r12 + 272]
    mov rcx, [rbp +  280]
    sbb rcx, [r12 + 280]
    mov r8, [rbp +  288]
    sbb r8, [r12 + 288]
    mov r9, [rbp +  296]
    sbb r9, [r12 + 296]
    mov r10, [rbp +  304]
    sbb r10, [r12 + 304]
    mov r11, [rbp +  312]
    sbb r11, [r12 + 312]

    mov rdi, [rbp +  320]
    sbb rdi, [r12 + 320]
    mov rsi, [rbp +  328]
    sbb rsi, [r12 + 328]
    mov rdx, [rbp +  336]
    sbb rdx, [r12 + 336]
    mov rcx, [rbp +  344]
    sbb rcx, [r12 + 344]
    mov r8, [rbp +  352]
    sbb r8, [r12 + 352]
    mov r9, [rbp +  360]
    sbb r9, [r12 + 360]
    mov r10, [rbp +  368]
    sbb r10, [r12 + 368]
    mov r11, [rbp +  376]
    sbb r11, [r12 + 376]

    mov rdi, [rbp +  384]
    sbb rdi, [r12 + 384]
    mov rsi, [rbp +  392]
    sbb rsi, [r12 + 392]
    mov rdx, [rbp +  400]
    sbb rdx, [r12 + 400]
    mov rcx, [rbp +  408]
    sbb rcx, [r12 + 408]
    mov r8, [rbp +  416]
    sbb r8, [r12 + 416]
    mov r9, [rbp +  424]
    sbb r9, [r12 + 424]
    mov r10, [rbp +  432]
    sbb r10, [r12 + 432]
    mov r11, [rbp +  440]
    sbb r11, [r12 + 440]

    mov rdi, [rbp +  448]
    sbb rdi, [r12 + 448]
    mov rsi, [rbp +  456]
    sbb rsi, [r12 + 456]
    mov rdx, [rbp +  464]
    sbb rdx, [r12 + 464]
    mov rcx, [rbp +  472]
    sbb rcx, [r12 + 472]
    mov r8, [rbp +  480]
    sbb r8, [r12 + 480]
    mov r9, [rbp +  488]
    sbb r9, [r12 + 488]
    mov r10, [rbp +  496]
    sbb r10, [r12 + 496]
    mov r11, [rbp +  504]
    sbb r11, [r12 + 504]

    mov rdi, [rbp +  512]
    sbb rdi, [r12 + 512]
    mov rsi, [rbp +  520]
    sbb rsi, [r12 + 520]
    mov rdx, [rbp +  528]
    sbb rdx, [r12 + 528]
    mov rcx, [rbp +  536]
    sbb rcx, [r12 + 536]
    mov r8, [rbp +  544]
    sbb r8, [r12 + 544]
    mov r9, [rbp +  552]
    sbb r9, [r12 + 552]
    mov r10, [rbp +  560]
    sbb r10, [r12 + 560]
    mov r11, [rbp +  568]
    sbb r11, [r12 + 568]

    mov rdi, [rbp +  576]
    sbb rdi, [r12 + 576]
    mov rsi, [rbp +  584]
    sbb rsi, [r12 + 584]
    mov rdx, [rbp +  592]
    sbb rdx, [r12 + 592]
    mov rcx, [rbp +  600]
    sbb rcx, [r12 + 600]
    mov r8, [rbp +  608]
    sbb r8, [r12 + 608]
    mov r9, [rbp +  616]
    sbb r9, [r12 + 616]
    mov r10, [rbp +  624]
    sbb r10, [r12 + 624]
    mov r11, [rbp +  632]
    sbb r11, [r12 + 632]

    mov rdi, [rbp +  640]
    sbb rdi, [r12 + 640]
    mov rsi, [rbp +  648]
    sbb rsi, [r12 + 648]
    mov rdx, [rbp +  656]
    sbb rdx, [r12 + 656]
    mov rcx, [rbp +  664]
    sbb rcx, [r12 + 664]
    mov r8, [rbp +  672]
    sbb r8, [r12 + 672]
    mov r9, [rbp +  680]
    sbb r9, [r12 + 680]
    mov r10, [rbp +  688]
    sbb r10, [r12 + 688]
    mov r11, [rbp +  696]
    sbb r11, [r12 + 696]

    mov rdi, [rbp +  704]
    sbb rdi, [r12 + 704]
    mov rsi, [rbp +  712]
    sbb rsi, [r12 + 712]
    mov rdx, [rbp +  720]
    sbb rdx, [r12 + 720]
    mov rcx, [rbp +  728]
    sbb rcx, [r12 + 728]
    mov r8, [rbp +  736]
    sbb r8, [r12 + 736]
    mov r9, [rbp +  744]
    sbb r9, [r12 + 744]
    mov r10, [rbp +  752]
    sbb r10, [r12 + 752]
    mov r11, [rbp +  760]
    sbb r11, [r12 + 760]

    mov rdi, [rbp +  768]
    sbb rdi, [r12 + 768]
    mov rsi, [rbp +  776]
    sbb rsi, [r12 + 776]
    mov rdx, [rbp +  784]
    sbb rdx, [r12 + 784]
    mov rcx, [rbp +  792]
    sbb rcx, [r12 + 792]
    mov r8, [rbp +  800]
    sbb r8, [r12 + 800]
    mov r9, [rbp +  808]
    sbb r9, [r12 + 808]
    mov r10, [rbp +  816]
    sbb r10, [r12 + 816]
    mov r11, [rbp +  824]
    sbb r11, [r12 + 824]

    cswap2 rdi, [rbp +  768]
    cswap2 rsi, [rbp +  776]
    cswap2 rdx, [rbp +  784]
    cswap2 rcx, [rbp +  792]
    cswap2 r8, [rbp +  800]
    cswap2 r9, [rbp +  808]
    cswap2 r10, [rbp +  816]
    cswap2 r11, [rbp +  824]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    mov rdi, [rbp +  64]
    sbb rdi, [r12 + 64]
    mov rsi, [rbp +  72]
    sbb rsi, [r12 + 72]
    mov rdx, [rbp +  80]
    sbb rdx, [r12 + 80]
    mov rcx, [rbp +  88]
    sbb rcx, [r12 + 88]
    mov r8, [rbp +  96]
    sbb r8, [r12 + 96]
    mov r9, [rbp +  104]
    sbb r9, [r12 + 104]
    mov r10, [rbp +  112]
    sbb r10, [r12 + 112]
    mov r11, [rbp +  120]
    sbb r11, [r12 + 120]

    mov rdi, [rbp +  128]
    sbb rdi, [r12 + 128]
    mov rsi, [rbp +  136]
    sbb rsi, [r12 + 136]
    mov rdx, [rbp +  144]
    sbb rdx, [r12 + 144]
    mov rcx, [rbp +  152]
    sbb rcx, [r12 + 152]
    mov r8, [rbp +  160]
    sbb r8, [r12 + 160]
    mov r9, [rbp +  168]
    sbb r9, [r12 + 168]
    mov r10, [rbp +  176]
    sbb r10, [r12 + 176]
    mov r11, [rbp +  184]
    sbb r11, [r12 + 184]

    mov rdi, [rbp +  192]
    sbb rdi, [r12 + 192]
    mov rsi, [rbp +  200]
    sbb rsi, [r12 + 200]
    mov rdx, [rbp +  208]
    sbb rdx, [r12 + 208]
    mov rcx, [rbp +  216]
    sbb rcx, [r12 + 216]
    mov r8, [rbp +  224]
    sbb r8, [r12 + 224]
    mov r9, [rbp +  232]
    sbb r9, [r12 + 232]
    mov r10, [rbp +  240]
    sbb r10, [r12 + 240]
    mov r11, [rbp +  248]
    sbb r11, [r12 + 248]

    mov rdi, [rbp +  256]
    sbb rdi, [r12 + 256]
    mov rsi, [rbp +  264]
    sbb rsi, [r12 + 264]
    mov rdx, [rbp +  272]
    sbb rdx, [r12 + 272]
    mov rcx, [rbp +  280]
    sbb rcx, [r12 + 280]
    mov r8, [rbp +  288]
    sbb r8, [r12 + 288]
    mov r9, [rbp +  296]
    sbb r9, [r12 + 296]
    mov r10, [rbp +  304]
    sbb r10, [r12 + 304]
    mov r11, [rbp +  312]
    sbb r11, [r12 + 312]

    mov rdi, [rbp +  320]
    sbb rdi, [r12 + 320]
    mov rsi, [rbp +  328]
    sbb rsi, [r12 + 328]
    mov rdx, [rbp +  336]
    sbb rdx, [r12 + 336]
    mov rcx, [rbp +  344]
    sbb rcx, [r12 + 344]
    mov r8, [rbp +  352]
    sbb r8, [r12 + 352]
    mov r9, [rbp +  360]
    sbb r9, [r12 + 360]
    mov r10, [rbp +  368]
    sbb r10, [r12 + 368]
    mov r11, [rbp +  376]
    sbb r11, [r12 + 376]

    mov rdi, [rbp +  384]
    sbb rdi, [r12 + 384]
    mov rsi, [rbp +  392]
    sbb rsi, [r12 + 392]
    mov rdx, [rbp +  400]
    sbb rdx, [r12 + 400]
    mov rcx, [rbp +  408]
    sbb rcx, [r12 + 408]
    mov r8, [rbp +  416]
    sbb r8, [r12 + 416]
    mov r9, [rbp +  424]
    sbb r9, [r12 + 424]
    mov r10, [rbp +  432]
    sbb r10, [r12 + 432]
    mov r11, [rbp +  440]
    sbb r11, [r12 + 440]

    mov rdi, [rbp +  448]
    sbb rdi, [r12 + 448]
    mov rsi, [rbp +  456]
    sbb rsi, [r12 + 456]
    mov rdx, [rbp +  464]
    sbb rdx, [r12 + 464]
    mov rcx, [rbp +  472]
    sbb rcx, [r12 + 472]
    mov r8, [rbp +  480]
    sbb r8, [r12 + 480]
    mov r9, [rbp +  488]
    sbb r9, [r12 + 488]
    mov r10, [rbp +  496]
    sbb r10, [r12 + 496]
    mov r11, [rbp +  504]
    sbb r11, [r12 + 504]

    mov rdi, [rbp +  512]
    sbb rdi, [r12 + 512]
    mov rsi, [rbp +  520]
    sbb rsi, [r12 + 520]
    mov rdx, [rbp +  528]
    sbb rdx, [r12 + 528]
    mov rcx, [rbp +  536]
    sbb rcx, [r12 + 536]
    mov r8, [rbp +  544]
    sbb r8, [r12 + 544]
    mov r9, [rbp +  552]
    sbb r9, [r12 + 552]
    mov r10, [rbp +  560]
    sbb r10, [r12 + 560]
    mov r11, [rbp +  568]
    sbb r11, [r12 + 568]

    mov rdi, [rbp +  576]
    sbb rdi, [r12 + 576]
    mov rsi, [rbp +  584]
    sbb rsi, [r12 + 584]
    mov rdx, [rbp +  592]
    sbb rdx, [r12 + 592]
    mov rcx, [rbp +  600]
    sbb rcx, [r12 + 600]
    mov r8, [rbp +  608]
    sbb r8, [r12 + 608]
    mov r9, [rbp +  616]
    sbb r9, [r12 + 616]
    mov r10, [rbp +  624]
    sbb r10, [r12 + 624]
    mov r11, [rbp +  632]
    sbb r11, [r12 + 632]

    mov rdi, [rbp +  640]
    sbb rdi, [r12 + 640]
    mov rsi, [rbp +  648]
    sbb rsi, [r12 + 648]
    mov rdx, [rbp +  656]
    sbb rdx, [r12 + 656]
    mov rcx, [rbp +  664]
    sbb rcx, [r12 + 664]
    mov r8, [rbp +  672]
    sbb r8, [r12 + 672]
    mov r9, [rbp +  680]
    sbb r9, [r12 + 680]
    mov r10, [rbp +  688]
    sbb r10, [r12 + 688]
    mov r11, [rbp +  696]
    sbb r11, [r12 + 696]

    mov rdi, [rbp +  704]
    sbb rdi, [r12 + 704]
    mov rsi, [rbp +  712]
    sbb rsi, [r12 + 712]
    mov rdx, [rbp +  720]
    sbb rdx, [r12 + 720]
    mov rcx, [rbp +  728]
    sbb rcx, [r12 + 728]
    mov r8, [rbp +  736]
    sbb r8, [r12 + 736]
    mov r9, [rbp +  744]
    sbb r9, [r12 + 744]
    mov r10, [rbp +  752]
    sbb r10, [r12 + 752]
    mov r11, [rbp +  760]
    sbb r11, [r12 + 760]

    cswap2 rdi, [rbp +  704]
    cswap2 rsi, [rbp +  712]
    cswap2 rdx, [rbp +  720]
    cswap2 rcx, [rbp +  728]
    cswap2 r8, [rbp +  736]
    cswap2 r9, [rbp +  744]
    cswap2 r10, [rbp +  752]
    cswap2 r11, [rbp +  760]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    mov rdi, [rbp +  64]
    sbb rdi, [r12 + 64]
    mov rsi, [rbp +  72]
    sbb rsi, [r12 + 72]
    mov rdx, [rbp +  80]
    sbb rdx, [r12 + 80]
    mov rcx, [rbp +  88]
    sbb rcx, [r12 + 88]
    mov r8, [rbp +  96]
    sbb r8, [r12 + 96]
    mov r9, [rbp +  104]
    sbb r9, [r12 + 104]
    mov r10, [rbp +  112]
    sbb r10, [r12 + 112]
    mov r11, [rbp +  120]
    sbb r11, [r12 + 120]

    mov rdi, [rbp +  128]
    sbb rdi, [r12 + 128]
    mov rsi, [rbp +  136]
    sbb rsi, [r12 + 136]
    mov rdx, [rbp +  144]
    sbb rdx, [r12 + 144]
    mov rcx, [rbp +  152]
    sbb rcx, [r12 + 152]
    mov r8, [rbp +  160]
    sbb r8, [r12 + 160]
    mov r9, [rbp +  168]
    sbb r9, [r12 + 168]
    mov r10, [rbp +  176]
    sbb r10, [r12 + 176]
    mov r11, [rbp +  184]
    sbb r11, [r12 + 184]

    mov rdi, [rbp +  192]
    sbb rdi, [r12 + 192]
    mov rsi, [rbp +  200]
    sbb rsi, [r12 + 200]
    mov rdx, [rbp +  208]
    sbb rdx, [r12 + 208]
    mov rcx, [rbp +  216]
    sbb rcx, [r12 + 216]
    mov r8, [rbp +  224]
    sbb r8, [r12 + 224]
    mov r9, [rbp +  232]
    sbb r9, [r12 + 232]
    mov r10, [rbp +  240]
    sbb r10, [r12 + 240]
    mov r11, [rbp +  248]
    sbb r11, [r12 + 248]

    mov rdi, [rbp +  256]
    sbb rdi, [r12 + 256]
    mov rsi, [rbp +  264]
    sbb rsi, [r12 + 264]
    mov rdx, [rbp +  272]
    sbb rdx, [r12 + 272]
    mov rcx, [rbp +  280]
    sbb rcx, [r12 + 280]
    mov r8, [rbp +  288]
    sbb r8, [r12 + 288]
    mov r9, [rbp +  296]
    sbb r9, [r12 + 296]
    mov r10, [rbp +  304]
    sbb r10, [r12 + 304]
    mov r11, [rbp +  312]
    sbb r11, [r12 + 312]

    mov rdi, [rbp +  320]
    sbb rdi, [r12 + 320]
    mov rsi, [rbp +  328]
    sbb rsi, [r12 + 328]
    mov rdx, [rbp +  336]
    sbb rdx, [r12 + 336]
    mov rcx, [rbp +  344]
    sbb rcx, [r12 + 344]
    mov r8, [rbp +  352]
    sbb r8, [r12 + 352]
    mov r9, [rbp +  360]
    sbb r9, [r12 + 360]
    mov r10, [rbp +  368]
    sbb r10, [r12 + 368]
    mov r11, [rbp +  376]
    sbb r11, [r12 + 376]

    mov rdi, [rbp +  384]
    sbb rdi, [r12 + 384]
    mov rsi, [rbp +  392]
    sbb rsi, [r12 + 392]
    mov rdx, [rbp +  400]
    sbb rdx, [r12 + 400]
    mov rcx, [rbp +  408]
    sbb rcx, [r12 + 408]
    mov r8, [rbp +  416]
    sbb r8, [r12 + 416]
    mov r9, [rbp +  424]
    sbb r9, [r12 + 424]
    mov r10, [rbp +  432]
    sbb r10, [r12 + 432]
    mov r11, [rbp +  440]
    sbb r11, [r12 + 440]

    mov rdi, [rbp +  448]
    sbb rdi, [r12 + 448]
    mov rsi, [rbp +  456]
    sbb rsi, [r12 + 456]
    mov rdx, [rbp +  464]
    sbb rdx, [r12 + 464]
    mov rcx, [rbp +  472]
    sbb rcx, [r12 + 472]
    mov r8, [rbp +  480]
    sbb r8, [r12 + 480]
    mov r9, [rbp +  488]
    sbb r9, [r12 + 488]
    mov r10, [rbp +  496]
    sbb r10, [r12 + 496]
    mov r11, [rbp +  504]
    sbb r11, [r12 + 504]

    mov rdi, [rbp +  512]
    sbb rdi, [r12 + 512]
    mov rsi, [rbp +  520]
    sbb rsi, [r12 + 520]
    mov rdx, [rbp +  528]
    sbb rdx, [r12 + 528]
    mov rcx, [rbp +  536]
    sbb rcx, [r12 + 536]
    mov r8, [rbp +  544]
    sbb r8, [r12 + 544]
    mov r9, [rbp +  552]
    sbb r9, [r12 + 552]
    mov r10, [rbp +  560]
    sbb r10, [r12 + 560]
    mov r11, [rbp +  568]
    sbb r11, [r12 + 568]

    mov rdi, [rbp +  576]
    sbb rdi, [r12 + 576]
    mov rsi, [rbp +  584]
    sbb rsi, [r12 + 584]
    mov rdx, [rbp +  592]
    sbb rdx, [r12 + 592]
    mov rcx, [rbp +  600]
    sbb rcx, [r12 + 600]
    mov r8, [rbp +  608]
    sbb r8, [r12 + 608]
    mov r9, [rbp +  616]
    sbb r9, [r12 + 616]
    mov r10, [rbp +  624]
    sbb r10, [r12 + 624]
    mov r11, [rbp +  632]
    sbb r11, [r12 + 632]

    mov rdi, [rbp +  640]
    sbb rdi, [r12 + 640]
    mov rsi, [rbp +  648]
    sbb rsi, [r12 + 648]
    mov rdx, [rbp +  656]
    sbb rdx, [r12 + 656]
    mov rcx, [rbp +  664]
    sbb rcx, [r12 + 664]
    mov r8, [rbp +  672]
    sbb r8, [r12 + 672]
    mov r9, [rbp +  680]
    sbb r9, [r12 + 680]
    mov r10, [rbp +  688]
    sbb r10, [r12 + 688]
    mov r11, [rbp +  696]
    sbb r11, [r12 + 696]

    cswap2 rdi, [rbp +  640]
    cswap2 rsi, [rbp +  648]
    cswap2 rdx, [rbp +  656]
    cswap2 rcx, [rbp +  664]
    cswap2 r8, [rbp +  672]
    cswap2 r9, [rbp +  680]
    cswap2 r10, [rbp +  688]
    cswap2 r11, [rbp +  696]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    mov rdi, [rbp +  64]
    sbb rdi, [r12 + 64]
    mov rsi, [rbp +  72]
    sbb rsi, [r12 + 72]
    mov rdx, [rbp +  80]
    sbb rdx, [r12 + 80]
    mov rcx, [rbp +  88]
    sbb rcx, [r12 + 88]
    mov r8, [rbp +  96]
    sbb r8, [r12 + 96]
    mov r9, [rbp +  104]
    sbb r9, [r12 + 104]
    mov r10, [rbp +  112]
    sbb r10, [r12 + 112]
    mov r11, [rbp +  120]
    sbb r11, [r12 + 120]

    mov rdi, [rbp +  128]
    sbb rdi, [r12 + 128]
    mov rsi, [rbp +  136]
    sbb rsi, [r12 + 136]
    mov rdx, [rbp +  144]
    sbb rdx, [r12 + 144]
    mov rcx, [rbp +  152]
    sbb rcx, [r12 + 152]
    mov r8, [rbp +  160]
    sbb r8, [r12 + 160]
    mov r9, [rbp +  168]
    sbb r9, [r12 + 168]
    mov r10, [rbp +  176]
    sbb r10, [r12 + 176]
    mov r11, [rbp +  184]
    sbb r11, [r12 + 184]

    mov rdi, [rbp +  192]
    sbb rdi, [r12 + 192]
    mov rsi, [rbp +  200]
    sbb rsi, [r12 + 200]
    mov rdx, [rbp +  208]
    sbb rdx, [r12 + 208]
    mov rcx, [rbp +  216]
    sbb rcx, [r12 + 216]
    mov r8, [rbp +  224]
    sbb r8, [r12 + 224]
    mov r9, [rbp +  232]
    sbb r9, [r12 + 232]
    mov r10, [rbp +  240]
    sbb r10, [r12 + 240]
    mov r11, [rbp +  248]
    sbb r11, [r12 + 248]

    mov rdi, [rbp +  256]
    sbb rdi, [r12 + 256]
    mov rsi, [rbp +  264]
    sbb rsi, [r12 + 264]
    mov rdx, [rbp +  272]
    sbb rdx, [r12 + 272]
    mov rcx, [rbp +  280]
    sbb rcx, [r12 + 280]
    mov r8, [rbp +  288]
    sbb r8, [r12 + 288]
    mov r9, [rbp +  296]
    sbb r9, [r12 + 296]
    mov r10, [rbp +  304]
    sbb r10, [r12 + 304]
    mov r11, [rbp +  312]
    sbb r11, [r12 + 312]

    mov rdi, [rbp +  320]
    sbb rdi, [r12 + 320]
    mov rsi, [rbp +  328]
    sbb rsi, [r12 + 328]
    mov rdx, [rbp +  336]
    sbb rdx, [r12 + 336]
    mov rcx, [rbp +  344]
    sbb rcx, [r12 + 344]
    mov r8, [rbp +  352]
    sbb r8, [r12 + 352]
    mov r9, [rbp +  360]
    sbb r9, [r12 + 360]
    mov r10, [rbp +  368]
    sbb r10, [r12 + 368]
    mov r11, [rbp +  376]
    sbb r11, [r12 + 376]

    mov rdi, [rbp +  384]
    sbb rdi, [r12 + 384]
    mov rsi, [rbp +  392]
    sbb rsi, [r12 + 392]
    mov rdx, [rbp +  400]
    sbb rdx, [r12 + 400]
    mov rcx, [rbp +  408]
    sbb rcx, [r12 + 408]
    mov r8, [rbp +  416]
    sbb r8, [r12 + 416]
    mov r9, [rbp +  424]
    sbb r9, [r12 + 424]
    mov r10, [rbp +  432]
    sbb r10, [r12 + 432]
    mov r11, [rbp +  440]
    sbb r11, [r12 + 440]

    mov rdi, [rbp +  448]
    sbb rdi, [r12 + 448]
    mov rsi, [rbp +  456]
    sbb rsi, [r12 + 456]
    mov rdx, [rbp +  464]
    sbb rdx, [r12 + 464]
    mov rcx, [rbp +  472]
    sbb rcx, [r12 + 472]
    mov r8, [rbp +  480]
    sbb r8, [r12 + 480]
    mov r9, [rbp +  488]
    sbb r9, [r12 + 488]
    mov r10, [rbp +  496]
    sbb r10, [r12 + 496]
    mov r11, [rbp +  504]
    sbb r11, [r12 + 504]

    mov rdi, [rbp +  512]
    sbb rdi, [r12 + 512]
    mov rsi, [rbp +  520]
    sbb rsi, [r12 + 520]
    mov rdx, [rbp +  528]
    sbb rdx, [r12 + 528]
    mov rcx, [rbp +  536]
    sbb rcx, [r12 + 536]
    mov r8, [rbp +  544]
    sbb r8, [r12 + 544]
    mov r9, [rbp +  552]
    sbb r9, [r12 + 552]
    mov r10, [rbp +  560]
    sbb r10, [r12 + 560]
    mov r11, [rbp +  568]
    sbb r11, [r12 + 568]

    mov rdi, [rbp +  576]
    sbb rdi, [r12 + 576]
    mov rsi, [rbp +  584]
    sbb rsi, [r12 + 584]
    mov rdx, [rbp +  592]
    sbb rdx, [r12 + 592]
    mov rcx, [rbp +  600]
    sbb rcx, [r12 + 600]
    mov r8, [rbp +  608]
    sbb r8, [r12 + 608]
    mov r9, [rbp +  616]
    sbb r9, [r12 + 616]
    mov r10, [rbp +  624]
    sbb r10, [r12 + 624]
    mov r11, [rbp +  632]
    sbb r11, [r12 + 632]

    cswap2 rdi, [rbp +  576]
    cswap2 rsi, [rbp +  584]
    cswap2 rdx, [rbp +  592]
    cswap2 rcx, [rbp +  600]
    cswap2 r8, [rbp +  608]
    cswap2 r9, [rbp +  616]
    cswap2 r10, [rbp +  624]
    cswap2 r11, [rbp +  632]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    mov rdi, [rbp +  64]
    sbb rdi, [r12 + 64]
    mov rsi, [rbp +  72]
    sbb rsi, [r12 + 72]
    mov rdx, [rbp +  80]
    sbb rdx, [r12 + 80]
    mov rcx, [rbp +  88]
    sbb rcx, [r12 + 88]
    mov r8, [rbp +  96]
    sbb r8, [r12 + 96]
    mov r9, [rbp +  104]
    sbb r9, [r12 + 104]
    mov r10, [rbp +  112]
    sbb r10, [r12 + 112]
    mov r11, [rbp +  120]
    sbb r11, [r12 + 120]

    mov rdi, [rbp +  128]
    sbb rdi, [r12 + 128]
    mov rsi, [rbp +  136]
    sbb rsi, [r12 + 136]
    mov rdx, [rbp +  144]
    sbb rdx, [r12 + 144]
    mov rcx, [rbp +  152]
    sbb rcx, [r12 + 152]
    mov r8, [rbp +  160]
    sbb r8, [r12 + 160]
    mov r9, [rbp +  168]
    sbb r9, [r12 + 168]
    mov r10, [rbp +  176]
    sbb r10, [r12 + 176]
    mov r11, [rbp +  184]
    sbb r11, [r12 + 184]

    mov rdi, [rbp +  192]
    sbb rdi, [r12 + 192]
    mov rsi, [rbp +  200]
    sbb rsi, [r12 + 200]
    mov rdx, [rbp +  208]
    sbb rdx, [r12 + 208]
    mov rcx, [rbp +  216]
    sbb rcx, [r12 + 216]
    mov r8, [rbp +  224]
    sbb r8, [r12 + 224]
    mov r9, [rbp +  232]
    sbb r9, [r12 + 232]
    mov r10, [rbp +  240]
    sbb r10, [r12 + 240]
    mov r11, [rbp +  248]
    sbb r11, [r12 + 248]

    mov rdi, [rbp +  256]
    sbb rdi, [r12 + 256]
    mov rsi, [rbp +  264]
    sbb rsi, [r12 + 264]
    mov rdx, [rbp +  272]
    sbb rdx, [r12 + 272]
    mov rcx, [rbp +  280]
    sbb rcx, [r12 + 280]
    mov r8, [rbp +  288]
    sbb r8, [r12 + 288]
    mov r9, [rbp +  296]
    sbb r9, [r12 + 296]
    mov r10, [rbp +  304]
    sbb r10, [r12 + 304]
    mov r11, [rbp +  312]
    sbb r11, [r12 + 312]

    mov rdi, [rbp +  320]
    sbb rdi, [r12 + 320]
    mov rsi, [rbp +  328]
    sbb rsi, [r12 + 328]
    mov rdx, [rbp +  336]
    sbb rdx, [r12 + 336]
    mov rcx, [rbp +  344]
    sbb rcx, [r12 + 344]
    mov r8, [rbp +  352]
    sbb r8, [r12 + 352]
    mov r9, [rbp +  360]
    sbb r9, [r12 + 360]
    mov r10, [rbp +  368]
    sbb r10, [r12 + 368]
    mov r11, [rbp +  376]
    sbb r11, [r12 + 376]

    mov rdi, [rbp +  384]
    sbb rdi, [r12 + 384]
    mov rsi, [rbp +  392]
    sbb rsi, [r12 + 392]
    mov rdx, [rbp +  400]
    sbb rdx, [r12 + 400]
    mov rcx, [rbp +  408]
    sbb rcx, [r12 + 408]
    mov r8, [rbp +  416]
    sbb r8, [r12 + 416]
    mov r9, [rbp +  424]
    sbb r9, [r12 + 424]
    mov r10, [rbp +  432]
    sbb r10, [r12 + 432]
    mov r11, [rbp +  440]
    sbb r11, [r12 + 440]

    mov rdi, [rbp +  448]
    sbb rdi, [r12 + 448]
    mov rsi, [rbp +  456]
    sbb rsi, [r12 + 456]
    mov rdx, [rbp +  464]
    sbb rdx, [r12 + 464]
    mov rcx, [rbp +  472]
    sbb rcx, [r12 + 472]
    mov r8, [rbp +  480]
    sbb r8, [r12 + 480]
    mov r9, [rbp +  488]
    sbb r9, [r12 + 488]
    mov r10, [rbp +  496]
    sbb r10, [r12 + 496]
    mov r11, [rbp +  504]
    sbb r11, [r12 + 504]

    mov rdi, [rbp +  512]
    sbb rdi, [r12 + 512]
    mov rsi, [rbp +  520]
    sbb rsi, [r12 + 520]
    mov rdx, [rbp +  528]
    sbb rdx, [r12 + 528]
    mov rcx, [rbp +  536]
    sbb rcx, [r12 + 536]
    mov r8, [rbp +  544]
    sbb r8, [r12 + 544]
    mov r9, [rbp +  552]
    sbb r9, [r12 + 552]
    mov r10, [rbp +  560]
    sbb r10, [r12 + 560]
    mov r11, [rbp +  568]
    sbb r11, [r12 + 568]

    cswap2 rdi, [rbp +  512]
    cswap2 rsi, [rbp +  520]
    cswap2 rdx, [rbp +  528]
    cswap2 rcx, [rbp +  536]
    cswap2 r8, [rbp +  544]
    cswap2 r9, [rbp +  552]
    cswap2 r10, [rbp +  560]
    cswap2 r11, [rbp +  568]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    mov rdi, [rbp +  64]
    sbb rdi, [r12 + 64]
    mov rsi, [rbp +  72]
    sbb rsi, [r12 + 72]
    mov rdx, [rbp +  80]
    sbb rdx, [r12 + 80]
    mov rcx, [rbp +  88]
    sbb rcx, [r12 + 88]
    mov r8, [rbp +  96]
    sbb r8, [r12 + 96]
    mov r9, [rbp +  104]
    sbb r9, [r12 + 104]
    mov r10, [rbp +  112]
    sbb r10, [r12 + 112]
    mov r11, [rbp +  120]
    sbb r11, [r12 + 120]

    mov rdi, [rbp +  128]
    sbb rdi, [r12 + 128]
    mov rsi, [rbp +  136]
    sbb rsi, [r12 + 136]
    mov rdx, [rbp +  144]
    sbb rdx, [r12 + 144]
    mov rcx, [rbp +  152]
    sbb rcx, [r12 + 152]
    mov r8, [rbp +  160]
    sbb r8, [r12 + 160]
    mov r9, [rbp +  168]
    sbb r9, [r12 + 168]
    mov r10, [rbp +  176]
    sbb r10, [r12 + 176]
    mov r11, [rbp +  184]
    sbb r11, [r12 + 184]

    mov rdi, [rbp +  192]
    sbb rdi, [r12 + 192]
    mov rsi, [rbp +  200]
    sbb rsi, [r12 + 200]
    mov rdx, [rbp +  208]
    sbb rdx, [r12 + 208]
    mov rcx, [rbp +  216]
    sbb rcx, [r12 + 216]
    mov r8, [rbp +  224]
    sbb r8, [r12 + 224]
    mov r9, [rbp +  232]
    sbb r9, [r12 + 232]
    mov r10, [rbp +  240]
    sbb r10, [r12 + 240]
    mov r11, [rbp +  248]
    sbb r11, [r12 + 248]

    mov rdi, [rbp +  256]
    sbb rdi, [r12 + 256]
    mov rsi, [rbp +  264]
    sbb rsi, [r12 + 264]
    mov rdx, [rbp +  272]
    sbb rdx, [r12 + 272]
    mov rcx, [rbp +  280]
    sbb rcx, [r12 + 280]
    mov r8, [rbp +  288]
    sbb r8, [r12 + 288]
    mov r9, [rbp +  296]
    sbb r9, [r12 + 296]
    mov r10, [rbp +  304]
    sbb r10, [r12 + 304]
    mov r11, [rbp +  312]
    sbb r11, [r12 + 312]

    mov rdi, [rbp +  320]
    sbb rdi, [r12 + 320]
    mov rsi, [rbp +  328]
    sbb rsi, [r12 + 328]
    mov rdx, [rbp +  336]
    sbb rdx, [r12 + 336]
    mov rcx, [rbp +  344]
    sbb rcx, [r12 + 344]
    mov r8, [rbp +  352]
    sbb r8, [r12 + 352]
    mov r9, [rbp +  360]
    sbb r9, [r12 + 360]
    mov r10, [rbp +  368]
    sbb r10, [r12 + 368]
    mov r11, [rbp +  376]
    sbb r11, [r12 + 376]

    mov rdi, [rbp +  384]
    sbb rdi, [r12 + 384]
    mov rsi, [rbp +  392]
    sbb rsi, [r12 + 392]
    mov rdx, [rbp +  400]
    sbb rdx, [r12 + 400]
    mov rcx, [rbp +  408]
    sbb rcx, [r12 + 408]
    mov r8, [rbp +  416]
    sbb r8, [r12 + 416]
    mov r9, [rbp +  424]
    sbb r9, [r12 + 424]
    mov r10, [rbp +  432]
    sbb r10, [r12 + 432]
    mov r11, [rbp +  440]
    sbb r11, [r12 + 440]

    mov rdi, [rbp +  448]
    sbb rdi, [r12 + 448]
    mov rsi, [rbp +  456]
    sbb rsi, [r12 + 456]
    mov rdx, [rbp +  464]
    sbb rdx, [r12 + 464]
    mov rcx, [rbp +  472]
    sbb rcx, [r12 + 472]
    mov r8, [rbp +  480]
    sbb r8, [r12 + 480]
    mov r9, [rbp +  488]
    sbb r9, [r12 + 488]
    mov r10, [rbp +  496]
    sbb r10, [r12 + 496]
    mov r11, [rbp +  504]
    sbb r11, [r12 + 504]

    cswap2 rdi, [rbp +  448]
    cswap2 rsi, [rbp +  456]
    cswap2 rdx, [rbp +  464]
    cswap2 rcx, [rbp +  472]
    cswap2 r8, [rbp +  480]
    cswap2 r9, [rbp +  488]
    cswap2 r10, [rbp +  496]
    cswap2 r11, [rbp +  504]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    mov rdi, [rbp +  64]
    sbb rdi, [r12 + 64]
    mov rsi, [rbp +  72]
    sbb rsi, [r12 + 72]
    mov rdx, [rbp +  80]
    sbb rdx, [r12 + 80]
    mov rcx, [rbp +  88]
    sbb rcx, [r12 + 88]
    mov r8, [rbp +  96]
    sbb r8, [r12 + 96]
    mov r9, [rbp +  104]
    sbb r9, [r12 + 104]
    mov r10, [rbp +  112]
    sbb r10, [r12 + 112]
    mov r11, [rbp +  120]
    sbb r11, [r12 + 120]

    mov rdi, [rbp +  128]
    sbb rdi, [r12 + 128]
    mov rsi, [rbp +  136]
    sbb rsi, [r12 + 136]
    mov rdx, [rbp +  144]
    sbb rdx, [r12 + 144]
    mov rcx, [rbp +  152]
    sbb rcx, [r12 + 152]
    mov r8, [rbp +  160]
    sbb r8, [r12 + 160]
    mov r9, [rbp +  168]
    sbb r9, [r12 + 168]
    mov r10, [rbp +  176]
    sbb r10, [r12 + 176]
    mov r11, [rbp +  184]
    sbb r11, [r12 + 184]

    mov rdi, [rbp +  192]
    sbb rdi, [r12 + 192]
    mov rsi, [rbp +  200]
    sbb rsi, [r12 + 200]
    mov rdx, [rbp +  208]
    sbb rdx, [r12 + 208]
    mov rcx, [rbp +  216]
    sbb rcx, [r12 + 216]
    mov r8, [rbp +  224]
    sbb r8, [r12 + 224]
    mov r9, [rbp +  232]
    sbb r9, [r12 + 232]
    mov r10, [rbp +  240]
    sbb r10, [r12 + 240]
    mov r11, [rbp +  248]
    sbb r11, [r12 + 248]

    mov rdi, [rbp +  256]
    sbb rdi, [r12 + 256]
    mov rsi, [rbp +  264]
    sbb rsi, [r12 + 264]
    mov rdx, [rbp +  272]
    sbb rdx, [r12 + 272]
    mov rcx, [rbp +  280]
    sbb rcx, [r12 + 280]
    mov r8, [rbp +  288]
    sbb r8, [r12 + 288]
    mov r9, [rbp +  296]
    sbb r9, [r12 + 296]
    mov r10, [rbp +  304]
    sbb r10, [r12 + 304]
    mov r11, [rbp +  312]
    sbb r11, [r12 + 312]

    mov rdi, [rbp +  320]
    sbb rdi, [r12 + 320]
    mov rsi, [rbp +  328]
    sbb rsi, [r12 + 328]
    mov rdx, [rbp +  336]
    sbb rdx, [r12 + 336]
    mov rcx, [rbp +  344]
    sbb rcx, [r12 + 344]
    mov r8, [rbp +  352]
    sbb r8, [r12 + 352]
    mov r9, [rbp +  360]
    sbb r9, [r12 + 360]
    mov r10, [rbp +  368]
    sbb r10, [r12 + 368]
    mov r11, [rbp +  376]
    sbb r11, [r12 + 376]

    mov rdi, [rbp +  384]
    sbb rdi, [r12 + 384]
    mov rsi, [rbp +  392]
    sbb rsi, [r12 + 392]
    mov rdx, [rbp +  400]
    sbb rdx, [r12 + 400]
    mov rcx, [rbp +  408]
    sbb rcx, [r12 + 408]
    mov r8, [rbp +  416]
    sbb r8, [r12 + 416]
    mov r9, [rbp +  424]
    sbb r9, [r12 + 424]
    mov r10, [rbp +  432]
    sbb r10, [r12 + 432]
    mov r11, [rbp +  440]
    sbb r11, [r12 + 440]

    cswap2 rdi, [rbp +  384]
    cswap2 rsi, [rbp +  392]
    cswap2 rdx, [rbp +  400]
    cswap2 rcx, [rbp +  408]
    cswap2 r8, [rbp +  416]
    cswap2 r9, [rbp +  424]
    cswap2 r10, [rbp +  432]
    cswap2 r11, [rbp +  440]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    mov rdi, [rbp +  64]
    sbb rdi, [r12 + 64]
    mov rsi, [rbp +  72]
    sbb rsi, [r12 + 72]
    mov rdx, [rbp +  80]
    sbb rdx, [r12 + 80]
    mov rcx, [rbp +  88]
    sbb rcx, [r12 + 88]
    mov r8, [rbp +  96]
    sbb r8, [r12 + 96]
    mov r9, [rbp +  104]
    sbb r9, [r12 + 104]
    mov r10, [rbp +  112]
    sbb r10, [r12 + 112]
    mov r11, [rbp +  120]
    sbb r11, [r12 + 120]

    mov rdi, [rbp +  128]
    sbb rdi, [r12 + 128]
    mov rsi, [rbp +  136]
    sbb rsi, [r12 + 136]
    mov rdx, [rbp +  144]
    sbb rdx, [r12 + 144]
    mov rcx, [rbp +  152]
    sbb rcx, [r12 + 152]
    mov r8, [rbp +  160]
    sbb r8, [r12 + 160]
    mov r9, [rbp +  168]
    sbb r9, [r12 + 168]
    mov r10, [rbp +  176]
    sbb r10, [r12 + 176]
    mov r11, [rbp +  184]
    sbb r11, [r12 + 184]

    mov rdi, [rbp +  192]
    sbb rdi, [r12 + 192]
    mov rsi, [rbp +  200]
    sbb rsi, [r12 + 200]
    mov rdx, [rbp +  208]
    sbb rdx, [r12 + 208]
    mov rcx, [rbp +  216]
    sbb rcx, [r12 + 216]
    mov r8, [rbp +  224]
    sbb r8, [r12 + 224]
    mov r9, [rbp +  232]
    sbb r9, [r12 + 232]
    mov r10, [rbp +  240]
    sbb r10, [r12 + 240]
    mov r11, [rbp +  248]
    sbb r11, [r12 + 248]

    mov rdi, [rbp +  256]
    sbb rdi, [r12 + 256]
    mov rsi, [rbp +  264]
    sbb rsi, [r12 + 264]
    mov rdx, [rbp +  272]
    sbb rdx, [r12 + 272]
    mov rcx, [rbp +  280]
    sbb rcx, [r12 + 280]
    mov r8, [rbp +  288]
    sbb r8, [r12 + 288]
    mov r9, [rbp +  296]
    sbb r9, [r12 + 296]
    mov r10, [rbp +  304]
    sbb r10, [r12 + 304]
    mov r11, [rbp +  312]
    sbb r11, [r12 + 312]

    mov rdi, [rbp +  320]
    sbb rdi, [r12 + 320]
    mov rsi, [rbp +  328]
    sbb rsi, [r12 + 328]
    mov rdx, [rbp +  336]
    sbb rdx, [r12 + 336]
    mov rcx, [rbp +  344]
    sbb rcx, [r12 + 344]
    mov r8, [rbp +  352]
    sbb r8, [r12 + 352]
    mov r9, [rbp +  360]
    sbb r9, [r12 + 360]
    mov r10, [rbp +  368]
    sbb r10, [r12 + 368]
    mov r11, [rbp +  376]
    sbb r11, [r12 + 376]

    cswap2 rdi, [rbp +  320]
    cswap2 rsi, [rbp +  328]
    cswap2 rdx, [rbp +  336]
    cswap2 rcx, [rbp +  344]
    cswap2 r8, [rbp +  352]
    cswap2 r9, [rbp +  360]
    cswap2 r10, [rbp +  368]
    cswap2 r11, [rbp +  376]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    mov rdi, [rbp +  64]
    sbb rdi, [r12 + 64]
    mov rsi, [rbp +  72]
    sbb rsi, [r12 + 72]
    mov rdx, [rbp +  80]
    sbb rdx, [r12 + 80]
    mov rcx, [rbp +  88]
    sbb rcx, [r12 + 88]
    mov r8, [rbp +  96]
    sbb r8, [r12 + 96]
    mov r9, [rbp +  104]
    sbb r9, [r12 + 104]
    mov r10, [rbp +  112]
    sbb r10, [r12 + 112]
    mov r11, [rbp +  120]
    sbb r11, [r12 + 120]

    mov rdi, [rbp +  128]
    sbb rdi, [r12 + 128]
    mov rsi, [rbp +  136]
    sbb rsi, [r12 + 136]
    mov rdx, [rbp +  144]
    sbb rdx, [r12 + 144]
    mov rcx, [rbp +  152]
    sbb rcx, [r12 + 152]
    mov r8, [rbp +  160]
    sbb r8, [r12 + 160]
    mov r9, [rbp +  168]
    sbb r9, [r12 + 168]
    mov r10, [rbp +  176]
    sbb r10, [r12 + 176]
    mov r11, [rbp +  184]
    sbb r11, [r12 + 184]

    mov rdi, [rbp +  192]
    sbb rdi, [r12 + 192]
    mov rsi, [rbp +  200]
    sbb rsi, [r12 + 200]
    mov rdx, [rbp +  208]
    sbb rdx, [r12 + 208]
    mov rcx, [rbp +  216]
    sbb rcx, [r12 + 216]
    mov r8, [rbp +  224]
    sbb r8, [r12 + 224]
    mov r9, [rbp +  232]
    sbb r9, [r12 + 232]
    mov r10, [rbp +  240]
    sbb r10, [r12 + 240]
    mov r11, [rbp +  248]
    sbb r11, [r12 + 248]

    mov rdi, [rbp +  256]
    sbb rdi, [r12 + 256]
    mov rsi, [rbp +  264]
    sbb rsi, [r12 + 264]
    mov rdx, [rbp +  272]
    sbb rdx, [r12 + 272]
    mov rcx, [rbp +  280]
    sbb rcx, [r12 + 280]
    mov r8, [rbp +  288]
    sbb r8, [r12 + 288]
    mov r9, [rbp +  296]
    sbb r9, [r12 + 296]
    mov r10, [rbp +  304]
    sbb r10, [r12 + 304]
    mov r11, [rbp +  312]
    sbb r11, [r12 + 312]

    cswap2 rdi, [rbp +  256]
    cswap2 rsi, [rbp +  264]
    cswap2 rdx, [rbp +  272]
    cswap2 rcx, [rbp +  280]
    cswap2 r8, [rbp +  288]
    cswap2 r9, [rbp +  296]
    cswap2 r10, [rbp +  304]
    cswap2 r11, [rbp +  312]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    mov rdi, [rbp +  64]
    sbb rdi, [r12 + 64]
    mov rsi, [rbp +  72]
    sbb rsi, [r12 + 72]
    mov rdx, [rbp +  80]
    sbb rdx, [r12 + 80]
    mov rcx, [rbp +  88]
    sbb rcx, [r12 + 88]
    mov r8, [rbp +  96]
    sbb r8, [r12 + 96]
    mov r9, [rbp +  104]
    sbb r9, [r12 + 104]
    mov r10, [rbp +  112]
    sbb r10, [r12 + 112]
    mov r11, [rbp +  120]
    sbb r11, [r12 + 120]

    mov rdi, [rbp +  128]
    sbb rdi, [r12 + 128]
    mov rsi, [rbp +  136]
    sbb rsi, [r12 + 136]
    mov rdx, [rbp +  144]
    sbb rdx, [r12 + 144]
    mov rcx, [rbp +  152]
    sbb rcx, [r12 + 152]
    mov r8, [rbp +  160]
    sbb r8, [r12 + 160]
    mov r9, [rbp +  168]
    sbb r9, [r12 + 168]
    mov r10, [rbp +  176]
    sbb r10, [r12 + 176]
    mov r11, [rbp +  184]
    sbb r11, [r12 + 184]

    mov rdi, [rbp +  192]
    sbb rdi, [r12 + 192]
    mov rsi, [rbp +  200]
    sbb rsi, [r12 + 200]
    mov rdx, [rbp +  208]
    sbb rdx, [r12 + 208]
    mov rcx, [rbp +  216]
    sbb rcx, [r12 + 216]
    mov r8, [rbp +  224]
    sbb r8, [r12 + 224]
    mov r9, [rbp +  232]
    sbb r9, [r12 + 232]
    mov r10, [rbp +  240]
    sbb r10, [r12 + 240]
    mov r11, [rbp +  248]
    sbb r11, [r12 + 248]

    cswap2 rdi, [rbp +  192]
    cswap2 rsi, [rbp +  200]
    cswap2 rdx, [rbp +  208]
    cswap2 rcx, [rbp +  216]
    cswap2 r8, [rbp +  224]
    cswap2 r9, [rbp +  232]
    cswap2 r10, [rbp +  240]
    cswap2 r11, [rbp +  248]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    mov rdi, [rbp +  64]
    sbb rdi, [r12 + 64]
    mov rsi, [rbp +  72]
    sbb rsi, [r12 + 72]
    mov rdx, [rbp +  80]
    sbb rdx, [r12 + 80]
    mov rcx, [rbp +  88]
    sbb rcx, [r12 + 88]
    mov r8, [rbp +  96]
    sbb r8, [r12 + 96]
    mov r9, [rbp +  104]
    sbb r9, [r12 + 104]
    mov r10, [rbp +  112]
    sbb r10, [r12 + 112]
    mov r11, [rbp +  120]
    sbb r11, [r12 + 120]

    mov rdi, [rbp +  128]
    sbb rdi, [r12 + 128]
    mov rsi, [rbp +  136]
    sbb rsi, [r12 + 136]
    mov rdx, [rbp +  144]
    sbb rdx, [r12 + 144]
    mov rcx, [rbp +  152]
    sbb rcx, [r12 + 152]
    mov r8, [rbp +  160]
    sbb r8, [r12 + 160]
    mov r9, [rbp +  168]
    sbb r9, [r12 + 168]
    mov r10, [rbp +  176]
    sbb r10, [r12 + 176]
    mov r11, [rbp +  184]
    sbb r11, [r12 + 184]

    cswap2 rdi, [rbp +  128]
    cswap2 rsi, [rbp +  136]
    cswap2 rdx, [rbp +  144]
    cswap2 rcx, [rbp +  152]
    cswap2 r8, [rbp +  160]
    cswap2 r9, [rbp +  168]
    cswap2 r10, [rbp +  176]
    cswap2 r11, [rbp +  184]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    mov rdi, [rbp +  64]
    sbb rdi, [r12 + 64]
    mov rsi, [rbp +  72]
    sbb rsi, [r12 + 72]
    mov rdx, [rbp +  80]
    sbb rdx, [r12 + 80]
    mov rcx, [rbp +  88]
    sbb rcx, [r12 + 88]
    mov r8, [rbp +  96]
    sbb r8, [r12 + 96]
    mov r9, [rbp +  104]
    sbb r9, [r12 + 104]
    mov r10, [rbp +  112]
    sbb r10, [r12 + 112]
    mov r11, [rbp +  120]
    sbb r11, [r12 + 120]

    cswap2 rdi, [rbp +  64]
    cswap2 rsi, [rbp +  72]
    cswap2 rdx, [rbp +  80]
    cswap2 rcx, [rbp +  88]
    cswap2 r8, [rbp +  96]
    cswap2 r9, [rbp +  104]
    cswap2 r10, [rbp +  112]
    cswap2 r11, [rbp +  120]

    mov rdi, [rbp +  0]
    sub rdi, [r12]
    mov rsi, [rbp +  8]
    sbb rsi, [r12 + 8]
    mov rdx, [rbp +  16]
    sbb rdx, [r12 + 16]
    mov rcx, [rbp +  24]
    sbb rcx, [r12 + 24]
    mov r8, [rbp +  32]
    sbb r8, [r12 + 32]
    mov r9, [rbp +  40]
    sbb r9, [r12 + 40]
    mov r10, [rbp +  48]
    sbb r10, [r12 + 48]
    mov r11, [rbp +  56]
    sbb r11, [r12 + 56]

    cswap2 rdi, [rbp +  0]
    cswap2 rsi, [rbp +  8]
    cswap2 rdx, [rbp +  16]
    cswap2 rcx, [rbp +  24]
    cswap2 r8, [rbp +  32]
    cswap2 r9, [rbp +  40]
    cswap2 r10, [rbp +  48]
    cswap2 r11, [rbp +  56]
    pop r13
    pop r12
    pop rbp
    ret


.global secsidh_internal_8191m78l338_fp_add2
secsidh_internal_8191m78l338_fp_add2:
  mov rdx, rdi

.global secsidh_internal_8191m78l338_fp_add
secsidh_internal_8191m78l338_fp_add:
  push rdi
  call secsidh_internal_8191m78l338_uintbig_add
  pop rdi

  jmp .reduce_once

.global secsidh_internal_8191m78l338_fp_sub2
secsidh_internal_8191m78l338_fp_sub2:
  mov rdx, rdi
  xchg rsi, rdx

.global secsidh_internal_8191m78l338_fp_sub
secsidh_internal_8191m78l338_fp_sub:
  push rdi
  call secsidh_internal_8191m78l338_uintbig_sub
  pop rdi


  neg rax

  sub rsp, pbytes

  mov r8, secsidh_internal_8191m78l338_p@GOTPCREL[rip]
  mov rcx, [r8]
  and rcx, rax
  mov [rsp + 0],rcx
  .set k, 1
  .rept plimbs-1
      mov rcx, [r8 + 8*k]
      and rcx, rax
      mov [rsp + 8*k], rcx
      .set k, k+1
  .endr

  mov rcx, [rsp +  0]
  add rcx, [rdi +  0]
  mov [rdi +  0], rcx
  .set k, 1
  .rept plimbs-1
      mov rcx, [rsp + 8*k]
      adc rcx, [rdi + 8*k]
      mov [rdi + 8*k], rcx
      .set k, k+1
  .endr

  add rsp, pbytes
  ret

.global secsidh_internal_8191m78l338_fp_enc
secsidh_internal_8191m78l338_fp_enc:
    mov r8, secsidh_internal_8191m78l338_r_squared_mod_p@GOTPCREL[rip]
    lea rdx, [r8]
    jmp secsidh_internal_8191m78l338_fp_mul

.global secsidh_internal_8191m78l338_fp_dec
secsidh_internal_8191m78l338_fp_dec:
    mov r8, secsidh_internal_8191m78l338_uintbig_1@GOTPCREL[rip]
    lea rdx, [r8]
    jmp secsidh_internal_8191m78l338_fp_mul


.macro add_64x64
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 63
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 64*8], r8
.endm

.macro sub_d_130x128_woc
# odd intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rsi + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rsi + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rsi + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rsi + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rsi + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rsi + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rsi + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rsi + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rsi + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rsi + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rsi + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rsi + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rsi + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rsi + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rsi + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rsi + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rsi + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rsi + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rsi + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rsi + 31*8]
    mov [rdi + 31*8], rax
    mov rax, [rdi + 32*8]
    sbb rax, [rsi + 32*8]
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, [rsi + 33*8]
    mov [rdi + 33*8], rax
    mov rax, [rdi + 34*8]
    sbb rax, [rsi + 34*8]
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, [rsi + 35*8]
    mov [rdi + 35*8], rax
    mov rax, [rdi + 36*8]
    sbb rax, [rsi + 36*8]
    mov [rdi + 36*8], rax
    mov rax, [rdi + 37*8]
    sbb rax, [rsi + 37*8]
    mov [rdi + 37*8], rax
    mov rax, [rdi + 38*8]
    sbb rax, [rsi + 38*8]
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, [rsi + 39*8]
    mov [rdi + 39*8], rax
    mov rax, [rdi + 40*8]
    sbb rax, [rsi + 40*8]
    mov [rdi + 40*8], rax
    mov rax, [rdi + 41*8]
    sbb rax, [rsi + 41*8]
    mov [rdi + 41*8], rax
    mov rax, [rdi + 42*8]
    sbb rax, [rsi + 42*8]
    mov [rdi + 42*8], rax
    mov rax, [rdi + 43*8]
    sbb rax, [rsi + 43*8]
    mov [rdi + 43*8], rax
    mov rax, [rdi + 44*8]
    sbb rax, [rsi + 44*8]
    mov [rdi + 44*8], rax
    mov rax, [rdi + 45*8]
    sbb rax, [rsi + 45*8]
    mov [rdi + 45*8], rax
    mov rax, [rdi + 46*8]
    sbb rax, [rsi + 46*8]
    mov [rdi + 46*8], rax
    mov rax, [rdi + 47*8]
    sbb rax, [rsi + 47*8]
    mov [rdi + 47*8], rax
    mov rax, [rdi + 48*8]
    sbb rax, [rsi + 48*8]
    mov [rdi + 48*8], rax
    mov rax, [rdi + 49*8]
    sbb rax, [rsi + 49*8]
    mov [rdi + 49*8], rax
    mov rax, [rdi + 50*8]
    sbb rax, [rsi + 50*8]
    mov [rdi + 50*8], rax
    mov rax, [rdi + 51*8]
    sbb rax, [rsi + 51*8]
    mov [rdi + 51*8], rax
    mov rax, [rdi + 52*8]
    sbb rax, [rsi + 52*8]
    mov [rdi + 52*8], rax
    mov rax, [rdi + 53*8]
    sbb rax, [rsi + 53*8]
    mov [rdi + 53*8], rax
    mov rax, [rdi + 54*8]
    sbb rax, [rsi + 54*8]
    mov [rdi + 54*8], rax
    mov rax, [rdi + 55*8]
    sbb rax, [rsi + 55*8]
    mov [rdi + 55*8], rax
    mov rax, [rdi + 56*8]
    sbb rax, [rsi + 56*8]
    mov [rdi + 56*8], rax
    mov rax, [rdi + 57*8]
    sbb rax, [rsi + 57*8]
    mov [rdi + 57*8], rax
    mov rax, [rdi + 58*8]
    sbb rax, [rsi + 58*8]
    mov [rdi + 58*8], rax
    mov rax, [rdi + 59*8]
    sbb rax, [rsi + 59*8]
    mov [rdi + 59*8], rax
    mov rax, [rdi + 60*8]
    sbb rax, [rsi + 60*8]
    mov [rdi + 60*8], rax
    mov rax, [rdi + 61*8]
    sbb rax, [rsi + 61*8]
    mov [rdi + 61*8], rax
    mov rax, [rdi + 62*8]
    sbb rax, [rsi + 62*8]
    mov [rdi + 62*8], rax
    mov rax, [rdi + 63*8]
    sbb rax, [rsi + 63*8]
    mov [rdi + 63*8], rax
    mov rax, [rdi + 64*8]
    sbb rax, [rsi + 64*8]
    mov [rdi + 64*8], rax
    mov rax, [rdi + 65*8]
    sbb rax, [rsi + 65*8]
    mov [rdi + 65*8], rax
    mov rax, [rdi + 66*8]
    sbb rax, [rsi + 66*8]
    mov [rdi + 66*8], rax
    mov rax, [rdi + 67*8]
    sbb rax, [rsi + 67*8]
    mov [rdi + 67*8], rax
    mov rax, [rdi + 68*8]
    sbb rax, [rsi + 68*8]
    mov [rdi + 68*8], rax
    mov rax, [rdi + 69*8]
    sbb rax, [rsi + 69*8]
    mov [rdi + 69*8], rax
    mov rax, [rdi + 70*8]
    sbb rax, [rsi + 70*8]
    mov [rdi + 70*8], rax
    mov rax, [rdi + 71*8]
    sbb rax, [rsi + 71*8]
    mov [rdi + 71*8], rax
    mov rax, [rdi + 72*8]
    sbb rax, [rsi + 72*8]
    mov [rdi + 72*8], rax
    mov rax, [rdi + 73*8]
    sbb rax, [rsi + 73*8]
    mov [rdi + 73*8], rax
    mov rax, [rdi + 74*8]
    sbb rax, [rsi + 74*8]
    mov [rdi + 74*8], rax
    mov rax, [rdi + 75*8]
    sbb rax, [rsi + 75*8]
    mov [rdi + 75*8], rax
    mov rax, [rdi + 76*8]
    sbb rax, [rsi + 76*8]
    mov [rdi + 76*8], rax
    mov rax, [rdi + 77*8]
    sbb rax, [rsi + 77*8]
    mov [rdi + 77*8], rax
    mov rax, [rdi + 78*8]
    sbb rax, [rsi + 78*8]
    mov [rdi + 78*8], rax
    mov rax, [rdi + 79*8]
    sbb rax, [rsi + 79*8]
    mov [rdi + 79*8], rax
    mov rax, [rdi + 80*8]
    sbb rax, [rsi + 80*8]
    mov [rdi + 80*8], rax
    mov rax, [rdi + 81*8]
    sbb rax, [rsi + 81*8]
    mov [rdi + 81*8], rax
    mov rax, [rdi + 82*8]
    sbb rax, [rsi + 82*8]
    mov [rdi + 82*8], rax
    mov rax, [rdi + 83*8]
    sbb rax, [rsi + 83*8]
    mov [rdi + 83*8], rax
    mov rax, [rdi + 84*8]
    sbb rax, [rsi + 84*8]
    mov [rdi + 84*8], rax
    mov rax, [rdi + 85*8]
    sbb rax, [rsi + 85*8]
    mov [rdi + 85*8], rax
    mov rax, [rdi + 86*8]
    sbb rax, [rsi + 86*8]
    mov [rdi + 86*8], rax
    mov rax, [rdi + 87*8]
    sbb rax, [rsi + 87*8]
    mov [rdi + 87*8], rax
    mov rax, [rdi + 88*8]
    sbb rax, [rsi + 88*8]
    mov [rdi + 88*8], rax
    mov rax, [rdi + 89*8]
    sbb rax, [rsi + 89*8]
    mov [rdi + 89*8], rax
    mov rax, [rdi + 90*8]
    sbb rax, [rsi + 90*8]
    mov [rdi + 90*8], rax
    mov rax, [rdi + 91*8]
    sbb rax, [rsi + 91*8]
    mov [rdi + 91*8], rax
    mov rax, [rdi + 92*8]
    sbb rax, [rsi + 92*8]
    mov [rdi + 92*8], rax
    mov rax, [rdi + 93*8]
    sbb rax, [rsi + 93*8]
    mov [rdi + 93*8], rax
    mov rax, [rdi + 94*8]
    sbb rax, [rsi + 94*8]
    mov [rdi + 94*8], rax
    mov rax, [rdi + 95*8]
    sbb rax, [rsi + 95*8]
    mov [rdi + 95*8], rax
    mov rax, [rdi + 96*8]
    sbb rax, [rsi + 96*8]
    mov [rdi + 96*8], rax
    mov rax, [rdi + 97*8]
    sbb rax, [rsi + 97*8]
    mov [rdi + 97*8], rax
    mov rax, [rdi + 98*8]
    sbb rax, [rsi + 98*8]
    mov [rdi + 98*8], rax
    mov rax, [rdi + 99*8]
    sbb rax, [rsi + 99*8]
    mov [rdi + 99*8], rax
    mov rax, [rdi + 100*8]
    sbb rax, [rsi + 100*8]
    mov [rdi + 100*8], rax
    mov rax, [rdi + 101*8]
    sbb rax, [rsi + 101*8]
    mov [rdi + 101*8], rax
    mov rax, [rdi + 102*8]
    sbb rax, [rsi + 102*8]
    mov [rdi + 102*8], rax
    mov rax, [rdi + 103*8]
    sbb rax, [rsi + 103*8]
    mov [rdi + 103*8], rax
    mov rax, [rdi + 104*8]
    sbb rax, [rsi + 104*8]
    mov [rdi + 104*8], rax
    mov rax, [rdi + 105*8]
    sbb rax, [rsi + 105*8]
    mov [rdi + 105*8], rax
    mov rax, [rdi + 106*8]
    sbb rax, [rsi + 106*8]
    mov [rdi + 106*8], rax
    mov rax, [rdi + 107*8]
    sbb rax, [rsi + 107*8]
    mov [rdi + 107*8], rax
    mov rax, [rdi + 108*8]
    sbb rax, [rsi + 108*8]
    mov [rdi + 108*8], rax
    mov rax, [rdi + 109*8]
    sbb rax, [rsi + 109*8]
    mov [rdi + 109*8], rax
    mov rax, [rdi + 110*8]
    sbb rax, [rsi + 110*8]
    mov [rdi + 110*8], rax
    mov rax, [rdi + 111*8]
    sbb rax, [rsi + 111*8]
    mov [rdi + 111*8], rax
    mov rax, [rdi + 112*8]
    sbb rax, [rsi + 112*8]
    mov [rdi + 112*8], rax
    mov rax, [rdi + 113*8]
    sbb rax, [rsi + 113*8]
    mov [rdi + 113*8], rax
    mov rax, [rdi + 114*8]
    sbb rax, [rsi + 114*8]
    mov [rdi + 114*8], rax
    mov rax, [rdi + 115*8]
    sbb rax, [rsi + 115*8]
    mov [rdi + 115*8], rax
    mov rax, [rdi + 116*8]
    sbb rax, [rsi + 116*8]
    mov [rdi + 116*8], rax
    mov rax, [rdi + 117*8]
    sbb rax, [rsi + 117*8]
    mov [rdi + 117*8], rax
    mov rax, [rdi + 118*8]
    sbb rax, [rsi + 118*8]
    mov [rdi + 118*8], rax
    mov rax, [rdi + 119*8]
    sbb rax, [rsi + 119*8]
    mov [rdi + 119*8], rax
    mov rax, [rdi + 120*8]
    sbb rax, [rsi + 120*8]
    mov [rdi + 120*8], rax
    mov rax, [rdi + 121*8]
    sbb rax, [rsi + 121*8]
    mov [rdi + 121*8], rax
    mov rax, [rdi + 122*8]
    sbb rax, [rsi + 122*8]
    mov [rdi + 122*8], rax
    mov rax, [rdi + 123*8]
    sbb rax, [rsi + 123*8]
    mov [rdi + 123*8], rax
    mov rax, [rdi + 124*8]
    sbb rax, [rsi + 124*8]
    mov [rdi + 124*8], rax
    mov rax, [rdi + 125*8]
    sbb rax, [rsi + 125*8]
    mov [rdi + 125*8], rax
    mov rax, [rdi + 126*8]
    sbb rax, [rsi + 126*8]
    mov [rdi + 126*8], rax
    mov rax, [rdi + 127*8]
    sbb rax, [rsi + 127*8]
    mov [rdi + 127*8], rax
# outro
    mov rax, [rdi + 128*8]
    sbb rax, 0
    mov [rdi + 128*8], rax
    mov rax, [rdi + 129*8]
    sbb rax, 0
    mov [rdi + 129*8], rax
# 2nd subtraction ---------
# odd intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rdx + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rdx + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rdx + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rdx + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rdx + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rdx + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rdx + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rdx + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rdx + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rdx + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rdx + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rdx + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rdx + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rdx + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rdx + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rdx + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rdx + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rdx + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rdx + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rdx + 31*8]
    mov [rdi + 31*8], rax
    mov rax, [rdi + 32*8]
    sbb rax, [rdx + 32*8]
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, [rdx + 33*8]
    mov [rdi + 33*8], rax
    mov rax, [rdi + 34*8]
    sbb rax, [rdx + 34*8]
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, [rdx + 35*8]
    mov [rdi + 35*8], rax
    mov rax, [rdi + 36*8]
    sbb rax, [rdx + 36*8]
    mov [rdi + 36*8], rax
    mov rax, [rdi + 37*8]
    sbb rax, [rdx + 37*8]
    mov [rdi + 37*8], rax
    mov rax, [rdi + 38*8]
    sbb rax, [rdx + 38*8]
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, [rdx + 39*8]
    mov [rdi + 39*8], rax
    mov rax, [rdi + 40*8]
    sbb rax, [rdx + 40*8]
    mov [rdi + 40*8], rax
    mov rax, [rdi + 41*8]
    sbb rax, [rdx + 41*8]
    mov [rdi + 41*8], rax
    mov rax, [rdi + 42*8]
    sbb rax, [rdx + 42*8]
    mov [rdi + 42*8], rax
    mov rax, [rdi + 43*8]
    sbb rax, [rdx + 43*8]
    mov [rdi + 43*8], rax
    mov rax, [rdi + 44*8]
    sbb rax, [rdx + 44*8]
    mov [rdi + 44*8], rax
    mov rax, [rdi + 45*8]
    sbb rax, [rdx + 45*8]
    mov [rdi + 45*8], rax
    mov rax, [rdi + 46*8]
    sbb rax, [rdx + 46*8]
    mov [rdi + 46*8], rax
    mov rax, [rdi + 47*8]
    sbb rax, [rdx + 47*8]
    mov [rdi + 47*8], rax
    mov rax, [rdi + 48*8]
    sbb rax, [rdx + 48*8]
    mov [rdi + 48*8], rax
    mov rax, [rdi + 49*8]
    sbb rax, [rdx + 49*8]
    mov [rdi + 49*8], rax
    mov rax, [rdi + 50*8]
    sbb rax, [rdx + 50*8]
    mov [rdi + 50*8], rax
    mov rax, [rdi + 51*8]
    sbb rax, [rdx + 51*8]
    mov [rdi + 51*8], rax
    mov rax, [rdi + 52*8]
    sbb rax, [rdx + 52*8]
    mov [rdi + 52*8], rax
    mov rax, [rdi + 53*8]
    sbb rax, [rdx + 53*8]
    mov [rdi + 53*8], rax
    mov rax, [rdi + 54*8]
    sbb rax, [rdx + 54*8]
    mov [rdi + 54*8], rax
    mov rax, [rdi + 55*8]
    sbb rax, [rdx + 55*8]
    mov [rdi + 55*8], rax
    mov rax, [rdi + 56*8]
    sbb rax, [rdx + 56*8]
    mov [rdi + 56*8], rax
    mov rax, [rdi + 57*8]
    sbb rax, [rdx + 57*8]
    mov [rdi + 57*8], rax
    mov rax, [rdi + 58*8]
    sbb rax, [rdx + 58*8]
    mov [rdi + 58*8], rax
    mov rax, [rdi + 59*8]
    sbb rax, [rdx + 59*8]
    mov [rdi + 59*8], rax
    mov rax, [rdi + 60*8]
    sbb rax, [rdx + 60*8]
    mov [rdi + 60*8], rax
    mov rax, [rdi + 61*8]
    sbb rax, [rdx + 61*8]
    mov [rdi + 61*8], rax
    mov rax, [rdi + 62*8]
    sbb rax, [rdx + 62*8]
    mov [rdi + 62*8], rax
    mov rax, [rdi + 63*8]
    sbb rax, [rdx + 63*8]
    mov [rdi + 63*8], rax
    mov rax, [rdi + 64*8]
    sbb rax, [rdx + 64*8]
    mov [rdi + 64*8], rax
    mov rax, [rdi + 65*8]
    sbb rax, [rdx + 65*8]
    mov [rdi + 65*8], rax
    mov rax, [rdi + 66*8]
    sbb rax, [rdx + 66*8]
    mov [rdi + 66*8], rax
    mov rax, [rdi + 67*8]
    sbb rax, [rdx + 67*8]
    mov [rdi + 67*8], rax
    mov rax, [rdi + 68*8]
    sbb rax, [rdx + 68*8]
    mov [rdi + 68*8], rax
    mov rax, [rdi + 69*8]
    sbb rax, [rdx + 69*8]
    mov [rdi + 69*8], rax
    mov rax, [rdi + 70*8]
    sbb rax, [rdx + 70*8]
    mov [rdi + 70*8], rax
    mov rax, [rdi + 71*8]
    sbb rax, [rdx + 71*8]
    mov [rdi + 71*8], rax
    mov rax, [rdi + 72*8]
    sbb rax, [rdx + 72*8]
    mov [rdi + 72*8], rax
    mov rax, [rdi + 73*8]
    sbb rax, [rdx + 73*8]
    mov [rdi + 73*8], rax
    mov rax, [rdi + 74*8]
    sbb rax, [rdx + 74*8]
    mov [rdi + 74*8], rax
    mov rax, [rdi + 75*8]
    sbb rax, [rdx + 75*8]
    mov [rdi + 75*8], rax
    mov rax, [rdi + 76*8]
    sbb rax, [rdx + 76*8]
    mov [rdi + 76*8], rax
    mov rax, [rdi + 77*8]
    sbb rax, [rdx + 77*8]
    mov [rdi + 77*8], rax
    mov rax, [rdi + 78*8]
    sbb rax, [rdx + 78*8]
    mov [rdi + 78*8], rax
    mov rax, [rdi + 79*8]
    sbb rax, [rdx + 79*8]
    mov [rdi + 79*8], rax
    mov rax, [rdi + 80*8]
    sbb rax, [rdx + 80*8]
    mov [rdi + 80*8], rax
    mov rax, [rdi + 81*8]
    sbb rax, [rdx + 81*8]
    mov [rdi + 81*8], rax
    mov rax, [rdi + 82*8]
    sbb rax, [rdx + 82*8]
    mov [rdi + 82*8], rax
    mov rax, [rdi + 83*8]
    sbb rax, [rdx + 83*8]
    mov [rdi + 83*8], rax
    mov rax, [rdi + 84*8]
    sbb rax, [rdx + 84*8]
    mov [rdi + 84*8], rax
    mov rax, [rdi + 85*8]
    sbb rax, [rdx + 85*8]
    mov [rdi + 85*8], rax
    mov rax, [rdi + 86*8]
    sbb rax, [rdx + 86*8]
    mov [rdi + 86*8], rax
    mov rax, [rdi + 87*8]
    sbb rax, [rdx + 87*8]
    mov [rdi + 87*8], rax
    mov rax, [rdi + 88*8]
    sbb rax, [rdx + 88*8]
    mov [rdi + 88*8], rax
    mov rax, [rdi + 89*8]
    sbb rax, [rdx + 89*8]
    mov [rdi + 89*8], rax
    mov rax, [rdi + 90*8]
    sbb rax, [rdx + 90*8]
    mov [rdi + 90*8], rax
    mov rax, [rdi + 91*8]
    sbb rax, [rdx + 91*8]
    mov [rdi + 91*8], rax
    mov rax, [rdi + 92*8]
    sbb rax, [rdx + 92*8]
    mov [rdi + 92*8], rax
    mov rax, [rdi + 93*8]
    sbb rax, [rdx + 93*8]
    mov [rdi + 93*8], rax
    mov rax, [rdi + 94*8]
    sbb rax, [rdx + 94*8]
    mov [rdi + 94*8], rax
    mov rax, [rdi + 95*8]
    sbb rax, [rdx + 95*8]
    mov [rdi + 95*8], rax
    mov rax, [rdi + 96*8]
    sbb rax, [rdx + 96*8]
    mov [rdi + 96*8], rax
    mov rax, [rdi + 97*8]
    sbb rax, [rdx + 97*8]
    mov [rdi + 97*8], rax
    mov rax, [rdi + 98*8]
    sbb rax, [rdx + 98*8]
    mov [rdi + 98*8], rax
    mov rax, [rdi + 99*8]
    sbb rax, [rdx + 99*8]
    mov [rdi + 99*8], rax
    mov rax, [rdi + 100*8]
    sbb rax, [rdx + 100*8]
    mov [rdi + 100*8], rax
    mov rax, [rdi + 101*8]
    sbb rax, [rdx + 101*8]
    mov [rdi + 101*8], rax
    mov rax, [rdi + 102*8]
    sbb rax, [rdx + 102*8]
    mov [rdi + 102*8], rax
    mov rax, [rdi + 103*8]
    sbb rax, [rdx + 103*8]
    mov [rdi + 103*8], rax
    mov rax, [rdi + 104*8]
    sbb rax, [rdx + 104*8]
    mov [rdi + 104*8], rax
    mov rax, [rdi + 105*8]
    sbb rax, [rdx + 105*8]
    mov [rdi + 105*8], rax
    mov rax, [rdi + 106*8]
    sbb rax, [rdx + 106*8]
    mov [rdi + 106*8], rax
    mov rax, [rdi + 107*8]
    sbb rax, [rdx + 107*8]
    mov [rdi + 107*8], rax
    mov rax, [rdi + 108*8]
    sbb rax, [rdx + 108*8]
    mov [rdi + 108*8], rax
    mov rax, [rdi + 109*8]
    sbb rax, [rdx + 109*8]
    mov [rdi + 109*8], rax
    mov rax, [rdi + 110*8]
    sbb rax, [rdx + 110*8]
    mov [rdi + 110*8], rax
    mov rax, [rdi + 111*8]
    sbb rax, [rdx + 111*8]
    mov [rdi + 111*8], rax
    mov rax, [rdi + 112*8]
    sbb rax, [rdx + 112*8]
    mov [rdi + 112*8], rax
    mov rax, [rdi + 113*8]
    sbb rax, [rdx + 113*8]
    mov [rdi + 113*8], rax
    mov rax, [rdi + 114*8]
    sbb rax, [rdx + 114*8]
    mov [rdi + 114*8], rax
    mov rax, [rdi + 115*8]
    sbb rax, [rdx + 115*8]
    mov [rdi + 115*8], rax
    mov rax, [rdi + 116*8]
    sbb rax, [rdx + 116*8]
    mov [rdi + 116*8], rax
    mov rax, [rdi + 117*8]
    sbb rax, [rdx + 117*8]
    mov [rdi + 117*8], rax
    mov rax, [rdi + 118*8]
    sbb rax, [rdx + 118*8]
    mov [rdi + 118*8], rax
    mov rax, [rdi + 119*8]
    sbb rax, [rdx + 119*8]
    mov [rdi + 119*8], rax
    mov rax, [rdi + 120*8]
    sbb rax, [rdx + 120*8]
    mov [rdi + 120*8], rax
    mov rax, [rdi + 121*8]
    sbb rax, [rdx + 121*8]
    mov [rdi + 121*8], rax
    mov rax, [rdi + 122*8]
    sbb rax, [rdx + 122*8]
    mov [rdi + 122*8], rax
    mov rax, [rdi + 123*8]
    sbb rax, [rdx + 123*8]
    mov [rdi + 123*8], rax
    mov rax, [rdi + 124*8]
    sbb rax, [rdx + 124*8]
    mov [rdi + 124*8], rax
    mov rax, [rdi + 125*8]
    sbb rax, [rdx + 125*8]
    mov [rdi + 125*8], rax
    mov rax, [rdi + 126*8]
    sbb rax, [rdx + 126*8]
    mov [rdi + 126*8], rax
    mov rax, [rdi + 127*8]
    sbb rax, [rdx + 127*8]
    mov [rdi + 127*8], rax
# outro
    mov rax, [rdi + 128*8]
    sbb rax, 0
    mov [rdi + 128*8], rax
    mov rax, [rdi + 129*8]
    sbb rax, 0
    mov [rdi + 129*8], rax
.endm

.macro add_130x129
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 129
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*130]
    adc rax, 0
    mov [rdi + 8*130], rax
    mov rax, [rsi + 8*131]
    adc rax, 0
    mov [rdi + 8*131], rax
    mov rax, [rsi + 8*132]
    adc rax, 0
    mov [rdi + 8*132], rax
    mov rax, [rsi + 8*133]
    adc rax, 0
    mov [rdi + 8*133], rax
    mov rax, [rsi + 8*134]
    adc rax, 0
    mov [rdi + 8*134], rax
    mov rax, [rsi + 8*135]
    adc rax, 0
    mov [rdi + 8*135], rax
    mov rax, [rsi + 8*136]
    adc rax, 0
    mov [rdi + 8*136], rax
    mov rax, [rsi + 8*137]
    adc rax, 0
    mov [rdi + 8*137], rax
    mov rax, [rsi + 8*138]
    adc rax, 0
    mov [rdi + 8*138], rax
    mov rax, [rsi + 8*139]
    adc rax, 0
    mov [rdi + 8*139], rax
    mov rax, [rsi + 8*140]
    adc rax, 0
    mov [rdi + 8*140], rax
    mov rax, [rsi + 8*141]
    adc rax, 0
    mov [rdi + 8*141], rax
    mov rax, [rsi + 8*142]
    adc rax, 0
    mov [rdi + 8*142], rax
    mov rax, [rsi + 8*143]
    adc rax, 0
    mov [rdi + 8*143], rax
    mov rax, [rsi + 8*144]
    adc rax, 0
    mov [rdi + 8*144], rax
    mov rax, [rsi + 8*145]
    adc rax, 0
    mov [rdi + 8*145], rax
    mov rax, [rsi + 8*146]
    adc rax, 0
    mov [rdi + 8*146], rax
    mov rax, [rsi + 8*147]
    adc rax, 0
    mov [rdi + 8*147], rax
    mov rax, [rsi + 8*148]
    adc rax, 0
    mov [rdi + 8*148], rax
    mov rax, [rsi + 8*149]
    adc rax, 0
    mov [rdi + 8*149], rax
    mov rax, [rsi + 8*150]
    adc rax, 0
    mov [rdi + 8*150], rax
    mov rax, [rsi + 8*151]
    adc rax, 0
    mov [rdi + 8*151], rax
    mov rax, [rsi + 8*152]
    adc rax, 0
    mov [rdi + 8*152], rax
    mov rax, [rsi + 8*153]
    adc rax, 0
    mov [rdi + 8*153], rax
    mov rax, [rsi + 8*154]
    adc rax, 0
    mov [rdi + 8*154], rax
    mov rax, [rsi + 8*155]
    adc rax, 0
    mov [rdi + 8*155], rax
    mov rax, [rsi + 8*156]
    adc rax, 0
    mov [rdi + 8*156], rax
    mov rax, [rsi + 8*157]
    adc rax, 0
    mov [rdi + 8*157], rax
    mov rax, [rsi + 8*158]
    adc rax, 0
    mov [rdi + 8*158], rax
    mov rax, [rsi + 8*159]
    adc rax, 0
    mov [rdi + 8*159], rax
    mov rax, [rsi + 8*160]
    adc rax, 0
    mov [rdi + 8*160], rax
    mov rax, [rsi + 8*161]
    adc rax, 0
    mov [rdi + 8*161], rax
    mov rax, [rsi + 8*162]
    adc rax, 0
    mov [rdi + 8*162], rax
    mov rax, [rsi + 8*163]
    adc rax, 0
    mov [rdi + 8*163], rax
    mov rax, [rsi + 8*164]
    adc rax, 0
    mov [rdi + 8*164], rax
    mov rax, [rsi + 8*165]
    adc rax, 0
    mov [rdi + 8*165], rax
    mov rax, [rsi + 8*166]
    adc rax, 0
    mov [rdi + 8*166], rax
    mov rax, [rsi + 8*167]
    adc rax, 0
    mov [rdi + 8*167], rax
    mov rax, [rsi + 8*168]
    adc rax, 0
    mov [rdi + 8*168], rax
    mov rax, [rsi + 8*169]
    adc rax, 0
    mov [rdi + 8*169], rax
    mov rax, [rsi + 8*170]
    adc rax, 0
    mov [rdi + 8*170], rax
    mov rax, [rsi + 8*171]
    adc rax, 0
    mov [rdi + 8*171], rax
    mov rax, [rsi + 8*172]
    adc rax, 0
    mov [rdi + 8*172], rax
    mov rax, [rsi + 8*173]
    adc rax, 0
    mov [rdi + 8*173], rax
    mov rax, [rsi + 8*174]
    adc rax, 0
    mov [rdi + 8*174], rax
    mov rax, [rsi + 8*175]
    adc rax, 0
    mov [rdi + 8*175], rax
    mov rax, [rsi + 8*176]
    adc rax, 0
    mov [rdi + 8*176], rax
    mov rax, [rsi + 8*177]
    adc rax, 0
    mov [rdi + 8*177], rax
    mov rax, [rsi + 8*178]
    adc rax, 0
    mov [rdi + 8*178], rax
    mov rax, [rsi + 8*179]
    adc rax, 0
    mov [rdi + 8*179], rax
    mov rax, [rsi + 8*180]
    adc rax, 0
    mov [rdi + 8*180], rax
    mov rax, [rsi + 8*181]
    adc rax, 0
    mov [rdi + 8*181], rax
    mov rax, [rsi + 8*182]
    adc rax, 0
    mov [rdi + 8*182], rax
    mov rax, [rsi + 8*183]
    adc rax, 0
    mov [rdi + 8*183], rax
    mov rax, [rsi + 8*184]
    adc rax, 0
    mov [rdi + 8*184], rax
    mov rax, [rsi + 8*185]
    adc rax, 0
    mov [rdi + 8*185], rax
    mov rax, [rsi + 8*186]
    adc rax, 0
    mov [rdi + 8*186], rax
    mov rax, [rsi + 8*187]
    adc rax, 0
    mov [rdi + 8*187], rax
    mov rax, [rsi + 8*188]
    adc rax, 0
    mov [rdi + 8*188], rax
    mov rax, [rsi + 8*189]
    adc rax, 0
    mov [rdi + 8*189], rax
    mov rax, [rsi + 8*190]
    adc rax, 0
    mov [rdi + 8*190], rax
    mov rax, [rsi + 8*191]
    adc rax, 0
    mov [rdi + 8*191], rax
    mov rax, [rsi + 8*192]
    adc rax, 0
    mov [rdi + 8*192], rax
    mov rax, [rsi + 8*193]
    adc rax, 0
    mov [rdi + 8*193], rax
    mov rax, [rsi + 8*194]
    adc rax, 0
    mov [rdi + 8*194], rax
    mov rax, [rsi + 8*195]
    adc rax, 0
    mov [rdi + 8*195], rax
    mov rax, [rsi + 8*196]
    adc rax, 0
    mov [rdi + 8*196], rax
    mov rax, [rsi + 8*197]
    adc rax, 0
    mov [rdi + 8*197], rax
    mov rax, [rsi + 8*198]
    adc rax, 0
    mov [rdi + 8*198], rax
    mov rax, [rsi + 8*199]
    adc rax, 0
    mov [rdi + 8*199], rax
    mov rax, [rsi + 8*200]
    adc rax, 0
    mov [rdi + 8*200], rax
    mov rax, [rsi + 8*201]
    adc rax, 0
    mov [rdi + 8*201], rax
    mov rax, [rsi + 8*202]
    adc rax, 0
    mov [rdi + 8*202], rax
    mov rax, [rsi + 8*203]
    adc rax, 0
    mov [rdi + 8*203], rax
    mov rax, [rsi + 8*204]
    adc rax, 0
    mov [rdi + 8*204], rax
    mov rax, [rsi + 8*205]
    adc rax, 0
    mov [rdi + 8*205], rax
    mov rax, [rsi + 8*206]
    adc rax, 0
    mov [rdi + 8*206], rax
    mov rax, [rsi + 8*207]
    adc rax, 0
    mov [rdi + 8*207], rax
    mov rax, [rsi + 8*208]
    adc rax, 0
    mov [rdi + 8*208], rax
    mov rax, [rsi + 8*209]
    adc rax, 0
    mov [rdi + 8*209], rax
    mov rax, [rsi + 8*210]
    adc rax, 0
    mov [rdi + 8*210], rax
    mov rax, [rsi + 8*211]
    adc rax, 0
    mov [rdi + 8*211], rax
    mov rax, [rsi + 8*212]
    adc rax, 0
    mov [rdi + 8*212], rax
    mov rax, [rsi + 8*213]
    adc rax, 0
    mov [rdi + 8*213], rax
    mov rax, [rsi + 8*214]
    adc rax, 0
    mov [rdi + 8*214], rax
    mov rax, [rsi + 8*215]
    adc rax, 0
    mov [rdi + 8*215], rax
    mov rax, [rsi + 8*216]
    adc rax, 0
    mov [rdi + 8*216], rax
    mov rax, [rsi + 8*217]
    adc rax, 0
    mov [rdi + 8*217], rax
    mov rax, [rsi + 8*218]
    adc rax, 0
    mov [rdi + 8*218], rax
    mov rax, [rsi + 8*219]
    adc rax, 0
    mov [rdi + 8*219], rax
    mov rax, [rsi + 8*220]
    adc rax, 0
    mov [rdi + 8*220], rax
    mov rax, [rsi + 8*221]
    adc rax, 0
    mov [rdi + 8*221], rax
    mov rax, [rsi + 8*222]
    adc rax, 0
    mov [rdi + 8*222], rax
    mov rax, [rsi + 8*223]
    adc rax, 0
    mov [rdi + 8*223], rax
    mov rax, [rsi + 8*224]
    adc rax, 0
    mov [rdi + 8*224], rax
    mov rax, [rsi + 8*225]
    adc rax, 0
    mov [rdi + 8*225], rax
    mov rax, [rsi + 8*226]
    adc rax, 0
    mov [rdi + 8*226], rax
    mov rax, [rsi + 8*227]
    adc rax, 0
    mov [rdi + 8*227], rax
    mov rax, [rsi + 8*228]
    adc rax, 0
    mov [rdi + 8*228], rax
    mov rax, [rsi + 8*229]
    adc rax, 0
    mov [rdi + 8*229], rax
    mov rax, [rsi + 8*230]
    adc rax, 0
    mov [rdi + 8*230], rax
    mov rax, [rsi + 8*231]
    adc rax, 0
    mov [rdi + 8*231], rax
    mov rax, [rsi + 8*232]
    adc rax, 0
    mov [rdi + 8*232], rax
    mov rax, [rsi + 8*233]
    adc rax, 0
    mov [rdi + 8*233], rax
    mov rax, [rsi + 8*234]
    adc rax, 0
    mov [rdi + 8*234], rax
    mov rax, [rsi + 8*235]
    adc rax, 0
    mov [rdi + 8*235], rax
    mov rax, [rsi + 8*236]
    adc rax, 0
    mov [rdi + 8*236], rax
    mov rax, [rsi + 8*237]
    adc rax, 0
    mov [rdi + 8*237], rax
    mov rax, [rsi + 8*238]
    adc rax, 0
    mov [rdi + 8*238], rax
    mov rax, [rsi + 8*239]
    adc rax, 0
    mov [rdi + 8*239], rax
    mov rax, [rsi + 8*240]
    adc rax, 0
    mov [rdi + 8*240], rax
    mov rax, [rsi + 8*241]
    adc rax, 0
    mov [rdi + 8*241], rax
    mov rax, [rsi + 8*242]
    adc rax, 0
    mov [rdi + 8*242], rax
    mov rax, [rsi + 8*243]
    adc rax, 0
    mov [rdi + 8*243], rax
    mov rax, [rsi + 8*244]
    adc rax, 0
    mov [rdi + 8*244], rax
    mov rax, [rsi + 8*245]
    adc rax, 0
    mov [rdi + 8*245], rax
    mov rax, [rsi + 8*246]
    adc rax, 0
    mov [rdi + 8*246], rax
    mov rax, [rsi + 8*247]
    adc rax, 0
    mov [rdi + 8*247], rax
    mov rax, [rsi + 8*248]
    adc rax, 0
    mov [rdi + 8*248], rax
    mov rax, [rsi + 8*249]
    adc rax, 0
    mov [rdi + 8*249], rax
    mov rax, [rsi + 8*250]
    adc rax, 0
    mov [rdi + 8*250], rax
    mov rax, [rsi + 8*251]
    adc rax, 0
    mov [rdi + 8*251], rax
    mov rax, [rsi + 8*252]
    adc rax, 0
    mov [rdi + 8*252], rax
    mov rax, [rsi + 8*253]
    adc rax, 0
    mov [rdi + 8*253], rax
    mov rax, [rsi + 8*254]
    adc rax, 0
    mov [rdi + 8*254], rax
.endm

.macro add_32x32
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 31
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 32*8], r8
.endm

.macro sub_d_66x64_woc
# odd intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rsi + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rsi + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rsi + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rsi + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rsi + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rsi + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rsi + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rsi + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rsi + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rsi + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rsi + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rsi + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rsi + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rsi + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rsi + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rsi + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rsi + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rsi + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rsi + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rsi + 31*8]
    mov [rdi + 31*8], rax
    mov rax, [rdi + 32*8]
    sbb rax, [rsi + 32*8]
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, [rsi + 33*8]
    mov [rdi + 33*8], rax
    mov rax, [rdi + 34*8]
    sbb rax, [rsi + 34*8]
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, [rsi + 35*8]
    mov [rdi + 35*8], rax
    mov rax, [rdi + 36*8]
    sbb rax, [rsi + 36*8]
    mov [rdi + 36*8], rax
    mov rax, [rdi + 37*8]
    sbb rax, [rsi + 37*8]
    mov [rdi + 37*8], rax
    mov rax, [rdi + 38*8]
    sbb rax, [rsi + 38*8]
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, [rsi + 39*8]
    mov [rdi + 39*8], rax
    mov rax, [rdi + 40*8]
    sbb rax, [rsi + 40*8]
    mov [rdi + 40*8], rax
    mov rax, [rdi + 41*8]
    sbb rax, [rsi + 41*8]
    mov [rdi + 41*8], rax
    mov rax, [rdi + 42*8]
    sbb rax, [rsi + 42*8]
    mov [rdi + 42*8], rax
    mov rax, [rdi + 43*8]
    sbb rax, [rsi + 43*8]
    mov [rdi + 43*8], rax
    mov rax, [rdi + 44*8]
    sbb rax, [rsi + 44*8]
    mov [rdi + 44*8], rax
    mov rax, [rdi + 45*8]
    sbb rax, [rsi + 45*8]
    mov [rdi + 45*8], rax
    mov rax, [rdi + 46*8]
    sbb rax, [rsi + 46*8]
    mov [rdi + 46*8], rax
    mov rax, [rdi + 47*8]
    sbb rax, [rsi + 47*8]
    mov [rdi + 47*8], rax
    mov rax, [rdi + 48*8]
    sbb rax, [rsi + 48*8]
    mov [rdi + 48*8], rax
    mov rax, [rdi + 49*8]
    sbb rax, [rsi + 49*8]
    mov [rdi + 49*8], rax
    mov rax, [rdi + 50*8]
    sbb rax, [rsi + 50*8]
    mov [rdi + 50*8], rax
    mov rax, [rdi + 51*8]
    sbb rax, [rsi + 51*8]
    mov [rdi + 51*8], rax
    mov rax, [rdi + 52*8]
    sbb rax, [rsi + 52*8]
    mov [rdi + 52*8], rax
    mov rax, [rdi + 53*8]
    sbb rax, [rsi + 53*8]
    mov [rdi + 53*8], rax
    mov rax, [rdi + 54*8]
    sbb rax, [rsi + 54*8]
    mov [rdi + 54*8], rax
    mov rax, [rdi + 55*8]
    sbb rax, [rsi + 55*8]
    mov [rdi + 55*8], rax
    mov rax, [rdi + 56*8]
    sbb rax, [rsi + 56*8]
    mov [rdi + 56*8], rax
    mov rax, [rdi + 57*8]
    sbb rax, [rsi + 57*8]
    mov [rdi + 57*8], rax
    mov rax, [rdi + 58*8]
    sbb rax, [rsi + 58*8]
    mov [rdi + 58*8], rax
    mov rax, [rdi + 59*8]
    sbb rax, [rsi + 59*8]
    mov [rdi + 59*8], rax
    mov rax, [rdi + 60*8]
    sbb rax, [rsi + 60*8]
    mov [rdi + 60*8], rax
    mov rax, [rdi + 61*8]
    sbb rax, [rsi + 61*8]
    mov [rdi + 61*8], rax
    mov rax, [rdi + 62*8]
    sbb rax, [rsi + 62*8]
    mov [rdi + 62*8], rax
    mov rax, [rdi + 63*8]
    sbb rax, [rsi + 63*8]
    mov [rdi + 63*8], rax
# outro
    mov rax, [rdi + 64*8]
    sbb rax, 0
    mov [rdi + 64*8], rax
    mov rax, [rdi + 65*8]
    sbb rax, 0
    mov [rdi + 65*8], rax
# 2nd subtraction ---------
# odd intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rdx + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rdx + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rdx + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rdx + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rdx + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rdx + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rdx + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rdx + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rdx + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rdx + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rdx + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rdx + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rdx + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rdx + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rdx + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rdx + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rdx + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rdx + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rdx + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rdx + 31*8]
    mov [rdi + 31*8], rax
    mov rax, [rdi + 32*8]
    sbb rax, [rdx + 32*8]
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, [rdx + 33*8]
    mov [rdi + 33*8], rax
    mov rax, [rdi + 34*8]
    sbb rax, [rdx + 34*8]
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, [rdx + 35*8]
    mov [rdi + 35*8], rax
    mov rax, [rdi + 36*8]
    sbb rax, [rdx + 36*8]
    mov [rdi + 36*8], rax
    mov rax, [rdi + 37*8]
    sbb rax, [rdx + 37*8]
    mov [rdi + 37*8], rax
    mov rax, [rdi + 38*8]
    sbb rax, [rdx + 38*8]
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, [rdx + 39*8]
    mov [rdi + 39*8], rax
    mov rax, [rdi + 40*8]
    sbb rax, [rdx + 40*8]
    mov [rdi + 40*8], rax
    mov rax, [rdi + 41*8]
    sbb rax, [rdx + 41*8]
    mov [rdi + 41*8], rax
    mov rax, [rdi + 42*8]
    sbb rax, [rdx + 42*8]
    mov [rdi + 42*8], rax
    mov rax, [rdi + 43*8]
    sbb rax, [rdx + 43*8]
    mov [rdi + 43*8], rax
    mov rax, [rdi + 44*8]
    sbb rax, [rdx + 44*8]
    mov [rdi + 44*8], rax
    mov rax, [rdi + 45*8]
    sbb rax, [rdx + 45*8]
    mov [rdi + 45*8], rax
    mov rax, [rdi + 46*8]
    sbb rax, [rdx + 46*8]
    mov [rdi + 46*8], rax
    mov rax, [rdi + 47*8]
    sbb rax, [rdx + 47*8]
    mov [rdi + 47*8], rax
    mov rax, [rdi + 48*8]
    sbb rax, [rdx + 48*8]
    mov [rdi + 48*8], rax
    mov rax, [rdi + 49*8]
    sbb rax, [rdx + 49*8]
    mov [rdi + 49*8], rax
    mov rax, [rdi + 50*8]
    sbb rax, [rdx + 50*8]
    mov [rdi + 50*8], rax
    mov rax, [rdi + 51*8]
    sbb rax, [rdx + 51*8]
    mov [rdi + 51*8], rax
    mov rax, [rdi + 52*8]
    sbb rax, [rdx + 52*8]
    mov [rdi + 52*8], rax
    mov rax, [rdi + 53*8]
    sbb rax, [rdx + 53*8]
    mov [rdi + 53*8], rax
    mov rax, [rdi + 54*8]
    sbb rax, [rdx + 54*8]
    mov [rdi + 54*8], rax
    mov rax, [rdi + 55*8]
    sbb rax, [rdx + 55*8]
    mov [rdi + 55*8], rax
    mov rax, [rdi + 56*8]
    sbb rax, [rdx + 56*8]
    mov [rdi + 56*8], rax
    mov rax, [rdi + 57*8]
    sbb rax, [rdx + 57*8]
    mov [rdi + 57*8], rax
    mov rax, [rdi + 58*8]
    sbb rax, [rdx + 58*8]
    mov [rdi + 58*8], rax
    mov rax, [rdi + 59*8]
    sbb rax, [rdx + 59*8]
    mov [rdi + 59*8], rax
    mov rax, [rdi + 60*8]
    sbb rax, [rdx + 60*8]
    mov [rdi + 60*8], rax
    mov rax, [rdi + 61*8]
    sbb rax, [rdx + 61*8]
    mov [rdi + 61*8], rax
    mov rax, [rdi + 62*8]
    sbb rax, [rdx + 62*8]
    mov [rdi + 62*8], rax
    mov rax, [rdi + 63*8]
    sbb rax, [rdx + 63*8]
    mov [rdi + 63*8], rax
# outro
    mov rax, [rdi + 64*8]
    sbb rax, 0
    mov [rdi + 64*8], rax
    mov rax, [rdi + 65*8]
    sbb rax, 0
    mov [rdi + 65*8], rax
.endm

.macro add_66x65
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 65
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*66]
    adc rax, 0
    mov [rdi + 8*66], rax
    mov rax, [rsi + 8*67]
    adc rax, 0
    mov [rdi + 8*67], rax
    mov rax, [rsi + 8*68]
    adc rax, 0
    mov [rdi + 8*68], rax
    mov rax, [rsi + 8*69]
    adc rax, 0
    mov [rdi + 8*69], rax
    mov rax, [rsi + 8*70]
    adc rax, 0
    mov [rdi + 8*70], rax
    mov rax, [rsi + 8*71]
    adc rax, 0
    mov [rdi + 8*71], rax
    mov rax, [rsi + 8*72]
    adc rax, 0
    mov [rdi + 8*72], rax
    mov rax, [rsi + 8*73]
    adc rax, 0
    mov [rdi + 8*73], rax
    mov rax, [rsi + 8*74]
    adc rax, 0
    mov [rdi + 8*74], rax
    mov rax, [rsi + 8*75]
    adc rax, 0
    mov [rdi + 8*75], rax
    mov rax, [rsi + 8*76]
    adc rax, 0
    mov [rdi + 8*76], rax
    mov rax, [rsi + 8*77]
    adc rax, 0
    mov [rdi + 8*77], rax
    mov rax, [rsi + 8*78]
    adc rax, 0
    mov [rdi + 8*78], rax
    mov rax, [rsi + 8*79]
    adc rax, 0
    mov [rdi + 8*79], rax
    mov rax, [rsi + 8*80]
    adc rax, 0
    mov [rdi + 8*80], rax
    mov rax, [rsi + 8*81]
    adc rax, 0
    mov [rdi + 8*81], rax
    mov rax, [rsi + 8*82]
    adc rax, 0
    mov [rdi + 8*82], rax
    mov rax, [rsi + 8*83]
    adc rax, 0
    mov [rdi + 8*83], rax
    mov rax, [rsi + 8*84]
    adc rax, 0
    mov [rdi + 8*84], rax
    mov rax, [rsi + 8*85]
    adc rax, 0
    mov [rdi + 8*85], rax
    mov rax, [rsi + 8*86]
    adc rax, 0
    mov [rdi + 8*86], rax
    mov rax, [rsi + 8*87]
    adc rax, 0
    mov [rdi + 8*87], rax
    mov rax, [rsi + 8*88]
    adc rax, 0
    mov [rdi + 8*88], rax
    mov rax, [rsi + 8*89]
    adc rax, 0
    mov [rdi + 8*89], rax
    mov rax, [rsi + 8*90]
    adc rax, 0
    mov [rdi + 8*90], rax
    mov rax, [rsi + 8*91]
    adc rax, 0
    mov [rdi + 8*91], rax
    mov rax, [rsi + 8*92]
    adc rax, 0
    mov [rdi + 8*92], rax
    mov rax, [rsi + 8*93]
    adc rax, 0
    mov [rdi + 8*93], rax
    mov rax, [rsi + 8*94]
    adc rax, 0
    mov [rdi + 8*94], rax
    mov rax, [rsi + 8*95]
    adc rax, 0
    mov [rdi + 8*95], rax
    mov rax, [rsi + 8*96]
    adc rax, 0
    mov [rdi + 8*96], rax
    mov rax, [rsi + 8*97]
    adc rax, 0
    mov [rdi + 8*97], rax
    mov rax, [rsi + 8*98]
    adc rax, 0
    mov [rdi + 8*98], rax
    mov rax, [rsi + 8*99]
    adc rax, 0
    mov [rdi + 8*99], rax
    mov rax, [rsi + 8*100]
    adc rax, 0
    mov [rdi + 8*100], rax
    mov rax, [rsi + 8*101]
    adc rax, 0
    mov [rdi + 8*101], rax
    mov rax, [rsi + 8*102]
    adc rax, 0
    mov [rdi + 8*102], rax
    mov rax, [rsi + 8*103]
    adc rax, 0
    mov [rdi + 8*103], rax
    mov rax, [rsi + 8*104]
    adc rax, 0
    mov [rdi + 8*104], rax
    mov rax, [rsi + 8*105]
    adc rax, 0
    mov [rdi + 8*105], rax
    mov rax, [rsi + 8*106]
    adc rax, 0
    mov [rdi + 8*106], rax
    mov rax, [rsi + 8*107]
    adc rax, 0
    mov [rdi + 8*107], rax
    mov rax, [rsi + 8*108]
    adc rax, 0
    mov [rdi + 8*108], rax
    mov rax, [rsi + 8*109]
    adc rax, 0
    mov [rdi + 8*109], rax
    mov rax, [rsi + 8*110]
    adc rax, 0
    mov [rdi + 8*110], rax
    mov rax, [rsi + 8*111]
    adc rax, 0
    mov [rdi + 8*111], rax
    mov rax, [rsi + 8*112]
    adc rax, 0
    mov [rdi + 8*112], rax
    mov rax, [rsi + 8*113]
    adc rax, 0
    mov [rdi + 8*113], rax
    mov rax, [rsi + 8*114]
    adc rax, 0
    mov [rdi + 8*114], rax
    mov rax, [rsi + 8*115]
    adc rax, 0
    mov [rdi + 8*115], rax
    mov rax, [rsi + 8*116]
    adc rax, 0
    mov [rdi + 8*116], rax
    mov rax, [rsi + 8*117]
    adc rax, 0
    mov [rdi + 8*117], rax
    mov rax, [rsi + 8*118]
    adc rax, 0
    mov [rdi + 8*118], rax
    mov rax, [rsi + 8*119]
    adc rax, 0
    mov [rdi + 8*119], rax
    mov rax, [rsi + 8*120]
    adc rax, 0
    mov [rdi + 8*120], rax
    mov rax, [rsi + 8*121]
    adc rax, 0
    mov [rdi + 8*121], rax
    mov rax, [rsi + 8*122]
    adc rax, 0
    mov [rdi + 8*122], rax
    mov rax, [rsi + 8*123]
    adc rax, 0
    mov [rdi + 8*123], rax
    mov rax, [rsi + 8*124]
    adc rax, 0
    mov [rdi + 8*124], rax
    mov rax, [rsi + 8*125]
    adc rax, 0
    mov [rdi + 8*125], rax
    mov rax, [rsi + 8*126]
    adc rax, 0
    mov [rdi + 8*126], rax
.endm

.macro add_16x16
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 15
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 16*8], r8
.endm

.macro sub_d_34x32_woc
# odd intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rsi + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rsi + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rsi + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rsi + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rsi + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rsi + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rsi + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rsi + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rsi + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rsi + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rsi + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rsi + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rsi + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rsi + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rsi + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rsi + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rsi + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rsi + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rsi + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rsi + 31*8]
    mov [rdi + 31*8], rax
# outro
    mov rax, [rdi + 32*8]
    sbb rax, 0
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, 0
    mov [rdi + 33*8], rax
# 2nd subtraction ---------
# odd intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rdx + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rdx + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rdx + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rdx + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rdx + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rdx + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rdx + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rdx + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rdx + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rdx + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rdx + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rdx + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rdx + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rdx + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rdx + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rdx + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rdx + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rdx + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rdx + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rdx + 31*8]
    mov [rdi + 31*8], rax
# outro
    mov rax, [rdi + 32*8]
    sbb rax, 0
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, 0
    mov [rdi + 33*8], rax
.endm

.macro add_34x33
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 33
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*34]
    adc rax, 0
    mov [rdi + 8*34], rax
    mov rax, [rsi + 8*35]
    adc rax, 0
    mov [rdi + 8*35], rax
    mov rax, [rsi + 8*36]
    adc rax, 0
    mov [rdi + 8*36], rax
    mov rax, [rsi + 8*37]
    adc rax, 0
    mov [rdi + 8*37], rax
    mov rax, [rsi + 8*38]
    adc rax, 0
    mov [rdi + 8*38], rax
    mov rax, [rsi + 8*39]
    adc rax, 0
    mov [rdi + 8*39], rax
    mov rax, [rsi + 8*40]
    adc rax, 0
    mov [rdi + 8*40], rax
    mov rax, [rsi + 8*41]
    adc rax, 0
    mov [rdi + 8*41], rax
    mov rax, [rsi + 8*42]
    adc rax, 0
    mov [rdi + 8*42], rax
    mov rax, [rsi + 8*43]
    adc rax, 0
    mov [rdi + 8*43], rax
    mov rax, [rsi + 8*44]
    adc rax, 0
    mov [rdi + 8*44], rax
    mov rax, [rsi + 8*45]
    adc rax, 0
    mov [rdi + 8*45], rax
    mov rax, [rsi + 8*46]
    adc rax, 0
    mov [rdi + 8*46], rax
    mov rax, [rsi + 8*47]
    adc rax, 0
    mov [rdi + 8*47], rax
    mov rax, [rsi + 8*48]
    adc rax, 0
    mov [rdi + 8*48], rax
    mov rax, [rsi + 8*49]
    adc rax, 0
    mov [rdi + 8*49], rax
    mov rax, [rsi + 8*50]
    adc rax, 0
    mov [rdi + 8*50], rax
    mov rax, [rsi + 8*51]
    adc rax, 0
    mov [rdi + 8*51], rax
    mov rax, [rsi + 8*52]
    adc rax, 0
    mov [rdi + 8*52], rax
    mov rax, [rsi + 8*53]
    adc rax, 0
    mov [rdi + 8*53], rax
    mov rax, [rsi + 8*54]
    adc rax, 0
    mov [rdi + 8*54], rax
    mov rax, [rsi + 8*55]
    adc rax, 0
    mov [rdi + 8*55], rax
    mov rax, [rsi + 8*56]
    adc rax, 0
    mov [rdi + 8*56], rax
    mov rax, [rsi + 8*57]
    adc rax, 0
    mov [rdi + 8*57], rax
    mov rax, [rsi + 8*58]
    adc rax, 0
    mov [rdi + 8*58], rax
    mov rax, [rsi + 8*59]
    adc rax, 0
    mov [rdi + 8*59], rax
    mov rax, [rsi + 8*60]
    adc rax, 0
    mov [rdi + 8*60], rax
    mov rax, [rsi + 8*61]
    adc rax, 0
    mov [rdi + 8*61], rax
    mov rax, [rsi + 8*62]
    adc rax, 0
    mov [rdi + 8*62], rax
.endm

.macro add_8x8
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 7
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 8*8], r8
.endm

.macro sub_d_18x16_woc
# odd intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rsi + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rsi + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rsi + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rsi + 15*8]
    mov [rdi + 15*8], rax
# outro
    mov rax, [rdi + 16*8]
    sbb rax, 0
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, 0
    mov [rdi + 17*8], rax
# 2nd subtraction ---------
# odd intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rdx + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rdx + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rdx + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rdx + 15*8]
    mov [rdi + 15*8], rax
# outro
    mov rax, [rdi + 16*8]
    sbb rax, 0
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, 0
    mov [rdi + 17*8], rax
.endm

.macro add_18x17
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 17
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*18]
    adc rax, 0
    mov [rdi + 8*18], rax
    mov rax, [rsi + 8*19]
    adc rax, 0
    mov [rdi + 8*19], rax
    mov rax, [rsi + 8*20]
    adc rax, 0
    mov [rdi + 8*20], rax
    mov rax, [rsi + 8*21]
    adc rax, 0
    mov [rdi + 8*21], rax
    mov rax, [rsi + 8*22]
    adc rax, 0
    mov [rdi + 8*22], rax
    mov rax, [rsi + 8*23]
    adc rax, 0
    mov [rdi + 8*23], rax
    mov rax, [rsi + 8*24]
    adc rax, 0
    mov [rdi + 8*24], rax
    mov rax, [rsi + 8*25]
    adc rax, 0
    mov [rdi + 8*25], rax
    mov rax, [rsi + 8*26]
    adc rax, 0
    mov [rdi + 8*26], rax
    mov rax, [rsi + 8*27]
    adc rax, 0
    mov [rdi + 8*27], rax
    mov rax, [rsi + 8*28]
    adc rax, 0
    mov [rdi + 8*28], rax
    mov rax, [rsi + 8*29]
    adc rax, 0
    mov [rdi + 8*29], rax
    mov rax, [rsi + 8*30]
    adc rax, 0
    mov [rdi + 8*30], rax
.endm

.macro mult_8x8
# push
    push rbx
    push rbp
    push rsi
    push r12
    push r13
    push r14
    push r15

# intro 
    mov rbp, rdx
    mov rdx, [rbp]
    mulx r14, rcx, [rsi + 0*8]
    mov [rdi + 0*8], rcx
    mulx r13, rax, [rsi + 1*8]
    add r14, rax
    mulx r12, rax, [rsi + 2*8]
    adc r13, rax
    mulx r11, rax, [rsi + 3*8]
    adc r12, rax
    mulx r10, rax, [rsi + 4*8]
    adc r11, rax
    mulx r9, rax, [rsi + 5*8]
    adc r10, rax
    mulx r8, rax, [rsi + 6*8]
    adc r9, rax
    mulx rcx, rax, [rsi + 7*8]
    adc r8, rax
    adc rcx, 0
# loop i = 1
    mov rdx, [rbp + 1*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r14, rax
    adox r13, rbx
    mov [rdi + 1*8], r14
    mov r14, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx rcx, rax
    adox r14, rbx
    adc r14, 0
# loop i = 2
    mov rdx, [rbp + 2*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r13, rax
    adox r12, rbx
    mov [rdi + 2*8], r13
    mov r13, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx rcx, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r14, rax
    adox r13, rbx
    adc r13, 0
# loop i = 3
    mov rdx, [rbp + 3*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r12, rax
    adox r11, rbx
    mov [rdi + 3*8], r12
    mov r12, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx rcx, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r13, rax
    adox r12, rbx
    adc r12, 0
# loop i = 4
    mov rdx, [rbp + 4*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r11, rax
    adox r10, rbx
    mov [rdi + 4*8], r11
    mov r11, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx rcx, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r12, rax
    adox r11, rbx
    adc r11, 0
# loop i = 5
    mov rdx, [rbp + 5*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r10, rax
    adox r9, rbx
    mov [rdi + 5*8], r10
    mov r10, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx rcx, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r11, rax
    adox r10, rbx
    adc r10, 0
# loop i = 6
    mov rdx, [rbp + 6*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r9, rax
    adox r8, rbx
    mov [rdi + 6*8], r9
    mov r9, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx rcx, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r10, rax
    adox r9, rbx
    adc r9, 0
# loop i = 7
    mov rdx, [rbp + 7*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r8, rax
    adox rcx, rbx
    mov [rdi + 7*8], r8
    mov r8, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx rcx, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r9, rax
    adox r8, rbx
    adc r8, 0
# outro
    mov [rdi + 8*8], rcx
    mov [rdi + 9*8], r14
    mov [rdi + 10*8], r13
    mov [rdi + 11*8], r12
    mov [rdi + 12*8], r11
    mov [rdi + 13*8], r10
    mov [rdi + 14*8], r9
    mov [rdi + 15*8], r8
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro mult_9x9
# push
    push rbx
    push rbp
    push rsi
    push r12
    push r13
    push r14
    push r15

# intro 
    mov rbp, rdx
    mov rdx, [rbp]
    mulx r15, rcx, [rsi + 0*8]
    mov [rdi + 0*8], rcx
    mulx r14, rax, [rsi + 1*8]
    add r15, rax
    mulx r13, rax, [rsi + 2*8]
    adc r14, rax
    mulx r12, rax, [rsi + 3*8]
    adc r13, rax
    mulx r11, rax, [rsi + 4*8]
    adc r12, rax
    mulx r10, rax, [rsi + 5*8]
    adc r11, rax
    mulx r9, rax, [rsi + 6*8]
    adc r10, rax
    mulx r8, rax, [rsi + 7*8]
    adc r9, rax
    mulx rcx, rax, [rsi + 8*8]
    adc r8, rax
    adc rcx, 0
# loop i = 1
    mov rdx, [rbp + 1*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r15, rax
    adox r14, rbx
    mov [rdi + 1*8], r15
    mov r15, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx rcx, rax
    adox r15, rbx
    adc r15, 0
# loop i = 2
    mov rdx, [rbp + 2*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r14, rax
    adox r13, rbx
    mov [rdi + 2*8], r14
    mov r14, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx rcx, rax
    adox r15, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx r15, rax
    adox r14, rbx
    adc r14, 0
# loop i = 3
    mov rdx, [rbp + 3*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r13, rax
    adox r12, rbx
    mov [rdi + 3*8], r13
    mov r13, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx rcx, rax
    adox r15, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r15, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx r14, rax
    adox r13, rbx
    adc r13, 0
# loop i = 4
    mov rdx, [rbp + 4*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r12, rax
    adox r11, rbx
    mov [rdi + 4*8], r12
    mov r12, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx rcx, rax
    adox r15, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r15, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx r13, rax
    adox r12, rbx
    adc r12, 0
# loop i = 5
    mov rdx, [rbp + 5*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r11, rax
    adox r10, rbx
    mov [rdi + 5*8], r11
    mov r11, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx rcx, rax
    adox r15, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r15, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx r12, rax
    adox r11, rbx
    adc r11, 0
# loop i = 6
    mov rdx, [rbp + 6*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r10, rax
    adox r9, rbx
    mov [rdi + 6*8], r10
    mov r10, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx rcx, rax
    adox r15, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r15, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx r11, rax
    adox r10, rbx
    adc r10, 0
# loop i = 7
    mov rdx, [rbp + 7*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r9, rax
    adox r8, rbx
    mov [rdi + 7*8], r9
    mov r9, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx rcx, rax
    adox r15, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r15, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx r10, rax
    adox r9, rbx
    adc r9, 0
# loop i = 8
    mov rdx, [rbp + 8*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r8, rax
    adox rcx, rbx
    mov [rdi + 8*8], r8
    mov r8, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx rcx, rax
    adox r15, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r15, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx r9, rax
    adox r8, rbx
    adc r8, 0
# outro
    mov [rdi + 9*8], rcx
    mov [rdi + 10*8], r15
    mov [rdi + 11*8], r14
    mov [rdi + 12*8], r13
    mov [rdi + 13*8], r12
    mov [rdi + 14*8], r11
    mov [rdi + 15*8], r10
    mov [rdi + 16*8], r9
    mov [rdi + 17*8], r8
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro mult_16x16
push    r14
push    r13
lea     r13, [rsi+64]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+64]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 288
mov     rdi, rsp
add_8x8
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+72]
add_8x8
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_8x8
lea     r12, [rbx+128]
mov     rdx, rsp
lea     rsi, [rsp+72]
lea     rdi, [rsp+144]
mult_9x9
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_8x8
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+144]
sub_d_18x16_woc
lea     rdi, [rbx+64]
lea     rdx, [rsp+144]
mov     rsi, rdi
add_18x17
add     rsp, 288
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro add_9x8
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 7
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*8]
    adc rax, 0
    mov [rdi + 8*8], rax
    adc r8, 0
    mov [rdi + 8*9], r8
.endm

.macro _sub_d_20x18_woc
# intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rsi + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rsi + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rsi + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rsi + 15*8]
    mov [rdi + 15*8], rax
# outro
    mov rax, [rdi + 16*8]
    sbb rax, 0
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, 0
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, 0
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, 0
    mov [rdi + 19*8], rax
# 2nd subtraction ---------
# intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rdx + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rdx + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rdx + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rdx + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rdx + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rdx + 17*8]
    mov [rdi + 17*8], rax
# outro
    mov rax, [rdi + 18*8]
    sbb rax, 0
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, 0
    mov [rdi + 19*8], rax
.endm

.macro add_19x18
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 19
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*20]
    adc rax, 0
    mov [rdi + 8*20], rax
    mov rax, [rsi + 8*21]
    adc rax, 0
    mov [rdi + 8*21], rax
    mov rax, [rsi + 8*22]
    adc rax, 0
    mov [rdi + 8*22], rax
    mov rax, [rsi + 8*23]
    adc rax, 0
    mov [rdi + 8*23], rax
    mov rax, [rsi + 8*24]
    adc rax, 0
    mov [rdi + 8*24], rax
    mov rax, [rsi + 8*25]
    adc rax, 0
    mov [rdi + 8*25], rax
    mov rax, [rsi + 8*26]
    adc rax, 0
    mov [rdi + 8*26], rax
    mov rax, [rsi + 8*27]
    adc rax, 0
    mov [rdi + 8*27], rax
    mov rax, [rsi + 8*28]
    adc rax, 0
    mov [rdi + 8*28], rax
    mov rax, [rsi + 8*29]
    adc rax, 0
    mov [rdi + 8*29], rax
    mov rax, [rsi + 8*30]
    adc rax, 0
    mov [rdi + 8*30], rax
    mov rax, [rsi + 8*31]
    adc rax, 0
    mov [rdi + 8*31], rax
    mov rax, [rsi + 8*32]
    adc rax, 0
    mov [rdi + 8*32], rax
.endm

.macro add_5x5
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 4
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 5*8], r8
.endm

.macro sub_d_12x10_woc
# odd intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
# outro
    mov rax, [rdi + 10*8]
    sbb rax, 0
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, 0
    mov [rdi + 11*8], rax
# 2nd subtraction ---------
# odd intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
# outro
    mov rax, [rdi + 10*8]
    sbb rax, 0
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, 0
    mov [rdi + 11*8], rax
.endm

.macro add_12x11
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 11
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*12]
    adc rax, 0
    mov [rdi + 8*12], rax
    mov rax, [rsi + 8*13]
    adc rax, 0
    mov [rdi + 8*13], rax
    mov rax, [rsi + 8*14]
    adc rax, 0
    mov [rdi + 8*14], rax
    mov rax, [rsi + 8*15]
    adc rax, 0
    mov [rdi + 8*15], rax
    mov rax, [rsi + 8*16]
    adc rax, 0
    mov [rdi + 8*16], rax
    mov rax, [rsi + 8*17]
    adc rax, 0
    mov [rdi + 8*17], rax
    mov rax, [rsi + 8*18]
    adc rax, 0
    mov [rdi + 8*18], rax
.endm

.macro mult_5x5
# push
    push rbx
    push rbp
    push rsi
    push r12
    push r13
    push r14
    push r15

# intro 
    mov rbp, rdx
    mov rdx, [rbp]
    mulx r11, rcx, [rsi + 0*8]
    mov [rdi + 0*8], rcx
    mulx r10, rax, [rsi + 1*8]
    add r11, rax
    mulx r9, rax, [rsi + 2*8]
    adc r10, rax
    mulx r8, rax, [rsi + 3*8]
    adc r9, rax
    mulx rcx, rax, [rsi + 4*8]
    adc r8, rax
    adc rcx, 0
# loop i = 1
    mov rdx, [rbp + 1*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r11, rax
    adox r10, rbx
    mov [rdi + 1*8], r11
    mov r11, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx rcx, rax
    adox r11, rbx
    adc r11, 0
# loop i = 2
    mov rdx, [rbp + 2*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r10, rax
    adox r9, rbx
    mov [rdi + 2*8], r10
    mov r10, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx rcx, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r11, rax
    adox r10, rbx
    adc r10, 0
# loop i = 3
    mov rdx, [rbp + 3*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r9, rax
    adox r8, rbx
    mov [rdi + 3*8], r9
    mov r9, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx rcx, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r10, rax
    adox r9, rbx
    adc r9, 0
# loop i = 4
    mov rdx, [rbp + 4*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r8, rax
    adox rcx, rbx
    mov [rdi + 4*8], r8
    mov r8, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx rcx, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r9, rax
    adox r8, rbx
    adc r8, 0
# outro
    mov [rdi + 5*8], rcx
    mov [rdi + 6*8], r11
    mov [rdi + 7*8], r10
    mov [rdi + 8*8], r9
    mov [rdi + 9*8], r8
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro mult_6x6
# push
    push rbx
    push rbp
    push rsi
    push r12
    push r13
    push r14
    push r15

# intro 
    mov rbp, rdx
    mov rdx, [rbp]
    mulx r12, rcx, [rsi + 0*8]
    mov [rdi + 0*8], rcx
    mulx r11, rax, [rsi + 1*8]
    add r12, rax
    mulx r10, rax, [rsi + 2*8]
    adc r11, rax
    mulx r9, rax, [rsi + 3*8]
    adc r10, rax
    mulx r8, rax, [rsi + 4*8]
    adc r9, rax
    mulx rcx, rax, [rsi + 5*8]
    adc r8, rax
    adc rcx, 0
# loop i = 1
    mov rdx, [rbp + 1*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r12, rax
    adox r11, rbx
    mov [rdi + 1*8], r12
    mov r12, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx rcx, rax
    adox r12, rbx
    adc r12, 0
# loop i = 2
    mov rdx, [rbp + 2*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r11, rax
    adox r10, rbx
    mov [rdi + 2*8], r11
    mov r11, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx rcx, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r12, rax
    adox r11, rbx
    adc r11, 0
# loop i = 3
    mov rdx, [rbp + 3*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r10, rax
    adox r9, rbx
    mov [rdi + 3*8], r10
    mov r10, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx rcx, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r11, rax
    adox r10, rbx
    adc r10, 0
# loop i = 4
    mov rdx, [rbp + 4*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r9, rax
    adox r8, rbx
    mov [rdi + 4*8], r9
    mov r9, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx rcx, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r10, rax
    adox r9, rbx
    adc r9, 0
# loop i = 5
    mov rdx, [rbp + 5*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r8, rax
    adox rcx, rbx
    mov [rdi + 5*8], r8
    mov r8, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx rcx, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r9, rax
    adox r8, rbx
    adc r8, 0
# outro
    mov [rdi + 6*8], rcx
    mov [rdi + 7*8], r12
    mov [rdi + 8*8], r11
    mov [rdi + 9*8], r10
    mov [rdi + 10*8], r9
    mov [rdi + 11*8], r8
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro mult_7x7
# push
    push rbx
    push rbp
    push rsi
    push r12
    push r13
    push r14
    push r15

# intro 
    mov rbp, rdx
    mov rdx, [rbp]
    mulx r13, rcx, [rsi + 0*8]
    mov [rdi + 0*8], rcx
    mulx r12, rax, [rsi + 1*8]
    add r13, rax
    mulx r11, rax, [rsi + 2*8]
    adc r12, rax
    mulx r10, rax, [rsi + 3*8]
    adc r11, rax
    mulx r9, rax, [rsi + 4*8]
    adc r10, rax
    mulx r8, rax, [rsi + 5*8]
    adc r9, rax
    mulx rcx, rax, [rsi + 6*8]
    adc r8, rax
    adc rcx, 0
# loop i = 1
    mov rdx, [rbp + 1*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r13, rax
    adox r12, rbx
    mov [rdi + 1*8], r13
    mov r13, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx rcx, rax
    adox r13, rbx
    adc r13, 0
# loop i = 2
    mov rdx, [rbp + 2*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r12, rax
    adox r11, rbx
    mov [rdi + 2*8], r12
    mov r12, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx rcx, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r13, rax
    adox r12, rbx
    adc r12, 0
# loop i = 3
    mov rdx, [rbp + 3*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r11, rax
    adox r10, rbx
    mov [rdi + 3*8], r11
    mov r11, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx rcx, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r12, rax
    adox r11, rbx
    adc r11, 0
# loop i = 4
    mov rdx, [rbp + 4*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r10, rax
    adox r9, rbx
    mov [rdi + 4*8], r10
    mov r10, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx rcx, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r11, rax
    adox r10, rbx
    adc r10, 0
# loop i = 5
    mov rdx, [rbp + 5*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r9, rax
    adox r8, rbx
    mov [rdi + 5*8], r9
    mov r9, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx rcx, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r10, rax
    adox r9, rbx
    adc r9, 0
# loop i = 6
    mov rdx, [rbp + 6*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r8, rax
    adox rcx, rbx
    mov [rdi + 6*8], r8
    mov r8, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx rcx, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r9, rax
    adox r8, rbx
    adc r8, 0
# outro
    mov [rdi + 7*8], rcx
    mov [rdi + 8*8], r13
    mov [rdi + 9*8], r12
    mov [rdi + 10*8], r11
    mov [rdi + 11*8], r10
    mov [rdi + 12*8], r9
    mov [rdi + 13*8], r8
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro mult_10x10
push    r14
push    r13
lea     r13, [rsi+40]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+40]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 192
mov     rdi, rsp
add_5x5
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+48]
add_5x5
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_5x5
lea     r12, [rbx+80]
mov     rdx, rsp
lea     rsi, [rsp+48]
lea     rdi, [rsp+96]
mult_6x6
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_5x5
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+96]
sub_d_12x10_woc
lea     rdi, [rbx+40]
lea     rdx, [rsp+96]
mov     rsi, rdi
add_12x11
add     rsp, 192
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_17x17
push    r14
push    r13
lea     r13, [rsi+64]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+64]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 320
mov     rdi, rsp
add_9x8
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+80]
add_9x8
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+128]
mult_8x8
mov     rdx, rsp
lea     rsi, [rsp+80]
lea     rdi, [rsp+160]
mult_10x10
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
mult_9x9
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+160]
_sub_d_20x18_woc
lea     rdi, [rbx+64]
lea     rdx, [rsp+160]
mov     rsi, rdi
add_19x18
add     rsp, 320
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_32x32
push    r14
push    r13
lea     r13, [rsi+128]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+128]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 544
mov     rdi, rsp
add_16x16
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+136]
add_16x16
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_16x16
lea     r12, [rbx+256]
mov     rdx, rsp
lea     rsi, [rsp+136]
lea     rdi, [rsp+272]
mult_17x17
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_16x16
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+272]
sub_d_34x32_woc
lea     rdi, [rbx+128]
lea     rdx, [rsp+272]
mov     rsi, rdi
add_34x33
add     rsp, 544
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro add_17x16
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 15
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*16]
    adc rax, 0
    mov [rdi + 8*16], rax
    adc r8, 0
    mov [rdi + 8*17], r8
.endm

.macro _sub_d_36x34_woc
# intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rsi + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rsi + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rsi + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rsi + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rsi + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rsi + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rsi + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rsi + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rsi + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rsi + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rsi + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rsi + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rsi + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rsi + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rsi + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rsi + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rsi + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rsi + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rsi + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rsi + 31*8]
    mov [rdi + 31*8], rax
# outro
    mov rax, [rdi + 32*8]
    sbb rax, 0
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, 0
    mov [rdi + 33*8], rax
    mov rax, [rdi + 34*8]
    sbb rax, 0
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, 0
    mov [rdi + 35*8], rax
# 2nd subtraction ---------
# intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rdx + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rdx + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rdx + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rdx + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rdx + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rdx + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rdx + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rdx + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rdx + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rdx + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rdx + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rdx + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rdx + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rdx + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rdx + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rdx + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rdx + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rdx + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rdx + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rdx + 31*8]
    mov [rdi + 31*8], rax
    mov rax, [rdi + 32*8]
    sbb rax, [rdx + 32*8]
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, [rdx + 33*8]
    mov [rdi + 33*8], rax
# outro
    mov rax, [rdi + 34*8]
    sbb rax, 0
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, 0
    mov [rdi + 35*8], rax
.endm

.macro add_35x34
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 35
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*36]
    adc rax, 0
    mov [rdi + 8*36], rax
    mov rax, [rsi + 8*37]
    adc rax, 0
    mov [rdi + 8*37], rax
    mov rax, [rsi + 8*38]
    adc rax, 0
    mov [rdi + 8*38], rax
    mov rax, [rsi + 8*39]
    adc rax, 0
    mov [rdi + 8*39], rax
    mov rax, [rsi + 8*40]
    adc rax, 0
    mov [rdi + 8*40], rax
    mov rax, [rsi + 8*41]
    adc rax, 0
    mov [rdi + 8*41], rax
    mov rax, [rsi + 8*42]
    adc rax, 0
    mov [rdi + 8*42], rax
    mov rax, [rsi + 8*43]
    adc rax, 0
    mov [rdi + 8*43], rax
    mov rax, [rsi + 8*44]
    adc rax, 0
    mov [rdi + 8*44], rax
    mov rax, [rsi + 8*45]
    adc rax, 0
    mov [rdi + 8*45], rax
    mov rax, [rsi + 8*46]
    adc rax, 0
    mov [rdi + 8*46], rax
    mov rax, [rsi + 8*47]
    adc rax, 0
    mov [rdi + 8*47], rax
    mov rax, [rsi + 8*48]
    adc rax, 0
    mov [rdi + 8*48], rax
    mov rax, [rsi + 8*49]
    adc rax, 0
    mov [rdi + 8*49], rax
    mov rax, [rsi + 8*50]
    adc rax, 0
    mov [rdi + 8*50], rax
    mov rax, [rsi + 8*51]
    adc rax, 0
    mov [rdi + 8*51], rax
    mov rax, [rsi + 8*52]
    adc rax, 0
    mov [rdi + 8*52], rax
    mov rax, [rsi + 8*53]
    adc rax, 0
    mov [rdi + 8*53], rax
    mov rax, [rsi + 8*54]
    adc rax, 0
    mov [rdi + 8*54], rax
    mov rax, [rsi + 8*55]
    adc rax, 0
    mov [rdi + 8*55], rax
    mov rax, [rsi + 8*56]
    adc rax, 0
    mov [rdi + 8*56], rax
    mov rax, [rsi + 8*57]
    adc rax, 0
    mov [rdi + 8*57], rax
    mov rax, [rsi + 8*58]
    adc rax, 0
    mov [rdi + 8*58], rax
    mov rax, [rsi + 8*59]
    adc rax, 0
    mov [rdi + 8*59], rax
    mov rax, [rsi + 8*60]
    adc rax, 0
    mov [rdi + 8*60], rax
    mov rax, [rsi + 8*61]
    adc rax, 0
    mov [rdi + 8*61], rax
    mov rax, [rsi + 8*62]
    adc rax, 0
    mov [rdi + 8*62], rax
    mov rax, [rsi + 8*63]
    adc rax, 0
    mov [rdi + 8*63], rax
    mov rax, [rsi + 8*64]
    adc rax, 0
    mov [rdi + 8*64], rax
.endm

.macro add_9x9
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 8
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 9*8], r8
.endm

.macro sub_d_20x18_woc
# odd intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rsi + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rsi + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rsi + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rsi + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rsi + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rsi + 17*8]
    mov [rdi + 17*8], rax
# outro
    mov rax, [rdi + 18*8]
    sbb rax, 0
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, 0
    mov [rdi + 19*8], rax
# 2nd subtraction ---------
# odd intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rdx + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rdx + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rdx + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rdx + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rdx + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rdx + 17*8]
    mov [rdi + 17*8], rax
# outro
    mov rax, [rdi + 18*8]
    sbb rax, 0
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, 0
    mov [rdi + 19*8], rax
.endm

.macro add_20x19
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 19
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*20]
    adc rax, 0
    mov [rdi + 8*20], rax
    mov rax, [rsi + 8*21]
    adc rax, 0
    mov [rdi + 8*21], rax
    mov rax, [rsi + 8*22]
    adc rax, 0
    mov [rdi + 8*22], rax
    mov rax, [rsi + 8*23]
    adc rax, 0
    mov [rdi + 8*23], rax
    mov rax, [rsi + 8*24]
    adc rax, 0
    mov [rdi + 8*24], rax
    mov rax, [rsi + 8*25]
    adc rax, 0
    mov [rdi + 8*25], rax
    mov rax, [rsi + 8*26]
    adc rax, 0
    mov [rdi + 8*26], rax
    mov rax, [rsi + 8*27]
    adc rax, 0
    mov [rdi + 8*27], rax
    mov rax, [rsi + 8*28]
    adc rax, 0
    mov [rdi + 8*28], rax
    mov rax, [rsi + 8*29]
    adc rax, 0
    mov [rdi + 8*29], rax
    mov rax, [rsi + 8*30]
    adc rax, 0
    mov [rdi + 8*30], rax
    mov rax, [rsi + 8*31]
    adc rax, 0
    mov [rdi + 8*31], rax
    mov rax, [rsi + 8*32]
    adc rax, 0
    mov [rdi + 8*32], rax
    mov rax, [rsi + 8*33]
    adc rax, 0
    mov [rdi + 8*33], rax
    mov rax, [rsi + 8*34]
    adc rax, 0
    mov [rdi + 8*34], rax
.endm

.macro mult_18x18
push    r14
push    r13
lea     r13, [rsi+72]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+72]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 320
mov     rdi, rsp
add_9x9
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+80]
add_9x9
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_9x9
lea     r12, [rbx+144]
mov     rdx, rsp
lea     rsi, [rsp+80]
lea     rdi, [rsp+160]
mult_10x10
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_9x9
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+160]
sub_d_20x18_woc
lea     rdi, [rbx+72]
lea     rdx, [rsp+160]
mov     rsi, rdi
add_20x19
add     rsp, 320
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_33x33
push    r14
push    r13
lea     r13, [rsi+128]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+128]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 576
mov     rdi, rsp
add_17x16
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+144]
add_17x16
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+256]
mult_16x16
mov     rdx, rsp
lea     rsi, [rsp+144]
lea     rdi, [rsp+288]
mult_18x18
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
mult_17x17
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+288]
_sub_d_36x34_woc
lea     rdi, [rbx+128]
lea     rdx, [rsp+288]
mov     rsi, rdi
add_35x34
add     rsp, 576
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_64x64
push    r14
push    r13
lea     r13, [rsi+256]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+256]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 1056
mov     rdi, rsp
add_32x32
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+264]
add_32x32
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_32x32
lea     r12, [rbx+512]
mov     rdx, rsp
lea     rsi, [rsp+264]
lea     rdi, [rsp+528]
mult_33x33
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_32x32
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+528]
sub_d_66x64_woc
lea     rdi, [rbx+256]
lea     rdx, [rsp+528]
mov     rsi, rdi
add_66x65
add     rsp, 1056
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro add_33x32
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 31
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*32]
    adc rax, 0
    mov [rdi + 8*32], rax
    adc r8, 0
    mov [rdi + 8*33], r8
.endm

.macro _sub_d_68x66_woc
# intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rsi + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rsi + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rsi + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rsi + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rsi + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rsi + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rsi + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rsi + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rsi + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rsi + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rsi + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rsi + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rsi + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rsi + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rsi + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rsi + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rsi + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rsi + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rsi + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rsi + 31*8]
    mov [rdi + 31*8], rax
    mov rax, [rdi + 32*8]
    sbb rax, [rsi + 32*8]
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, [rsi + 33*8]
    mov [rdi + 33*8], rax
    mov rax, [rdi + 34*8]
    sbb rax, [rsi + 34*8]
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, [rsi + 35*8]
    mov [rdi + 35*8], rax
    mov rax, [rdi + 36*8]
    sbb rax, [rsi + 36*8]
    mov [rdi + 36*8], rax
    mov rax, [rdi + 37*8]
    sbb rax, [rsi + 37*8]
    mov [rdi + 37*8], rax
    mov rax, [rdi + 38*8]
    sbb rax, [rsi + 38*8]
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, [rsi + 39*8]
    mov [rdi + 39*8], rax
    mov rax, [rdi + 40*8]
    sbb rax, [rsi + 40*8]
    mov [rdi + 40*8], rax
    mov rax, [rdi + 41*8]
    sbb rax, [rsi + 41*8]
    mov [rdi + 41*8], rax
    mov rax, [rdi + 42*8]
    sbb rax, [rsi + 42*8]
    mov [rdi + 42*8], rax
    mov rax, [rdi + 43*8]
    sbb rax, [rsi + 43*8]
    mov [rdi + 43*8], rax
    mov rax, [rdi + 44*8]
    sbb rax, [rsi + 44*8]
    mov [rdi + 44*8], rax
    mov rax, [rdi + 45*8]
    sbb rax, [rsi + 45*8]
    mov [rdi + 45*8], rax
    mov rax, [rdi + 46*8]
    sbb rax, [rsi + 46*8]
    mov [rdi + 46*8], rax
    mov rax, [rdi + 47*8]
    sbb rax, [rsi + 47*8]
    mov [rdi + 47*8], rax
    mov rax, [rdi + 48*8]
    sbb rax, [rsi + 48*8]
    mov [rdi + 48*8], rax
    mov rax, [rdi + 49*8]
    sbb rax, [rsi + 49*8]
    mov [rdi + 49*8], rax
    mov rax, [rdi + 50*8]
    sbb rax, [rsi + 50*8]
    mov [rdi + 50*8], rax
    mov rax, [rdi + 51*8]
    sbb rax, [rsi + 51*8]
    mov [rdi + 51*8], rax
    mov rax, [rdi + 52*8]
    sbb rax, [rsi + 52*8]
    mov [rdi + 52*8], rax
    mov rax, [rdi + 53*8]
    sbb rax, [rsi + 53*8]
    mov [rdi + 53*8], rax
    mov rax, [rdi + 54*8]
    sbb rax, [rsi + 54*8]
    mov [rdi + 54*8], rax
    mov rax, [rdi + 55*8]
    sbb rax, [rsi + 55*8]
    mov [rdi + 55*8], rax
    mov rax, [rdi + 56*8]
    sbb rax, [rsi + 56*8]
    mov [rdi + 56*8], rax
    mov rax, [rdi + 57*8]
    sbb rax, [rsi + 57*8]
    mov [rdi + 57*8], rax
    mov rax, [rdi + 58*8]
    sbb rax, [rsi + 58*8]
    mov [rdi + 58*8], rax
    mov rax, [rdi + 59*8]
    sbb rax, [rsi + 59*8]
    mov [rdi + 59*8], rax
    mov rax, [rdi + 60*8]
    sbb rax, [rsi + 60*8]
    mov [rdi + 60*8], rax
    mov rax, [rdi + 61*8]
    sbb rax, [rsi + 61*8]
    mov [rdi + 61*8], rax
    mov rax, [rdi + 62*8]
    sbb rax, [rsi + 62*8]
    mov [rdi + 62*8], rax
    mov rax, [rdi + 63*8]
    sbb rax, [rsi + 63*8]
    mov [rdi + 63*8], rax
# outro
    mov rax, [rdi + 64*8]
    sbb rax, 0
    mov [rdi + 64*8], rax
    mov rax, [rdi + 65*8]
    sbb rax, 0
    mov [rdi + 65*8], rax
    mov rax, [rdi + 66*8]
    sbb rax, 0
    mov [rdi + 66*8], rax
    mov rax, [rdi + 67*8]
    sbb rax, 0
    mov [rdi + 67*8], rax
# 2nd subtraction ---------
# intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rdx + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rdx + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rdx + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rdx + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rdx + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rdx + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rdx + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rdx + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rdx + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rdx + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rdx + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rdx + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rdx + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rdx + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rdx + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rdx + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rdx + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rdx + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rdx + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rdx + 31*8]
    mov [rdi + 31*8], rax
    mov rax, [rdi + 32*8]
    sbb rax, [rdx + 32*8]
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, [rdx + 33*8]
    mov [rdi + 33*8], rax
    mov rax, [rdi + 34*8]
    sbb rax, [rdx + 34*8]
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, [rdx + 35*8]
    mov [rdi + 35*8], rax
    mov rax, [rdi + 36*8]
    sbb rax, [rdx + 36*8]
    mov [rdi + 36*8], rax
    mov rax, [rdi + 37*8]
    sbb rax, [rdx + 37*8]
    mov [rdi + 37*8], rax
    mov rax, [rdi + 38*8]
    sbb rax, [rdx + 38*8]
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, [rdx + 39*8]
    mov [rdi + 39*8], rax
    mov rax, [rdi + 40*8]
    sbb rax, [rdx + 40*8]
    mov [rdi + 40*8], rax
    mov rax, [rdi + 41*8]
    sbb rax, [rdx + 41*8]
    mov [rdi + 41*8], rax
    mov rax, [rdi + 42*8]
    sbb rax, [rdx + 42*8]
    mov [rdi + 42*8], rax
    mov rax, [rdi + 43*8]
    sbb rax, [rdx + 43*8]
    mov [rdi + 43*8], rax
    mov rax, [rdi + 44*8]
    sbb rax, [rdx + 44*8]
    mov [rdi + 44*8], rax
    mov rax, [rdi + 45*8]
    sbb rax, [rdx + 45*8]
    mov [rdi + 45*8], rax
    mov rax, [rdi + 46*8]
    sbb rax, [rdx + 46*8]
    mov [rdi + 46*8], rax
    mov rax, [rdi + 47*8]
    sbb rax, [rdx + 47*8]
    mov [rdi + 47*8], rax
    mov rax, [rdi + 48*8]
    sbb rax, [rdx + 48*8]
    mov [rdi + 48*8], rax
    mov rax, [rdi + 49*8]
    sbb rax, [rdx + 49*8]
    mov [rdi + 49*8], rax
    mov rax, [rdi + 50*8]
    sbb rax, [rdx + 50*8]
    mov [rdi + 50*8], rax
    mov rax, [rdi + 51*8]
    sbb rax, [rdx + 51*8]
    mov [rdi + 51*8], rax
    mov rax, [rdi + 52*8]
    sbb rax, [rdx + 52*8]
    mov [rdi + 52*8], rax
    mov rax, [rdi + 53*8]
    sbb rax, [rdx + 53*8]
    mov [rdi + 53*8], rax
    mov rax, [rdi + 54*8]
    sbb rax, [rdx + 54*8]
    mov [rdi + 54*8], rax
    mov rax, [rdi + 55*8]
    sbb rax, [rdx + 55*8]
    mov [rdi + 55*8], rax
    mov rax, [rdi + 56*8]
    sbb rax, [rdx + 56*8]
    mov [rdi + 56*8], rax
    mov rax, [rdi + 57*8]
    sbb rax, [rdx + 57*8]
    mov [rdi + 57*8], rax
    mov rax, [rdi + 58*8]
    sbb rax, [rdx + 58*8]
    mov [rdi + 58*8], rax
    mov rax, [rdi + 59*8]
    sbb rax, [rdx + 59*8]
    mov [rdi + 59*8], rax
    mov rax, [rdi + 60*8]
    sbb rax, [rdx + 60*8]
    mov [rdi + 60*8], rax
    mov rax, [rdi + 61*8]
    sbb rax, [rdx + 61*8]
    mov [rdi + 61*8], rax
    mov rax, [rdi + 62*8]
    sbb rax, [rdx + 62*8]
    mov [rdi + 62*8], rax
    mov rax, [rdi + 63*8]
    sbb rax, [rdx + 63*8]
    mov [rdi + 63*8], rax
    mov rax, [rdi + 64*8]
    sbb rax, [rdx + 64*8]
    mov [rdi + 64*8], rax
    mov rax, [rdi + 65*8]
    sbb rax, [rdx + 65*8]
    mov [rdi + 65*8], rax
# outro
    mov rax, [rdi + 66*8]
    sbb rax, 0
    mov [rdi + 66*8], rax
    mov rax, [rdi + 67*8]
    sbb rax, 0
    mov [rdi + 67*8], rax
.endm

.macro add_67x66
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 67
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*68]
    adc rax, 0
    mov [rdi + 8*68], rax
    mov rax, [rsi + 8*69]
    adc rax, 0
    mov [rdi + 8*69], rax
    mov rax, [rsi + 8*70]
    adc rax, 0
    mov [rdi + 8*70], rax
    mov rax, [rsi + 8*71]
    adc rax, 0
    mov [rdi + 8*71], rax
    mov rax, [rsi + 8*72]
    adc rax, 0
    mov [rdi + 8*72], rax
    mov rax, [rsi + 8*73]
    adc rax, 0
    mov [rdi + 8*73], rax
    mov rax, [rsi + 8*74]
    adc rax, 0
    mov [rdi + 8*74], rax
    mov rax, [rsi + 8*75]
    adc rax, 0
    mov [rdi + 8*75], rax
    mov rax, [rsi + 8*76]
    adc rax, 0
    mov [rdi + 8*76], rax
    mov rax, [rsi + 8*77]
    adc rax, 0
    mov [rdi + 8*77], rax
    mov rax, [rsi + 8*78]
    adc rax, 0
    mov [rdi + 8*78], rax
    mov rax, [rsi + 8*79]
    adc rax, 0
    mov [rdi + 8*79], rax
    mov rax, [rsi + 8*80]
    adc rax, 0
    mov [rdi + 8*80], rax
    mov rax, [rsi + 8*81]
    adc rax, 0
    mov [rdi + 8*81], rax
    mov rax, [rsi + 8*82]
    adc rax, 0
    mov [rdi + 8*82], rax
    mov rax, [rsi + 8*83]
    adc rax, 0
    mov [rdi + 8*83], rax
    mov rax, [rsi + 8*84]
    adc rax, 0
    mov [rdi + 8*84], rax
    mov rax, [rsi + 8*85]
    adc rax, 0
    mov [rdi + 8*85], rax
    mov rax, [rsi + 8*86]
    adc rax, 0
    mov [rdi + 8*86], rax
    mov rax, [rsi + 8*87]
    adc rax, 0
    mov [rdi + 8*87], rax
    mov rax, [rsi + 8*88]
    adc rax, 0
    mov [rdi + 8*88], rax
    mov rax, [rsi + 8*89]
    adc rax, 0
    mov [rdi + 8*89], rax
    mov rax, [rsi + 8*90]
    adc rax, 0
    mov [rdi + 8*90], rax
    mov rax, [rsi + 8*91]
    adc rax, 0
    mov [rdi + 8*91], rax
    mov rax, [rsi + 8*92]
    adc rax, 0
    mov [rdi + 8*92], rax
    mov rax, [rsi + 8*93]
    adc rax, 0
    mov [rdi + 8*93], rax
    mov rax, [rsi + 8*94]
    adc rax, 0
    mov [rdi + 8*94], rax
    mov rax, [rsi + 8*95]
    adc rax, 0
    mov [rdi + 8*95], rax
    mov rax, [rsi + 8*96]
    adc rax, 0
    mov [rdi + 8*96], rax
    mov rax, [rsi + 8*97]
    adc rax, 0
    mov [rdi + 8*97], rax
    mov rax, [rsi + 8*98]
    adc rax, 0
    mov [rdi + 8*98], rax
    mov rax, [rsi + 8*99]
    adc rax, 0
    mov [rdi + 8*99], rax
    mov rax, [rsi + 8*100]
    adc rax, 0
    mov [rdi + 8*100], rax
    mov rax, [rsi + 8*101]
    adc rax, 0
    mov [rdi + 8*101], rax
    mov rax, [rsi + 8*102]
    adc rax, 0
    mov [rdi + 8*102], rax
    mov rax, [rsi + 8*103]
    adc rax, 0
    mov [rdi + 8*103], rax
    mov rax, [rsi + 8*104]
    adc rax, 0
    mov [rdi + 8*104], rax
    mov rax, [rsi + 8*105]
    adc rax, 0
    mov [rdi + 8*105], rax
    mov rax, [rsi + 8*106]
    adc rax, 0
    mov [rdi + 8*106], rax
    mov rax, [rsi + 8*107]
    adc rax, 0
    mov [rdi + 8*107], rax
    mov rax, [rsi + 8*108]
    adc rax, 0
    mov [rdi + 8*108], rax
    mov rax, [rsi + 8*109]
    adc rax, 0
    mov [rdi + 8*109], rax
    mov rax, [rsi + 8*110]
    adc rax, 0
    mov [rdi + 8*110], rax
    mov rax, [rsi + 8*111]
    adc rax, 0
    mov [rdi + 8*111], rax
    mov rax, [rsi + 8*112]
    adc rax, 0
    mov [rdi + 8*112], rax
    mov rax, [rsi + 8*113]
    adc rax, 0
    mov [rdi + 8*113], rax
    mov rax, [rsi + 8*114]
    adc rax, 0
    mov [rdi + 8*114], rax
    mov rax, [rsi + 8*115]
    adc rax, 0
    mov [rdi + 8*115], rax
    mov rax, [rsi + 8*116]
    adc rax, 0
    mov [rdi + 8*116], rax
    mov rax, [rsi + 8*117]
    adc rax, 0
    mov [rdi + 8*117], rax
    mov rax, [rsi + 8*118]
    adc rax, 0
    mov [rdi + 8*118], rax
    mov rax, [rsi + 8*119]
    adc rax, 0
    mov [rdi + 8*119], rax
    mov rax, [rsi + 8*120]
    adc rax, 0
    mov [rdi + 8*120], rax
    mov rax, [rsi + 8*121]
    adc rax, 0
    mov [rdi + 8*121], rax
    mov rax, [rsi + 8*122]
    adc rax, 0
    mov [rdi + 8*122], rax
    mov rax, [rsi + 8*123]
    adc rax, 0
    mov [rdi + 8*123], rax
    mov rax, [rsi + 8*124]
    adc rax, 0
    mov [rdi + 8*124], rax
    mov rax, [rsi + 8*125]
    adc rax, 0
    mov [rdi + 8*125], rax
    mov rax, [rsi + 8*126]
    adc rax, 0
    mov [rdi + 8*126], rax
    mov rax, [rsi + 8*127]
    adc rax, 0
    mov [rdi + 8*127], rax
    mov rax, [rsi + 8*128]
    adc rax, 0
    mov [rdi + 8*128], rax
.endm

.macro add_17x17
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 16
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 17*8], r8
.endm

.macro sub_d_36x34_woc
# odd intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rsi + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rsi + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rsi + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rsi + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rsi + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rsi + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rsi + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rsi + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rsi + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rsi + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rsi + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rsi + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rsi + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rsi + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rsi + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rsi + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rsi + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rsi + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rsi + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rsi + 31*8]
    mov [rdi + 31*8], rax
    mov rax, [rdi + 32*8]
    sbb rax, [rsi + 32*8]
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, [rsi + 33*8]
    mov [rdi + 33*8], rax
# outro
    mov rax, [rdi + 34*8]
    sbb rax, 0
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, 0
    mov [rdi + 35*8], rax
# 2nd subtraction ---------
# odd intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rdx + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rdx + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rdx + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rdx + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rdx + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rdx + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rdx + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rdx + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rdx + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rdx + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rdx + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rdx + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rdx + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rdx + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rdx + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rdx + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rdx + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rdx + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rdx + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rdx + 31*8]
    mov [rdi + 31*8], rax
    mov rax, [rdi + 32*8]
    sbb rax, [rdx + 32*8]
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, [rdx + 33*8]
    mov [rdi + 33*8], rax
# outro
    mov rax, [rdi + 34*8]
    sbb rax, 0
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, 0
    mov [rdi + 35*8], rax
.endm

.macro add_36x35
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 35
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*36]
    adc rax, 0
    mov [rdi + 8*36], rax
    mov rax, [rsi + 8*37]
    adc rax, 0
    mov [rdi + 8*37], rax
    mov rax, [rsi + 8*38]
    adc rax, 0
    mov [rdi + 8*38], rax
    mov rax, [rsi + 8*39]
    adc rax, 0
    mov [rdi + 8*39], rax
    mov rax, [rsi + 8*40]
    adc rax, 0
    mov [rdi + 8*40], rax
    mov rax, [rsi + 8*41]
    adc rax, 0
    mov [rdi + 8*41], rax
    mov rax, [rsi + 8*42]
    adc rax, 0
    mov [rdi + 8*42], rax
    mov rax, [rsi + 8*43]
    adc rax, 0
    mov [rdi + 8*43], rax
    mov rax, [rsi + 8*44]
    adc rax, 0
    mov [rdi + 8*44], rax
    mov rax, [rsi + 8*45]
    adc rax, 0
    mov [rdi + 8*45], rax
    mov rax, [rsi + 8*46]
    adc rax, 0
    mov [rdi + 8*46], rax
    mov rax, [rsi + 8*47]
    adc rax, 0
    mov [rdi + 8*47], rax
    mov rax, [rsi + 8*48]
    adc rax, 0
    mov [rdi + 8*48], rax
    mov rax, [rsi + 8*49]
    adc rax, 0
    mov [rdi + 8*49], rax
    mov rax, [rsi + 8*50]
    adc rax, 0
    mov [rdi + 8*50], rax
    mov rax, [rsi + 8*51]
    adc rax, 0
    mov [rdi + 8*51], rax
    mov rax, [rsi + 8*52]
    adc rax, 0
    mov [rdi + 8*52], rax
    mov rax, [rsi + 8*53]
    adc rax, 0
    mov [rdi + 8*53], rax
    mov rax, [rsi + 8*54]
    adc rax, 0
    mov [rdi + 8*54], rax
    mov rax, [rsi + 8*55]
    adc rax, 0
    mov [rdi + 8*55], rax
    mov rax, [rsi + 8*56]
    adc rax, 0
    mov [rdi + 8*56], rax
    mov rax, [rsi + 8*57]
    adc rax, 0
    mov [rdi + 8*57], rax
    mov rax, [rsi + 8*58]
    adc rax, 0
    mov [rdi + 8*58], rax
    mov rax, [rsi + 8*59]
    adc rax, 0
    mov [rdi + 8*59], rax
    mov rax, [rsi + 8*60]
    adc rax, 0
    mov [rdi + 8*60], rax
    mov rax, [rsi + 8*61]
    adc rax, 0
    mov [rdi + 8*61], rax
    mov rax, [rsi + 8*62]
    adc rax, 0
    mov [rdi + 8*62], rax
    mov rax, [rsi + 8*63]
    adc rax, 0
    mov [rdi + 8*63], rax
    mov rax, [rsi + 8*64]
    adc rax, 0
    mov [rdi + 8*64], rax
    mov rax, [rsi + 8*65]
    adc rax, 0
    mov [rdi + 8*65], rax
    mov rax, [rsi + 8*66]
    adc rax, 0
    mov [rdi + 8*66], rax
.endm

.macro mult_34x34
push    r14
push    r13
lea     r13, [rsi+136]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+136]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 576
mov     rdi, rsp
add_17x17
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+144]
add_17x17
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_17x17
lea     r12, [rbx+272]
mov     rdx, rsp
lea     rsi, [rsp+144]
lea     rdi, [rsp+288]
mult_18x18
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_17x17
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+288]
sub_d_36x34_woc
lea     rdi, [rbx+136]
lea     rdx, [rsp+288]
mov     rsi, rdi
add_36x35
add     rsp, 576
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_65x65
push    r14
push    r13
lea     r13, [rsi+256]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+256]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 1088
mov     rdi, rsp
add_33x32
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+272]
add_33x32
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+512]
mult_32x32
mov     rdx, rsp
lea     rsi, [rsp+272]
lea     rdi, [rsp+544]
mult_34x34
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
mult_33x33
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+544]
_sub_d_68x66_woc
lea     rdi, [rbx+256]
lea     rdx, [rsp+544]
mov     rsi, rdi
add_67x66
add     rsp, 1088
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_128x128
push    r14
push    r13
lea     r13, [rsi+512]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+512]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 2080
mov     rdi, rsp
add_64x64
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+520]
add_64x64
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_64x64
lea     r12, [rbx+1024]
mov     rdx, rsp
lea     rsi, [rsp+520]
lea     rdi, [rsp+1040]
mult_65x65
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_64x64
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+1040]
sub_d_130x128_woc
lea     rdi, [rbx+512]
lea     rdx, [rsp+1040]
mov     rsi, rdi
add_130x129
add     rsp, 2080
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.global secsidh_internal_8191m78l338_fp_mult_128x128
secsidh_internal_8191m78l338_fp_mult_128x128:
    mult_128x128
    ret

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

.global secsidh_internal_8191m78l338_fp_random
secsidh_internal_8191m78l338_fp_random:

    push rdi
    mov rsi, pbytes
    call randombytes
    pop rdi
    mov rax, 1
    shl rax, (pbits % 64)
    dec rax
    and [rdi + pbytes-8], rax
    mov r8, secsidh_internal_8191m78l338_p@GOTPCREL[rip]
    .set k, plimbs-1
    .rept plimbs
        mov rax, [r8 + 8*k]
        cmp [rdi + 8*k], rax
        jge secsidh_internal_8191m78l338_fp_random
        jl 0f
        .set k, k-1
    .endr
    0:
    ret

.macro add_39x39
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 38
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 39*8], r8
.endm

.macro sub_d_80x78_woc
# odd intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rsi + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rsi + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rsi + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rsi + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rsi + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rsi + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rsi + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rsi + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rsi + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rsi + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rsi + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rsi + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rsi + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rsi + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rsi + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rsi + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rsi + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rsi + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rsi + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rsi + 31*8]
    mov [rdi + 31*8], rax
    mov rax, [rdi + 32*8]
    sbb rax, [rsi + 32*8]
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, [rsi + 33*8]
    mov [rdi + 33*8], rax
    mov rax, [rdi + 34*8]
    sbb rax, [rsi + 34*8]
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, [rsi + 35*8]
    mov [rdi + 35*8], rax
    mov rax, [rdi + 36*8]
    sbb rax, [rsi + 36*8]
    mov [rdi + 36*8], rax
    mov rax, [rdi + 37*8]
    sbb rax, [rsi + 37*8]
    mov [rdi + 37*8], rax
    mov rax, [rdi + 38*8]
    sbb rax, [rsi + 38*8]
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, [rsi + 39*8]
    mov [rdi + 39*8], rax
    mov rax, [rdi + 40*8]
    sbb rax, [rsi + 40*8]
    mov [rdi + 40*8], rax
    mov rax, [rdi + 41*8]
    sbb rax, [rsi + 41*8]
    mov [rdi + 41*8], rax
    mov rax, [rdi + 42*8]
    sbb rax, [rsi + 42*8]
    mov [rdi + 42*8], rax
    mov rax, [rdi + 43*8]
    sbb rax, [rsi + 43*8]
    mov [rdi + 43*8], rax
    mov rax, [rdi + 44*8]
    sbb rax, [rsi + 44*8]
    mov [rdi + 44*8], rax
    mov rax, [rdi + 45*8]
    sbb rax, [rsi + 45*8]
    mov [rdi + 45*8], rax
    mov rax, [rdi + 46*8]
    sbb rax, [rsi + 46*8]
    mov [rdi + 46*8], rax
    mov rax, [rdi + 47*8]
    sbb rax, [rsi + 47*8]
    mov [rdi + 47*8], rax
    mov rax, [rdi + 48*8]
    sbb rax, [rsi + 48*8]
    mov [rdi + 48*8], rax
    mov rax, [rdi + 49*8]
    sbb rax, [rsi + 49*8]
    mov [rdi + 49*8], rax
    mov rax, [rdi + 50*8]
    sbb rax, [rsi + 50*8]
    mov [rdi + 50*8], rax
    mov rax, [rdi + 51*8]
    sbb rax, [rsi + 51*8]
    mov [rdi + 51*8], rax
    mov rax, [rdi + 52*8]
    sbb rax, [rsi + 52*8]
    mov [rdi + 52*8], rax
    mov rax, [rdi + 53*8]
    sbb rax, [rsi + 53*8]
    mov [rdi + 53*8], rax
    mov rax, [rdi + 54*8]
    sbb rax, [rsi + 54*8]
    mov [rdi + 54*8], rax
    mov rax, [rdi + 55*8]
    sbb rax, [rsi + 55*8]
    mov [rdi + 55*8], rax
    mov rax, [rdi + 56*8]
    sbb rax, [rsi + 56*8]
    mov [rdi + 56*8], rax
    mov rax, [rdi + 57*8]
    sbb rax, [rsi + 57*8]
    mov [rdi + 57*8], rax
    mov rax, [rdi + 58*8]
    sbb rax, [rsi + 58*8]
    mov [rdi + 58*8], rax
    mov rax, [rdi + 59*8]
    sbb rax, [rsi + 59*8]
    mov [rdi + 59*8], rax
    mov rax, [rdi + 60*8]
    sbb rax, [rsi + 60*8]
    mov [rdi + 60*8], rax
    mov rax, [rdi + 61*8]
    sbb rax, [rsi + 61*8]
    mov [rdi + 61*8], rax
    mov rax, [rdi + 62*8]
    sbb rax, [rsi + 62*8]
    mov [rdi + 62*8], rax
    mov rax, [rdi + 63*8]
    sbb rax, [rsi + 63*8]
    mov [rdi + 63*8], rax
    mov rax, [rdi + 64*8]
    sbb rax, [rsi + 64*8]
    mov [rdi + 64*8], rax
    mov rax, [rdi + 65*8]
    sbb rax, [rsi + 65*8]
    mov [rdi + 65*8], rax
    mov rax, [rdi + 66*8]
    sbb rax, [rsi + 66*8]
    mov [rdi + 66*8], rax
    mov rax, [rdi + 67*8]
    sbb rax, [rsi + 67*8]
    mov [rdi + 67*8], rax
    mov rax, [rdi + 68*8]
    sbb rax, [rsi + 68*8]
    mov [rdi + 68*8], rax
    mov rax, [rdi + 69*8]
    sbb rax, [rsi + 69*8]
    mov [rdi + 69*8], rax
    mov rax, [rdi + 70*8]
    sbb rax, [rsi + 70*8]
    mov [rdi + 70*8], rax
    mov rax, [rdi + 71*8]
    sbb rax, [rsi + 71*8]
    mov [rdi + 71*8], rax
    mov rax, [rdi + 72*8]
    sbb rax, [rsi + 72*8]
    mov [rdi + 72*8], rax
    mov rax, [rdi + 73*8]
    sbb rax, [rsi + 73*8]
    mov [rdi + 73*8], rax
    mov rax, [rdi + 74*8]
    sbb rax, [rsi + 74*8]
    mov [rdi + 74*8], rax
    mov rax, [rdi + 75*8]
    sbb rax, [rsi + 75*8]
    mov [rdi + 75*8], rax
    mov rax, [rdi + 76*8]
    sbb rax, [rsi + 76*8]
    mov [rdi + 76*8], rax
    mov rax, [rdi + 77*8]
    sbb rax, [rsi + 77*8]
    mov [rdi + 77*8], rax
# outro
    mov rax, [rdi + 78*8]
    sbb rax, 0
    mov [rdi + 78*8], rax
    mov rax, [rdi + 79*8]
    sbb rax, 0
    mov [rdi + 79*8], rax
# 2nd subtraction ---------
# odd intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rdx + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rdx + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rdx + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rdx + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rdx + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rdx + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rdx + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rdx + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rdx + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rdx + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rdx + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rdx + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rdx + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rdx + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rdx + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rdx + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rdx + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rdx + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rdx + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rdx + 31*8]
    mov [rdi + 31*8], rax
    mov rax, [rdi + 32*8]
    sbb rax, [rdx + 32*8]
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, [rdx + 33*8]
    mov [rdi + 33*8], rax
    mov rax, [rdi + 34*8]
    sbb rax, [rdx + 34*8]
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, [rdx + 35*8]
    mov [rdi + 35*8], rax
    mov rax, [rdi + 36*8]
    sbb rax, [rdx + 36*8]
    mov [rdi + 36*8], rax
    mov rax, [rdi + 37*8]
    sbb rax, [rdx + 37*8]
    mov [rdi + 37*8], rax
    mov rax, [rdi + 38*8]
    sbb rax, [rdx + 38*8]
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, [rdx + 39*8]
    mov [rdi + 39*8], rax
    mov rax, [rdi + 40*8]
    sbb rax, [rdx + 40*8]
    mov [rdi + 40*8], rax
    mov rax, [rdi + 41*8]
    sbb rax, [rdx + 41*8]
    mov [rdi + 41*8], rax
    mov rax, [rdi + 42*8]
    sbb rax, [rdx + 42*8]
    mov [rdi + 42*8], rax
    mov rax, [rdi + 43*8]
    sbb rax, [rdx + 43*8]
    mov [rdi + 43*8], rax
    mov rax, [rdi + 44*8]
    sbb rax, [rdx + 44*8]
    mov [rdi + 44*8], rax
    mov rax, [rdi + 45*8]
    sbb rax, [rdx + 45*8]
    mov [rdi + 45*8], rax
    mov rax, [rdi + 46*8]
    sbb rax, [rdx + 46*8]
    mov [rdi + 46*8], rax
    mov rax, [rdi + 47*8]
    sbb rax, [rdx + 47*8]
    mov [rdi + 47*8], rax
    mov rax, [rdi + 48*8]
    sbb rax, [rdx + 48*8]
    mov [rdi + 48*8], rax
    mov rax, [rdi + 49*8]
    sbb rax, [rdx + 49*8]
    mov [rdi + 49*8], rax
    mov rax, [rdi + 50*8]
    sbb rax, [rdx + 50*8]
    mov [rdi + 50*8], rax
    mov rax, [rdi + 51*8]
    sbb rax, [rdx + 51*8]
    mov [rdi + 51*8], rax
    mov rax, [rdi + 52*8]
    sbb rax, [rdx + 52*8]
    mov [rdi + 52*8], rax
    mov rax, [rdi + 53*8]
    sbb rax, [rdx + 53*8]
    mov [rdi + 53*8], rax
    mov rax, [rdi + 54*8]
    sbb rax, [rdx + 54*8]
    mov [rdi + 54*8], rax
    mov rax, [rdi + 55*8]
    sbb rax, [rdx + 55*8]
    mov [rdi + 55*8], rax
    mov rax, [rdi + 56*8]
    sbb rax, [rdx + 56*8]
    mov [rdi + 56*8], rax
    mov rax, [rdi + 57*8]
    sbb rax, [rdx + 57*8]
    mov [rdi + 57*8], rax
    mov rax, [rdi + 58*8]
    sbb rax, [rdx + 58*8]
    mov [rdi + 58*8], rax
    mov rax, [rdi + 59*8]
    sbb rax, [rdx + 59*8]
    mov [rdi + 59*8], rax
    mov rax, [rdi + 60*8]
    sbb rax, [rdx + 60*8]
    mov [rdi + 60*8], rax
    mov rax, [rdi + 61*8]
    sbb rax, [rdx + 61*8]
    mov [rdi + 61*8], rax
    mov rax, [rdi + 62*8]
    sbb rax, [rdx + 62*8]
    mov [rdi + 62*8], rax
    mov rax, [rdi + 63*8]
    sbb rax, [rdx + 63*8]
    mov [rdi + 63*8], rax
    mov rax, [rdi + 64*8]
    sbb rax, [rdx + 64*8]
    mov [rdi + 64*8], rax
    mov rax, [rdi + 65*8]
    sbb rax, [rdx + 65*8]
    mov [rdi + 65*8], rax
    mov rax, [rdi + 66*8]
    sbb rax, [rdx + 66*8]
    mov [rdi + 66*8], rax
    mov rax, [rdi + 67*8]
    sbb rax, [rdx + 67*8]
    mov [rdi + 67*8], rax
    mov rax, [rdi + 68*8]
    sbb rax, [rdx + 68*8]
    mov [rdi + 68*8], rax
    mov rax, [rdi + 69*8]
    sbb rax, [rdx + 69*8]
    mov [rdi + 69*8], rax
    mov rax, [rdi + 70*8]
    sbb rax, [rdx + 70*8]
    mov [rdi + 70*8], rax
    mov rax, [rdi + 71*8]
    sbb rax, [rdx + 71*8]
    mov [rdi + 71*8], rax
    mov rax, [rdi + 72*8]
    sbb rax, [rdx + 72*8]
    mov [rdi + 72*8], rax
    mov rax, [rdi + 73*8]
    sbb rax, [rdx + 73*8]
    mov [rdi + 73*8], rax
    mov rax, [rdi + 74*8]
    sbb rax, [rdx + 74*8]
    mov [rdi + 74*8], rax
    mov rax, [rdi + 75*8]
    sbb rax, [rdx + 75*8]
    mov [rdi + 75*8], rax
    mov rax, [rdi + 76*8]
    sbb rax, [rdx + 76*8]
    mov [rdi + 76*8], rax
    mov rax, [rdi + 77*8]
    sbb rax, [rdx + 77*8]
    mov [rdi + 77*8], rax
# outro
    mov rax, [rdi + 78*8]
    sbb rax, 0
    mov [rdi + 78*8], rax
    mov rax, [rdi + 79*8]
    sbb rax, 0
    mov [rdi + 79*8], rax
.endm

.macro add_80x79
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 79
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*80]
    adc rax, 0
    mov [rdi + 8*80], rax
    mov rax, [rsi + 8*81]
    adc rax, 0
    mov [rdi + 8*81], rax
    mov rax, [rsi + 8*82]
    adc rax, 0
    mov [rdi + 8*82], rax
    mov rax, [rsi + 8*83]
    adc rax, 0
    mov [rdi + 8*83], rax
    mov rax, [rsi + 8*84]
    adc rax, 0
    mov [rdi + 8*84], rax
    mov rax, [rsi + 8*85]
    adc rax, 0
    mov [rdi + 8*85], rax
    mov rax, [rsi + 8*86]
    adc rax, 0
    mov [rdi + 8*86], rax
    mov rax, [rsi + 8*87]
    adc rax, 0
    mov [rdi + 8*87], rax
    mov rax, [rsi + 8*88]
    adc rax, 0
    mov [rdi + 8*88], rax
    mov rax, [rsi + 8*89]
    adc rax, 0
    mov [rdi + 8*89], rax
    mov rax, [rsi + 8*90]
    adc rax, 0
    mov [rdi + 8*90], rax
    mov rax, [rsi + 8*91]
    adc rax, 0
    mov [rdi + 8*91], rax
    mov rax, [rsi + 8*92]
    adc rax, 0
    mov [rdi + 8*92], rax
    mov rax, [rsi + 8*93]
    adc rax, 0
    mov [rdi + 8*93], rax
    mov rax, [rsi + 8*94]
    adc rax, 0
    mov [rdi + 8*94], rax
    mov rax, [rsi + 8*95]
    adc rax, 0
    mov [rdi + 8*95], rax
    mov rax, [rsi + 8*96]
    adc rax, 0
    mov [rdi + 8*96], rax
    mov rax, [rsi + 8*97]
    adc rax, 0
    mov [rdi + 8*97], rax
    mov rax, [rsi + 8*98]
    adc rax, 0
    mov [rdi + 8*98], rax
    mov rax, [rsi + 8*99]
    adc rax, 0
    mov [rdi + 8*99], rax
    mov rax, [rsi + 8*100]
    adc rax, 0
    mov [rdi + 8*100], rax
    mov rax, [rsi + 8*101]
    adc rax, 0
    mov [rdi + 8*101], rax
    mov rax, [rsi + 8*102]
    adc rax, 0
    mov [rdi + 8*102], rax
    mov rax, [rsi + 8*103]
    adc rax, 0
    mov [rdi + 8*103], rax
    mov rax, [rsi + 8*104]
    adc rax, 0
    mov [rdi + 8*104], rax
    mov rax, [rsi + 8*105]
    adc rax, 0
    mov [rdi + 8*105], rax
    mov rax, [rsi + 8*106]
    adc rax, 0
    mov [rdi + 8*106], rax
    mov rax, [rsi + 8*107]
    adc rax, 0
    mov [rdi + 8*107], rax
    mov rax, [rsi + 8*108]
    adc rax, 0
    mov [rdi + 8*108], rax
    mov rax, [rsi + 8*109]
    adc rax, 0
    mov [rdi + 8*109], rax
    mov rax, [rsi + 8*110]
    adc rax, 0
    mov [rdi + 8*110], rax
    mov rax, [rsi + 8*111]
    adc rax, 0
    mov [rdi + 8*111], rax
    mov rax, [rsi + 8*112]
    adc rax, 0
    mov [rdi + 8*112], rax
    mov rax, [rsi + 8*113]
    adc rax, 0
    mov [rdi + 8*113], rax
    mov rax, [rsi + 8*114]
    adc rax, 0
    mov [rdi + 8*114], rax
    mov rax, [rsi + 8*115]
    adc rax, 0
    mov [rdi + 8*115], rax
    mov rax, [rsi + 8*116]
    adc rax, 0
    mov [rdi + 8*116], rax
    mov rax, [rsi + 8*117]
    adc rax, 0
    mov [rdi + 8*117], rax
    mov rax, [rsi + 8*118]
    adc rax, 0
    mov [rdi + 8*118], rax
    mov rax, [rsi + 8*119]
    adc rax, 0
    mov [rdi + 8*119], rax
    mov rax, [rsi + 8*120]
    adc rax, 0
    mov [rdi + 8*120], rax
    mov rax, [rsi + 8*121]
    adc rax, 0
    mov [rdi + 8*121], rax
    mov rax, [rsi + 8*122]
    adc rax, 0
    mov [rdi + 8*122], rax
    mov rax, [rsi + 8*123]
    adc rax, 0
    mov [rdi + 8*123], rax
    mov rax, [rsi + 8*124]
    adc rax, 0
    mov [rdi + 8*124], rax
    mov rax, [rsi + 8*125]
    adc rax, 0
    mov [rdi + 8*125], rax
    mov rax, [rsi + 8*126]
    adc rax, 0
    mov [rdi + 8*126], rax
    mov rax, [rsi + 8*127]
    adc rax, 0
    mov [rdi + 8*127], rax
    mov rax, [rsi + 8*128]
    adc rax, 0
    mov [rdi + 8*128], rax
    mov rax, [rsi + 8*129]
    adc rax, 0
    mov [rdi + 8*129], rax
    mov rax, [rsi + 8*130]
    adc rax, 0
    mov [rdi + 8*130], rax
    mov rax, [rsi + 8*131]
    adc rax, 0
    mov [rdi + 8*131], rax
    mov rax, [rsi + 8*132]
    adc rax, 0
    mov [rdi + 8*132], rax
    mov rax, [rsi + 8*133]
    adc rax, 0
    mov [rdi + 8*133], rax
    mov rax, [rsi + 8*134]
    adc rax, 0
    mov [rdi + 8*134], rax
    mov rax, [rsi + 8*135]
    adc rax, 0
    mov [rdi + 8*135], rax
    mov rax, [rsi + 8*136]
    adc rax, 0
    mov [rdi + 8*136], rax
    mov rax, [rsi + 8*137]
    adc rax, 0
    mov [rdi + 8*137], rax
    mov rax, [rsi + 8*138]
    adc rax, 0
    mov [rdi + 8*138], rax
    mov rax, [rsi + 8*139]
    adc rax, 0
    mov [rdi + 8*139], rax
    mov rax, [rsi + 8*140]
    adc rax, 0
    mov [rdi + 8*140], rax
    mov rax, [rsi + 8*141]
    adc rax, 0
    mov [rdi + 8*141], rax
    mov rax, [rsi + 8*142]
    adc rax, 0
    mov [rdi + 8*142], rax
    mov rax, [rsi + 8*143]
    adc rax, 0
    mov [rdi + 8*143], rax
    mov rax, [rsi + 8*144]
    adc rax, 0
    mov [rdi + 8*144], rax
    mov rax, [rsi + 8*145]
    adc rax, 0
    mov [rdi + 8*145], rax
    mov rax, [rsi + 8*146]
    adc rax, 0
    mov [rdi + 8*146], rax
    mov rax, [rsi + 8*147]
    adc rax, 0
    mov [rdi + 8*147], rax
    mov rax, [rsi + 8*148]
    adc rax, 0
    mov [rdi + 8*148], rax
    mov rax, [rsi + 8*149]
    adc rax, 0
    mov [rdi + 8*149], rax
    mov rax, [rsi + 8*150]
    adc rax, 0
    mov [rdi + 8*150], rax
    mov rax, [rsi + 8*151]
    adc rax, 0
    mov [rdi + 8*151], rax
    mov rax, [rsi + 8*152]
    adc rax, 0
    mov [rdi + 8*152], rax
    mov rax, [rsi + 8*153]
    adc rax, 0
    mov [rdi + 8*153], rax
    mov rax, [rsi + 8*154]
    adc rax, 0
    mov [rdi + 8*154], rax
    mov rax, [rsi + 8*155]
    adc rax, 0
    mov [rdi + 8*155], rax
.endm

.macro add_20x19_
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 18
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*19]
    adc rax, 0
    mov [rdi + 8*19], rax
    adc r8, 0
    mov [rdi + 8*20], r8
.endm

.macro _sub_d_42x40_woc
# intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rsi + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rsi + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rsi + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rsi + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rsi + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rsi + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rsi + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rsi + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rsi + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rsi + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rsi + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rsi + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rsi + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rsi + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rsi + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rsi + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rsi + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rsi + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rsi + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rsi + 31*8]
    mov [rdi + 31*8], rax
    mov rax, [rdi + 32*8]
    sbb rax, [rsi + 32*8]
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, [rsi + 33*8]
    mov [rdi + 33*8], rax
    mov rax, [rdi + 34*8]
    sbb rax, [rsi + 34*8]
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, [rsi + 35*8]
    mov [rdi + 35*8], rax
    mov rax, [rdi + 36*8]
    sbb rax, [rsi + 36*8]
    mov [rdi + 36*8], rax
    mov rax, [rdi + 37*8]
    sbb rax, [rsi + 37*8]
    mov [rdi + 37*8], rax
# outro
    mov rax, [rdi + 38*8]
    sbb rax, 0
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, 0
    mov [rdi + 39*8], rax
    mov rax, [rdi + 40*8]
    sbb rax, 0
    mov [rdi + 40*8], rax
    mov rax, [rdi + 41*8]
    sbb rax, 0
    mov [rdi + 41*8], rax
# 2nd subtraction ---------
# intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rdx + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rdx + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rdx + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rdx + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rdx + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rdx + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rdx + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rdx + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rdx + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rdx + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rdx + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rdx + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rdx + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rdx + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rdx + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rdx + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rdx + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rdx + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rdx + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rdx + 31*8]
    mov [rdi + 31*8], rax
    mov rax, [rdi + 32*8]
    sbb rax, [rdx + 32*8]
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, [rdx + 33*8]
    mov [rdi + 33*8], rax
    mov rax, [rdi + 34*8]
    sbb rax, [rdx + 34*8]
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, [rdx + 35*8]
    mov [rdi + 35*8], rax
    mov rax, [rdi + 36*8]
    sbb rax, [rdx + 36*8]
    mov [rdi + 36*8], rax
    mov rax, [rdi + 37*8]
    sbb rax, [rdx + 37*8]
    mov [rdi + 37*8], rax
    mov rax, [rdi + 38*8]
    sbb rax, [rdx + 38*8]
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, [rdx + 39*8]
    mov [rdi + 39*8], rax
# outro
    mov rax, [rdi + 40*8]
    sbb rax, 0
    mov [rdi + 40*8], rax
    mov rax, [rdi + 41*8]
    sbb rax, 0
    mov [rdi + 41*8], rax
.endm

.macro add_41x40
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 41
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*42]
    adc rax, 0
    mov [rdi + 8*42], rax
    mov rax, [rsi + 8*43]
    adc rax, 0
    mov [rdi + 8*43], rax
    mov rax, [rsi + 8*44]
    adc rax, 0
    mov [rdi + 8*44], rax
    mov rax, [rsi + 8*45]
    adc rax, 0
    mov [rdi + 8*45], rax
    mov rax, [rsi + 8*46]
    adc rax, 0
    mov [rdi + 8*46], rax
    mov rax, [rsi + 8*47]
    adc rax, 0
    mov [rdi + 8*47], rax
    mov rax, [rsi + 8*48]
    adc rax, 0
    mov [rdi + 8*48], rax
    mov rax, [rsi + 8*49]
    adc rax, 0
    mov [rdi + 8*49], rax
    mov rax, [rsi + 8*50]
    adc rax, 0
    mov [rdi + 8*50], rax
    mov rax, [rsi + 8*51]
    adc rax, 0
    mov [rdi + 8*51], rax
    mov rax, [rsi + 8*52]
    adc rax, 0
    mov [rdi + 8*52], rax
    mov rax, [rsi + 8*53]
    adc rax, 0
    mov [rdi + 8*53], rax
    mov rax, [rsi + 8*54]
    adc rax, 0
    mov [rdi + 8*54], rax
    mov rax, [rsi + 8*55]
    adc rax, 0
    mov [rdi + 8*55], rax
    mov rax, [rsi + 8*56]
    adc rax, 0
    mov [rdi + 8*56], rax
    mov rax, [rsi + 8*57]
    adc rax, 0
    mov [rdi + 8*57], rax
    mov rax, [rsi + 8*58]
    adc rax, 0
    mov [rdi + 8*58], rax
    mov rax, [rsi + 8*59]
    adc rax, 0
    mov [rdi + 8*59], rax
    mov rax, [rsi + 8*60]
    adc rax, 0
    mov [rdi + 8*60], rax
    mov rax, [rsi + 8*61]
    adc rax, 0
    mov [rdi + 8*61], rax
    mov rax, [rsi + 8*62]
    adc rax, 0
    mov [rdi + 8*62], rax
    mov rax, [rsi + 8*63]
    adc rax, 0
    mov [rdi + 8*63], rax
    mov rax, [rsi + 8*64]
    adc rax, 0
    mov [rdi + 8*64], rax
    mov rax, [rsi + 8*65]
    adc rax, 0
    mov [rdi + 8*65], rax
    mov rax, [rsi + 8*66]
    adc rax, 0
    mov [rdi + 8*66], rax
    mov rax, [rsi + 8*67]
    adc rax, 0
    mov [rdi + 8*67], rax
    mov rax, [rsi + 8*68]
    adc rax, 0
    mov [rdi + 8*68], rax
    mov rax, [rsi + 8*69]
    adc rax, 0
    mov [rdi + 8*69], rax
    mov rax, [rsi + 8*70]
    adc rax, 0
    mov [rdi + 8*70], rax
    mov rax, [rsi + 8*71]
    adc rax, 0
    mov [rdi + 8*71], rax
    mov rax, [rsi + 8*72]
    adc rax, 0
    mov [rdi + 8*72], rax
    mov rax, [rsi + 8*73]
    adc rax, 0
    mov [rdi + 8*73], rax
    mov rax, [rsi + 8*74]
    adc rax, 0
    mov [rdi + 8*74], rax
    mov rax, [rsi + 8*75]
    adc rax, 0
    mov [rdi + 8*75], rax
    mov rax, [rsi + 8*76]
    adc rax, 0
    mov [rdi + 8*76], rax
    mov rax, [rsi + 8*77]
    adc rax, 0
    mov [rdi + 8*77], rax
.endm

.macro add_10x9
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 8
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*9]
    adc rax, 0
    mov [rdi + 8*9], rax
    adc r8, 0
    mov [rdi + 8*10], r8
.endm

.macro _sub_d_22x20_woc
# intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rsi + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rsi + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rsi + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rsi + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rsi + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rsi + 17*8]
    mov [rdi + 17*8], rax
# outro
    mov rax, [rdi + 18*8]
    sbb rax, 0
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, 0
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, 0
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, 0
    mov [rdi + 21*8], rax
# 2nd subtraction ---------
# intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rdx + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rdx + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rdx + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rdx + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rdx + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rdx + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rdx + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rdx + 19*8]
    mov [rdi + 19*8], rax
# outro
    mov rax, [rdi + 20*8]
    sbb rax, 0
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, 0
    mov [rdi + 21*8], rax
.endm

.macro add_21x20
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 21
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*22]
    adc rax, 0
    mov [rdi + 8*22], rax
    mov rax, [rsi + 8*23]
    adc rax, 0
    mov [rdi + 8*23], rax
    mov rax, [rsi + 8*24]
    adc rax, 0
    mov [rdi + 8*24], rax
    mov rax, [rsi + 8*25]
    adc rax, 0
    mov [rdi + 8*25], rax
    mov rax, [rsi + 8*26]
    adc rax, 0
    mov [rdi + 8*26], rax
    mov rax, [rsi + 8*27]
    adc rax, 0
    mov [rdi + 8*27], rax
    mov rax, [rsi + 8*28]
    adc rax, 0
    mov [rdi + 8*28], rax
    mov rax, [rsi + 8*29]
    adc rax, 0
    mov [rdi + 8*29], rax
    mov rax, [rsi + 8*30]
    adc rax, 0
    mov [rdi + 8*30], rax
    mov rax, [rsi + 8*31]
    adc rax, 0
    mov [rdi + 8*31], rax
    mov rax, [rsi + 8*32]
    adc rax, 0
    mov [rdi + 8*32], rax
    mov rax, [rsi + 8*33]
    adc rax, 0
    mov [rdi + 8*33], rax
    mov rax, [rsi + 8*34]
    adc rax, 0
    mov [rdi + 8*34], rax
    mov rax, [rsi + 8*35]
    adc rax, 0
    mov [rdi + 8*35], rax
    mov rax, [rsi + 8*36]
    adc rax, 0
    mov [rdi + 8*36], rax
    mov rax, [rsi + 8*37]
    adc rax, 0
    mov [rdi + 8*37], rax
.endm

.macro add_6x5
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 4
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*5]
    adc rax, 0
    mov [rdi + 8*5], rax
    adc r8, 0
    mov [rdi + 8*6], r8
.endm

.macro _sub_d_14x12_woc
# intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
# outro
    mov rax, [rdi + 10*8]
    sbb rax, 0
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, 0
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, 0
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, 0
    mov [rdi + 13*8], rax
# 2nd subtraction ---------
# intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
# outro
    mov rax, [rdi + 12*8]
    sbb rax, 0
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, 0
    mov [rdi + 13*8], rax
.endm

.macro add_13x12
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 13
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*14]
    adc rax, 0
    mov [rdi + 8*14], rax
    mov rax, [rsi + 8*15]
    adc rax, 0
    mov [rdi + 8*15], rax
    mov rax, [rsi + 8*16]
    adc rax, 0
    mov [rdi + 8*16], rax
    mov rax, [rsi + 8*17]
    adc rax, 0
    mov [rdi + 8*17], rax
    mov rax, [rsi + 8*18]
    adc rax, 0
    mov [rdi + 8*18], rax
    mov rax, [rsi + 8*19]
    adc rax, 0
    mov [rdi + 8*19], rax
    mov rax, [rsi + 8*20]
    adc rax, 0
    mov [rdi + 8*20], rax
    mov rax, [rsi + 8*21]
    adc rax, 0
    mov [rdi + 8*21], rax
.endm


.macro mult_11x11
push    r14
push    r13
lea     r13, [rsi+40]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+40]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 224
mov     rdi, rsp
add_6x5
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+56]
add_6x5
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+80]
mult_5x5
mov     rdx, rsp
lea     rsi, [rsp+56]
lea     rdi, [rsp+112]
mult_7x7
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
mult_6x6
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+112]
_sub_d_14x12_woc
lea     rdi, [rbx+40]
lea     rdx, [rsp+112]
mov     rsi, rdi
add_13x12
add     rsp, 224
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro add_5x5_
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 4
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 5*8], r8
.endm

.macro add_12x11_
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 11
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*12]
    adc rax, 0
    mov [rdi + 8*12], rax
    mov rax, [rsi + 8*13]
    adc rax, 0
    mov [rdi + 8*13], rax
    mov rax, [rsi + 8*14]
    adc rax, 0
    mov [rdi + 8*14], rax
    mov rax, [rsi + 8*15]
    adc rax, 0
    mov [rdi + 8*15], rax
    mov rax, [rsi + 8*16]
    adc rax, 0
    mov [rdi + 8*16], rax
    mov rax, [rsi + 8*17]
    adc rax, 0
    mov [rdi + 8*17], rax
    mov rax, [rsi + 8*18]
    adc rax, 0
    mov [rdi + 8*18], rax
    mov rax, [rsi + 8*19]
    adc rax, 0
    mov [rdi + 8*19], rax
.endm

.macro mult_10x10_
push    r14
push    r13
lea     r13, [rsi+40]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+40]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 192
mov     rdi, rsp
add_5x5_
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+48]
add_5x5_
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_5x5
lea     r12, [rbx+80]
mov     rdx, rsp
lea     rsi, [rsp+48]
lea     rdi, [rsp+96]
mult_6x6
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_5x5
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+96]
sub_d_12x10_woc
lea     rdi, [rbx+40]
lea     rdx, [rsp+96]
mov     rsi, rdi
add_12x11_
add     rsp, 192
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_19x19
push    r14
push    r13
lea     r13, [rsi+72]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+72]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 352
mov     rdi, rsp
add_10x9
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+88]
add_10x9
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+144]
mult_9x9
mov     rdx, rsp
lea     rsi, [rsp+88]
lea     rdi, [rsp+176]
mult_11x11
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
mult_10x10_
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+176]
_sub_d_22x20_woc
lea     rdi, [rbx+72]
lea     rdx, [rsp+176]
mov     rsi, rdi
add_21x20
add     rsp, 352
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro add_11x10
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 9
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*10]
    adc rax, 0
    mov [rdi + 8*10], rax
    adc r8, 0
    mov [rdi + 8*11], r8
.endm

.macro _sub_d_24x22_woc
# intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rsi + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rsi + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rsi + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rsi + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rsi + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rsi + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rsi + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rsi + 19*8]
    mov [rdi + 19*8], rax
# outro
    mov rax, [rdi + 20*8]
    sbb rax, 0
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, 0
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, 0
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, 0
    mov [rdi + 23*8], rax
# 2nd subtraction ---------
# intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rdx + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rdx + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rdx + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rdx + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rdx + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rdx + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rdx + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rdx + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rdx + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rdx + 21*8]
    mov [rdi + 21*8], rax
# outro
    mov rax, [rdi + 22*8]
    sbb rax, 0
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, 0
    mov [rdi + 23*8], rax
.endm

.macro add_23x22
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 23
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*24]
    adc rax, 0
    mov [rdi + 8*24], rax
    mov rax, [rsi + 8*25]
    adc rax, 0
    mov [rdi + 8*25], rax
    mov rax, [rsi + 8*26]
    adc rax, 0
    mov [rdi + 8*26], rax
    mov rax, [rsi + 8*27]
    adc rax, 0
    mov [rdi + 8*27], rax
    mov rax, [rsi + 8*28]
    adc rax, 0
    mov [rdi + 8*28], rax
    mov rax, [rsi + 8*29]
    adc rax, 0
    mov [rdi + 8*29], rax
    mov rax, [rsi + 8*30]
    adc rax, 0
    mov [rdi + 8*30], rax
    mov rax, [rsi + 8*31]
    adc rax, 0
    mov [rdi + 8*31], rax
    mov rax, [rsi + 8*32]
    adc rax, 0
    mov [rdi + 8*32], rax
    mov rax, [rsi + 8*33]
    adc rax, 0
    mov [rdi + 8*33], rax
    mov rax, [rsi + 8*34]
    adc rax, 0
    mov [rdi + 8*34], rax
    mov rax, [rsi + 8*35]
    adc rax, 0
    mov [rdi + 8*35], rax
    mov rax, [rsi + 8*36]
    adc rax, 0
    mov [rdi + 8*36], rax
    mov rax, [rsi + 8*37]
    adc rax, 0
    mov [rdi + 8*37], rax
    mov rax, [rsi + 8*38]
    adc rax, 0
    mov [rdi + 8*38], rax
    mov rax, [rsi + 8*39]
    adc rax, 0
    mov [rdi + 8*39], rax
    mov rax, [rsi + 8*40]
    adc rax, 0
    mov [rdi + 8*40], rax
    mov rax, [rsi + 8*41]
    adc rax, 0
    mov [rdi + 8*41], rax
.endm

.macro add_6x6
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 5
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 6*8], r8
.endm

.macro sub_d_14x12_woc
# odd intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
# outro
    mov rax, [rdi + 12*8]
    sbb rax, 0
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, 0
    mov [rdi + 13*8], rax
# 2nd subtraction ---------
# odd intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
# outro
    mov rax, [rdi + 12*8]
    sbb rax, 0
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, 0
    mov [rdi + 13*8], rax
.endm

.macro add_14x13
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 13
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*14]
    adc rax, 0
    mov [rdi + 8*14], rax
    mov rax, [rsi + 8*15]
    adc rax, 0
    mov [rdi + 8*15], rax
    mov rax, [rsi + 8*16]
    adc rax, 0
    mov [rdi + 8*16], rax
    mov rax, [rsi + 8*17]
    adc rax, 0
    mov [rdi + 8*17], rax
    mov rax, [rsi + 8*18]
    adc rax, 0
    mov [rdi + 8*18], rax
    mov rax, [rsi + 8*19]
    adc rax, 0
    mov [rdi + 8*19], rax
    mov rax, [rsi + 8*20]
    adc rax, 0
    mov [rdi + 8*20], rax
    mov rax, [rsi + 8*21]
    adc rax, 0
    mov [rdi + 8*21], rax
    mov rax, [rsi + 8*22]
    adc rax, 0
    mov [rdi + 8*22], rax
    mov rax, [rsi + 8*23]
    adc rax, 0
    mov [rdi + 8*23], rax
.endm

.macro mult_12x12
push    r14
push    r13
lea     r13, [rsi+48]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+48]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 224
mov     rdi, rsp
add_6x6
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+56]
add_6x6
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_6x6
lea     r12, [rbx+96]
mov     rdx, rsp
lea     rsi, [rsp+56]
lea     rdi, [rsp+112]
mult_7x7
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_6x6
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+112]
sub_d_14x12_woc
lea     rdi, [rbx+48]
lea     rdx, [rsp+112]
mov     rsi, rdi
add_14x13
add     rsp, 224
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_21x21
push    r14
push    r13
lea     r13, [rsi+80]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+80]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 384
mov     rdi, rsp
add_11x10
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+96]
add_11x10
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+160]
mult_10x10_
mov     rdx, rsp
lea     rsi, [rsp+96]
lea     rdi, [rsp+192]
mult_12x12
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
mult_11x11
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+192]
_sub_d_24x22_woc
lea     rdi, [rbx+80]
lea     rdx, [rsp+192]
mov     rsi, rdi
add_23x22
add     rsp, 384
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro add_10x10
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 9
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 10*8], r8
.endm

.macro sub_d_22x20_woc
# odd intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rsi + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rsi + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rsi + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rsi + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rsi + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rsi + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rsi + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rsi + 19*8]
    mov [rdi + 19*8], rax
# outro
    mov rax, [rdi + 20*8]
    sbb rax, 0
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, 0
    mov [rdi + 21*8], rax
# 2nd subtraction ---------
# odd intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rdx + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rdx + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rdx + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rdx + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rdx + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rdx + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rdx + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rdx + 19*8]
    mov [rdi + 19*8], rax
# outro
    mov rax, [rdi + 20*8]
    sbb rax, 0
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, 0
    mov [rdi + 21*8], rax
.endm

.macro add_22x21
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 21
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*22]
    adc rax, 0
    mov [rdi + 8*22], rax
    mov rax, [rsi + 8*23]
    adc rax, 0
    mov [rdi + 8*23], rax
    mov rax, [rsi + 8*24]
    adc rax, 0
    mov [rdi + 8*24], rax
    mov rax, [rsi + 8*25]
    adc rax, 0
    mov [rdi + 8*25], rax
    mov rax, [rsi + 8*26]
    adc rax, 0
    mov [rdi + 8*26], rax
    mov rax, [rsi + 8*27]
    adc rax, 0
    mov [rdi + 8*27], rax
    mov rax, [rsi + 8*28]
    adc rax, 0
    mov [rdi + 8*28], rax
    mov rax, [rsi + 8*29]
    adc rax, 0
    mov [rdi + 8*29], rax
    mov rax, [rsi + 8*30]
    adc rax, 0
    mov [rdi + 8*30], rax
    mov rax, [rsi + 8*31]
    adc rax, 0
    mov [rdi + 8*31], rax
    mov rax, [rsi + 8*32]
    adc rax, 0
    mov [rdi + 8*32], rax
    mov rax, [rsi + 8*33]
    adc rax, 0
    mov [rdi + 8*33], rax
    mov rax, [rsi + 8*34]
    adc rax, 0
    mov [rdi + 8*34], rax
    mov rax, [rsi + 8*35]
    adc rax, 0
    mov [rdi + 8*35], rax
    mov rax, [rsi + 8*36]
    adc rax, 0
    mov [rdi + 8*36], rax
    mov rax, [rsi + 8*37]
    adc rax, 0
    mov [rdi + 8*37], rax
    mov rax, [rsi + 8*38]
    adc rax, 0
    mov [rdi + 8*38], rax
    mov rax, [rsi + 8*39]
    adc rax, 0
    mov [rdi + 8*39], rax
.endm

.macro mult_20x20
push    r14
push    r13
lea     r13, [rsi+80]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+80]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 352
mov     rdi, rsp
add_10x10
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+88]
add_10x10
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_10x10_
lea     r12, [rbx+160]
mov     rdx, rsp
lea     rsi, [rsp+88]
lea     rdi, [rsp+176]
mult_11x11
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_10x10_
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+176]
sub_d_22x20_woc
lea     rdi, [rbx+80]
lea     rdx, [rsp+176]
mov     rsi, rdi
add_22x21
add     rsp, 352
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_39x39
push    r14
push    r13
lea     r13, [rsi+152]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+152]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 672
mov     rdi, rsp
add_20x19_
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+168]
add_20x19_
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+304]
mult_19x19
mov     rdx, rsp
lea     rsi, [rsp+168]
lea     rdi, [rsp+336]
mult_21x21
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
mult_20x20
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+336]
_sub_d_42x40_woc
lea     rdi, [rbx+152]
lea     rdx, [rsp+336]
mov     rsi, rdi
add_41x40
add     rsp, 672
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro add_20x20
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 19
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 20*8], r8
.endm

.macro sub_d_42x40_woc
# odd intro
    mov rax, [rdi]
    sub rax, [rsi]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rsi + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rsi + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rsi + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rsi + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rsi + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rsi + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rsi + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rsi + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rsi + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rsi + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rsi + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rsi + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rsi + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rsi + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rsi + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rsi + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rsi + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rsi + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rsi + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rsi + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rsi + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rsi + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rsi + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rsi + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rsi + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rsi + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rsi + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rsi + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rsi + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rsi + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rsi + 31*8]
    mov [rdi + 31*8], rax
    mov rax, [rdi + 32*8]
    sbb rax, [rsi + 32*8]
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, [rsi + 33*8]
    mov [rdi + 33*8], rax
    mov rax, [rdi + 34*8]
    sbb rax, [rsi + 34*8]
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, [rsi + 35*8]
    mov [rdi + 35*8], rax
    mov rax, [rdi + 36*8]
    sbb rax, [rsi + 36*8]
    mov [rdi + 36*8], rax
    mov rax, [rdi + 37*8]
    sbb rax, [rsi + 37*8]
    mov [rdi + 37*8], rax
    mov rax, [rdi + 38*8]
    sbb rax, [rsi + 38*8]
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, [rsi + 39*8]
    mov [rdi + 39*8], rax
# outro
    mov rax, [rdi + 40*8]
    sbb rax, 0
    mov [rdi + 40*8], rax
    mov rax, [rdi + 41*8]
    sbb rax, 0
    mov [rdi + 41*8], rax
# 2nd subtraction ---------
# odd intro
    mov rax, [rdi]
    sub rax, [rdx]
    mov [rdi], rax
# loop
    mov rax, [rdi + 1*8]
    sbb rax, [rdx + 1*8]
    mov [rdi + 1*8], rax
    mov rax, [rdi + 2*8]
    sbb rax, [rdx + 2*8]
    mov [rdi + 2*8], rax
    mov rax, [rdi + 3*8]
    sbb rax, [rdx + 3*8]
    mov [rdi + 3*8], rax
    mov rax, [rdi + 4*8]
    sbb rax, [rdx + 4*8]
    mov [rdi + 4*8], rax
    mov rax, [rdi + 5*8]
    sbb rax, [rdx + 5*8]
    mov [rdi + 5*8], rax
    mov rax, [rdi + 6*8]
    sbb rax, [rdx + 6*8]
    mov [rdi + 6*8], rax
    mov rax, [rdi + 7*8]
    sbb rax, [rdx + 7*8]
    mov [rdi + 7*8], rax
    mov rax, [rdi + 8*8]
    sbb rax, [rdx + 8*8]
    mov [rdi + 8*8], rax
    mov rax, [rdi + 9*8]
    sbb rax, [rdx + 9*8]
    mov [rdi + 9*8], rax
    mov rax, [rdi + 10*8]
    sbb rax, [rdx + 10*8]
    mov [rdi + 10*8], rax
    mov rax, [rdi + 11*8]
    sbb rax, [rdx + 11*8]
    mov [rdi + 11*8], rax
    mov rax, [rdi + 12*8]
    sbb rax, [rdx + 12*8]
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, [rdx + 13*8]
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, [rdx + 14*8]
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, [rdx + 15*8]
    mov [rdi + 15*8], rax
    mov rax, [rdi + 16*8]
    sbb rax, [rdx + 16*8]
    mov [rdi + 16*8], rax
    mov rax, [rdi + 17*8]
    sbb rax, [rdx + 17*8]
    mov [rdi + 17*8], rax
    mov rax, [rdi + 18*8]
    sbb rax, [rdx + 18*8]
    mov [rdi + 18*8], rax
    mov rax, [rdi + 19*8]
    sbb rax, [rdx + 19*8]
    mov [rdi + 19*8], rax
    mov rax, [rdi + 20*8]
    sbb rax, [rdx + 20*8]
    mov [rdi + 20*8], rax
    mov rax, [rdi + 21*8]
    sbb rax, [rdx + 21*8]
    mov [rdi + 21*8], rax
    mov rax, [rdi + 22*8]
    sbb rax, [rdx + 22*8]
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, [rdx + 23*8]
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, [rdx + 24*8]
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, [rdx + 25*8]
    mov [rdi + 25*8], rax
    mov rax, [rdi + 26*8]
    sbb rax, [rdx + 26*8]
    mov [rdi + 26*8], rax
    mov rax, [rdi + 27*8]
    sbb rax, [rdx + 27*8]
    mov [rdi + 27*8], rax
    mov rax, [rdi + 28*8]
    sbb rax, [rdx + 28*8]
    mov [rdi + 28*8], rax
    mov rax, [rdi + 29*8]
    sbb rax, [rdx + 29*8]
    mov [rdi + 29*8], rax
    mov rax, [rdi + 30*8]
    sbb rax, [rdx + 30*8]
    mov [rdi + 30*8], rax
    mov rax, [rdi + 31*8]
    sbb rax, [rdx + 31*8]
    mov [rdi + 31*8], rax
    mov rax, [rdi + 32*8]
    sbb rax, [rdx + 32*8]
    mov [rdi + 32*8], rax
    mov rax, [rdi + 33*8]
    sbb rax, [rdx + 33*8]
    mov [rdi + 33*8], rax
    mov rax, [rdi + 34*8]
    sbb rax, [rdx + 34*8]
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, [rdx + 35*8]
    mov [rdi + 35*8], rax
    mov rax, [rdi + 36*8]
    sbb rax, [rdx + 36*8]
    mov [rdi + 36*8], rax
    mov rax, [rdi + 37*8]
    sbb rax, [rdx + 37*8]
    mov [rdi + 37*8], rax
    mov rax, [rdi + 38*8]
    sbb rax, [rdx + 38*8]
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, [rdx + 39*8]
    mov [rdi + 39*8], rax
# outro
    mov rax, [rdi + 40*8]
    sbb rax, 0
    mov [rdi + 40*8], rax
    mov rax, [rdi + 41*8]
    sbb rax, 0
    mov [rdi + 41*8], rax
.endm

.macro add_42x41
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 41
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*42]
    adc rax, 0
    mov [rdi + 8*42], rax
    mov rax, [rsi + 8*43]
    adc rax, 0
    mov [rdi + 8*43], rax
    mov rax, [rsi + 8*44]
    adc rax, 0
    mov [rdi + 8*44], rax
    mov rax, [rsi + 8*45]
    adc rax, 0
    mov [rdi + 8*45], rax
    mov rax, [rsi + 8*46]
    adc rax, 0
    mov [rdi + 8*46], rax
    mov rax, [rsi + 8*47]
    adc rax, 0
    mov [rdi + 8*47], rax
    mov rax, [rsi + 8*48]
    adc rax, 0
    mov [rdi + 8*48], rax
    mov rax, [rsi + 8*49]
    adc rax, 0
    mov [rdi + 8*49], rax
    mov rax, [rsi + 8*50]
    adc rax, 0
    mov [rdi + 8*50], rax
    mov rax, [rsi + 8*51]
    adc rax, 0
    mov [rdi + 8*51], rax
    mov rax, [rsi + 8*52]
    adc rax, 0
    mov [rdi + 8*52], rax
    mov rax, [rsi + 8*53]
    adc rax, 0
    mov [rdi + 8*53], rax
    mov rax, [rsi + 8*54]
    adc rax, 0
    mov [rdi + 8*54], rax
    mov rax, [rsi + 8*55]
    adc rax, 0
    mov [rdi + 8*55], rax
    mov rax, [rsi + 8*56]
    adc rax, 0
    mov [rdi + 8*56], rax
    mov rax, [rsi + 8*57]
    adc rax, 0
    mov [rdi + 8*57], rax
    mov rax, [rsi + 8*58]
    adc rax, 0
    mov [rdi + 8*58], rax
    mov rax, [rsi + 8*59]
    adc rax, 0
    mov [rdi + 8*59], rax
    mov rax, [rsi + 8*60]
    adc rax, 0
    mov [rdi + 8*60], rax
    mov rax, [rsi + 8*61]
    adc rax, 0
    mov [rdi + 8*61], rax
    mov rax, [rsi + 8*62]
    adc rax, 0
    mov [rdi + 8*62], rax
    mov rax, [rsi + 8*63]
    adc rax, 0
    mov [rdi + 8*63], rax
    mov rax, [rsi + 8*64]
    adc rax, 0
    mov [rdi + 8*64], rax
    mov rax, [rsi + 8*65]
    adc rax, 0
    mov [rdi + 8*65], rax
    mov rax, [rsi + 8*66]
    adc rax, 0
    mov [rdi + 8*66], rax
    mov rax, [rsi + 8*67]
    adc rax, 0
    mov [rdi + 8*67], rax
    mov rax, [rsi + 8*68]
    adc rax, 0
    mov [rdi + 8*68], rax
    mov rax, [rsi + 8*69]
    adc rax, 0
    mov [rdi + 8*69], rax
    mov rax, [rsi + 8*70]
    adc rax, 0
    mov [rdi + 8*70], rax
    mov rax, [rsi + 8*71]
    adc rax, 0
    mov [rdi + 8*71], rax
    mov rax, [rsi + 8*72]
    adc rax, 0
    mov [rdi + 8*72], rax
    mov rax, [rsi + 8*73]
    adc rax, 0
    mov [rdi + 8*73], rax
    mov rax, [rsi + 8*74]
    adc rax, 0
    mov [rdi + 8*74], rax
    mov rax, [rsi + 8*75]
    adc rax, 0
    mov [rdi + 8*75], rax
    mov rax, [rsi + 8*76]
    adc rax, 0
    mov [rdi + 8*76], rax
    mov rax, [rsi + 8*77]
    adc rax, 0
    mov [rdi + 8*77], rax
    mov rax, [rsi + 8*78]
    adc rax, 0
    mov [rdi + 8*78], rax
    mov rax, [rsi + 8*79]
    adc rax, 0
    mov [rdi + 8*79], rax
.endm

.macro mult_40x40
push    r14
push    r13
lea     r13, [rsi+160]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+160]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 672
mov     rdi, rsp
add_20x20
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+168]
add_20x20
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_20x20
lea     r12, [rbx+320]
mov     rdx, rsp
lea     rsi, [rsp+168]
lea     rdi, [rsp+336]
mult_21x21
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_20x20
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+336]
sub_d_42x40_woc
lea     rdi, [rbx+160]
lea     rdx, [rsp+336]
mov     rsi, rdi
add_42x41
add     rsp, 672
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.global secsidh_internal_8191m78l338_mult_redc
secsidh_internal_8191m78l338_mult_redc:
push    r14
push    r13
lea     r13, [rsi+312]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+312]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 1280
mov     rdi, rsp
add_39x39
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+320]
add_39x39
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_39x39
lea     r12, [rbx+624]
mov     rdx, rsp
lea     rsi, [rsp+320]
lea     rdi, [rsp+640]
mult_40x40
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_39x39
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+640]
sub_d_80x78_woc
lea     rdi, [rbx+312]
lea     rdx, [rsp+640]
mov     rsi, rdi
add_80x79
add     rsp, 1280
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
ret


.global secsidh_internal_8191m78l338_add_redc
secsidh_internal_8191m78l338_add_redc:
    mov rax, [rsi +  0]
    add rax, [rdx +  0]
    mov [rdi +  0], rax
    .set k, 1
    .rept 177
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
    setc al
    movzx rax, al
    ret

.global secsidh_internal_8191m78l338_add_redc_final
secsidh_internal_8191m78l338_add_redc_final:
    mov rax, [rsi +  0]
    add rax, [rdx +  0]
    mov [rdi +  0], rax
    .set k, 1
    .rept 127
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
    setc al
    movzx rax, al
    
    ret

.macro sqr_16x16
push    r14
push    r13
lea     r13, [rsi+64]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+64]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 288
mov     rdi, rsp
add_8x8
mov     rdx, 8
mov     rsi, rbp
mov     rdi, rbx
call sqr
lea     r12, [rbx+128]
mov     rdx, 9
mov     rsi, rsp
lea     rdi, [rsp+144]
call sqr
mov     rdx, 8
mov     rsi, r13
mov     rdi, r12
call sqr
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+144]
sub_d_18x16_woc
lea     rdi, [rbx+64]
lea     rdx, [rsp+144]
mov     rsi, rdi
add_18x17
add     rsp, 288
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm










.macro sqr_10x10
push    r14
push    r13
lea     r13, [rsi+40]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+40]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 192
mov     rdi, rsp
add_5x5
mov     rdx, 5
mov     rsi, rbp
mov     rdi, rbx
call sqr
lea     r12, [rbx+80]
mov     rdx, 6
mov     rsi, rsp
lea     rdi, [rsp+96]
call sqr
mov     rdx, 5
mov     rsi, r13
mov     rdi, r12
call sqr
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+96]
sub_d_12x10_woc
lea     rdi, [rbx+40]
lea     rdx, [rsp+96]
mov     rsi, rdi
add_12x11
add     rsp, 192
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro sqr_17x17
push    r14
push    r13
lea     r13, [rsi+64]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+64]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 320
mov     rdi, rsp
add_9x8
mov     rdx, 8
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+128]
call sqr
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+160]
sqr_10x10
mov     rdx, 9
mov     rsi, r13
mov     rdi, rbp
call sqr
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+160]
_sub_d_20x18_woc
lea     rdi, [rbx+64]
lea     rdx, [rsp+160]
mov     rsi, rdi
add_19x18
add     rsp, 320
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro sqr_32x32
push    r14
push    r13
lea     r13, [rsi+128]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+128]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 544
mov     rdi, rsp
add_16x16
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
sqr_16x16
lea     r12, [rbx+256]
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+272]
sqr_17x17
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
sqr_16x16
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+272]
sub_d_34x32_woc
lea     rdi, [rbx+128]
lea     rdx, [rsp+272]
mov     rsi, rdi
add_34x33
add     rsp, 544
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm







.macro sqr_18x18
push    r14
push    r13
lea     r13, [rsi+72]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+72]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 320
mov     rdi, rsp
add_9x9
mov     rdx, 9
mov     rsi, rbp
mov     rdi, rbx
call sqr
lea     r12, [rbx+144]
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+160]
sqr_10x10
mov     rdx, 9
mov     rsi, r13
mov     rdi, r12
call sqr
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+160]
sub_d_20x18_woc
lea     rdi, [rbx+72]
lea     rdx, [rsp+160]
mov     rsi, rdi
add_20x19
add     rsp, 320
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro sqr_33x33
push    r14
push    r13
lea     r13, [rsi+128]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+128]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 576
mov     rdi, rsp
add_17x16
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+256]
sqr_16x16
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+288]
sqr_18x18
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
sqr_17x17
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+288]
_sub_d_36x34_woc
lea     rdi, [rbx+128]
lea     rdx, [rsp+288]
mov     rsi, rdi
add_35x34
add     rsp, 576
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro sqr_64x64
push    r14
push    r13
lea     r13, [rsi+256]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+256]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 1056
mov     rdi, rsp
add_32x32
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
sqr_32x32
lea     r12, [rbx+512]
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+528]
sqr_33x33
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
sqr_32x32
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+528]
sub_d_66x64_woc
lea     rdi, [rbx+256]
lea     rdx, [rsp+528]
mov     rsi, rdi
add_66x65
add     rsp, 1056
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm







.macro sqr_34x34
push    r14
push    r13
lea     r13, [rsi+136]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+136]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 576
mov     rdi, rsp
add_17x17
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
sqr_17x17
lea     r12, [rbx+272]
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+288]
sqr_18x18
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
sqr_17x17
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+288]
sub_d_36x34_woc
lea     rdi, [rbx+136]
lea     rdx, [rsp+288]
mov     rsi, rdi
add_36x35
add     rsp, 576
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro sqr_65x65
push    r14
push    r13
lea     r13, [rsi+256]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+256]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 1088
mov     rdi, rsp
add_33x32
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+512]
sqr_32x32
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+544]
sqr_34x34
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
sqr_33x33
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+544]
_sub_d_68x66_woc
lea     rdi, [rbx+256]
lea     rdx, [rsp+544]
mov     rsi, rdi
add_67x66
add     rsp, 1088
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro sqr_128x128
push    r14
push    r13
lea     r13, [rsi+512]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+512]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 2080
mov     rdi, rsp
add_64x64
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
sqr_64x64
lea     r12, [rbx+1024]
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+1040]
sqr_65x65
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
sqr_64x64
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+1040]
sub_d_130x128_woc
lea     rdi, [rbx+512]
lea     rdx, [rsp+1040]
mov     rsi, rdi
add_130x129
add     rsp, 2080
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.global secsidh_internal_8191m78l338_fp_squaring
secsidh_internal_8191m78l338_fp_squaring:
    sqr_128x128
    ret
