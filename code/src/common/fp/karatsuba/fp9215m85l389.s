.intel_syntax noprefix

.section .rodata

.set pbits,9215
.set pbytes,1152
.set plimbs,144

.global secsidh_internal_9215m85l389_redc_alpha
secsidh_internal_9215m85l389_redc_alpha:
.quad  0xD4EB2E32201FF539, 0x9731F6B12064E278, 0x68F5236C9A6E8EEB, 0x6FF70217C7682DD9 
.quad  0xD996C5CAFCAB6BA6, 0xEE5EF78FD74361DB, 0x3BA7F52C9AA6F698, 0xC9BEDE007C259BF0 
.quad  0xD9A864CC7D33B52C, 0x440F7936394BF5B6, 0xCF4B1FD62F49C859, 0x92D044003F20EADC 
.quad  0xCD842B3809D80C8E, 0x2FBDB1D89B9D569F, 0x613F115278C53010, 0xB95DE73343F27240 
.quad  0xC92888276CA27909, 0x28839A94D3CA2D5F, 0x93147941B2E308, 0x745BCF59034C79D5 
.quad  0x73C37E1E3AE8FC67, 0x2E9DE986D4FC8646, 0x33859631C10023B1, 0x15A2A2E2188C4BEC 
.quad  0xBF8F6740D0BAE643, 0x42FEB9CCCF7D3200, 0x792C49D34520B80E, 0x83959EC2A5E959BB 
.quad  0xF6BB457B67E4747, 0xCC1CA65F453F0CE5, 0xCD0FC61342EC7176, 0x45FA3489D307DC18 
.quad  0xDA7FA26690C6E0F6, 0x144DB37F4D0B736D, 0x2F53EAEDABBEB338, 0xA7015C360AFA08C0 
.quad  0x282F93BFA396C390, 0x701BE8C44F787FAD, 0x5530DBBAB892409E, 0x36E5E81E4162EAEE 
.quad  0xBB332AD4236A07AD, 0x3276B28E0577E3F1, 0xA973F305069CC11E, 0xDDD71DAAC305A437 
.quad  0x21B47A8072B86EAE, 0x799455FDCD01F2FF, 0xFF4E3D96380C1004, 0x3AF56DDA678BFF86 
.quad  0xA882C926E07337F9, 0xEB2143236B97EBF1, 0x3A70A1E85E02F35A, 0x49BDF004F95AC7F6 
.quad  0x380D448104A8EB09, 0x704E29C40AB77B69, 0x199F2E3A6D2E23AC, 0xA5252A0EFC013C8C 
.quad  0x38CABDE8DD5935A4, 0x57DEA1BECC1C7D9A, 0x71A72AD537EA0C9E, 0x0 
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
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 

.section .text

.global secsidh_internal_9215m85l389_fp_copy
secsidh_internal_9215m85l389_fp_copy:
    cld
    mov rcx, plimbs
    rep movsq
    ret

.global secsidh_internal_9215m85l389_fp_cswap
secsidh_internal_9215m85l389_fp_cswap:
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
    mov r12, secsidh_internal_9215m85l389_p@GOTPCREL[rip]

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

    mov rdi, [rbp +  1024]
    sbb rdi, [r12 + 1024]
    mov rsi, [rbp +  1032]
    sbb rsi, [r12 + 1032]
    mov rdx, [rbp +  1040]
    sbb rdx, [r12 + 1040]
    mov rcx, [rbp +  1048]
    sbb rcx, [r12 + 1048]
    mov r8, [rbp +  1056]
    sbb r8, [r12 + 1056]
    mov r9, [rbp +  1064]
    sbb r9, [r12 + 1064]
    mov r10, [rbp +  1072]
    sbb r10, [r12 + 1072]
    mov r11, [rbp +  1080]
    sbb r11, [r12 + 1080]

    mov rdi, [rbp +  1088]
    sbb rdi, [r12 + 1088]
    mov rsi, [rbp +  1096]
    sbb rsi, [r12 + 1096]
    mov rdx, [rbp +  1104]
    sbb rdx, [r12 + 1104]
    mov rcx, [rbp +  1112]
    sbb rcx, [r12 + 1112]
    mov r8, [rbp +  1120]
    sbb r8, [r12 + 1120]
    mov r9, [rbp +  1128]
    sbb r9, [r12 + 1128]
    mov r10, [rbp +  1136]
    sbb r10, [r12 + 1136]
    mov r11, [rbp +  1144]
    sbb r11, [r12 + 1144]


    setnc al
    movzx rax, al
    neg rax

