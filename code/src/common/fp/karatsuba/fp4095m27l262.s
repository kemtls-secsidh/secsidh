.intel_syntax noprefix

.section .rodata

.set pbits,4095
.set pbytes,512
.set plimbs,64

.section .text

.global secsidh_internal_4095m27l262_redc_alpha
secsidh_internal_4095m27l262_redc_alpha:
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0xBABB857F53B45F39, 0xA0FA17C9F017AAA4 
.quad  0xCA367EE9DCA136B3, 0x9825FE450B3306F0, 0x7598BC71B003BE60, 0x75D9C93D2F88118F 
.quad  0x25FAB108318489EF, 0xB853C0B81A59A320, 0xA68AC2FAA6576BD0, 0x6FE6DE6B60B8DD73 
.quad  0xBE1BA97A296DF474, 0x90F3D594E0BB1B1A, 0x50845534C663819, 0x5DA43F39BA465F9D 
.quad  0x67A79C055011CD6C, 0x10AABAC0E83F00E0, 0x55B21EF174813BB, 0xB32A5B550F65F8E8 
.quad  0x6C8A637162557E06, 0x184398D9CE7B8ED0, 0xF6389D60A659DBF9, 0x4898DDCC4C6451B1 
.quad  0xD34D57E179DBAA87, 0xB300098DDDD2A53D, 0x4D83B4D248CD8DC8, 0xA999042BBABBA293 
.quad  0x8E37AAC3FD7145B5, 0x896199C58C6CDEE2, 0x5D499CA3173C69A1, 0x324B4917CB3C3BFA 
.quad  0xF83956A2F7A46669, 0xE0CA5CB997EAFB95, 0x16C0EB2AAF99D121, 0xAF95A6D3DA6A40FF 
.quad  0x8EDE5A2EF574F91F, 0xF17F15465794272, 0x411889A889DBBAF2, 0x0 


.global secsidh_internal_4095m27l262_fp_word_redc
secsidh_internal_4095m27l262_fp_word_redc:
push r14
push rbx
sub rsp, 2*pbytes+1
mov r14, secsidh_internal_4095m27l262_redc_alpha@GOTPCREL[rip]
xor rax, rax
xor r8, r8
xor rcx, rcx
xor rbx, rbx
########################## mul
mov rdx, [rsi]
mov rax, [rsi + 8]
mov [rsp], rax

mov rax, [rsi + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsi + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsi + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsi + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsi + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsi + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsi + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsi + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsi + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsi + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsi + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsi + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsi + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsi + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsi + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsi + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsi + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsi + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsi + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsi + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsi + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsi + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsi + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsi + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsi + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsi + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsi + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsi + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsi + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsi + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsi + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsi + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsi + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsi + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsi + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsi + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsi + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsi + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsi + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsi + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsi + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsi + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsi + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsi + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsi + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsi + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsi + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsi + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsi + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsi + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsi + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsi + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsi + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsi + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsi + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsi + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsi + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsi + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsi + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsi + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsi + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsi + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsi + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsi + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsi + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsi + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsi + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsi + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsi + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsi + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsi + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsi + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsi + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsi + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsi + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsi + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsi + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsi + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsi + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsi + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsi + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsi + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsi + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsi + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsi + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsi + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsi + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsi + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsi + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsi + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsi + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsi + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsi + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsi + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsi + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsi + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsi + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsi + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsi + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsi + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsi + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsi + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsi + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsi + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsi + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsi + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsi + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsi + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsi + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsi + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsi + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsi + 8*113]
mov [rsp + 8*112], r11

mov r11, r8
adc r11, [rsi + 8*114]
mov [rsp + 8*113], r11

mov r11, r8
adc r11, [rsi + 8*115]
mov [rsp + 8*114], r11

mov r11, r8
adc r11, [rsi + 8*116]
mov [rsp + 8*115], r11

mov r11, r8
adc r11, [rsi + 8*117]
mov [rsp + 8*116], r11

mov r11, r8
adc r11, [rsi + 8*118]
mov [rsp + 8*117], r11

mov r11, r8
adc r11, [rsi + 8*119]
mov [rsp + 8*118], r11

mov r11, r8
adc r11, [rsi + 8*120]
mov [rsp + 8*119], r11

mov r11, r8
adc r11, [rsi + 8*121]
mov [rsp + 8*120], r11

