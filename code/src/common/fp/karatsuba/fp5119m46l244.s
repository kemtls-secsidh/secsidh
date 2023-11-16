.intel_syntax noprefix

.section .rodata

.set pbits,5119
.set pbytes,640
.set plimbs,80

.global secsidh_internal_5119m46l244_redc_alpha
secsidh_internal_5119m46l244_redc_alpha:
.quad  0xB5309D1E99A64A6B, 0xD4F20F3D310BE993, 0xD92726C717015CFD, 0xF06D7BAB9FBC61BA 
.quad  0xC2EE5257F3F53C0A, 0x3AF92D2E448901D2, 0x3A0C8A8186EE6D0D, 0x53C4B1599AEEC0E1 
.quad  0xE4EACE2722BC33D6, 0x238DC49B3B1C9CC, 0xB8D14D0F82E0AFB5, 0x3B1B2AB37CD1DF46 
.quad  0x7B9D7D5D4927ED03, 0xADC309FAFEB712E0, 0x1E9A86229953557A, 0x1F15A379F4EF9329 
.quad  0xA65C5A1161E1D325, 0xB8711C1B97A356D8, 0x6AD52806F4121BE7, 0x951B321B6C3C584C 
.quad  0xD4EDED55AFC190E5, 0x56CF35332848D386, 0xF6322D985F4F8905, 0x37E31D4DDBC39AD6 
.quad  0xBCFFB1DE739D78F0, 0xBFBF3DA580661DCC, 0x5CFB6A9766C03723, 0x1BAA906DE71522B6 
.quad  0xD76E42C1E401FF20, 0xA69EFCEFEF88BD2E, 0xA0A2737A7E193839, 0x68C24DC989220343 
.quad  0x524C926C9F96C9CF, 0x6B5ECF5EB8DE6C90, 0x0, 0x0 
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

.global secsidh_internal_5119m46l244_fp_mont_redc_a
secsidh_internal_5119m46l244_fp_mont_redc_a:
push r14
sub rsp, 2*pbytes+8
mov r14, secsidh_internal_5119m46l244_p@GOTPCREL[rip]
xor rax, rax
mov [rsp + 8*160], rax
########################## mul
mov rdx, [rsi]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsi + 8*1]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsi + 8*2]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsi + 8*3]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsi + 8*4]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsi + 8*5]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsi + 8*6]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsi + 8*7]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsi + 8*8]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsi + 8*9]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsi + 8*10]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsi + 8*11]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsi + 8*12]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsi + 8*13]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsi + 8*14]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsi + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsi + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsi + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsi + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsi + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsi + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsi + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsi + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsi + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsi + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsi + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsi + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsi + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsi + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsi + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsi + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsi + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsi + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsi + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsi + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsi + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsi + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsi + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsi + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsi + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsi + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsi + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsi + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsi + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsi + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsi + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsi + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsi + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsi + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsi + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsi + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsi + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsi + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsi + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsi + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsi + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsi + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsi + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsi + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsi + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsi + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsi + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsi + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsi + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsi + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsi + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsi + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsi + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsi + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsi + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsi + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsi + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsi + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsi + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsi + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsi + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsi + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsi + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsi + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsi + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

######### carry
mov r11, 0
adox rbx, [rsi + 8*80]
adcx rbx, r11
mov [rsp + 8*80], rbx

mov rax, 0
mov r11, 0
adox r11, [rsi + 8*81]
adcx r11, rax
mov [rsp + 8*81], r11

mov r11, 0
adox r11, [rsi + 8*82]
adcx r11, rax
mov [rsp + 8*82], r11

mov r11, 0
adox r11, [rsi + 8*83]
adcx r11, rax
mov [rsp + 8*83], r11

mov r11, 0
adox r11, [rsi + 8*84]
adcx r11, rax
mov [rsp + 8*84], r11

mov r11, 0
adox r11, [rsi + 8*85]
adcx r11, rax
mov [rsp + 8*85], r11

mov r11, 0
adox r11, [rsi + 8*86]
adcx r11, rax
mov [rsp + 8*86], r11

mov r11, 0
adox r11, [rsi + 8*87]
adcx r11, rax
mov [rsp + 8*87], r11

mov r11, 0
adox r11, [rsi + 8*88]
adcx r11, rax
mov [rsp + 8*88], r11

mov r11, 0
adox r11, [rsi + 8*89]
adcx r11, rax
mov [rsp + 8*89], r11

mov r11, 0
adox r11, [rsi + 8*90]
adcx r11, rax
mov [rsp + 8*90], r11

mov r11, 0
adox r11, [rsi + 8*91]
adcx r11, rax
mov [rsp + 8*91], r11

mov r11, 0
adox r11, [rsi + 8*92]
adcx r11, rax
mov [rsp + 8*92], r11

mov r11, 0
adox r11, [rsi + 8*93]
adcx r11, rax
mov [rsp + 8*93], r11

mov r11, 0
adox r11, [rsi + 8*94]
adcx r11, rax
mov [rsp + 8*94], r11

mov r11, 0
adox r11, [rsi + 8*95]
adcx r11, rax
mov [rsp + 8*95], r11