.macro cswap2, r, m
    xor \r, \m
    and \r, rax
    xor \m, \r
.endm


    cswap2 rdi, [rbp +  1088]
    cswap2 rsi, [rbp +  1096]
    cswap2 rdx, [rbp +  1104]
    cswap2 rcx, [rbp +  1112]
    cswap2 r8, [rbp +  1120]
    cswap2 r9, [rbp +  1128]
    cswap2 r10, [rbp +  1136]
    cswap2 r11, [rbp +  1144]

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

    mov rdi, [rbp +  1024]
    sbb rdi, [r12 + 1024]
    mov rsi, [rbp +  1032]
    sbb rsi, [r12 + 1032]
    mov rdx, [rbp +  1040]
    sbb rdx, [r12 + 1040]
    mov rcx, [rbp +  1048]
    sbb rcx, [r12 + 1048]
    mov r8, [rbp +  1056]
    sbb r8, [r12 + 1056]
    mov r9, [rbp +  1064]
    sbb r9, [r12 + 1064]
    mov r10, [rbp +  1072]
    sbb r10, [r12 + 1072]
    mov r11, [rbp +  1080]
    sbb r11, [r12 + 1080]

    cswap2 rdi, [rbp +  1024]
    cswap2 rsi, [rbp +  1032]
    cswap2 rdx, [rbp +  1040]
    cswap2 rcx, [rbp +  1048]
    cswap2 r8, [rbp +  1056]
    cswap2 r9, [rbp +  1064]
    cswap2 r10, [rbp +  1072]
    cswap2 r11, [rbp +  1080]

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


.global secsidh_internal_9215m85l389_fp_add2
secsidh_internal_9215m85l389_fp_add2:
  mov rdx, rdi

.global secsidh_internal_9215m85l389_fp_add
secsidh_internal_9215m85l389_fp_add:
  push rdi
  call secsidh_internal_9215m85l389_uintbig_add
  pop rdi

  jmp .reduce_once

.global secsidh_internal_9215m85l389_fp_sub2
secsidh_internal_9215m85l389_fp_sub2:
  mov rdx, rdi
  xchg rsi, rdx

.global secsidh_internal_9215m85l389_fp_sub
secsidh_internal_9215m85l389_fp_sub:
  push rdi
  call secsidh_internal_9215m85l389_uintbig_sub
  pop rdi


  neg rax

  sub rsp, pbytes

  mov r8, secsidh_internal_9215m85l389_p@GOTPCREL[rip]
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


/* Montgomery arithmetic */

.global secsidh_internal_9215m85l389_fp_enc
secsidh_internal_9215m85l389_fp_enc:
    mov r8, secsidh_internal_9215m85l389_r_squared_mod_p@GOTPCREL[rip]
    lea rdx, [r8]
    jmp secsidh_internal_9215m85l389_fp_mul

.global secsidh_internal_9215m85l389_fp_dec
secsidh_internal_9215m85l389_fp_dec:
    mov r8, secsidh_internal_9215m85l389_uintbig_1@GOTPCREL[rip]
    lea rdx, [r8]
    jmp secsidh_internal_9215m85l389_fp_mul

.macro add_72x72
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 71
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 72*8], r8
.endm

.macro sub_d_146x144_woc
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
    mov rax, [rdi + 128*8]
    sbb rax, [rsi + 128*8]
    mov [rdi + 128*8], rax
    mov rax, [rdi + 129*8]
    sbb rax, [rsi + 129*8]
    mov [rdi + 129*8], rax
    mov rax, [rdi + 130*8]
    sbb rax, [rsi + 130*8]
    mov [rdi + 130*8], rax
    mov rax, [rdi + 131*8]
    sbb rax, [rsi + 131*8]
    mov [rdi + 131*8], rax
    mov rax, [rdi + 132*8]
    sbb rax, [rsi + 132*8]
    mov [rdi + 132*8], rax
    mov rax, [rdi + 133*8]
    sbb rax, [rsi + 133*8]
    mov [rdi + 133*8], rax
    mov rax, [rdi + 134*8]
    sbb rax, [rsi + 134*8]
    mov [rdi + 134*8], rax
    mov rax, [rdi + 135*8]
    sbb rax, [rsi + 135*8]
    mov [rdi + 135*8], rax
    mov rax, [rdi + 136*8]
    sbb rax, [rsi + 136*8]
    mov [rdi + 136*8], rax
    mov rax, [rdi + 137*8]
    sbb rax, [rsi + 137*8]
    mov [rdi + 137*8], rax
    mov rax, [rdi + 138*8]
    sbb rax, [rsi + 138*8]
    mov [rdi + 138*8], rax
    mov rax, [rdi + 139*8]
    sbb rax, [rsi + 139*8]
    mov [rdi + 139*8], rax
    mov rax, [rdi + 140*8]
    sbb rax, [rsi + 140*8]
    mov [rdi + 140*8], rax
    mov rax, [rdi + 141*8]
    sbb rax, [rsi + 141*8]
    mov [rdi + 141*8], rax
    mov rax, [rdi + 142*8]
    sbb rax, [rsi + 142*8]
    mov [rdi + 142*8], rax
    mov rax, [rdi + 143*8]
    sbb rax, [rsi + 143*8]
    mov [rdi + 143*8], rax