mov r11, r8
adc r11, [rsi + 8*122]
mov [rsp + 8*121], r11

mov r11, r8
adc r11, [rsi + 8*123]
mov [rsp + 8*122], r11

mov r11, r8
adc r11, [rsi + 8*124]
mov [rsp + 8*123], r11

mov r11, r8
adc r11, [rsi + 8*125]
mov [rsp + 8*124], r11

mov r11, r8
adc r11, [rsi + 8*126]
mov [rsp + 8*125], r11

mov r11, r8
adc r11, [rsi + 8*127]
mov [rsp + 8*126], r11

mov r11, r8
adc r11, [rsi + 8*128]
mov [rsp + 8*127], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsp + 8*113]
mov [rsp + 8*112], r11

mov r11, r8
adc r11, [rsp + 8*114]
mov [rsp + 8*113], r11

mov r11, r8
adc r11, [rsp + 8*115]
mov [rsp + 8*114], r11

mov r11, r8
adc r11, [rsp + 8*116]
mov [rsp + 8*115], r11

mov r11, r8
adc r11, [rsp + 8*117]
mov [rsp + 8*116], r11

mov r11, r8
adc r11, [rsp + 8*118]
mov [rsp + 8*117], r11

mov r11, r8
adc r11, [rsp + 8*119]
mov [rsp + 8*118], r11

mov r11, r8
adc r11, [rsp + 8*120]
mov [rsp + 8*119], r11

mov r11, r8
adc r11, [rsp + 8*121]
mov [rsp + 8*120], r11

mov r11, r8
adc r11, [rsp + 8*122]
mov [rsp + 8*121], r11

mov r11, r8
adc r11, [rsp + 8*123]
mov [rsp + 8*122], r11

mov r11, r8
adc r11, [rsp + 8*124]
mov [rsp + 8*123], r11

mov r11, r8
adc r11, [rsp + 8*125]
mov [rsp + 8*124], r11

mov r11, r8
adc r11, [rsp + 8*126]
mov [rsp + 8*125], r11

mov r11, r8
adc r11, [rsp + 8*127]
mov [rsp + 8*126], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsp + 8*113]
mov [rsp + 8*112], r11

mov r11, r8
adc r11, [rsp + 8*114]
mov [rsp + 8*113], r11

mov r11, r8
adc r11, [rsp + 8*115]
mov [rsp + 8*114], r11

mov r11, r8
adc r11, [rsp + 8*116]
mov [rsp + 8*115], r11

mov r11, r8
adc r11, [rsp + 8*117]
mov [rsp + 8*116], r11

mov r11, r8
adc r11, [rsp + 8*118]
mov [rsp + 8*117], r11

mov r11, r8
adc r11, [rsp + 8*119]
mov [rsp + 8*118], r11

mov r11, r8
adc r11, [rsp + 8*120]
mov [rsp + 8*119], r11

mov r11, r8
adc r11, [rsp + 8*121]
mov [rsp + 8*120], r11

mov r11, r8
adc r11, [rsp + 8*122]
mov [rsp + 8*121], r11

mov r11, r8
adc r11, [rsp + 8*123]
mov [rsp + 8*122], r11

mov r11, r8
adc r11, [rsp + 8*124]
mov [rsp + 8*123], r11

mov r11, r8
adc r11, [rsp + 8*125]
mov [rsp + 8*124], r11

mov r11, r8
adc r11, [rsp + 8*126]
mov [rsp + 8*125], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsp + 8*113]
mov [rsp + 8*112], r11

mov r11, r8
adc r11, [rsp + 8*114]
mov [rsp + 8*113], r11

mov r11, r8
adc r11, [rsp + 8*115]
mov [rsp + 8*114], r11

mov r11, r8
adc r11, [rsp + 8*116]
mov [rsp + 8*115], r11

mov r11, r8
adc r11, [rsp + 8*117]
mov [rsp + 8*116], r11

mov r11, r8
adc r11, [rsp + 8*118]
mov [rsp + 8*117], r11

mov r11, r8
adc r11, [rsp + 8*119]
mov [rsp + 8*118], r11

