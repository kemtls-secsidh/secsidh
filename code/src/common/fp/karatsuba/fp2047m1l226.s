.intel_syntax noprefix

.section .rodata

.set pbits,2047
.set pbytes,256
.set plimbs,32

.global fp_sq_counter
.hidden fp_sq_counter
fp_sq_counter: .quad 0

.global secsidh_internal_2047m1l226_redc_alpha
secsidh_internal_2047m1l226_redc_alpha:
.quad  0xCB336E65DD9AB973, 0x31DA9904076E6A70, 0x9F825D7BEA428F54, 0x80B1D7895DEABE60 
.quad  0xD3B3CDE44A99EBD8, 0x2C433638FE69F531, 0x46C02600030671E2, 0x3EB36EBF24EB264F 
.quad  0x5872FD3292CF3725, 0x25261B882C99A891, 0x5AA0C7A8E51C618F, 0xDFE30228DC090A5E 
.quad  0x1235FFF9C3496720, 0x556D82DFB25A19E0, 0xAF0D91A49AD1FCF6, 0x5CFE8BDDCAAF7214 
.quad  0x67D90F84820F3740, 0x85DD61C29F9EA3FA, 0x1B493E97510173BA, 0x57963F8A2EF281C0 
.quad  0x215B3CA607652A95, 0xBE13D52039838268, 0xC1B8B0AC479FC5EB, 0xAACDDF254A1CEFF1 
.quad  0x5D89B511362EE752, 0x5C935F8B2C251C39, 0x3336CCFC4DD81041, 0xFE4AEA834B8F332 
.quad  0x8AA77CDCE5CCA52, 0x2DD1AFC034E7A378, 0x4B5882EA64EA57E7, 0x0 

.global secsidh_internal_2047m1l226_r_squared_mod_p 
secsidh_internal_2047m1l226_r_squared_mod_p:
.quad 0x7F4DD8E5DF23BB8,0x5C776D52280157ED,0x649F1DDABA652A4C,0x5F82754E976E1C51 
.quad 0x216A66554955B423,0x837F16EBDA6112EC,0x449BE2BE3F1308CA,0xD417CF96FBD398E 
.quad 0xF40CA379B3CFDD87,0xE572142C0A18BEF2,0x174A98FEF7CBBD6D,0x92147FED3A21520A 
.quad 0xC2FEF4524FB5A582,0x7EA04A000CF05B29,0xEE7604D0586AEE7,0x360C6B9E4402ACBE 
.quad 0x2412C3AB8629CC28,0x11843E0F489CD4DA,0x965E567F2D69ADA1,0xC35FDB6E0A1CE3AC 
.quad 0xDFCE999B5BE1D15D,0xADFC765457B8334C,0x178A9115F96B28ED,0x7C25482F10317EEF 
.quad 0x87B1090C7F92BA82,0xF6E929FCF67F4BB3,0xDAB73BE93D26BAA6,0xA520E31962981EFB 
.quad 0xD1EBB498F914FB73,0x71AAAC9068F25B31,0x18F8EE6ACA512273,0x2EA634B399D69CF7 


.section .text



.global secsidh_internal_2047m1l226_fp_word_redc
secsidh_internal_2047m1l226_fp_word_redc:
push r14
push rbx
sub rsp, 2*pbytes+1
mov r14, secsidh_internal_2047m1l226_redc_alpha@GOTPCREL[rip]
xor rax, rax
xor r8, r8
########################## mul
mov rdx, [rsi]
mulx rcx, rax, [r14]
adcx rax, [rsi + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsi + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsi + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsi + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsi + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsi + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsi + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsi + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsi + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsi + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsi + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsi + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsi + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsi + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsi + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsi + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsi + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsi + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsi + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsi + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsi + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsi + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsi + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsi + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsi + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsi + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsi + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsi + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsi + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsi + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsi + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsi + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsi + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsi + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsi + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsi + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsi + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsi + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsi + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsi + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsi + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsi + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsi + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsi + 8*49]
mov [rsp + 8*48], r11

mov r11, r8
adc r11, [rsi + 8*50]
mov [rsp + 8*49], r11

mov r11, r8
adc r11, [rsi + 8*51]
mov [rsp + 8*50], r11

mov r11, r8
adc r11, [rsi + 8*52]
mov [rsp + 8*51], r11

mov r11, r8
adc r11, [rsi + 8*53]
mov [rsp + 8*52], r11

mov r11, r8
adc r11, [rsi + 8*54]
mov [rsp + 8*53], r11

mov r11, r8
adc r11, [rsi + 8*55]
mov [rsp + 8*54], r11

mov r11, r8
adc r11, [rsi + 8*56]
mov [rsp + 8*55], r11

mov r11, r8
adc r11, [rsi + 8*57]
mov [rsp + 8*56], r11

mov r11, r8
adc r11, [rsi + 8*58]
mov [rsp + 8*57], r11

mov r11, r8
adc r11, [rsi + 8*59]
mov [rsp + 8*58], r11

mov r11, r8
adc r11, [rsi + 8*60]
mov [rsp + 8*59], r11

mov r11, r8
adc r11, [rsi + 8*61]
mov [rsp + 8*60], r11

mov r11, r8
adc r11, [rsi + 8*62]
mov [rsp + 8*61], r11

mov r11, r8
adc r11, [rsi + 8*63]
mov [rsp + 8*62], r11

mov r11, r8
adc r11, [rsi + 8*64]
mov [rsp + 8*63], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsp + 8*49]
mov [rsp + 8*48], r11