mov r11, 0
adox r11, [rsi + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsi + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsi + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsi + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsi + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsi + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsi + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsi + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsi + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsi + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsi + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsi + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsi + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsi + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsi + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsi + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsi + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsi + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsi + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsi + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsi + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsi + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsi + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsi + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsi + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsi + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsi + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsi + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsi + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsi + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsi + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsi + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsi + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsi + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsi + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsi + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsi + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsi + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsi + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsi + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsi + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsi + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsi + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsi + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsi + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsi + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsi + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsi + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsi + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsi + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsi + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsi + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsi + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsi + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsi + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsi + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsi + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsi + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsi + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsi + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsi + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsi + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsi + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsi + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsi + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*1]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*1], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*2], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*3], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*4], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*5], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*6], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*7], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*8], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*9], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*10], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*11], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*12], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*13], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*14], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*15], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*81]
adcx rbx, r11
mov [rsp + 8*81], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*82]
adcx r11, rax
mov [rsp + 8*82], r11

mov r11, 0
adox r11, [rsp + 8*83]
adcx r11, rax
mov [rsp + 8*83], r11

mov r11, 0
adox r11, [rsp + 8*84]
adcx r11, rax
mov [rsp + 8*84], r11

mov r11, 0
adox r11, [rsp + 8*85]
adcx r11, rax
mov [rsp + 8*85], r11

mov r11, 0
adox r11, [rsp + 8*86]
adcx r11, rax
mov [rsp + 8*86], r11

mov r11, 0
adox r11, [rsp + 8*87]
adcx r11, rax
mov [rsp + 8*87], r11

mov r11, 0
adox r11, [rsp + 8*88]
adcx r11, rax
mov [rsp + 8*88], r11

mov r11, 0
adox r11, [rsp + 8*89]
adcx r11, rax
mov [rsp + 8*89], r11

mov r11, 0
adox r11, [rsp + 8*90]
adcx r11, rax
mov [rsp + 8*90], r11

mov r11, 0
adox r11, [rsp + 8*91]
adcx r11, rax
mov [rsp + 8*91], r11

mov r11, 0
adox r11, [rsp + 8*92]
adcx r11, rax
mov [rsp + 8*92], r11

mov r11, 0
adox r11, [rsp + 8*93]
adcx r11, rax
mov [rsp + 8*93], r11

mov r11, 0
adox r11, [rsp + 8*94]
adcx r11, rax
mov [rsp + 8*94], r11

mov r11, 0
adox r11, [rsp + 8*95]
adcx r11, rax
mov [rsp + 8*95], r11

mov r11, 0
adox r11, [rsp + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*2]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*2], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*3]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*4]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*5]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*6]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*7]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*8]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*9]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*10]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*11]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*12]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*13]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*14]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*82]
adcx rbx, r11
mov [rsp + 8*82], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*83]
adcx r11, rax
mov [rsp + 8*83], r11

mov r11, 0
adox r11, [rsp + 8*84]
adcx r11, rax
mov [rsp + 8*84], r11

mov r11, 0
adox r11, [rsp + 8*85]
adcx r11, rax
mov [rsp + 8*85], r11

mov r11, 0
adox r11, [rsp + 8*86]
adcx r11, rax
mov [rsp + 8*86], r11

mov r11, 0
adox r11, [rsp + 8*87]
adcx r11, rax
mov [rsp + 8*87], r11

mov r11, 0
adox r11, [rsp + 8*88]
adcx r11, rax
mov [rsp + 8*88], r11

mov r11, 0
adox r11, [rsp + 8*89]
adcx r11, rax
mov [rsp + 8*89], r11

mov r11, 0
adox r11, [rsp + 8*90]
adcx r11, rax
mov [rsp + 8*90], r11

mov r11, 0
adox r11, [rsp + 8*91]
adcx r11, rax
mov [rsp + 8*91], r11

mov r11, 0
adox r11, [rsp + 8*92]
adcx r11, rax
mov [rsp + 8*92], r11

mov r11, 0
adox r11, [rsp + 8*93]
adcx r11, rax
mov [rsp + 8*93], r11

mov r11, 0
adox r11, [rsp + 8*94]
adcx r11, rax
mov [rsp + 8*94], r11

mov r11, 0
adox r11, [rsp + 8*95]
adcx r11, rax
mov [rsp + 8*95], r11

mov r11, 0
adox r11, [rsp + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*3]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*3], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*4], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*5], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*6], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*7], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*8], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*9], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*10], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*11], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*12], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*13], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*14], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*15], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*83]
adcx rbx, r11
mov [rsp + 8*83], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*84]
adcx r11, rax
mov [rsp + 8*84], r11

mov r11, 0
adox r11, [rsp + 8*85]
adcx r11, rax
mov [rsp + 8*85], r11

mov r11, 0
adox r11, [rsp + 8*86]
adcx r11, rax
mov [rsp + 8*86], r11

mov r11, 0
adox r11, [rsp + 8*87]
adcx r11, rax
mov [rsp + 8*87], r11

mov r11, 0
adox r11, [rsp + 8*88]
adcx r11, rax
mov [rsp + 8*88], r11

mov r11, 0
adox r11, [rsp + 8*89]
adcx r11, rax
mov [rsp + 8*89], r11

mov r11, 0
adox r11, [rsp + 8*90]
adcx r11, rax
mov [rsp + 8*90], r11

mov r11, 0
adox r11, [rsp + 8*91]
adcx r11, rax
mov [rsp + 8*91], r11

mov r11, 0
adox r11, [rsp + 8*92]
adcx r11, rax
mov [rsp + 8*92], r11

mov r11, 0
adox r11, [rsp + 8*93]
adcx r11, rax
mov [rsp + 8*93], r11