mov r11, r8
adc r11, [rsp + 8*120]
mov [rsp + 8*119], r11

mov r11, r8
adc r11, [rsp + 8*121]
mov [rsp + 8*120], r11

mov r11, r8
adc r11, [rsp + 8*122]
mov [rsp + 8*121], r11

mov r11, r8
adc r11, [rsp + 8*123]
mov [rsp + 8*122], r11

mov r11, r8
adc r11, [rsp + 8*124]
mov [rsp + 8*123], r11

mov r11, r8
adc r11, [rsp + 8*125]
mov [rsp + 8*124], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsp + 8*113]
mov [rsp + 8*112], r11

mov r11, r8
adc r11, [rsp + 8*114]
mov [rsp + 8*113], r11

mov r11, r8
adc r11, [rsp + 8*115]
mov [rsp + 8*114], r11

mov r11, r8
adc r11, [rsp + 8*116]
mov [rsp + 8*115], r11

mov r11, r8
adc r11, [rsp + 8*117]
mov [rsp + 8*116], r11

mov r11, r8
adc r11, [rsp + 8*118]
mov [rsp + 8*117], r11

mov r11, r8
adc r11, [rsp + 8*119]
mov [rsp + 8*118], r11

mov r11, r8
adc r11, [rsp + 8*120]
mov [rsp + 8*119], r11

mov r11, r8
adc r11, [rsp + 8*121]
mov [rsp + 8*120], r11

mov r11, r8
adc r11, [rsp + 8*122]
mov [rsp + 8*121], r11

mov r11, r8
adc r11, [rsp + 8*123]
mov [rsp + 8*122], r11

mov r11, r8
adc r11, [rsp + 8*124]
mov [rsp + 8*123], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsp + 8*113]
mov [rsp + 8*112], r11

mov r11, r8
adc r11, [rsp + 8*114]
mov [rsp + 8*113], r11

mov r11, r8
adc r11, [rsp + 8*115]
mov [rsp + 8*114], r11

mov r11, r8
adc r11, [rsp + 8*116]
mov [rsp + 8*115], r11

mov r11, r8
adc r11, [rsp + 8*117]
mov [rsp + 8*116], r11

mov r11, r8
adc r11, [rsp + 8*118]
mov [rsp + 8*117], r11

mov r11, r8
adc r11, [rsp + 8*119]
mov [rsp + 8*118], r11

mov r11, r8
adc r11, [rsp + 8*120]
mov [rsp + 8*119], r11

mov r11, r8
adc r11, [rsp + 8*121]
mov [rsp + 8*120], r11

mov r11, r8
adc r11, [rsp + 8*122]
mov [rsp + 8*121], r11

mov r11, r8
adc r11, [rsp + 8*123]
mov [rsp + 8*122], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsp + 8*113]
mov [rsp + 8*112], r11

mov r11, r8
adc r11, [rsp + 8*114]
mov [rsp + 8*113], r11

mov r11, r8
adc r11, [rsp + 8*115]
mov [rsp + 8*114], r11

mov r11, r8
adc r11, [rsp + 8*116]
mov [rsp + 8*115], r11

mov r11, r8
adc r11, [rsp + 8*117]
mov [rsp + 8*116], r11

mov r11, r8
adc r11, [rsp + 8*118]
mov [rsp + 8*117], r11

mov r11, r8
adc r11, [rsp + 8*119]
mov [rsp + 8*118], r11

mov r11, r8
adc r11, [rsp + 8*120]
mov [rsp + 8*119], r11

mov r11, r8
adc r11, [rsp + 8*121]
mov [rsp + 8*120], r11

mov r11, r8
adc r11, [rsp + 8*122]
mov [rsp + 8*121], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsp + 8*113]
mov [rsp + 8*112], r11

mov r11, r8
adc r11, [rsp + 8*114]
mov [rsp + 8*113], r11

mov r11, r8
adc r11, [rsp + 8*115]
mov [rsp + 8*114], r11

mov r11, r8
adc r11, [rsp + 8*116]
mov [rsp + 8*115], r11

mov r11, r8
adc r11, [rsp + 8*117]
mov [rsp + 8*116], r11