mov r11, r8
adc r11, [rsp + 8*50]
mov [rsp + 8*49], r11

mov r11, r8
adc r11, [rsp + 8*51]
mov [rsp + 8*50], r11

mov r11, r8
adc r11, [rsp + 8*52]
mov [rsp + 8*51], r11

mov r11, r8
adc r11, [rsp + 8*53]
mov [rsp + 8*52], r11

mov r11, r8
adc r11, [rsp + 8*54]
mov [rsp + 8*53], r11

mov r11, r8
adc r11, [rsp + 8*55]
mov [rsp + 8*54], r11

mov r11, r8
adc r11, [rsp + 8*56]
mov [rsp + 8*55], r11

mov r11, r8
adc r11, [rsp + 8*57]
mov [rsp + 8*56], r11

mov r11, r8
adc r11, [rsp + 8*58]
mov [rsp + 8*57], r11

mov r11, r8
adc r11, [rsp + 8*59]
mov [rsp + 8*58], r11

mov r11, r8
adc r11, [rsp + 8*60]
mov [rsp + 8*59], r11

mov r11, r8
adc r11, [rsp + 8*61]
mov [rsp + 8*60], r11

mov r11, r8
adc r11, [rsp + 8*62]
mov [rsp + 8*61], r11

mov r11, r8
adc r11, [rsp + 8*63]
mov [rsp + 8*62], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsp + 8*49]
mov [rsp + 8*48], r11

mov r11, r8
adc r11, [rsp + 8*50]
mov [rsp + 8*49], r11

mov r11, r8
adc r11, [rsp + 8*51]
mov [rsp + 8*50], r11

mov r11, r8
adc r11, [rsp + 8*52]
mov [rsp + 8*51], r11

mov r11, r8
adc r11, [rsp + 8*53]
mov [rsp + 8*52], r11

mov r11, r8
adc r11, [rsp + 8*54]
mov [rsp + 8*53], r11

mov r11, r8
adc r11, [rsp + 8*55]
mov [rsp + 8*54], r11

mov r11, r8
adc r11, [rsp + 8*56]
mov [rsp + 8*55], r11

mov r11, r8
adc r11, [rsp + 8*57]
mov [rsp + 8*56], r11

mov r11, r8
adc r11, [rsp + 8*58]
mov [rsp + 8*57], r11

mov r11, r8
adc r11, [rsp + 8*59]
mov [rsp + 8*58], r11

mov r11, r8
adc r11, [rsp + 8*60]
mov [rsp + 8*59], r11

mov r11, r8
adc r11, [rsp + 8*61]
mov [rsp + 8*60], r11

mov r11, r8
adc r11, [rsp + 8*62]
mov [rsp + 8*61], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsp + 8*49]
mov [rsp + 8*48], r11

mov r11, r8
adc r11, [rsp + 8*50]
mov [rsp + 8*49], r11

mov r11, r8
adc r11, [rsp + 8*51]
mov [rsp + 8*50], r11

mov r11, r8
adc r11, [rsp + 8*52]
mov [rsp + 8*51], r11

mov r11, r8
adc r11, [rsp + 8*53]
mov [rsp + 8*52], r11

mov r11, r8
adc r11, [rsp + 8*54]
mov [rsp + 8*53], r11

mov r11, r8
adc r11, [rsp + 8*55]
mov [rsp + 8*54], r11

mov r11, r8
adc r11, [rsp + 8*56]
mov [rsp + 8*55], r11

mov r11, r8
adc r11, [rsp + 8*57]
mov [rsp + 8*56], r11

mov r11, r8
adc r11, [rsp + 8*58]
mov [rsp + 8*57], r11

mov r11, r8
adc r11, [rsp + 8*59]
mov [rsp + 8*58], r11

mov r11, r8
adc r11, [rsp + 8*60]
mov [rsp + 8*59], r11

mov r11, r8
adc r11, [rsp + 8*61]
mov [rsp + 8*60], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsp + 8*49]
mov [rsp + 8*48], r11

mov r11, r8
adc r11, [rsp + 8*50]
mov [rsp + 8*49], r11

mov r11, r8
adc r11, [rsp + 8*51]
mov [rsp + 8*50], r11

mov r11, r8
adc r11, [rsp + 8*52]
mov [rsp + 8*51], r11

mov r11, r8
adc r11, [rsp + 8*53]
mov [rsp + 8*52], r11

mov r11, r8
adc r11, [rsp + 8*54]
mov [rsp + 8*53], r11

mov r11, r8
adc r11, [rsp + 8*55]
mov [rsp + 8*54], r11

mov r11, r8
adc r11, [rsp + 8*56]
mov [rsp + 8*55], r11

mov r11, r8
adc r11, [rsp + 8*57]
mov [rsp + 8*56], r11

mov r11, r8
adc r11, [rsp + 8*58]
mov [rsp + 8*57], r11

mov r11, r8
adc r11, [rsp + 8*59]
mov [rsp + 8*58], r11

mov r11, r8
adc r11, [rsp + 8*60]
mov [rsp + 8*59], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsp + 8*49]
mov [rsp + 8*48], r11

mov r11, r8
adc r11, [rsp + 8*50]
mov [rsp + 8*49], r11

mov r11, r8
adc r11, [rsp + 8*51]
mov [rsp + 8*50], r11

mov r11, r8
adc r11, [rsp + 8*52]
mov [rsp + 8*51], r11