mov r11, 0
adox r11, [rsp + 8*94]
adcx r11, rax
mov [rsp + 8*94], r11

mov r11, 0
adox r11, [rsp + 8*95]
adcx r11, rax
mov [rsp + 8*95], r11

mov r11, 0
adox r11, [rsp + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*4]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*4], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*5]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*6]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*7]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*8]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*9]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*10]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*11]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*12]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*13]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*14]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*84]
adcx rbx, r11
mov [rsp + 8*84], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*85]
adcx r11, rax
mov [rsp + 8*85], r11

mov r11, 0
adox r11, [rsp + 8*86]
adcx r11, rax
mov [rsp + 8*86], r11

mov r11, 0
adox r11, [rsp + 8*87]
adcx r11, rax
mov [rsp + 8*87], r11

mov r11, 0
adox r11, [rsp + 8*88]
adcx r11, rax
mov [rsp + 8*88], r11

mov r11, 0
adox r11, [rsp + 8*89]
adcx r11, rax
mov [rsp + 8*89], r11

mov r11, 0
adox r11, [rsp + 8*90]
adcx r11, rax
mov [rsp + 8*90], r11

mov r11, 0
adox r11, [rsp + 8*91]
adcx r11, rax
mov [rsp + 8*91], r11

mov r11, 0
adox r11, [rsp + 8*92]
adcx r11, rax
mov [rsp + 8*92], r11

mov r11, 0
adox r11, [rsp + 8*93]
adcx r11, rax
mov [rsp + 8*93], r11

mov r11, 0
adox r11, [rsp + 8*94]
adcx r11, rax
mov [rsp + 8*94], r11

mov r11, 0
adox r11, [rsp + 8*95]
adcx r11, rax
mov [rsp + 8*95], r11

mov r11, 0
adox r11, [rsp + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*5]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*5], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*6], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*7], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*8], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*9], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*10], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*11], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*12], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*13], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*14], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*15], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*85]
adcx rbx, r11
mov [rsp + 8*85], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*86]
adcx r11, rax
mov [rsp + 8*86], r11

mov r11, 0
adox r11, [rsp + 8*87]
adcx r11, rax
mov [rsp + 8*87], r11

mov r11, 0
adox r11, [rsp + 8*88]
adcx r11, rax
mov [rsp + 8*88], r11

mov r11, 0
adox r11, [rsp + 8*89]
adcx r11, rax
mov [rsp + 8*89], r11

mov r11, 0
adox r11, [rsp + 8*90]
adcx r11, rax
mov [rsp + 8*90], r11

mov r11, 0
adox r11, [rsp + 8*91]
adcx r11, rax
mov [rsp + 8*91], r11

mov r11, 0
adox r11, [rsp + 8*92]
adcx r11, rax
mov [rsp + 8*92], r11

mov r11, 0
adox r11, [rsp + 8*93]
adcx r11, rax
mov [rsp + 8*93], r11

mov r11, 0
adox r11, [rsp + 8*94]
adcx r11, rax
mov [rsp + 8*94], r11

mov r11, 0
adox r11, [rsp + 8*95]
adcx r11, rax
mov [rsp + 8*95], r11

mov r11, 0
adox r11, [rsp + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*6]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*6], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*7]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*8]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*9]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*10]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*11]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*12]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*13]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*14]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*86]
adcx rbx, r11
mov [rsp + 8*86], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*87]
adcx r11, rax
mov [rsp + 8*87], r11

mov r11, 0
adox r11, [rsp + 8*88]
adcx r11, rax
mov [rsp + 8*88], r11

mov r11, 0
adox r11, [rsp + 8*89]
adcx r11, rax
mov [rsp + 8*89], r11

mov r11, 0
adox r11, [rsp + 8*90]
adcx r11, rax
mov [rsp + 8*90], r11

mov r11, 0
adox r11, [rsp + 8*91]
adcx r11, rax
mov [rsp + 8*91], r11

mov r11, 0
adox r11, [rsp + 8*92]
adcx r11, rax
mov [rsp + 8*92], r11

mov r11, 0
adox r11, [rsp + 8*93]
adcx r11, rax
mov [rsp + 8*93], r11

mov r11, 0
adox r11, [rsp + 8*94]
adcx r11, rax
mov [rsp + 8*94], r11

mov r11, 0
adox r11, [rsp + 8*95]
adcx r11, rax
mov [rsp + 8*95], r11

mov r11, 0
adox r11, [rsp + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*7]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*7], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*8], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*9], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*10], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*11], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*12], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*13], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*14], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*15], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*87]
adcx rbx, r11
mov [rsp + 8*87], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*88]
adcx r11, rax
mov [rsp + 8*88], r11

mov r11, 0
adox r11, [rsp + 8*89]
adcx r11, rax
mov [rsp + 8*89], r11

mov r11, 0
adox r11, [rsp + 8*90]
adcx r11, rax
mov [rsp + 8*90], r11

mov r11, 0
adox r11, [rsp + 8*91]
adcx r11, rax
mov [rsp + 8*91], r11

mov r11, 0
adox r11, [rsp + 8*92]
adcx r11, rax
mov [rsp + 8*92], r11

mov r11, 0
adox r11, [rsp + 8*93]
adcx r11, rax
mov [rsp + 8*93], r11