mov r11, r8
adc r11, [rsp + 8*118]
mov [rsp + 8*117], r11

mov r11, r8
adc r11, [rsp + 8*119]
mov [rsp + 8*118], r11

mov r11, r8
adc r11, [rsp + 8*120]
mov [rsp + 8*119], r11

mov r11, r8
adc r11, [rsp + 8*121]
mov [rsp + 8*120], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsp + 8*113]
mov [rsp + 8*112], r11

mov r11, r8
adc r11, [rsp + 8*114]
mov [rsp + 8*113], r11

mov r11, r8
adc r11, [rsp + 8*115]
mov [rsp + 8*114], r11

mov r11, r8
adc r11, [rsp + 8*116]
mov [rsp + 8*115], r11

mov r11, r8
adc r11, [rsp + 8*117]
mov [rsp + 8*116], r11

mov r11, r8
adc r11, [rsp + 8*118]
mov [rsp + 8*117], r11

mov r11, r8
adc r11, [rsp + 8*119]
mov [rsp + 8*118], r11

mov r11, r8
adc r11, [rsp + 8*120]
mov [rsp + 8*119], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsp + 8*113]
mov [rsp + 8*112], r11

mov r11, r8
adc r11, [rsp + 8*114]
mov [rsp + 8*113], r11

mov r11, r8
adc r11, [rsp + 8*115]
mov [rsp + 8*114], r11

mov r11, r8
adc r11, [rsp + 8*116]
mov [rsp + 8*115], r11

mov r11, r8
adc r11, [rsp + 8*117]
mov [rsp + 8*116], r11

mov r11, r8
adc r11, [rsp + 8*118]
mov [rsp + 8*117], r11

mov r11, r8
adc r11, [rsp + 8*119]
mov [rsp + 8*118], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsp + 8*113]
mov [rsp + 8*112], r11

mov r11, r8
adc r11, [rsp + 8*114]
mov [rsp + 8*113], r11

mov r11, r8
adc r11, [rsp + 8*115]
mov [rsp + 8*114], r11

mov r11, r8
adc r11, [rsp + 8*116]
mov [rsp + 8*115], r11

mov r11, r8
adc r11, [rsp + 8*117]
mov [rsp + 8*116], r11

mov r11, r8
adc r11, [rsp + 8*118]
mov [rsp + 8*117], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsp + 8*113]
mov [rsp + 8*112], r11

mov r11, r8
adc r11, [rsp + 8*114]
mov [rsp + 8*113], r11

mov r11, r8
adc r11, [rsp + 8*115]
mov [rsp + 8*114], r11

mov r11, r8
adc r11, [rsp + 8*116]
mov [rsp + 8*115], r11

mov r11, r8
adc r11, [rsp + 8*117]
mov [rsp + 8*116], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsp + 8*113]
mov [rsp + 8*112], r11

mov r11, r8
adc r11, [rsp + 8*114]
mov [rsp + 8*113], r11

mov r11, r8
adc r11, [rsp + 8*115]
mov [rsp + 8*114], r11

mov r11, r8
adc r11, [rsp + 8*116]
mov [rsp + 8*115], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsp + 8*113]
mov [rsp + 8*112], r11

mov r11, r8
adc r11, [rsp + 8*114]
mov [rsp + 8*113], r11

mov r11, r8
adc r11, [rsp + 8*115]
mov [rsp + 8*114], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsp + 8*113]
mov [rsp + 8*112], r11

mov r11, r8
adc r11, [rsp + 8*114]
mov [rsp + 8*113], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

mov r11, r8
adc r11, [rsp + 8*113]
mov [rsp + 8*112], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

mov r11, r8
adc r11, [rsp + 8*112]
mov [rsp + 8*111], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

mov r11, r8
adc r11, [rsp + 8*111]
mov [rsp + 8*110], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

mov r11, r8
adc r11, [rsp + 8*110]
mov [rsp + 8*109], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

mov r11, r8
adc r11, [rsp + 8*109]
mov [rsp + 8*108], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

mov r11, r8
adc r11, [rsp + 8*108]
mov [rsp + 8*107], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