# outro
    mov rax, [rdi + 144*8]
    sbb rax, 0
    mov [rdi + 144*8], rax
    mov rax, [rdi + 145*8]
    sbb rax, 0
    mov [rdi + 145*8], rax
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
    mov rax, [rdi + 128*8]
    sbb rax, [rdx + 128*8]
    mov [rdi + 128*8], rax
    mov rax, [rdi + 129*8]
    sbb rax, [rdx + 129*8]
    mov [rdi + 129*8], rax
    mov rax, [rdi + 130*8]
    sbb rax, [rdx + 130*8]
    mov [rdi + 130*8], rax
    mov rax, [rdi + 131*8]
    sbb rax, [rdx + 131*8]
    mov [rdi + 131*8], rax
    mov rax, [rdi + 132*8]
    sbb rax, [rdx + 132*8]
    mov [rdi + 132*8], rax
    mov rax, [rdi + 133*8]
    sbb rax, [rdx + 133*8]
    mov [rdi + 133*8], rax
    mov rax, [rdi + 134*8]
    sbb rax, [rdx + 134*8]
    mov [rdi + 134*8], rax
    mov rax, [rdi + 135*8]
    sbb rax, [rdx + 135*8]
    mov [rdi + 135*8], rax
    mov rax, [rdi + 136*8]
    sbb rax, [rdx + 136*8]
    mov [rdi + 136*8], rax
    mov rax, [rdi + 137*8]
    sbb rax, [rdx + 137*8]
    mov [rdi + 137*8], rax
    mov rax, [rdi + 138*8]
    sbb rax, [rdx + 138*8]
    mov [rdi + 138*8], rax
    mov rax, [rdi + 139*8]
    sbb rax, [rdx + 139*8]
    mov [rdi + 139*8], rax
    mov rax, [rdi + 140*8]
    sbb rax, [rdx + 140*8]
    mov [rdi + 140*8], rax
    mov rax, [rdi + 141*8]
    sbb rax, [rdx + 141*8]
    mov [rdi + 141*8], rax
    mov rax, [rdi + 142*8]
    sbb rax, [rdx + 142*8]
    mov [rdi + 142*8], rax
    mov rax, [rdi + 143*8]
    sbb rax, [rdx + 143*8]
    mov [rdi + 143*8], rax
# outro
    mov rax, [rdi + 144*8]
    sbb rax, 0
    mov [rdi + 144*8], rax
    mov rax, [rdi + 145*8]
    sbb rax, 0
    mov [rdi + 145*8], rax
.endm

.macro add_146x145
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 145
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*146]
    adc rax, 0
    mov [rdi + 8*146], rax
    mov rax, [rsi + 8*147]
    adc rax, 0
    mov [rdi + 8*147], rax
    mov rax, [rsi + 8*148]
    adc rax, 0
    mov [rdi + 8*148], rax
.endm

.macro add_36x36
# intro
    xor r8, r8
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
    adc r8, 0
    mov [rdi + 36*8], r8
.endm

.macro sub_d_74x72_woc
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
# outro
    mov rax, [rdi + 72*8]
    sbb rax, 0
    mov [rdi + 72*8], rax
    mov rax, [rdi + 73*8]
    sbb rax, 0
    mov [rdi + 73*8], rax
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
# outro
    mov rax, [rdi + 72*8]
    sbb rax, 0
    mov [rdi + 72*8], rax
    mov rax, [rdi + 73*8]
    sbb rax, 0
    mov [rdi + 73*8], rax
