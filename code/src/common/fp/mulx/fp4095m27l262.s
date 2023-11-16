.intel_syntax noprefix

.section .rodata

.set pbits,4095
.set pbytes,512
.set plimbs,64

.global secsidh_internal_4095m27l262_p
secsidh_internal_4095m27l262_p:
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xBABB857F53B45F38 
.quad 0xA0FA17C9F017AAA4,0xCA367EE9DCA136B3,0x9825FE450B3306F0,0x7598BC71B003BE60 
.quad 0x75D9C93D2F88118F,0x25FAB108318489EF,0xB853C0B81A59A320,0xA68AC2FAA6576BD0 
.quad 0x6FE6DE6B60B8DD73,0xBE1BA97A296DF474,0x90F3D594E0BB1B1A,0x50845534C663819 
.quad 0x5DA43F39BA465F9D,0x67A79C055011CD6C,0x10AABAC0E83F00E0,0x55B21EF174813BB 
.quad 0xB32A5B550F65F8E8,0x6C8A637162557E06,0x184398D9CE7B8ED0,0xF6389D60A659DBF9 
.quad 0x4898DDCC4C6451B1,0xD34D57E179DBAA87,0xB300098DDDD2A53D,0x4D83B4D248CD8DC8 
.quad 0xA999042BBABBA293,0x8E37AAC3FD7145B5,0x896199C58C6CDEE2,0x5D499CA3173C69A1 
.quad 0x324B4917CB3C3BFA,0xF83956A2F7A46669,0xE0CA5CB997EAFB95,0x16C0EB2AAF99D121 
.quad 0xAF95A6D3DA6A40FF,0x8EDE5A2EF574F91F,0xF17F15465794272,0x411889A889DBBAF2 



.global secsidh_internal_4095m27l262_inv_min_p_mod_r
secsidh_internal_4095m27l262_inv_min_p_mod_r:
.quad 0x1,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0xBABB857F53B45F39 
.quad 0xA0FA17C9F017AAA4,0xCA367EE9DCA136B3,0x9825FE450B3306F0,0x7598BC71B003BE60 
.quad 0x75D9C93D2F88118F,0x25FAB108318489EF,0xB853C0B81A59A320,0xA68AC2FAA6576BD0 
.quad 0x6FE6DE6B60B8DD73,0xBE1BA97A296DF474,0x90F3D594E0BB1B1A,0x50845534C663819 
.quad 0x5DA43F39BA465F9D,0x67A79C055011CD6C,0x10AABAC0E83F00E0,0x55B21EF174813BB 
.quad 0xB32A5B550F65F8E8,0x6C8A637162557E06,0x184398D9CE7B8ED0,0xF6389D60A659DBF9 
.quad 0x4898DDCC4C6451B1,0xD34D57E179DBAA87,0xB300098DDDD2A53D,0x4D83B4D248CD8DC8 
.quad 0xA999042BBABBA293,0x8E37AAC3FD7145B5,0xDEDC3288E003993,0x28FCCC134500ED9 
.quad 0x99237E427A9541FF,0x979318575D8DA63E,0xCD99020B3B318AB8,0xF038B83232D3D40A 
.quad 0x8B6DB111DCEFF4B8,0x9204380C67BBB04,0x4DC7D4B3C7C3F798,0x76E2C34D5BDB8598 



.global secsidh_internal_4095m27l262_fp_0
secsidh_internal_4095m27l262_fp_0:
.zero pbytes


.global secsidh_internal_4095m27l262_fp_1
secsidh_internal_4095m27l262_fp_1:
.quad 0x3,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0xCFCD6F8204E2E255 
.quad 0x1D11B8A22FB90011,0xA15C83426A1C5BE5,0x378E0530DE66EB2D,0x9F35CAAAEFF4C4DE 
.quad 0x9E72A4487167CB51,0x8E0FECE76B726231,0xD704BDD7B0F3169F,0xC5FB7100CF9BC8D 
.quad 0xB04B64BDDDD567A5,0xC5AD039183B622A2,0x4D247F415DCEAEAF,0xF0E730061ACD57B3 
.quad 0xE7134252D12CE128,0xC9092BF00FCA97BA,0xCDFFCFBD4742FD5E,0xEFEE9A32BA27C4CE 
.quad 0xE680EE00D1CE1547,0xBA60D5ABD8FF85EB,0xB7353572948D538E,0x1D5627DE0CF26C14 
.quad 0x2635669B1AD30AEA,0x8617F85B926D006A,0xE6FFE35666881046,0x1774E189259756A5 
.quad 0x334F37CCFCD1846,0x5558FFB407AC2EDF,0x63DB32AF5AB96358,0xE8232A16BA4AC31B 
.quad 0x691E24B89E4B4C10,0x1753FC171912CCC4,0x5DA0E9D3383F0D3E,0xBBBD3E7FF1328C9A 
.quad 0xF13F0B8470C13D02,0x5364F1731FA114A0,0xD2B82C02CF9438A8,0x3CB66306626CCF29 