mov r11, r8
adc r11, [rsp + 8*107]
mov [rsp + 8*106], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

mov r11, r8
adc r11, [rsp + 8*106]
mov [rsp + 8*105], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

mov r11, r8
adc r11, [rsp + 8*105]
mov [rsp + 8*104], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

mov r11, r8
adc r11, [rsp + 8*104]
mov [rsp + 8*103], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

mov r11, r8
adc r11, [rsp + 8*103]
mov [rsp + 8*102], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

mov r11, r8
adc r11, [rsp + 8*102]
mov [rsp + 8*101], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

mov r11, r8
adc r11, [rsp + 8*101]
mov [rsp + 8*100], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

mov r11, r8
adc r11, [rsp + 8*100]
mov [rsp + 8*99], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

mov r11, r8
adc r11, [rsp + 8*99]
mov [rsp + 8*98], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

mov r11, r8
adc r11, [rsp + 8*98]
mov [rsp + 8*97], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

mov r11, r8
adc r11, [rsp + 8*97]
mov [rsp + 8*96], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

mov r11, r8
adc r11, [rsp + 8*96]
mov [rsp + 8*95], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

mov r11, r8
adc r11, [rsp + 8*95]
mov [rsp + 8*94], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

mov r11, r8
adc r11, [rsp + 8*94]
mov [rsp + 8*93], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

mov r11, r8
adc r11, [rsp + 8*93]
mov [rsp + 8*92], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

mov r11, r8
adc r11, [rsp + 8*92]
mov [rsp + 8*91], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

mov r11, r8
adc r11, [rsp + 8*91]
mov [rsp + 8*90], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

mov r11, r8
adc r11, [rsp + 8*90]
mov [rsp + 8*89], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

mov r11, r8
adc r11, [rsp + 8*89]
mov [rsp + 8*88], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

mov r11, r8
adc r11, [rsp + 8*88]
mov [rsp + 8*87], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

mov r11, r8
adc r11, [rsp + 8*87]
mov [rsp + 8*86], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

mov r11, r8
adc r11, [rsp + 8*86]
mov [rsp + 8*85], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

mov r11, r8
adc r11, [rsp + 8*85]
mov [rsp + 8*84], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

mov r11, r8
adc r11, [rsp + 8*84]
mov [rsp + 8*83], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

mov r11, r8
adc r11, [rsp + 8*83]
mov [rsp + 8*82], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

mov r11, r8
adc r11, [rsp + 8*82]
mov [rsp + 8*81], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

mov r11, r8
adc r11, [rsp + 8*81]
mov [rsp + 8*80], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

mov r11, r8
adc r11, [rsp + 8*80]
mov [rsp + 8*79], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

mov r11, r8
adc r11, [rsp + 8*79]
mov [rsp + 8*78], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

mov r11, r8
adc r11, [rsp + 8*78]
mov [rsp + 8*77], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

mov r11, r8
adc r11, [rsp + 8*77]
mov [rsp + 8*76], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

mov r11, r8
adc r11, [rsp + 8*76]
mov [rsp + 8*75], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

mov r11, r8
adc r11, [rsp + 8*75]
mov [rsp + 8*74], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

mov r11, r8
adc r11, [rsp + 8*74]
mov [rsp + 8*73], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

mov r11, r8
adc r11, [rsp + 8*73]
mov [rsp + 8*72], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

mov r11, r8
adc r11, [rsp + 8*72]
mov [rsp + 8*71], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

mov r11, r8
adc r11, [rsp + 8*71]
mov [rsp + 8*70], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

mov r11, r8
adc r11, [rsp + 8*70]
mov [rsp + 8*69], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

mov r11, r8
adc r11, [rsp + 8*69]
mov [rsp + 8*68], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

mov r11, r8
adc r11, [rsp + 8*68]
mov [rsp + 8*67], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

mov r11, r8
adc r11, [rsp + 8*67]
mov [rsp + 8*66], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rsp], rax

mov rax, [rsp + 8*2]
mov [rsp + 8*1], rax

mov rax, [rsp + 8*3]
mov [rsp + 8*2], rax