mov r11, r8
adc r11, [rsp + 8*53]
mov [rsp + 8*52], r11

mov r11, r8
adc r11, [rsp + 8*54]
mov [rsp + 8*53], r11

mov r11, r8
adc r11, [rsp + 8*55]
mov [rsp + 8*54], r11

mov r11, r8
adc r11, [rsp + 8*56]
mov [rsp + 8*55], r11

mov r11, r8
adc r11, [rsp + 8*57]
mov [rsp + 8*56], r11

mov r11, r8
adc r11, [rsp + 8*58]
mov [rsp + 8*57], r11

mov r11, r8
adc r11, [rsp + 8*59]
mov [rsp + 8*58], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsp + 8*49]
mov [rsp + 8*48], r11

mov r11, r8
adc r11, [rsp + 8*50]
mov [rsp + 8*49], r11

mov r11, r8
adc r11, [rsp + 8*51]
mov [rsp + 8*50], r11

mov r11, r8
adc r11, [rsp + 8*52]
mov [rsp + 8*51], r11

mov r11, r8
adc r11, [rsp + 8*53]
mov [rsp + 8*52], r11

mov r11, r8
adc r11, [rsp + 8*54]
mov [rsp + 8*53], r11

mov r11, r8
adc r11, [rsp + 8*55]
mov [rsp + 8*54], r11

mov r11, r8
adc r11, [rsp + 8*56]
mov [rsp + 8*55], r11

mov r11, r8
adc r11, [rsp + 8*57]
mov [rsp + 8*56], r11

mov r11, r8
adc r11, [rsp + 8*58]
mov [rsp + 8*57], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsp + 8*49]
mov [rsp + 8*48], r11

mov r11, r8
adc r11, [rsp + 8*50]
mov [rsp + 8*49], r11

mov r11, r8
adc r11, [rsp + 8*51]
mov [rsp + 8*50], r11

mov r11, r8
adc r11, [rsp + 8*52]
mov [rsp + 8*51], r11

mov r11, r8
adc r11, [rsp + 8*53]
mov [rsp + 8*52], r11

mov r11, r8
adc r11, [rsp + 8*54]
mov [rsp + 8*53], r11

mov r11, r8
adc r11, [rsp + 8*55]
mov [rsp + 8*54], r11

mov r11, r8
adc r11, [rsp + 8*56]
mov [rsp + 8*55], r11

mov r11, r8
adc r11, [rsp + 8*57]
mov [rsp + 8*56], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsp + 8*49]
mov [rsp + 8*48], r11

mov r11, r8
adc r11, [rsp + 8*50]
mov [rsp + 8*49], r11

mov r11, r8
adc r11, [rsp + 8*51]
mov [rsp + 8*50], r11

mov r11, r8
adc r11, [rsp + 8*52]
mov [rsp + 8*51], r11

mov r11, r8
adc r11, [rsp + 8*53]
mov [rsp + 8*52], r11

mov r11, r8
adc r11, [rsp + 8*54]
mov [rsp + 8*53], r11

mov r11, r8
adc r11, [rsp + 8*55]
mov [rsp + 8*54], r11

mov r11, r8
adc r11, [rsp + 8*56]
mov [rsp + 8*55], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsp + 8*49]
mov [rsp + 8*48], r11

mov r11, r8
adc r11, [rsp + 8*50]
mov [rsp + 8*49], r11

mov r11, r8
adc r11, [rsp + 8*51]
mov [rsp + 8*50], r11

mov r11, r8
adc r11, [rsp + 8*52]
mov [rsp + 8*51], r11

mov r11, r8
adc r11, [rsp + 8*53]
mov [rsp + 8*52], r11

mov r11, r8
adc r11, [rsp + 8*54]
mov [rsp + 8*53], r11

mov r11, r8
adc r11, [rsp + 8*55]
mov [rsp + 8*54], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsp + 8*49]
mov [rsp + 8*48], r11

mov r11, r8
adc r11, [rsp + 8*50]
mov [rsp + 8*49], r11

mov r11, r8
adc r11, [rsp + 8*51]
mov [rsp + 8*50], r11

mov r11, r8
adc r11, [rsp + 8*52]
mov [rsp + 8*51], r11

mov r11, r8
adc r11, [rsp + 8*53]
mov [rsp + 8*52], r11

mov r11, r8
adc r11, [rsp + 8*54]
mov [rsp + 8*53], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsp + 8*49]
mov [rsp + 8*48], r11

mov r11, r8
adc r11, [rsp + 8*50]
mov [rsp + 8*49], r11

mov r11, r8
adc r11, [rsp + 8*51]
mov [rsp + 8*50], r11

mov r11, r8
adc r11, [rsp + 8*52]
mov [rsp + 8*51], r11

mov r11, r8
adc r11, [rsp + 8*53]
mov [rsp + 8*52], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsp + 8*49]
mov [rsp + 8*48], r11

mov r11, r8
adc r11, [rsp + 8*50]
mov [rsp + 8*49], r11

mov r11, r8
adc r11, [rsp + 8*51]
mov [rsp + 8*50], r11

mov r11, r8
adc r11, [rsp + 8*52]
mov [rsp + 8*51], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsp + 8*49]
mov [rsp + 8*48], r11

mov r11, r8
adc r11, [rsp + 8*50]
mov [rsp + 8*49], r11