.global secsidh_internal_4095m27l262_fp_2
secsidh_internal_4095m27l262_fp_2:
.quad 0x7,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0xE4DF5984B6116571 
.quad 0x9929597A6F5A557E,0x7882879AF7978116,0xD6F60C1CB19ACF6A,0xC8D2D8E42FE5CB5B 
.quad 0xC70B7F53B3478513,0xF62528C6A5603A73,0xF5B5BAF7478C8A1E,0x7234AB25739C0D4A 
.quad 0xF0AFEB105AF1F1D6,0xCD3E5DA8DDFE50D0,0x95528EDDAE24244,0xDCC61AB8E934774D 
.quad 0x7082456BE81362B4,0x2A6ABBDACF836209,0x8B54E4B9A646F9DD,0xDA8212765D0775E2 
.quad 0x19D780AC943631A7,0x83747E64FA98DD1,0x5626D20B5A9F184D,0x4473B25B738AFC30 
.quad 0x3D1EF69E941C422,0x38E298D5AAFE564D,0x1AFFBD1EEF3D7B4F,0xE1660E4002611F83 
.quad 0x5CD0E2CDE4DE8DF8,0x1C7A54A411E71808,0x3E54CB992905E7CE,0x72FCB78A5D591C95 
.quad 0x9FF10059715A5C27,0x366EA18B3A81331F,0xDA7776ECD8931EE6,0x60B991D532CB4812 
.quad 0x32E8703507183906,0x17EB88B749CD3022,0x965866B139AF2EDE,0x38543C643AFDE361 



.global secsidh_internal_4095m27l262_r_squared_mod_p 
secsidh_internal_4095m27l262_r_squared_mod_p :
.quad 0xCA9664131ABC0203,0xBBACA9841048F533,0x8EABAAFDB1A5302C,0x8717BB74DAE9C8CC 
.quad 0xDB09FDAD266C9FE3,0x87FE292E7623BBAC,0xC4608F8CDD193747,0x29756590B837429E 
.quad 0x25E069B05DF9158B,0x81B88A6E00EB97D7,0xFEB41576DF0529FE,0x75DCB5D79F31D7BD 
.quad 0x4ECF835F54A00B39,0x12BDF9E28ADE3FA0,0xBE1FC6DF5625BA99,0x387429A496E48929 
.quad 0x26C1594875AAEC54,0xF55991263DCDBF72,0x824598E7E40BF31C,0xCF0D0408B41080C8 
.quad 0x6E8ED3548F1C53E3,0xE89C93835E6CB9A7,0xB8F73FC08D85EEAA,0x16813517F4D53663 
.quad 0xBDABAD4E8AD094D7,0xC8F4E4BC812987AB,0xF2B12B6984FB1324,0xDCF1220EFBBDF5BF 
.quad 0xD4ADE1120C73CECE,0xFF966A2C8A47A0CC,0x90B723888F342AB4,0xBBFFE44E9B103534 
.quad 0x7A6882E784FAFFFD,0x2032BA8B44CD3D68,0xE59012732A0507CE,0x41030A597B14046D 
.quad 0x70338B98F4FD3DF5,0xF9DBB4D3531E71A0,0xE09D4FD229D810B6,0x1F73C8F1FBBCF3F4 
.quad 0xBDA5F434EDB6FD3B,0x138E4F816D09F0BE,0x4D29DC6B345CC58F,0x48365C1D1C10AD63 
.quad 0x8799389318D2A8C2,0xDC983E5063104657,0x1BCDA74009C0B95A,0x46AC0180E7080A18 
.quad 0x1ECE665A556B2D85,0xBE187F58C05BF423,0x137C3D745FCF8564,0xE94225E253BCC1FF 
.quad 0xE18A90228B1C625E,0xED4C0E96616F842B,0x79EFB7D08707F5AF,0xB0FC6FF8828CCFD0 
.quad 0x5459C35AFF8A0F53,0x55F5A04678F556B0,0xD8CBCC2A34884A9C,0xB64BC960DEA1137F 
.quad 0x276AA6537115111B,0xE8F7B5C15A55D484,0x8CB566E62B90747C,0x2B202E35F35F4C36 