mov r11, 0
adox r11, [rsp + 8*94]
adcx r11, rax
mov [rsp + 8*94], r11

mov r11, 0
adox r11, [rsp + 8*95]
adcx r11, rax
mov [rsp + 8*95], r11

mov r11, 0
adox r11, [rsp + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*8]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*8], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*9]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*10]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*11]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*12]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*13]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*14]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*88]
adcx rbx, r11
mov [rsp + 8*88], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*89]
adcx r11, rax
mov [rsp + 8*89], r11

mov r11, 0
adox r11, [rsp + 8*90]
adcx r11, rax
mov [rsp + 8*90], r11

mov r11, 0
adox r11, [rsp + 8*91]
adcx r11, rax
mov [rsp + 8*91], r11

mov r11, 0
adox r11, [rsp + 8*92]
adcx r11, rax
mov [rsp + 8*92], r11

mov r11, 0
adox r11, [rsp + 8*93]
adcx r11, rax
mov [rsp + 8*93], r11

mov r11, 0
adox r11, [rsp + 8*94]
adcx r11, rax
mov [rsp + 8*94], r11

mov r11, 0
adox r11, [rsp + 8*95]
adcx r11, rax
mov [rsp + 8*95], r11

mov r11, 0
adox r11, [rsp + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*9]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*9], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*10], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*11], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*12], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*13], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*14], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*15], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*89]
adcx rbx, r11
mov [rsp + 8*89], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*90]
adcx r11, rax
mov [rsp + 8*90], r11

mov r11, 0
adox r11, [rsp + 8*91]
adcx r11, rax
mov [rsp + 8*91], r11

mov r11, 0
adox r11, [rsp + 8*92]
adcx r11, rax
mov [rsp + 8*92], r11

mov r11, 0
adox r11, [rsp + 8*93]
adcx r11, rax
mov [rsp + 8*93], r11

mov r11, 0
adox r11, [rsp + 8*94]
adcx r11, rax
mov [rsp + 8*94], r11

mov r11, 0
adox r11, [rsp + 8*95]
adcx r11, rax
mov [rsp + 8*95], r11

mov r11, 0
adox r11, [rsp + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*10]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*10], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*11]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*12]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*13]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*14]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*90]
adcx rbx, r11
mov [rsp + 8*90], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*91]
adcx r11, rax
mov [rsp + 8*91], r11

mov r11, 0
adox r11, [rsp + 8*92]
adcx r11, rax
mov [rsp + 8*92], r11

mov r11, 0
adox r11, [rsp + 8*93]
adcx r11, rax
mov [rsp + 8*93], r11

mov r11, 0
adox r11, [rsp + 8*94]
adcx r11, rax
mov [rsp + 8*94], r11

mov r11, 0
adox r11, [rsp + 8*95]
adcx r11, rax
mov [rsp + 8*95], r11

mov r11, 0
adox r11, [rsp + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*11]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*11], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*12], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*13], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*14], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*15], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*91]
adcx rbx, r11
mov [rsp + 8*91], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*92]
adcx r11, rax
mov [rsp + 8*92], r11

mov r11, 0
adox r11, [rsp + 8*93]
adcx r11, rax
mov [rsp + 8*93], r11

mov r11, 0
adox r11, [rsp + 8*94]
adcx r11, rax
mov [rsp + 8*94], r11

mov r11, 0
adox r11, [rsp + 8*95]
adcx r11, rax
mov [rsp + 8*95], r11

mov r11, 0
adox r11, [rsp + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*12]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*12], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*13]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*14]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*92]
adcx rbx, r11
mov [rsp + 8*92], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*93]
adcx r11, rax
mov [rsp + 8*93], r11

mov r11, 0
adox r11, [rsp + 8*94]
adcx r11, rax
mov [rsp + 8*94], r11

mov r11, 0
adox r11, [rsp + 8*95]
adcx r11, rax
mov [rsp + 8*95], r11

mov r11, 0
adox r11, [rsp + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*13]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*13], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*14], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*15], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*93]
adcx rbx, r11
mov [rsp + 8*93], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*94]
adcx r11, rax
mov [rsp + 8*94], r11

mov r11, 0
adox r11, [rsp + 8*95]
adcx r11, rax
mov [rsp + 8*95], r11

mov r11, 0
adox r11, [rsp + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*14]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*14], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*94]
adcx rbx, r11
mov [rsp + 8*94], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*95]
adcx r11, rax
mov [rsp + 8*95], r11

mov r11, 0
adox r11, [rsp + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*15]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*15], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*95]
adcx rbx, r11
mov [rsp + 8*95], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*96]
adcx r11, rax
mov [rsp + 8*96], r11

mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*16]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*16], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*96]
adcx rbx, r11
mov [rsp + 8*96], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*17]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*17], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*97]
adcx rbx, r11
mov [rsp + 8*97], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*18]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*18], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*98]
adcx rbx, r11
mov [rsp + 8*98], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*19]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*19], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*99]
adcx rbx, r11
mov [rsp + 8*99], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*20]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*20], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*100]
adcx rbx, r11
mov [rsp + 8*100], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*21]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*21], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*101]
adcx rbx, r11
mov [rsp + 8*101], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*22]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*22], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*102]
adcx rbx, r11
mov [rsp + 8*102], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*23]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*23], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*103]
adcx rbx, r11
mov [rsp + 8*103], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*24]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*24], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*104]
adcx rbx, r11
mov [rsp + 8*104], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*25]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*25], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*105]
adcx rbx, r11
mov [rsp + 8*105], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*26]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*26], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*106]
adcx rbx, r11
mov [rsp + 8*106], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*27]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*27], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*107]
adcx rbx, r11
mov [rsp + 8*107], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*28]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*28], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*108]
adcx rbx, r11
mov [rsp + 8*108], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*29]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*29], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*109]
adcx rbx, r11
mov [rsp + 8*109], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*30]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*30], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*110]
adcx rbx, r11
mov [rsp + 8*110], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*31]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*31], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*111]
adcx rbx, r11
mov [rsp + 8*111], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*32]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*32], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*112]
adcx rbx, r11
mov [rsp + 8*112], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*33]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*33], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*113]
adcx rbx, r11
mov [rsp + 8*113], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*34]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*34], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*114]
adcx rbx, r11
mov [rsp + 8*114], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*35]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*35], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*115]
adcx rbx, r11
mov [rsp + 8*115], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*36]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*36], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*116]
adcx rbx, r11
mov [rsp + 8*116], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*37]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*37], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*117]
adcx rbx, r11
mov [rsp + 8*117], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*38]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*38], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*118]
adcx rbx, r11
mov [rsp + 8*118], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*39]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*39], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*119]
adcx rbx, r11
mov [rsp + 8*119], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*40]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*40], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*120]
adcx rbx, r11
mov [rsp + 8*120], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*41]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*41], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*121]
adcx rbx, r11
mov [rsp + 8*121], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*42]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*42], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*122]
adcx rbx, r11
mov [rsp + 8*122], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*43]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*43], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*123]
adcx rbx, r11
mov [rsp + 8*123], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*44]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*44], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*124]
adcx rbx, r11
mov [rsp + 8*124], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*45]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*45], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*125]
adcx rbx, r11
mov [rsp + 8*125], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*46]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*46], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*126]
adcx rbx, r11
mov [rsp + 8*126], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*47]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*47], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*127]
adcx rbx, r11
mov [rsp + 8*127], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*48]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*48], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*128]
adcx rbx, r11
mov [rsp + 8*128], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*49]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*49], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*129]
adcx rbx, r11
mov [rsp + 8*129], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*50]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*50], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*130]
adcx rbx, r11
mov [rsp + 8*130], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*51]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*51], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*131]
adcx rbx, r11
mov [rsp + 8*131], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*52]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*52], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*132]
adcx rbx, r11
mov [rsp + 8*132], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*53]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*53], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*133]
adcx rbx, r11
mov [rsp + 8*133], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*54]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*54], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*134]
adcx rbx, r11
mov [rsp + 8*134], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*55]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*55], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*135]
adcx rbx, r11
mov [rsp + 8*135], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*56]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*56], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*136]
adcx rbx, r11
mov [rsp + 8*136], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*57]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*57], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*137]
adcx rbx, r11
mov [rsp + 8*137], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*58]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*58], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*138]
adcx rbx, r11
mov [rsp + 8*138], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*59]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*59], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*139]
adcx rbx, r11
mov [rsp + 8*139], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*60]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*60], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*140]
adcx rbx, r11
mov [rsp + 8*140], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*61]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*61], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*141]
adcx rbx, r11
mov [rsp + 8*141], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*62]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*62], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*142]
adcx rbx, r11
mov [rsp + 8*142], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*63]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*63], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*143]
adcx rbx, r11
mov [rsp + 8*143], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*64]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*64], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*144]
adcx rbx, r11
mov [rsp + 8*144], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*65]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*65], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*145]
adcx rbx, r11
mov [rsp + 8*145], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*66]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*66], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*146]
adcx rbx, r11
mov [rsp + 8*146], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*67]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*67], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*147]
adcx rbx, r11
mov [rsp + 8*147], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*68]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*68], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*148]
adcx rbx, r11
mov [rsp + 8*148], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*69]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*69], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*149]
adcx rbx, r11
mov [rsp + 8*149], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*70]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*70], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*150]
adcx rbx, r11
mov [rsp + 8*150], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*71]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*71], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rsp + 8*149], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rsp + 8*150], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*151]
adcx rbx, r11
mov [rsp + 8*151], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*72]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*72], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*150]
adox rbx, rax
mov [rsp + 8*150], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*151]
adox rcx, rax
mov [rsp + 8*151], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*152]
adcx rbx, r11
mov [rsp + 8*152], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*73]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*73], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rsp + 8*149], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rsp + 8*150], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*151]
adox rbx, rax
mov [rsp + 8*151], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*152]
adox rcx, rax
mov [rsp + 8*152], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*153]
adcx rbx, r11
mov [rsp + 8*153], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*74]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*74], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*150]
adox rbx, rax
mov [rsp + 8*150], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*151]
adox rcx, rax
mov [rsp + 8*151], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*152]
adox rbx, rax
mov [rsp + 8*152], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*153]
adox rcx, rax
mov [rsp + 8*153], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*154]
adcx rbx, r11
mov [rsp + 8*154], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*75]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*75], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rsp + 8*149], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rsp + 8*150], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*151]
adox rbx, rax
mov [rsp + 8*151], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*152]
adox rcx, rax
mov [rsp + 8*152], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*153]
adox rbx, rax
mov [rsp + 8*153], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*154]
adox rcx, rax
mov [rsp + 8*154], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*155]
adcx rbx, r11
mov [rsp + 8*155], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*76]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*76], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*150]
adox rbx, rax
mov [rsp + 8*150], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*151]
adox rcx, rax
mov [rsp + 8*151], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*152]
adox rbx, rax
mov [rsp + 8*152], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*153]
adox rcx, rax
mov [rsp + 8*153], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*154]
adox rbx, rax
mov [rsp + 8*154], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*155]
adox rcx, rax
mov [rsp + 8*155], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*156]
adcx rbx, r11
mov [rsp + 8*156], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*77]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*77], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rsp + 8*149], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rsp + 8*150], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*151]
adox rbx, rax
mov [rsp + 8*151], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*152]
adox rcx, rax
mov [rsp + 8*152], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*153]
adox rbx, rax
mov [rsp + 8*153], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*154]
adox rcx, rax
mov [rsp + 8*154], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*155]
adox rbx, rax
mov [rsp + 8*155], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*156]
adox rcx, rax
mov [rsp + 8*156], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*157]
adcx rbx, r11
mov [rsp + 8*157], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*78]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*78], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*150]
adox rbx, rax
mov [rsp + 8*150], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*151]
adox rcx, rax
mov [rsp + 8*151], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*152]
adox rbx, rax
mov [rsp + 8*152], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*153]
adox rcx, rax
mov [rsp + 8*153], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*154]
adox rbx, rax
mov [rsp + 8*154], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*155]
adox rcx, rax
mov [rsp + 8*155], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*156]
adox rbx, rax
mov [rsp + 8*156], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*157]
adox rcx, rax
mov [rsp + 8*157], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*158]
adcx rbx, r11
mov [rsp + 8*158], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*79]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*79], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rdi + 8*0], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rdi + 8*1], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rdi + 8*2], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rdi + 8*3], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rdi + 8*4], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rdi + 8*5], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rdi + 8*6], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rdi + 8*7], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rdi + 8*8], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rdi + 8*9], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rdi + 8*10], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rdi + 8*11], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rdi + 8*12], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rdi + 8*13], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rdi + 8*14], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rdi + 8*15], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rdi + 8*16], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rdi + 8*17], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rdi + 8*18], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rdi + 8*19], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rdi + 8*20], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rdi + 8*21], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rdi + 8*22], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rdi + 8*23], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rdi + 8*24], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rdi + 8*25], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rdi + 8*26], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rdi + 8*27], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rdi + 8*28], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rdi + 8*29], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rdi + 8*30], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rdi + 8*31], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rdi + 8*32], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rdi + 8*33], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rdi + 8*34], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rdi + 8*35], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rdi + 8*36], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rdi + 8*37], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rdi + 8*38], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rdi + 8*39], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rdi + 8*40], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rdi + 8*41], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rdi + 8*42], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rdi + 8*43], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rdi + 8*44], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rdi + 8*45], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rdi + 8*46], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rdi + 8*47], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rdi + 8*48], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rdi + 8*49], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rdi + 8*50], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rdi + 8*51], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rdi + 8*52], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rdi + 8*53], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rdi + 8*54], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rdi + 8*55], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rdi + 8*56], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rdi + 8*57], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rdi + 8*58], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rdi + 8*59], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rdi + 8*60], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rdi + 8*61], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rdi + 8*62], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rdi + 8*63], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rdi + 8*64], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rdi + 8*65], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rdi + 8*66], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rdi + 8*67], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rdi + 8*68], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rdi + 8*69], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rdi + 8*70], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*151]
adox rbx, rax
mov [rdi + 8*71], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*152]
adox rcx, rax
mov [rdi + 8*72], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*153]
adox rbx, rax
mov [rdi + 8*73], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*154]
adox rcx, rax
mov [rdi + 8*74], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*155]
adox rbx, rax
mov [rdi + 8*75], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*156]
adox rcx, rax
mov [rdi + 8*76], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*157]
adox rbx, rax
mov [rdi + 8*77], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*158]
adox rcx, rax
mov [rdi + 8*78], rcx