mov r11, r8
adc r11, [rsp + 8*51]
mov [rsp + 8*50], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsp + 8*49]
mov [rsp + 8*48], r11

mov r11, r8
adc r11, [rsp + 8*50]
mov [rsp + 8*49], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

mov r11, r8
adc r11, [rsp + 8*49]
mov [rsp + 8*48], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

mov r11, r8
adc r11, [rsp + 8*48]
mov [rsp + 8*47], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

mov r11, r8
adc r11, [rsp + 8*47]
mov [rsp + 8*46], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

mov r11, r8
adc r11, [rsp + 8*46]
mov [rsp + 8*45], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

mov r11, r8
adc r11, [rsp + 8*45]
mov [rsp + 8*44], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

mov r11, r8
adc r11, [rsp + 8*44]
mov [rsp + 8*43], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

mov r11, r8
adc r11, [rsp + 8*43]
mov [rsp + 8*42], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

mov r11, r8
adc r11, [rsp + 8*42]
mov [rsp + 8*41], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

mov r11, r8
adc r11, [rsp + 8*41]
mov [rsp + 8*40], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

mov r11, r8
adc r11, [rsp + 8*40]
mov [rsp + 8*39], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

mov r11, r8
adc r11, [rsp + 8*39]
mov [rsp + 8*38], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

mov r11, r8
adc r11, [rsp + 8*38]
mov [rsp + 8*37], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

mov r11, r8
adc r11, [rsp + 8*37]
mov [rsp + 8*36], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

mov r11, r8
adc r11, [rsp + 8*36]
mov [rsp + 8*35], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

mov r11, r8
adc r11, [rsp + 8*35]
mov [rsp + 8*34], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rsp + 8*31], rcx

######### carry
adox rbx, [rsp + 8*33]
adcx rbx, r8
mov [rsp + 8*32], rbx

mov r11, r8
adc r11, [rsp + 8*34]
mov [rsp + 8*33], r11

########################## mul
xor rax, rax
mov rdx, [rsp]
mulx rcx, rax, [r14]
adcx rax, [rsp + 8]
mov [rdi], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rdi + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rdi + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rdi + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rdi + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rdi + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rdi + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rdi + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rdi + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rdi + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rdi + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rdi + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rdi + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rdi + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rdi + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rdi + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rdi + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rdi + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rdi + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rdi + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rdi + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rdi + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rdi + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rdi + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rdi + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rdi + 8*25], rcx

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

mov rbx, r8
adcx rcx, [rsp + 8*32]
adox rcx, r8
mov [rdi + 8*31], rcx

########################## done
add rsp, 2*pbytes+1
pop rbx
pop r14
jmp .reduce_once







/* Montgomery arithmetic */

# .global mont_loop
# mont_loop:
#     mov rbp, rdi
#     mov r8, p@GOTPCREL[rip]
#     .set j, 1
#     .rept 32    
#         # current A[i] to rdx
#         mov rdx, [rbp + 8*k]
#         xor r11, r11
#         .set k, 1
#         .rept 32
            
#             # low, high, p[i], A[i]
#             mulx r9, r10, [r8 + 8*k]
#             # add low to "high - 1"
#             adcx r10, r11
#             # save new high
#             mov r11, r9
#             # add high to A[i]
#             adox [rdi + 8*k], r10
                        
#             .set k, k+1
#         .endr
#         .set j, j+1
#     .endr

.global secsidh_internal_2047m1l226_fp_enc
secsidh_internal_2047m1l226_fp_enc:
    mov r8, secsidh_internal_2047m1l226_r_squared_mod_p@GOTPCREL[rip]
    lea rdx, [r8]
    jmp secsidh_internal_2047m1l226_fp_mul

.global secsidh_internal_2047m1l226_fp_dec
secsidh_internal_2047m1l226_fp_dec:
    mov r8, secsidh_internal_2047m1l226_uintbig_1@GOTPCREL[rip]
    lea rdx, [r8]
    jmp secsidh_internal_2047m1l226_fp_mul



.global secsidh_internal_2047m1l226_fp_mont_redc_a
secsidh_internal_2047m1l226_fp_mont_redc_a:
push r14
push rbx
sub rsp, 2*pbytes+8
mov r14, secsidh_internal_2047m1l226_p@GOTPCREL[rip]
xor rax, rax
mov [rsp + 8*64], rax
########################## mul
xor rax, rax
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

######### carry
mov r11, 0
adox rbx, [rsi + 8*32]
adcx rbx, r11
mov [rsp + 8*32], rbx

mov rax, 0
mov r11, 0
adox r11, [rsi + 8*33]
adcx r11, rax
mov [rsp + 8*33], r11

mov r11, 0
adox r11, [rsi + 8*34]
adcx r11, rax
mov [rsp + 8*34], r11

mov r11, 0
adox r11, [rsi + 8*35]
adcx r11, rax
mov [rsp + 8*35], r11

mov r11, 0
adox r11, [rsi + 8*36]
adcx r11, rax
mov [rsp + 8*36], r11

mov r11, 0
adox r11, [rsi + 8*37]
adcx r11, rax
mov [rsp + 8*37], r11

mov r11, 0
adox r11, [rsi + 8*38]
adcx r11, rax
mov [rsp + 8*38], r11

mov r11, 0
adox r11, [rsi + 8*39]
adcx r11, rax
mov [rsp + 8*39], r11

mov r11, 0
adox r11, [rsi + 8*40]
adcx r11, rax
mov [rsp + 8*40], r11

