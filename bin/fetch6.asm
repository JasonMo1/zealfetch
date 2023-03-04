;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (Linux)
;--------------------------------------------------------
	.module fetch6
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _close
	.globl _open
	.globl _write
	.globl _read
	.globl _strlen
	.globl _printf
	.globl _buf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_buf::
	.ds 256
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _TEXT
;src/fetch6.c:18: int main () {
;	---------------------------------
; Function main
; ---------------------------------
_main::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-748
	add	hl, sp
	ld	sp, hl
;src/fetch6.c:22: zos_dev_t dev = open("B:/info.data", O_WRONLY | O_CREAT | O_TRUNC);
	ld	a, #0x0d
	push	af
	inc	sp
	ld	hl, #___str_0
	call	_open
	ld	-1 (ix), a
;src/fetch6.c:25: if (dev < 0) {
	bit	7, -1 (ix)
	jr	Z, 00102$
;src/fetch6.c:26: printf("Error %d occurred1\n", -dev);
	ld	a, -1 (ix)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	xor	a, a
	sub	a, c
	ld	c, a
	sbc	a, a
	sub	a, b
	ld	b, a
	push	bc
	ld	hl, #___str_2
	push	hl
	call	_printf
	pop	af
	pop	af
;src/fetch6.c:27: return 1;
	ld	de, #0x0001
	jp	00112$
00102$:
;src/fetch6.c:32: char buf[] = " .------------------------------------. \n.--:..                              :-- \n.--:                                :-- \n .---.      .   ..  ..   .        .---. \n   :---.    .::.  ... .:-.      .---.   \n     :---.     ...   .:.      .---.     \n       :---:   .:. .:.      .---.       \n         ::. .:. .:.      .---.         \n           .:. .:.      .---.           \n         .:. .:.      .---.  ..         \n       .:. .:.      .---.  .-..:.       \n     .:. .:.      .---:     .:  .:.     \n   .:. .:.      .-------:     .:  .:.   \n  :. .:.       .:::::::::.      .:  .:  \n.:  :.                            .:  :.\n-  -.                              .- .:\n:. .................................. ::\n `..................................../ \n\n\n";
	ld	hl, #0
	add	hl, sp
	ld	c, l
	ld	b, h
	ld	a, #0x20
	ld	(bc), a
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	(hl), #0x2e
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	(hl), #0x2d
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	(hl), #0x2d
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0005
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0006
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0007
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0008
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0009
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x000a
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x000b
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x000c
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x000d
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x000e
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x000f
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0010
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0011
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0012
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0013
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0014
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0015
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0016
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0017
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0018
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0019
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x001a
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x001b
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x001c
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x001d
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x001e
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x001f
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0020
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0021
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0022
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0023
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0024
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0025
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0026
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0027
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0028
	add	hl, bc
	ld	(hl), #0x0a
	ld	hl, #0x0029
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x002a
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x002b
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x002c
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x002d
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x002e
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x002f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0030
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0031
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0032
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0033
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0034
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0035
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0036
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0037
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0038
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0039
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x003a
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x003b
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x003c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x003d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x003e
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x003f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0040
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0041
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0042
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0043
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0044
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0045
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0046
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0047
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0048
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0049
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x004a
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x004b
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x004c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x004d
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x004e
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x004f
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0050
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0051
	add	hl, bc
	ld	(hl), #0x0a
	ld	hl, #0x0052
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0053
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0054
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0055
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0056
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0057
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0058
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0059
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x005a
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x005b
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x005c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x005d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x005e
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x005f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0060
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0061
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0062
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0063
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0064
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0065
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0066
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0067
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0068
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0069
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x006a
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x006b
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x006c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x006d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x006e
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x006f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0070
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0071
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0072
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0073
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0074
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0075
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0076
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0077
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0078
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0079
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x007a
	add	hl, bc
	ld	(hl), #0x0a
	ld	hl, #0x007b
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x007c
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x007d
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x007e
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x007f
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0080
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0081
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0082
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0083
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0084
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0085
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0086
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0087
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0088
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0089
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x008a
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x008b
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x008c
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x008d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x008e
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x008f
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0090
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0091
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0092
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0093
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0094
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0095
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0096
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0097
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0098
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0099
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x009a
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x009b
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x009c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x009d
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x009e
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x009f
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00a0
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00a1
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00a2
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00a3
	add	hl, bc
	ld	(hl), #0x0a
	ld	hl, #0x00a4
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00a5
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00a6
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00a7
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x00a8
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00a9
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00aa
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00ab
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00ac
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00ad
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00ae
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00af
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00b0
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00b1
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x00b2
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x00b3
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00b4
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00b5
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00b6
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00b7
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00b8
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00b9
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00ba
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00bb
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x00bc
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00bd
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00be
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00bf
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00c0
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00c1
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00c2
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00c3
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00c4
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00c5
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00c6
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00c7
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00c8
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00c9
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00ca
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00cb
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00cc
	add	hl, bc
	ld	(hl), #0x0a
	ld	hl, #0x00cd
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00ce
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00cf
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00d0
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00d1
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00d2
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x00d3
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00d4
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00d5
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00d6
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00d7
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00d8
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00d9
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00da
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00db
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00dc
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00dd
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00de
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00df
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00e0
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00e1
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00e2
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00e3
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x00e4
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00e5
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00e6
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00e7
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00e8
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00e9
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00ea
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00eb
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00ec
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00ed
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00ee
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00ef
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x00f0
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00f1
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00f2
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00f3
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00f4
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00f5
	add	hl, bc
	ld	(hl), #0x0a
	ld	hl, #0x00f6
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00f7
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00f8
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00f9
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00fa
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00fb
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00fc
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x00fd
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x00fe
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x00ff
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0100
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0101
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0102
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0103
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0104
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0105
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0106
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0107
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0108
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0109
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x010a
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x010b
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x010c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x010d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x010e
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x010f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0110
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0111
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0112
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0113
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0114
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0115
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0116
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0117
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0118
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0119
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x011a
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x011b
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x011c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x011d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x011e
	add	hl, bc
	ld	(hl), #0x0a
	ld	hl, #0x011f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0120
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0121
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0122
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0123
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0124
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0125
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0126
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0127
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0128
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0129
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x012a
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x012b
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x012c
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x012d
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x012e
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x012f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0130
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0131
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0132
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0133
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0134
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0135
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0136
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0137
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0138
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0139
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x013a
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x013b
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x013c
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x013d
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x013e
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x013f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0140
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0141
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0142
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0143
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0144
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0145
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0146
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0147
	add	hl, bc
	ld	(hl), #0x0a
	ld	hl, #0x0148
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0149
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x014a
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x014b
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x014c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x014d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x014e
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x014f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0150
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0151
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0152
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0153
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0154
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0155
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0156
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0157
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0158
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0159
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x015a
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x015b
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x015c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x015d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x015e
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x015f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0160
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0161
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0162
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0163
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0164
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0165
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0166
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0167
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0168
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0169
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x016a
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x016b
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x016c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x016d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x016e
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x016f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0170
	add	hl, bc
	ld	(hl), #0x0a
	ld	hl, #0x0171
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0172
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0173
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0174
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0175
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0176
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0177
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0178
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0179
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x017a
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x017b
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x017c
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x017d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x017e
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x017f
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0180
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0181
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0182
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0183
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0184
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0185
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0186
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0187
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0188
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0189
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x018a
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x018b
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x018c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x018d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x018e
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x018f
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0190
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0191
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0192
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0193
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0194
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0195
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0196
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0197
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0198
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0199
	add	hl, bc
	ld	(hl), #0x0a
	ld	hl, #0x019a
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x019b
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x019c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x019d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x019e
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x019f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01a0
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01a1
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01a2
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x01a3
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01a4
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01a5
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01a6
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x01a7
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01a8
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01a9
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01aa
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01ab
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01ac
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01ad
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01ae
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01af
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x01b0
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x01b1
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x01b2
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01b3
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01b4
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01b5
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01b6
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x01b7
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01b8
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01b9
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x01ba
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01bb
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01bc
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01bd
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01be
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01bf
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01c0
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01c1
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01c2
	add	hl, bc
	ld	(hl), #0x0a
	ld	hl, #0x01c3
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01c4
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01c5
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01c6
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01c7
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01c8
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01c9
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x01ca
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01cb
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01cc
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01cd
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x01ce
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01cf
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01d0
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01d1
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01d2
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01d3
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01d4
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01d5
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01d6
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x01d7
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x01d8
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x01d9
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x01da
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01db
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01dc
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01dd
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01de
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01df
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01e0
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x01e1
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01e2
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01e3
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01e4
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x01e5
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01e6
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01e7
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01e8
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01e9
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01ea
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01eb
	add	hl, bc
	ld	(hl), #0x0a
	ld	hl, #0x01ec
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01ed
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01ee
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01ef
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01f0
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x01f1
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01f2
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01f3
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01f4
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x01f5
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01f6
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01f7
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01f8
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01f9
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01fa
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01fb
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x01fc
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x01fd
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x01fe
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x01ff
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0200
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0201
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0202
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0203
	add	hl, bc
	ld	(hl), #0x2d
	ld	hl, #0x0204
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0205
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0206
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0207
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0208
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0209
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x020a
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x020b
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x020c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x020d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x020e
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x020f
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0210
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0211
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0212
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0213
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0214
	add	hl, bc
	ld	(hl), #0x0a
	ld	hl, #0x0215
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0216
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0217
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0218
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0219
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x021a
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x021b
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x021c
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x021d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x021e
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x021f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0220
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0221
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0222
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0223
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0224
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0225
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0226
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0227
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0228
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0229
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x022a
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x022b
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x022c
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x022d
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x022e
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x022f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0230
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0231
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0232
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0233
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0234
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0235
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0236
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0237
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0238
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0239
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x023a
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x023b
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x023c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x023d
	add	hl, bc
	ld	(hl), #0x0a
	ld	hl, #0x023e
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x023f
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0240
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0241
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0242
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0243
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0244
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0245
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0246
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0247
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0248
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0249
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x024a
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x024b
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x024c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x024d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x024e
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x024f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0250
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0251
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0252
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0253
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0254
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0255
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0256
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0257
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0258
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0259
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x025a
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x025b
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x025c
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x025d
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x025e
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x025f
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0260
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0261
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0262
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0263
	add	hl, bc
	ld	(hl), #0x20
	ld	hl, #0x0264
	add	hl, bc
	ld	(hl), #0x3a
	ld	hl, #0x0265
	add	hl, bc
	ld	(hl), #0x2e
	ld	hl, #0x0266
	add	hl, bc
	ld	(hl), #0x0a
	ld	hl, #0x0267
	add	hl, bc
	ld	(hl), #0x2d
	ld	iy, #616
	add	iy, sp
	ld	0 (iy), #0x20
	inc	iy
	ld	0 (iy), #0x20
	inc	iy
	ld	0 (iy), #0x2d
	inc	iy
	ld	0 (iy), #0x2e
	ld	-128 (ix), #0x20
	ld	-127 (ix), #0x20
	ld	-126 (ix), #0x20
	ld	-125 (ix), #0x20
	ld	-124 (ix), #0x20
	ld	-123 (ix), #0x20
	ld	-122 (ix), #0x20
	ld	-121 (ix), #0x20
	ld	-120 (ix), #0x20
	ld	-119 (ix), #0x20
	ld	-118 (ix), #0x20
	ld	-117 (ix), #0x20
	ld	-116 (ix), #0x20
	ld	-115 (ix), #0x20
	ld	-114 (ix), #0x20
	ld	-113 (ix), #0x20
	ld	-112 (ix), #0x20
	ld	-111 (ix), #0x20
	ld	-110 (ix), #0x20
	ld	-109 (ix), #0x20
	ld	-108 (ix), #0x20
	ld	-107 (ix), #0x20
	ld	-106 (ix), #0x20
	ld	-105 (ix), #0x20
	ld	-104 (ix), #0x20
	ld	-103 (ix), #0x20
	ld	-102 (ix), #0x20
	ld	-101 (ix), #0x20
	ld	-100 (ix), #0x20
	ld	-99 (ix), #0x20
	ld	-98 (ix), #0x2e
	ld	-97 (ix), #0x2d
	ld	-96 (ix), #0x20
	ld	-95 (ix), #0x2e
	ld	-94 (ix), #0x3a
	ld	-93 (ix), #0x0a
	ld	-92 (ix), #0x3a
	ld	-91 (ix), #0x2e
	ld	-90 (ix), #0x20
	ld	-89 (ix), #0x2e
	ld	-88 (ix), #0x2e
	ld	-87 (ix), #0x2e
	ld	-86 (ix), #0x2e
	ld	-85 (ix), #0x2e
	ld	-84 (ix), #0x2e
	ld	-83 (ix), #0x2e
	ld	-82 (ix), #0x2e
	ld	-81 (ix), #0x2e
	ld	-80 (ix), #0x2e
	ld	-79 (ix), #0x2e
	ld	-78 (ix), #0x2e
	ld	-77 (ix), #0x2e
	ld	-76 (ix), #0x2e
	ld	-75 (ix), #0x2e
	ld	-74 (ix), #0x2e
	ld	-73 (ix), #0x2e
	ld	-72 (ix), #0x2e
	ld	-71 (ix), #0x2e
	ld	-70 (ix), #0x2e
	ld	-69 (ix), #0x2e
	ld	-68 (ix), #0x2e
	ld	-67 (ix), #0x2e
	ld	-66 (ix), #0x2e
	ld	-65 (ix), #0x2e
	ld	-64 (ix), #0x2e
	ld	-63 (ix), #0x2e
	ld	-62 (ix), #0x2e
	ld	-61 (ix), #0x2e
	ld	-60 (ix), #0x2e
	ld	-59 (ix), #0x2e
	ld	-58 (ix), #0x2e
	ld	-57 (ix), #0x2e
	ld	-56 (ix), #0x2e
	ld	-55 (ix), #0x20
	ld	-54 (ix), #0x3a
	ld	-53 (ix), #0x3a
	ld	-52 (ix), #0x0a
	ld	-51 (ix), #0x20
	ld	-50 (ix), #0x60
	ld	-49 (ix), #0x2e
	ld	-48 (ix), #0x2e
	ld	-47 (ix), #0x2e
	ld	-46 (ix), #0x2e
	ld	-45 (ix), #0x2e
	ld	-44 (ix), #0x2e
	ld	-43 (ix), #0x2e
	ld	-42 (ix), #0x2e
	ld	-41 (ix), #0x2e
	ld	-40 (ix), #0x2e
	ld	-39 (ix), #0x2e
	ld	-38 (ix), #0x2e
	ld	-37 (ix), #0x2e
	ld	-36 (ix), #0x2e
	ld	-35 (ix), #0x2e
	ld	-34 (ix), #0x2e
	ld	-33 (ix), #0x2e
	ld	-32 (ix), #0x2e
	ld	-31 (ix), #0x2e
	ld	-30 (ix), #0x2e
	ld	-29 (ix), #0x2e
	ld	-28 (ix), #0x2e
	ld	-27 (ix), #0x2e
	ld	-26 (ix), #0x2e
	ld	-25 (ix), #0x2e
	ld	-24 (ix), #0x2e
	ld	-23 (ix), #0x2e
	ld	-22 (ix), #0x2e
	ld	-21 (ix), #0x2e
	ld	-20 (ix), #0x2e
	ld	-19 (ix), #0x2e
	ld	-18 (ix), #0x2e
	ld	-17 (ix), #0x2e
	ld	-16 (ix), #0x2e
	ld	-15 (ix), #0x2e
	ld	-14 (ix), #0x2e
	ld	-13 (ix), #0x2f
	ld	-12 (ix), #0x20
	ld	-11 (ix), #0x0a
	ld	-10 (ix), #0x0a
	ld	-9 (ix), #0x0a
	ld	-8 (ix), #0x00
;src/fetch6.c:35: uint16_t size1 = sizeof(buf);
	ld	-7 (ix), #0xe5
	ld	-6 (ix), #0x02
;src/fetch6.c:36: uint16_t size2 = strlen(ver);
	push	bc
	ld	hl, #0x02f3
	call	_strlen
	pop	bc
	ld	-5 (ix), e
	ld	-4 (ix), d
;src/fetch6.c:37: zos_err_t ret = write(dev, buf, &size1);
	ld	hl, #741
	add	hl, sp
	ld	e, c
	ld	d, b
	push	bc
	push	hl
	ld	a, -1 (ix)
	call	_write
	ld	hl, #745
	add	hl, sp
	push	hl
	ld	de, #0x02f3
	ld	a, -1 (ix)
	call	_write
	pop	bc
	ld	e, a
;src/fetch6.c:40: if (ret != ERR_SUCCESS) {
	or	a, a
	jr	Z, 00104$
;src/fetch6.c:41: printf("Error %d when writing2\n", ret);
	ld	d, #0x00
	push	de
	ld	hl, #___str_3
	push	hl
	call	_printf
	pop	af
	pop	af
;src/fetch6.c:42: return 2;
	ld	de, #0x0002
	jr	00112$
00104$:
;src/fetch6.c:46: close(dev);
	push	bc
	ld	a, -1 (ix)
	call	_close
	xor	a, a
	push	af
	inc	sp
	ld	hl, #___str_0
	call	_open
	pop	bc
	ld	-1 (ix), a
;src/fetch6.c:52: if (dev2 < 0) {
	bit	7, -1 (ix)
	jr	Z, 00106$
;src/fetch6.c:53: printf("Error %d occured3\n", dev2);
	ld	a, -1 (ix)
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	push	bc
	ld	hl, #___str_4
	push	hl
	call	_printf
	pop	af
	pop	af
;src/fetch6.c:54: return 1;
	ld	de, #0x0001
	jr	00112$
00106$:
;src/fetch6.c:58: uint16_t size = 256;
	ld	-3 (ix), #0x00
	ld	-2 (ix), #0x01
;src/fetch6.c:61: while (size != 0) {
00109$:
	ld	a, -2 (ix)
	or	a, -3 (ix)
	jr	Z, 00111$
;src/fetch6.c:62: ret = read(dev2, buf, &size);
	ld	hl, #745
	add	hl, sp
	push	hl
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	a, -1 (ix)
	call	_read
;src/fetch6.c:64: if (size != 0)
	ld	a, -2 (ix)
	or	a, -3 (ix)
	jr	Z, 00109$
;src/fetch6.c:65: write(DEV_STDOUT, buf, &size);
	ld	hl, #745
	add	hl, sp
	push	hl
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	xor	a, a
	call	_write
	jr	00109$
00111$:
;src/fetch6.c:69: close(dev2);
	ld	a, -1 (ix)
	call	_close
;src/fetch6.c:70: return 0;
	ld	de, #0x0000
00112$:
;src/fetch6.c:71: }
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "B:/info.data"
	.db 0x00
___str_2:
	.ascii "Error %d occurred1"
	.db 0x0a
	.db 0x00
___str_3:
	.ascii "Error %d when writing2"
	.db 0x0a
	.db 0x00
___str_4:
	.ascii "Error %d occured3"
	.db 0x0a
	.db 0x00
	.area _TEXT
	.area _INITIALIZER
	.area _CABS (ABS)