mov rax, [rsp + 8*4]
mov [rsp + 8*3], rax

mov rax, [rsp + 8*5]
mov [rsp + 8*4], rax

mov rax, [rsp + 8*6]
mov [rsp + 8*5], rax

mov rax, [rsp + 8*7]
mov [rsp + 8*6], rax

mov rax, [rsp + 8*8]
mov [rsp + 8*7], rax

mov rax, [rsp + 8*9]
mov [rsp + 8*8], rax

mov rax, [rsp + 8*10]
mov [rsp + 8*9], rax

mov rax, [rsp + 8*11]
mov [rsp + 8*10], rax

mov rax, [rsp + 8*12]
mov [rsp + 8*11], rax

mov rax, [rsp + 8*13]
mov [rsp + 8*12], rax

mov rax, [rsp + 8*14]
mov [rsp + 8*13], rax

mov rax, [rsp + 8*15]
mov [rsp + 8*14], rax

mov rax, [rsp + 8*16]
mov [rsp + 8*15], rax

mov rax, [rsp + 8*17]
mov [rsp + 8*16], rax

mov rax, [rsp + 8*18]
mov [rsp + 8*17], rax

mov rax, [rsp + 8*19]
mov [rsp + 8*18], rax

mov rax, [rsp + 8*20]
mov [rsp + 8*19], rax

mov rax, [rsp + 8*21]
mov [rsp + 8*20], rax

mov rax, [rsp + 8*22]
mov [rsp + 8*21], rax

mov rax, [rsp + 8*23]
mov [rsp + 8*22], rax

mov rax, [rsp + 8*24]
mov [rsp + 8*23], rax

mov rax, [rsp + 8*25]
mov [rsp + 8*24], rax

mov rax, [rsp + 8*26]
mov [rsp + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rsp + 8*63], rcx

######### carry
adox rbx, [rsp + 8*65]
adcx rbx, r8
mov [rsp + 8*64], rbx

mov r11, r8
adc r11, [rsp + 8*66]
mov [rsp + 8*65], r11

########################## mul
xor rax, rax
xor rcx, rcx
xor rbx, rbx
mov rdx, [rsp]
mov rax, [rsp + 8]
mov [rdi], rax

mov rax, [rsp + 8*2]
mov [rdi + 8*1], rax

mov rax, [rsp + 8*3]
mov [rdi + 8*2], rax

mov rax, [rsp + 8*4]
mov [rdi + 8*3], rax

mov rax, [rsp + 8*5]
mov [rdi + 8*4], rax

mov rax, [rsp + 8*6]
mov [rdi + 8*5], rax

mov rax, [rsp + 8*7]
mov [rdi + 8*6], rax

mov rax, [rsp + 8*8]
mov [rdi + 8*7], rax

mov rax, [rsp + 8*9]
mov [rdi + 8*8], rax

mov rax, [rsp + 8*10]
mov [rdi + 8*9], rax

mov rax, [rsp + 8*11]
mov [rdi + 8*10], rax

mov rax, [rsp + 8*12]
mov [rdi + 8*11], rax

mov rax, [rsp + 8*13]
mov [rdi + 8*12], rax

mov rax, [rsp + 8*14]
mov [rdi + 8*13], rax

mov rax, [rsp + 8*15]
mov [rdi + 8*14], rax

mov rax, [rsp + 8*16]
mov [rdi + 8*15], rax

mov rax, [rsp + 8*17]
mov [rdi + 8*16], rax

mov rax, [rsp + 8*18]
mov [rdi + 8*17], rax

mov rax, [rsp + 8*19]
mov [rdi + 8*18], rax

mov rax, [rsp + 8*20]
mov [rdi + 8*19], rax

mov rax, [rsp + 8*21]
mov [rdi + 8*20], rax

mov rax, [rsp + 8*22]
mov [rdi + 8*21], rax

mov rax, [rsp + 8*23]
mov [rdi + 8*22], rax

mov rax, [rsp + 8*24]
mov [rdi + 8*23], rax

mov rax, [rsp + 8*25]
mov [rdi + 8*24], rax