mov r11, 0
adox r11, [rsi + 8*41]
adcx r11, rax
mov [rsp + 8*41], r11

mov r11, 0
adox r11, [rsi + 8*42]
adcx r11, rax
mov [rsp + 8*42], r11

mov r11, 0
adox r11, [rsi + 8*43]
adcx r11, rax
mov [rsp + 8*43], r11

mov r11, 0
adox r11, [rsi + 8*44]
adcx r11, rax
mov [rsp + 8*44], r11

mov r11, 0
adox r11, [rsi + 8*45]
adcx r11, rax
mov [rsp + 8*45], r11

mov r11, 0
adox r11, [rsi + 8*46]
adcx r11, rax
mov [rsp + 8*46], r11

mov r11, 0
adox r11, [rsi + 8*47]
adcx r11, rax
mov [rsp + 8*47], r11

mov r11, 0
adox r11, [rsi + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsi + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsi + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsi + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsi + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsi + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsi + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsi + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsi + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsi + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsi + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsi + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsi + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsi + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsi + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsi + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsi + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*33]
adcx rbx, r11
mov [rsp + 8*33], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*34]
adcx r11, rax
mov [rsp + 8*34], r11

mov r11, 0
adox r11, [rsp + 8*35]
adcx r11, rax
mov [rsp + 8*35], r11

mov r11, 0
adox r11, [rsp + 8*36]
adcx r11, rax
mov [rsp + 8*36], r11

mov r11, 0
adox r11, [rsp + 8*37]
adcx r11, rax
mov [rsp + 8*37], r11

mov r11, 0
adox r11, [rsp + 8*38]
adcx r11, rax
mov [rsp + 8*38], r11

mov r11, 0
adox r11, [rsp + 8*39]
adcx r11, rax
mov [rsp + 8*39], r11

mov r11, 0
adox r11, [rsp + 8*40]
adcx r11, rax
mov [rsp + 8*40], r11

mov r11, 0
adox r11, [rsp + 8*41]
adcx r11, rax
mov [rsp + 8*41], r11

mov r11, 0
adox r11, [rsp + 8*42]
adcx r11, rax
mov [rsp + 8*42], r11

mov r11, 0
adox r11, [rsp + 8*43]
adcx r11, rax
mov [rsp + 8*43], r11

mov r11, 0
adox r11, [rsp + 8*44]
adcx r11, rax
mov [rsp + 8*44], r11

mov r11, 0
adox r11, [rsp + 8*45]
adcx r11, rax
mov [rsp + 8*45], r11

mov r11, 0
adox r11, [rsp + 8*46]
adcx r11, rax
mov [rsp + 8*46], r11

mov r11, 0
adox r11, [rsp + 8*47]
adcx r11, rax
mov [rsp + 8*47], r11

mov r11, 0
adox r11, [rsp + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*34]
adcx rbx, r11
mov [rsp + 8*34], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*35]
adcx r11, rax
mov [rsp + 8*35], r11

mov r11, 0
adox r11, [rsp + 8*36]
adcx r11, rax
mov [rsp + 8*36], r11

mov r11, 0
adox r11, [rsp + 8*37]
adcx r11, rax
mov [rsp + 8*37], r11

mov r11, 0
adox r11, [rsp + 8*38]
adcx r11, rax
mov [rsp + 8*38], r11

mov r11, 0
adox r11, [rsp + 8*39]
adcx r11, rax
mov [rsp + 8*39], r11

mov r11, 0
adox r11, [rsp + 8*40]
adcx r11, rax
mov [rsp + 8*40], r11

mov r11, 0
adox r11, [rsp + 8*41]
adcx r11, rax
mov [rsp + 8*41], r11

mov r11, 0
adox r11, [rsp + 8*42]
adcx r11, rax
mov [rsp + 8*42], r11

mov r11, 0
adox r11, [rsp + 8*43]
adcx r11, rax
mov [rsp + 8*43], r11

mov r11, 0
adox r11, [rsp + 8*44]
adcx r11, rax
mov [rsp + 8*44], r11

mov r11, 0
adox r11, [rsp + 8*45]
adcx r11, rax
mov [rsp + 8*45], r11

mov r11, 0
adox r11, [rsp + 8*46]
adcx r11, rax
mov [rsp + 8*46], r11

mov r11, 0
adox r11, [rsp + 8*47]
adcx r11, rax
mov [rsp + 8*47], r11

mov r11, 0
adox r11, [rsp + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*35]
adcx rbx, r11
mov [rsp + 8*35], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*36]
adcx r11, rax
mov [rsp + 8*36], r11

mov r11, 0
adox r11, [rsp + 8*37]
adcx r11, rax
mov [rsp + 8*37], r11

mov r11, 0
adox r11, [rsp + 8*38]
adcx r11, rax
mov [rsp + 8*38], r11

mov r11, 0
adox r11, [rsp + 8*39]
adcx r11, rax
mov [rsp + 8*39], r11

mov r11, 0
adox r11, [rsp + 8*40]
adcx r11, rax
mov [rsp + 8*40], r11

mov r11, 0
adox r11, [rsp + 8*41]
adcx r11, rax
mov [rsp + 8*41], r11

mov r11, 0
adox r11, [rsp + 8*42]
adcx r11, rax
mov [rsp + 8*42], r11

mov r11, 0
adox r11, [rsp + 8*43]
adcx r11, rax
mov [rsp + 8*43], r11