.global secsidh_internal_4095m27l262_p_minus_2
secsidh_internal_4095m27l262_p_minus_2:
.quad 0xFFFFFFFFFFFFFFFD,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xBABB857F53B45F38 
.quad 0xA0FA17C9F017AAA4,0xCA367EE9DCA136B3,0x9825FE450B3306F0,0x7598BC71B003BE60 
.quad 0x75D9C93D2F88118F,0x25FAB108318489EF,0xB853C0B81A59A320,0xA68AC2FAA6576BD0 
.quad 0x6FE6DE6B60B8DD73,0xBE1BA97A296DF474,0x90F3D594E0BB1B1A,0x50845534C663819 
.quad 0x5DA43F39BA465F9D,0x67A79C055011CD6C,0x10AABAC0E83F00E0,0x55B21EF174813BB 
.quad 0xB32A5B550F65F8E8,0x6C8A637162557E06,0x184398D9CE7B8ED0,0xF6389D60A659DBF9 
.quad 0x4898DDCC4C6451B1,0xD34D57E179DBAA87,0xB300098DDDD2A53D,0x4D83B4D248CD8DC8 
.quad 0xA999042BBABBA293,0x8E37AAC3FD7145B5,0x896199C58C6CDEE2,0x5D499CA3173C69A1 
.quad 0x324B4917CB3C3BFA,0xF83956A2F7A46669,0xE0CA5CB997EAFB95,0x16C0EB2AAF99D121 
.quad 0xAF95A6D3DA6A40FF,0x8EDE5A2EF574F91F,0xF17F15465794272,0x411889A889DBBAF2 



.global secsidh_internal_4095m27l262_p_minus_1_halves
secsidh_internal_4095m27l262_p_minus_1_halves:
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF 
.quad 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0x7FFFFFFFFFFFFFFF,0x5D5DC2BFA9DA2F9C 
.quad 0xD07D0BE4F80BD552,0x651B3F74EE509B59,0x4C12FF2285998378,0xBACC5E38D801DF30 
.quad 0xBAECE49E97C408C7,0x12FD588418C244F7,0x5C29E05C0D2CD190,0xD345617D532BB5E8 
.quad 0x37F36F35B05C6EB9,0x5F0DD4BD14B6FA3A,0xC879EACA705D8D8D,0x828422A9A6331C0C 
.quad 0x2ED21F9CDD232FCE,0x33D3CE02A808E6B6,0x88555D60741F8070,0x2AD90F78BA409DD 
.quad 0x59952DAA87B2FC74,0x364531B8B12ABF03,0x8C21CC6CE73DC768,0xFB1C4EB0532CEDFC 
.quad 0xA44C6EE6263228D8,0xE9A6ABF0BCEDD543,0x598004C6EEE9529E,0xA6C1DA692466C6E4 
.quad 0xD4CC8215DD5DD149,0x471BD561FEB8A2DA,0xC4B0CCE2C6366F71,0x2EA4CE518B9E34D0 
.quad 0x9925A48BE59E1DFD,0xFC1CAB517BD23334,0xF0652E5CCBF57DCA,0x8B60759557CCE890 
.quad 0xD7CAD369ED35207F,0x476F2D177ABA7C8F,0x78BF8AA32BCA139,0x208C44D444EDDD79 

.section .text

.p2align 4,,15

.global secsidh_internal_4095m27l262_fp_copy
secsidh_internal_4095m27l262_fp_copy:
    cld
    mov rcx, plimbs
    rep movsq
    ret

.global secsidh_internal_4095m27l262_fp_cswap
secsidh_internal_4095m27l262_fp_cswap:
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

.global secsidh_internal_4095m27l262_fp_cmov
secsidh_internal_4095m27l262_fp_cmov:
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

.reduce_once:
    push rbp
    push r12
    push r13
    mov rbp, rdi
    mov r12, secsidh_internal_4095m27l262_p@GOTPCREL[rip]

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


    setnc al
    movzx rax, al
    neg rax

.macro cswap2, r, m
    xor \r, \m
    and \r, rax
    xor \m, \r
.endm


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


.global secsidh_internal_4095m27l262_fp_add2
secsidh_internal_4095m27l262_fp_add2:
  mov rdx, rdi

.global secsidh_internal_4095m27l262_fp_add
secsidh_internal_4095m27l262_fp_add:
  push rdi
  call secsidh_internal_4095m27l262_uintbig_add
  pop rdi

  jmp .reduce_once

.global secsidh_internal_4095m27l262_fp_sub2
secsidh_internal_4095m27l262_fp_sub2:
  mov rdx, rdi
  xchg rsi, rdx

.global secsidh_internal_4095m27l262_fp_sub
secsidh_internal_4095m27l262_fp_sub:
  push rdi
  call secsidh_internal_4095m27l262_uintbig_sub
  pop rdi


  neg rax

  sub rsp, pbytes

  mov r8, secsidh_internal_4095m27l262_p@GOTPCREL[rip]
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

.global secsidh_internal_4095m27l262_fp_enc
secsidh_internal_4095m27l262_fp_enc:
    mov r8, secsidh_internal_4095m27l262_r_squared_mod_p@GOTPCREL[rip]
    lea rdx, [r8]
    jmp secsidh_internal_4095m27l262_fp_mul

.global secsidh_internal_4095m27l262_fp_dec
secsidh_internal_4095m27l262_fp_dec:
    mov r8, secsidh_internal_4095m27l262_uintbig_1@GOTPCREL[rip]
    lea rdx, [r8]
    jmp secsidh_internal_4095m27l262_fp_mul