mov r11, 0
adox rbx, [rsp + 8*159]
adcx rbx, r11
mov [rdi + 8*79], rbx

########################## done
add rsp, 2*pbytes+8
pop r14
jmp .reduce_once





.global secsidh_internal_5119m46l244_fp_copy
secsidh_internal_5119m46l244_fp_copy:
    cld
    mov rcx, plimbs
    rep movsq
    ret

.global secsidh_internal_5119m46l244_fp_cswap
secsidh_internal_5119m46l244_fp_cswap:
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
    mov r12, secsidh_internal_5119m46l244_p@GOTPCREL[rip]

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


    setnc al
    movzx rax, al
    neg rax

.macro cswap2, r, m
    xor \r, \m
    and \r, rax
    xor \m, \r
.endm


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


.global secsidh_internal_5119m46l244_fp_add2
secsidh_internal_5119m46l244_fp_add2:
  mov rdx, rdi

.global secsidh_internal_5119m46l244_fp_add
secsidh_internal_5119m46l244_fp_add:
  push rdi
  call secsidh_internal_5119m46l244_uintbig_add
  pop rdi

  jmp .reduce_once

.global secsidh_internal_5119m46l244_fp_sub2
secsidh_internal_5119m46l244_fp_sub2:
  mov rdx, rdi
  xchg rsi, rdx