mov r11, 0
adox r11, [rsp + 8*44]
adcx r11, rax
mov [rsp + 8*44], r11

mov r11, 0
adox r11, [rsp + 8*45]
adcx r11, rax
mov [rsp + 8*45], r11

mov r11, 0
adox r11, [rsp + 8*46]
adcx r11, rax
mov [rsp + 8*46], r11

mov r11, 0
adox r11, [rsp + 8*47]
adcx r11, rax
mov [rsp + 8*47], r11

mov r11, 0
adox r11, [rsp + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*36]
adcx rbx, r11
mov [rsp + 8*36], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*37]
adcx r11, rax
mov [rsp + 8*37], r11

mov r11, 0
adox r11, [rsp + 8*38]
adcx r11, rax
mov [rsp + 8*38], r11

mov r11, 0
adox r11, [rsp + 8*39]
adcx r11, rax
mov [rsp + 8*39], r11

mov r11, 0
adox r11, [rsp + 8*40]
adcx r11, rax
mov [rsp + 8*40], r11

mov r11, 0
adox r11, [rsp + 8*41]
adcx r11, rax
mov [rsp + 8*41], r11

mov r11, 0
adox r11, [rsp + 8*42]
adcx r11, rax
mov [rsp + 8*42], r11

mov r11, 0
adox r11, [rsp + 8*43]
adcx r11, rax
mov [rsp + 8*43], r11

mov r11, 0
adox r11, [rsp + 8*44]
adcx r11, rax
mov [rsp + 8*44], r11

mov r11, 0
adox r11, [rsp + 8*45]
adcx r11, rax
mov [rsp + 8*45], r11

mov r11, 0
adox r11, [rsp + 8*46]
adcx r11, rax
mov [rsp + 8*46], r11

mov r11, 0
adox r11, [rsp + 8*47]
adcx r11, rax
mov [rsp + 8*47], r11

mov r11, 0
adox r11, [rsp + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*37]
adcx rbx, r11
mov [rsp + 8*37], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*38]
adcx r11, rax
mov [rsp + 8*38], r11

mov r11, 0
adox r11, [rsp + 8*39]
adcx r11, rax
mov [rsp + 8*39], r11

mov r11, 0
adox r11, [rsp + 8*40]
adcx r11, rax
mov [rsp + 8*40], r11

mov r11, 0
adox r11, [rsp + 8*41]
adcx r11, rax
mov [rsp + 8*41], r11

mov r11, 0
adox r11, [rsp + 8*42]
adcx r11, rax
mov [rsp + 8*42], r11

mov r11, 0
adox r11, [rsp + 8*43]
adcx r11, rax
mov [rsp + 8*43], r11

mov r11, 0
adox r11, [rsp + 8*44]
adcx r11, rax
mov [rsp + 8*44], r11

mov r11, 0
adox r11, [rsp + 8*45]
adcx r11, rax
mov [rsp + 8*45], r11

mov r11, 0
adox r11, [rsp + 8*46]
adcx r11, rax
mov [rsp + 8*46], r11

mov r11, 0
adox r11, [rsp + 8*47]
adcx r11, rax
mov [rsp + 8*47], r11

mov r11, 0
adox r11, [rsp + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*38]
adcx rbx, r11
mov [rsp + 8*38], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*39]
adcx r11, rax
mov [rsp + 8*39], r11

mov r11, 0
adox r11, [rsp + 8*40]
adcx r11, rax
mov [rsp + 8*40], r11

mov r11, 0
adox r11, [rsp + 8*41]
adcx r11, rax
mov [rsp + 8*41], r11

mov r11, 0
adox r11, [rsp + 8*42]
adcx r11, rax
mov [rsp + 8*42], r11

mov r11, 0
adox r11, [rsp + 8*43]
adcx r11, rax
mov [rsp + 8*43], r11

mov r11, 0
adox r11, [rsp + 8*44]
adcx r11, rax
mov [rsp + 8*44], r11

mov r11, 0
adox r11, [rsp + 8*45]
adcx r11, rax
mov [rsp + 8*45], r11

mov r11, 0
adox r11, [rsp + 8*46]
adcx r11, rax
mov [rsp + 8*46], r11

mov r11, 0
adox r11, [rsp + 8*47]
adcx r11, rax
mov [rsp + 8*47], r11

mov r11, 0
adox r11, [rsp + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*39]
adcx rbx, r11
mov [rsp + 8*39], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*40]
adcx r11, rax
mov [rsp + 8*40], r11

mov r11, 0
adox r11, [rsp + 8*41]
adcx r11, rax
mov [rsp + 8*41], r11

mov r11, 0
adox r11, [rsp + 8*42]
adcx r11, rax
mov [rsp + 8*42], r11

mov r11, 0
adox r11, [rsp + 8*43]
adcx r11, rax
mov [rsp + 8*43], r11

mov r11, 0
adox r11, [rsp + 8*44]
adcx r11, rax
mov [rsp + 8*44], r11

mov r11, 0
adox r11, [rsp + 8*45]
adcx r11, rax
mov [rsp + 8*45], r11

mov r11, 0
adox r11, [rsp + 8*46]
adcx r11, rax
mov [rsp + 8*46], r11

mov r11, 0
adox r11, [rsp + 8*47]
adcx r11, rax
mov [rsp + 8*47], r11