.endm

.macro add_74x73
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 73
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*74]
    adc rax, 0
    mov [rdi + 8*74], rax
    mov rax, [rsi + 8*75]
    adc rax, 0
    mov [rdi + 8*75], rax
    mov rax, [rsi + 8*76]
    adc rax, 0
    mov [rdi + 8*76], rax
.endm

.macro add_18x18
# intro
    xor r8, r8
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
    adc r8, 0
    mov [rdi + 18*8], r8
.endm

.macro sub_d_38x36_woc
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
# outro
    mov rax, [rdi + 36*8]
    sbb rax, 0
    mov [rdi + 36*8], rax
    mov rax, [rdi + 37*8]
    sbb rax, 0
    mov [rdi + 37*8], rax
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
# outro
    mov rax, [rdi + 36*8]
    sbb rax, 0
    mov [rdi + 36*8], rax
    mov rax, [rdi + 37*8]
    sbb rax, 0
    mov [rdi + 37*8], rax
.endm

.macro add_38x37
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 37
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*38]
    adc rax, 0
    mov [rdi + 8*38], rax
    mov rax, [rsi + 8*39]
    adc rax, 0
    mov [rdi + 8*39], rax
    mov rax, [rsi + 8*40]
    adc rax, 0
    mov [rdi + 8*40], rax
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
mult_10x10
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

.macro mult_36x36
push    r14
push    r13
lea     r13, [rsi+144]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+144]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 608
mov     rdi, rsp
add_18x18
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+152]
add_18x18
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_18x18
lea     r12, [rbx+288]
mov     rdx, rsp
lea     rsi, [rsp+152]
lea     rdi, [rsp+304]
mult_19x19
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_18x18
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+304]
sub_d_38x36_woc
lea     rdi, [rbx+144]
lea     rdx, [rsp+304]
mov     rsi, rdi
add_38x37
add     rsp, 608
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro add_19x18
# intro
    xor r8, r8
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
    adc r8, 0
    mov [rdi + 8*19], r8
.endm

.macro _sub_d_40x38_woc
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
# outro
    mov rax, [rdi + 36*8]
    sbb rax, 0
    mov [rdi + 36*8], rax
    mov rax, [rdi + 37*8]
    sbb rax, 0
    mov [rdi + 37*8], rax
    mov rax, [rdi + 38*8]
    sbb rax, 0
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, 0
    mov [rdi + 39*8], rax
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
# outro
    mov rax, [rdi + 38*8]
    sbb rax, 0
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, 0
    mov [rdi + 39*8], rax
.endm

.macro add_39x38
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 39
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
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
mult_10x10
lea     r12, [rbx+160]
mov     rdx, rsp
lea     rsi, [rsp+88]
lea     rdi, [rsp+176]
mult_11x11
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_10x10
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

.macro mult_37x37
push    r14
push    r13
lea     r13, [rsi+144]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+144]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 640
mov     rdi, rsp
add_19x18
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+160]
add_19x18
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+288]
mult_18x18
mov     rdx, rsp
lea     rsi, [rsp+160]
lea     rdi, [rsp+320]
mult_20x20
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
mult_19x19
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+320]
_sub_d_40x38_woc
lea     rdi, [rbx+144]
lea     rdx, [rsp+320]
mov     rsi, rdi
add_39x38
add     rsp, 640
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_72x72
push    r14
push    r13
lea     r13, [rsi+288]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+288]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 1184
mov     rdi, rsp
add_36x36
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+296]
add_36x36
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_36x36
lea     r12, [rbx+576]
mov     rdx, rsp
lea     rsi, [rsp+296]
lea     rdi, [rsp+592]
mult_37x37
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_36x36
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+592]
sub_d_74x72_woc
lea     rdi, [rbx+288]
lea     rdx, [rsp+592]
mov     rsi, rdi
add_74x73
add     rsp, 1184
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro add_37x36
# intro
    xor r8, r8
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
    adc r8, 0
    mov [rdi + 8*37], r8
.endm