.global secsidh_internal_5119m46l244_fp_sub
secsidh_internal_5119m46l244_fp_sub:
  push rdi
  call secsidh_internal_5119m46l244_uintbig_sub
  pop rdi


  neg rax

  sub rsp, pbytes

  mov r8, secsidh_internal_5119m46l244_p@GOTPCREL[rip]
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

.global secsidh_internal_5119m46l244_fp_enc
secsidh_internal_5119m46l244_fp_enc:
    mov r8, secsidh_internal_5119m46l244_r_squared_mod_p@GOTPCREL[rip]
    lea rdx, [r8]
    jmp secsidh_internal_5119m46l244_fp_mul

.global secsidh_internal_5119m46l244_fp_dec
secsidh_internal_5119m46l244_fp_dec:
    mov r8, secsidh_internal_5119m46l244_uintbig_1@GOTPCREL[rip]
    lea rdx, [r8]
    jmp secsidh_internal_5119m46l244_fp_mul


.macro add_40x40
# intro
    xor r8, r8
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
    adc r8, 0
    mov [rdi + 40*8], r8
.endm

.macro sub_d_82x80_woc
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
# outro
    mov rax, [rdi + 80*8]
    sbb rax, 0
    mov [rdi + 80*8], rax
    mov rax, [rdi + 81*8]
    sbb rax, 0
    mov [rdi + 81*8], rax
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
# outro
    mov rax, [rdi + 80*8]
    sbb rax, 0
    mov [rdi + 80*8], rax
    mov rax, [rdi + 81*8]
    sbb rax, 0
    mov [rdi + 81*8], rax
.endm

.macro add_82x81
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 81
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
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
    mov rax, [rsi + 8*156]
    adc rax, 0
    mov [rdi + 8*156], rax
    mov rax, [rsi + 8*157]
    adc rax, 0
    mov [rdi + 8*157], rax
    mov rax, [rsi + 8*158]
    adc rax, 0
    mov [rdi + 8*158], rax
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
mult_10x10
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

.macro add_21x20
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
    mov rax, [rsi + 8*20]
    adc rax, 0
    mov [rdi + 8*20], rax
    adc r8, 0
    mov [rdi + 8*21], r8
.endm

.macro _sub_d_44x42_woc
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
# outro
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
# outro
    mov rax, [rdi + 42*8]
    sbb rax, 0
    mov [rdi + 42*8], rax
    mov rax, [rdi + 43*8]
    sbb rax, 0
    mov [rdi + 43*8], rax
.endm

.macro add_43x42
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
mult_11x11
lea     r12, [rbx+176]
mov     rdx, rsp
lea     rsi, [rsp+96]
lea     rdi, [rsp+192]
mult_12x12
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_11x11
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

.macro mult_41x41
push    r14
push    r13
lea     r13, [rsi+160]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+160]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 704
mov     rdi, rsp
add_21x20
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+176]
add_21x20
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+320]
mult_20x20
mov     rdx, rsp
lea     rsi, [rsp+176]
lea     rdi, [rsp+352]
mult_22x22
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
mult_21x21
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+352]
_sub_d_44x42_woc
lea     rdi, [rbx+160]
lea     rdx, [rsp+352]
mov     rsi, rdi
add_43x42
add     rsp, 704
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_80x80
push    r14
push    r13
lea     r13, [rsi+320]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+320]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 1312
mov     rdi, rsp
add_40x40
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+328]
add_40x40
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_40x40
lea     r12, [rbx+640]
mov     rdx, rsp
lea     rsi, [rsp+328]
lea     rdi, [rsp+656]
mult_41x41
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_40x40
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+656]
sub_d_82x80_woc
lea     rdi, [rbx+320]
lea     rdx, [rsp+656]
mov     rsi, rdi
add_82x81
add     rsp, 1312
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.global secsidh_internal_5119m46l244_fp_mult_80x80
secsidh_internal_5119m46l244_fp_mult_80x80:
    mult_80x80
    ret

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

.global secsidh_internal_5119m46l244_fp_random
secsidh_internal_5119m46l244_fp_random:

    push rdi
    mov rsi, pbytes
    call randombytes
    pop rdi
    mov rax, 1
    shl rax, (pbits % 64)
    dec rax
    and [rdi + pbytes-8], rax
    mov r8, secsidh_internal_5119m46l244_p@GOTPCREL[rip]
    .set k, plimbs-1
    .rept plimbs
        mov rax, [r8 + 8*k]
        cmp [rdi + 8*k], rax
        jge secsidh_internal_5119m46l244_fp_random
        jl 0f
        .set k, k-1
    .endr
    0:
    ret

.macro add_23x23
# intro
    xor r8, r8
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 22
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    adc r8, 0
    mov [rdi + 23*8], r8
.endm