.global secsidh_internal_4095m27l262_fp_mul2
secsidh_internal_4095m27l262_fp_mul2:
  mov rdx, rdi
.global secsidh_internal_4095m27l262_fp_mul
secsidh_internal_4095m27l262_fp_mul:
  push rbp
  push rbx
  push r14

  sub rsp, 528
  mov [rsp+ 520],rdi
  mov rdi,rsi
  mov rsi,rdx


  xor rax,rax
  mov [rsp+0],rax
  mov [rsp+8],rax
  mov [rsp+16],rax
  mov [rsp+24],rax
  mov [rsp+32],rax
  mov [rsp+40],rax
  mov [rsp+48],rax
  mov [rsp+56],rax
  mov [rsp+64],rax
  mov [rsp+72],rax
  mov [rsp+80],rax
  mov [rsp+88],rax
  mov [rsp+96],rax
  mov [rsp+104],rax
  mov [rsp+112],rax
  mov [rsp+120],rax
  mov [rsp+128],rax
  mov [rsp+136],rax
  mov [rsp+144],rax
  mov [rsp+152],rax
  mov [rsp+160],rax
  mov [rsp+168],rax
  mov [rsp+176],rax
  mov [rsp+184],rax
  mov [rsp+192],rax
  mov [rsp+200],rax
  mov [rsp+208],rax
  mov [rsp+216],rax
  mov [rsp+224],rax
  mov [rsp+232],rax
  mov [rsp+240],rax
  mov [rsp+248],rax
  mov [rsp+256],rax
  mov [rsp+264],rax
  mov [rsp+272],rax
  mov [rsp+280],rax
  mov [rsp+288],rax
  mov [rsp+296],rax
  mov [rsp+304],rax
  mov [rsp+312],rax
  mov [rsp+320],rax
  mov [rsp+328],rax
  mov [rsp+336],rax
  mov [rsp+344],rax
  mov [rsp+352],rax
  mov [rsp+360],rax
  mov [rsp+368],rax
  mov [rsp+376],rax
  mov [rsp+384],rax
  mov [rsp+392],rax
  mov [rsp+400],rax
  mov [rsp+408],rax
  mov [rsp+416],rax
  mov [rsp+424],rax
  mov [rsp+432],rax
  mov [rsp+440],rax
  mov [rsp+448],rax
  mov [rsp+456],rax
  mov [rsp+464],rax
  mov [rsp+472],rax
  mov [rsp+480],rax
  mov [rsp+488],rax
  mov [rsp+496],rax
  mov [rsp+504],rax
  mov [rsp+512],rax