.macro _sub_d_76x74_woc
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
# outro
    mov rax, [rdi + 72*8]
    sbb rax, 0
    mov [rdi + 72*8], rax
    mov rax, [rdi + 73*8]
    sbb rax, 0
    mov [rdi + 73*8], rax
    mov rax, [rdi + 74*8]
    sbb rax, 0
    mov [rdi + 74*8], rax
    mov rax, [rdi + 75*8]
    sbb rax, 0
    mov [rdi + 75*8], rax
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
# outro
    mov rax, [rdi + 74*8]
    sbb rax, 0
    mov [rdi + 74*8], rax
    mov rax, [rdi + 75*8]
    sbb rax, 0
    mov [rdi + 75*8], rax
.endm

.macro add_75x74
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 75
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
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

.macro add_19x19
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
    adc r8, 0
    mov [rdi + 19*8], r8
.endm

.macro sub_d_40x38_woc
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
# outro
    mov rax, [rdi + 38*8]
    sbb rax, 0
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, 0
    mov [rdi + 39*8], rax
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
# outro
    mov rax, [rdi + 38*8]
    sbb rax, 0
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    sbb rax, 0
    mov [rdi + 39*8], rax
.endm

.macro add_40x39
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 39
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*40]
    adc rax, 0
    mov [rdi + 8*40], rax
    mov rax, [rsi + 8*41]
    adc rax, 0
    mov [rdi + 8*41], rax
    mov rax, [rsi + 8*42]
    adc rax, 0
    mov [rdi + 8*42], rax
.endm

.macro mult_38x38
push    r14
push    r13
lea     r13, [rsi+152]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+152]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 640
mov     rdi, rsp
add_19x19
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+160]
add_19x19
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_19x19
lea     r12, [rbx+304]
mov     rdx, rsp
lea     rsi, [rsp+160]
lea     rdi, [rsp+320]
mult_20x20
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_19x19
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+320]
sub_d_40x38_woc
lea     rdi, [rbx+152]
lea     rdx, [rsp+320]
mov     rsi, rdi
add_40x39
add     rsp, 640
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_73x73
push    r14
push    r13
lea     r13, [rsi+288]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+288]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 1216
mov     rdi, rsp
add_37x36
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+304]
add_37x36
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+576]
mult_36x36
mov     rdx, rsp
lea     rsi, [rsp+304]
lea     rdi, [rsp+608]
mult_38x38
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
mult_37x37
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+608]
_sub_d_76x74_woc
lea     rdi, [rbx+288]
lea     rdx, [rsp+608]
mov     rsi, rdi
add_75x74
add     rsp, 1216
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_144x144
push    r14
push    r13
lea     r13, [rsi+576]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+576]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 2336
mov     rdi, rsp
add_72x72
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+584]
add_72x72
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_72x72
lea     r12, [rbx+1152]
mov     rdx, rsp
lea     rsi, [rsp+584]
lea     rdi, [rsp+1168]
mult_73x73
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_72x72
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+1168]
sub_d_146x144_woc
lea     rdi, [rbx+576]
lea     rdx, [rsp+1168]
mov     rsi, rdi
add_146x145
add     rsp, 2336
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm




.global secsidh_internal_9215m85l389_fp_mult_144x144
secsidh_internal_9215m85l389_fp_mult_144x144:
    mult_144x144
    ret

.global secsidh_internal_9215m85l389_fp_cmov
secsidh_internal_9215m85l389_fp_cmov:
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

.global secsidh_internal_9215m85l389_fp_random
secsidh_internal_9215m85l389_fp_random:

    push rdi
    mov rsi, pbytes
    call randombytes
    pop rdi
    mov rax, 1
    shl rax, (pbits % 64)
    dec rax
    and [rdi + pbytes-8], rax
    mov r8, secsidh_internal_9215m85l389_p@GOTPCREL[rip]
    .set k, plimbs-1
    .rept plimbs
        mov rax, [r8 + 8*k]
        cmp [rdi + 8*k], rax
        jge secsidh_internal_9215m85l389_fp_random
        jl 0f
        .set k, k-1
    .endr
    0:
    ret

.macro add_43x42
# intro
    xor r8, r8
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
    adc r8, 0
    mov [rdi + 8*43], r8
.endm

.macro _sub_d_88x86_woc
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
# outro
    mov rax, [rdi + 84*8]
    sbb rax, 0
    mov [rdi + 84*8], rax
    mov rax, [rdi + 85*8]
    sbb rax, 0
    mov [rdi + 85*8], rax
    mov rax, [rdi + 86*8]
    sbb rax, 0
    mov [rdi + 86*8], rax
    mov rax, [rdi + 87*8]
    sbb rax, 0
    mov [rdi + 87*8], rax
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
# outro
    mov rax, [rdi + 86*8]
    sbb rax, 0
    mov [rdi + 86*8], rax
    mov rax, [rdi + 87*8]
    sbb rax, 0
    mov [rdi + 87*8], rax