mov rax, [rsp + 8*26]
mov [rdi + 8*25], rax

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rdi + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rdi + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rdi + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rdi + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rdi + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rdi + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rdi + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rdi + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rdi + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rdi + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rdi + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rdi + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rdi + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rdi + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rdi + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rdi + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rdi + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rdi + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rdi + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rdi + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rdi + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rdi + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rdi + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rdi + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rdi + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rdi + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rdi + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rdi + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rdi + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rdi + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rdi + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rdi + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rdi + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rdi + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rdi + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rdi + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rdi + 8*62], rbx

mov rbx, r8
adcx rcx, [rsp + 8*64]
adox rcx, r8
mov [rdi + 8*63], rcx

########################## done
add rsp, 2*pbytes+1
pop rbx
pop r14
jmp .reduce_once




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

.global secsidh_internal_4095m27l262_fp_copy
secsidh_internal_4095m27l262_fp_copy:
    cld
    mov rcx, plimbs
    rep movsq
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

    mov rax, [rdi + 34*8]
    sbb rax, 0
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, 0
    mov [rdi + 35*8], rax
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
    mov rax, [rdi + 39*8]
    sbb rax, 0
    mov [rdi + 39*8], rax     
    mov rax, [rdi + 40*8]
    sbb rax, 0
    mov [rdi + 40*8], rax     
    mov rax, [rdi + 41*8]
    sbb rax, 0
    mov [rdi + 41*8], rax     
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
    mov rax, [rdi + 46*8]
    sbb rax, 0
    mov [rdi + 46*8], rax 
    mov rax, [rdi + 47*8]
    sbb rax, 0
    mov [rdi + 47*8], rax                 

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

    mov rax, [rdi + 34*8]
    sbb rax, 0
    mov [rdi + 34*8], rax
    mov rax, [rdi + 35*8]
    sbb rax, 0
    mov [rdi + 35*8], rax
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
    mov rax, [rdi + 39*8]
    sbb rax, 0
    mov [rdi + 39*8], rax     
    mov rax, [rdi + 40*8]
    sbb rax, 0
    mov [rdi + 40*8], rax     
    mov rax, [rdi + 41*8]
    sbb rax, 0
    mov [rdi + 41*8], rax     
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
    mov rax, [rdi + 46*8]
    sbb rax, 0
    mov [rdi + 46*8], rax 
    mov rax, [rdi + 47*8]
    sbb rax, 0
    mov [rdi + 47*8], rax 

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

    mov rax, [rdi + 37*8]
    adc rax, 0
    mov [rdi + 37*8], rax
    mov rax, [rdi + 38*8]
    adc rax, 0
    mov [rdi + 38*8], rax
    mov rax, [rdi + 39*8]
    adc rax, 0
    mov [rdi + 39*8], rax      
    mov rax, [rdi + 39*8]
    adc rax, 0
    mov [rdi + 39*8], rax     
    mov rax, [rdi + 40*8]
    adc rax, 0
    mov [rdi + 40*8], rax     
    mov rax, [rdi + 41*8]
    adc rax, 0
    mov [rdi + 41*8], rax     
    mov rax, [rdi + 42*8]
    adc rax, 0
    mov [rdi + 42*8], rax     
    mov rax, [rdi + 43*8]
    adc rax, 0
    mov [rdi + 43*8], rax                                       
    mov rax, [rdi + 44*8]
    adc rax, 0
    mov [rdi + 44*8], rax 
    mov rax, [rdi + 45*8]
    adc rax, 0
    mov [rdi + 45*8], rax 
    mov rax, [rdi + 46*8]
    adc rax, 0
    mov [rdi + 46*8], rax 
    mov rax, [rdi + 47*8]
    adc rax, 0
    mov [rdi + 47*8], rax     
    
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


.global secsidh_internal_4095m27l262_fp_mult_64x64
secsidh_internal_4095m27l262_fp_mult_64x64:
    mult_64x64   
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

.global secsidh_internal_4095m27l262_fp_squaring
secsidh_internal_4095m27l262_fp_squaring:
    sqr_64x64
    ret
    