mov r11, 0
adox r11, [rsp + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*40]
adcx rbx, r11
mov [rsp + 8*40], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*41]
adcx r11, rax
mov [rsp + 8*41], r11

mov r11, 0
adox r11, [rsp + 8*42]
adcx r11, rax
mov [rsp + 8*42], r11

mov r11, 0
adox r11, [rsp + 8*43]
adcx r11, rax
mov [rsp + 8*43], r11

mov r11, 0
adox r11, [rsp + 8*44]
adcx r11, rax
mov [rsp + 8*44], r11

mov r11, 0
adox r11, [rsp + 8*45]
adcx r11, rax
mov [rsp + 8*45], r11

mov r11, 0
adox r11, [rsp + 8*46]
adcx r11, rax
mov [rsp + 8*46], r11

mov r11, 0
adox r11, [rsp + 8*47]
adcx r11, rax
mov [rsp + 8*47], r11

mov r11, 0
adox r11, [rsp + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*41]
adcx rbx, r11
mov [rsp + 8*41], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*42]
adcx r11, rax
mov [rsp + 8*42], r11

mov r11, 0
adox r11, [rsp + 8*43]
adcx r11, rax
mov [rsp + 8*43], r11

mov r11, 0
adox r11, [rsp + 8*44]
adcx r11, rax
mov [rsp + 8*44], r11

mov r11, 0
adox r11, [rsp + 8*45]
adcx r11, rax
mov [rsp + 8*45], r11

mov r11, 0
adox r11, [rsp + 8*46]
adcx r11, rax
mov [rsp + 8*46], r11

mov r11, 0
adox r11, [rsp + 8*47]
adcx r11, rax
mov [rsp + 8*47], r11

mov r11, 0
adox r11, [rsp + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*42]
adcx rbx, r11
mov [rsp + 8*42], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*43]
adcx r11, rax
mov [rsp + 8*43], r11

mov r11, 0
adox r11, [rsp + 8*44]
adcx r11, rax
mov [rsp + 8*44], r11

mov r11, 0
adox r11, [rsp + 8*45]
adcx r11, rax
mov [rsp + 8*45], r11

mov r11, 0
adox r11, [rsp + 8*46]
adcx r11, rax
mov [rsp + 8*46], r11

mov r11, 0
adox r11, [rsp + 8*47]
adcx r11, rax
mov [rsp + 8*47], r11

mov r11, 0
adox r11, [rsp + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*43]
adcx rbx, r11
mov [rsp + 8*43], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*44]
adcx r11, rax
mov [rsp + 8*44], r11

mov r11, 0
adox r11, [rsp + 8*45]
adcx r11, rax
mov [rsp + 8*45], r11

mov r11, 0
adox r11, [rsp + 8*46]
adcx r11, rax
mov [rsp + 8*46], r11

mov r11, 0
adox r11, [rsp + 8*47]
adcx r11, rax
mov [rsp + 8*47], r11

mov r11, 0
adox r11, [rsp + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*44]
adcx rbx, r11
mov [rsp + 8*44], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*45]
adcx r11, rax
mov [rsp + 8*45], r11

mov r11, 0
adox r11, [rsp + 8*46]
adcx r11, rax
mov [rsp + 8*46], r11

mov r11, 0
adox r11, [rsp + 8*47]
adcx r11, rax
mov [rsp + 8*47], r11

mov r11, 0
adox r11, [rsp + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*45]
adcx rbx, r11
mov [rsp + 8*45], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*46]
adcx r11, rax
mov [rsp + 8*46], r11

mov r11, 0
adox r11, [rsp + 8*47]
adcx r11, rax
mov [rsp + 8*47], r11

mov r11, 0
adox r11, [rsp + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*46]
adcx rbx, r11
mov [rsp + 8*46], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*47]
adcx r11, rax
mov [rsp + 8*47], r11

mov r11, 0
adox r11, [rsp + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*47]
adcx rbx, r11
mov [rsp + 8*47], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*48]
adcx r11, rax
mov [rsp + 8*48], r11

mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*48]
adcx rbx, r11
mov [rsp + 8*48], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*49]
adcx r11, rax
mov [rsp + 8*49], r11

mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*49]
adcx rbx, r11
mov [rsp + 8*49], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*50]
adcx r11, rax
mov [rsp + 8*50], r11

mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*50]
adcx rbx, r11
mov [rsp + 8*50], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*51]
adcx r11, rax
mov [rsp + 8*51], r11

mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*51]
adcx rbx, r11
mov [rsp + 8*51], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*52]
adcx r11, rax
mov [rsp + 8*52], r11

mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*52]
adcx rbx, r11
mov [rsp + 8*52], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*53]
adcx r11, rax
mov [rsp + 8*53], r11

mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*53]
adcx rbx, r11
mov [rsp + 8*53], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*54]
adcx r11, rax
mov [rsp + 8*54], r11

mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*54]
adcx rbx, r11
mov [rsp + 8*54], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*55]
adcx r11, rax
mov [rsp + 8*55], r11

mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*55]
adcx rbx, r11
mov [rsp + 8*55], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*56]
adcx r11, rax
mov [rsp + 8*56], r11

mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*56]
adcx rbx, r11
mov [rsp + 8*56], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*57]
adcx r11, rax
mov [rsp + 8*57], r11

mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*57]
adcx rbx, r11
mov [rsp + 8*57], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*58]
adcx r11, rax
mov [rsp + 8*58], r11

mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*58]
adcx rbx, r11
mov [rsp + 8*58], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*59]
adcx r11, rax
mov [rsp + 8*59], r11

mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*59]
adcx rbx, r11
mov [rsp + 8*59], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*60]
adcx r11, rax
mov [rsp + 8*60], r11

mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*60]
adcx rbx, r11
mov [rsp + 8*60], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*61]
adcx r11, rax
mov [rsp + 8*61], r11

mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*61]
adcx rbx, r11
mov [rsp + 8*61], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*62]
adcx r11, rax
mov [rsp + 8*62], r11

mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

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

######### carry
mov r11, 0
adox rbx, [rsp + 8*62]
adcx rbx, r11
mov [rsp + 8*62], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*63]
adcx r11, rax
mov [rsp + 8*63], r11

mov r11, 0
adox r11, [rsp + 8*64]
adcx r11, rax
mov [rsp + 8*64], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*31]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*31], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rdi + 8*0], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rdi + 8*1], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rdi + 8*2], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rdi + 8*3], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rdi + 8*4], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rdi + 8*5], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rdi + 8*6], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rdi + 8*7], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rdi + 8*8], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rdi + 8*9], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rdi + 8*10], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rdi + 8*11], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rdi + 8*12], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rdi + 8*13], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rdi + 8*14], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rdi + 8*15], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rdi + 8*16], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rdi + 8*17], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rdi + 8*18], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rdi + 8*19], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rdi + 8*20], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rdi + 8*21], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rdi + 8*22], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rdi + 8*23], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rdi + 8*24], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rdi + 8*25], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rdi + 8*26], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rdi + 8*27], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rdi + 8*28], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rdi + 8*29], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rdi + 8*30], rcx

mov r11, 0
adox rbx, [rsp + 8*63]
adcx rbx, r11
mov [rdi + 8*31], rbx

########################## done
add rsp, 2*pbytes+8
pop rbx
pop r14
jmp .reduce_once


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




.global mult_32x32
mult_32x32:
    mult_32x32
    ret

.reduce_once:
    push rbp
    push r12
    push r13
    mov rbp, rdi
    mov r12, secsidh_internal_2047m1l226_p@GOTPCREL[rip]

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


    setnc al
    movzx rax, al
    neg rax

.macro cswap2, r, m
    xor \r, \m
    and \r, rax
    xor \m, \r
.endm


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


.global secsidh_internal_2047m1l226_fp_add2
secsidh_internal_2047m1l226_fp_add2:
  mov rdx, rdi

.global secsidh_internal_2047m1l226_fp_add
secsidh_internal_2047m1l226_fp_add:
  push rdi
  call secsidh_internal_2047m1l226_uintbig_add
  pop rdi

  jmp .reduce_once

.global secsidh_internal_2047m1l226_fp_sub2
secsidh_internal_2047m1l226_fp_sub2:
  mov rdx, rdi
  xchg rsi, rdx

.global secsidh_internal_2047m1l226_fp_sub
secsidh_internal_2047m1l226_fp_sub:
  push rdi
  call secsidh_internal_2047m1l226_uintbig_sub
  pop rdi


  neg rax

  sub rsp, pbytes

  mov r8, secsidh_internal_2047m1l226_p@GOTPCREL[rip]
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


.global secsidh_internal_2047m1l226_fp_copy
secsidh_internal_2047m1l226_fp_copy:
    cld
    mov rcx, plimbs
    rep movsq
    ret

.global secsidh_internal_2047m1l226_fp_cswap
secsidh_internal_2047m1l226_fp_cswap:
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

.global secsidh_internal_2047m1l226_fp_random
secsidh_internal_2047m1l226_fp_random:

    push rdi
    mov rsi, pbytes
    call randombytes
    pop rdi
    mov rax, 1
    shl rax, (pbits % 64)
    dec rax
    and [rdi + pbytes-8], rax
    mov r8, secsidh_internal_2047m1l226_p@GOTPCREL[rip]
    .set k, plimbs-1
    .rept plimbs
        mov rax, [r8 + 8*k]
        cmp [rdi + 8*k], rax
        jge secsidh_internal_2047m1l226_fp_random
        jl 0f
        .set k, k-1
    .endr
    0:
    ret








.macro sqr_8x8
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

.macro sqr_9x9
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
# sqr_8x8
call sqr
lea     r12, [rbx+128]
mov     rdx, 9
mov     rsi, rsp
lea     rdi, [rsp+144]
# sqr_9x9
call sqr
mov     rdx, 8
mov     rsi, r13
mov     rdi, r12
# sqr_8x8
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







.macro sqr_5x5
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

.macro sqr_6x6
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

.macro sqr_7x7
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
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
sqr_5x5
lea     r12, [rbx+80]
mov     rdx, rsp
mov     rsi, rsp
lea     rdi, [rsp+96]
sqr_6x6
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
sqr_5x5
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
# sqr_8x8
call sqr
mov     rdx, 10
mov     rsi, rsp
lea     rdi, [rsp+160]
# sqr_10x10
call sqr
mov     rdx, 9
mov     rsi, r13
mov     rdi, rbp
# sqr_9x9
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

.global secsidh_internal_2047m1l226_fp_mult_32x32
secsidh_internal_2047m1l226_fp_mult_32x32:
    mult_32x32
    ret

.global secsidh_internal_2047m1l226_fp_squaring
secsidh_internal_2047m1l226_fp_squaring:
    sqr_32x32
    ret