.endm

.macro add_87x86
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 87
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
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
.endm

.macro add_21x21
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 20
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 21*8], r8
.endm

.macro sub_d_44x42_woc
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
# outro
    mov rax, [rdi + 42*8]
    sbb rax, 0
    mov [rdi + 42*8], rax
    mov rax, [rdi + 43*8]
    sbb rax, 0
    mov [rdi + 43*8], rax
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
# outro
    mov rax, [rdi + 42*8]
    sbb rax, 0
    mov [rdi + 42*8], rax
    mov rax, [rdi + 43*8]
    sbb rax, 0
    mov [rdi + 43*8], rax
.endm

.macro add_44x43
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 43
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
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
add_12x11_
add     rsp, 192
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
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

.macro add_13x12_
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

.macro mult_11x11_
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
add_13x12_
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
mult_11x11_
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

.macro add_11x11
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 10
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 11*8], r8
.endm

.macro sub_d_24x22_woc
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
# outro
    mov rax, [rdi + 22*8]
    sbb rax, 0
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, 0
    mov [rdi + 23*8], rax
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
# outro
    mov rax, [rdi + 22*8]
    sbb rax, 0
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, 0
    mov [rdi + 23*8], rax
.endm

.macro add_24x23
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
    mov rax, [rsi + 8*42]
    adc rax, 0
    mov [rdi + 8*42], rax
    mov rax, [rsi + 8*43]
    adc rax, 0
    mov [rdi + 8*43], rax
.endm

.macro mult_22x22
push    r14
push    r13
lea     r13, [rsi+88]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+88]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 384
mov     rdi, rsp
add_11x11
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+96]
add_11x11
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_11x11_
lea     r12, [rbx+176]
mov     rdx, rsp
lea     rsi, [rsp+96]
lea     rdi, [rsp+192]
mult_12x12
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_11x11_
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+192]
sub_d_24x22_woc
lea     rdi, [rbx+88]
lea     rdx, [rsp+192]
mov     rsi, rdi
add_24x23
add     rsp, 384
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_42x42
push    r14
push    r13
lea     r13, [rsi+168]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+168]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 704
mov     rdi, rsp
add_21x21
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+176]
add_21x21
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_21x21
lea     r12, [rbx+336]
mov     rdx, rsp
lea     rsi, [rsp+176]
lea     rdi, [rsp+352]
mult_22x22
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_21x21
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+352]
sub_d_44x42_woc
lea     rdi, [rbx+168]
lea     rdx, [rsp+352]
mov     rsi, rdi
add_44x43
add     rsp, 704
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro add_22x22
# intro
    xor r8, r8
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
    adc r8, 0
    mov [rdi + 22*8], r8
.endm

.macro sub_d_46x44_woc
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
# outro
    mov rax, [rdi + 44*8]
    sbb rax, 0
    mov [rdi + 44*8], rax
    mov rax, [rdi + 45*8]
    sbb rax, 0
    mov [rdi + 45*8], rax
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
# outro
    mov rax, [rdi + 44*8]
    sbb rax, 0
    mov [rdi + 44*8], rax
    mov rax, [rdi + 45*8]
    sbb rax, 0
    mov [rdi + 45*8], rax
.endm

.macro add_46x45
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 45
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
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
.endm

.macro add_12x11_2
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 10
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*11]
    adc rax, 0
    mov [rdi + 8*11], rax
    adc r8, 0
    mov [rdi + 8*12], r8
.endm

.macro _sub_d_26x24_woc
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
# outro
    mov rax, [rdi + 22*8]
    sbb rax, 0
    mov [rdi + 22*8], rax
    mov rax, [rdi + 23*8]
    sbb rax, 0
    mov [rdi + 23*8], rax
    mov rax, [rdi + 24*8]
    sbb rax, 0
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, 0
    mov [rdi + 25*8], rax
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
# outro
    mov rax, [rdi + 24*8]
    sbb rax, 0
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, 0
    mov [rdi + 25*8], rax
.endm

.macro add_25x24
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 25
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
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
.endm

.macro add_7x6
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
    mov rax, [rsi + 8*6]
    adc rax, 0
    mov [rdi + 8*6], rax
    adc r8, 0
    mov [rdi + 8*7], r8