.macro MULSTEP, k, I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31,I32,I33,I34,I35,I36,I37,I38,I39,I40,I41,I42,I43,I44,I45,I46,I47,I48,I49,I50,I51,I52,I53,I54,I55,I56,I57,I58,I59,I60,I61,I62,I63,I64

    mov r11,[rsp+\I0]
    mov rdx, [rsi +  0]
    mulx rcx, rdx, [rdi + 8*\k]
    add rdx, r11
    mov rax, secsidh_internal_4095m27l262_inv_min_p_mod_r@GOTPCREL[rip]
    mulx rcx, rdx, [rax]

    xor rax, rax /* clear flags */


    mov r14, secsidh_internal_4095m27l262_p@GOTPCREL[rip]
    mulx rbx, rax, [r14]
    adox r11, rax
    mov [rsp+\I0], r11

    mov r11,[rsp+\I1]
    mulx rcx, rax, [r14 + 8]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I1],r11

    mov r11,[rsp+\I2]
    mulx rbx, rax, [r14 + 16]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I2],r11

    mov r11,[rsp+\I3]
    mulx rcx, rax, [r14 + 24]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I3],r11

    mov r11,[rsp+\I4]
    mulx rbx, rax, [r14 + 32]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I4],r11

    mov r11,[rsp+\I5]
    mulx rcx, rax, [r14 + 40]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I5],r11

    mov r11,[rsp+\I6]
    mulx rbx, rax, [r14 + 48]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I6],r11

    mov r11,[rsp+\I7]
    mulx rcx, rax, [r14 + 56]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I7],r11

    mov r11,[rsp+\I8]
    mulx rbx, rax, [r14 + 64]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I8],r11

    mov r11,[rsp+\I9]
    mulx rcx, rax, [r14 + 72]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I9],r11

    mov r11,[rsp+\I10]
    mulx rbx, rax, [r14 + 80]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I10],r11

    mov r11,[rsp+\I11]
    mulx rcx, rax, [r14 + 88]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I11],r11

    mov r11,[rsp+\I12]
    mulx rbx, rax, [r14 + 96]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I12],r11

    mov r11,[rsp+\I13]
    mulx rcx, rax, [r14 + 104]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I13],r11

    mov r11,[rsp+\I14]
    mulx rbx, rax, [r14 + 112]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I14],r11

    mov r11,[rsp+\I15]
    mulx rcx, rax, [r14 + 120]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I15],r11

    mov r11,[rsp+\I16]
    mulx rbx, rax, [r14 + 128]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I16],r11

    mov r11,[rsp+\I17]
    mulx rcx, rax, [r14 + 136]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I17],r11

    mov r11,[rsp+\I18]
    mulx rbx, rax, [r14 + 144]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I18],r11

    mov r11,[rsp+\I19]
    mulx rcx, rax, [r14 + 152]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I19],r11

    mov r11,[rsp+\I20]
    mulx rbx, rax, [r14 + 160]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I20],r11

    mov r11,[rsp+\I21]
    mulx rcx, rax, [r14 + 168]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I21],r11

    mov r11,[rsp+\I22]
    mulx rbx, rax, [r14 + 176]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I22],r11

    mov r11,[rsp+\I23]
    mulx rcx, rax, [r14 + 184]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I23],r11

    mov r11,[rsp+\I24]
    mulx rbx, rax, [r14 + 192]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I24],r11

    mov r11,[rsp+\I25]
    mulx rcx, rax, [r14 + 200]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I25],r11

    mov r11,[rsp+\I26]
    mulx rbx, rax, [r14 + 208]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I26],r11

    mov r11,[rsp+\I27]
    mulx rcx, rax, [r14 + 216]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I27],r11

    mov r11,[rsp+\I28]
    mulx rbx, rax, [r14 + 224]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I28],r11

    mov r11,[rsp+\I29]
    mulx rcx, rax, [r14 + 232]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I29],r11

    mov r11,[rsp+\I30]
    mulx rbx, rax, [r14 + 240]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I30],r11

    mov r11,[rsp+\I31]
    mulx rcx, rax, [r14 + 248]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I31],r11

    mov r11,[rsp+\I32]
    mulx rbx, rax, [r14 + 256]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I32],r11

    mov r11,[rsp+\I33]
    mulx rcx, rax, [r14 + 264]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I33],r11

    mov r11,[rsp+\I34]
    mulx rbx, rax, [r14 + 272]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I34],r11

    mov r11,[rsp+\I35]
    mulx rcx, rax, [r14 + 280]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I35],r11

    mov r11,[rsp+\I36]
    mulx rbx, rax, [r14 + 288]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I36],r11

    mov r11,[rsp+\I37]
    mulx rcx, rax, [r14 + 296]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I37],r11

    mov r11,[rsp+\I38]
    mulx rbx, rax, [r14 + 304]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I38],r11

    mov r11,[rsp+\I39]
    mulx rcx, rax, [r14 + 312]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I39],r11

    mov r11,[rsp+\I40]
    mulx rbx, rax, [r14 + 320]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I40],r11

    mov r11,[rsp+\I41]
    mulx rcx, rax, [r14 + 328]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I41],r11

    mov r11,[rsp+\I42]
    mulx rbx, rax, [r14 + 336]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I42],r11

    mov r11,[rsp+\I43]
    mulx rcx, rax, [r14 + 344]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I43],r11

    mov r11,[rsp+\I44]
    mulx rbx, rax, [r14 + 352]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I44],r11

    mov r11,[rsp+\I45]
    mulx rcx, rax, [r14 + 360]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I45],r11

    mov r11,[rsp+\I46]
    mulx rbx, rax, [r14 + 368]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I46],r11

    mov r11,[rsp+\I47]
    mulx rcx, rax, [r14 + 376]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I47],r11

    mov r11,[rsp+\I48]
    mulx rbx, rax, [r14 + 384]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I48],r11

    mov r11,[rsp+\I49]
    mulx rcx, rax, [r14 + 392]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I49],r11

    mov r11,[rsp+\I50]
    mulx rbx, rax, [r14 + 400]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I50],r11

    mov r11,[rsp+\I51]
    mulx rcx, rax, [r14 + 408]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I51],r11

    mov r11,[rsp+\I52]
    mulx rbx, rax, [r14 + 416]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I52],r11

    mov r11,[rsp+\I53]
    mulx rcx, rax, [r14 + 424]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I53],r11

    mov r11,[rsp+\I54]
    mulx rbx, rax, [r14 + 432]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I54],r11

    mov r11,[rsp+\I55]
    mulx rcx, rax, [r14 + 440]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I55],r11

    mov r11,[rsp+\I56]
    mulx rbx, rax, [r14 + 448]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I56],r11

    mov r11,[rsp+\I57]
    mulx rcx, rax, [r14 + 456]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I57],r11

    mov r11,[rsp+\I58]
    mulx rbx, rax, [r14 + 464]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I58],r11

    mov r11,[rsp+\I59]
    mulx rcx, rax, [r14 + 472]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I59],r11

    mov r11,[rsp+\I60]
    mulx rbx, rax, [r14 + 480]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I60],r11

    mov r11,[rsp+\I61]
    mulx rcx, rax, [r14 + 488]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I61],r11

    mov r11,[rsp+\I62]
    mulx rbx, rax, [r14 + 496]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I62],r11

    mov r11,[rsp+\I63]
    mulx rcx, rax, [r14 + 504]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I63],r11


    mov r11,[rsp+\I64]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I64],r11

    mov rdx, [rdi + 8*\k]

    xor rax, rax /* clear flags */

    mov r11,[rsp+\I0]
    mulx rbx, rax, [rsi +  0]
    adox r11, rax
    mov [rsp+\I0],r11

    mov r11,[rsp+\I1]
    mulx rcx, rax, [rsi +  8]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I1],r11

    mov r11,[rsp+\I2]
    mulx rbx, rax, [rsi +  16]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I2],r11

    mov r11,[rsp+\I3]
    mulx rcx, rax, [rsi +  24]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I3],r11

    mov r11,[rsp+\I4]
    mulx rbx, rax, [rsi +  32]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I4],r11

    mov r11,[rsp+\I5]
    mulx rcx, rax, [rsi +  40]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I5],r11

    mov r11,[rsp+\I6]
    mulx rbx, rax, [rsi +  48]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I6],r11

    mov r11,[rsp+\I7]
    mulx rcx, rax, [rsi +  56]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I7],r11

    mov r11,[rsp+\I8]
    mulx rbx, rax, [rsi +  64]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I8],r11

    mov r11,[rsp+\I9]
    mulx rcx, rax, [rsi +  72]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I9],r11

    mov r11,[rsp+\I10]
    mulx rbx, rax, [rsi +  80]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I10],r11

    mov r11,[rsp+\I11]
    mulx rcx, rax, [rsi +  88]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I11],r11

    mov r11,[rsp+\I12]
    mulx rbx, rax, [rsi +  96]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I12],r11

    mov r11,[rsp+\I13]
    mulx rcx, rax, [rsi +  104]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I13],r11

    mov r11,[rsp+\I14]
    mulx rbx, rax, [rsi +  112]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I14],r11

    mov r11,[rsp+\I15]
    mulx rcx, rax, [rsi +  120]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I15],r11

    mov r11,[rsp+\I16]
    mulx rbx, rax, [rsi +  128]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I16],r11

    mov r11,[rsp+\I17]
    mulx rcx, rax, [rsi +  136]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I17],r11

    mov r11,[rsp+\I18]
    mulx rbx, rax, [rsi +  144]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I18],r11

    mov r11,[rsp+\I19]
    mulx rcx, rax, [rsi +  152]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I19],r11

    mov r11,[rsp+\I20]
    mulx rbx, rax, [rsi +  160]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I20],r11

    mov r11,[rsp+\I21]
    mulx rcx, rax, [rsi +  168]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I21],r11

    mov r11,[rsp+\I22]
    mulx rbx, rax, [rsi +  176]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I22],r11

    mov r11,[rsp+\I23]
    mulx rcx, rax, [rsi +  184]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I23],r11

    mov r11,[rsp+\I24]
    mulx rbx, rax, [rsi +  192]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I24],r11

    mov r11,[rsp+\I25]
    mulx rcx, rax, [rsi +  200]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I25],r11

    mov r11,[rsp+\I26]
    mulx rbx, rax, [rsi +  208]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I26],r11

    mov r11,[rsp+\I27]
    mulx rcx, rax, [rsi +  216]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I27],r11

    mov r11,[rsp+\I28]
    mulx rbx, rax, [rsi +  224]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I28],r11

    mov r11,[rsp+\I29]
    mulx rcx, rax, [rsi +  232]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I29],r11

    mov r11,[rsp+\I30]
    mulx rbx, rax, [rsi +  240]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I30],r11

    mov r11,[rsp+\I31]
    mulx rcx, rax, [rsi +  248]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I31],r11

    mov r11,[rsp+\I32]
    mulx rbx, rax, [rsi +  256]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I32],r11

    mov r11,[rsp+\I33]
    mulx rcx, rax, [rsi +  264]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I33],r11

    mov r11,[rsp+\I34]
    mulx rbx, rax, [rsi +  272]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I34],r11

    mov r11,[rsp+\I35]
    mulx rcx, rax, [rsi +  280]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I35],r11

    mov r11,[rsp+\I36]
    mulx rbx, rax, [rsi +  288]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I36],r11

    mov r11,[rsp+\I37]
    mulx rcx, rax, [rsi +  296]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I37],r11

    mov r11,[rsp+\I38]
    mulx rbx, rax, [rsi +  304]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I38],r11

    mov r11,[rsp+\I39]
    mulx rcx, rax, [rsi +  312]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I39],r11

    mov r11,[rsp+\I40]
    mulx rbx, rax, [rsi +  320]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I40],r11

    mov r11,[rsp+\I41]
    mulx rcx, rax, [rsi +  328]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I41],r11

    mov r11,[rsp+\I42]
    mulx rbx, rax, [rsi +  336]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I42],r11

    mov r11,[rsp+\I43]
    mulx rcx, rax, [rsi +  344]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I43],r11

    mov r11,[rsp+\I44]
    mulx rbx, rax, [rsi +  352]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I44],r11

    mov r11,[rsp+\I45]
    mulx rcx, rax, [rsi +  360]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I45],r11

    mov r11,[rsp+\I46]
    mulx rbx, rax, [rsi +  368]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I46],r11

    mov r11,[rsp+\I47]
    mulx rcx, rax, [rsi +  376]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I47],r11

    mov r11,[rsp+\I48]
    mulx rbx, rax, [rsi +  384]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I48],r11

    mov r11,[rsp+\I49]
    mulx rcx, rax, [rsi +  392]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I49],r11

    mov r11,[rsp+\I50]
    mulx rbx, rax, [rsi +  400]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I50],r11

    mov r11,[rsp+\I51]
    mulx rcx, rax, [rsi +  408]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I51],r11

    mov r11,[rsp+\I52]
    mulx rbx, rax, [rsi +  416]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I52],r11

    mov r11,[rsp+\I53]
    mulx rcx, rax, [rsi +  424]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I53],r11

    mov r11,[rsp+\I54]
    mulx rbx, rax, [rsi +  432]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I54],r11

    mov r11,[rsp+\I55]
    mulx rcx, rax, [rsi +  440]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I55],r11

    mov r11,[rsp+\I56]
    mulx rbx, rax, [rsi +  448]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I56],r11

    mov r11,[rsp+\I57]
    mulx rcx, rax, [rsi +  456]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I57],r11

    mov r11,[rsp+\I58]
    mulx rbx, rax, [rsi +  464]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I58],r11

    mov r11,[rsp+\I59]
    mulx rcx, rax, [rsi +  472]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I59],r11

    mov r11,[rsp+\I60]
    mulx rbx, rax, [rsi +  480]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I60],r11

    mov r11,[rsp+\I61]
    mulx rcx, rax, [rsi +  488]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I61],r11

    mov r11,[rsp+\I62]
    mulx rbx, rax, [rsi +  496]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I62],r11

    mov r11,[rsp+\I63]
    mulx rcx, rax, [rsi +  504]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I63],r11

    mov r11,[rsp+\I64]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I64],r11