.macro sub_d_48x46_woc
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
# outro
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
# outro
    mov rax, [rdi + 46*8]
    sbb rax, 0
    mov [rdi + 46*8], rax
    mov rax, [rdi + 47*8]
    sbb rax, 0
    mov [rdi + 47*8], rax
.endm

.macro add_48x47
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 47
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*48]
    adc rax, 0
    mov [rdi + 8*48], rax
    mov rax, [rsi + 8*49]
    adc rax, 0
    mov [rdi + 8*49], rax
    mov rax, [rsi + 8*50]
    adc rax, 0
    mov [rdi + 8*50], rax
.endm

.macro add_12x11_
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

.macro add_14x13_
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
.endm

.macro mult_12x12_
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
add_14x13_
add     rsp, 224
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
add_12x11_
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+104]
add_12x11_
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
mult_12x12_
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

.macro add_12x12
# intro
    xor r8, r8
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
    adc r8, 0
    mov [rdi + 12*8], r8
.endm

.macro sub_d_26x24_woc
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
# outro
    mov rax, [rdi + 24*8]
    sbb rax, 0
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, 0
    mov [rdi + 25*8], rax
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
# outro
    mov rax, [rdi + 24*8]
    sbb rax, 0
    mov [rdi + 24*8], rax
    mov rax, [rdi + 25*8]
    sbb rax, 0
    mov [rdi + 25*8], rax
.endm

.macro add_26x25
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
.endm

.macro mult_24x24
push    r14
push    r13
lea     r13, [rsi+96]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+96]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 416
mov     rdi, rsp
add_12x12
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+104]
add_12x12
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_12x12_
lea     r12, [rbx+192]
mov     rdx, rsp
lea     rsi, [rsp+104]
lea     rdi, [rsp+208]
mult_13x13
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_12x12_
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+208]
sub_d_26x24_woc
lea     rdi, [rbx+96]
lea     rdx, [rsp+208]
mov     rsi, rdi
add_26x25
add     rsp, 416
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.global secsidh_internal_5119m46l244_mult_redc
secsidh_internal_5119m46l244_mult_redc:
push    r14
push    r13
lea     r13, [rsi+184]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+184]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 768
mov     rdi, rsp
add_23x23
mov     rdx, r14
mov     rsi, r12
lea     rdi, [rsp+192]
add_23x23
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_23x23
lea     r12, [rbx+368]
mov     rdx, rsp
lea     rsi, [rsp+192]
lea     rdi, [rsp+384]
mult_24x24
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_23x23
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+384]
sub_d_48x46_woc
lea     rdi, [rbx+184]
lea     rdx, [rsp+384]
mov     rsi, rdi
add_48x47
add     rsp, 768
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
ret

.global secsidh_internal_5119m46l244_add_redc
secsidh_internal_5119m46l244_add_redc:
    mov rax, [rsi +  0]
    add rax, [rdx +  0]
    mov [rdi +  0], rax
    .set k, 1
    .rept 113
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
    setc al
    movzx rax, al
    ret

.global secsidh_internal_5119m46l244_add_redc_final
secsidh_internal_5119m46l244_add_redc_final:
    mov rax, [rsi +  0]
    mov r8, [rdx +  0]
    add rax, [rdx +  0]
    mov [rdi +  0], rax
    .set k, 1
    .rept 79
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

.macro sqr_12x12
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
mov     rdx, 6
mov     rsi, rbp
mov     rdi, rbx
call sqr
lea     r12, [rbx+96]
mov     rdx, 7
mov     rsi, rsp
lea     rdi, [rsp+112]
call sqr
mov     rdx, 6
mov     rsi, r13
mov     rdi, r12
call sqr
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

.macro sqr_21x21
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
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+160]
sqr_10x10
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+192]
sqr_12x12
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
sqr_11x11
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

.macro sqr_40x40
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
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
sqr_20x20
lea     r12, [rbx+320]
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+336]
sqr_21x21
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
sqr_20x20
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

.macro sqr_22x22
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
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
sqr_11x11
lea     r12, [rbx+176]
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+192]
sqr_12x12
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
sqr_11x11
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

.macro sqr_41x41
push    r14
push    r13
lea     r13, [rsi+160]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+160]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 704
mov     rdi, rsp
add_21x20
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
lea     rbp, [rbx+320]
sqr_20x20
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+352]
sqr_22x22
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
sqr_21x21
mov     rsi, rbx
mov     rdx, rbp
lea     rdi, [rsp+352]
_sub_d_44x42_woc
lea     rdi, [rbx+160]
lea     rdx, [rsp+352]
mov     rsi, rdi
add_43x42
add     rsp, 704
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro sqr_80x80
push    r14
push    r13
lea     r13, [rsi+320]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+320]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 1312
mov     rdi, rsp
add_40x40
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
sqr_40x40
lea     r12, [rbx+640]
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+656]
sqr_41x41
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
sqr_40x40
mov     rdx, r12
mov     rsi, rbx
lea     rdi, [rsp+656]
sub_d_82x80_woc
lea     rdi, [rbx+320]
lea     rdx, [rsp+656]
mov     rsi, rdi
add_82x81
add     rsp, 1312
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.global secsidh_internal_5119m46l244_fp_squaring
secsidh_internal_5119m46l244_fp_squaring:
    sqr_80x80
    ret
    