.endm

.macro _sub_d_16x14_woc
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
# outro
    mov rax, [rdi + 12*8]
    sbb rax, 0
    mov [rdi + 12*8], rax
    mov rax, [rdi + 13*8]
    sbb rax, 0
    mov [rdi + 13*8], rax
    mov rax, [rdi + 14*8]
    sbb rax, 0
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, 0
    mov [rdi + 15*8], rax
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
# outro
    mov rax, [rdi + 14*8]
    sbb rax, 0
    mov [rdi + 14*8], rax
    mov rax, [rdi + 15*8]
    sbb rax, 0
    mov [rdi + 15*8], rax
.endm

.macro add_15x14
# intro
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
    mov rax, [rsi + 8*24]
    adc rax, 0
    mov [rdi + 8*24], rax
    mov rax, [rsi + 8*25]
    adc rax, 0
    mov [rdi + 8*25], rax
.endm

.macro mult_13x13
push    r14
push    r13
lea     r13, [rsi+48]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+48]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 256
mov     rdi, rsp
add_7x6
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+64]
add_7x6
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+96]
mult_6x6
mov     rdx, rsp
lea     rsi, [rsp+64]
lea     rdi, [rsp+128]
mult_8x8
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
mult_7x7
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+128]
_sub_d_16x14_woc
lea     rdi, [rbx+48]
lea     rdx, [rsp+128]
mov     rsi, rdi
add_15x14
add     rsp, 256
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_23x23
push    r14
push    r13
lea     r13, [rsi+88]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+88]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 416
mov     rdi, rsp
add_12x11_2
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+104]
add_12x11_2
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+176]
mult_11x11_
mov     rdx, rsp
lea     rsi, [rsp+104]
lea     rdi, [rsp+208]
mult_13x13
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
mult_12x12
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+208]
_sub_d_26x24_woc
lea     rdi, [rbx+88]
lea     rdx, [rsp+208]
mov     rsi, rdi
add_25x24
add     rsp, 416
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_44x44
push    r14
push    r13
lea     r13, [rsi+176]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+176]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 736
mov     rdi, rsp
add_22x22
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+184]
add_22x22
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_22x22
lea     r12, [rbx+352]
mov     rdx, rsp
lea     rsi, [rsp+184]
lea     rdi, [rsp+368]
mult_23x23
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_22x22
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+368]
sub_d_46x44_woc
lea     rdi, [rbx+176]
lea     rdx, [rsp+368]
mov     rsi, rdi
add_46x45
add     rsp, 736
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro add_22x21_
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 20
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*21]
    adc rax, 0
    mov [rdi + 8*21], rax
    adc r8, 0
    mov [rdi + 8*22], r8
.endm

.macro _sub_d_46x44_woc
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
# outro
    mov rax, [rdi + 42*8]
    sbb rax, 0
    mov [rdi + 42*8], rax
    mov rax, [rdi + 43*8]
    sbb rax, 0
    mov [rdi + 43*8], rax
    mov rax, [rdi + 44*8]
    sbb rax, 0
    mov [rdi + 44*8], rax
    mov rax, [rdi + 45*8]
    sbb rax, 0
    mov [rdi + 45*8], rax
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
# outro
    mov rax, [rdi + 44*8]
    sbb rax, 0
    mov [rdi + 44*8], rax
    mov rax, [rdi + 45*8]
    sbb rax, 0
    mov [rdi + 45*8], rax
.endm

.macro add_45x44
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 45
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
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
.endm

.macro mult_43x43
push    r14
push    r13
lea     r13, [rsi+168]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+168]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 736
mov     rdi, rsp
add_22x21_
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+184]
add_22x21_
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+336]
mult_21x21
mov     rdx, rsp
lea     rsi, [rsp+184]
lea     rdi, [rsp+368]
mult_23x23
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
mult_22x22
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+368]
_sub_d_46x44_woc
lea     rdi, [rbx+168]
lea     rdx, [rsp+368]
mov     rsi, rdi
add_45x44
add     rsp, 736
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.global secsidh_internal_9215m85l389_mult_redc
secsidh_internal_9215m85l389_mult_redc:
push    r14
push    r13
lea     r13, [rsi+336]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+336]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 1408
mov     rdi, rsp
add_43x42
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+352]
add_43x42
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+672]
mult_42x42
mov     rdx, rsp
lea     rsi, [rsp+352]
lea     rdi, [rsp+704]
mult_44x44
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
mult_43x43
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+704]
_sub_d_88x86_woc
lea     rdi, [rbx+336]
lea     rdx, [rsp+704]
mov     rsi, rdi
add_87x86
add     rsp, 1408
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
ret