.endm

MULSTEP 0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0
MULSTEP 1,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8
MULSTEP 2,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16
MULSTEP 3,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24
MULSTEP 4,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32
MULSTEP 5,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40
MULSTEP 6,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48
MULSTEP 7,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56
MULSTEP 8,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64
MULSTEP 9,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72
MULSTEP 10,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80
MULSTEP 11,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88
MULSTEP 12,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96
MULSTEP 13,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104
MULSTEP 14,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112
MULSTEP 15,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120
MULSTEP 16,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128
MULSTEP 17,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136
MULSTEP 18,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144
MULSTEP 19,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152
MULSTEP 20,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160
MULSTEP 21,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168
MULSTEP 22,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176
MULSTEP 23,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184
MULSTEP 24,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192
MULSTEP 25,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200
MULSTEP 26,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208
MULSTEP 27,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216
MULSTEP 28,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224
MULSTEP 29,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232
MULSTEP 30,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240
MULSTEP 31,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248
MULSTEP 32,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256
MULSTEP 33,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264
MULSTEP 34,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272
MULSTEP 35,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280
MULSTEP 36,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288
MULSTEP 37,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296
MULSTEP 38,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304
MULSTEP 39,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312
MULSTEP 40,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320
MULSTEP 41,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328
MULSTEP 42,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336
MULSTEP 43,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344
MULSTEP 44,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352
MULSTEP 45,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360
MULSTEP 46,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368
MULSTEP 47,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376
MULSTEP 48,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384
MULSTEP 49,400,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392
MULSTEP 50,408,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400
MULSTEP 51,416,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408
MULSTEP 52,424,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416
MULSTEP 53,432,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424
MULSTEP 54,440,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432
MULSTEP 55,448,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440
MULSTEP 56,456,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448
MULSTEP 57,464,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456
MULSTEP 58,472,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464
MULSTEP 59,480,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472
MULSTEP 60,488,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480
MULSTEP 61,496,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488
MULSTEP 62,504,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496
MULSTEP 63,512,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,264,272,280,288,296,304,312,320,328,336,344,352,360,368,376,384,392,400,408,416,424,432,440,448,456,464,472,480,488,496,504


    mov rdi,[rsp+520]

    mov r11,[rsp+0]
    mov [rdi+0],r11
    mov r11,[rsp+8]
    mov [rdi+8],r11
    mov r11,[rsp+16]
    mov [rdi+16],r11
    mov r11,[rsp+24]
    mov [rdi+24],r11
    mov r11,[rsp+32]
    mov [rdi+32],r11
    mov r11,[rsp+40]
    mov [rdi+40],r11
    mov r11,[rsp+48]
    mov [rdi+48],r11
    mov r11,[rsp+56]
    mov [rdi+56],r11
    mov r11,[rsp+64]
    mov [rdi+64],r11
    mov r11,[rsp+72]
    mov [rdi+72],r11
    mov r11,[rsp+80]
    mov [rdi+80],r11
    mov r11,[rsp+88]
    mov [rdi+88],r11
    mov r11,[rsp+96]
    mov [rdi+96],r11
    mov r11,[rsp+104]
    mov [rdi+104],r11
    mov r11,[rsp+112]
    mov [rdi+112],r11
    mov r11,[rsp+120]
    mov [rdi+120],r11
    mov r11,[rsp+128]
    mov [rdi+128],r11
    mov r11,[rsp+136]
    mov [rdi+136],r11
    mov r11,[rsp+144]
    mov [rdi+144],r11
    mov r11,[rsp+152]
    mov [rdi+152],r11
    mov r11,[rsp+160]
    mov [rdi+160],r11
    mov r11,[rsp+168]
    mov [rdi+168],r11
    mov r11,[rsp+176]
    mov [rdi+176],r11
    mov r11,[rsp+184]
    mov [rdi+184],r11
    mov r11,[rsp+192]
    mov [rdi+192],r11
    mov r11,[rsp+200]
    mov [rdi+200],r11
    mov r11,[rsp+208]
    mov [rdi+208],r11
    mov r11,[rsp+216]
    mov [rdi+216],r11
    mov r11,[rsp+224]
    mov [rdi+224],r11
    mov r11,[rsp+232]
    mov [rdi+232],r11
    mov r11,[rsp+240]
    mov [rdi+240],r11
    mov r11,[rsp+248]
    mov [rdi+248],r11
    mov r11,[rsp+256]
    mov [rdi+256],r11
    mov r11,[rsp+264]
    mov [rdi+264],r11
    mov r11,[rsp+272]
    mov [rdi+272],r11
    mov r11,[rsp+280]
    mov [rdi+280],r11
    mov r11,[rsp+288]
    mov [rdi+288],r11
    mov r11,[rsp+296]
    mov [rdi+296],r11
    mov r11,[rsp+304]
    mov [rdi+304],r11
    mov r11,[rsp+312]
    mov [rdi+312],r11
    mov r11,[rsp+320]
    mov [rdi+320],r11
    mov r11,[rsp+328]
    mov [rdi+328],r11
    mov r11,[rsp+336]
    mov [rdi+336],r11
    mov r11,[rsp+344]
    mov [rdi+344],r11
    mov r11,[rsp+352]
    mov [rdi+352],r11
    mov r11,[rsp+360]
    mov [rdi+360],r11
    mov r11,[rsp+368]
    mov [rdi+368],r11
    mov r11,[rsp+376]
    mov [rdi+376],r11
    mov r11,[rsp+384]
    mov [rdi+384],r11
    mov r11,[rsp+392]
    mov [rdi+392],r11
    mov r11,[rsp+400]
    mov [rdi+400],r11
    mov r11,[rsp+408]
    mov [rdi+408],r11
    mov r11,[rsp+416]
    mov [rdi+416],r11
    mov r11,[rsp+424]
    mov [rdi+424],r11
    mov r11,[rsp+432]
    mov [rdi+432],r11
    mov r11,[rsp+440]
    mov [rdi+440],r11
    mov r11,[rsp+448]
    mov [rdi+448],r11
    mov r11,[rsp+456]
    mov [rdi+456],r11
    mov r11,[rsp+464]
    mov [rdi+464],r11
    mov r11,[rsp+472]
    mov [rdi+472],r11
    mov r11,[rsp+480]
    mov [rdi+480],r11
    mov r11,[rsp+488]
    mov [rdi+488],r11
    mov r11,[rsp+496]
    mov [rdi+496],r11
    mov r11,[rsp+504]
    mov [rdi+504],r11
    add rsp,528

    pop r14
    pop rbx
    pop rbp

    jmp .reduce_once


.global secsidh_internal_4095m27l262_fp_sq1
secsidh_internal_4095m27l262_fp_sq1:
    mov rsi, rdi
.global secsidh_internal_4095m27l262_fp_sqr
secsidh_internal_4095m27l262_fp_sqr:
    mov rdx, rsi

    jmp secsidh_internal_4095m27l262_fp_mul

.global secsidh_internal_4095m27l262_fp_random
secsidh_internal_4095m27l262_fp_random:

    push rdi
    mov rsi, pbytes
    call randombytes
    pop rdi
    mov rax, 1
    shl rax, (pbits % 64)
    dec rax
    and [rdi + pbytes-8], rax
    mov r8, secsidh_internal_4095m27l262_p@GOTPCREL[rip]
    .set k, plimbs-1
    .rept plimbs
        mov rax, [r8 + 8*k]
        cmp [rdi + 8*k], rax
        jge secsidh_internal_4095m27l262_fp_random
        jl 0f
        .set k, k-1
    .endr
    0:
    ret