.global secsidh_internal_9215m85l389_add_redc
secsidh_internal_9215m85l389_add_redc:
    mov rax, [rsi +  0]
    add rax, [rdx +  0]
    mov [rdi +  0], rax
    .set k, 1
    .rept 202
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
    setc al
    movzx rax, al
    ret

.global secsidh_internal_9215m85l389_add_redc_final
secsidh_internal_9215m85l389_add_redc_final:
    mov rax, [rsi +  0]
    add rax, [rdx +  0]
    mov [rdi +  0], rax
    .set k, 1
    .rept 143
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
    setc al
    movzx rax, al
    
    ret

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








.macro sqr_11x11
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
mov     rdx, 5
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+80]
call sqr
mov     rdx, 7
mov     rsi, rsp
lea     rdi, [rsp+112]
call sqr
mov     rdx, 6
mov     rsi, r13
mov     rdi, rbp
call sqr
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

.macro sqr_19x19
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
mov     rdx, 9
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+144]
call sqr
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+176]
sqr_11x11
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
sqr_10x10
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

.macro sqr_36x36
push    r14
push    r13
lea     r13, [rsi+144]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+144]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 608
mov     rdi, rsp
add_18x18
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
sqr_18x18
lea     r12, [rbx+288]
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+304]
sqr_19x19
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
sqr_18x18
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+304]
sub_d_38x36_woc
lea     rdi, [rbx+144]
lea     rdx, [rsp+304]
mov     rsi, rdi
add_38x37
add     rsp, 608
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm







.macro sqr_20x20
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
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
sqr_10x10
lea     r12, [rbx+160]
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+176]
sqr_11x11
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
sqr_10x10
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

.macro sqr_37x37
push    r14
push    r13
lea     r13, [rsi+144]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+144]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 640
mov     rdi, rsp
add_19x18
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+288]
sqr_18x18
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+320]
sqr_20x20
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
sqr_19x19
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+320]
_sub_d_40x38_woc
lea     rdi, [rbx+144]
lea     rdx, [rsp+320]
mov     rsi, rdi
add_39x38
add     rsp, 640
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro sqr_72x72
push    r14
push    r13
lea     r13, [rsi+288]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+288]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 1184
mov     rdi, rsp
add_36x36
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
sqr_36x36
lea     r12, [rbx+576]
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+592]
sqr_37x37
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
sqr_36x36
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+592]
sub_d_74x72_woc
lea     rdi, [rbx+288]
lea     rdx, [rsp+592]
mov     rsi, rdi
add_74x73
add     rsp, 1184
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm







.macro sqr_38x38
push    r14
push    r13
lea     r13, [rsi+152]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+152]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 640
mov     rdi, rsp
add_19x19
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
sqr_19x19
lea     r12, [rbx+304]
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+320]
sqr_20x20
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
sqr_19x19
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+320]
sub_d_40x38_woc
lea     rdi, [rbx+152]
lea     rdx, [rsp+320]
mov     rsi, rdi
add_40x39
add     rsp, 640
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro sqr_73x73
push    r14
push    r13
lea     r13, [rsi+288]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+288]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 1216
mov     rdi, rsp
add_37x36
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+576]
sqr_36x36
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+608]
sqr_38x38
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
sqr_37x37
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+608]
_sub_d_76x74_woc
lea     rdi, [rbx+288]
lea     rdx, [rsp+608]
mov     rsi, rdi
add_75x74
add     rsp, 1216
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro sqr_144x144
push    r14
push    r13
lea     r13, [rsi+576]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+576]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 2336
mov     rdi, rsp
add_72x72
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
sqr_72x72
lea     r12, [rbx+1152]
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+1168]
sqr_73x73
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
sqr_72x72
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+1168]
sub_d_146x144_woc
lea     rdi, [rbx+576]
lea     rdx, [rsp+1168]
mov     rsi, rdi
add_146x145
add     rsp, 2336
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.global secsidh_internal_9215m85l389_fp_squaring
secsidh_internal_9215m85l389_fp_squaring:
    sqr_144x144
    ret
