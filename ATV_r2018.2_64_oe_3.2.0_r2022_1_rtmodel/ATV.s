#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 0		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1
	.file		"ATV.c"
#$$dg 1
	.section	.PPC.EMB.apuinfo,,@note
	.4byte		8
	.4byte		8+4
	.4byte		2
	.byte		"APUinfo"
	.byte		0
	.align		2
	.4byte		0x01040001
	.4byte		0x00400001
	.4byte		0x01010001

	.section	.text_vle
	.section	.debug_line,,n
.L8:
	.section	.text_vle
#$$ld
.L4:
	.0byte		.L2
	.d2_line_start	.debug_line
	.section	.text_vle
# void sMultiWordMul(const uint32_T u1[], int32_T n1, const uint32_T u2[], int32_T
#                    n2, uint32_T y[], int32_T n)
# {
	.align		2
	.section	.text_vle
	.d2file		"ATV.c"
        .d2line         302
#$$ld
.L5047:

#$$bf	sMultiWordMul,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r7,r8,r9,r10,r11,r12,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,cr0,xer,ctr
	.globl		sMultiWordMul
	.d2_cfa_start __cie
sMultiWordMul:
.Llo1:
	stwu		r1,-80(r1)		
	.d2_cfa_def_cfa_offset	80
	stmw		r18,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	18,31,1,1
	mr.		r8,r8		# n=?a9 n=r8
	.d2prologue_end
#   int32_T i;
#   int32_T j;
#   int32_T k;
#   int32_T nj;
#   uint32_T u1i;
#   uint32_T yk;
#   uint32_T a1;
#   uint32_T a0;
#   uint32_T b1;
#   uint32_T w10;
#   uint32_T w01;
#   uint32_T cb;
#   boolean_T isNegative1;
#   boolean_T isNegative2;
#   uint32_T cb1;
#   uint32_T cb2;
#   isNegative1 = ((u1[n1 - 1] & 2147483648U) != 0U);
	.d2line		319
.Llo16:
	rlwinm		r30,r4,2,0,29		# n1=r4
	.d2line		320
	rlwinm		r31,r6,2,0,29		# n2=r6
	.d2line		324
	se_add		r30,r3		# u1=r3
	se_add		r31,r5		# u2=r5
#   isNegative2 = ((u2[n2 - 1] & 2147483648U) != 0U);
	lwz		r29,-4(r30)		# isNegative1=r29
	.d2line		321
.Llo79:
	diab.li		r27,1		# cb1=r27
.Llo81:
	lwz		r28,-4(r31)		# isNegative2=r28
.Llo80:
	se_srwi		r29,31		# isNegative1=r29 isNegative1=r29
#   cb1 = 1U;
	se_srwi		r28,31		# isNegative2=r28 isNegative2=r28
# 
#   /* Initialize output to zero */
#   for (k = 0; k < n; k++) {
	bc		0,1,.L3711	# le
	.d2line		324
	mr		r30,r8		# k=r30 k=r8
	diab.addi		r10,r7,-4		# y=r7
	diab.li		r31,0
	se_btsti		r30,31		# n=r30
	bc		1,2,.L4935	# eq
.L4936:
#     y[k] = 0U;
	.d2line		325
.Llo7:
	stwu		r31,4(r10)
	.d2line		324
.Llo8:
	diab.addi		r30,r30,-1		# k=r30 k=r30
	se_btsti		r30,31		# k=r30
	bc		0,2,.L4936	# ne
	se_cmpi		r30,0		# k=r30
	bc		1,2,.L3711	# eq
.L4935:
.Llo9:
	se_srwi		r30,1		# k=r30 k=r30
.Llo10:
	mtspr		ctr,r30		# k=ctr
.L4923:
	.d2line		325
	stwu		r31,4(r10)
	stwu		r31,4(r10)
	bc		2,0,.L4923
.L3711:
#   }
# 
#   for (i = 0; i < n1; i++) {
	.d2line		328
.Llo11:
	se_cmpi		r4,0		# n1=r4
.Llo12:
	bc		0,1,.L3714	# le
.Llo13:
	diab.li		r12,0		# i=r12
.L4925:
.Llo14:
	rlwinm		r10,r12,2,0,29		# i=r12
#     cb = 0U;
#     u1i = u1[i];
	.d2line		329
	diab.li		r23,0		# cb=r23
	.d2line		330
.Llo75:
	lwzx		r30,r3,r10		# u1i=r30 u1=r3
#     if (isNegative1) {
	.d2line		331
.Llo57:
	se_cmpi		r29,0		# isNegative1=r29
	bc		1,2,.L3716	# eq
#       u1i = ~u1i + cb1;
	.d2line		332
	nor		r30,r30,r30		# u1i=r30 u1i=r30 u1i=r30
	se_add		r30,r27		# u1i=r30 u1i=r30 cb1=r27
#       cb1 = (uint32_T)(u1i < cb1);
	.d2line		333
	subfc		r27,r27,r30		# cb1=r27 cb1=r27 u1i=r30
	subfe		r27,r27,r27		# cb1=r27 cb1=r27 cb1=r27
	neg		r27,r27		# cb1=r27 cb1=r27
.L3716:
#     }
# 
#     a1 = u1i >> 16U;
	.d2line		337
	subf		r0,r12,r8		# cb=r0 i=r12 n=r8
#     a0 = u1i & 65535U;
	.d2line		336
.Llo21:
	rlwinm		r31,r30,16,16,31		# a1=r31 u1i=r30
.Llo71:
	se_cmp		r0,r6		# cb=r0 n2=r6
	.d2line		341
	mr		r11,r12		# k=r11 k=r12
	isel		r25,r6,r0,1		# nj=r25 n2=r6 cb=r0
#     cb2 = 1U;
#     k = n - i;
#     nj = n2 <= k ? n2 : k;
#     k = i;
.Llo17:
	rlwinm		r30,r30,0,16,31		# a0=r30 u1i=r30
#     for (j = 0; j < nj; j++) {
	.d2line		342
.Llo58:
	se_cmpi		r25,0		# nj=r25
	bc		0,1,.L3717	# le
	.d2line		338
.Llo22:
	add		r10,r7,r10		# y=r7
	diab.li		r26,1		# cb2=r26
.Llo82:
	diab.addi		r9,r5,-4		# u2=r5
	.d2line		342
	se_btsti		r25,31		# nj=r25
	diab.addi		r10,r10,-4
	bc		1,2,.L4930	# eq
.L4932:
#       yk = y[k];
	.d2line		343
	lwzu		r0,4(r10)		# yk=r0
#       u1i = u2[j];
	.d2line		345
.Llo59:
	se_cmpi		r28,0		# isNegative2=r28
#       if (isNegative2) {
	.d2line		344
	lwzu		r22,4(r9)		# u1i=r22
.Llo37:
	bc		1,2,.L4931	# eq
#         u1i = ~u1i + cb2;
	.d2line		346
	nor		r22,r22,r22		# u1i=r22 u1i=r22 u1i=r22
	add		r22,r22,r26		# u1i=r22 u1i=r22 cb2=r26
#         cb2 = (uint32_T)(u1i < cb2);
	.d2line		347
	subfc		r26,r26,r22		# cb2=r26 cb2=r26 u1i=r22
	subfe		r26,r26,r26		# cb2=r26 cb2=r26 cb2=r26
	neg		r26,r26		# cb2=r26 cb2=r26
.L4931:
#       }
# 
#       b1 = u1i >> 16U;
	.d2line		351
.Llo60:
	rlwinm		r21,r22,0,16,31		# u1i=r21 u1i=r22
#       u1i &= 65535U;
	.d2line		354
.Llo61:
	add		r0,r0,r23		# yk=r0 yk=r0 cb=r23
#       w10 = a1 * u1i;
	.d2line		356
	mullw		r24,r21,r30		# u1i=r24 u1i=r21 a0=r30
#       w01 = a0 * b1;
	.d2line		355
.Llo38:
	subfc		r20,r23,r0		# w01=r20 cb=r23 yk=r0
#       yk += cb;
	.d2line		350
.Llo39:
	rlwinm		r22,r22,16,16,31		# b1=r22 u1i=r22
#       cb = (uint32_T)(yk < cb);
	subfe		r18,r20,r20		# cb=r18 w01=r20 w01=r20
	.d2line		352
.Llo23:
	mullw		r21,r31,r21		# w10=r21 a1=r31 u1i=r21
	.d2line		357
	add		r23,r0,r24		# yk=r23 yk=r0 u1i=r24
#       u1i *= a0;
	.d2line		353
	mullw		r20,r30,r22		# w01=r20 a0=r30 b1=r22
#       yk += u1i;
	.d2line		358
	subfc		r24,r24,r23		# u1i=r24 u1i=r24 yk=r23
#       cb += (yk < u1i);
	.d2line		359
	rlwinm		r0,r21,16,0,15		# u1i=r0 w10=r21
.Llo48:
	subfe		r19,r24,r24		# cb=r19 u1i=r24 u1i=r24
	.d2line		360
.Llo62:
	add		r23,r23,r0		# yk=r23 yk=r23 u1i=r0
	.d2line		362
	rlwinm		r24,r20,16,0,15		# u1i=r24 w01=r20
#       u1i = w10 << 16U;
	.d2line		361
.Llo40:
	subfc		r0,r0,r23		# u1i=r0 u1i=r0 yk=r23
#       yk += u1i;
	.d2line		355
	neg		r18,r18		# cb=r18 cb=r18
#       cb += (yk < u1i);
	.d2line		363
	add		r23,r23,r24		# yk=r23 yk=r23 u1i=r24
	subfe		r0,r0,r0		# u1i=r0 u1i=r0 u1i=r0
	.d2line		358
	neg		r19,r19		# cb=r19 cb=r19
	.d2line		364
	subfc		r24,r24,r23		# u1i=r24 u1i=r24 yk=r23
#       u1i = w01 << 16U;
	.d2line		361
	neg		r0,r0		# u1i=r0 u1i=r0
#       yk += u1i;
.Llo49:
	add		r18,r18,r19		# cb=r18 cb=r18 cb=r19
#       cb += (yk < u1i);
.Llo24:
	subfe		r24,r24,r24		# u1i=r24 u1i=r24 u1i=r24
	.d2line		365
.Llo25:
	stw		r23,0(r10)		# yk=r23
	add		r0,r18,r0		# cb=r0 cb=r18 cb=r0
	neg		r24,r24		# u1i=r24 u1i=r24
#       y[k] = yk;
	.d2line		366
.Llo54:
	rlwinm		r21,r21,16,16,31		# w10=r21 w10=r21
#       cb += w10 >> 16U;
	se_add		r0,r24		# cb=r0 cb=r0 cb=r24
	mullw		r23,r31,r22		# yk=r23 a1=r31 b1=r22
	rlwinm		r20,r20,16,16,31		# w01=r20 w01=r20
	add		r0,r21,r0		# cb=r0 w10=r21 cb=r0
	.d2line		342
	diab.addi		r25,r25,-1		# j=r25 j=r25
	add		r20,r0,r20		# w01=r20 cb=r0 w01=r20
#       cb += w01 >> 16U;
#       cb += a1 * b1;
#       k++;
	.d2line		369
	diab.addi		r11,r11,1		# k=r11 k=r11
	se_btsti		r25,31		# j=r25
	add		r23,r23,r20		# cb=r23 yk=r23 w01=r20
.Llo63:
	bc		0,2,.L4932	# ne
	.d2line		342
.Llo26:
	se_cmpi		r25,0		# j=r25
	bc		1,2,.L3717	# eq
.L4930:
	se_srwi		r25,1		# j=r25 j=r25
.Llo18:
	mtspr		ctr,r25		# j=ctr
.L4924:
	.d2line		343
	lwzu		r20,4(r10)		# yk=r20
	.d2line		345
.Llo64:
	se_cmpi		r28,0		# isNegative2=r28
	.d2line		344
	lwzu		r21,4(r9)		# u1i=r21
.Llo41:
	bc		1,2,.L4934	# eq
	.d2line		346
	nor		r21,r21,r21		# u1i=r21 u1i=r21 u1i=r21
	add		r21,r21,r26		# u1i=r21 u1i=r21 cb2=r26
	.d2line		347
	subfc		r26,r26,r21		# cb2=r26 cb2=r26 u1i=r21
	subfe		r26,r26,r26		# cb2=r26 cb2=r26 cb2=r26
	neg		r26,r26		# cb2=r26 cb2=r26
.L4934:
	.d2line		351
.Llo65:
	rlwinm		r22,r21,0,16,31		# u1i=r22 u1i=r21
	.d2line		354
.Llo66:
	add		r20,r20,r23		# yk=r20 yk=r20 cb=r23
	.d2line		356
	mullw		r25,r22,r30		# u1i=r25 u1i=r22 a0=r30
	.d2line		355
	subfc		r0,r23,r20		# cb=r0 cb=r23 yk=r20
	.d2line		350
.Llo27:
	rlwinm		r23,r21,16,16,31		# b1=r23 u1i=r21
.Llo76:
	subfe		r0,r0,r0		# cb=r0 cb=r0 cb=r0
	.d2line		352
	mullw		r22,r31,r22		# w10=r22 a1=r31 u1i=r22
	.d2line		357
	add		r20,r20,r25		# yk=r20 yk=r20 u1i=r25
	.d2line		353
	mullw		r21,r30,r23		# w01=r21 a0=r30 b1=r23
	.d2line		358
.Llo42:
	subfc		r25,r25,r20		# u1i=r25 u1i=r25 yk=r20
	.d2line		359
.Llo43:
	rlwinm		r24,r22,16,0,15		# u1i=r24 w10=r22
.Llo50:
	subfe		r18,r25,r25		# cb=r18 u1i=r25 u1i=r25
	.d2line		360
	add		r20,r20,r24		# yk=r20 yk=r20 u1i=r24
	.d2line		362
	rlwinm		r25,r21,16,0,15		# u1i=r25 w01=r21
	.d2line		361
.Llo44:
	subfc		r24,r24,r20		# u1i=r24 u1i=r24 yk=r20
	.d2line		355
	neg		r0,r0		# cb=r0 cb=r0
	.d2line		363
	add		r20,r20,r25		# yk=r20 yk=r20 u1i=r25
	subfe		r19,r24,r24		# cb=r19 u1i=r24 u1i=r24
	.d2line		365
	stw		r20,0(r10)		# yk=r20
	.d2line		358
	neg		r18,r18		# cb=r18 cb=r18
	.d2line		361
	neg		r19,r19		# cb=r19 cb=r19
	add		r0,r0,r18		# cb=r0 cb=r0 cb=r18
	.d2line		364
	subfc		r20,r25,r20		# yk=r20 u1i=r25 yk=r20
	add		r0,r0,r19		# cb=r0 cb=r0 cb=r19
	subfe		r20,r20,r20		# yk=r20 yk=r20 yk=r20
	.d2line		366
	rlwinm		r22,r22,16,16,31		# w10=r22 w10=r22
	neg		r20,r20		# yk=r20 yk=r20
.Llo67:
	mullw		r23,r31,r23		# b1=r23 a1=r31 b1=r23
	add		r0,r0,r20		# cb=r0 cb=r0 cb=r20
	rlwinm		r21,r21,16,16,31		# w01=r21 w01=r21
	add		r0,r22,r0		# cb=r0 w10=r22 cb=r0
	.d2line		343
	lwzu		r24,4(r10)		# yk=r24
	.d2line		344
.Llo51:
	lwzu		r25,4(r9)		# u1i=r25
.Llo45:
	add		r0,r0,r21		# cb=r0 cb=r0 w01=r21
	.d2line		345
.Llo77:
	se_cmpi		r28,0		# isNegative2=r28
	add		r0,r0,r23		# cb=r0 cb=r0 b1=r23
.Llo28:
	bc		1,2,.L3719	# eq
	.d2line		346
.Llo72:
	nor		r25,r25,r25		# u1i=r25 u1i=r25 u1i=r25
	se_add		r25,r26		# u1i=r25 u1i=r25 cb2=r26
	.d2line		347
	subfc		r26,r26,r25		# cb2=r26 cb2=r26 u1i=r25
	subfe		r26,r26,r26		# cb2=r26 cb2=r26 cb2=r26
	neg		r26,r26		# cb2=r26 cb2=r26
.L3719:
	.d2line		351
	rlwinm		r22,r25,0,16,31		# u1i=r22 u1i=r25
	.d2line		354
.Llo73:
	add		r23,r24,r0		# yk=r23 yk=r24 cb=r0
	.d2line		356
	mullw		r24,r22,r30		# u1i=r24 u1i=r22 a0=r30
	.d2line		355
.Llo68:
	subfc		r0,r0,r23		# cb=r0 cb=r0 yk=r23
	.d2line		350
.Llo69:
	se_srwi		r25,16		# b1=r25 u1i=r25
.Llo46:
	subfe		r20,r0,r0		# cb=r20 cb=r0 cb=r0
	.d2line		352
.Llo29:
	mullw		r22,r31,r22		# w10=r22 a1=r31 u1i=r22
	.d2line		357
	add		r23,r23,r24		# yk=r23 yk=r23 u1i=r24
	.d2line		353
	mullw		r21,r30,r25		# w01=r21 a0=r30 b1=r25
	.d2line		358
.Llo74:
	subfc		r24,r24,r23		# u1i=r24 u1i=r24 yk=r23
	.d2line		359
	rlwinm		r0,r22,16,0,15		# u1i=r0 w10=r22
.Llo52:
	subfe		r19,r24,r24		# cb=r19 u1i=r24 u1i=r24
	.d2line		360
	add		r23,r23,r0		# yk=r23 yk=r23 u1i=r0
	.d2line		362
	rlwinm		r24,r21,16,0,15		# u1i=r24 w01=r21
	.d2line		361
.Llo47:
	subfc		r0,r0,r23		# u1i=r0 u1i=r0 yk=r23
	.d2line		355
	neg		r20,r20		# cb=r20 cb=r20
	.d2line		363
.Llo30:
	add		r23,r23,r24		# yk=r23 yk=r23 u1i=r24
.Llo31:
	subfe		r0,r0,r0		# u1i=r0 u1i=r0 u1i=r0
	.d2line		358
	neg		r19,r19		# cb=r19 cb=r19
	.d2line		364
	subfc		r24,r24,r23		# u1i=r24 u1i=r24 yk=r23
	.d2line		361
	neg		r0,r0		# u1i=r0 u1i=r0
.Llo53:
	add		r20,r20,r19		# cb=r20 cb=r20 cb=r19
	subfe		r24,r24,r24		# u1i=r24 u1i=r24 u1i=r24
	add		r0,r20,r0		# cb=r0 cb=r20 cb=r0
	neg		r24,r24		# u1i=r24 u1i=r24
	.d2line		366
.Llo55:
	rlwinm		r22,r22,16,16,31		# w10=r22 w10=r22
	se_add		r0,r24		# cb=r0 cb=r0 cb=r24
	mullw		r25,r25,r31		# a1=r25 a1=r25 b1=r31
	.d2line		365
	stw		r23,0(r10)		# yk=r23
	rlwinm		r21,r21,16,16,31		# w01=r21 w01=r21
	add		r0,r22,r0		# cb=r0 w10=r22 cb=r0
	.d2line		369
	diab.addi		r11,r11,2		# k=r11 k=r11
	add		r0,r0,r21		# cb=r0 cb=r0 w01=r21
	add		r23,r0,r25		# cb=r23 cb=r0 a1=r25
.Llo70:
	bc		2,0,.L4924
.L3717:
#     }
# 
#     if (k < n) {
	.d2line		372
.Llo19:
	cmp		0,0,r11,r8		# k=r11 n=r8
	bc		0,0,.L3721	# ge
#       y[k] = cb;
	.d2line		373
.Llo20:
	rlwinm		r11,r11,2,0,29		# k=r11 k=r11
	stwux		r23,r11,r7		# k=r11 cb=r23
.L3721:
	.d2line		328
	diab.addi		r12,r12,1		# i=r12 i=r12
	cmp		0,0,r12,r4		# i=r12 n1=r4
	bc		1,0,.L4925	# lt
.L3714:
#     }
#   }
# 
#   /* Apply sign */
#   if (isNegative1 != isNegative2) {
	.d2line		378
.Llo78:
	se_cmp		r29,r28		# isNegative1=r29 isNegative2=r28
	bc		1,2,.L3726	# eq
#     cb = 1U;
#     for (k = 0; k < n; k++) {
	.d2line		380
.Llo56:
	cmpi		0,0,r8,0		# n=r8
	bc		0,1,.L3726	# le
	.d2line		379
	diab.li		r3,1		# cb=r3
.Llo2:
	diab.addi		r7,r7,-4		# y=r7 y=r7
	.d2line		380
	e_andi.		r0,r8,1		# cb=r0 n=r8
	bc		1,2,.L4927	# eq
.L4928:
#       yk = ~y[k] + cb;
	.d2line		381
	lwzu		r4,4(r7)		# n1=r4 y=r7
	.d2line		380
	diab.addi		r8,r8,-1		# k=r8 k=r8
	e_andi.		r0,r8,1		# cb=r0 k=r8
#       y[k] = yk;
	nor		r0,r4,r4		# cb=r0 n1=r4 n1=r4
#       cb = (uint32_T)(yk < cb);
.Llo32:
	se_add		r0,r3		# yk=r0 cb=r0 cb=r3
	.d2line		383
.Llo33:
	subfc		r3,r3,r0		# cb=r3 cb=r3 yk=r0
	.d2line		382
	stw		r0,0(r7)		# y=r7 yk=r0
	subfe		r3,r3,r3		# cb=r3 cb=r3 cb=r3
	neg		r3,r3		# cb=r3 cb=r3
	bc		0,2,.L4928	# ne
	.d2line		380
.Llo5:
	cmpi		0,0,r8,0		# k=r8
	bc		1,2,.L3726	# eq
.L4927:
.Llo6:
	rlwinm		r8,r8,31,1,31		# k=r8 k=r8
.Llo15:
	mtspr		ctr,r8		# k=ctr
.L4926:
	.d2line		381
	lwzu		r0,4(r7)		# cb=r0 y=r7
.Llo34:
	nor		r0,r0,r0		# cb=r0 cb=r0 cb=r0
.Llo36:
	se_add		r0,r3		# yk=r0 cb=r0 cb=r3
	.d2line		382
.Llo35:
	stw		r0,0(r7)		# y=r7 yk=r0
	.d2line		383
	subfc		r3,r3,r0		# cb=r3 cb=r3 yk=r0
	subfe		r3,r3,r3		# cb=r3 cb=r3 cb=r3
	lwzu		r0,4(r7)		# yk=r0 y=r7
	neg		r3,r3		# cb=r3 cb=r3
	nor		r0,r0,r0		# yk=r0 yk=r0 yk=r0
	se_add		r0,r3		# yk=r0 yk=r0 cb=r3
	subfc		r3,r3,r0		# cb=r3 cb=r3 yk=r0
	stw		r0,0(r7)		# y=r7 yk=r0
	subfe		r3,r3,r3		# cb=r3 cb=r3 cb=r3
	neg		r3,r3		# cb=r3 cb=r3
	bc		2,0,.L4926
.L3726:
#     }
#   }
# }
	.d2line		386
	.d2epilogue_begin
.Llo3:
	lmw		r18,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	diab.addi		r1,r1,80		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5048:
	.type		sMultiWordMul,@function
	.size		sMultiWordMul,.-sMultiWordMul
# Number of nodes = 304

# Allocations for sMultiWordMul
#	?a4		u1
#	?a5		n1
#	?a6		u2
#	?a7		n2
#	?a8		y
#	?a9		n
#	?a10		$$337
#	?a11		$$336
#	?a12		$$335
#	?a13		$$50
#	?a14		$$49
#	?a15		k
#	?a16		$$48
#	?a17		j
#	?a18		$$47
#	?a19		$$46
#	?a20		k
#	?a21		$$45
#	?a22		cb
#	?a23		cb
#	?a24		yk
#	?a25		u1i
#	?a26		u1i
#	?a27		u1i
#	?a28		k
#	not allocated	k
#	?a29		$$44
#	not allocated	$$43
#	?a30		i
#	not allocated	j
#	not allocated	k
#	?a31		nj
#	?a32		u1i
#	?a33		yk
#	?a34		a1
#	?a35		a0
#	?a36		b1
#	?a37		w10
#	?a38		w01
#	?a39		cb
#	?a40		isNegative1
#	?a41		isNegative2
#	?a42		cb1
#	?a43		cb2
# int32_T MultiWord2sLong(const uint32_T u[])
# {
	.align		2
	.section	.text_vle
        .d2line         389
#$$ld
.L5117:

#$$bf	MultiWord2sLong,interprocedural,nostackparams

# Regs written: r3
	.globl		MultiWord2sLong
	.d2_cfa_start __cie
MultiWord2sLong:
	.d2line		0
	.d2prologue_end
#   return (int32_T)u[0];
	.d2line		390
.Llo83:
	lwz		r3,0(r3)		# u=r3 u=r3
# }
	.d2line		391
	.d2epilogue_begin
.Llo84:
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5118:
	.type		MultiWord2sLong,@function
	.size		MultiWord2sLong,.-MultiWord2sLong
# Number of nodes = 3

# Allocations for MultiWord2sLong
#	?a4		u
# void MultiWordNeg(const uint32_T u1[], uint32_T y[], int32_T n)
# {
	.align		2
	.section	.text_vle
        .d2line         431
#$$ld
.L5123:

#$$bf	MultiWordNeg,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,r7,cr0,xer,ctr
	.globl		MultiWordNeg
	.d2_cfa_start __cie
MultiWordNeg:
.Llo85:
	mr.		r0,r5		# n=?a6 n=r5
	.d2prologue_end
#   uint32_T yi;
#   uint32_T carry = 1U;
#   int32_T i;
#   for (i = 0; i < n; i++) {
	.d2line		435
.Llo95:
	bc		0,1,.L3763	# le
	.d2line		433
.Llo87:
	diab.li		r5,1		# carry=r5
.Llo88:
	diab.addi		r3,r3,-4		# u1=r3 u1=r3
	diab.addi		r4,r4,-4		# y=r4 y=r4
	mr		r7,r0		# i=r7 i=r0
	.d2line		435
	se_btsti		r0,31		# n=r0
	bc		1,2,.L4939	# eq
.L4940:
#     yi = ~u1[i] + carry;
	.d2line		436
.Llo89:
	lwzu		r6,4(r3)		# u1=r3
	.d2line		435
.Llo96:
	diab.addi		r7,r7,-1		# i=r7 i=r7
	se_btsti		r7,31		# i=r7
#     y[i] = yi;
	nor		r0,r6,r6		# n=r0
#     carry = (uint32_T)(yi < carry);
.Llo90:
	se_add		r0,r5		# yi=r0 n=r0 carry=r5
	.d2line		438
.Llo91:
	subfc		r5,r5,r0		# carry=r5 carry=r5 yi=r0
	.d2line		437
	stwu		r0,4(r4)		# y=r4 yi=r0
	subfe		r5,r5,r5		# carry=r5 carry=r5 carry=r5
	neg		r5,r5		# carry=r5 carry=r5
	bc		0,2,.L4940	# ne
	.d2line		435
.Llo98:
	se_cmpi		r7,0		# i=r7
	bc		1,2,.L3763	# eq
.L4939:
	se_srwi		r7,1		# i=r7 i=r7
.Llo97:
	mtspr		ctr,r7		# i=ctr
.L4938:
	.d2line		436
	lwzu		r0,4(r3)		# n=r0 u1=r3
.Llo92:
	nor		r0,r0,r0		# n=r0 n=r0 n=r0
.Llo99:
	se_add		r0,r5		# yi=r0 n=r0 carry=r5
	.d2line		437
.Llo93:
	stwu		r0,4(r4)		# y=r4 yi=r0
	.d2line		438
	subfc		r5,r5,r0		# carry=r5 carry=r5 yi=r0
	subfe		r5,r5,r5		# carry=r5 carry=r5 carry=r5
	lwzu		r0,4(r3)		# yi=r0 u1=r3
	neg		r5,r5		# carry=r5 carry=r5
	nor		r0,r0,r0		# yi=r0 yi=r0 yi=r0
	se_add		r0,r5		# yi=r0 yi=r0 carry=r5
	subfc		r5,r5,r0		# carry=r5 carry=r5 yi=r0
	stwu		r0,4(r4)		# y=r4 yi=r0
	subfe		r5,r5,r5		# carry=r5 carry=r5 carry=r5
	neg		r5,r5		# carry=r5 carry=r5
	bc		2,0,.L4938
.L3763:
#   }
# }
	.d2line		440
	.d2epilogue_begin
.Llo94:
	blr
.Llo86:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5124:
	.type		MultiWordNeg,@function
	.size		MultiWordNeg,.-MultiWordNeg
# Number of nodes = 38

# Allocations for MultiWordNeg
#	?a4		u1
#	?a5		y
#	?a6		n
#	?a7		$$338
#	?a8		i
#	?a9		$$52
#	?a10		$$51
#	?a11		yi
#	?a12		carry
#	not allocated	i
# void sMultiWord2MultiWord(const uint32_T u1[], int32_T n1, uint32_T y[], int32_T
#   n)
# {
	.align		2
	.section	.text_vle
        .d2line         444
#$$ld
.L5137:

#$$bf	sMultiWord2MultiWord,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r7,r8,r9,r10,r11,cr0,ctr
	.globl		sMultiWord2MultiWord
	.d2_cfa_start __cie
sMultiWord2MultiWord:
	.d2line		0
	.d2prologue_end
#   uint32_T u1i;
#   int32_T nm;
#   int32_T i;
#   nm = n1 < n ? n1 : n;
	.d2line		448
.Llo100:
	se_cmp		r6,r4		# n=r6 n1=r4
	isel		r11,r4,r6,1		# nm=r11 n1=r4 n=r6
#   for (i = 0; i < nm; i++) {
	.d2line		449
.Llo106:
	cmpi		0,0,r11,0		# nm=r11
	bc		0,1,.L3769	# le
	mr		r7,r11		# i=r7 i=r11
	diab.addi		r9,r5,-4		# y=r5
	diab.addi		r8,r3,-4		# u1=r3
	se_btsti		r7,31		# nm=r7
	bc		1,2,.L4947	# eq
.L4948:
#     y[i] = u1[i];
	.d2line		450
	lwzu		r10,4(r8)
	.d2line		449
	diab.addi		r7,r7,-1		# i=r7 i=r7
	se_btsti		r7,31		# i=r7
	stwu		r10,4(r9)
	bc		0,2,.L4948	# ne
	se_cmpi		r7,0		# i=r7
	bc		1,2,.L3769	# eq
.L4947:
	se_srwi		r7,1		# i=r7 i=r7
	mtspr		ctr,r7		# i=ctr
.L4942:
	.d2line		450
	lwzu		r0,4(r8)
	stwu		r0,4(r9)
	lwzu		r0,4(r8)
	stwu		r0,4(r9)
	bc		2,0,.L4942
.L3769:
#   }
# 
#   if (n > n1) {
	.d2line		453
	se_cmp		r6,r4		# n=r6 n1=r4
	bc		0,1,.L3775	# le
	rlwinm		r0,r4,2,0,29		# u1=r0 n1=r4
	se_add		r3,r0		# u1=r3 u1=r3 u1=r0
	diab.li		r4,-1		# n1=r4
	lwz		r0,-4(r3)		# u1=r0 u1=r3
	se_btsti		r0,0		# u1=r0
	isel		r3,0,r4,2		# u1i=r3 n1=r4
#     u1i = (u1[n1 - 1] & 2147483648U) != 0U ? MAX_uint32_T : 0U;
#     for (i = nm; i < n; i++) {
	.d2line		455
.Llo101:
	cmp		0,0,r11,r6		# nm=r11 n=r6
.Llo102:
	bc		0,0,.L3775	# ge
.Llo103:
	rlwinm		r7,r11,2,0,29		# i=r7 nm=r11
	subf		r11,r11,r6		# i=r11 nm=r11 n=r6
	se_add		r5,r7		# y=r5 y=r5 i=r7
	e_andi.		r0,r11,1		# u1=r0 i=r11
	diab.addi		r5,r5,-4		# y=r5 y=r5
	bc		1,2,.L4944	# eq
.L4945:
#       y[i] = u1i;
	.d2line		456
	stwu		r3,4(r5)		# y=r5 u1i=r3
	.d2line		455
	diab.addi		r11,r11,-1		# i=r11 i=r11
	e_andi.		r0,r11,1		# u1=r0 i=r11
	bc		0,2,.L4945	# ne
	cmpi		0,0,r11,0		# i=r11
	bc		1,2,.L3775	# eq
.L4944:
	rlwinm		r11,r11,31,1,31		# i=r11 i=r11
.Llo107:
	mtspr		ctr,r11		# i=ctr
.L4943:
	.d2line		456
	stwu		r3,4(r5)		# y=r5 u1i=r3
	stwu		r3,4(r5)		# y=r5 u1i=r3
	bc		2,0,.L4943
.L3775:
#     }
#   }
# }
	.d2line		459
	.d2epilogue_begin
.Llo104:
	blr
.Llo105:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5138:
	.type		sMultiWord2MultiWord,@function
	.size		sMultiWord2MultiWord,.-sMultiWord2MultiWord
# Number of nodes = 75

# Allocations for sMultiWord2MultiWord
#	?a4		u1
#	?a5		n1
#	?a6		y
#	?a7		n
#	?a8		$$340
#	?a9		$$339
#	?a10		i
#	?a11		$$55
#	?a12		$$54
#	?a13		i
#	?a14		$$53
#	not allocated	i
#	?a15		u1i
#	?a16		nm
#	not allocated	i
# void MultiWordSetSignedMin(uint32_T y[], int32_T n)
# {
	.align		2
	.section	.text_vle
        .d2line         462
#$$ld
.L5154:

#$$bf	MultiWordSetSignedMin,interprocedural,nostackparams

# Regs written: r0,r4,r5,r6,r7,cr0,ctr
	.globl		MultiWordSetSignedMin
	.d2_cfa_start __cie
MultiWordSetSignedMin:
	.d2line		0
	.d2prologue_end
#   int32_T i;
#   int32_T n1;
#   n1 = n - 1;
#   for (i = 0; i < n1; i++) {
	.d2line		466
.Llo108:
	e_addi.		r7,r4,-1		# n1=r7
.Llo112:
	bc		0,1,.L3789	# le
	diab.addi		r6,r3,-4		# y=r3
	diab.li		r4,0
.Llo110:
	mr		r5,r7		# i=r5 i=r7
	se_btsti		r7,31		# n1=r7
	bc		1,2,.L4951	# eq
.L4952:
#     y[i] = 0U;
	.d2line		467
	stwu		r4,4(r6)
	.d2line		466
	diab.addi		r5,r5,-1		# i=r5 i=r5
	se_btsti		r5,31		# i=r5
	bc		0,2,.L4952	# ne
	se_cmpi		r5,0		# i=r5
	bc		1,2,.L3789	# eq
.L4951:
	se_srwi		r5,1		# i=r5 i=r5
	mtspr		ctr,r5		# i=ctr
.L4950:
	.d2line		467
	stwu		r4,4(r6)
	stwu		r4,4(r6)
	bc		2,0,.L4950
.L3789:
#   }
# 
#   y[n1] = 2147483648U;
	.d2line		470
.Llo111:
	e_lis		r0,-32768
.Llo113:
	se_slwi		r7,2		# n1=r7 n1=r7
.Llo114:
	stwx		r0,r3,r7		# y=r3
# }
	.d2line		471
	.d2epilogue_begin
	blr
.Llo109:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5155:
	.type		MultiWordSetSignedMin,@function
	.size		MultiWordSetSignedMin,.-MultiWordSetSignedMin
# Number of nodes = 32

# Allocations for MultiWordSetSignedMin
#	?a4		y
#	?a5		n
#	?a6		$$341
#	?a7		$$57
#	?a8		i
#	?a9		$$56
#	not allocated	i
#	?a10		n1
# void MultiWordSetSignedMax(uint32_T y[], int32_T n)
# {
	.align		2
	.section	.text_vle
        .d2line         474
#$$ld
.L5165:

#$$bf	MultiWordSetSignedMax,interprocedural,nostackparams

# Regs written: r0,r4,r5,r6,r7,cr0,ctr
	.globl		MultiWordSetSignedMax
	.d2_cfa_start __cie
MultiWordSetSignedMax:
	.d2line		0
	.d2prologue_end
#   int32_T i;
#   int32_T n1;
#   n1 = n - 1;
#   for (i = 0; i < n1; i++) {
	.d2line		478
.Llo115:
	e_addi.		r7,r4,-1		# n1=r7
.Llo119:
	bc		0,1,.L3795	# le
	diab.addi		r6,r3,-4		# y=r3
	diab.li		r4,-1
.Llo117:
	mr		r5,r7		# i=r5 i=r7
	se_btsti		r7,31		# n1=r7
	bc		1,2,.L4955	# eq
.L4956:
#     y[i] = MAX_uint32_T;
	.d2line		479
	stwu		r4,4(r6)
	.d2line		478
	diab.addi		r5,r5,-1		# i=r5 i=r5
	se_btsti		r5,31		# i=r5
	bc		0,2,.L4956	# ne
	se_cmpi		r5,0		# i=r5
	bc		1,2,.L3795	# eq
.L4955:
	se_srwi		r5,1		# i=r5 i=r5
	mtspr		ctr,r5		# i=ctr
.L4954:
	.d2line		479
	stwu		r4,4(r6)
	stwu		r4,4(r6)
	bc		2,0,.L4954
.L3795:
#   }
# 
#   y[n1] = 2147483647U;
	.d2line		482
.Llo118:
	diab.li		r0,2147483647
.Llo120:
	se_slwi		r7,2		# n1=r7 n1=r7
.Llo121:
	stwx		r0,r3,r7		# y=r3
# }
	.d2line		483
	.d2epilogue_begin
	blr
.Llo116:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5166:
	.type		MultiWordSetSignedMax,@function
	.size		MultiWordSetSignedMax,.-MultiWordSetSignedMax
# Number of nodes = 32

# Allocations for MultiWordSetSignedMax
#	?a4		y
#	?a5		n
#	?a6		$$342
#	?a7		$$59
#	?a8		i
#	?a9		$$58
#	not allocated	i
#	?a10		n1
# void uMultiWordInc(uint32_T y[], int32_T n)
# {
	.align		2
	.section	.text_vle
        .d2line         486
#$$ld
.L5176:

#$$bf	uMultiWordInc,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,cr0,xer,ctr
	.globl		uMultiWordInc
	.d2_cfa_start __cie
uMultiWordInc:
.Llo122:
	mr.		r0,r4		# n=?a5 n=r4
	.d2prologue_end
#   uint32_T yi;
#   uint32_T carry = 1U;
#   int32_T i;
#   for (i = 0; i < n; i++) {
	.d2line		490
.Llo129:
	bc		0,1,.L3801	# le
	.d2line		488
.Llo126:
	diab.addi		r6,r3,-4		# y=r3
.Llo127:
	diab.li		r4,1		# carry=r4
	.d2line		490
.Llo136:
	se_btsti		r0,31		# n=r0
	mr		r3,r0		# i=r3 i=r0
.Llo123:
	bc		1,2,.L4959	# eq
.L4960:
#     yi = y[i] + carry;
	.d2line		491
.Llo128:
	lwzu		r5,4(r6)		# yi=r5
	.d2line		490
.Llo130:
	diab.addi		r3,r3,-1		# i=r3 i=r3
#     y[i] = yi;
	se_btsti		r3,31		# i=r3
#     carry = (uint32_T)(yi < carry);
	se_add		r5,r4		# yi=r5 carry=r5 carry=r4
	.d2line		493
	subfc		r4,r4,r5		# carry=r4 carry=r4 yi=r5
	.d2line		492
	stw		r5,0(r6)		# yi=r5
	subfe		r4,r4,r4		# carry=r4 carry=r4 carry=r4
	neg		r4,r4		# carry=r4 carry=r4
	bc		0,2,.L4960	# ne
	.d2line		490
.Llo134:
	se_cmpi		r3,0		# i=r3
	bc		1,2,.L3801	# eq
.L4959:
	se_srwi		r3,1		# i=r3 i=r3
.Llo131:
	mtspr		ctr,r3		# i=ctr
.L4958:
	.d2line		491
	lwzu		r0,4(r6)		# n=r0
.Llo135:
	se_add		r0,r4		# yi=r0 carry=r0 carry=r4
	.d2line		492
	stw		r0,0(r6)		# yi=r0
	.d2line		493
	subfc		r3,r4,r0		# i=r3 carry=r4 yi=r0
.Llo132:
	subfe		r3,r3,r3		# i=r3 i=r3 i=r3
	lwzu		r0,4(r6)		# yi=r0
	neg		r3,r3		# carry=r3 i=r3
.Llo133:
	se_add		r0,r3		# yi=r0 carry=r0 carry=r3
	subfc		r4,r3,r0		# carry=r4 carry=r3 yi=r0
	stw		r0,0(r6)		# yi=r0
	subfe		r4,r4,r4		# carry=r4 carry=r4 carry=r4
	neg		r4,r4		# carry=r4 carry=r4
	bc		2,0,.L4958
.L3801:
#   }
# }
	.d2line		495
	.d2epilogue_begin
.Llo124:
	blr
.Llo125:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5177:
	.type		uMultiWordInc,@function
	.size		uMultiWordInc,.-uMultiWordInc
# Number of nodes = 37

# Allocations for uMultiWordInc
#	?a4		y
#	?a5		n
#	?a6		$$343
#	?a7		i
#	?a8		$$62
#	?a9		$$61
#	not allocated	$$60
#	?a10		yi
#	?a11		carry
#	not allocated	i
# boolean_T MultiWord2Bool(const uint32_T u[], int32_T n)
# {
	.align		2
	.section	.text_vle
        .d2line         498
#$$ld
.L5189:

#$$bf	MultiWord2Bool,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,r7,cr0
	.globl		MultiWord2Bool
	.d2_cfa_start __cie
MultiWord2Bool:
.Llo137:
	mr.		r0,r4		# n=?a5 n=r4
	.d2prologue_end
#   boolean_T y;
#   int32_T i;
#   y = false;
	.d2line		501
	diab.li		r4,0		# y=r4
#   i = 0;
#   while ((i < n) && (!y)) {
	.d2line		503
.Llo139:
	bc		0,1,.L3807	# le
	.d2line		502
.Llo140:
	diab.li		r5,0
.Llo143:
	diab.addi		r3,r3,-4		# u=r3 u=r3
.L4962:
#     if (u[i] != 0U) {
	.d2line		504
	lwzu		r6,4(r3)		# u=r3
	.d2line		505
	diab.li		r7,1
#       y = true;
	se_cmpi		r6,0
	isel		r4,r4,r7,2		# y=r4 y=r4
.L3809:
#     }
# 
#     i++;
	.d2line		508
	se_addi		r5,1		# i=r5 i=r5
	.d2line		503
	se_cmp		r5,r0		# i=r5 n=r0
	bc		0,0,.L3807	# ge
	se_cmpi		r4,0		# y=r4
	bc		1,2,.L4962	# eq
.L3807:
#   }
# 
#   return y;
	.d2line		511
.Llo141:
	rlwinm		r3,r4,0,24,31		# y=r3 y=r4
# }
	.d2line		512
	.d2epilogue_begin
.Llo138:
	blr
.Llo142:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5190:
	.type		MultiWord2Bool,@function
	.size		MultiWord2Bool,.-MultiWord2Bool
# Number of nodes = 31

# Allocations for MultiWord2Bool
#	?a4		u
#	?a5		n
#	?a6		$$63
#	?a7		y
#	?a8		i
# int32_T uMultiWordDiv(uint32_T a[], int32_T na, uint32_T b[], int32_T nb,
#                       uint32_T q[], int32_T nq, uint32_T r[], int32_T nr)
# {
	.align		2
	.section	.text_vle
        .d2line         516
#$$ld
.L5200:

#$$bf	uMultiWordDiv,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r6,r7,r8,r9,r10,r11,r12,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,cr0,xer,ctr
	.globl		uMultiWordDiv
	.d2_cfa_start __cie
uMultiWordDiv:
.Llo144:
	stwu		r1,-80(r1)		
	.d2_cfa_def_cfa_offset	80
	stmw		r18,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	18,31,1,1
	mr		r30,r4		# na=r30 na=r4
	.d2prologue_end
#   int32_T y;
#   int32_T nza;
#   int32_T nzb;
#   int32_T na1;
#   int32_T nb1;
#   uint32_T kba;
#   uint32_T kbb;
#   uint32_T nba;
#   uint32_T nbb;
#   uint32_T kbs;
#   uint32_T nbq;
#   uint32_T tnb;
#   int32_T tpi;
#   uint32_T t;
#   uint32_T mask;
#   uint32_T ak;
#   uint32_T bk;
#   int32_T ka;
#   int32_T kr;
#   nzb = nb;
	.d2line		538
.Llo383:
	mr.		r4,r6		# nzb=?a109 nzb=r6
#   tpi = nb - 1;
	.d2line		537
.Llo152:
	diab.addi		r31,r6,-1		# tpi=r31 nb=r6
#   while ((nzb > 0) && (b[tpi] == 0U)) {
.Llo413:
	bc		0,1,.L3814	# le
	.d2line		538
.Llo153:
	rlwinm		r6,r31,2,0,29		# nb=r6 tpi=r31
	lwzx		r0,r6,r5		# nb=r6 b=r5
	add		r26,r6,r5		# nb=r6 b=r5
	se_cmpi		r0,0
	bc		0,2,.L3814	# ne
.Llo168:
	mr		r6,r26
.L4963:
#     nzb--;
#     tpi--;
	.d2line		540
.Llo169:
	diab.addi		r31,r31,-1		# tpi=r31 tpi=r31
	.d2line		538
	e_add2i.		r4,-1		# nzb=r4
	bc		0,1,.L3894	# le
	lwzu		r0,-4(r6)		# nb=r6
	se_cmpi		r0,0
	bc		1,2,.L4963	# eq
.L3814:
#   }
# 
#   if (nzb > 0) {
	.d2line		543
	se_cmpi		r4,0		# nzb=r4
	bc		0,1,.L3894	# le
#     nza = na;
	.d2line		544
.Llo414:
	mr		r31,r30		# nza=r31 nza=r30
#     for (tpi = 0; tpi < nq; tpi++) {
	.d2line		545
	cmpi		0,0,r8,0		# nq=r8
	bc		0,1,.L3816	# le
.Llo384:
	diab.addi		r29,r7,-4		# q=r7
.Llo385:
	diab.li		r6,0		# nb=r6
	e_andi.		r0,r8,1		# nq=r8
	bc		1,2,.L5017	# eq
.L5018:
#       q[tpi] = 0U;
	.d2line		546
.Llo203:
	stwu		r6,4(r29)		# nb=r6
	.d2line		545
	diab.addi		r8,r8,-1		# tpi=r8 tpi=r8
.Llo174:
	e_andi.		r0,r8,1		# tpi=r8
	bc		0,2,.L5018	# ne
	cmpi		0,0,r8,0		# tpi=r8
	bc		1,2,.L3816	# eq
.L5017:
.Llo175:
	rlwinm		r8,r8,31,1,31		# tpi=r8 tpi=r8
.Llo176:
	mtspr		ctr,r8		# tpi=ctr
.L4964:
	.d2line		546
	stwu		r6,4(r29)		# nb=r6
	stwu		r6,4(r29)		# nb=r6
	bc		2,0,.L4964
.L3816:
#     }
# 
#     tpi = na - 1;
	.d2line		549
.Llo177:
	diab.addi		r6,r30,-1		# tpi=r6 na=r30
#     while ((nza > 0) && (a[tpi] == 0U)) {
	.d2line		550
.Llo170:
	se_cmpi		r30,0		# na=r30
	bc		0,1,.L3819	# le
.Llo154:
	rlwinm		r30,r6,2,0,29		# na=r30 tpi=r6
.Llo155:
	lwzx		r0,r30,r3		# na=r30 a=r3
	add		r8,r30,r3		# nq=r8 na=r30 a=r3
	se_cmpi		r0,0
	bc		0,2,.L3819	# ne
.L4965:
#       nza--;
#       tpi--;
	.d2line		552
.Llo156:
	diab.addi		r6,r6,-1		# tpi=r6 tpi=r6
	.d2line		550
	e_add2i.		r31,-1		# nza=r31
	bc		0,1,.L3892	# le
	lwzu		r0,-4(r8)		# nq=r8
	se_cmpi		r0,0
	bc		1,2,.L4965	# eq
.L3819:
#     }
# 
#     if ((nza > 0) && (nza >= nzb)) {
	.d2line		555
	se_cmpi		r31,0		# nza=r31
	bc		0,1,.L3892	# le
.Llo339:
	se_cmp		r31,r4		# nza=r31 nzb=r4
	bc		1,0,.L3892	# lt
#       nb1 = nzb - 1;
	.d2line		556
.Llo204:
	diab.addi		r29,r4,-1		# nb1=r29 nzb=r4
#       na1 = nza - 1;
	.d2line		557
.Llo205:
	diab.addi		r30,r31,-1		# na1=r30 nza=r31
#       for (kr = 0; kr < nr; kr++) {
	.d2line		558
.Llo207:
	cmpi		0,0,r10,0		# nr=r10
	bc		0,1,.L3821	# le
	mr		r28,r10		# kr=r28 kr=r10
	diab.addi		r27,r9,-4		# r=r9
	diab.li		r6,0		# tpi=r6
.Llo340:
	se_btsti		r28,31		# nr=r28
	bc		1,2,.L5014	# eq
.L5015:
#         r[kr] = 0U;
	.d2line		559
.Llo183:
	stwu		r6,4(r27)		# tpi=r6
	.d2line		558
.Llo184:
	diab.addi		r28,r28,-1		# kr=r28 kr=r28
	se_btsti		r28,31		# kr=r28
	bc		0,2,.L5015	# ne
	se_cmpi		r28,0		# kr=r28
	bc		1,2,.L3821	# eq
.L5014:
.Llo185:
	se_srwi		r28,1		# kr=r28 kr=r28
.Llo186:
	mtspr		ctr,r28		# kr=ctr
.L4967:
	.d2line		559
	stwu		r6,4(r27)		# tpi=r6
	stwu		r6,4(r27)		# tpi=r6
	bc		2,0,.L4967
.L3821:
#       }
# 
#       /* Quick return if dividend and divisor fit into single word. */
#       if (nza == 1) {
	.d2line		563
.Llo187:
	se_cmpi		r31,1		# nza=r31
.Llo188:
	bc		0,2,.L3887	# ne
#         ak = a[0];
	.d2line		564
.Llo189:
	lwz		r0,0(r3)		# ak=r0 a=r3
#         bk = b[0];
	.d2line		569
.Llo190:
	diab.li		r12,7		# y=r12
#         nbq = ak / bk;
	.d2line		565
.Llo377:
	lwz		r3,0(r5)		# bk=r3 b=r5
#         q[0] = nbq;
	.d2line		566
.Llo145:
	divwu		r4,r0,r3		# nbq=r4 ak=r0 bk=r3
#         r[0] = ak - nbq * bk;
	.d2line		568
.Llo419:
	mullw		r3,r3,r4		# nbq=r3 nbq=r3 bk=r4
	.d2line		567
.Llo420:
	stw		r4,0(r7)		# q=r7 nbq=r4
	subf		r3,r3,r0		# nbq=r3 nbq=r3 ak=r0
#         y = 7;
	stw		r3,0(r9)		# r=r9 nbq=r3
	.d2line		569
	b		.L3895
.L3887:
.Llo146:
	rlwinm		r6,r29,2,0,29		# tpi=r6 nb1=r29
	.d2line		572
.Llo341:
	diab.li		r27,1		# kbb=r27
	.d2line		569
.Llo397:
	lwzux		r0,r6,r5		# tpi=r6 b=r5
#       } else {
#         /* Remove leading zeros from both, dividend and divisor. */
#         kbb = 1U;
#         t = b[nb1] >> 1U;
	.d2line		573
.Llo259:
	rlwinm		r28,r0,31,1,31		# t=r28
#         while (t != 0U) {
	.d2line		574
.Llo415:
	se_cmpi		r28,0		# t=r28
	bc		1,2,.L3824	# eq
.L4968:
#           kbb++;
	.d2line		576
	se_srwi		r28,1		# t=r28 t=r28
#           t >>= 1U;
	.d2line		575
	se_addi		r27,1		# kbb=r27 kbb=r27
	.d2line		574
	se_cmpi		r28,0		# t=r28
	bc		0,2,.L4968	# ne
.L3824:
#         }
# 
#         kba = 1U;
#         t = a[na1] >> 1U;
	.d2line		580
.Llo416:
	rlwinm		r26,r30,2,0,29		# na1=r30
	.d2line		579
	diab.li		r28,1		# kba=r28
.Llo394:
	lwzux		r25,r26,r3		# t=r25
.Llo298:
	se_srwi		r25,1		# t=r25 t=r25
#         while (t != 0U) {
	.d2line		581
	se_cmpi		r25,0		# t=r25
	bc		1,2,.L3826	# eq
.L4969:
#           kba++;
	.d2line		583
	se_srwi		r25,1		# t=r25 t=r25
#           t >>= 1U;
	.d2line		582
	se_addi		r28,1		# kba=r28 kba=r28
	.d2line		581
	se_cmpi		r25,0		# t=r25
	bc		0,2,.L4969	# ne
.L3826:
#         }
# 
#         /* Quick return if quotient is zero. */
#         if ((nza > nzb) || (kba >= kbb)) {
	.d2line		587
	se_cmp		r31,r4		# nza=r31 nzb=r4
	bc		1,1,.L3896	# gt
.Llo299:
	se_cmpl		r28,r27		# kba=r28 kbb=r27
	bc		1,0,.L3885	# lt
.L3896:
#           nba = ((uint32_T)na1 << 5) + kba;
	.d2line		588
	rlwinm		r26,r30,5,0,26		# nba=r26 na1=r30
	.d2line		589
.Llo398:
	rlwinm		r25,r29,5,0,26		# t=r25 nb1=r29
#           nbb = ((uint32_T)nb1 << 5) + kbb;
	.d2line		592
.Llo300:
	cmpi		0,0,r27,32		# kbb=r27
	se_add		r26,r28		# nba=r26 nba=r26 kba=r28
# 
#           /* Normalize b. */
#           if (kbb != 32U) {
	se_add		r25,r27		# nbb=r25 t=r25 kbb=r27
.Llo301:
	bc		1,2,.L3831	# eq
#             bk = b[nb1];
	.d2line		593
	mr		r10,r0		# bk=r10 bk=r0
#             kbs = 32U - kbb;
	.d2line		594
.Llo191:
	subfic		r8,r27,32		# kbs=r8 kbb=r27
#             for (tpi = nb1; tpi > 0; tpi--) {
	.d2line		595
.Llo178:
	mr.		r11,r29		# tpi=?a90 tpi=?a111
.Llo348:
	bc		0,1,.L3828	# le
.Llo260:
	mr		r11,r29		# tpi=r11 tpi=r29
.Llo261:
	mr		r24,r6		# tpi=r24
	e_andi.		r0,r11,1		# nb1=r11
	bc		1,2,.L5011	# eq
	diab.addi		r24,r6,4		# tpi=r24 tpi=r6
.L5012:
#               t = bk << kbs;
	.d2line		596
.Llo342:
	slw		r12,r10,r8		# t=r12 bk=r10 kbs=r8
.Llo302:
	diab.addi		r24,r24,-4		# tpi=r24 tpi=r24
#               bk = b[tpi - 1];
	.d2line		597
	lwz		r10,-4(r24)		# bk=r10 tpi=r24
#               t |= bk >> kbb;
#               b[tpi] = t;
	.d2line		595
	diab.addi		r11,r11,-1		# tpi=r11 tpi=r11
	e_andi.		r0,r11,1		# tpi=r11
	.d2line		599
	srw		r0,r10,r27		# bk=r10 kbb=r27
	or		r0,r0,r12		# t=r12
	stw		r0,0(r24)		# tpi=r24
	bc		0,2,.L5012	# ne
	.d2line		595
.Llo303:
	diab.addi		r24,r24,-4		# tpi=r24 tpi=r24
.Llo343:
	cmpi		0,0,r11,0		# tpi=r11
	bc		1,2,.L5013	# eq
.L5011:
	rlwinm		r11,r11,31,1,31		# tpi=r11 tpi=r11
.Llo349:
	se_addi		r24,8		# tpi=r24 tpi=r24
	mtspr		ctr,r11		# tpi=ctr
.L4970:
	.d2line		596
.Llo344:
	diab.addi		r24,r24,-8		# tpi=r24 tpi=r24
.Llo345:
	slw		r11,r10,r8		# t=r11 bk=r10 kbs=r8
	.d2line		597
.Llo304:
	lwz		r0,-4(r24)		# bk=r0 tpi=r24
	lwz		r10,-8(r24)		# bk=r10 tpi=r24
	.d2line		599
	srw		r23,r0,r27		# bk=r0 kbb=r27
	srw		r12,r10,r27		# t=r12 bk=r10 kbb=r27
	slw		r0,r0,r8		# t=r0 bk=r0 kbs=r8
	or		r23,r23,r11		# t=r11
	or		r0,r12,r0		# t=r0 t=r12 t=r0
	stw		r0,-4(r24)		# tpi=r24 t=r0
	stw		r23,0(r24)		# tpi=r24
	bc		2,0,.L4970
.Llo305:
	diab.li		r11,0		# tpi=r11
.L5013:
.L3828:
#             }
# 
#             b[tpi] = bk << kbs;
	.d2line		603
.Llo262:
	diab.li		r24,1		# tpi=r24
	.d2line		602
.Llo263:
	slw		r10,r10,r8		# bk=r10 bk=r10 kbs=r8
	rlwinm		r11,r11,2,0,29		# tpi=r11 tpi=r11
#             mask = ~((1U << kbs) - 1U);
.Llo350:
	slw		r24,r24,r8		# tpi=r24 tpi=r24 kbs=r8
	stwx		r10,r5,r11		# b=r5 bk=r10
	diab.addi		r24,r24,-1		# tpi=r24 tpi=r24
	nor		r23,r24,r24		# mask=r23 tpi=r24 tpi=r24
.Llo417:
	b		.L3832
.L3831:
#           } else {
#             mask = MAX_uint32_T;
	.d2line		605
.Llo179:
	diab.li		r23,-1		# mask=r23
.L3832:
#           }
# 
#           /* Initialize quotient to zero. */
#           tnb = 0U;
	.d2line		609
.Llo418:
	diab.li		r24,0		# tnb=r24
#           y = 0;
	.d2line		610
.Llo378:
	mr		r12,r24		# y=r12 y=r24
.L3867:
# 
#           /* Until exit conditions have been met, do */
#           do {
#             /* Normalize a */
#             if (kba != 32U) {
	.d2line		615
	cmpi		0,0,r28,32		# kba=r28
	bc		1,2,.L3838	# eq
#               kbs = 32U - kba;
	.d2line		617
	rlwinm		r21,r30,2,0,29		# kr=r21 na1=r30
#               tnb += kbs;
	.d2line		616
.Llo230:
	subfic		r10,r28,32		# kbs=r10 kba=r28
	.d2line		618
.Llo192:
	lwzux		r11,r21,r3		# ak=r11 kr=r21 a=r3
#               ak = a[na1];
	.d2line		619
.Llo284:
	mr.		r22,r30		# ka=?a124 ka=?a110
#               for (ka = na1; ka > 0; ka--) {
.Llo421:
	add		r24,r24,r10		# tnb=r24 tnb=r24 kbs=r10
	bc		0,1,.L3835	# le
	mr		r22,r30		# ka=r22 ka=r30
	mr		r8,r21		# kr=r8
.Llo180:
	e_andi.		r0,r22,1		# t=r0 na1=r22
	bc		1,2,.L5008	# eq
.Llo402:
	diab.addi		r8,r21,4		# kbs=r8 kr=r21
.L5009:
#                 t = ak << kbs;
	.d2line		620
.Llo231:
	slw		r21,r11,r10		# t=r21 ak=r11 kbs=r10
.Llo322:
	diab.addi		r8,r8,-4		# kbs=r8 kbs=r8
#                 ak = a[ka - 1];
	.d2line		621
	lwz		r11,-4(r8)		# ak=r11 kbs=r8
#                 t |= ak >> kba;
#                 a[ka] = t;
	.d2line		619
	diab.addi		r22,r22,-1		# ka=r22 ka=r22
	e_andi.		r0,r22,1		# t=r0 ka=r22
	.d2line		623
	srw		r0,r11,r28		# t=r0 ak=r11 kba=r28
.Llo306:
	or		r0,r0,r21		# t=r0 t=r0 t=r21
	stw		r0,0(r8)		# kbs=r8 t=r0
	bc		0,2,.L5009	# ne
	.d2line		619
.Llo307:
	diab.addi		r8,r8,-4		# kbs=r8 kbs=r8
	cmpi		0,0,r22,0		# ka=r22
	bc		1,2,.L5010	# eq
.L5008:
.Llo232:
	rlwinm		r22,r22,31,1,31		# ka=r22 ka=r22
.Llo403:
	diab.addi		r8,r8,8		# kbs=r8 kbs=r8
	mtspr		ctr,r22		# ka=ctr
.L4971:
	.d2line		620
.Llo233:
	diab.addi		r8,r8,-8		# kbs=r8 kbs=r8
	slw		r22,r11,r10		# t=r22 ak=r11 kbs=r10
	.d2line		621
.Llo323:
	lwz		r0,-4(r8)		# ak=r0 kbs=r8
	lwz		r11,-8(r8)		# ak=r11 kbs=r8
	.d2line		623
	srw		r20,r0,r28		# ak=r20 ak=r0 kba=r28
.Llo285:
	srw		r21,r11,r28		# t=r21 ak=r11 kba=r28
	slw		r0,r0,r10		# t=r0 ak=r0 kbs=r10
	or		r20,r20,r22		# ak=r20 ak=r20 t=r22
	or		r0,r21,r0		# t=r0 t=r21 t=r0
	stw		r0,-4(r8)		# kbs=r8 t=r0
	stw		r20,0(r8)		# kbs=r8 ak=r20
	bc		2,0,.L4971
.Llo286:
	diab.li		r22,0		# ka=r22
.L5010:
.L3835:
#               }
# 
#               a[ka] = ak << kbs;
	.d2line		626
.Llo181:
	slw		r11,r11,r10		# ak=r11 ak=r11 kbs=r10
	rlwinm		r22,r22,2,0,29		# ka=r22 ka=r22
.Llo422:
	stwx		r11,r3,r22		# a=r3 ak=r11
.L3838:
.Llo193:
	rlwinm		r8,r30,2,0,29		# kbs=r8 na1=r30
	.d2line		631
.Llo182:
	diab.li		r10,-1		# bk=r10
	.d2line		626
.Llo194:
	lwzux		r0,r8,r3		# t=r0 kbs=r8 a=r3
#             }
# 
#             /* Compare b against the a. */
#             ak = a[na1];
#             bk = b[nb1];
.Llo288:
	se_cmpi		r29,0		# nb1=r29
	lwz		r11,0(r6)		# bk=r11 tpi=r6
# 4284
.Llo265:
	isel		r10,r23,r10,2		# bk=r10 mask=r23 bk=r10
#             if (((nb1 == 0 ? mask : MAX_uint32_T) & ak) == bk) {
	.d2line		632
	and		r10,r0,r10		# bk=r10 t=r0 bk=r10
	cmpl		0,0,r10,r11		# bk=r10 bk=r11
	bc		0,2,.L3842	# ne
#               kr = 0;
#               ka = na1;
	.d2line		634
.Llo264:
	mr		r10,r30		# ka=r10 ka=r30
#               tpi = nb1;
	.d2line		635
	mr		r11,r29		# tpi=r11 tpi=r29
	.d2line		633
	diab.li		r21,0		# kr=r21
.L4982:
#               while ((kr == 0) && (tpi > 0)) {
	.d2line		636
.Llo234:
	cmpi		0,0,r11,0		# tpi=r11
	bc		0,1,.L3905	# le
#                 ka--;
	.d2line		637
.Llo267:
	diab.addi		r10,r10,-1		# ka=r10 ka=r10
#                 ak = a[ka];
	.d2line		639
	diab.addi		r11,r11,-1		# tpi=r11 tpi=r11
	.d2line		638
	rlwinm		r22,r10,2,0,29		# ka=r22 ka=r10
#                 tpi--;
	.d2line		640
.Llo423:
	diab.li		r19,-1
#                 bk = b[tpi];
	lwzux		r20,r22,r3		# ak=r20 ka=r22
.Llo287:
	cmpi		0,0,r11,0		# tpi=r11
	rlwinm		r22,r11,2,0,29		# ka=r22 tpi=r11
	lwzux		r18,r22,r5		# bk=r18 ka=r22
# 4284
.Llo268:
	isel		r22,r23,r19,2		# ka=r22 mask=r23
#                 if (((tpi == 0 ? mask : MAX_uint32_T) & ak) != bk) {
	.d2line		641
	and		r22,r22,r20		# ka=r22 ka=r22 ak=r20
	cmpl		0,0,r22,r18		# ka=r22 bk=r18
	bc		1,2,.L4982	# eq
#                   kr = ak > bk ? 1 : -1;
	.d2line		642
.Llo424:
	cmpl		0,0,r20,r18		# ak=r20 bk=r18
	bc		0,1,.L4915	# le
.Llo235:
	diab.li		r21,1		# kr=r21
.Llo236:
	b		.L3905
.L3901:
.L3842:
#                 }
#               }
#             } else {
#               kr = ak > bk ? 1 : -1;
	.d2line		646
.Llo237:
	cmpl		0,0,r0,r11		# t=r0 bk=r11
	bc		0,1,.L3903	# le
.Llo266:
	diab.li		r21,1		# kr=r21
.Llo238:
	b		.L3905
.L3903:
.L4915:
#             }
# 
#             /* If the remainder in a is still greater or equal to b, subtract normalized divisor from a. */
#             if ((kr >= 0) || (nba > nbb)) {
	.d2line		642
.Llo239:
	diab.li		r21,-1		# kr=r21
	.d2line		650
.Llo240:
	se_cmpl		r26,r25		# nba=r26 nbb=r25
	bc		0,1,.L3865	# le
.L3905:
#               nbq = nba - nbb;
	.d2line		651
.Llo395:
	subf		r28,r25,r26		# nbq=r28 nbb=r25 nba=r26
# 
#               /* If the remainder and the divisor are equal, set remainder to zero. */
#               if (kr == 0) {
	.d2line		654
.Llo366:
	cmpi		0,0,r21,0		# kr=r21
	bc		0,2,.L3854	# ne
#                 ka = na1;
	.d2line		655
.Llo241:
	mr		r10,r30		# ka=r10 ka=r30
#                 for (tpi = nb1; tpi > 0; tpi--) {
	.d2line		656
	mr.		r11,r29		# tpi=?a92 tpi=?a111
.Llo351:
	bc		0,1,.L3844	# le
.Llo208:
	mr		r11,r29		# tpi=r11 tpi=r29
.Llo249:
	diab.addi		r26,r8,4		# nba=r26 kbs=r8
.Llo399:
	diab.li		r30,0		# na1=r30
.Llo390:
	e_andi.		r0,r11,1		# t=r0 nb1=r11
	bc		1,2,.L5005	# eq
.L5006:
#                   a[ka] = 0U;
	.d2line		657
	stwu		r30,-4(r26)		# nba=r26 na1=r30
#                   ka--;
	.d2line		656
	diab.addi		r11,r11,-1		# tpi=r11 tpi=r11
	.d2line		658
	diab.addi		r10,r10,-1		# ka=r10 ka=r10
	e_andi.		r0,r11,1		# t=r0 tpi=r11
	bc		0,2,.L5006	# ne
	.d2line		656
	cmpi		0,0,r11,0		# tpi=r11
	bc		1,2,.L5007	# eq
.L5005:
	rlwinm		r11,r11,31,1,31		# tpi=r11 tpi=r11
.Llo352:
	mtspr		ctr,r11		# tpi=ctr
.L4974:
	.d2line		657
	stwu		r30,-4(r26)		# nba=r26 na1=r30
	.d2line		658
	diab.addi		r10,r10,-2		# ka=r10 ka=r10
	stwu		r30,-4(r26)		# nba=r26 na1=r30
	bc		2,0,.L4974
	diab.li		r11,0		# tpi=r11
.L5007:
.L3844:
#                 }
# 
#                 a[ka] -= b[tpi];
	.d2line		661
.Llo353:
	rlwinm		r10,r10,2,0,29		# ka=r10 ka=r10
	rlwinm		r11,r11,2,0,29		# tpi=r11 tpi=r11
	lwzx		r0,r10,r3		# t=r0 ka=r10 a=r3
.Llo308:
	lwzux		r30,r11,r5		# na1=r30 tpi=r11
.Llo391:
	subf		r30,r30,r0		# na1=r30 na1=r30 t=r0
	stwx		r30,r10,r3		# ka=r10 a=r3 na1=r30
	b		.L3855
.L3854:
#               } else {
#                 /* Otherwise, subtract the divisor from the remainder */
#                 if (kr < 0) {
	.d2line		664
.Llo209:
	bc		0,0,.L3850	# ge
#                   ak = a[na1];
	.d2line		665
.Llo250:
	mr		r10,r0		# ak=r10 ak=r0
#                   kba = 31U;
#                   for (ka = na1; ka > 0; ka--) {
	.d2line		667
	mr.		r22,r30		# ka=?a68 ka=?a110
.Llo253:
	bc		0,1,.L3847	# le
.Llo289:
	mr		r22,r30		# ka=r22 ka=r30
.Llo290:
	mr		r26,r8		# kbs=r26
	e_andi.		r0,r22,1		# t=r0 na1=r22
	bc		1,2,.L5002	# eq
	diab.addi		r26,r8,4		# kbs=r26 kbs=r8
.L5003:
#                     t = ak << 1U;
	.d2line		668
.Llo404:
	rlwinm		r11,r10,1,0,30		# t=r11 ak=r10
.Llo324:
	diab.addi		r26,r26,-4		# kbs=r26 kbs=r26
#                     ak = a[ka - 1];
	.d2line		669
	lwz		r10,-4(r26)		# ak=r10 kbs=r26
#                     t |= ak >> 31U;
#                     a[ka] = t;
	.d2line		667
	diab.addi		r22,r22,-1		# ka=r22 ka=r22
	e_andi.		r0,r22,1		# t=r0 ka=r22
	.d2line		671
	rlwinm		r0,r10,1,31,31		# t=r0 ak=r10
.Llo309:
	or		r0,r0,r11		# t=r0 t=r0 t=r11
	stw		r0,0(r26)		# kbs=r26 t=r0
	bc		0,2,.L5003	# ne
	.d2line		667
.Llo310:
	diab.addi		r26,r26,-4		# kbs=r26 kbs=r26
.Llo405:
	cmpi		0,0,r22,0		# ka=r22
	bc		1,2,.L5004	# eq
.L5002:
	rlwinm		r22,r22,31,1,31		# ka=r22 ka=r22
.Llo254:
	se_addi		r26,8		# kbs=r26 kbs=r26
	mtspr		ctr,r22		# ka=ctr
.L4972:
	.d2line		668
.Llo406:
	diab.addi		r26,r26,-8		# kbs=r26 kbs=r26
.Llo407:
	rlwinm		r11,r10,1,0,30		# t=r11 ak=r10
	.d2line		669
.Llo325:
	lwz		r0,-4(r26)		# ak=r0 kbs=r26
	lwz		r10,-8(r26)		# ak=r10 kbs=r26
	.d2line		671
	rlwinm		r21,r0,1,31,31		# kr=r21 ak=r0
.Llo242:
	rlwinm		r22,r10,1,31,31		# ka=r22 ak=r10
	se_slwi		r0,1		# t=r0 ak=r0
	or		r21,r21,r11		# kr=r21 kr=r21 t=r11
	or		r0,r22,r0		# t=r0 ka=r22 t=r0
	stw		r0,-4(r26)		# kbs=r26 t=r0
	stw		r21,0(r26)		# kbs=r26 kr=r21
	bc		2,0,.L4972
.Llo243:
	diab.li		r22,0		# ka=r22
.L5004:
.L3847:
#                   }
# 
#                   a[ka] = ak << 1U;
	.d2line		674
.Llo255:
	rlwinm		r10,r10,1,0,30		# ak=r10 ak=r10
.Llo408:
	rlwinm		r22,r22,2,0,29		# ka=r22 ka=r22
.Llo256:
	stwx		r10,r3,r22		# a=r3 ak=r10
#                   tnb++;
	.d2line		675
	se_addi		r24,1		# tnb=r24 tnb=r24
#                   nbq--;
	.d2line		676
	diab.addi		r28,r28,-1		# nbq=r28 nbq=r28
.L3850:
#                 }
# 
#                 kbs = 0U;
#                 ka = na1 - nb1;
	.d2line		680
.Llo291:
	subf		r11,r29,r30		# ka=r11 nb1=r29 na1=r30
#                 for (tpi = 0; tpi < nzb; tpi++) {
	.d2line		681
.Llo257:
	se_cmpi		r4,0		# nzb=r4
	bc		0,1,.L3855	# le
	.d2line		679
.Llo210:
	rlwinm		r10,r11,2,0,29		# na1=r10 ka=r11
.Llo392:
	diab.li		r20,0		# kbs=r20
.Llo292:
	add		r10,r10,r3		# na1=r10 na1=r10 a=r3
	diab.addi		r26,r5,-4		# nba=r26 b=r5
.Llo400:
	mr		r30,r4		# tpi=r30 tpi=r4
	.d2line		681
	se_btsti		r4,31		# nzb=r4
	diab.addi		r10,r10,-4		# na1=r10 na1=r10
	bc		1,2,.L4995	# eq
.L4998:
#                   bk = b[tpi];
	.d2line		682
.Llo216:
	lwzu		r0,4(r26)		# bk=r0 nba=r26
#                   t = a[ka];
	.d2line		685
.Llo217:
	cmpi		0,0,r20,0		# kbs=r20
#                   ak = (t - bk) - kbs;
	.d2line		683
	lwzu		r21,4(r10)		# t=r21 na1=r10
	.d2line		684
.Llo326:
	subf		r0,r0,r21		# bk=r0 bk=r0 t=r21
#                   kbs = kbs != 0U ? (uint32_T)(ak >= t) : (uint32_T)(ak > t);
	subf		r22,r20,r0		# ak=r22 kbs=r20 bk=r0
	bc		1,2,.L4996	# eq
	.d2line		685
.Llo269:
	diab.li		r0,-1		# bk=r0
.Llo270:
	subfc		r21,r21,r22		# t=r21 t=r21 ak=r22
.Llo327:
	subfze		r20,r0		# kbs=r20 bk=r0
.Llo368:
	b		.L4997
.L4996:
.Llo271:
	subfc		r0,r22,r21		# bk=r0 ak=r22 t=r21
.Llo272:
	subfe		r20,r0,r0		# kbs=r20 bk=r0 bk=r0
.Llo369:
	neg		r20,r20		# kbs=r20 kbs=r20
.L4997:
#                   a[ka] = ak;
	.d2line		686
.Llo273:
	stw		r22,0(r10)		# na1=r10 ak=r22
#                   ka++;
	.d2line		681
	diab.addi		r30,r30,-1		# tpi=r30 tpi=r30
	.d2line		687
	diab.addi		r11,r11,1		# ka=r11 ka=r11
	se_btsti		r30,31		# tpi=r30
	bc		0,2,.L4998	# ne
	.d2line		681
.Llo293:
	se_cmpi		r30,0		# tpi=r30
.Llo294:
	bc		1,2,.L3855	# eq
.L4995:
.Llo218:
	se_srwi		r30,1		# tpi=r30 tpi=r30
.Llo219:
	mtspr		ctr,r30		# tpi=ctr
.L4973:
	.d2line		682
	lwzu		r0,4(r26)		# bk=r0 nba=r26
	.d2line		685
.Llo274:
	cmpi		0,0,r20,0		# kbs=r20
	.d2line		683
	lwzu		r30,4(r10)		# t=r30 na1=r10
	.d2line		684
.Llo328:
	subf		r0,r0,r30		# bk=r0 bk=r0 t=r30
	subf		r20,r20,r0		# ak=r20 kbs=r20 bk=r0
.Llo370:
	bc		1,2,.L5000	# eq
	.d2line		685
.Llo275:
	diab.li		r0,-1		# bk=r0
.Llo276:
	subfc		r30,r30,r20		# t=r30 t=r30 ak=r20
.Llo329:
	subfze		r30,r0		# kbs=r30 bk=r0
.Llo371:
	b		.L5001
.L5000:
.Llo277:
	subfc		r30,r20,r30		# t=r30 ak=r20 t=r30
	subfe		r30,r30,r30		# t=r30 t=r30 t=r30
.Llo372:
	neg		r30,r30		# kbs=r30 t=r30
.L5001:
	.d2line		686
.Llo330:
	stw		r20,0(r10)		# na1=r10 ak=r20
	.d2line		685
	se_cmpi		r30,0		# kbs=r30
	.d2line		682
	lwzu		r0,4(r26)		# bk=r0 nba=r26
	.d2line		683
.Llo278:
	lwzu		r22,4(r10)		# t=r22 na1=r10
	.d2line		684
.Llo331:
	subf		r0,r0,r22		# bk=r0 bk=r0 t=r22
	subf		r30,r30,r0		# ak=r30 kbs=r30 bk=r0
.Llo373:
	bc		1,2,.L3906	# eq
	.d2line		685
.Llo279:
	diab.li		r0,-1		# bk=r0
.Llo280:
	subfc		r22,r22,r30		# t=r22 t=r22 ak=r30
.Llo332:
	subfze		r20,r0		# kbs=r20 bk=r0
.Llo374:
	b		.L3907
.L3906:
.Llo281:
	subfc		r0,r30,r22		# bk=r0 ak=r30 t=r22
.Llo282:
	subfe		r20,r0,r0		# ak=r20 bk=r0 bk=r0
.Llo375:
	neg		r20,r20		# kbs=r20 ak=r20
.L3907:
	.d2line		686
.Llo283:
	stw		r30,0(r10)		# na1=r10 ak=r30
	.d2line		687
	diab.addi		r11,r11,2		# ka=r11 ka=r11
	bc		2,0,.L4973
.L3855:
#                 }
#               }
# 
#               /* Update the quotient. */
#               tpi = (int32_T)(nbq >> 5);
	.d2line		692
.Llo295:
	rlwinm		r26,r28,27,5,31		# tpi=r26 nbq=r28
#               q[tpi] |= 1U << (nbq - ((uint32_T)tpi << 5));
	.d2line		693
.Llo296:
	diab.li		r10,1		# ka=r10
.Llo251:
	rlwinm		r30,r26,2,0,29		# na1=r30 tpi=r26
	.d2line		697
.Llo393:
	se_cmpi		r31,0		# nza=r31
	se_slwi		r26,5		# tpi=r26 tpi=r26
	lwzx		r0,r30,r7		# t=r0 na1=r30 q=r7
.Llo311:
	subf		r26,r26,r28		# tpi=r26 tpi=r26 nbq=r28
	slw		r10,r10,r26		# ka=r10 ka=r10 tpi=r26
	or		r0,r10,r0		# t=r0 ka=r10 t=r0
# 
#               /* Remove leading zeros from the remainder and check whether the exit conditions have been met. */
#               tpi = na1;
#               while ((nza > 0) && (a[tpi] == 0U)) {
	stwx		r0,r30,r7		# na1=r30 q=r7 t=r0
	bc		0,1,.L3856	# le
.Llo252:
	lwz		r0,0(r8)		# t=r0 kbs=r8
.Llo312:
	se_cmpi		r0,0		# t=r0
	bc		0,2,.L3856	# ne
.L4975:
#                 nza--;
.Llo313:
	e_add2i.		r31,-1		# nza=r31
	bc		0,1,.L3856	# le
	lwzu		r0,-4(r8)		# t=r0 kbs=r8
.Llo314:
	se_cmpi		r0,0		# t=r0
	bc		1,2,.L4975	# eq
.L3856:
#                 tpi--;
#               }
# 
#               if (nza >= nzb) {
	.d2line		702
.Llo315:
	se_cmp		r31,r4		# nza=r31 nzb=r4
	bc		1,0,.L3863	# lt
#                 na1 = nza - 1;
	.d2line		703
.Llo409:
	diab.addi		r30,r31,-1		# na1=r30 nza=r31
#                 kba = 1U;
#                 t = a[na1] >> 1U;
	.d2line		704
.Llo211:
	diab.li		r28,1		# kba=r28
	.d2line		705
.Llo396:
	rlwinm		r8,r30,2,0,29		# kbs=r8 na1=r30
.Llo410:
	lwzux		r0,r8,r3		# t=r0 kbs=r8
.Llo316:
	se_srwi		r0,1		# t=r0 t=r0
#                 while (t != 0U) {
	.d2line		706
.Llo317:
	se_cmpi		r0,0		# t=r0
	bc		1,2,.L3858	# eq
.L4976:
#                   kba++;
	.d2line		708
.Llo411:
	se_srwi		r0,1		# t=r0 t=r0
#                   t >>= 1U;
	.d2line		707
	se_addi		r28,1		# kba=r28 kba=r28
	.d2line		706
	se_cmpi		r0,0		# t=r0
	bc		0,2,.L4976	# ne
.L3858:
#                 }
# 
#                 nba = (((uint32_T)na1 << 5) + kba) - tnb;
	.d2line		711
	rlwinm		r26,r30,5,0,26		# tpi=r26 na1=r30
.Llo354:
	se_add		r26,r28		# tpi=r26 tpi=r26 kba=r28
.Llo401:
	subf		r26,r24,r26		# nba=r26 tnb=r24 tpi=r26
#                 if (nba < nbb) {
	.d2line		712
.Llo355:
	se_cmpl		r26,r25		# nba=r26 nbb=r25
	bc		0,0,.L3866	# ge
#                   y = 2;
	.d2line		713
.Llo333:
	diab.li		r12,2		# y=r12
	b		.L3876
.L3863:
#                 }
#               } else if (nza == 0) {
	.d2line		715
.Llo212:
	se_cmpi		r31,0		# nza=r31
	bc		0,2,.L3861	# ne
#                 y = 1;
	.d2line		716
.Llo220:
	diab.li		r12,1		# y=r12
	b		.L4916
.L3861:
#               } else {
#                 na1 = nza - 1;
	.d2line		718
	diab.addi		r30,r31,-1		# na1=r30 nza=r31
#                 y = 4;
	.d2line		719
.Llo213:
	diab.li		r12,4		# y=r12
	b		.L3876
.L3865:
#               }
#             } else {
#               y = 3;
	.d2line		722
.Llo221:
	diab.li		r12,3		# y=r12
.L3866:
#             }
#           } while (y == 0);
	.d2line		724
.Llo244:
	cmpi		0,0,r12,0		# y=r12
	bc		1,2,.L3867	# eq
# 
#           /* Return the remainder. */
#           if (y == 1) {
	.d2line		727
	cmpi		0,0,r12,1		# y=r12
	bc		0,2,.L3876	# ne
.L4916:
#             r[0] = a[0];
	.d2line		728
.Llo222:
	lwz		r0,0(r3)		# t=r0 a=r3
.Llo318:
	stw		r0,0(r9)		# r=r9 t=r0
	b		.L3877
.L3876:
#           } else {
#             tpi = (int32_T)(tnb >> 5);
	.d2line		730
.Llo319:
	rlwinm		r28,r24,27,5,31		# tpi=r28 tnb=r24
#             nbq = tnb - ((uint32_T)tpi << 5);
	.d2line		741
.Llo356:
	diab.li		r4,0		# kr=r4
	.d2line		731
.Llo245:
	rlwinm		r7,r28,5,0,26		# q=r7 tpi=r28
#             if (nbq == 0U) {
#               ka = tpi;
#               for (kr = 0; kr <= nb1; kr++) {
#                 r[kr] = a[ka];
#                 ka++;
#               }
#             } else {
#               kbs = 32U - nbq;
#               ak = a[tpi];
#               kr = 0;
	.d2line		732
.Llo367:
	subf.		r7,r7,r24		# nbq=?a97 tnb=?a118
.Llo171:
	bc		0,2,.L3874	# ne
	.d2line		734
.Llo379:
	se_cmpi		r29,0		# nb1=r29
.Llo380:
	bc		1,0,.L3877	# lt
.Llo214:
	se_slwi		r28,2		# tpi=r28 tpi=r28
	diab.addi		r4,r29,1		# kr=r4 nb1=r29
.Llo225:
	add		r6,r28,r3		# tpi=r6 tpi=r28 a=r3
.Llo346:
	diab.addi		r9,r9,-4		# r=r9 r=r9
	se_btsti		r4,31		# kr=r4
	diab.addi		r6,r6,-4		# tpi=r6 tpi=r6
	bc		1,2,.L4992	# eq
.L4993:
	.d2line		735
.Llo357:
	lwzu		r3,4(r6)		# a=r3 tpi=r6
	.d2line		734
	diab.addi		r4,r4,-1		# kr=r4 kr=r4
	se_btsti		r4,31		# kr=r4
	stwu		r3,4(r9)		# r=r9 a=r3
	bc		0,2,.L4993	# ne
.Llo147:
	se_cmpi		r4,0		# kr=r4
	bc		1,2,.L3877	# eq
.L4992:
.Llo148:
	se_srwi		r4,1		# kr=r4 kr=r4
.Llo226:
	mtspr		ctr,r4		# kr=ctr
.L4978:
	.d2line		735
	lwzu		r0,4(r6)		# t=r0 tpi=r6
.Llo334:
	stwu		r0,4(r9)		# r=r9 t=r0
	lwzu		r0,4(r6)		# t=r0 tpi=r6
	stwu		r0,4(r9)		# r=r9 t=r0
	bc		2,0,.L4978
.Llo335:
	b		.L3877
.L3874:
	.d2line		740
.Llo215:
	rlwinm		r24,r28,2,0,29		# tnb=r24 tpi=r28
	.d2line		739
.Llo412:
	subfic		r31,r7,32		# kbs=r31 nbq=r7
.Llo376:
	lwzux		r0,r24,r3		# ak=r0 tnb=r24
#               for (ka = tpi + 1; ka <= na1; ka++) {
	.d2line		742
.Llo297:
	diab.addi		r24,r28,1		# ka=r24 tpi=r28
.Llo258:
	se_cmp		r24,r30		# ka=r24 na1=r30
	bc		1,1,.L3871	# gt
.Llo358:
	rlwinm		r28,r24,2,0,29		# tpi=r28 ka=r24
.Llo359:
	diab.addi		r6,r9,-4		# tpi=r6 r=r9
.Llo347:
	se_add		r3,r28		# a=r3 a=r3 tpi=r28
	diab.addi		r3,r3,-4		# a=r3 a=r3
.L4977:
#                 t = ak >> nbq;
	.d2line		743
.Llo360:
	srw		r28,r0,r7		# t=r28 ak=r0 nbq=r7
#                 ak = a[ka];
	.d2line		742
.Llo336:
	se_addi		r24,1		# ka=r24 ka=r24
#                 t |= ak << kbs;
#                 r[kr] = t;
	.d2line		744
	lwzu		r0,4(r3)		# ak=r0 a=r3
	.d2line		747
	se_addi		r4,1		# kr=r4 kr=r4
	se_cmp		r24,r30		# ka=r24 na1=r30
#                 kr++;
	.d2line		746
	slw		r26,r0,r31		# nba=r26 ak=r0 kbs=r31
	or		r28,r28,r26		# t=r28 t=r28 t=r26
.Llo337:
	stwu		r28,4(r6)		# tpi=r6 t=r28
.Llo338:
	bc		0,1,.L4977	# le
.L3871:
#               }
# 
#               r[kr] = ak >> nbq;
	.d2line		750
.Llo246:
	srw		r0,r0,r7		# ak=r0 ak=r0 nbq=r7
.Llo247:
	se_slwi		r4,2		# kr=r4 kr=r4
.Llo248:
	stwx		r0,r9,r4		# r=r9 ak=r0
.L3877:
#             }
#           }
# 
#           /* Restore b. */
#           if (kbb != 32U) {
	.d2line		755
.Llo172:
	cmpi		0,0,r27,32		# kbb=r27
	bc		1,2,.L3895	# eq
#             bk = b[0];
	.d2line		756
.Llo227:
	lwz		r7,0(r5)		# bk=r7 b=r5
#             kbs = 32U - kbb;
	.d2line		757
.Llo173:
	subfic		r3,r27,32		# kbs=r3 kbb=r27
#             for (tpi = 0; tpi < nb1; tpi++) {
	.d2line		758
.Llo149:
	diab.li		r4,0		# tpi=r4
.Llo361:
	se_cmpi		r29,0		# nb1=r29
	bc		0,1,.L3878	# le
.Llo362:
	mr		r6,r5		# b=r6 b=r5
	mr		r4,r29		# tpi=r4 tpi=r29
.Llo363:
	se_btsti		r29,31		# nb1=r29
	bc		1,2,.L4989	# eq
.L4990:
#               t = bk >> kbs;
	.d2line		759
.Llo159:
	srw		r31,r7,r3		# t=r31 bk=r7 kbs=r3
#               bk = b[tpi + 1];
	.d2line		758
.Llo160:
	diab.addi		r4,r4,-1		# tpi=r4 tpi=r4
#               t |= bk << kbb;
#               b[tpi] = t;
	.d2line		760
	lwzu		r7,4(r6)		# bk=r7 b=r6
	se_btsti		r4,31		# tpi=r4
	.d2line		762
	slw		r0,r7,r27		# t=r0 bk=r7 kbb=r27
.Llo320:
	or		r0,r0,r31		# t=r0 t=r0 t=r31
	stw		r0,-4(r6)		# b=r6 t=r0
	bc		0,2,.L4990	# ne
	.d2line		758
.Llo321:
	se_cmpi		r4,0		# tpi=r4
	bc		1,2,.L4991	# eq
.L4989:
.Llo161:
	se_srwi		r4,1		# tpi=r4 tpi=r4
.Llo162:
	diab.addi		r6,r6,-8		# b=r6 b=r6
	mtspr		ctr,r4		# tpi=ctr
.L4979:
	.d2line		760
.Llo163:
	lwz		r0,12(r6)		# bk=r0 b=r6
	.d2line		759
.Llo164:
	srw		r7,r7,r3		# t=r7 bk=r7 kbs=r3
	.d2line		762
	slw		r4,r0,r27		# tpi=r4 bk=r0 kbb=r27
	or		r4,r4,r7		# tpi=r4 tpi=r4 t=r7
	srw		r0,r0,r3		# t=r0 bk=r0 kbs=r3
	stwu		r4,8(r6)		# b=r6 tpi=r4
	lwz		r7,8(r6)		# bk=r7 b=r6
	slw		r31,r7,r27		# nza=r31 bk=r7 kbb=r27
	or		r0,r0,r31		# t=r0 t=r0 t=r31
	stw		r0,4(r6)		# b=r6 t=r0
	bc		2,0,.L4979
	diab.li		r4,0		# tpi=r4
.L4991:
.Llo364:
	subf		r4,r4,r29		# tpi=r4 tpi=r4 nb1=r29
.L3878:
#             }
# 
#             b[tpi] = bk >> kbs;
	.d2line		765
.Llo165:
	srw		r7,r7,r3		# bk=r7 bk=r7 kbs=r3
.Llo166:
	se_slwi		r4,2		# tpi=r4 tpi=r4
.Llo365:
	stwx		r7,r5,r4		# b=r5 bk=r7
	b		.L3895
.L3885:
#           }
#         } else {
#           for (kr = 0; kr < nr; kr++) {
	.d2line		768
.Llo150:
	cmpi		0,0,r10,0		# nr=r10
	bc		0,1,.L3882	# le
.Llo206:
	diab.addi		r9,r9,-4		# r=r9 r=r9
	diab.addi		r3,r3,-4		# a=r3 a=r3
	e_andi.		r0,r10,1		# nr=r10
	bc		1,2,.L4986	# eq
.L4987:
#             r[kr] = a[kr];
	.d2line		769
.Llo228:
	lwzu		r4,4(r3)		# nzb=r4 a=r3
	.d2line		768
.Llo386:
	diab.addi		r10,r10,-1		# kr=r10 kr=r10
.Llo195:
	e_andi.		r0,r10,1		# kr=r10
	stwu		r4,4(r9)		# r=r9 nzb=r4
	bc		0,2,.L4987	# ne
.Llo387:
	cmpi		0,0,r10,0		# kr=r10
	bc		1,2,.L3882	# eq
.L4986:
.Llo196:
	rlwinm		r10,r10,31,1,31		# kr=r10 kr=r10
.Llo197:
	mtspr		ctr,r10		# kr=ctr
.L4980:
	.d2line		769
	lwzu		r0,4(r3)		# a=r3
	stwu		r0,4(r9)		# r=r9
	lwzu		r0,4(r3)		# a=r3
	stwu		r0,4(r9)		# r=r9
	bc		2,0,.L4980
.L3882:
#           }
# 
#           y = 6;
	.d2line		772
.Llo198:
	diab.li		r12,6		# y=r12
.Llo381:
	b		.L3895
.L3892:
#         }
#       }
#     } else {
#       for (kr = 0; kr < nr; kr++) {
	.d2line		776
.Llo223:
	cmpi		0,0,r10,0		# nr=r10
	bc		0,1,.L3889	# le
.Llo224:
	diab.addi		r9,r9,-4		# r=r9 r=r9
	diab.addi		r3,r3,-4		# a=r3 a=r3
	e_andi.		r0,r10,1		# nr=r10
	bc		1,2,.L4983	# eq
.L4984:
#         r[kr] = a[kr];
	.d2line		777
.Llo229:
	lwzu		r4,4(r3)		# nzb=r4 a=r3
	.d2line		776
.Llo388:
	diab.addi		r10,r10,-1		# kr=r10 kr=r10
.Llo199:
	e_andi.		r0,r10,1		# kr=r10
	stwu		r4,4(r9)		# r=r9 nzb=r4
	bc		0,2,.L4984	# ne
.Llo389:
	cmpi		0,0,r10,0		# kr=r10
	bc		1,2,.L3889	# eq
.L4983:
.Llo200:
	rlwinm		r10,r10,31,1,31		# kr=r10 kr=r10
.Llo201:
	mtspr		ctr,r10		# kr=ctr
.L4966:
	.d2line		777
	lwzu		r0,4(r3)		# a=r3
	stwu		r0,4(r9)		# r=r9
	lwzu		r0,4(r3)		# a=r3
	stwu		r0,4(r9)		# r=r9
	bc		2,0,.L4966
.L3889:
#       }
# 
#       y = 5;
	.d2line		780
.Llo202:
	diab.li		r12,5		# y=r12
.Llo382:
	b		.L3895
.L3894:
#     }
#   } else {
#     y = -1;
	.d2line		783
.Llo157:
	diab.li		r12,-1		# y=r12
.L3895:
#   }
# 
#   return y;
	.d2line		786
.Llo158:
	mr		r3,r12		# y=r3 y=r12
# }
	.d2line		787
	.d2epilogue_begin
.Llo151:
	lmw		r18,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	diab.addi		r1,r1,80		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo167:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5201:
	.type		uMultiWordDiv,@function
	.size		uMultiWordDiv,.-uMultiWordDiv
# Number of nodes = 1001

# Allocations for uMultiWordDiv
#	?a4		a
#	?a5		na
#	?a6		b
#	?a7		nb
#	?a8		q
#	?a9		nq
#	?a10		r
#	?a11		nr
#	?a12		$$354
#	?a13		$$353
#	?a14		$$352
#	?a15		$$351
#	?a16		$$350
#	?a17		$$349
#	?a18		$$348
#	?a19		$$347
#	?a20		$$346
#	?a21		$$345
#	?a22		$$344
#	?a23		$$97
#	?a24		$$96
#	?a25		$$95
#	?a26		$$94
#	?a27		$$93
#	?a28		$$92
#	?a29		$$91
#	?a30		$$90
#	?a31		$$89
#	?a32		$$88
#	?a33		$$87
#	?a34		tpi
#	?a35		$$86
#	?a36		$$85
#	?a37		kr
#	?a38		$$84
#	?a39		tpi
#	?a40		$$83
#	?a41		ka
#	?a42		$$82
#	?a43		tpi
#	?a44		$$81
#	?a45		ka
#	?a46		$$80
#	?a47		tpi
#	?a48		$$79
#	?a49		$$78
#	?a50		$$77
#	?a51		$$76
#	?a52		kr
#	?a53		$$75
#	?a54		$$74
#	?a55		$$73
#	?a56		tpi
#	?a57		$$72
#	?a58		kr
#	?a59		$$71
#	?a60		$$70
#	?a61		kr
#	?a62		$$69
#	?a63		$$68
#	?a64		kr
#	?a65		kr
#	not allocated	kr
#	not allocated	kr
#	?a66		ka
#	?a67		ka
#	?a68		ka
#	?a69		ka
#	not allocated	ka
#	?a70		ka
#	?a71		bk
#	?a72		bk
#	?a73		bk
#	?a74		bk
#	?a75		bk
#	?a76		ak
#	not allocated	ak
#	?a77		ak
#	?a78		ak
#	?a79		ak
#	?a80		ak
#	?a81		t
#	?a82		t
#	?a83		t
#	?a84		t
#	?a85		t
#	?a86		t
#	?a87		t
#	?a88		t
#	not allocated	tpi
#	?a89		tpi
#	?a90		tpi
#	?a91		tpi
#	?a92		tpi
#	not allocated	tpi
#	?a93		tpi
#	not allocated	tpi
#	?a94		tpi
#	?a95		tpi
#	?a96		nbq
#	?a97		nbq
#	?a98		kbs
#	?a99		kbs
#	?a100		kbs
#	?a101		kbs
#	?a102		$$67
#	?a103		$$66
#	?a104		$$4
#	?a105		$$3
#	not allocated	$$2
#	?a106		$$1
#	?a107		y
#	?a108		nza
#	?a109		nzb
#	?a110		na1
#	?a111		nb1
#	?a112		kba
#	?a113		kbb
#	?a114		nba
#	?a115		nbb
#	?a116		kbs
#	?a117		nbq
#	?a118		tnb
#	?a119		tpi
#	?a120		t
#	?a121		mask
#	?a122		ak
#	?a123		bk
#	?a124		ka
#	not allocated	kr
# void sMultiWordDivFloor(const uint32_T u1[], int32_T n1, const uint32_T u2[],
#   int32_T n2, uint32_T y1[], int32_T m1, uint32_T y2[], int32_T m2, uint32_T t1[],
#   int32_T l1, uint32_T t2[], int32_T l2)
# {
	.align		2
	.section	.text_vle
        .d2line         396
#$$ld
.L5347:

#$$bf	sMultiWordDivFloor,interprocedural,rasave

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,cr0,xer-ctr
	.globl		sMultiWordDivFloor
	.d2_cfa_start __cie
sMultiWordDivFloor:
.Llo425:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
	stmw		r21,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	21,31,1,1
	stw		r0,68(r1)
	.d2_cfa_offset    108,-1
	lwz		r12,72(r1)		# t1=r12
.Llo442:
	mr		r25,r5		# u2=r25 u2=r5
.Llo430:
	lwz		r23,76(r1)		# l1=r23
.Llo431:
	mr		r24,r6		# n2=r24 n2=r6
.Llo433:
	lwz		r22,80(r1)		# t2=r22
.Llo434:
	mr		r31,r7		# y1=r31 y1=r7
	lwz		r21,84(r1)		# l2=r21
	mr		r30,r8		# m1=r30 m1=r8
	mr		r29,r9		# y2=r29 y2=r9
	mr		r28,r10		# m2=r28 m2=r10
	.d2prologue_end
#   boolean_T numNeg;
#   boolean_T denNeg;
#   numNeg = ((u1[n1 - 1] & 2147483648U) != 0U);
	.d2line		399
	rlwinm		r6,r4,2,0,29		# n1=r4
	.d2line		400
	rlwinm		r5,r24,2,0,29		# n2=r24
	se_add		r6,r3		# u1=r3
	se_add		r5,r25		# u2=r25
#   denNeg = ((u2[n2 - 1] & 2147483648U) != 0U);
	lwz		r27,-4(r6)		# numNeg=r27
.Llo448:
	lwz		r26,-4(r5)		# denNeg=r26
.Llo450:
	se_srwi		r27,31		# numNeg=r27 numNeg=r27
	se_srwi		r26,31		# denNeg=r26 denNeg=r26
#   if (numNeg) {
	.d2line		401
	se_cmpi		r27,0		# numNeg=r27
	bc		1,2,.L3744	# eq
#     MultiWordNeg(u1, t1, n1);
	.d2line		402
.Llo436:
	mr		r5,r4		# n1=r5 n1=r4
.Llo437:
	mr		r4,r12		# t1=r4 t1=r12
.Llo429:
	bl		MultiWordNeg
.Llo426:
	b		.L3745
.L3744:
#   } else {
#     sMultiWord2MultiWord(u1, n1, t1, l1);
	.d2line		404
.Llo427:
	mr		r5,r12		# t1=r5 t1=r12
	mr		r6,r23		# l1=r6 l1=r23
	bl		sMultiWord2MultiWord
.L3745:
#   }
# 
#   if (denNeg) {
	.d2line		407
.Llo428:
	e_andi.		r0,r26,255		# denNeg=r26
	.d2line		410
	mr		r3,r25		# u2=r3 u2=r25
	bc		1,2,.L3746	# eq
#     MultiWordNeg(u2, t2, n2);
	.d2line		408
.Llo432:
	mr		r4,r22		# t2=r4 t2=r22
	mr		r5,r24		# n2=r5 n2=r24
	bl		MultiWordNeg
	b		.L3747
.L3746:
#   } else {
#     sMultiWord2MultiWord(u2, n2, t2, l2);
	.d2line		410
	mr		r4,r24		# n2=r4 n2=r24
	mr		r5,r22		# t2=r5 t2=r22
	mr		r6,r21		# l2=r6 l2=r21
	bl		sMultiWord2MultiWord
.L3747:
#   }
# 
#   if (uMultiWordDiv(t1, l1, t2, l2, y1, m1, y2, m2) < 0) {
	.d2line		413
.Llo435:
	mr		r3,r12		# t1=r3 t1=r12
	mr		r4,r23		# l1=r4 l1=r23
	mr		r5,r22		# t2=r5 t2=r22
	mr		r6,r21		# l2=r6 l2=r21
	mr		r7,r31		# y1=r7 y1=r31
	mr		r8,r30		# m1=r8 m1=r30
	mr		r9,r29		# y2=r9 y2=r29
	mr		r10,r28		# m2=r10 m2=r28
	bl		uMultiWordDiv
.Llo443:
	se_cmpi		r3,0		# t1=r3
.Llo444:
	bc		0,0,.L3752	# ge
#     if (numNeg) {
	.d2line		414
.Llo445:
	se_cmpi		r27,0		# numNeg=r27
	.d2line		417
	mr		r3,r31		# y1=r3 y1=r31
	mr		r4,r30		# m1=r4 m1=r30
	bc		1,2,.L3748	# eq
#       MultiWordSetSignedMin(y1, m1);
	.d2line		415
.Llo438:
	bl		MultiWordSetSignedMin
	b		.L3753
.L3748:
#     } else {
#       MultiWordSetSignedMax(y1, m1);
	.d2line		417
	bl		MultiWordSetSignedMax
	b		.L3753
.L3752:
#     }
#   } else {
#     if ((boolean_T)(numNeg ^ denNeg)) {
	.d2line		420
.Llo439:
	xor		r0,r27,r26		# numNeg=r27 denNeg=r26
	e_andi.		r0,r0,255
	bc		1,2,.L3753	# eq
#       if (MultiWord2Bool(y2, m2)) {
	.d2line		421
.Llo449:
	mr		r3,r29		# y2=r3 y2=r29
	mr		r4,r28		# m2=r4 m2=r28
	bl		MultiWord2Bool
.Llo446:
	e_andi.		r3,r3,255		# t1=r3 t1=r3
.Llo447:
	bc		1,2,.L3750	# eq
#         uMultiWordInc(y1, m1);
	.d2line		422
.Llo441:
	mr		r3,r31		# y1=r3 y1=r31
	mr		r4,r30		# m1=r4 m1=r30
	bl		uMultiWordInc
.L3750:
#       }
# 
#       MultiWordNeg(y1, y1, m1);
	.d2line		425
	mr		r3,r31		# y1=r3 y1=r31
	mr		r5,r30		# m1=r5 m1=r30
	mr		r4,r31		# y1=r4 y1=r31
	bl		MultiWordNeg
.L3753:
#     }
#   }
# }
	.d2line		428
	.d2epilogue_begin
.Llo440:
	lmw		r21,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	2,10
	lwz		r0,68(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5348:
	.type		sMultiWordDivFloor,@function
	.size		sMultiWordDivFloor,.-sMultiWordDivFloor
# Number of nodes = 143

# Allocations for sMultiWordDivFloor
#	?a4		u1
#	?a5		n1
#	?a6		u2
#	?a7		n2
#	?a8		y1
#	?a9		m1
#	?a10		y2
#	?a11		m2
#	?a12		t1
#	?a13		l1
#	?a14		t2
#	?a15		l2
#	?a16		numNeg
#	?a17		denNeg
# void sLong2MultiWord(int32_T u, uint32_T y[], int32_T n)
# {
	.align		2
	.section	.text_vle
        .d2line         790
#$$ld
.L5368:

#$$bf	sLong2MultiWord,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,cr0,ctr
	.globl		sLong2MultiWord
	.d2_cfa_start __cie
sLong2MultiWord:
	.d2line		0
	.d2prologue_end
#   uint32_T yi;
#   int32_T i;
#   y[0] = (uint32_T)u;
	.d2line		793
.Llo451:
	stw		r3,0(r4)		# y=r4 u=r3
	diab.li		r0,0
	diab.li		r6,-1
	se_cmpi		r3,0		# u=r3
# 4284
	isel		r3,r6,r0,0		# yi=r3
#   yi = u < 0 ? MAX_uint32_T : 0U;
#   for (i = 1; i < n; i++) {
	.d2line		795
.Llo452:
	se_cmpi		r5,1		# n=r5
	bc		0,1,.L3980	# le
.Llo456:
	diab.addi		r5,r5,-1		# i=r5 n=r5
.Llo454:
	se_btsti		r5,31		# i=r5
	bc		1,2,.L5021	# eq
.L5022:
#     y[i] = yi;
	.d2line		796
	stwu		r3,4(r4)		# y=r4 yi=r3
	.d2line		795
	diab.addi		r5,r5,-1		# i=r5 i=r5
	se_btsti		r5,31		# i=r5
	bc		0,2,.L5022	# ne
	se_cmpi		r5,0		# i=r5
	bc		1,2,.L3980	# eq
.L5021:
	se_srwi		r5,1		# i=r5 i=r5
.Llo457:
	mtspr		ctr,r5		# i=ctr
.L5020:
	.d2line		796
	stwu		r3,4(r4)		# y=r4 yi=r3
	stwu		r3,4(r4)		# y=r4 yi=r3
	bc		2,0,.L5020
.L3980:
#   }
# }
	.d2line		798
	.d2epilogue_begin
.Llo455:
	blr
.Llo453:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5369:
	.type		sLong2MultiWord,@function
	.size		sLong2MultiWord,.-sLong2MultiWord
# Number of nodes = 33

# Allocations for sLong2MultiWord
#	?a4		u
#	?a5		y
#	?a6		n
#	?a7		$$355
#	?a8		i
#	?a9		$$98
#	?a10		yi
#	not allocated	i
# int32_T sMultiWordCmp(const uint32_T u1[], const uint32_T u2[], int32_T n)
# {
	.align		2
	.section	.text_vle
        .d2line         806
#$$ld
.L5380:

#$$bf	sMultiWordCmp,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,r7,cr0
	.globl		sMultiWordCmp
	.d2_cfa_start __cie
sMultiWordCmp:
	.d2line		0
	.d2prologue_end
	.d2line		811
.Llo458:
	rlwinm		r0,r5,2,0,29		# su1=r0 n=r5
.Llo476:
	se_add		r3,r0		# u1=r3 u1=r3 su1=r0
#   int32_T y;
#   uint32_T su1;
#   uint32_T su2;
#   int32_T i;
#   su1 = u1[n - 1] & 2147483648U;
	se_add		r4,r0		# u2=r4 u2=r4 su1=r0
	lwz		r6,-4(r3)		# su2=r6 u1=r3
	.d2line		812
.Llo478:
	lwz		r0,-4(r4)		# su1=r0 u2=r4
#   su2 = u2[n - 1] & 2147483648U;
	rlwinm		r6,r6,0,0,0		# su1=r6 su2=r6
	rlwinm		r0,r0,0,0,0		# su2=r0 su1=r0
#   if ((su1 ^ su2) != 0U) {
	.d2line		813
	xor.		r0,r0,r6		# su1=?a16 su2=?a17
.Llo477:
	bc		1,2,.L3994	# eq
.Llo459:
	diab.li		r3,1		# u1=r3
.Llo460:
	diab.li		r0,-1		# su1=r0
.Llo471:
	cmpli		0,0,r6,0		# su1=r6
# 4273
	isel		r0,r3,r0,2		# y=r0 u1=r3 su1=r0
	b		.L3995
.L3994:
#     y = su1 != 0U ? -1 : 1;
#   } else {
#     y = 0;
	.d2line		816
.Llo472:
	diab.li		r0,0		# y=r0
#     i = n;
#     while ((y == 0) && (i > 0)) {
	.d2line		818
.Llo473:
	se_cmpi		r5,0		# n=r5
	bc		0,1,.L3995	# le
.L5024:
#       i--;
	.d2line		820
.Llo468:
	lwzu		r7,-4(r3)		# su1=r7 u1=r3
#       su1 = u1[i];
	.d2line		819
.Llo470:
	diab.addi		r5,r5,-1		# i=r5 i=r5
#       su2 = u2[i];
	.d2line		821
.Llo466:
	lwzu		r6,-4(r4)		# su2=r6 u2=r4
#       if (su1 != su2) {
	.d2line		822
.Llo469:
	se_cmpl		r7,r6		# su1=r7 su2=r6
	bc		1,2,.L5025	# eq
#         y = su1 > su2 ? 1 : -1;
	.d2line		823
.Llo461:
	diab.li		r3,1		# u1=r3
.Llo462:
	isel		r3,r3,r0,1		# y=r3 u1=r3 y=r0
.L3998:
.Llo463:
	diab.li		r0,-1		# y=r0
.Llo474:
	isel		r0,r3,r0,1		# y=r0 y=r3 y=r0
	b		.L3995
.L5025:
	.d2line		818
.Llo464:
	se_cmpi		r5,0		# i=r5
.Llo475:
	bc		0,2,.L5024	# ne
.L3995:
#       }
#     }
#   }
# 
#   return y;
	.d2line		828
.Llo465:
	mr		r3,r0		# y=r3 y=r0
# }
	.d2line		829
	.d2epilogue_begin
	blr
.Llo467:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5381:
	.type		sMultiWordCmp,@function
	.size		sMultiWordCmp,.-sMultiWordCmp
# Number of nodes = 112

# Allocations for sMultiWordCmp
#	?a4		u1
#	?a5		u2
#	?a6		n
#	?a7		$$103
#	?a8		$$102
#	?a9		$$101
#	?a10		i
#	?a11		$$100
#	?a12		$$99
#	?a13		su2
#	?a14		su1
#	?a15		y
#	?a16		su1
#	?a17		su2
#	not allocated	i
# boolean_T sMultiWordGe(const uint32_T u1[], const uint32_T u2[], int32_T n)
# {
	.align		2
	.section	.text_vle
        .d2line         801
#$$ld
.L5400:

#$$bf	sMultiWordGe,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		sMultiWordGe
	.d2_cfa_start __cie
sMultiWordGe:
.Llo479:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#   return sMultiWordCmp(u1, u2, n) >= 0;
	.d2line		802
	bl		sMultiWordCmp
.Llo480:
	se_srwi		r3,31
	xori		r3,r3,1
# }
	.d2line		803
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5401:
	.type		sMultiWordGe,@function
	.size		sMultiWordGe,.-sMultiWordGe
# Number of nodes = 11

# Allocations for sMultiWordGe
#	?a4		u1
#	?a5		u2
#	?a6		n
# time_T rt_SimUpdateDiscreteEvents(
#   int_T rtmNumSampTimes, void *rtmTimingData, int_T *rtmSampleHitPtr, int_T
#   *rtmPerTaskSampleHits )
# {
	.align		2
	.section	.text_vle
        .d2line         834
#$$ld
.L5408:

#$$bf	rt_SimUpdateDiscreteEvents,interprocedural,nostackparams

# Regs written: r0,r3,r6
	.globl		rt_SimUpdateDiscreteEvents
	.d2_cfa_start __cie
rt_SimUpdateDiscreteEvents:
	.d2line		0
	.d2prologue_end
#   rtmSampleHitPtr[1] = rtmStepTask(ATV_M, 1);
	.d2line		835
.Llo481:
	lis		r6,ATV_M@ha
	.d2line		840
	e_lis		r3,-16512
	lwz		r6,ATV_M@l(r6)
	lbz		r0,429(r6)
	cntlzw		r0,r0
	diab.srwi		r0,5
#   rtmSampleHitPtr[2] = rtmStepTask(ATV_M, 2);
	stw		r0,4(r5)		# rtmSampleHitPtr=r5
	.d2line		836
	lbz		r0,430(r6)
	cntlzw		r0,r0
	diab.srwi		r0,5
#   UNUSED_PARAMETER(rtmNumSampTimes);
#   UNUSED_PARAMETER(rtmTimingData);
#   UNUSED_PARAMETER(rtmPerTaskSampleHits);
#   return(-1);
	stw		r0,8(r5)		# rtmSampleHitPtr=r5
# }
	.d2line		841
	.d2epilogue_begin
	blr
.Llo482:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5409:
	.type		rt_SimUpdateDiscreteEvents,@function
	.size		rt_SimUpdateDiscreteEvents,.-rt_SimUpdateDiscreteEvents
# Number of nodes = 26

# Allocations for rt_SimUpdateDiscreteEvents
#	not allocated	rtmNumSampTimes
#	not allocated	rtmTimingData
#	?a4		rtmSampleHitPtr
#	not allocated	rtmPerTaskSampleHits
#	?a5		$$104
# static void rate_monotonic_scheduler(void)
# {
	.align		1
	.section	.text_vle
        .d2line         852
#$$ld
.L5422:

#$$bf	rate_monotonic_scheduler,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,cr0
	.d2_cfa_start __cie
rate_monotonic_scheduler:
	.d2line		0
	.d2prologue_end
	.d2line		861
	lis		r3,ATV_M@ha
	e_add16i		r3,r3,ATV_M@l
	lwz		r5,0(r3)
#   /* To ensure a deterministic data transfer between two rates,
#    * data is transferred at the priority of a fast task and the frequency
#    * of the slow task.  The following flags indicate when the data transfer
#    * happens.  That is, a rate interaction flag is set true when both rates
#    * will run, and false otherwise.
#    */
# 
#   /* tid 0 shares data with slower tid rate: 1 */
#   ATV_M->Timing.RateInteraction.TID0_1 = (ATV_M->Timing.TaskCounters.TID[1] == 0);
	lbz		r0,429(r5)
	.d2line		864
	lwz		r4,476(r5)
	cntlzw		r0,r0
	diab.srwi		r0,5
# 
#   /* update PerTaskSampleHits matrix for non-inline sfcn */
#   ATV_M->Timing.perTaskSampleHits[1] = ATV_M->Timing.RateInteraction.TID0_1;
	stb		r0,431(r5)
	rlwinm		r0,r0,0,24,31
	stw		r0,4(r4)
# 
#   /* Compute which subrates run during the next base time step.  Subrates
#    * are an integer multiple of the base rate counter.  Therefore, the subtask
#    * counter is reset when it reaches its limit (zero means run).
#    */
#   (ATV_M->Timing.TaskCounters.TID[1])++;
	.d2line		870
	lbz		r4,429(r5)
	se_addi		r4,1
	stb		r4,429(r5)
	lwz		r5,0(r3)
#   if ((ATV_M->Timing.TaskCounters.TID[1]) > 9) {/* Sample time: [0.1s, 0.0s] */
	.d2line		871
	lbz		r0,429(r5)
	se_cmpi		r0,9
	bc		0,1,.L4012	# le
#     ATV_M->Timing.TaskCounters.TID[1] = 0;
	.d2line		872
	diab.li		r0,0
	stb		r0,429(r5)
.L4012:
#   }
# 
#   (ATV_M->Timing.TaskCounters.TID[2])++;
	.d2line		875
	lbz		r4,430(r5)
	se_addi		r4,1
	stb		r4,430(r5)
	lwz		r3,0(r3)
	lbz		r0,430(r3)
#   if ((ATV_M->Timing.TaskCounters.TID[2]) > 99) {/* Sample time: [1.0s, 0.0s] */
	.d2line		876
	cmpi		0,0,r0,99
	bc		0,1,.L4013	# le
	diab.li		r0,0
	stb		r0,430(r3)
.L4013:
#     ATV_M->Timing.TaskCounters.TID[2] = 0;
#   }
# }
	.d2line		879
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5423:
	.type		rate_monotonic_scheduler,@function
	.size		rate_monotonic_scheduler,.-rate_monotonic_scheduler
# Number of nodes = 61

# Allocations for rate_monotonic_scheduler
#	?a4		$$356
#	not allocated	$$112
#	?a5		$$111
#	?a6		$$110
#	?a7		$$109
#	?a8		$$105
#	?a9		$$6
#	?a10		$$5
# void ATV_Chart_Init(DW_Chart_ATV_T *localDW)
# {
	.align		2
	.section	.text_vle
        .d2line         888
#$$ld
.L5427:

#$$bf	ATV_Chart_Init,interprocedural,nostackparams

# Regs written: r0
	.globl		ATV_Chart_Init
	.d2_cfa_start __cie
ATV_Chart_Init:
	.d2line		0
	.d2prologue_end
	.d2line		890
.Llo483:
	diab.li		r0,0
#   localDW->temporalCounter_i1 = 0U;
#   localDW->is_active_c1_ATV = 0U;
	stb		r0,0(r3)		# localDW=r3
#   localDW->is_c1_ATV = ATV_IN_NO_ACTIVE_CHILD;
	.d2line		891
	stb		r0,1(r3)		# localDW=r3
	.d2line		889
	stb		r0,2(r3)		# localDW=r3
# }
	.d2line		892
	.d2epilogue_begin
	blr
.Llo484:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5428:
	.type		ATV_Chart_Init,@function
	.size		ATV_Chart_Init,.-ATV_Chart_Init
# Number of nodes = 16

# Allocations for ATV_Chart_Init
#	?a4		localDW
#	?a5		$$113
# void ATV_Chart(boolean_T rtu_in, B_Chart_ATV_T *localB, DW_Chart_ATV_T *localDW)
# {
	.align		2
	.section	.text_vle
        .d2line         901
#$$ld
.L5436:

#$$bf	ATV_Chart,interprocedural,nostackparams

# Regs written: r0,r3,r6,cr0
	.globl		ATV_Chart
	.d2_cfa_start __cie
ATV_Chart:
	.d2line		0
	.d2prologue_end
	.d2line		903
.Llo485:
	lbz		r6,2(r5)		# localDW=r5
#   /* Chart: '<S3>/Chart' */
#   if (localDW->temporalCounter_i1 < 7U) {
	se_cmpli	r6,7
	bc		0,0,.L4018	# ge
#     localDW->temporalCounter_i1++;
	.d2line		904
	se_addi		r6,1
	stb		r6,2(r5)		# localDW=r5
.L4018:
#   }
# 
#   /* Gateway: CANBUS_Reception_V_DBG_CTRL/Chart */
#   /* During: CANBUS_Reception_V_DBG_CTRL/Chart */
#   if (localDW->is_active_c1_ATV == 0U) {
	.d2line		909
	lbz		r0,0(r5)		# localDW=r5
	se_cmpi		r0,0
	bc		0,2,.L4023	# ne
	diab.li		r0,1
	.d2line		918
	diab.li		r3,0
#     /* Entry: CANBUS_Reception_V_DBG_CTRL/Chart */
#     localDW->is_active_c1_ATV = 1U;
# 
#     /* Entry Internal: CANBUS_Reception_V_DBG_CTRL/Chart */
#     /* Transition: '<S11>:4' */
#     localDW->is_c1_ATV = ATV_IN_NO_RX;
	.d2line		909
.Llo486:
	stb		r0,0(r5)		# localDW=r5
# 
#     /* Entry 'NO_RX': '<S11>:5' */
#     localB->out = false;
	.d2line		915
	stb		r0,1(r5)		# localDW=r5
	stb		r3,0(r4)		# localB=r4
	.d2line		945
	blr
.L4023:
#   } else if (localDW->is_c1_ATV == ATV_IN_NO_RX) {
	.d2line		919
.Llo487:
	lbz		r0,1(r5)		# localDW=r5
	se_cmpi		r0,1
	bc		0,2,.L4021	# ne
#     localB->out = false;
	.d2line		920
	diab.li		r0,0
	.d2line		923
	se_cmpi		r3,0		# rtu_in=r3
# 
#     /* During 'NO_RX': '<S11>:5' */
#     if (rtu_in) {
	stb		r0,0(r4)		# localB=r4
	bc		1,2,.L4024	# eq
#       /* Transition: '<S11>:6' */
#       localDW->is_c1_ATV = ATV_IN_RX;
	.d2line		926
	stb		r0,2(r5)		# localDW=r5
	.d2line		925
	diab.li		r0,2
#       localDW->temporalCounter_i1 = 0U;
	stb		r0,1(r5)		# localDW=r5
# 
#       /* Entry 'RX': '<S11>:3' */
#       localB->out = true;
	.d2line		929
	diab.li		r0,1
	stb		r0,0(r4)		# localB=r4
	.d2line		945
	blr
.L4021:
#     }
#   } else {
#     localB->out = true;
	.d2line		935
	se_cmpi		r3,0		# rtu_in=r3
	.d2line		932
	diab.li		r3,1		# rtu_in=r3
# 
#     /* During 'RX': '<S11>:3' */
#     if ((!rtu_in) && (localDW->temporalCounter_i1 >= 5U)) {
	stb		r3,0(r4)		# localB=r4 rtu_in=r3
	bc		0,2,.L4024	# ne
	.d2line		935
	lbz		r0,2(r5)		# localDW=r5
	se_cmpli	r0,5
	bc		1,0,.L4024	# lt
#       /* Transition: '<S11>:7' */
#       localDW->is_c1_ATV = ATV_IN_NO_RX;
	.d2line		937
	stb		r3,1(r5)		# localDW=r5 rtu_in=r3
# 
#       /* Entry 'NO_RX': '<S11>:5' */
#       localB->out = false;
	.d2line		940
	diab.li		r0,0
	stb		r0,0(r4)		# localB=r4
.L4024:
#     }
#   }
# 
#   /* End of Chart: '<S3>/Chart' */
# }
	.d2line		945
	.d2epilogue_begin
	blr
.Llo488:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5437:
	.type		ATV_Chart,@function
	.size		ATV_Chart,.-ATV_Chart
# Number of nodes = 89

# Allocations for ATV_Chart
#	?a4		rtu_in
#	?a5		localB
#	?a6		localDW
#	?a7		$$116
#	?a8		$$114
# static void ATV_KEY_ON(void)
# {
	.align		1
	.section	.text_vle
        .d2line         949
#$$ld
.L5447:

#$$bf	ATV_KEY_ON,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,cr0
	.d2_cfa_start __cie
ATV_KEY_ON:
	.d2line		0
	.d2prologue_end
#   boolean_T tmp;
# 
#   /* During 'KEY_ON': '<S41>:20' */
#   tmp = !atv_key_signal;
	.d2line		953
	lbz		r0,atv_key_signal@sdarx(r0)		# tmp=r0
.Llo489:
	cntlzw		r0,r0		# tmp=r0 tmp=r0
	diab.srwi		r0,5		# tmp=r0
#   if (tmp && (ATV_DW.is_HV_CTRL != ATV_IN_HVM_ON) && (ATV_DW.is_HV_CTRL !=
	.d2line		954
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4072	# eq
	lis		r3,ATV_DW@ha
	e_add16i		r3,r3,ATV_DW@l
	lbz		r4,43(r3)
	se_cmpi		r4,1
	bc		1,2,.L4072	# eq
	se_cmpi		r4,4
	bc		1,2,.L4072	# eq
#        ATV_IN_HV_ON) && (ATV_DW.is_HV_CTRL != ATV_IN_HV_WAIT_INV_OFF)) {
	.d2line		955
	se_cmpi		r4,5
	bc		1,2,.L4072	# eq
#     /* Transition: '<S41>:23' */
#     /* Transition: '<S41>:25' */
#     /* Exit Internal 'KEY_ON': '<S41>:20' */
#     /* Exit Internal 'STARTTRIGGER': '<S41>:119' */
#     ATV_DW.is_STARTTRIGGER = ATV_IN_NO_ACTIVE_CHILD_f;
	.d2line		963
.Llo490:
	lbz		r0,42(r3)		# tmp=r0
	.d2line		960
.Llo491:
	diab.li		r4,0
# 
#     /* Exit Internal 'DRIVE_ENABLE': '<S41>:85' */
#     if (ATV_DW.is_DRIVE_ENABLE == ATV_IN_DRIVE_ENABLED) {
	stb		r4,46(r3)
	se_cmpi		r0,1		# tmp=r0
	bc		0,2,.L5452	# ne
	.d2line		963
.Llo492:
	stb		r4,atv_runLed_out@sdarx(r0)
.L5452:
#       /* Exit 'DRIVE_ENABLED': '<S41>:88' */
#       atv_runLed_out = false;
#       ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_f;
#     } else {
#       ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_f;
#     }
# 
#     /* Exit Internal 'HEATER_CTRL': '<S41>:72' */
#     ATV_DW.is_HEATER_CTRL = ATV_IN_NO_ACTIVE_CHILD_f;
# 
#     /* Exit Internal 'CHG_CTRL': '<S41>:68' */
#     ATV_DW.is_CHG_CTRL = ATV_IN_NO_ACTIVE_CHILD_f;
# 
#     /* Exit Internal 'HV_CTRL': '<S41>:34' */
#     ATV_DW.is_HV_CTRL = ATV_IN_NO_ACTIVE_CHILD_f;
#     ATV_DW.is_c3_ATV = ATV_IN_PRE_SLEEP;
	.d2line		979
	diab.li		r0,3		# tmp=r0
.Llo493:
	sth		r4,42(r3)
	stb		r0,41(r3)		# tmp=r0
	.d2line		975
	sth		r4,44(r3)
#     ATV_DW.temporalCounter_i1_j = 0U;
	.d2line		980
	stb		r4,47(r3)
# 
#     /* Entry 'PRE_SLEEP': '<S41>:3' */
#     atv_state_out = 2U;
	.d2line		983
	diab.li		r0,2		# tmp=r0
	stb		r0,atv_state_out@sdarx(r0)		# tmp=r0
#     atv_sub_state_out = 0U;
	.d2line		984
	stb		r4,atv_sub_state_out@sdarx(r0)
	.d2line		1222
	blr
.L4072:
	.d2line		984
	lis		r3,ATV_DW@ha
	e_add16i		r3,r3,ATV_DW@l
	lbz		r6,43(r3)
#   } else {
#     /* During 'HV_CTRL': '<S41>:34' */
#     switch (ATV_DW.is_HV_CTRL) {
	.d2line		987
	se_cmpi		r6,1
	bc		1,2,.L4033	# eq
	se_cmpi		r6,2
	bc		1,2,.L4035	# eq
	se_cmpi		r6,3
	bc		1,2,.L4037	# eq
	se_cmpi		r6,4
	bc		1,2,.L4040	# eq
	b		.L4042
.L4033:
#      case ATV_IN_HVM_ON:
#       /* During 'HVM_ON': '<S41>:54' */
#       if (ATV_DW.temporalCounter_i2 >= 50U) {
	.d2line		990
.Llo494:
	lbz		r0,48(r3)		# tmp=r0
.Llo495:
	cmpli		0,0,r0,50		# tmp=r0
	bc		1,0,.L4032	# lt
.Llo496:
	diab.li		r0,4		# tmp=r0
	.d2line		995
.Llo497:
	diab.li		r5,3
#         /* Transition: '<S41>:56' */
#         ATV_DW.is_HV_CTRL = ATV_IN_HV_ON;
# 
#         /* Entry 'HV_ON': '<S41>:53' */
#         atv_sub_state_out = 3U;
	.d2line		990
	stb		r0,43(r3)		# tmp=r0
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
	stb		r5,atv_sub_state_out@sdarx(r0)
	diab.li		r0,1		# tmp=r0
#         ATV_B.hvp_ctrl_out = true;
	.d2line		996
	stb		r0,169(r4)		# tmp=r0
#         ATV_B.hvm_ctrl_out = true;
	.d2line		997
	stb		r0,170(r4)		# tmp=r0
	.d2line		999
	b		.L4032
.L4035:
	.d2line		1001
.Llo498:
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
#       }
#       break;
# 
#      case ATV_IN_HV_ARMED:
#       /* During 'HV_ARMED': '<S41>:83' */
#       if (ATV_B.LogicalOperator3 && (!ATV_B.RateTransition4)) {
	.d2line		1003
	lbz		r0,123(r4)		# tmp=r0
.Llo499:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4032	# eq
.Llo500:
	lbz		r0,124(r4)		# tmp=r0
.Llo501:
	se_cmpi		r0,0		# tmp=r0
	bc		0,2,.L4032	# ne
.Llo502:
	diab.li		r0,1		# tmp=r0
.Llo503:
	diab.li		r5,0
	stb		r0,43(r3)		# tmp=r0
#         /* Transition: '<S41>:51' */
#         ATV_DW.is_HV_CTRL = ATV_IN_HVM_ON;
#         ATV_DW.temporalCounter_i2 = 0U;
	.d2line		1010
	diab.li		r6,2
# 
#         /* Entry 'HVM_ON': '<S41>:54' */
#         ATV_DW.startBtnArmed = false;
	.d2line		1006
	stb		r5,48(r3)
#         atv_sub_state_out = 2U;
	.d2line		1009
	stb		r5,73(r3)
	stb		r6,atv_sub_state_out@sdarx(r0)
#         ATV_B.hvp_ctrl_out = false;
	.d2line		1011
	stb		r5,169(r4)
#         ATV_B.hvm_ctrl_out = true;
	.d2line		1012
	stb		r0,170(r4)		# tmp=r0
	.d2line		1014
	b		.L4032
.L4037:
	.d2line		1016
.Llo504:
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
#       }
#       break;
# 
#      case ATV_IN_HV_OFF:
#       /* During 'HV_OFF': '<S41>:52' */
#       if ((!ATV_B.LogicalOperator3) && (!ATV_B.RateTransition4)) {
	.d2line		1018
	lbz		r0,123(r4)		# tmp=r0
.Llo505:
	se_cmpi		r0,0		# tmp=r0
	bc		0,2,.L4038	# ne
.Llo506:
	lbz		r0,124(r4)		# tmp=r0
.Llo507:
	se_cmpi		r0,0		# tmp=r0
	bc		0,2,.L4038	# ne
.Llo508:
	diab.li		r0,2		# tmp=r0
	.d2line		1023
.Llo509:
	diab.li		r5,1
#         /* Transition: '<S41>:84' */
#         ATV_DW.is_HV_CTRL = ATV_IN_HV_ARMED;
# 
#         /* Entry 'HV_ARMED': '<S41>:83' */
#         atv_sub_state_out = 1U;
	.d2line		1018
	stb		r0,43(r3)		# tmp=r0
	stb		r5,atv_sub_state_out@sdarx(r0)
	diab.li		r0,0		# tmp=r0
#         ATV_B.hvp_ctrl_out = false;
	.d2line		1024
	stb		r0,169(r4)		# tmp=r0
#         ATV_B.hvm_ctrl_out = false;
	.d2line		1025
	stb		r0,170(r4)		# tmp=r0
	b		.L4032
.L4038:
.Llo510:
	diab.li		r0,0		# tmp=r0
#       } else {
#         atv_sub_state_out = 0U;
	.d2line		1027
.Llo511:
	stb		r0,atv_sub_state_out@sdarx(r0)		# tmp=r0
#         ATV_B.hvp_ctrl_out = false;
	.d2line		1028
	stb		r0,169(r4)		# tmp=r0
#         ATV_B.hvm_ctrl_out = false;
	.d2line		1029
	stb		r0,170(r4)		# tmp=r0
	.d2line		1031
	b		.L4032
.L4040:
#       }
#       break;
# 
#      case ATV_IN_HV_ON:
#       /* During 'HV_ON': '<S41>:53' */
#       if ((ATV_DW.startBtnArmed && ATV_B.LogicalOperator3) ||
	.d2line		1035
	lbz		r4,73(r3)
	se_cmpi		r4,0
	bc		1,2,.L4075	# eq
	lis		r4,(ATV_B+123)@ha
	lbz		r4,(ATV_B+123)@l(r4)
	se_cmpi		r4,0
	bc		0,2,.L4074	# ne
.L4075:
#           ATV_B.RateTransition4 || tmp) {
	.d2line		1036
	lis		r4,(ATV_B+124)@ha
	lbz		r4,(ATV_B+124)@l(r4)
	se_cmpi		r4,0
	bc		0,2,.L4074	# ne
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4032	# eq
.L4074:
.Llo512:
	diab.li		r4,5
	.d2line		1039
	diab.li		r0,0		# tmp=r0
#         /* Transition: '<S41>:48' */
#         ATV_DW.is_HV_CTRL = ATV_IN_HV_WAIT_INV_OFF;
#         ATV_DW.temporalCounter_i2 = 0U;
	.d2line		1036
.Llo513:
	stb		r4,43(r3)
	.d2line		1042
	diab.li		r5,4
# 
#         /* Entry 'HV_WAIT_INV_OFF': '<S41>:98' */
#         atv_sub_state_out = 4U;
	stb		r0,48(r3)		# tmp=r0
	lis		r4,ATV_B@ha
	stb		r5,atv_sub_state_out@sdarx(r0)
	diab.li		r0,1		# tmp=r0
	e_add16i		r4,r4,ATV_B@l
#         ATV_B.hvp_ctrl_out = true;
	.d2line		1043
	stb		r0,169(r4)		# tmp=r0
#         ATV_B.hvm_ctrl_out = true;
	.d2line		1044
	stb		r0,170(r4)		# tmp=r0
	.d2line		1046
	b		.L4032
.L4042:
#       }
#       break;
# 
#      default:
#       /* During 'HV_WAIT_INV_OFF': '<S41>:98' */
#       if (ATV_DW.temporalCounter_i2 >= 50U) {
	.d2line		1050
.Llo514:
	lbz		r0,48(r3)		# tmp=r0
.Llo515:
	cmpli		0,0,r0,50		# tmp=r0
	bc		1,0,.L4032	# lt
.Llo516:
	diab.li		r0,3		# tmp=r0
.Llo517:
	stb		r0,43(r3)		# tmp=r0
.L4032:
.Llo518:
	lbz		r6,44(r3)
#         /* Transition: '<S41>:99' */
#         /* Transition: '<S41>:47' */
#         ATV_DW.is_HV_CTRL = ATV_IN_HV_OFF;
# 
#         /* Entry 'HV_OFF': '<S41>:52' */
#       }
#       break;
#     }
# 
#     /* During 'CHG_CTRL': '<S41>:68' */
#     switch (ATV_DW.is_CHG_CTRL) {
	.d2line		1061
	se_cmpi		r6,1
	bc		1,2,.L4045	# eq
	se_cmpi		r6,2
	bc		1,2,.L4047	# eq
	b		.L4052
.L4045:
	.d2line		1062
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
#      case ATV_IN_CHG_OFF:
#       /* During 'CHG_OFF': '<S41>:62' */
#       if (ATV_B.RateTransition4 && ((!ATV_B.hvp_ctrl_out) ||
	.d2line		1064
	lbz		r0,124(r4)		# tmp=r0
.Llo519:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4044	# eq
.Llo520:
	lbz		r0,169(r4)		# tmp=r0
.Llo521:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4076	# eq
#            (ATV_DW.temporalCounter_i3 < 100U))) {
	.d2line		1065
.Llo522:
	lbz		r0,49(r3)		# tmp=r0
.Llo523:
	cmpli		0,0,r0,100		# tmp=r0
	bc		0,0,.L4044	# ge
.L4076:
#         /* Transition: '<S41>:64' */
#         ATV_DW.is_CHG_CTRL = ATV_IN_HVM_ON_m;
	.d2line		1067
.Llo524:
	diab.li		r4,2
	.d2line		1068
	diab.li		r0,0		# tmp=r0
#         ATV_DW.temporalCounter_i3 = 0U;
.Llo525:
	stb		r4,44(r3)
	stb		r0,49(r3)		# tmp=r0
	.d2line		1072
	b		.L4044
.L4047:
	.d2line		1074
.Llo526:
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
# 
#         /* Entry 'HVM_ON': '<S41>:66' */
#       }
#       break;
# 
#      case ATV_IN_HVM_ON_m:
#       /* During 'HVM_ON': '<S41>:66' */
#       if ((!ATV_B.RateTransition4) || ATV_B.hvp_ctrl_out) {
	.d2line		1076
	lbz		r0,124(r4)		# tmp=r0
.Llo527:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4077	# eq
.Llo528:
	lbz		r0,169(r4)		# tmp=r0
.Llo529:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4050	# eq
.L4077:
#         /* Transition: '<S41>:61' */
#         ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
	.d2line		1078
.Llo530:
	diab.li		r5,1
	.d2line		1079
	diab.li		r0,0		# tmp=r0
#         ATV_DW.temporalCounter_i3 = 0U;
.Llo531:
	stb		r5,44(r3)
	stb		r0,49(r3)		# tmp=r0
# 
#         /* Entry 'CHG_OFF': '<S41>:62' */
#         ATV_B.chg_ctrl_out = false;
#         ATV_B.hvm_ctrl_out = false;
	.d2line		1083
	sth		r0,170(r4)		# tmp=r0
	b		.L4044
.L4050:
#       } else if (ATV_DW.temporalCounter_i3 >= 150U) {
	.d2line		1084
.Llo532:
	lbz		r0,49(r3)		# tmp=r0
.Llo533:
	cmpli		0,0,r0,150		# tmp=r0
	bc		1,0,.L4048	# lt
.Llo534:
	diab.li		r0,3		# tmp=r0
.Llo535:
	stb		r0,44(r3)		# tmp=r0
	b		.L4044
.L4048:
#         /* Transition: '<S41>:63' */
#         ATV_DW.is_CHG_CTRL = ATV_IN_HV_ON_o;
# 
#         /* Entry 'HV_ON': '<S41>:65' */
#       } else {
#         ATV_B.chg_ctrl_out = false;
	.d2line		1090
.Llo536:
	diab.li		r0,0		# tmp=r0
	.d2line		1093
.Llo537:
	b		.L4079
.L4052:
	.d2line		1095
.Llo538:
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
#         ATV_B.hvm_ctrl_out = true;
#       }
#       break;
# 
#      default:
#       /* During 'HV_ON': '<S41>:65' */
#       if ((!ATV_B.RateTransition4) || ATV_B.hvp_ctrl_out) {
	.d2line		1097
	lbz		r0,124(r4)		# tmp=r0
.Llo539:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4078	# eq
.Llo540:
	lbz		r0,169(r4)		# tmp=r0
.Llo541:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4053	# eq
.L4078:
#         /* Transition: '<S41>:59' */
#         /* Transition: '<S41>:60' */
#         ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
	.d2line		1100
.Llo542:
	diab.li		r5,1
	.d2line		1101
	diab.li		r0,0		# tmp=r0
#         ATV_DW.temporalCounter_i3 = 0U;
.Llo543:
	stb		r5,44(r3)
	stb		r0,49(r3)		# tmp=r0
# 
#         /* Entry 'CHG_OFF': '<S41>:62' */
#         ATV_B.chg_ctrl_out = false;
#         ATV_B.hvm_ctrl_out = false;
	.d2line		1105
	sth		r0,170(r4)		# tmp=r0
	b		.L4044
.L4053:
#       } else {
#         ATV_B.chg_ctrl_out = true;
	.d2line		1107
.Llo544:
	diab.li		r0,1		# tmp=r0
.L4079:
#         ATV_B.hvm_ctrl_out = true;
	.d2line		1090
.Llo545:
	stb		r0,171(r4)		# tmp=r0
	.d2line		1108
	diab.li		r0,1		# tmp=r0
	lis		r4,(ATV_B+170)@ha
	stb		r0,(ATV_B+170)@l(r4)		# tmp=r0
.L4044:
#       }
#       break;
#     }
# 
#     /* During 'HEATER_CTRL': '<S41>:72' */
#     if (ATV_DW.is_HEATER_CTRL == ATV_IN_HEATER_OFF) {
	.d2line		1114
.Llo546:
	lbz		r0,45(r3)		# tmp=r0
	.d2line		1123
.Llo547:
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
	se_cmpi		r0,1		# tmp=r0
	bc		0,2,.L4057	# ne
#       ATV_B.heater_ctrl_out = false;
	.d2line		1115
.Llo548:
	diab.li		r0,0		# tmp=r0
.Llo549:
	stb		r0,172(r4)		# tmp=r0
# 
#       /* During 'HEATER_OFF': '<S41>:69' */
#       if (ATV_B.RateTransition5) {
	.d2line		1118
	lbz		r0,125(r4)		# tmp=r0
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4058	# eq
#         /* Transition: '<S41>:78' */
#         ATV_DW.is_HEATER_CTRL = ATV_IN_HVM_ON_m;
	.d2line		1120
.Llo550:
	diab.li		r5,2
	.d2line		1123
	diab.li		r0,1		# tmp=r0
# 
#         /* Entry 'HVM_ON': '<S41>:73' */
#         ATV_B.heater_ctrl_out = true;
.Llo551:
	stb		r5,45(r3)
	stb		r0,172(r4)		# tmp=r0
	b		.L4058
.L4057:
#       }
#     } else {
#       ATV_B.heater_ctrl_out = true;
	.d2line		1129
.Llo552:
	lbz		r0,125(r4)		# tmp=r0
	.d2line		1126
.Llo553:
	diab.li		r5,1
# 
#       /* During 'HVM_ON': '<S41>:73' */
#       if (!ATV_B.RateTransition5) {
	stb		r5,172(r4)
	se_cmpi		r0,0		# tmp=r0
	bc		0,2,.L4058	# ne
#         /* Transition: '<S41>:77' */
#         ATV_DW.is_HEATER_CTRL = ATV_IN_HEATER_OFF;
	.d2line		1131
.Llo554:
	stb		r5,45(r3)
# 
#         /* Entry 'HEATER_OFF': '<S41>:69' */
#         ATV_B.heater_ctrl_out = false;
	.d2line		1134
	diab.li		r0,0		# tmp=r0
.Llo555:
	stb		r0,172(r4)		# tmp=r0
.L4058:
.Llo556:
	lbz		r6,42(r3)
#       }
#     }
# 
#     /* During 'DRIVE_ENABLE': '<S41>:85' */
#     switch (ATV_DW.is_DRIVE_ENABLE) {
	.d2line		1139
	se_cmpi		r6,1
	bc		1,2,.L4060	# eq
	se_cmpi		r6,2
	bc		1,2,.L4062	# eq
	b		.L4066
.L4060:
#      case ATV_IN_DRIVE_ENABLED:
#       atv_state_out = 5U;
	.d2line		1141
	diab.li		r0,5		# tmp=r0
.Llo557:
	lis		r4,ATV_B@ha
	stb		r0,atv_state_out@sdarx(r0)		# tmp=r0
	.d2line		1142
	diab.li		r5,1
#       ATV_B.en_inv_rear_out = true;
	e_add16i		r4,r4,ATV_B@l
	.d2line		1143
	diab.li		r0,257		# tmp=r0
#       ATV_B.en_inv_front_out = true;
	stb		r5,173(r4)
	sth		r0,174(r4)		# tmp=r0
#       ATV_B.en_inv_gen_out = true;
# 
#       /* During 'DRIVE_ENABLED': '<S41>:88' */
#       if (ATV_DW.is_HV_CTRL != ATV_IN_HV_ON) {
	.d2line		1147
	lbz		r0,43(r3)		# tmp=r0
	se_cmpi		r0,4		# tmp=r0
	bc		1,2,.L4059	# eq
.Llo558:
	diab.li		r0,0		# tmp=r0
#         /* Transition: '<S41>:92' */
#         /* Transition: '<S41>:93' */
#         /* Transition: '<S41>:94' */
#         /* Exit 'DRIVE_ENABLED': '<S41>:88' */
#         atv_runLed_out = false;
	.d2line		1153
.Llo559:
	diab.li		r6,3
#         ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;
	.d2line		1152
	stb		r0,atv_runLed_out@sdarx(r0)		# tmp=r0
	.d2line		1156
	diab.li		r5,4
# 
#         /* Entry 'IDLE': '<S41>:87' */
#         atv_state_out = 4U;
	stb		r6,42(r3)
	stb		r5,atv_state_out@sdarx(r0)
#         ATV_B.en_inv_rear_out = false;
	.d2line		1157
	stb		r0,173(r4)		# tmp=r0
#         ATV_B.en_inv_front_out = false;
	.d2line		1158
	sth		r0,174(r4)		# tmp=r0
	.d2line		1161
	b		.L4059
.L4062:
#         ATV_B.en_inv_gen_out = false;
#       }
#       break;
# 
#      case ATV_IN_HV_DEL:
#       /* During 'HV_DEL': '<S41>:96' */
#       if (ATV_DW.temporalCounter_i1_j >= 50U) {
	.d2line		1165
.Llo560:
	lbz		r0,47(r3)		# tmp=r0
.Llo561:
	cmpli		0,0,r0,50		# tmp=r0
	bc		1,0,.L4064	# lt
.Llo562:
	diab.li		r0,1		# tmp=r0
	.d2line		1170
.Llo563:
	diab.li		r6,5
#         /* Transition: '<S41>:97' */
#         ATV_DW.is_DRIVE_ENABLE = ATV_IN_DRIVE_ENABLED;
# 
#         /* Entry 'DRIVE_ENABLED': '<S41>:88' */
#         atv_state_out = 5U;
	.d2line		1165
	stb		r0,42(r3)		# tmp=r0
	lis		r4,ATV_B@ha
	.d2line		1172
	diab.li		r5,257
	e_add16i		r4,r4,ATV_B@l
#         ATV_B.en_inv_rear_out = true;
	stb		r6,atv_state_out@sdarx(r0)
#         ATV_B.en_inv_front_out = true;
	.d2line		1171
	stb		r0,173(r4)		# tmp=r0
	sth		r5,174(r4)
#         ATV_B.en_inv_gen_out = true;
#         atv_runLed_out = true;
	.d2line		1174
	stb		r0,atv_runLed_out@sdarx(r0)		# tmp=r0
	b		.L4059
.L4064:
#       } else {
#         if (ATV_DW.is_HV_CTRL != ATV_IN_HV_ON) {
	.d2line		1176
.Llo564:
	lbz		r0,43(r3)		# tmp=r0
.Llo565:
	se_cmpi		r0,4		# tmp=r0
	bc		1,2,.L4059	# eq
.Llo566:
	diab.li		r0,3		# tmp=r0
	.d2line		1181
.Llo567:
	diab.li		r5,4
#           /* Transition: '<S41>:86' */
#           ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;
# 
#           /* Entry 'IDLE': '<S41>:87' */
#           atv_state_out = 4U;
	.d2line		1176
	stb		r0,42(r3)		# tmp=r0
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
	stb		r5,atv_state_out@sdarx(r0)
#           ATV_B.en_inv_rear_out = false;
	.d2line		1182
	diab.li		r0,0		# tmp=r0
	stb		r0,173(r4)		# tmp=r0
#           ATV_B.en_inv_front_out = false;
	.d2line		1183
	sth		r0,174(r4)		# tmp=r0
	.d2line		1187
	b		.L4059
.L4066:
#           ATV_B.en_inv_gen_out = false;
#         }
#       }
#       break;
# 
#      default:
#       atv_state_out = 4U;
	.d2line		1190
.Llo568:
	diab.li		r0,4		# tmp=r0
.Llo569:
	lis		r4,ATV_B@ha
	stb		r0,atv_state_out@sdarx(r0)		# tmp=r0
	e_add16i		r4,r4,ATV_B@l
#       ATV_B.en_inv_rear_out = false;
	.d2line		1191
	diab.li		r0,0		# tmp=r0
	stb		r0,173(r4)		# tmp=r0
#       ATV_B.en_inv_front_out = false;
	.d2line		1192
	sth		r0,174(r4)		# tmp=r0
#       ATV_B.en_inv_gen_out = false;
# 
#       /* During 'IDLE': '<S41>:87' */
#       if (ATV_DW.is_HV_CTRL == ATV_IN_HV_ON) {
	.d2line		1196
	lbz		r4,43(r3)
	se_cmpi		r4,4
	bc		0,2,.L4059	# ne
#         /* Transition: '<S41>:95' */
#         ATV_DW.is_DRIVE_ENABLE = ATV_IN_HV_DEL;
	.d2line		1199
	stb		r0,47(r3)		# tmp=r0
	.d2line		1198
	diab.li		r0,2		# tmp=r0
#         ATV_DW.temporalCounter_i1_j = 0U;
	stb		r0,42(r3)		# tmp=r0
.L4059:
	.d2line		1199
.Llo570:
	lbz		r0,46(r3)		# tmp=r0
.Llo571:
	lis		r4,(ATV_B+123)@ha
	lbz		r4,(ATV_B+123)@l(r4)
#       }
#       break;
#     }
# 
#     /* During 'STARTTRIGGER': '<S41>:119' */
#     if (ATV_DW.is_STARTTRIGGER == ATV_IN_STARTTRIGGER_OFF) {
	.d2line		1205
	se_cmpi		r0,1		# tmp=r0
	bc		0,2,.L4070	# ne
#       /* During 'STARTTRIGGER_OFF': '<S41>:117' */
#       if (!ATV_B.LogicalOperator3) {
	.d2line		1207
.Llo572:
	se_cmpi		r4,0
	bc		0,2,.L4073	# ne
	diab.li		r4,2
	.d2line		1212
	diab.li		r0,1		# tmp=r0
#         /* Transition: '<S41>:114' */
#         ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_ON;
# 
#         /* Entry 'STARTTRIGGER_ON': '<S41>:118' */
#         ATV_DW.startBtnArmed = true;
	.d2line		1207
.Llo573:
	stb		r4,46(r3)
	stb		r0,73(r3)		# tmp=r0
	.d2line		1222
	blr
.L4070:
#       }
#     } else {
#       /* During 'STARTTRIGGER_ON': '<S41>:118' */
#       if (ATV_B.LogicalOperator3) {
	.d2line		1216
.Llo574:
	se_cmpi		r4,0
	bc		1,2,.L4073	# eq
	diab.li		r0,1		# tmp=r0
.Llo575:
	stb		r0,46(r3)		# tmp=r0
.L4073:
#         /* Transition: '<S41>:116' */
#         ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_OFF;
#       }
#     }
#   }
# }
	.d2line		1222
	.d2epilogue_begin
.Llo576:
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5448:
	.type		ATV_KEY_ON,@function
	.size		ATV_KEY_ON,.-ATV_KEY_ON
# Number of nodes = 828

# Allocations for ATV_KEY_ON
#	?a4		$$147
#	?a5		$$146
#	?a6		$$145
#	?a7		$$144
#	?a8		$$143
#	?a9		$$142
#	?a10		$$141
#	?a11		$$140
#	?a12		$$139
#	?a13		$$138
#	?a14		$$137
#	?a15		$$136
#	?a16		$$135
#	?a17		$$134
#	?a18		$$133
#	?a19		$$132
#	?a20		$$131
#	?a21		$$130
#	?a22		$$129
#	?a23		$$128
#	?a24		$$127
#	?a25		$$126
#	?a26		$$125
#	?a27		$$124
#	?a28		$$123
#	?a29		$$122
#	?a30		$$117
#	?a31		tmp
# static real_T ATV_Management(int16_T TInverterHi, int16_T TMotorHi, int16_T TgHi)
# {
	.align		1
	.section	.text_vle
        .d2line         1226
#$$ld
.L5455:

#$$bf	ATV_Management,interprocedural,nostackparams

# Regs written: r3,cr0
	.d2_cfa_start __cie
ATV_Management:
	.d2line		0
	.d2prologue_end
#   real_T PumpSt;
# 
#   /* Truth Table Function 'Management': '<S44>:92' */
#   /* Condition '#1': '<S44>:92:13' */
#   /* Condition '#2': '<S44>:92:17' */
#   /* Condition '#3': '<S44>:92:21' */
#   /* Condition '#4': '<S44>:92:25' */
#   /* Condition '#5': '<S44>:92:29' */
#   /* Condition '#6': '<S44>:92:33' */
#   if (TInverterHi == 1) {
	.d2line		1236
.Llo577:
	se_cmpi		r3,1		# TInverterHi=r3
	bc		0,2,.L4119	# ne
#     /* Decision 'D1': '<S44>:92:35' */
#     /* Action '1': '<S44>:92:51' */
#     PumpSt = 1.0;
	.d2line		1239
	e_lis		r3,16256		# TInverterHi=r3
	.d2line		1258
.Llo578:
	blr
.L4119:
#   } else if (TMotorHi == 1) {
	.d2line		1240
.Llo579:
	se_cmpi		r4,1		# TMotorHi=r4
	bc		0,2,.L4117	# ne
#     /* Decision 'D2': '<S44>:92:37' */
#     /* Action '1': '<S44>:92:51' */
#     PumpSt = 1.0;
	.d2line		1243
	e_lis		r3,16256		# TInverterHi=r3
	.d2line		1258
.Llo580:
	blr
.L4117:
#   } else if (TgHi == 1) {
	.d2line		1244
.Llo581:
	se_cmpi		r5,1		# TgHi=r5
	bc		0,2,.L4115	# ne
#     /* Decision 'D3': '<S44>:92:39' */
#     /* Action '1': '<S44>:92:51' */
#     PumpSt = 1.0;
	.d2line		1247
	e_lis		r3,16256		# TInverterHi=r3
	.d2line		1258
.Llo582:
	blr
.L4115:
#   } else if ((TInverterHi == 0) && (TMotorHi == 0) && (TgHi == 0)) {
	.d2line		1248
.Llo583:
	se_cmpi		r3,0		# TInverterHi=r3
	bc		0,2,.L4113	# ne
	se_cmpi		r4,0		# TMotorHi=r4
	bc		0,2,.L4113	# ne
	se_cmpi		r5,0		# TgHi=r5
	bc		0,2,.L4113	# ne
#     /* Decision 'D4': '<S44>:92:41' */
#     /* Action '2': '<S44>:92:57' */
#     PumpSt = 0.0;
	.d2line		1251
.Llo588:
	diab.li		r3,0		# PumpSt=r3
	.d2line		1258
.Llo584:
	blr
.L4113:
#   } else {
#     /* Action '1': '<S44>:92:51' */
#     PumpSt = 1.0;
	.d2line		1254
.Llo585:
	e_lis		r3,16256		# TInverterHi=r3
.L4120:
#   }
# 
#   return PumpSt;
# }
	.d2line		1258
	.d2epilogue_begin
.Llo586:
	blr
.Llo587:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5456:
	.type		ATV_Management,@function
	.size		ATV_Management,.-ATV_Management
# Number of nodes = 45

# Allocations for ATV_Management
#	?a4		TInverterHi
#	?a5		TMotorHi
#	?a6		TgHi
#	?a7		PumpSt
# static void ATV_GestioneIbrido(void)
# {
	.align		1
	.section	.text_vle
        .d2line         1262
#$$ld
.L5468:

#$$bf	ATV_GestioneIbrido,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,r7,cr0,cr1,ctr,spefscr
	.d2_cfa_start __cie
ATV_GestioneIbrido:
	.d2line		0
	.d2prologue_end
	.d2line		1268
	lis		r3,ATV_DW@ha
	e_add16i		r3,r3,ATV_DW@l
#   boolean_T guard1 = false;
# 
#   /* During 'GestioneIbrido': '<S72>:166' */
#   /* During 'IceSM': '<S72>:191' */
#   guard1 = false;
#   switch (ATV_DW.is_IceSM) {
	lbz		r6,51(r3)
	se_cmpli	r6,8
	se_slwi		r6,2
	e_add2is		r6,.L5471@ha
	bc		1,1,.L4163	# gt
	lwz		r7,.L5471@l(r6)
	mtspr		ctr,r7
	bcctr		20,0
.L5471:
#$$sl
	.long		.L4163
	.long		.L4128
	.long		.L4132
	.long		.L4134
	.long		.L4136
	.long		.L4138
	.long		.L4140
	.long		.L4146
	.long		.L4157
#$$se
.L4128:
#    case ATV_IN_AvviamentoIce:
#     atv_IceSM = 2U;
	.d2line		1270
	diab.li		r0,2
	stb		r0,atv_IceSM@sdarx(r0)
# 
#     /* During 'AvviamentoIce': '<S72>:275' */
#     if (ATV_DW.temporalCounter_i1 >= 300U) {
	.d2line		1273
	lhz		r0,36(r3)
	cmpli		0,0,r0,300
	bc		1,0,.L4130	# lt
	lis		r4,ATV_B@ha
	.d2line		1275
	diab.li		r0,0
#       /* Transition: '<S72>:278' */
#       ATV_B.FS1_out = false;
	.d2line		1273
	e_add16i		r4,r4,ATV_B@l
	.d2line		1276
	diab.li		r6,8
#       ATV_DW.is_IceSM = ATV_IN_TimeoutAvviamentoIce;
#       ATV_DW.temporalCounter_i1 = 0U;
	stb		r0,177(r4)
	.d2line		1281
	diab.li		r5,3
	.d2line		1277
	sth		r0,36(r3)
# 
#       /* Entry 'TimeoutAvviamentoIce': '<S72>:276' */
#       ATV_B.tHROTTLEGen_X1000_out = 0U;
	stb		r6,51(r3)
#       atv_IceSM = 3U;
	.d2line		1280
	sth		r0,72(r4)
	stb		r5,atv_IceSM@sdarx(r0)
	.d2line		1563
	blr
.L4130:
#     } else {
#       if (!atv_apu_req_in) {
	.d2line		1283
	lbz		r0,atv_apu_req_in@sdarx(r0)
	se_cmpi		r0,0
	bc		0,2,.L4169	# ne
	lis		r4,ATV_B@ha
	.d2line		1286
	diab.li		r5,0
#         /* Transition: '<S72>:332' */
#         ATV_B.FS1_out = false;
#         ATV_B.tHROTTLEGen_X1000_out = 0U;
	.d2line		1283
	e_add16i		r4,r4,ATV_B@l
	.d2line		1290
	diab.li		r0,5
	sth		r5,72(r4)
# 
#         /* Transition: '<S72>:337' */
#         /* Transition: '<S72>:338' */
#         ATV_DW.is_IceSM = ATV_IN_Inizializzazione;
# 
#         /* Entry 'Inizializzazione': '<S72>:279' */
#         ATV_DW.IceStartAttempCnt = 0.0;
	.d2line		1285
	stb		r5,177(r4)
	.d2line		1293
	stw		r5,0(r3)
	stb		r0,51(r3)
#         atv_IceOn = false;
	.d2line		1294
	stb		r5,atv_IceOn@sdarx(r0)
#         atv_IceKey_out = false;
	.d2line		1295
	stb		r5,atv_IceKey_out@sdarx(r0)
#         atv_IceShutdown_out = false;
	.d2line		1296
	stb		r5,atv_IceShutdown_out@sdarx(r0)
#         atv_IceFault = false;
	.d2line		1297
	stb		r5,atv_IceFault@sdarx(r0)
#         ATV_B.GenFwd_out = false;
	.d2line		1298
	stb		r5,176(r4)
#         atv_IceSM = 0U;
	.d2line		1299
	stb		r5,atv_IceSM@sdarx(r0)
	.d2line		1563
	blr
.L4132:
#       }
#     }
#     break;
# 
#    case ATV_IN_FuelPumpOff:
#     atv_IceKey_out = false;
	.d2line		1305
	diab.li		r0,0
	.d2line		1306
	diab.li		r4,10
#     atv_IceSM = 10U;
	stb		r0,atv_IceKey_out@sdarx(r0)
	stb		r4,atv_IceSM@sdarx(r0)
# 
#     /* During 'FuelPumpOff': '<S72>:323' */
#     if (ATV_DW.temporalCounter_i1 >= 50U) {
	.d2line		1309
	lhz		r4,36(r3)
	cmpli		0,0,r4,50
	bc		1,0,.L4169	# lt
#       /* Transition: '<S72>:324' */
#       /* Transition: '<S72>:282' */
#       ATV_DW.is_IceSM = ATV_IN_Inizializzazione;
# 
#       /* Entry 'Inizializzazione': '<S72>:279' */
#       ATV_DW.IceStartAttempCnt = 0.0;
	.d2line		1312
	diab.li		r4,5
	.d2line		1315
	stw		r0,0(r3)
	stb		r4,51(r3)
#       atv_IceOn = false;
	.d2line		1320
	lis		r4,(ATV_B+176)@ha
#       atv_IceKey_out = false;
	.d2line		1316
	stb		r0,atv_IceOn@sdarx(r0)
#       atv_IceShutdown_out = false;
	.d2line		1317
	stb		r0,atv_IceKey_out@sdarx(r0)
#       atv_IceFault = false;
	.d2line		1318
	stb		r0,atv_IceShutdown_out@sdarx(r0)
#       ATV_B.GenFwd_out = false;
	.d2line		1319
	stb		r0,atv_IceFault@sdarx(r0)
	.d2line		1321
	stb		r0,atv_IceSM@sdarx(r0)
#       atv_IceSM = 0U;
	.d2line		1320
	stb		r0,(ATV_B+176)@l(r4)
	.d2line		1563
	blr
.L4134:
	.d2line		1325
	diab.li		r0,1
#     }
#     break;
# 
#    case ATV_IN_FuelPumpOn:
#     atv_IceKey_out = true;
	.d2line		1326
	lis		r4,ATV_B@ha
	stb		r0,atv_IceKey_out@sdarx(r0)
	e_add16i		r4,r4,ATV_B@l
#     ATV_B.GenFwd_out = true;
	.d2line		1327
	stb		r0,176(r4)
#     atv_IceSM = 1U;
	.d2line		1328
	stb		r0,atv_IceSM@sdarx(r0)
	lhz		r5,36(r3)
# 
#     /* During 'FuelPumpOn': '<S72>:320' */
#     if (ATV_DW.temporalCounter_i1 >= 300U) {
	.d2line		1331
	cmpli		0,0,r5,300
	bc		1,0,.L4169	# lt
	.d2line		1333
	stb		r0,51(r3)
	.d2line		1331
	diab.li		r0,0
#       /* Transition: '<S72>:321' */
#       ATV_DW.is_IceSM = ATV_IN_AvviamentoIce;
	sth		r0,36(r3)
#       ATV_DW.temporalCounter_i1 = 0U;
# 
#       /* Entry 'AvviamentoIce': '<S72>:275' */
#       ATV_B.tHROTTLEGen_X1000_out = atvc_StartThrottleIce;
	.d2line		1337
	lis		r3,atvc_StartThrottleIce@ha
	.d2line		1338
	diab.li		r0,2
	lhz		r3,atvc_StartThrottleIce@l(r3)
#       atv_IceSM = 2U;
	sth		r3,72(r4)
	stb		r0,atv_IceSM@sdarx(r0)
	.d2line		1563
	blr
.L4136:
#     }
#     break;
# 
#    case ATV_IN_IceRestartDelay:
#     atv_IceSM = 9U;
	.d2line		1343
	diab.li		r0,9
	stb		r0,atv_IceSM@sdarx(r0)
# 
#     /* During 'IceRestartDelay': '<S72>:303' */
#     if (ATV_DW.temporalCounter_i1 >= 200U) {
	.d2line		1346
	lhz		r0,36(r3)
	cmpli		0,0,r0,200
	bc		1,0,.L4169	# lt
	lis		r4,ATV_B@ha
	diab.li		r0,1
	e_add16i		r4,r4,ATV_B@l
#       /* Transition: '<S72>:277' */
#       ATV_B.FS1_out = true;
	.d2line		1350
	diab.li		r6,0
#       ATV_DW.is_IceSM = ATV_IN_AvviamentoIce;
#       ATV_DW.temporalCounter_i1 = 0U;
	.d2line		1348
	stb		r0,177(r4)
	.d2line		1353
	lis		r5,atvc_StartThrottleIce@ha
	.d2line		1354
	diab.li		r7,2
# 
#       /* Entry 'AvviamentoIce': '<S72>:275' */
#       ATV_B.tHROTTLEGen_X1000_out = atvc_StartThrottleIce;
	sth		r6,36(r3)
	.d2line		1349
	stb		r0,51(r3)
	lhz		r0,atvc_StartThrottleIce@l(r5)
#       atv_IceSM = 2U;
	sth		r0,72(r4)
	stb		r7,atv_IceSM@sdarx(r0)
	.d2line		1563
	blr
.L4138:
	.d2line		1358
	diab.li		r0,0
#     }
#     break;
# 
#    case ATV_IN_Inizializzazione:
#     atv_IceKey_out = false;
	.d2line		1359
	lis		r4,ATV_B@ha
	stb		r0,atv_IceKey_out@sdarx(r0)
	e_add16i		r4,r4,ATV_B@l
#     ATV_B.GenFwd_out = false;
	.d2line		1360
	stb		r0,176(r4)
#     atv_IceSM = 0U;
	.d2line		1361
	stb		r0,atv_IceSM@sdarx(r0)
	.d2line		1364
	lbz		r6,74(r3)
# 
#     /* During 'Inizializzazione': '<S72>:279' */
#     if ((ATV_DW.ReqGen_prev != ATV_DW.ReqGen_start) && ATV_DW.ReqGen_start) {
	lbz		r5,75(r3)
	se_cmp		r6,r5
	bc		1,2,.L4169	# eq
	se_cmpi		r5,0
	bc		1,2,.L4169	# eq
#       /* Transition: '<S72>:273' */
#       ATV_DW.is_IceSM = ATV_IN_FuelPumpOn;
#       ATV_DW.temporalCounter_i1 = 0U;
	.d2line		1367
	sth		r0,36(r3)
	.d2line		1366
	diab.li		r0,3
	stb		r0,51(r3)
	diab.li		r0,1
# 
#       /* Entry 'FuelPumpOn': '<S72>:320' */
#       atv_IceKey_out = true;
	.d2line		1372
	diab.li		r3,257
#       ATV_B.FS1_out = true;
#       ATV_B.GenFwd_out = true;
	.d2line		1370
	stb		r0,atv_IceKey_out@sdarx(r0)
	sth		r3,176(r4)
#       atv_IceSM = 1U;
	.d2line		1373
	stb		r0,atv_IceSM@sdarx(r0)
	.d2line		1563
	blr
.L4140:
#     }
#     break;
# 
#    case ATV_IN_MonitoraggioIce:
#     atv_IceSM = 4U;
	.d2line		1381
	lbz		r0,atv_apu_req_in@sdarx(r0)
	.d2line		1378
	diab.li		r4,4
# 
#     /* During 'MonitoraggioIce': '<S72>:284' */
#     if (!atv_apu_req_in) {
	stb		r4,atv_IceSM@sdarx(r0)
	se_cmpi		r0,0
	bc		0,2,.L4144	# ne
#       /* Transition: '<S72>:333' */
#       /* Transition: '<S72>:335' */
#       /* Transition: '<S72>:330' */
#       /* Transition: '<S72>:337' */
#       /* Transition: '<S72>:338' */
#       ATV_DW.is_IceSM = ATV_IN_Inizializzazione;
# 
#       /* Entry 'Inizializzazione': '<S72>:279' */
#       ATV_DW.IceStartAttempCnt = 0.0;
	.d2line		1387
	diab.li		r4,5
	.d2line		1390
	diab.li		r0,0
	stb		r4,51(r3)
	stw		r0,0(r3)
#       atv_IceOn = false;
	.d2line		1395
	lis		r4,(ATV_B+176)@ha
#       atv_IceKey_out = false;
	.d2line		1391
	stb		r0,atv_IceOn@sdarx(r0)
#       atv_IceShutdown_out = false;
	.d2line		1392
	stb		r0,atv_IceKey_out@sdarx(r0)
#       atv_IceFault = false;
	.d2line		1393
	stb		r0,atv_IceShutdown_out@sdarx(r0)
#       ATV_B.GenFwd_out = false;
	.d2line		1394
	stb		r0,atv_IceFault@sdarx(r0)
	.d2line		1396
	stb		r0,atv_IceSM@sdarx(r0)
#       atv_IceSM = 0U;
	.d2line		1395
	stb		r0,(ATV_B+176)@l(r4)
	.d2line		1563
	blr
.L4144:
	.d2line		1396
	lis		r4,ATV_B@ha
	.d2line		1397
	lis		r5,atvc_IceOffTh@ha
#     } else if (ATV_B.RateTransition24 <= atvc_IceOffTh) {
	e_add16i		r4,r4,ATV_B@l
	lhz		r5,atvc_IceOffTh@l(r5)
	lha		r0,90(r4)
	se_cmp		r0,r5
	bc		1,1,.L4142	# gt
	diab.li		r5,0
#       /* Transition: '<S72>:288' */
#       ATV_DW.is_IceSM = ATV_IN_TimeoutAvviamentoIce;
#       ATV_DW.temporalCounter_i1 = 0U;
	.d2line		1399
	diab.li		r0,8
	.d2line		1400
	sth		r5,36(r3)
	stb		r0,51(r3)
# 
#       /* Entry 'TimeoutAvviamentoIce': '<S72>:276' */
#       ATV_B.tHROTTLEGen_X1000_out = 0U;
	.d2line		1403
	sth		r5,72(r4)
#       atv_IceSM = 3U;
	.d2line		1404
	diab.li		r0,3
	stb		r0,atv_IceSM@sdarx(r0)
	.d2line		1563
	blr
.L4142:
#     } else {
#       if (ATV_DW.temporalCounter_i1 >= 200U) {
	.d2line		1406
	lhz		r0,36(r3)
	cmpli		0,0,r0,200
	bc		1,0,.L4169	# lt
#         /* Transition: '<S72>:286' */
#         atv_IceOn = true;
	.d2line		1408
	diab.li		r0,1
	.d2line		1409
	diab.li		r6,7
#         ATV_DW.is_IceSM = ATV_IN_MonitoraggioStatoICE;
	stb		r0,atv_IceOn@sdarx(r0)
	.d2line		1413
	diab.li		r5,3
# 
#         /* Entry Internal 'MonitoraggioStatoICE': '<S72>:299' */
#         /* Transition: '<S72>:300' */
#         ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOn;
	.d2line		1416
	diab.li		r4,0
	stb		r6,51(r3)
# 
#         /* Entry 'iCEOn': '<S72>:298' */
#         atv_IceFault = false;
	.d2line		1417
	diab.li		r0,5
	stb		r5,52(r3)
#         atv_IceSM = 5U;
	stb		r4,atv_IceFault@sdarx(r0)
	stb		r0,atv_IceSM@sdarx(r0)
	.d2line		1563
	blr
.L4146:
#       }
#     }
#     break;
# 
#    case ATV_IN_MonitoraggioStatoICE:
#     /* During 'MonitoraggioStatoICE': '<S72>:299' */
#     if (!atv_apu_req_in) {
	.d2line		1424
	lbz		r0,atv_apu_req_in@sdarx(r0)
	se_cmpi		r0,0
	bc		0,2,.L4155	# ne
#       /* Transition: '<S72>:295' */
#       atv_IceShutdown_out = true;
	.d2line		1426
	diab.li		r0,1
	.d2line		1431
	diab.li		r5,0
# 
#       /* Exit Internal 'MonitoraggioStatoICE': '<S72>:299' */
#       ATV_DW.is_MonitoraggioStatoICE = ATV_IN_NO_ACTIVE_CHILD_f;
#       ATV_DW.is_IceSM = ATV_IN_FuelPumpOff;
#       ATV_DW.temporalCounter_i1 = 0U;
	stb		r0,atv_IceShutdown_out@sdarx(r0)
	.d2line		1430
	diab.li		r4,2
	sth		r5,36(r3)
	.d2line		1435
	diab.li		r0,10
	stb		r4,51(r3)
# 
#       /* Entry 'FuelPumpOff': '<S72>:323' */
#       atv_IceKey_out = false;
	.d2line		1429
	stb		r5,52(r3)
#       atv_IceSM = 10U;
	.d2line		1434
	stb		r5,atv_IceKey_out@sdarx(r0)
	stb		r0,atv_IceSM@sdarx(r0)
	.d2line		1563
	blr
.L4155:
#     } else {
#       switch (ATV_DW.is_MonitoraggioStatoICE) {
	.d2line		1437
	lbz		r6,52(r3)
	se_cmpi		r6,1
	bc		1,2,.L4148	# eq
	se_cmpi		r6,2
	bc		1,2,.L4152	# eq
	b		.L4153
.L4148:
#        case ATV_IN_DEB:
#         atv_IceSM = 6U;
	.d2line		1439
	diab.li		r0,6
	.d2line		1442
	lis		r5,(ATV_B+90)@ha
# 
#         /* During 'DEB': '<S72>:290' */
#         if (ATV_B.RateTransition24 > atvc_IceOnTh) {
	stb		r0,atv_IceSM@sdarx(r0)
	lis		r4,atvc_IceOnTh@ha
	lha		r0,(ATV_B+90)@l(r5)
	lhz		r4,atvc_IceOnTh@l(r4)
	se_cmp		r0,r4
	bc		0,1,.L4150	# le
#           /* Transition: '<S72>:297' */
#           ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOn;
	.d2line		1444
	diab.li		r0,3
	.d2line		1447
	diab.li		r4,0
# 
#           /* Entry 'iCEOn': '<S72>:298' */
#           atv_IceFault = false;
	stb		r0,52(r3)
	.d2line		1448
	diab.li		r0,5
#           atv_IceSM = 5U;
	stb		r4,atv_IceFault@sdarx(r0)
	stb		r0,atv_IceSM@sdarx(r0)
	.d2line		1563
	blr
.L4150:
#         } else {
#           if (ATV_DW.temporalCounter_i1 >= 100U) {
	.d2line		1450
	lhz		r0,36(r3)
	cmpli		0,0,r0,100
	bc		1,0,.L4169	# lt
#             /* Transition: '<S72>:304' */
#             ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOff;
	.d2line		1455
	diab.li		r0,0
	.d2line		1452
	diab.li		r4,2
# 
#             /* Entry 'iCEOff': '<S72>:302' */
#             atv_IceOn = false;
	stb		r4,52(r3)
	stb		r0,atv_IceOn@sdarx(r0)
	.d2line		1458
	diab.li		r4,7
#             atv_IceFault = true;
	stb		r4,atv_IceSM@sdarx(r0)
#             atv_IceShutdown_out = true;
	diab.li		r3,1
#             atv_IceSM = 7U;
	.d2line		1457
	stb		r3,atv_IceShutdown_out@sdarx(r0)
	.d2line		1456
	stb		r3,atv_IceFault@sdarx(r0)
	.d2line		1563
	blr
.L4152:
#           }
#         }
#         break;
# 
#        case ATV_IN_iCEOff:
#         atv_IceSM = 7U;
	.d2line		1464
	diab.li		r0,7
	stb		r0,atv_IceSM@sdarx(r0)
	.d2line		1563
	blr
.L4153:
# 
#         /* During 'iCEOff': '<S72>:302' */
#         break;
# 
#        default:
#         atv_IceSM = 5U;
	.d2line		1470
	diab.li		r0,5
	.d2line		1473
	lis		r5,(ATV_B+90)@ha
# 
#         /* During 'iCEOn': '<S72>:298' */
#         if (ATV_B.RateTransition24 <= atvc_IceOffTh) {
	stb		r0,atv_IceSM@sdarx(r0)
	lis		r4,atvc_IceOffTh@ha
	lha		r0,(ATV_B+90)@l(r5)
	lhz		r4,atvc_IceOffTh@l(r4)
	se_cmp		r0,r4
	bc		1,1,.L4169	# gt
#           /* Transition: '<S72>:301' */
#           ATV_DW.is_MonitoraggioStatoICE = ATV_IN_DEB;
#           ATV_DW.temporalCounter_i1 = 0U;
	.d2line		1476
	diab.li		r0,0
	.d2line		1475
	diab.li		r4,1
	sth		r0,36(r3)
	stb		r4,52(r3)
# 
#           /* Entry 'DEB': '<S72>:290' */
#           atv_IceSM = 6U;
	.d2line		1479
	diab.li		r0,6
	stb		r0,atv_IceSM@sdarx(r0)
	.d2line		1563
	blr
.L4157:
#         }
#         break;
#       }
#     }
#     break;
# 
#    case ATV_IN_TimeoutAvviamentoIce:
#     atv_IceSM = 3U;
	.d2line		1487
	diab.li		r0,3
	stb		r0,atv_IceSM@sdarx(r0)
# 
#     /* During 'TimeoutAvviamentoIce': '<S72>:276' */
#     if (ATV_DW.temporalCounter_i1 >= 200U) {
	.d2line		1490
	lhz		r0,36(r3)
	cmpli		0,0,r0,200
	bc		1,0,.L4161	# lt
	lwz		r0,0(r3)
#       /* Transition: '<S72>:285' */
#       ATV_DW.IceStartAttempCnt++;
	.d2line		1492
	e_lis		r5,16256
	.d2line		1493
	diab.li		r6,1
	.d2line		1496
	diab.li		r4,9
#       atv_IceShutdown_out = true;
	efsadd		r5,r0,r5
	stw		r5,0(r3)
# 
#       /* Transition: '<S72>:272' */
#       ATV_DW.is_IceSM = ATV_IN_Wait0RPM;
	.d2line		1499
	diab.li		r0,8
	stb		r6,atv_IceShutdown_out@sdarx(r0)
# 
#       /* Entry 'Wait0RPM': '<S72>:292' */
#       atv_IceSM = 8U;
	stb		r4,51(r3)
	stb		r0,atv_IceSM@sdarx(r0)
	.d2line		1563
	blr
.L4161:
	.d2line		1499
	lis		r4,ATV_B@ha
	.d2line		1500
	lis		r5,atvc_IceOnTh@ha
#     } else if (ATV_B.RateTransition24 > atvc_IceOnTh) {
	e_add16i		r4,r4,ATV_B@l
	lhz		r5,atvc_IceOnTh@l(r5)
	lha		r0,90(r4)
	se_cmp		r0,r5
	bc		0,1,.L4159	# le
#       /* Transition: '<S72>:283' */
#       ATV_DW.is_IceSM = ATV_IN_MonitoraggioIce;
#       ATV_DW.temporalCounter_i1 = 0U;
	.d2line		1503
	diab.li		r0,0
	.d2line		1502
	diab.li		r4,6
	sth		r0,36(r3)
	stb		r4,51(r3)
# 
#       /* Entry 'MonitoraggioIce': '<S72>:284' */
#       atv_IceSM = 4U;
	.d2line		1506
	diab.li		r0,4
	stb		r0,atv_IceSM@sdarx(r0)
	.d2line		1563
	blr
.L4159:
#     } else {
#       if (!atv_apu_req_in) {
	.d2line		1508
	lbz		r0,atv_apu_req_in@sdarx(r0)
	se_cmpi		r0,0
	bc		0,2,.L4169	# ne
#         /* Transition: '<S72>:328' */
#         /* Transition: '<S72>:330' */
#         /* Transition: '<S72>:337' */
#         /* Transition: '<S72>:338' */
#         ATV_DW.is_IceSM = ATV_IN_Inizializzazione;
# 
#         /* Entry 'Inizializzazione': '<S72>:279' */
#         ATV_DW.IceStartAttempCnt = 0.0;
	.d2line		1516
	diab.li		r5,0
	.d2line		1513
	diab.li		r0,5
	stw		r5,0(r3)
	stb		r0,51(r3)
#         atv_IceOn = false;
	.d2line		1517
	stb		r5,atv_IceOn@sdarx(r0)
#         atv_IceKey_out = false;
	.d2line		1518
	stb		r5,atv_IceKey_out@sdarx(r0)
#         atv_IceShutdown_out = false;
	.d2line		1519
	stb		r5,atv_IceShutdown_out@sdarx(r0)
#         atv_IceFault = false;
	.d2line		1520
	stb		r5,atv_IceFault@sdarx(r0)
#         ATV_B.GenFwd_out = false;
	.d2line		1521
	stb		r5,176(r4)
#         atv_IceSM = 0U;
	.d2line		1522
	stb		r5,atv_IceSM@sdarx(r0)
	.d2line		1563
	blr
.L4163:
#       }
#     }
#     break;
# 
#    default:
#     atv_IceSM = 8U;
	.d2line		1528
	diab.li		r0,8
	.d2line		1531
	lis		r4,(ATV_B+90)@ha
# 
#     /* During 'Wait0RPM': '<S72>:292' */
#     if (ATV_B.RateTransition24 < 10) {
	stb		r0,atv_IceSM@sdarx(r0)
	lha		r0,(ATV_B+90)@l(r4)
	se_cmpi		r0,10
	bc		0,0,.L4169	# ge
#       /* Transition: '<S72>:281' */
#       if (!atv_apu_req_in) {
	.d2line		1533
	lbz		r0,atv_apu_req_in@sdarx(r0)
	se_cmpi		r0,0
	bc		0,2,.L4166	# ne
#         /* Transition: '<S72>:309' */
#         atv_IceShutdown_out = true;
	.d2line		1535
	diab.li		r0,1
	stb		r0,atv_IceShutdown_out@sdarx(r0)
	b		.L4170
.L4166:
# 
#         /* Transition: '<S72>:311' */
#         guard1 = true;
#       } else if (ATV_DW.IceStartAttempCnt > atvc_IceStartRetry) {
	.d2line		1539
	lis		r4,atvc_IceStartRetry@ha
	lwz		r0,0(r3)
	lbz		r4,atvc_IceStartRetry@l(r4)
	efscfui		r4,r4
	efscmpgt		1,r0,r4
	bc		0,5,.L4164		# le
#         /* Transition: '<S72>:289' */
#         atv_IceFault = true;
	.d2line		1541
	diab.li		r0,1
	stb		r0,atv_IceFault@sdarx(r0)
	b		.L4170
.L4164:
#         guard1 = true;
#       } else {
#         /* Transition: '<S72>:296' */
#         ATV_DW.is_IceSM = ATV_IN_IceRestartDelay;
#         ATV_DW.temporalCounter_i1 = 0U;
	.d2line		1546
	diab.li		r0,0
	.d2line		1545
	diab.li		r4,4
	sth		r0,36(r3)
	stb		r4,51(r3)
# 
#         /* Entry 'IceRestartDelay': '<S72>:303' */
#         atv_IceSM = 9U;
	.d2line		1549
	diab.li		r0,9
	stb		r0,atv_IceSM@sdarx(r0)
	.d2line		1563
	blr
.L4170:
#       }
#     }
#     break;
#   }
# 
#   if (guard1) {
#     ATV_DW.is_IceSM = ATV_IN_FuelPumpOff;
#     ATV_DW.temporalCounter_i1 = 0U;
	.d2line		1556
	diab.li		r0,2
	.d2line		1557
	diab.li		r4,0
	stb		r0,51(r3)
	sth		r4,36(r3)
# 
#     /* Entry 'FuelPumpOff': '<S72>:323' */
#     atv_IceKey_out = false;
	.d2line		1561
	diab.li		r0,10
#     atv_IceSM = 10U;
	.d2line		1560
	stb		r4,atv_IceKey_out@sdarx(r0)
	stb		r0,atv_IceSM@sdarx(r0)
.L4169:
#   }
# }
	.d2line		1563
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5469:
	.type		ATV_GestioneIbrido,@function
	.size		ATV_GestioneIbrido,.-ATV_GestioneIbrido
# Number of nodes = 725

# Allocations for ATV_GestioneIbrido
#	?a4		$$170
#	?a5		$$169
#	?a6		$$168
#	?a7		$$167
#	?a8		$$166
#	?a9		$$165
#	?a10		$$164
#	?a11		$$163
#	?a12		$$162
#	?a13		$$161
#	?a14		$$160
#	?a15		$$159
#	?a16		$$158
#	?a17		$$157
#	?a18		$$156
#	?a19		$$155
#	?a20		$$154
#	?a21		$$153
#	?a22		$$152
#	?a23		$$151
#	?a24		$$150
#	?a25		$$149
#	?a26		$$148
#	not allocated	$$7
#	not allocated	guard1
# static void ATV_output0(void)          /* Sample time: [0.01s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         1567
#$$ld
.L5474:

#$$bf	ATV_output0,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ATV_output0:
	diab.li		r0,-592
	stwux		r1,r1,r0		
	.d2_cfa_def_cfa_offset	592
	diab.addi		r12,r1,548
	mfspr		r0,lr
	stmw		r21,0(r12)		# offset r1+548  0x224
	.d2_cfa_offset_list	21,31,1,1
	stw		r0,596(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#   real32_T rateLimiterRate;
#   boolean_T rtb_Compare;
#   uint8_T rtb_Switch_l;
#   uint8_T rtb_Gain_d;
#   int16_T rtb_MultiportSwitch;
#   boolean_T rtb_PumpACtrl;
#   real_T rtb_Product;
#   real_T rtb_Gain;
#   int64m_T tmp;
#   int64m_T tmp_0;
#   int64m_T tmp_1;
#   int64m_T tmp_2;
#   uint32_T tmp_3;
#   uint32_T tmp_4;
#   int96m_T tmp_5;
#   int64m_T tmp_6;
#   int64m_T tmp_7;
#   int64m_T tmp_8;
#   int64m_T tmp_9;
#   int96m_T tmp_a;
#   int64m_T tmp_b;
#   int96m_T tmp_c;
#   int64m_T tmp_d;
#   int96m_T tmp_e;
#   int64m_T tmp_f;
#   int32_T u0_tmp;
#   int32_T u0_tmp_0;
#   static int64m_T tmp_g = { { 0U, 0U } /* chunks */
#   };
# 
#   {                                    /* Sample time: [0.01s, 0.0s] */
#     rate_monotonic_scheduler();
	.d2line		1599
	bl		rate_monotonic_scheduler
#   }
# 
#   /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput' */
#   /* S-Function Block: <S7>/pai_BasicAnalogInput
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XD1, &adc, FALSE);
	.d2line		1609
	e_lis		r28,16544
	.d2line		1608
	diab.addi		r4,r1,48
	diab.li		r3,24
	diab.li		r5,0
	e_lis		r29,14720
#     ATV_B.pai_BasicAnalogInput = (adc * 5.0) / 4096.0;
	bl		pax_adc_input
	lis		r27,ATV_B@ha
	lha		r0,48(r1)
	.d2line		1613
	e_lis		r3,17530
	e_add16i		r27,r27,ATV_B@l
	efscfsi		r0,r0
	efsmul		r0,r0,r28
	efsmul		r0,r0,r29
#   }
# 
#   /* Gain: '<S7>/Gain' */
#   rtb_Product = floor(1000.0 * ATV_B.pai_BasicAnalogInput);
	stw		r0,0(r27)
	efsmul		r3,r0,r3
	bl		_f_ftod
	bl		floor
	bl		_d_dtof
.Llo866:
	mr		r31,r3		# rtb_Product=r31 rtb_Product=r3
#   if (rtIsNaN(rtb_Product) || rtIsInf(rtb_Product)) {
	.d2line		1614
	bl		rtIsNaN
.Llo867:
	e_andi.		r3,r3,255
	bc		0,2,.L4502	# ne
.Llo868:
	mr		r3,r31		# rtb_Product=r3 rtb_Product=r31
	bl		rtIsInf
	e_andi.		r3,r3,255
	bc		1,2,.L4197	# eq
.L4502:
#     rtb_Product = 0.0;
	.d2line		1615
	diab.li		r3,0		# rtb_Product=r3
.Llo615:
	b		.L4503
.L4197:
#   } else {
#     rtb_Product = fmod(rtb_Product, 4.294967296E+9);
	.d2line		1617
.Llo616:
	mr		r3,r31		# rtb_Product=r3 rtb_Product=r31
	bl		_f_ftod
	.d2line		1620
	diab.li		r31,0
.Llo869:
	e_lis		r5,16880
	diab.li		r6,0
	bl		fmod
	bl		_d_dtof
#   }
# 
#   atv_xd1_key_ain = rtb_Product < 0.0 ? -(int32_T)(uint32_T)-rtb_Product :
.Llo617:
	efscmplt		1,r3,r31		# rtb_Product=r3
	bc		0,5,.L4503		# ge
	efsneg		r0,r3		# rtb_Product=r3
	efsctuiz		r0,r0
	neg		r0,r0
	b		.L4504
.L4503:
	efsctuiz		r0,r3		# rtb_Product=r3
.L4504:
#     (int32_T)(uint32_T)rtb_Product;
# 
#   /* End of Gain: '<S7>/Gain' */
# 
#   /* RelationalOperator: '<S31>/Compare' incorporates:
#    *  Constant: '<S31>/Constant'
#    */
#   atv_key_signal = (atv_xd1_key_ain > 500);
.Llo618:
	stw		r0,atv_xd1_key_ain@sdarx(r0)
	.d2line		1636
	diab.addi		r4,r1,32
	diab.li		r3,169		# rtb_Product=r3
	diab.li		r5,0
	.d2line		1628
	lwz		r0,atv_xd1_key_ain@sdarx(r0)
	e_lis		r30,15395
# 
#   /* S-Function (pdx_digital_input): '<S7>/pdx_DigitalInput' */
#   /* S-Function Block: <S7>/pdx_DigitalInput
#    * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
#    */
#   {
#     uint8_T state;
#     (void) pdx_digital_input(PIO_DIN_ZA3, &state, FALSE);
	e_or2i		r30,55050
	.d2line		1654
	lis		r31,ATV_M@ha
	cmpi		0,0,r0,500
	e_add16i		r31,r31,ATV_M@l
	mfcr		r0
	rlwinm		r0,r0,2,31,31
	stb		r0,atv_key_signal@sdarx(r0)
#     put_debounce_by_time(state,
	bl		pdx_digital_input
	.d2line		1637
	lbz		r3,32(r1)		# rtb_Product=r3
	lis		r9,pdx_DigitalInput_detm_wrk_data@ha
	e_lis		r6,15692
	e_lis		r7,15820
	diab.addi		r8,r1,32
	mr		r4,r30
	diab.li		r5,0
	e_add16i		r9,r9,pdx_DigitalInput_detm_wrk_data@l
	e_or2i		r6,52429
	e_or2i		r7,52429
#                          0.01,
#                          0,
#                          0.05,
#                          0.1,
#                          &state,
#                          &pdx_DigitalInput_detm_wrk_data);
#     atv_za3_StartBtn_din = state;
	bl		put_debounce_by_time
	.d2line		1644
	lbz		r0,32(r1)
#   }
# 
#   /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput5' */
#   /* S-Function Block: <S7>/pai_BasicAnalogInput5
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XC1, &adc, FALSE);
	.d2line		1653
	diab.addi		r4,r1,50
	diab.li		r3,20		# rtb_Product=r3
	diab.li		r5,0
	stb		r0,atv_za3_StartBtn_din@sdarx(r0)
#     atv_xc1_raw_ain = (adc * 5.0) / 4096.0;
	bl		pax_adc_input
	lha		r0,50(r1)
	efscfsi		r0,r0
	efsmul		r0,r0,r28
	efsmul		r4,r0,r29
	stw		r4,atv_xc1_raw_ain@sdarx(r0)
#   }
# 
#   /* Relay: '<S7>/Relay2' incorporates:
#    *  Relay: '<S7>/Relay3'
#    */
#   rtb_Product = atvc_an_in_sel_th + atvc_an_in_sel_his;
	.d2line		1660
	lwz		r26,12(r31)		# rtb_Product=r26
.Llo633:
	lwz		r3,8(r31)		# rtb_Product=r3
.Llo619:
	efsadd		r26,r26,r3		# rtb_Product=r26 rtb_Product=r26 rtb_Product=r3
#   if (atv_xc1_raw_ain >= rtb_Product) {
	.d2line		1661
	efscmplt		1,r4,r26		# rtb_Product=r26
	bc		1,5,.L4200		# lt
#     ATV_DW.Relay2_Mode = true;
	.d2line		1662
.Llo620:
	diab.li		r0,1
	lis		r3,(ATV_DW+58)@ha		# rtb_Product=r3
.Llo621:
	stb		r0,(ATV_DW+58)@l(r3)		# rtb_Product=r3
	b		.L4201
.L4200:
#   } else {
#     if (atv_xc1_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
	.d2line		1664
.Llo622:
	lwz		r0,12(r31)
	lwz		r3,8(r31)		# rtb_Product=r3
.Llo623:
	efssub		r0,r0,r3		# rtb_Product=r3
	efscmpgt		1,r4,r0
	bc		1,5,.L4201		# gt
#       ATV_DW.Relay2_Mode = false;
	.d2line		1665
.Llo624:
	diab.li		r0,0
	lis		r3,(ATV_DW+58)@ha		# rtb_Product=r3
.Llo625:
	stb		r0,(ATV_DW+58)@l(r3)		# rtb_Product=r3
.L4201:
.Llo626:
	lis		r28,ATV_DW@ha
	.d2line		1679
	diab.addi		r4,r1,52
#     }
#   }
# 
#   atv_fwd_mode_in = !ATV_DW.Relay2_Mode;
	.d2line		1665
	e_add16i		r28,r28,ATV_DW@l
.Llo713:
	diab.li		r3,23		# rtb_Product=r3
	.d2line		1669
	lbz		r0,58(r28)
	diab.li		r5,0
# 
#   /* End of Relay: '<S7>/Relay2' */
# 
#   /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput6' */
#   /* S-Function Block: <S7>/pai_BasicAnalogInput6
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XC4, &adc, FALSE);
	.d2line		1680
	e_lis		r25,16544
	cntlzw		r0,r0
	diab.srwi		r0,5
	stb		r0,atv_fwd_mode_in@sdarx(r0)
#     atv_xc4_raw_ain = (adc * 5.0) / 4096.0;
	bl		pax_adc_input
	lha		r0,52(r1)
	efscfsi		r0,r0
	efsmul		r0,r0,r25
	efsmul		r0,r0,r29
	stw		r0,atv_xc4_raw_ain@sdarx(r0)
#   }
# 
#   /* Relay: '<S7>/Relay3' */
#   if (atv_xc4_raw_ain >= rtb_Product) {
	.d2line		1684
	efscmplt		1,r0,r26		# rtb_Product=r26
	bc		1,5,.L4203		# lt
#     ATV_DW.Relay3_Mode = true;
	.d2line		1685
.Llo634:
	diab.li		r0,1
	stb		r0,59(r28)
	b		.L4204
.L4203:
#   } else {
#     if (atv_xc4_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
	.d2line		1687
	lwz		r3,12(r31)		# rtb_Product=r3
.Llo627:
	lwz		r4,8(r31)
	efssub		r3,r3,r4		# rtb_Product=r3 rtb_Product=r3
	efscmpgt		1,r0,r3		# rtb_Product=r3
	bc		1,5,.L4204		# gt
#       ATV_DW.Relay3_Mode = false;
	.d2line		1688
.Llo628:
	diab.li		r0,0
	stb		r0,59(r28)
.L4204:
#     }
#   }
# 
#   atv_rwd_mode_in = !ATV_DW.Relay3_Mode;
	.d2line		1692
	lbz		r0,59(r28)
	.d2line		1700
	diab.addi		r4,r1,54
	diab.li		r3,14		# rtb_Product=r3
	diab.li		r5,0
# 
#   /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput4' */
#   /* S-Function Block: <S7>/pai_BasicAnalogInput4
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XA3, &adc, FALSE);
	cntlzw		r0,r0
	.d2line		1701
	e_lis		r26,16544		# rtb_Product=r26
.Llo635:
	diab.srwi		r0,5
	e_lis		r24,16102
	stb		r0,atv_rwd_mode_in@sdarx(r0)
#     atv_xa3_brake_pedal_raw_ain = (adc * 5.0) / 4096.0;
	e_or2i		r24,26214
	bl		pax_adc_input
	lha		r0,54(r1)
	efscfsi		r0,r0
	efsmul		r0,r0,r26		# rtb_Product=r26
	efsmul		r0,r0,r29
.Llo637:
	stw		r0,atv_xa3_brake_pedal_raw_ain@sdarx(r0)
#   }
# 
#   /* Switch: '<S15>/Switch' incorporates:
#    *  Constant: '<S17>/Lower Limit'
#    *  Constant: '<S17>/Upper Limit'
#    *  Logic: '<S17>/AND'
#    *  RelationalOperator: '<S17>/Lower Test'
#    *  RelationalOperator: '<S17>/Upper Test'
#    */
#   if ((0.45 <= atv_xa3_brake_pedal_raw_ain) && (atv_xa3_brake_pedal_raw_ain <=
	.d2line		1711
	efscmpgt		1,r24,r0
	bc		1,5,.L4212		# gt
.Llo636:
	e_lis		r3,16529		# rtb_Product=r3
.Llo629:
	e_or2i		r3,39322		# rtb_Product=r3
	efscmpgt		1,r0,r3		# rtb_Product=r3
	bc		1,5,.L4212		# gt
.Llo630:
	e_lis		r3,16528		# rtb_Product=r3
#        4.55)) {
#     /* Saturate: '<S15>/Saturation' */
#     if (atv_xa3_brake_pedal_raw_ain > 4.5) {
	.d2line		1714
.Llo631:
	efscmpgt		1,r0,r3		# rtb_Product=r3
	bc		0,5,.L4207		# le
#       rtb_Product = 4.5;
	.d2line		1715
.Llo638:
	b		.L4208
.L4207:
#     } else if (atv_xa3_brake_pedal_raw_ain < 0.5) {
	.d2line		1716
.Llo639:
	e_lis		r3,16128		# rtb_Product=r3
	efscmplt		1,r0,r3		# rtb_Product=r3
	bc		0,5,.L4205		# ge
#       rtb_Product = 0.5;
	.d2line		1717
	b		.L4208
.L4205:
#     } else {
#       rtb_Product = atv_xa3_brake_pedal_raw_ain;
	.d2line		1719
	mr		r3,r0		# rtb_Product=r3 rtb_Product=r0
.L4208:
#     }
# 
#     /* End of Saturate: '<S15>/Saturation' */
# 
#     /* Gain: '<S15>/Gain' incorporates:
#      *  Constant: '<S15>/Constant1'
#      *  Sum: '<S15>/Add'
#      */
#     rtb_Product = floor((rtb_Product - 0.5) * 750.0);
	.d2line		1728
	e_lis		r4,16128
	e_lis		r0,17467
	efssub		r3,r3,r4		# rtb_Product=r3 rtb_Product=r3
.Llo632:
	.diab.bseti		r0,16
	efsmul		r3,r3,r0		# rtb_Product=r3 rtb_Product=r3
.Llo640:
	bl		_f_ftod
	bl		floor
	bl		_d_dtof
.Llo683:
	mr		r26,r3		# rtb_Product=r26 rtb_Product=r3
#     if (rtIsNaN(rtb_Product)) {
	.d2line		1729
	bl		rtIsNaN
.Llo641:
	e_andi.		r3,r3,255		# rtb_Product=r3 rtb_Product=r3
.Llo642:
	bc		1,2,.L4209	# eq
#       atv_brake_pedalX1000 = 0U;
	.d2line		1730
.Llo684:
	diab.li		r0,0
	sth		r0,atv_brake_pedalX1000@sdarx(r0)
	b		.L4213
.L4209:
#     } else {
#       atv_brake_pedalX1000 = (uint16_T)fmod(rtb_Product, 65536.0);
	.d2line		1732
	mr		r3,r26		# rtb_Product=r3 rtb_Product=r26
	bl		_f_ftod
	e_lis		r5,16624
	diab.li		r6,0
	bl		fmod
	bl		_d_dtou
.Llo643:
	sth		r3,atv_brake_pedalX1000@sdarx(r0)		# rtb_Product=r3
#     }
# 
#     /* Saturate: '<S15>/Saturation1' */
#     if (atv_brake_pedalX1000 >= 1000) {
	.d2line		1736
	rlwinm		r3,r3,0,16,31		# rtb_Product=r3 rtb_Product=r3
	cmpi		0,0,r3,1000		# rtb_Product=r3
	bc		1,0,.L4213	# lt
#       /* Gain: '<S15>/Gain' */
#       atv_brake_pedalX1000 = 1000U;
	.d2line		1738
.Llo644:
	diab.li		r0,1000
	sth		r0,atv_brake_pedalX1000@sdarx(r0)
	b		.L4213
.L4212:
#     }
# 
#     /* End of Saturate: '<S15>/Saturation1' */
#   } else {
#     /* Gain: '<S15>/Gain' incorporates:
#      *  Constant: '<S15>/Constant'
#      */
#     atv_brake_pedalX1000 = 0U;
	.d2line		1746
	diab.li		r0,0
	sth		r0,atv_brake_pedalX1000@sdarx(r0)
.L4213:
	.d2line		1752
	lhz		r0,18(r31)
#   }
# 
#   /* End of Switch: '<S15>/Switch' */
# 
#   /* Relay: '<S7>/Relay1' */
#   if (atv_brake_pedalX1000 >= (uint16_T)((uint32_T)atvc_brakePedalOn +
	.d2line		1746
	lhz		r4,atv_brake_pedalX1000@sdarx(r0)
	lhz		r3,16(r31)		# rtb_Product=r3
.Llo645:
	se_add		r0,r3		# rtb_Product=r3
	rlwinm		r0,r0,0,16,31
	se_cmp		r0,r4
	bc		1,1,.L4215	# gt
#        atvc_brakePedalHis)) {
#     ATV_DW.Relay1_Mode = true;
	.d2line		1754
.Llo646:
	diab.li		r0,1
	stb		r0,60(r28)
	b		.L4216
.L4215:
#   } else {
#     if (atv_brake_pedalX1000 <= (uint16_T)((uint32_T)atvc_brakePedalOn -
	.d2line		1756
	lhz		r0,18(r31)
	lhz		r3,16(r31)		# rtb_Product=r3
.Llo647:
	subf		r3,r3,r0		# rtb_Product=r3 rtb_Product=r3
	rlwinm		r3,r3,0,16,31		# rtb_Product=r3 rtb_Product=r3
	se_cmp		r3,r4		# rtb_Product=r3
	bc		1,0,.L4216	# lt
#          atvc_brakePedalHis)) {
#       ATV_DW.Relay1_Mode = false;
	.d2line		1758
.Llo648:
	diab.li		r0,0
	stb		r0,60(r28)
.L4216:
#     }
#   }
# 
#   atv_brake_pedal_digital_in = ATV_DW.Relay1_Mode;
	.d2line		1762
	lbz		r3,60(r28)		# rtb_Product=r3
	.d2line		1772
.Llo649:
	lbz		r0,atv_za3_StartBtn_din@sdarx(r0)
# 
#   /* End of Relay: '<S7>/Relay1' */
# 
#   /* Logic: '<S9>/Logical Operator3' incorporates:
#    *  Logic: '<S7>/Logical Operator'
#    *  Logic: '<S9>/Logical Operator1'
#    *  Logic: '<S9>/Logical Operator2'
#    *  Logic: '<S9>/Logical Operator4'
#    */
#   ATV_B.LogicalOperator3 = ((!atv_za3_StartBtn_din) && ((!atv_fwd_mode_in) &&
	stb		r3,atv_brake_pedal_digital_in@sdarx(r0)		# rtb_Product=r3
	se_cmpi		r0,0
	bc		0,2,.L4507	# ne
	lbz		r0,atv_fwd_mode_in@sdarx(r0)
	se_cmpi		r0,0
	bc		0,2,.L4507	# ne
#     (!atv_rwd_mode_in)) && atv_brake_pedal_digital_in);
	.d2line		1773
	lbz		r0,atv_rwd_mode_in@sdarx(r0)
	se_cmpi		r0,0
	bc		0,2,.L4507	# ne
	e_andi.		r0,r3,255		# rtb_Product=r3
	bc		0,2,.L4505	# ne
.L4507:
	.d2line		1772
	diab.li		r0,0
	b		.L4506
.L4505:
.Llo650:
	diab.li		r0,1
.L4506:
	stb		r0,123(r27)
# 
#   /* RateTransition: '<Root>/Rate Transition4' */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		1776
	lwz		r3,0(r31)		# rtb_Product=r3
.Llo651:
	lbz		r0,431(r3)		# rtb_Product=r3
	se_cmpi		r0,0
	bc		1,2,.L4217	# eq
#     ATV_B.RateTransition4 = ATV_DW.RateTransition4_Buffer0;
	.d2line		1777
.Llo652:
	lbz		r0,61(r28)
	stb		r0,124(r27)
# 
#     /* RateTransition: '<Root>/Rate Transition5' */
#     ATV_B.RateTransition5 = ATV_DW.RateTransition5_Buffer0;
	.d2line		1780
	lbz		r0,62(r28)
	stb		r0,125(r27)
.L4217:
	lbz		r3,47(r28)		# rtb_Product=r3
#   }
# 
#   /* End of RateTransition: '<Root>/Rate Transition4' */
# 
#   /* Chart: '<S9>/VSM' */
#   if (ATV_DW.temporalCounter_i1_j < 127U) {
	.d2line		1786
.Llo653:
	cmpli		0,0,r3,127		# rtb_Product=r3
	bc		0,0,.L4218	# ge
#     ATV_DW.temporalCounter_i1_j++;
	.d2line		1787
	se_addi		r3,1		# rtb_Product=r3 rtb_Product=r3
	stb		r3,47(r28)		# rtb_Product=r3
.L4218:
.Llo654:
	lbz		r3,48(r28)		# rtb_Product=r3
#   }
# 
#   if (ATV_DW.temporalCounter_i2 < 63U) {
	.d2line		1790
.Llo655:
	cmpli		0,0,r3,63		# rtb_Product=r3
	bc		0,0,.L4219	# ge
#     ATV_DW.temporalCounter_i2++;
	.d2line		1791
	se_addi		r3,1		# rtb_Product=r3 rtb_Product=r3
	stb		r3,48(r28)		# rtb_Product=r3
.L4219:
.Llo656:
	lbz		r3,49(r28)		# rtb_Product=r3
#   }
# 
#   if (ATV_DW.temporalCounter_i3 < 255U) {
	.d2line		1794
.Llo657:
	cmpli		0,0,r3,255		# rtb_Product=r3
	bc		0,0,.L4220	# ge
#     ATV_DW.temporalCounter_i3++;
	.d2line		1795
	se_addi		r3,1		# rtb_Product=r3 rtb_Product=r3
	stb		r3,49(r28)		# rtb_Product=r3
.L4220:
#   }
# 
#   /* Gateway: loop_10ms/VSM */
#   /* During: loop_10ms/VSM */
#   if (ATV_DW.is_active_c3_ATV == 0U) {
	.d2line		1800
	lbz		r0,40(r28)
	se_cmpi		r0,0
	bc		0,2,.L4233	# ne
#     /* Entry: loop_10ms/VSM */
#     ATV_DW.is_active_c3_ATV = 1U;
	.d2line		1802
.Llo658:
	diab.li		r0,260
	.d2line		1809
	diab.li		r3,1		# rtb_Product=r3
# 
#     /* Entry Internal: loop_10ms/VSM */
#     /* Transition: '<S41>:4' */
#     ATV_DW.is_c3_ATV = ATV_IN_SLEEP;
# 
#     /* Entry 'SLEEP': '<S41>:9' */
#     atv_state_out = 1U;
.Llo659:
	sth		r0,40(r28)
	diab.li		r0,0
	stb		r3,atv_state_out@sdarx(r0)		# rtb_Product=r3
#     atv_sub_state_out = 0U;
	.d2line		1810
	stb		r0,atv_sub_state_out@sdarx(r0)
#     atv_wakelock_out = false;
	.d2line		1811
	stb		r0,atv_wakelock_out@sdarx(r0)
#     atv_en_dcdc_out = false;
	.d2line		1812
	stb		r0,atv_en_dcdc_out@sdarx(r0)
	b		.L4234
.L4233:
#   } else {
#     switch (ATV_DW.is_c3_ATV) {
	.d2line		1814
.Llo660:
	lbz		r6,41(r28)
	se_cmpi		r6,1
	bc		1,2,.L4222	# eq
	se_cmpi		r6,2
	bc		1,2,.L4226	# eq
	se_cmpi		r6,3
	bc		1,2,.L4227	# eq
	b		.L4231
.L4222:
#      case ATV_IN_INIT:
#       atv_state_out = 3U;
	.d2line		1821
	lbz		r3,atv_key_signal@sdarx(r0)		# rtb_Product=r3
	.d2line		1816
.Llo661:
	diab.li		r5,3
	diab.li		r0,1
#       atv_wakelock_out = true;
	stb		r5,atv_state_out@sdarx(r0)
#       atv_en_dcdc_out = true;
	.d2line		1817
	stb		r0,atv_wakelock_out@sdarx(r0)
# 
#       /* During 'INIT': '<S41>:5' */
#       if (!atv_key_signal) {
	se_cmpi		r3,0		# rtb_Product=r3
	.d2line		1818
	stb		r0,atv_en_dcdc_out@sdarx(r0)
	bc		0,2,.L4224	# ne
#         /* Transition: '<S41>:17' */
#         ATV_DW.is_c3_ATV = ATV_IN_PRE_SLEEP;
	.d2line		1823
.Llo662:
	diab.li		r0,0
	stb		r5,41(r28)
#         ATV_DW.temporalCounter_i1_j = 0U;
	.d2line		1824
	stb		r0,47(r28)
# 
#         /* Entry 'PRE_SLEEP': '<S41>:3' */
#         atv_state_out = 2U;
	.d2line		1827
	diab.li		r3,2		# rtb_Product=r3
.Llo663:
	stb		r3,atv_state_out@sdarx(r0)		# rtb_Product=r3
#         atv_sub_state_out = 0U;
	.d2line		1828
	stb		r0,atv_sub_state_out@sdarx(r0)
	b		.L4234
.L4224:
#       } else {
#         if (ATV_DW.temporalCounter_i1_j >= 100U) {
	.d2line		1830
.Llo664:
	lbz		r3,47(r28)		# rtb_Product=r3
.Llo665:
	cmpli		0,0,r3,100		# rtb_Product=r3
	bc		1,0,.L4234	# lt
#           /* Transition: '<S41>:22' */
#           ATV_DW.is_c3_ATV = ATV_IN_KEY_ON;
	.d2line		1843
.Llo666:
	diab.li		r3,0		# rtb_Product=r3
	.d2line		1838
.Llo667:
	stb		r5,43(r28)
# 
#           /* Entry 'KEY_ON': '<S41>:20' */
#           /* Entry Internal 'KEY_ON': '<S41>:20' */
#           /* Entry Internal 'HV_CTRL': '<S41>:34' */
#           /* Transition: '<S41>:82' */
#           ATV_DW.is_HV_CTRL = ATV_IN_HV_OFF;
	stb		r0,44(r28)
# 
#           /* Entry 'HV_OFF': '<S41>:52' */
#           /* Entry Internal 'CHG_CTRL': '<S41>:68' */
#           /* Transition: '<S41>:67' */
#           ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
	.d2line		1832
	diab.li		r4,2
	stb		r4,41(r28)
#           ATV_DW.temporalCounter_i3 = 0U;
	.d2line		1844
	stb		r3,49(r28)		# rtb_Product=r3
# 
#           /* Entry 'CHG_OFF': '<S41>:62' */
#           ATV_B.chg_ctrl_out = false;
#           ATV_B.hvm_ctrl_out = false;
	.d2line		1862
	diab.li		r4,4
# 
#           /* Entry Internal 'HEATER_CTRL': '<S41>:72' */
#           /* Transition: '<S41>:74' */
#           ATV_DW.is_HEATER_CTRL = ATV_IN_HEATER_OFF;
	.d2line		1848
	sth		r3,170(r27)		# rtb_Product=r3
# 
#           /* Entry 'HEATER_OFF': '<S41>:69' */
#           ATV_B.heater_ctrl_out = false;
	.d2line		1852
	stb		r0,45(r28)
# 
#           /* Entry Internal 'DRIVE_ENABLE': '<S41>:85' */
#           /* Transition: '<S41>:91' */
#           ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;
	.d2line		1855
	stb		r3,172(r27)		# rtb_Product=r3
# 
#           /* Entry 'IDLE': '<S41>:87' */
#           atv_state_out = 4U;
	.d2line		1859
	stb		r5,42(r28)
	.d2line		1862
	stb		r4,atv_state_out@sdarx(r0)
#           ATV_B.en_inv_rear_out = false;
	.d2line		1863
	stb		r3,173(r27)		# rtb_Product=r3
#           ATV_B.en_inv_front_out = false;
	.d2line		1864
	sth		r3,174(r27)		# rtb_Product=r3
#           ATV_B.en_inv_gen_out = false;
# 
#           /* Entry Internal 'STARTTRIGGER': '<S41>:119' */
#           /* Transition: '<S41>:115' */
#           ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_OFF;
	.d2line		1869
	stb		r0,46(r28)
	.d2line		1872
	b		.L4234
.L4226:
#         }
#       }
#       break;
# 
#      case ATV_IN_KEY_ON:
#       ATV_KEY_ON();
	.d2line		1875
.Llo668:
	bl		ATV_KEY_ON
	.d2line		1876
	b		.L4234
.L4227:
#       break;
# 
#      case ATV_IN_PRE_SLEEP:
#       atv_state_out = 2U;
	.d2line		1882
	lbz		r0,atv_key_signal@sdarx(r0)
	.d2line		1879
	diab.li		r3,2		# rtb_Product=r3
# 
#       /* During 'PRE_SLEEP': '<S41>:3' */
#       if (atv_key_signal) {
.Llo669:
	stb		r3,atv_state_out@sdarx(r0)		# rtb_Product=r3
	se_cmpi		r0,0
	bc		1,2,.L4229	# eq
	.d2line		1882
.Llo670:
	diab.li		r0,1
#         /* Transition: '<S41>:19' */
#         ATV_DW.is_c3_ATV = ATV_IN_INIT;
	.d2line		1884
	diab.li		r3,0		# rtb_Product=r3
.Llo671:
	stb		r0,41(r28)
#         ATV_DW.temporalCounter_i1_j = 0U;
	.d2line		1888
	diab.li		r4,3
# 
#         /* Entry 'INIT': '<S41>:5' */
#         atv_state_out = 3U;
	.d2line		1885
	stb		r3,47(r28)		# rtb_Product=r3
	stb		r4,atv_state_out@sdarx(r0)
#         atv_sub_state_out = 0U;
	.d2line		1889
	stb		r3,atv_sub_state_out@sdarx(r0)		# rtb_Product=r3
#         atv_wakelock_out = true;
	.d2line		1890
	stb		r0,atv_wakelock_out@sdarx(r0)
#         atv_en_dcdc_out = true;
	.d2line		1891
	stb		r0,atv_en_dcdc_out@sdarx(r0)
	b		.L4234
.L4229:
#       } else {
#         if (ATV_DW.temporalCounter_i1_j >= 25U) {
	.d2line		1893
.Llo672:
	lbz		r0,47(r28)
	se_cmpli	r0,25
	bc		1,0,.L4234	# lt
#           /* Transition: '<S41>:16' */
#           ATV_DW.is_c3_ATV = ATV_IN_SLEEP;
	.d2line		1895
	diab.li		r0,4
	.d2line		1898
	diab.li		r3,1		# rtb_Product=r3
# 
#           /* Entry 'SLEEP': '<S41>:9' */
#           atv_state_out = 1U;
.Llo673:
	stb		r0,41(r28)
	diab.li		r0,0
	stb		r3,atv_state_out@sdarx(r0)		# rtb_Product=r3
#           atv_sub_state_out = 0U;
	.d2line		1899
	stb		r0,atv_sub_state_out@sdarx(r0)
#           atv_wakelock_out = false;
	.d2line		1900
	stb		r0,atv_wakelock_out@sdarx(r0)
#           atv_en_dcdc_out = false;
	.d2line		1901
	stb		r0,atv_en_dcdc_out@sdarx(r0)
	.d2line		1904
	b		.L4234
.L4231:
#         }
#       }
#       break;
# 
#      default:
#       atv_state_out = 1U;
	.d2line		1912
.Llo674:
	lbz		r3,atv_key_signal@sdarx(r0)		# rtb_Product=r3
	.d2line		1907
.Llo675:
	diab.li		r4,1
	diab.li		r0,0
#       atv_wakelock_out = false;
	stb		r4,atv_state_out@sdarx(r0)
#       atv_en_dcdc_out = false;
	.d2line		1908
	stb		r0,atv_wakelock_out@sdarx(r0)
# 
#       /* During 'SLEEP': '<S41>:9' */
#       if (atv_key_signal) {
	se_cmpi		r3,0		# rtb_Product=r3
	.d2line		1909
	stb		r0,atv_en_dcdc_out@sdarx(r0)
	bc		1,2,.L4234	# eq
#         /* Transition: '<S41>:12' */
#         ATV_DW.is_c3_ATV = ATV_IN_INIT;
	.d2line		1914
.Llo676:
	stb		r4,41(r28)
#         ATV_DW.temporalCounter_i1_j = 0U;
	.d2line		1918
	diab.li		r3,3		# rtb_Product=r3
# 
#         /* Entry 'INIT': '<S41>:5' */
#         atv_state_out = 3U;
	.d2line		1915
.Llo677:
	stb		r0,47(r28)
	stb		r3,atv_state_out@sdarx(r0)		# rtb_Product=r3
#         atv_sub_state_out = 0U;
	.d2line		1919
	stb		r0,atv_sub_state_out@sdarx(r0)
#         atv_wakelock_out = true;
	.d2line		1920
	stb		r4,atv_wakelock_out@sdarx(r0)
#         atv_en_dcdc_out = true;
	.d2line		1921
	stb		r4,atv_en_dcdc_out@sdarx(r0)
.L4234:
#       }
#       break;
#     }
#   }
# 
#   /* End of Chart: '<S9>/VSM' */
# 
#   /* S-Function (psc_cpu_loading): '<S1>/psc_CpuLoading' */
#   /* S-Function Block: <S1>/psc_CpuLoading
#    * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   ATV_B.psc_CpuLoading = psc_get_cpu_loading();
	.d2line		1933
.Llo678:
	bl		psc_get_cpu_loading
.Llo679:
	rlwinm		r3,r3,0,24,31		# rtb_Product=r3 rtb_Product=r3
	efscfui		r7,r3		# rtb_Product=r3
	stw		r7,4(r27)
	.section	.text_vle
.L5674:
# 
#   /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage' */
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   {
#     U8 data[8];
#     BOOL retval;
#     F32 pcx_CANdb_TransmitMessage_in_port_buffer[6];
#     F32 * pcx_CANdb_TransmitMessage_in_port_ptr[6];
#     static const U8 pcx_CANdb_TransmitMessage_field_start_pos[6] = {
#       0, 8, 16, 24, 25, 26, };
# 
#     static const U8 pcx_CANdb_TransmitMessage_field_width[6] = {
#       8, 8, 8, 1, 1, 1, };
# 
#     static const U8 pcx_CANdb_TransmitMessage_field_is_signed[6] = {
#       0, 0, 0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage_field_valtype[6] = {
#       0, 0, 0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage_field_order[6] = {
#       1, 1, 1, 1, 1, 1, };
# 
#     static const F32 pcx_CANdb_TransmitMessage_field_eng_min[6] = {
#       0.0, 0.0, 0.0, 0.0, 0.0,
#       0.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage_field_eng_max[6] = {
#       255.0, 255.0, 255.0, 1.0, 1.0,
#       1.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage_field_scale[6] = {
#       1.0, 1.0, 1.0, 1.0, 1.0,
#       1.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage_field_offset[6] = {
#       0.0, 0.0, 0.0, 0.0, 0.0,
#       0.0, };
# 
#     if (pcx_CANdb_TransmitMessage_msg_handle != PCX_CONFIG_ERROR) {
	.d2line		1975
.Llo680:
	lha		r0,pcx_CANdb_TransmitMessage_msg_handle@sdarx(r0)
	e_cmph16i	r0,-1
	bc		1,2,.L4244	# eq
#       pcx_CANdb_TransmitMessage_in_port_buffer[0] = atv_state_out;
	.d2line		1976
	lbz		r5,atv_state_out@sdarx(r0)
	.d2line		1977
	diab.addi		r0,r1,488
	.d2line		1979
	lbz		r3,atv_sub_state_out@sdarx(r0)		# rtb_Product=r3
#       pcx_CANdb_TransmitMessage_in_port_ptr[0] =
	.d2line		1980
.Llo681:
	diab.addi		r4,r1,492
	efscfui		r6,r5
#         &pcx_CANdb_TransmitMessage_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage_in_port_buffer[1] = atv_sub_state_out;
	.d2line		1985
	lbz		r9,atv_wakelock_out@sdarx(r0)
	.d2line		1988
	lbz		r8,atv_en_dcdc_out@sdarx(r0)
	efscfui		r10,r3		# rtb_Product=r3
#       pcx_CANdb_TransmitMessage_in_port_ptr[1] =
	.d2line		1976
	stw		r6,488(r1)
	.d2line		1982
	stw		r7,496(r1)
#         &pcx_CANdb_TransmitMessage_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage_in_port_buffer[2] = ATV_B.psc_CpuLoading;
	.d2line		1983
	diab.addi		r5,r1,496
#       pcx_CANdb_TransmitMessage_in_port_ptr[2] =
	.d2line		1985
	efscfui		r9,r9
	.d2line		1991
	lbz		r3,atv_runLed_out@sdarx(r0)		# rtb_Product=r3
#         &pcx_CANdb_TransmitMessage_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage_in_port_buffer[3] = atv_wakelock_out;
	.d2line		1977
	stw		r0,512(r1)
	.d2line		1986
	diab.addi		r6,r1,500
	.d2line		1988
	efscfui		r8,r8
#       pcx_CANdb_TransmitMessage_in_port_ptr[3] =
	.d2line		1989
	diab.addi		r7,r1,504
	.d2line		1979
	stw		r10,492(r1)
#         &pcx_CANdb_TransmitMessage_in_port_buffer[3];
#       pcx_CANdb_TransmitMessage_in_port_buffer[4] = atv_en_dcdc_out;
	.d2line		1992
	diab.addi		r0,r1,508
	stw		r8,504(r1)
	.d2line		1985
	stw		r9,500(r1)
#       pcx_CANdb_TransmitMessage_in_port_ptr[4] =
	.d2line		1994
	lis		r10,pcx_CANdb_TransmitMessage_field_eng_min.4240@ha
	.d2line		1991
	efscfui		r8,r3		# rtb_Product=r3
#         &pcx_CANdb_TransmitMessage_in_port_buffer[4];
#       pcx_CANdb_TransmitMessage_in_port_buffer[5] = atv_runLed_out;
	.d2line		1983
	stw		r5,520(r1)
	.d2line		1986
	stw		r6,524(r1)
	lis		r9,pcx_CANdb_TransmitMessage_field_order.4239@ha
	lis		r3,pcx_CANdb_TransmitMessage_field_eng_max.4241@ha		# rtb_Product=r3
	stw		r8,508(r1)
#       pcx_CANdb_TransmitMessage_in_port_ptr[5] =
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage_field_eng_max.4241@l		# rtb_Product=r3 rtb_Product=r3
	.d2line		1989
	stw		r7,528(r1)
	.d2line		1994
	stw		r3,8(r1)		# rtb_Product=r3
#         &pcx_CANdb_TransmitMessage_in_port_buffer[5];
#       pcx_vdb_pack_msg((const F32 * const *)
	lis		r5,pcx_CANdb_TransmitMessage_field_start_pos.4235@ha
	.d2line		1980
	stw		r4,516(r1)
	lis		r6,pcx_CANdb_TransmitMessage_field_width.4236@ha
	lis		r3,pcx_CANdb_TransmitMessage_field_scale.4242@ha		# rtb_Product=r3
	.d2line		1992
	stw		r0,532(r1)
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage_field_scale.4242@l		# rtb_Product=r3 rtb_Product=r3
	lis		r8,pcx_CANdb_TransmitMessage_field_valtype.4238@ha
	stw		r3,12(r1)		# rtb_Product=r3
	lis		r7,pcx_CANdb_TransmitMessage_field_is_signed.4237@ha
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage_field_eng_min.4240@l
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage_field_order.4239@l
	lis		r3,pcx_CANdb_TransmitMessage_field_offset.4243@ha		# rtb_Product=r3
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage_field_start_pos.4235@l
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage_field_offset.4243@l		# rtb_Product=r3 rtb_Product=r3
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage_field_width.4236@l
	stw		r3,16(r1)		# rtb_Product=r3
	diab.addi		r4,r1,160
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage_field_valtype.4238@l
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage_field_is_signed.4237@l
	diab.li		r3,0		# rtb_Product=r3
	stw		r3,20(r1)		# rtb_Product=r3
	diab.li		r3,1		# rtb_Product=r3
	stw		r3,24(r1)		# rtb_Product=r3
	diab.li		r3,6		# rtb_Product=r3
	stw		r3,28(r1)		# rtb_Product=r3
	diab.addi		r3,r1,512		# rtb_Product=r3
.Llo682:
	bl		pcx_vdb_pack_msg
#                        &pcx_CANdb_TransmitMessage_in_port_ptr[0], &data[0],
#                        pcx_CANdb_TransmitMessage_field_start_pos,
#                        pcx_CANdb_TransmitMessage_field_width,
#                        pcx_CANdb_TransmitMessage_field_is_signed,
#                        pcx_CANdb_TransmitMessage_field_valtype,
#                        pcx_CANdb_TransmitMessage_field_order,
#                        pcx_CANdb_TransmitMessage_field_eng_min,
#                        pcx_CANdb_TransmitMessage_field_eng_max,
#                        pcx_CANdb_TransmitMessage_field_scale,
#                        pcx_CANdb_TransmitMessage_field_offset, 0, 1, 6);
# 
#       /* Do a transmit every time we are called, (CT2) */
#       retval = pcx_transmit(pcx_CANdb_TransmitMessage_msg_handle, data);
	.d2line		2007
	lha		r3,pcx_CANdb_TransmitMessage_msg_handle@sdarx(r0)		# rtb_Product=r3
	diab.addi		r4,r1,160
	bl		pcx_transmit
.Llo873:
	b		.L4245
.L4244:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		2010
.Llo874:
	diab.li		r3,0		# retval=r3
.L4245:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage = !retval;
	.d2line		2013
.Llo875:
	rlwinm		r0,r3,0,24,31		# retval=r3
	cntlzw		r0,r0
	diab.srwi		r0,5
	stb		r0,126(r27)
	.section	.text_vle
.L5675:
.Llo876:
	lwz		r25,0(r31)
#   }
# 
#   /* RateTransition: '<S1>/Rate Transition4' incorporates:
#    *  RateTransition: '<Root>/Rate Transition6'
#    */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		2019
	lbz		r0,431(r25)
	se_cmpi		r0,0
	bc		1,2,.L4246	# eq
#     ATV_B.RateTransition4_b = ATV_B.hvm_ctrl_out;
	.d2line		2023
	lbz		r0,169(r27)
	.d2line		2020
	lbz		r3,170(r27)		# retval=r3
# 
#     /* RateTransition: '<S1>/Rate Transition' */
#     ATV_B.RateTransition = ATV_B.hvp_ctrl_out;
.Llo877:
	stb		r0,128(r27)
	stb		r3,127(r27)		# retval=r3
# 
#     /* RateTransition: '<S1>/Rate Transition1' */
#     ATV_B.RateTransition1 = ATV_B.chg_ctrl_out;
	.d2line		2029
	lbz		r0,172(r27)
	.d2line		2026
	lbz		r3,171(r27)		# retval=r3
# 
#     /* RateTransition: '<S1>/Rate Transition2' */
#     ATV_B.RateTransition2 = ATV_B.heater_ctrl_out;
	stb		r0,130(r27)
	stb		r3,129(r27)		# retval=r3
#     ATV_B.RateTransition6 = ATV_DW.RateTransition6_Buffer0;
	.d2line		2030
	lha		r0,16(r28)
	sth		r0,76(r27)
.L4246:
#   }
# 
#   /* End of RateTransition: '<S1>/Rate Transition4' */
# 
#   /* Logic: '<S30>/Logical Operator' incorporates:
#    *  Constant: '<S30>/atvc_socLimitSave'
#    *  Constant: '<S9>/state_Const1'
#    *  RelationalOperator: '<S30>/Relational Operator12'
#    */
#   rtb_Compare = (80 <= atvc_socLimitSave);
	.d2line		2040
.Llo878:
	lis		r3,atvc_socLimitSave@ha		# retval=r3
.Llo879:
	lha		r4,76(r27)
	lbz		r0,atvc_socLimitSave@l(r3)		# rtb_Compare=r0 retval=r3
.Llo747:
	cmpi		0,0,r0,80		# rtb_Compare=r0
	.d2line		2043
	lbz		r0,55(r31)		# rtb_Compare=r0
	mfcr		r3		# retval=r3
	se_cmp		r0,r4		# rtb_Compare=r0
# 
#   /* Relay: '<S30>/Relay' */
#   if (ATV_B.RateTransition6 >= atvc_maxTempMotor) {
	rlwinm		r0,r3,1,31,31		# rtb_Compare=r0 retval=r3
	xori		r0,r0,1		# rtb_Compare=r0 rtb_Compare=r0
	bc		1,1,.L4248	# gt
#     ATV_DW.Relay_Mode = true;
	.d2line		2044
.Llo880:
	diab.li		r3,1		# retval=r3
.Llo881:
	stb		r3,63(r28)		# retval=r3
	b		.L4249
.L4248:
#   } else {
#     if (ATV_B.RateTransition6 <= atvc_minTempMotor) {
	.d2line		2046
.Llo882:
	lis		r3,atvc_minTempMotor@ha		# retval=r3
.Llo883:
	lbz		r3,atvc_minTempMotor@l(r3)		# retval=r3 retval=r3
	se_cmp		r3,r4		# retval=r3
	bc		1,0,.L4249	# lt
#       ATV_DW.Relay_Mode = false;
	.d2line		2047
.Llo884:
	diab.li		r3,0		# retval=r3
.Llo885:
	stb		r3,63(r28)		# retval=r3
.L4249:
#     }
#   }
# 
#   /* RateTransition: '<Root>/Rate Transition7' incorporates:
#    *  RateTransition: '<Root>/Rate Transition10'
#    */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		2054
.Llo886:
	lbz		r3,431(r25)		# retval=r3
.Llo887:
	se_cmpi		r3,0		# retval=r3
	bc		1,2,.L4250	# eq
#     ATV_B.RateTransition7 = ATV_DW.RateTransition7_Buffer0;
	.d2line		2055
.Llo888:
	lha		r3,18(r28)		# retval=r3
.Llo889:
	sth		r3,78(r27)		# retval=r3
#     ATV_B.RateTransition10 = ATV_DW.RateTransition10_Buffer0;
	.d2line		2056
	lha		r3,20(r28)		# retval=r3
	sth		r3,80(r27)		# retval=r3
.L4250:
.Llo890:
	lha		r4,78(r27)
#   }
# 
#   /* End of RateTransition: '<Root>/Rate Transition7' */
# 
#   /* Relay: '<S30>/Relay1' */
#   if (ATV_B.RateTransition7 >= atvc_maxTempInv) {
	.d2line		2062
	lbz		r3,51(r31)		# retval=r3
.Llo891:
	se_cmp		r3,r4		# retval=r3
	bc		1,1,.L4252	# gt
#     ATV_DW.Relay1_Mode_h = true;
	.d2line		2063
.Llo892:
	diab.li		r3,1		# retval=r3
.Llo893:
	stb		r3,64(r28)		# retval=r3
	b		.L4253
.L4252:
#   } else {
#     if (ATV_B.RateTransition7 <= atvc_minTempInv) {
	.d2line		2065
.Llo894:
	lis		r3,atvc_minTempInv@ha		# retval=r3
.Llo895:
	lbz		r3,atvc_minTempInv@l(r3)		# retval=r3 retval=r3
	se_cmp		r3,r4		# retval=r3
	bc		1,0,.L4253	# lt
#       ATV_DW.Relay1_Mode_h = false;
	.d2line		2066
.Llo896:
	diab.li		r3,0		# retval=r3
.Llo897:
	stb		r3,64(r28)		# retval=r3
.L4253:
.Llo898:
	lha		r4,80(r27)
#     }
#   }
# 
#   /* Relay: '<S30>/Relay2' */
#   if (ATV_B.RateTransition10 >= atvc_maxTempMotor) {
	.d2line		2071
	lbz		r3,55(r31)		# retval=r3
.Llo899:
	se_cmp		r3,r4		# retval=r3
	bc		1,1,.L4255	# gt
#     ATV_DW.Relay2_Mode_m = true;
	.d2line		2072
.Llo900:
	diab.li		r3,1		# retval=r3
.Llo901:
	stb		r3,65(r28)		# retval=r3
	b		.L4256
.L4255:
#   } else {
#     if (ATV_B.RateTransition10 <= atvc_minTempMotor) {
	.d2line		2074
.Llo902:
	lis		r3,atvc_minTempMotor@ha		# retval=r3
.Llo903:
	lbz		r3,atvc_minTempMotor@l(r3)		# retval=r3 retval=r3
	se_cmp		r3,r4		# retval=r3
	bc		1,0,.L4256	# lt
#       ATV_DW.Relay2_Mode_m = false;
	.d2line		2075
.Llo904:
	diab.li		r3,0		# retval=r3
.Llo905:
	stb		r3,65(r28)		# retval=r3
.L4256:
#     }
#   }
# 
#   /* RateTransition: '<Root>/Rate Transition8' incorporates:
#    *  RateTransition: '<Root>/Rate Transition9'
#    */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		2082
.Llo906:
	lbz		r3,431(r25)		# retval=r3
.Llo907:
	se_cmpi		r3,0		# retval=r3
	bc		1,2,.L4257	# eq
#     ATV_B.RateTransition8 = ATV_DW.RateTransition8_Buffer0;
	.d2line		2083
.Llo908:
	lha		r3,22(r28)		# retval=r3
.Llo909:
	sth		r3,82(r27)		# retval=r3
#     ATV_B.RateTransition9 = ATV_DW.RateTransition9_Buffer0;
	.d2line		2084
	lha		r3,24(r28)		# retval=r3
	sth		r3,84(r27)		# retval=r3
.L4257:
.Llo910:
	lha		r4,82(r27)
#   }
# 
#   /* End of RateTransition: '<Root>/Rate Transition8' */
# 
#   /* Relay: '<S30>/Relay3' */
#   if (ATV_B.RateTransition8 >= atvc_maxTempMotor) {
	.d2line		2090
	lbz		r3,55(r31)		# retval=r3
.Llo911:
	se_cmp		r3,r4		# retval=r3
	bc		1,1,.L4259	# gt
#     ATV_DW.Relay3_Mode_d = true;
	.d2line		2091
.Llo912:
	diab.li		r3,1		# retval=r3
.Llo913:
	stb		r3,66(r28)		# retval=r3
	b		.L4260
.L4259:
#   } else {
#     if (ATV_B.RateTransition8 <= atvc_minTempMotor) {
	.d2line		2093
.Llo914:
	lis		r3,atvc_minTempMotor@ha		# retval=r3
.Llo915:
	lbz		r3,atvc_minTempMotor@l(r3)		# retval=r3 retval=r3
	se_cmp		r3,r4		# retval=r3
	bc		1,0,.L4260	# lt
#       ATV_DW.Relay3_Mode_d = false;
	.d2line		2094
.Llo916:
	diab.li		r3,0		# retval=r3
.Llo917:
	stb		r3,66(r28)		# retval=r3
.L4260:
.Llo918:
	lha		r4,84(r27)
#     }
#   }
# 
#   /* Relay: '<S30>/Relay4' */
#   if (ATV_B.RateTransition9 >= atvc_maxTempInv) {
	.d2line		2099
	lbz		r3,51(r31)		# retval=r3
.Llo919:
	se_cmp		r3,r4		# retval=r3
	bc		1,1,.L4262	# gt
#     ATV_DW.Relay4_Mode = true;
	.d2line		2100
.Llo920:
	diab.li		r3,1		# retval=r3
.Llo921:
	stb		r3,67(r28)		# retval=r3
	b		.L4263
.L4262:
#   } else {
#     if (ATV_B.RateTransition9 <= atvc_minTempInv) {
	.d2line		2102
.Llo922:
	lis		r3,atvc_minTempInv@ha		# retval=r3
.Llo923:
	lbz		r3,atvc_minTempInv@l(r3)		# retval=r3 retval=r3
	se_cmp		r3,r4		# retval=r3
	bc		1,0,.L4263	# lt
#       ATV_DW.Relay4_Mode = false;
	.d2line		2103
.Llo924:
	diab.li		r3,0		# retval=r3
.Llo925:
	stb		r3,67(r28)		# retval=r3
.L4263:
#     }
#   }
# 
#   /* RateTransition: '<Root>/Rate Transition11' */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		2108
.Llo926:
	lbz		r3,431(r25)		# retval=r3
.Llo927:
	se_cmpi		r3,0		# retval=r3
	bc		1,2,.L4264	# eq
#     ATV_B.RateTransition11 = ATV_DW.RateTransition11_Buffer0;
	.d2line		2109
.Llo928:
	lha		r3,26(r28)		# retval=r3
.Llo929:
	sth		r3,86(r27)		# retval=r3
.L4264:
.Llo930:
	lha		r4,86(r27)
#   }
# 
#   /* End of RateTransition: '<Root>/Rate Transition11' */
# 
#   /* Relay: '<S30>/Relay5' */
#   if (ATV_B.RateTransition11 >= atvc_maxTempInv) {
	.d2line		2115
	lbz		r3,51(r31)		# retval=r3
.Llo931:
	se_cmp		r3,r4		# retval=r3
	bc		1,1,.L4266	# gt
#     ATV_DW.Relay5_Mode = true;
	.d2line		2116
.Llo932:
	diab.li		r3,1		# retval=r3
.Llo933:
	stb		r3,68(r28)		# retval=r3
	b		.L4267
.L4266:
#   } else {
#     if (ATV_B.RateTransition11 <= atvc_minTempInv) {
	.d2line		2118
.Llo934:
	lis		r3,atvc_minTempInv@ha		# retval=r3
.Llo935:
	lbz		r3,atvc_minTempInv@l(r3)		# retval=r3 retval=r3
	se_cmp		r3,r4		# retval=r3
	bc		1,0,.L4267	# lt
#       ATV_DW.Relay5_Mode = false;
	.d2line		2119
.Llo936:
	diab.li		r3,0		# retval=r3
.Llo937:
	stb		r3,68(r28)		# retval=r3
.L4267:
.Llo938:
	lhz		r3,38(r28)		# retval=r3
#     }
#   }
# 
#   /* Chart: '<S42>/PUMP LOGIC' incorporates:
#    *  Relay: '<S30>/Relay'
#    *  Relay: '<S30>/Relay1'
#    *  Relay: '<S30>/Relay2'
#    *  Relay: '<S30>/Relay3'
#    *  Relay: '<S30>/Relay4'
#    *  Relay: '<S30>/Relay5'
#    */
#   if (ATV_DW.temporalCounter_i1_f < 65535U) {
	.d2line		2131
.Llo939:
	cmpli		0,0,r3,65535		# retval=r3
	bc		0,0,.L4268	# ge
#     ATV_DW.temporalCounter_i1_f++;
	.d2line		2132
	se_addi		r3,1		# retval=r3 retval=r3
	sth		r3,38(r28)		# retval=r3
.L4268:
#   }
# 
#   /* Gateway: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
#   /* During: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
#   if (ATV_DW.is_active_c5_ATV == 0U) {
	.d2line		2137
.Llo940:
	lbz		r3,55(r28)		# retval=r3
.Llo941:
	se_cmpi		r3,0		# retval=r3
	bc		0,2,.L4289	# ne
	.d2line		2139
.Llo942:
	diab.li		r3,1		# retval=r3
#     /* Entry: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
#     ATV_DW.is_active_c5_ATV = 1U;
# 
#     /* Entry Internal: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
#     /* Entry 'PumpALogic': '<S44>:47' */
#     ATV_DW.PumpStA = 0.0;
# 
#     /* Entry Internal 'PumpALogic': '<S44>:47' */
#     /* Transition: '<S44>:56' */
#     ATV_DW.is_PumpALogic = ATV_IN_Off;
# 
#     /* Entry 'Off': '<S44>:63' */
#     rtb_PumpACtrl = false;
# 
#     /* Entry 'PumpBLogic': '<S44>:14' */
#     ATV_DW.PumpStB = 0.0;
	.d2line		2137
.Llo943:
	diab.li		r7,0		# rtb_PumpACtrl=r7
.Llo844:
	stb		r3,55(r28)		# retval=r3
# 
#     /* Entry Internal 'PumpBLogic': '<S44>:14' */
#     /* Transition: '<S44>:27' */
#     ATV_DW.is_PumpBLogic = ATV_IN_Off;
#     ATV_DW.temporalCounter_i1_f = 0U;
	.d2line		2153
	stw		r7,4(r28)		# rtb_PumpACtrl=r7
	.d2line		2147
	diab.li		r3,257		# retval=r3
	.d2line		2143
	stw		r7,8(r28)		# rtb_PumpACtrl=r7
	.d2line		2158
	sth		r7,38(r28)		# rtb_PumpACtrl=r7
	sth		r3,56(r28)		# retval=r3
# 
#     /* Entry 'Off': '<S44>:24' */
#     atv_dbg_pumpB_out = false;
	.d2line		2161
	stb		r7,atv_dbg_pumpB_out@sdarx(r0)		# rtb_PumpACtrl=r7
	.d2line		2150
	b		.L4290
.L4289:
.Llo845:
	lbz		r3,56(r28)		# retval=r3
.Llo944:
	lwz		r4,8(r28)
#   } else {
#     /* During 'PumpALogic': '<S44>:47' */
#     if (ATV_DW.is_PumpALogic == ATV_IN_Off) {
	.d2line		2164
	se_cmpi		r3,1		# retval=r3
	bc		0,2,.L4273	# ne
#       rtb_PumpACtrl = false;
# 
#       /* During 'Off': '<S44>:63' */
#       if (ATV_DW.PumpStA == 1.0) {
	.d2line		2168
.Llo945:
	e_lis		r3,16256		# retval=r3
.Llo946:
	efscmpeq		1,r4,r3		# retval=r3
	bc		0,5,.L4269		# ne
.Llo947:
	diab.li		r3,2		# retval=r3
	.d2line		2173
.Llo948:
	diab.li		r7,1		# rtb_PumpACtrl=r7
#         /* Transition: '<S44>:116' */
#         ATV_DW.is_PumpALogic = ATV_IN_Run;
# 
#         /* Entry 'Run': '<S44>:54' */
#         rtb_PumpACtrl = true;
	.d2line		2168
.Llo846:
	stb		r3,56(r28)		# retval=r3
	b		.L4274
.L4269:
#       } else {
#         ATV_DW.PumpStA = ATV_Management((int16_T)ATV_DW.Relay1_Mode_h, (int16_T)
	.d2line		2175
.Llo847:
	lbz		r4,63(r28)
	.d2line		2165
	diab.li		r7,0		# rtb_PumpACtrl=r7
.Llo848:
	lbz		r3,64(r28)		# retval=r3
	lbz		r5,65(r28)
	bl		ATV_Management
.Llo949:
	stw		r3,8(r28)		# retval=r3
	b		.L4274
.L4273:
#           ATV_DW.Relay_Mode, (int16_T)ATV_DW.Relay2_Mode_m);
#       }
#     } else {
#       rtb_PumpACtrl = true;
# 
#       /* During 'Run': '<S44>:54' */
#       if (ATV_DW.PumpStA == 0.0) {
	.d2line		2182
.Llo849:
	diab.li		r7,0
.Llo850:
	efscmpeq		1,r4,r7
	bc		0,5,.L4271		# ne
	diab.li		r3,1		# retval=r3
#         /* Transition: '<S44>:62' */
#         ATV_DW.is_PumpALogic = ATV_IN_Off;
# 
#         /* Entry 'Off': '<S44>:63' */
#         rtb_PumpACtrl = false;
.Llo950:
	stb		r3,56(r28)		# retval=r3
	.d2line		2187
	b		.L4274
.L4271:
#       } else {
#         ATV_DW.PumpStA = ATV_Management((int16_T)ATV_DW.Relay1_Mode_h, (int16_T)
	.d2line		2189
.Llo951:
	lbz		r4,63(r28)
	.d2line		2179
	diab.li		r7,1		# rtb_PumpACtrl=r7
	lbz		r3,64(r28)		# retval=r3
	lbz		r5,65(r28)
	bl		ATV_Management
.Llo952:
	stw		r3,8(r28)		# retval=r3
.L4274:
#           ATV_DW.Relay_Mode, (int16_T)ATV_DW.Relay2_Mode_m);
#       }
#     }
# 
#     /* During 'PumpBLogic': '<S44>:14' */
#     switch (ATV_DW.is_PumpBLogic) {
	.d2line		2195
.Llo953:
	lbz		r6,57(r28)
	se_cmpi		r6,1
	bc		1,2,.L4276	# eq
	se_cmpi		r6,2
	bc		1,2,.L4281	# eq
	b		.L4284
.L4276:
#      case ATV_IN_Off:
#       atv_dbg_pumpB_out = false;
	.d2line		2197
	diab.li		r5,0
	.d2line		2200
	e_lis		r4,16256
# 
#       /* During 'Off': '<S44>:24' */
#       if (ATV_DW.PumpStB == 1.0) {
	stb		r5,atv_dbg_pumpB_out@sdarx(r0)
	lwz		r3,4(r28)		# retval=r3
.Llo954:
	efscmpeq		1,r3,r4		# retval=r3
	bc		0,5,.L4279		# ne
#         /* Transition: '<S44>:29' */
#         ATV_DW.is_PumpBLogic = ATV_IN_Run;
	.d2line		2202
.Llo955:
	diab.li		r4,2
	.d2line		2205
	diab.li		r3,1		# retval=r3
# 
#         /* Entry 'Run': '<S44>:28' */
#         atv_dbg_pumpB_out = true;
.Llo956:
	stb		r4,57(r28)
	stb		r3,atv_dbg_pumpB_out@sdarx(r0)		# retval=r3
	b		.L4290
.L4279:
.Llo957:
	lhz		r3,38(r28)		# retval=r3
#       } else if (ATV_DW.temporalCounter_i1_f >= 50000U) {
	.d2line		2206
.Llo958:
	cmpli		0,0,r3,50000		# retval=r3
	bc		1,0,.L4277	# lt
	.d2line		2208
.Llo959:
	diab.li		r3,3		# retval=r3
#         /* Transition: '<S44>:32' */
#         ATV_DW.is_PumpBLogic = ATV_IN_Run60sec;
	.d2line		2206
.Llo960:
	sth		r5,38(r28)
	stb		r3,57(r28)		# retval=r3
#         ATV_DW.temporalCounter_i1_f = 0U;
# 
#         /* Entry 'Run60sec': '<S44>:22' */
#         atv_dbg_pumpB_out = true;
	.d2line		2212
	diab.li		r3,1		# retval=r3
	stb		r3,atv_dbg_pumpB_out@sdarx(r0)		# retval=r3
	b		.L4290
.L4277:
#       } else {
#         ATV_DW.PumpStB = ATV_Management((int16_T)ATV_DW.Relay4_Mode, (int16_T)
	.d2line		2214
.Llo961:
	lbz		r4,66(r28)
	lbz		r3,67(r28)		# retval=r3
	lbz		r5,68(r28)
	bl		ATV_Management
.Llo962:
	stw		r3,4(r28)		# retval=r3
	.d2line		2217
	b		.L4290
.L4281:
#           ATV_DW.Relay3_Mode_d, (int16_T)ATV_DW.Relay5_Mode);
#       }
#       break;
# 
#      case ATV_IN_Run:
#       atv_dbg_pumpB_out = true;
	.d2line		2220
.Llo963:
	diab.li		r4,1
	.d2line		2223
	diab.li		r5,0
# 
#       /* During 'Run': '<S44>:28' */
#       if (ATV_DW.PumpStB == 0.0) {
	stb		r4,atv_dbg_pumpB_out@sdarx(r0)
	lwz		r3,4(r28)		# retval=r3
.Llo964:
	efscmpeq		1,r3,r5		# retval=r3
	bc		0,5,.L4282		# ne
#         /* Transition: '<S44>:25' */
#         ATV_DW.is_PumpBLogic = ATV_IN_Off;
#         ATV_DW.temporalCounter_i1_f = 0U;
	.d2line		2226
.Llo965:
	sth		r5,38(r28)
	.d2line		2225
	stb		r4,57(r28)
# 
#         /* Entry 'Off': '<S44>:24' */
#         atv_dbg_pumpB_out = false;
	.d2line		2229
	stb		r5,atv_dbg_pumpB_out@sdarx(r0)
	b		.L4290
.L4282:
#       } else {
#         ATV_DW.PumpStB = ATV_Management((int16_T)ATV_DW.Relay4_Mode, (int16_T)
	.d2line		2231
	lbz		r4,66(r28)
	lbz		r3,67(r28)		# retval=r3
	lbz		r5,68(r28)
	bl		ATV_Management
.Llo966:
	stw		r3,4(r28)		# retval=r3
	.d2line		2234
	b		.L4290
.L4284:
#           ATV_DW.Relay3_Mode_d, (int16_T)ATV_DW.Relay5_Mode);
#       }
#       break;
# 
#      default:
#       atv_dbg_pumpB_out = true;
	.d2line		2237
.Llo967:
	diab.li		r5,1
	.d2line		2240
	e_lis		r4,16256
# 
#       /* During 'Run60sec': '<S44>:22' */
#       if (ATV_DW.PumpStB == 1.0) {
	stb		r5,atv_dbg_pumpB_out@sdarx(r0)
	lwz		r3,4(r28)		# retval=r3
.Llo968:
	efscmpeq		1,r3,r4		# retval=r3
	bc		0,5,.L4287		# ne
#         /* Transition: '<S44>:31' */
#         /* Transition: '<S44>:34' */
#         ATV_DW.is_PumpBLogic = ATV_IN_Run;
	.d2line		2243
.Llo969:
	diab.li		r3,2		# retval=r3
.Llo970:
	stb		r3,57(r28)		# retval=r3
# 
#         /* Entry 'Run': '<S44>:28' */
#         atv_dbg_pumpB_out = true;
	.d2line		2246
	stb		r5,atv_dbg_pumpB_out@sdarx(r0)
	b		.L4290
.L4287:
.Llo971:
	lhz		r3,38(r28)		# retval=r3
#       } else if (ATV_DW.temporalCounter_i1_f >= 6000U) {
	.d2line		2247
.Llo972:
	cmpli		0,0,r3,6000		# retval=r3
	bc		1,0,.L4285	# lt
.Llo973:
	diab.li		r3,0		# retval=r3
	.d2line		2249
.Llo974:
	stb		r5,57(r28)
#         /* Transition: '<S44>:26' */
#         ATV_DW.is_PumpBLogic = ATV_IN_Off;
	.d2line		2247
	sth		r3,38(r28)		# retval=r3
#         ATV_DW.temporalCounter_i1_f = 0U;
# 
#         /* Entry 'Off': '<S44>:24' */
#         atv_dbg_pumpB_out = false;
	.d2line		2253
	stb		r3,atv_dbg_pumpB_out@sdarx(r0)		# retval=r3
	b		.L4290
.L4285:
#       } else {
#         ATV_DW.PumpStB = ATV_Management((int16_T)ATV_DW.Relay4_Mode, (int16_T)
	.d2line		2255
.Llo975:
	lbz		r4,66(r28)
	lbz		r3,67(r28)		# retval=r3
	lbz		r5,68(r28)
	bl		ATV_Management
.Llo976:
	stw		r3,4(r28)		# retval=r3
.L4290:
#           ATV_DW.Relay3_Mode_d, (int16_T)ATV_DW.Relay5_Mode);
#       }
#       break;
#     }
#   }
# 
#   /* End of Chart: '<S42>/PUMP LOGIC' */
# 
#   /* Switch: '<S42>/Switch' */
#   ATV_B.Switch = ((!rtb_Compare) && rtb_PumpACtrl);
	.d2line		2265
.Llo977:
	se_cmpi		r0,0		# rtb_Compare=r0
	bc		0,2,.L5032	# ne
	se_cmpi		r7,0		# rtb_PumpACtrl=r7
	bc		0,2,.L4508	# ne
.L5032:
	diab.li		r3,0		# retval=r3
.Llo978:
	b		.L4509
.L4508:
.Llo851:
	diab.li		r3,1		# retval=r3
.L4509:
.Llo979:
	stb		r3,132(r27)		# retval=r3
# 
#   /* RateTransition: '<S1>/Rate Transition3' */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		2268
	lbz		r4,431(r25)
	se_cmpi		r4,0
	bc		1,2,.L4291	# eq
#     ATV_B.RateTransition3 = ATV_B.Switch;
	.d2line		2269
	stb		r3,133(r27)		# retval=r3
# 
#     /* RateTransition: '<S1>/Rate Transition5' */
#     ATV_B.RateTransition5_g = atv_dbg_pumpB_out;
	.d2line		2272
	lbz		r3,atv_dbg_pumpB_out@sdarx(r0)		# retval=r3
	stb		r3,134(r27)		# retval=r3
# 
#     /* RateTransition: '<Root>/Rate Transition12' */
#     ATV_B.RateTransition12 = ATV_DW.RateTransition12_Buffer0;
	.d2line		2275
	lha		r3,28(r28)		# retval=r3
	sth		r3,88(r27)		# retval=r3
.L4291:
	.d2line		2281
.Llo980:
	lis		r3,atvc_tempSwitchOnFan@ha		# retval=r3
#   }
# 
#   /* End of RateTransition: '<S1>/Rate Transition3' */
# 
#   /* Relay: '<S43>/Relay1' */
#   if (ATV_B.RateTransition12 >= atvc_tempSwitchOnFan) {
	.d2line		2275
.Llo981:
	lha		r4,88(r27)
	lbz		r3,atvc_tempSwitchOnFan@l(r3)		# retval=r3 retval=r3
	se_cmp		r3,r4		# retval=r3
	bc		1,1,.L4293	# gt
#     ATV_DW.Relay1_Mode_b = true;
	.d2line		2282
.Llo982:
	diab.li		r3,1		# retval=r3
.Llo983:
	stb		r3,69(r28)		# retval=r3
	b		.L4294
.L4293:
#   } else {
#     if (ATV_B.RateTransition12 <= atvc_tempSwitchOffFan) {
	.d2line		2284
.Llo984:
	lis		r3,atvc_tempSwitchOffFan@ha		# retval=r3
.Llo985:
	lbz		r3,atvc_tempSwitchOffFan@l(r3)		# retval=r3 retval=r3
	se_cmp		r3,r4		# retval=r3
	bc		1,0,.L4294	# lt
#       ATV_DW.Relay1_Mode_b = false;
	.d2line		2285
.Llo986:
	diab.li		r3,0		# retval=r3
.Llo987:
	stb		r3,69(r28)		# retval=r3
.L4294:
#     }
#   }
# 
#   /* Switch: '<S42>/Switch1' incorporates:
#    *  Constant: '<S42>/FanOff'
#    *  Logic: '<S43>/Logical Operator'
#    *  Relay: '<S43>/Relay1'
#    *  Switch: '<S43>/Switch1'
#    */
#   if (rtb_Compare) {
	.d2line		2295
.Llo988:
	se_cmpi		r0,0		# rtb_Compare=r0
	bc		1,2,.L4301	# eq
#     rtb_Switch_l = 0U;
	.d2line		2296
.Llo748:
	diab.li		r26,0		# rtb_Switch_l=r26
.Llo753:
	b		.L4302
.L4301:
#   } else {
#     if (atv_dbg_pumpB_out && ATV_DW.Relay1_Mode_b) {
	.d2line		2298
.Llo754:
	lbz		r0,atv_dbg_pumpB_out@sdarx(r0)		# rtb_Compare=r0
.Llo749:
	se_cmpi		r0,0		# rtb_Compare=r0
	bc		1,2,.L4299	# eq
.Llo750:
	lbz		r0,69(r28)		# rtb_Compare=r0
.Llo751:
	se_cmpi		r0,0		# rtb_Compare=r0
	bc		1,2,.L4299	# eq
#       /* Sum: '<S43>/Add1' incorporates:
#        *  Constant: '<S42>/atvc_tempSwitchOnFan'
#        *  Switch: '<S43>/Switch1'
#        */
#       rtb_MultiportSwitch = (int16_T)(ATV_B.RateTransition12 -
	.d2line		2303
.Llo752:
	lis		r3,atvc_tempSwitchOnFan@ha		# retval=r3
.Llo989:
	lbz		r3,atvc_tempSwitchOnFan@l(r3)		# retval=r3 retval=r3
	subf		r3,r3,r4		# retval=r3 retval=r3
	extsh		r0,r3		# rtb_MultiportSwitch=r0 retval=r3
#         atvc_tempSwitchOnFan);
# 
#       /* Saturate: '<S43>/Saturation' incorporates:
#        *  Switch: '<S43>/Switch1'
#        */
#       if (rtb_MultiportSwitch > 20) {
.Llo759:
	e_cmph16i	r3,20		# retval=r3
	.d2line		2309
	bc		0,1,.L4296	# le
#         rtb_MultiportSwitch = 20;
	.d2line		2310
.Llo760:
	diab.li		r0,20		# rtb_MultiportSwitch=r0
.Llo761:
	b		.L4297
.L4296:
#       } else {
#         if (rtb_MultiportSwitch < 0) {
	.d2line		2312
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	isel		r0,0,r0,0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
.L4297:
#           rtb_MultiportSwitch = 0;
#         }
#       }
# 
#       /* End of Saturate: '<S43>/Saturation' */
# 
#       /* Product: '<S43>/Product' incorporates:
#        *  Constant: '<S43>/Constant'
#        *  Switch: '<S43>/Switch1'
#        */
#       rtb_Product = (real_T)rtb_MultiportSwitch / 20.0;
	.d2line		2331
	lis		r3,atvc_dcMinFan@ha		# rtb_MultiportSwitch=r3
	.d2line		2323
	extsh		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	efscfsi		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
.Llo685:
	lbz		r3,atvc_dcMinFan@l(r3)		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
# 
#       /* Gain: '<S43>/Gain' incorporates:
#        *  Constant: '<S43>/Constant2'
#        *  DataTypeConversion: '<S43>/Data Type Conversion'
#        *  Switch: '<S43>/Switch1'
#        *  Switch: '<S45>/Switch2'
#        */
#       rtb_Gain = 0.01 * (real_T)atvc_dcMinFan;
	e_lis		r4,16800
	efsdiv		r0,r0,r4		# rtb_Product=r0 rtb_MultiportSwitch=r0
.Llo762:
	efscfui		r3,r3		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
.Llo763:
	efsmul		r3,r3,r30		# rtb_Gain=r3 rtb_MultiportSwitch=r3
# 
#       /* Switch: '<S45>/Switch' incorporates:
#        *  RelationalOperator: '<S45>/UpperRelop'
#        *  Switch: '<S43>/Switch1'
#        *  Switch: '<S45>/Switch2'
#        */
#       if (rtb_Product < rtb_Gain) {
	.d2line		2338
.Llo764:
	efscmplt		1,r0,r3		# rtb_Product=r0 rtb_Gain=r3
	bc		0,5,.L4300		# ge
#         rtb_Product = rtb_Gain;
	.d2line		2339
.Llo686:
	mr		r0,r3		# rtb_Product=r0 rtb_Product=r3
.Llo687:
	b		.L4300
.L4299:
#       }
# 
#       /* End of Switch: '<S45>/Switch' */
#     } else {
#       /* Switch: '<S43>/Switch1' incorporates:
#        *  Constant: '<S43>/Ventola spenta'
#        */
#       rtb_Product = 0.0;
	.d2line		2347
.Llo688:
	diab.li		r0,0		# rtb_Product=r0
.L4300:
#     }
# 
#     rtb_Switch_l = (uint8_T)(int32_T)fmod((int32_T)floor(rtb_Product), 256.0);
	.d2line		2350
.Llo689:
	mr		r3,r0		# rtb_Product=r3 rtb_Product=r0
	bl		_f_ftod
.Llo690:
	bl		floor
	bl		_d_dtoi
	bl		_d_itod
	e_lis		r5,16496
	diab.li		r6,0
	bl		fmod
	bl		_d_dtoi
.Llo755:
	mr		r26,r3		# rtb_Switch_l=r26 rtb_Switch_l=r3
.L4302:
#   }
# 
#   /* End of Switch: '<S42>/Switch1' */
# 
#   /* Gain: '<S1>/Gain' */
#   rtb_Gain_d = (uint8_T)(100U * rtb_Switch_l);
	.d2line		2356
.Llo756:
	e_mulli		r3,r26,100		# rtb_Gain_d=r3 rtb_Switch_l=r26
# 
#   /* RelationalOperator: '<S10>/Compare' incorporates:
#    *  Constant: '<S10>/Constant'
#    */
#   rtb_Compare = (rtb_Gain_d > 0);
	.d2line		2364
.Llo757:
	lbz		r0,431(r25)		# rtb_MultiportSwitch=r0
	.d2line		2361
.Llo765:
	rlwinm		r4,r3,0,24,31		# rtb_MultiportSwitch=r4 rtb_Gain_d=r3
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	neg		r0,r4		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r4
# 
#   /* RateTransition: '<S1>/Rate Transition6' */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	andc		r0,r0,r4		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r4
.Llo728:
	se_srwi		r0,31		# rtb_Compare=r0 rtb_MultiportSwitch=r0
.Llo766:
	bc		1,2,.L4303	# eq
#     ATV_B.RateTransition6_p = rtb_Compare;
# 
#     /* RateTransition: '<S1>/Rate Transition7' */
#     ATV_B.RateTransition7_p = rtb_Gain_d;
	.d2line		2368
	stb		r3,122(r27)		# rtb_Gain_d=r3
	.d2line		2365
	stb		r0,135(r27)		# rtb_Compare=r0
.L4303:
#   }
# 
#   /* End of RateTransition: '<S1>/Rate Transition6' */
# 
#   /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput1' */
#   /* S-Function Block: <S7>/pai_BasicAnalogInput1
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XA1, &adc, FALSE);
	.d2line		2379
.Llo729:
	diab.addi		r4,r1,56		# rtb_MultiportSwitch=r4
	diab.li		r3,12		# rtb_Product=r3
	diab.li		r5,0
	.d2line		2380
	e_lis		r25,16544
#     atv_xa1_ain_throttle_raw = (adc * 5.0) / 4096.0;
	bl		pax_adc_input
.Llo767:
	lha		r0,56(r1)		# rtb_MultiportSwitch=r0
	efscfsi		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	efsmul		r0,r0,r25		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	efsmul		r3,r0,r29		# rtb_Product=r3 rtb_MultiportSwitch=r0
.Llo691:
	stw		r3,atv_xa1_ain_throttle_raw@sdarx(r0)		# rtb_Product=r3
#   }
# 
#   /* Switch: '<S14>/Switch' incorporates:
#    *  Constant: '<S14>/Constant'
#    *  Constant: '<S16>/Lower Limit'
#    *  Constant: '<S16>/Upper Limit'
#    *  Logic: '<S16>/AND'
#    *  RelationalOperator: '<S16>/Lower Test'
#    *  RelationalOperator: '<S16>/Upper Test'
#    */
#   if ((0.45 <= atv_xa1_ain_throttle_raw) && (atv_xa1_ain_throttle_raw <= 4.55))
	.d2line		2391
	efscmpgt		1,r24,r3		# rtb_Product=r3
	bc		1,5,.L4310		# gt
	e_lis		r0,16529		# rtb_MultiportSwitch=r0
	e_or2i		r0,39322		# rtb_MultiportSwitch=r0
	efscmpgt		1,r3,r0		# rtb_Product=r3 rtb_MultiportSwitch=r0
	bc		1,5,.L4310		# gt
	e_lis		r0,16528		# rtb_MultiportSwitch=r0
#   {
#     /* Saturate: '<S14>/Saturation' */
#     if (atv_xa1_ain_throttle_raw > 4.5) {
	.d2line		2394
	efscmpgt		1,r3,r0		# rtb_Product=r3 rtb_MultiportSwitch=r0
	bc		0,5,.L4306		# le
#       rtb_Product = 4.5;
	.d2line		2395
	mr		r3,r0		# rtb_Product=r3 rtb_Product=r0
	b		.L4307
.L4306:
#     } else if (atv_xa1_ain_throttle_raw < 0.5) {
	.d2line		2396
	e_lis		r0,16128		# rtb_MultiportSwitch=r0
	efscmplt		1,r3,r0		# rtb_Product=r3 rtb_MultiportSwitch=r0
	bc		0,5,.L4304		# ge
#       rtb_Product = 0.5;
	.d2line		2397
	mr		r3,r0		# rtb_Product=r3 rtb_Product=r0
	b		.L4307
.L4304:
#     } else {
#       rtb_Product = atv_xa1_ain_throttle_raw;
.L4307:
#     }
# 
#     /* End of Saturate: '<S14>/Saturation' */
# 
#     /* Gain: '<S14>/Gain' incorporates:
#      *  Constant: '<S14>/Constant1'
#      *  Sum: '<S14>/Add'
#      */
#     rtb_Product = floor((rtb_Product - 0.5) * 250.0);
	.d2line		2408
.Llo692:
	e_lis		r4,16128		# rtb_MultiportSwitch=r4
	e_lis		r0,17274		# rtb_MultiportSwitch=r0
.Llo693:
	efssub		r3,r3,r4		# rtb_Product=r3 rtb_Product=r3 rtb_MultiportSwitch=r4
.Llo694:
	efsmul		r3,r3,r0		# rtb_Product=r3 rtb_Product=r3 rtb_MultiportSwitch=r0
.Llo697:
	bl		_f_ftod
	bl		floor
	bl		_d_dtof
.Llo703:
	mr		r25,r3		# rtb_Product=r25 rtb_Product=r3
#     if (rtIsNaN(rtb_Product)) {
	.d2line		2409
	bl		rtIsNaN
.Llo698:
	e_andi.		r3,r3,255		# rtb_Product=r3 rtb_Product=r3
.Llo699:
	bc		1,2,.L4308	# eq
#       atv_throttleX1000 = 0U;
	.d2line		2410
.Llo704:
	diab.li		r0,0		# rtb_MultiportSwitch=r0
	sth		r0,atv_throttleX1000@sdarx(r0)		# rtb_MultiportSwitch=r0
	b		.L4311
.L4308:
#     } else {
#       atv_throttleX1000 = (uint16_T)fmod(rtb_Product, 65536.0);
	.d2line		2412
	mr		r3,r25		# rtb_Product=r3 rtb_Product=r25
	bl		_f_ftod
	e_lis		r5,16624
	diab.li		r6,0
	bl		fmod
	bl		_d_dtou
.Llo695:
	sth		r3,atv_throttleX1000@sdarx(r0)		# rtb_Product=r3
	b		.L4311
.L4310:
#     }
# 
#     /* End of Gain: '<S14>/Gain' */
#   } else {
#     atv_throttleX1000 = 0U;
	.d2line		2417
.Llo700:
	diab.li		r0,0		# rtb_MultiportSwitch=r0
	sth		r0,atv_throttleX1000@sdarx(r0)		# rtb_MultiportSwitch=r0
.L4311:
	.d2line		2425
.Llo696:
	lhz		r5,4(r31)		# rtb_MultiportSwitch=r5
#   }
# 
#   /* End of Switch: '<S14>/Switch' */
# 
#   /* RelationalOperator: '<S47>/Relational Operator1' incorporates:
#    *  Constant: '<S32>/atvc_throttleNeutralPoint'
#    */
#   rtb_Compare = (atv_throttleX1000 >= atvc_throttleNeutralPoint);
	.d2line		2428
	lis		r3,atvc_throttleRegOff@ha		# rtb_MultiportSwitch=r3
	.d2line		2417
	lhz		r4,atv_throttleX1000@sdarx(r0)		# rtb_MultiportSwitch=r4
.Llo870:
	lbz		r0,atvc_throttleRegOff@l(r3)		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
	se_cmp		r5,r4		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r4
	stb		r0,atv_throttleRegOff@sdarx(r0)		# rtb_MultiportSwitch=r0
# 
#   /* Constant: '<S32>/atvc_throttleRegOff' */
#   atv_throttleRegOff = atvc_throttleRegOff;
	mfcr		r3		# rtb_MultiportSwitch=r3
	rlwinm		r25,r3,2,31,31		# rtb_Product=r25 rtb_MultiportSwitch=r3
	.d2line		2435
.Llo701:
	lbz		r3,173(r27)		# rtb_MultiportSwitch=r3
# 
#   /* Switch: '<S47>/Switch5' incorporates:
#    *  Constant: '<S47>/Constant2'
#    *  Constant: '<S47>/Constant3'
#    *  Switch: '<S47>/Switch1'
#    */
#   if (ATV_B.en_inv_rear_out) {
	xori		r25,r25,1		# rtb_Compare=r25 rtb_Product=r25
.Llo702:
	se_cmpi		r3,0		# rtb_MultiportSwitch=r3
	bc		1,2,.L4339	# eq
#     /* Switch: '<S47>/Switch2' incorporates:
#      *  Constant: '<S47>/Constant1'
#      */
#     if (atv_throttleRegOff) {
	.d2line		2439
.Llo768:
	e_andi.		r0,r0,255		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
.Llo769:
	bc		1,2,.L4326	# eq
#       /* Switch: '<S47>/Switch4' incorporates:
#        *  Constant: '<S53>/Constant'
#        */
#       if (rtb_Compare) {
	.d2line		2443
	se_cmpi		r25,0		# rtb_Compare=r25
	bc		1,2,.L4324	# eq
#         atv_regen_x1000_rear = 0U;
	.d2line		2444
	diab.li		r0,0		# rtb_MultiportSwitch=r0
	sth		r0,atv_regen_x1000_rear@sdarx(r0)		# rtb_MultiportSwitch=r0
	b		.L5033
.L4324:
#       } else {
#         /* Gain: '<S52>/Gain2' */
#         tmp_3 = 1000U;
	.d2line		2447
.Llo770:
	diab.li		r3,1000		# rtb_MultiportSwitch=r3
.Llo771:
	stw		r3,72(r1)		# rtb_MultiportSwitch=r3
# 
#         /* Sum: '<S52>/Add' incorporates:
#          *  Constant: '<S32>/atvc_throttleNeutralPoint'
#          *  DataTypeConversion: '<S52>/Cast'
#          *  DataTypeConversion: '<S52>/Cast1'
#          */
#         u0_tmp = atvc_throttleNeutralPoint - atv_throttleX1000;
	.d2line		2454
	lhz		r0,4(r31)		# rtb_MultiportSwitch=r0
.Llo871:
	subf		r4,r4,r0		# u0_tmp=r4 rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r0
# 
#         /* Saturate: '<S52>/Saturation' incorporates:
#          *  Sum: '<S52>/Add'
#          */
#         if (u0_tmp > 1000) {
	.d2line		2459
	cmpi		0,0,r4,1000		# u0_tmp=r4
	bc		0,1,.L4314	# le
#           /* Gain: '<S52>/Gain2' */
#           tmp_4 = 1000U;
	.d2line		2461
.Llo772:
	b		.L4315
.L4314:
.Llo773:
	se_cmpi		r4,0		# u0_tmp=r4
	isel		r3,0,r4,0		# rtb_MultiportSwitch=r3 u0_tmp=r4
.L4315:
#         } else if (u0_tmp < 0) {
#           /* Gain: '<S52>/Gain2' */
#           tmp_4 = 0U;
#         } else {
#           /* Gain: '<S52>/Gain2' */
#           tmp_4 = (uint32_T)u0_tmp;
#         }
# 
#         /* End of Saturate: '<S52>/Saturation' */
# 
#         /* Gain: '<S52>/Gain2' */
#         sMultiWordMul(&tmp_3, 1, &tmp_4, 1, &tmp_2.chunks[0U], 2);
.Llo774:
	stw		r3,68(r1)		# rtb_MultiportSwitch=r3
	.d2line		2473
.Llo775:
	diab.li		r4,1		# rtb_MultiportSwitch=r4
	diab.addi		r5,r1,68		# rtb_MultiportSwitch=r5
	diab.addi		r7,r1,112		# rtb_PumpACtrl=r7
	diab.li		r8,2
	diab.li		r6,1
	diab.addi		r3,r1,72		# rtb_MultiportSwitch=r3
	bl		sMultiWordMul
# 
#         /* Product: '<S52>/Divide3' incorporates:
#          *  Constant: '<S32>/atvc_throttleNeutralPoint'
#          *  DataTypeConversion: '<S52>/Cast1'
#          */
#         if (atvc_throttleNeutralPoint == 0) {
	.d2line		2479
	lhz		r0,4(r31)		# rtb_MultiportSwitch=r0
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	bc		0,2,.L4318	# ne
#           tmp_6 = tmp_g;
	.d2line		2480
	diab.li		r7,tmp_g.4196@sdarx		# rtb_PumpACtrl=r7
	.d2line		2481
.Llo852:
	diab.addi		r3,r1,112		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r1
	lwz		r4,0(r7)		# rtb_MultiportSwitch=r4 rtb_PumpACtrl=r7
	lwz		r5,4(r7)		# rtb_MultiportSwitch=r5 rtb_PumpACtrl=r7
	stw		r4,96(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
#           if (sMultiWordGe(&tmp_2.chunks[0U], &tmp_6.chunks[0U], 2)) {
	stw		r5,100(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r5
	diab.addi		r4,r1,96		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r5,2		# rtb_MultiportSwitch=r5
	bl		sMultiWordGe
.Llo853:
	e_andi.		r3,r3,255		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	bc		1,2,.L4917	# eq
	b		.L4517
.L4318:
#             u0_tmp = MAX_int32_T;
#           } else {
#             u0_tmp = MIN_int32_T;
#           }
#         } else {
#           sLong2MultiWord(atvc_throttleNeutralPoint, &tmp_6.chunks[0U], 2);
	.d2line		2487
	lhz		r3,4(r31)		# rtb_MultiportSwitch=r3
	diab.addi		r4,r1,96		# rtb_MultiportSwitch=r4
	diab.li		r5,2		# rtb_MultiportSwitch=r5
	.d2line		2488
	diab.addi		r7,r1,80		# rtb_MultiportSwitch=r7
#           sMultiWordDivFloor(&tmp_2.chunks[0U], 2, &tmp_6.chunks[0U], 2,
	bl		sLong2MultiWord
	diab.addi		r9,r1,120
	stw		r7,8(r1)		# rtb_MultiportSwitch=r7
	diab.addi		r0,r1,88		# rtb_MultiportSwitch=r0
	diab.li		r4,2		# rtb_MultiportSwitch=r4
	stw		r0,16(r1)		# rtb_MultiportSwitch=r0
	stw		r4,12(r1)		# rtb_MultiportSwitch=r4
	diab.li		r8,3
	stw		r4,20(r1)		# rtb_MultiportSwitch=r4
	diab.li		r6,2
	diab.addi		r3,r1,112		# rtb_MultiportSwitch=r3
	diab.addi		r5,r1,96		# rtb_MultiportSwitch=r5
	diab.addi		r7,r1,224		# rtb_MultiportSwitch=r7
	mr		r10,r4		# rtb_MultiportSwitch=r10
	bl		sMultiWordDivFloor
	.d2line		390
	lwz		r0,224(r1)		# rtb_MultiportSwitch=r0
#                              &tmp_5.chunks[0U], 3, &tmp_7.chunks[0U], 2,
#                              &tmp_8.chunks[0U], 2, &tmp_9.chunks[0U], 2);
#           u0_tmp = MultiWord2sLong(&tmp_5.chunks[0U]);
#         }
# 
#         /* Saturate: '<S52>/Saturation1' incorporates:
#          *  Product: '<S52>/Divide3'
#          */
#         if (u0_tmp > 1000) {
	.d2line		2497
	cmpi		0,0,r0,1000		# rtb_MultiportSwitch=r0
	bc		0,1,.L4322	# le
.L4517:
#           atv_regen_x1000_rear = 1000U;
	.d2line		2498
	diab.li		r0,1000		# rtb_MultiportSwitch=r0
	b		.L4327
.L4322:
#         } else if (u0_tmp < 0) {
	.d2line		2499
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	bc		0,0,.L4327	# ge
.L4917:
#           atv_regen_x1000_rear = 0U;
	.d2line		2500
	diab.li		r0,0		# rtb_MultiportSwitch=r0
	b		.L4327
.L4320:
#         } else {
#           atv_regen_x1000_rear = (uint16_T)u0_tmp;
.L4326:
#         }
# 
#         /* End of Saturate: '<S52>/Saturation1' */
#       }
# 
#       /* End of Switch: '<S47>/Switch4' */
#     } else {
#       atv_regen_x1000_rear = 0U;
	.d2line		2510
.Llo776:
	diab.li		r0,0		# rtb_MultiportSwitch=r0
.L4327:
#     }
# 
#     /* End of Switch: '<S47>/Switch2' */
# 
#     /* Switch: '<S47>/Switch3' incorporates:
#      *  Constant: '<S52>/Constant'
#      */
#     if (rtb_Compare) {
	.d2line		2498
.Llo777:
	sth		r0,atv_regen_x1000_rear@sdarx(r0)		# rtb_MultiportSwitch=r0
	.d2line		2518
	se_cmpi		r25,0		# rtb_Compare=r25
	bc		1,2,.L4337	# eq
.L5033:
	.d2line		2524
.Llo730:
	lhz		r25,4(r31)		# rtb_MultiportSwitch=r25
#       /* Sum: '<S53>/Add1' incorporates:
#        *  Constant: '<S32>/atvc_throttleNeutralPoint'
#        *  Constant: '<S53>/Constant1'
#        *  DataTypeConversion: '<S53>/Cast'
#        */
#       u0_tmp = 1000 - atvc_throttleNeutralPoint;
	.d2line		2518
.Llo591:
	diab.li		r4,1000		# rtb_MultiportSwitch=r4
	.d2line		2534
	lhz		r0,atv_throttleX1000@sdarx(r0)		# rtb_MultiportSwitch=r0
# 
#       /* Gain: '<S53>/Gain2' */
#       tmp_3 = 1000U;
	.d2line		2527
	stw		r4,72(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
# 
#       /* Sum: '<S53>/Add' incorporates:
#        *  Constant: '<S32>/atvc_throttleNeutralPoint'
#        *  DataTypeConversion: '<S53>/Cast'
#        *  DataTypeConversion: '<S53>/Cast1'
#        */
#       u0_tmp_0 = atv_throttleX1000 - atvc_throttleNeutralPoint;
	subf		r25,r25,r4		# u0_tmp=r25 rtb_MultiportSwitch=r25 rtb_MultiportSwitch=r4
	lhz		r3,4(r31)		# rtb_MultiportSwitch=r3
.Llo872:
	subf		r3,r3,r0		# u0_tmp_0=r3 rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r0
# 
#       /* Saturate: '<S53>/Saturation' incorporates:
#        *  Sum: '<S53>/Add'
#        */
#       if (u0_tmp_0 > 1000) {
	.d2line		2539
	cmpi		0,0,r3,1000		# u0_tmp_0=r3
	bc		0,1,.L4330	# le
#         /* Gain: '<S53>/Gain2' */
#         tmp_4 = 1000U;
	.d2line		2541
.Llo778:
	stw		r4,68(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
.Llo779:
	b		.L4331
.L4330:
	se_cmpi		r3,0		# u0_tmp_0=r3
	isel		r0,0,r3,0		# rtb_MultiportSwitch=r0 u0_tmp_0=r3
	stw		r0,68(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
.L4331:
#       } else if (u0_tmp_0 < 0) {
#         /* Gain: '<S53>/Gain2' */
#         tmp_4 = 0U;
#       } else {
#         /* Gain: '<S53>/Gain2' */
#         tmp_4 = (uint32_T)u0_tmp_0;
#       }
# 
#       /* End of Saturate: '<S53>/Saturation' */
# 
#       /* Gain: '<S53>/Gain2' */
#       sMultiWordMul(&tmp_3, 1, &tmp_4, 1, &tmp_1.chunks[0U], 2);
	.d2line		2553
.Llo780:
	diab.li		r4,1		# rtb_MultiportSwitch=r4
.Llo781:
	diab.addi		r3,r1,72		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r1
	diab.addi		r5,r1,68		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r1
	diab.addi		r7,r1,144		# rtb_PumpACtrl=r7 rtb_MultiportSwitch=r1
	diab.li		r8,2
	diab.li		r6,1
	bl		sMultiWordMul
	diab.li		r0,1		# rtb_MultiportSwitch=r0
	se_cmpi		r25,0		# u0_tmp=r25
# 4273
	.d2line		2565
	diab.addi		r4,r1,120		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
# 
#       /* Saturate: '<S53>/Saturation2' incorporates:
#        *  Sum: '<S53>/Add1'
#        */
#       if (u0_tmp < 1) {
#         u0_tmp = 1;
#       }
# 
#       /* End of Saturate: '<S53>/Saturation2' */
# 
#       /* Product: '<S53>/Divide3' */
#       sLong2MultiWord(u0_tmp, &tmp_7.chunks[0U], 2);
	diab.li		r5,2		# rtb_MultiportSwitch=r5
	isel		r3,r25,r0,1		# rtb_MultiportSwitch=r3 u0_tmp=r25 rtb_MultiportSwitch=r0
	.d2line		2566
	diab.addi		r7,r1,236		# rtb_PumpACtrl=r7 rtb_MultiportSwitch=r1
#       sMultiWordDivFloor(&tmp_1.chunks[0U], 2, &tmp_7.chunks[0U], 2,
	bl		sLong2MultiWord
	diab.addi		r9,r1,80		# rtb_MultiportSwitch=r1
	diab.addi		r0,r1,88		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	diab.li		r4,2		# rtb_MultiportSwitch=r4
	stw		r0,8(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	diab.li		r8,3
	stw		r4,12(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	diab.li		r6,2
	diab.addi		r0,r1,128		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	stw		r4,20(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	stw		r0,16(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	diab.addi		r3,r1,144		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r1
	diab.addi		r5,r1,120		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r1
	mr		r10,r4		# rtb_MultiportSwitch=r10
	bl		sMultiWordDivFloor
	.d2line		390
	lwz		r0,236(r1)		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
#                          &tmp_a.chunks[0U], 3, &tmp_8.chunks[0U], 2,
#                          &tmp_9.chunks[0U], 2, &tmp_b.chunks[0U], 2);
#       u0_tmp = MultiWord2sLong(&tmp_a.chunks[0U]);
# 
#       /* Saturate: '<S53>/Saturation1' incorporates:
#        *  Product: '<S53>/Divide3'
#        */
#       if (u0_tmp > 1000) {
	.d2line		2574
	cmpi		0,0,r0,1000		# rtb_MultiportSwitch=r0
	bc		0,1,.L4335	# le
#         atv_motoring_x1000_rear = 1000U;
	.d2line		2575
.Llo592:
	diab.li		r0,1000		# rtb_MultiportSwitch=r0
	b		.L4340
.L4335:
	rlwinm		r3,r0,0,16,31		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r0
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	isel		r0,0,r3,0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
	b		.L4340
.L4337:
#       } else if (u0_tmp < 0) {
#         atv_motoring_x1000_rear = 0U;
#       } else {
#         atv_motoring_x1000_rear = (uint16_T)u0_tmp;
#       }
# 
#       /* End of Saturate: '<S53>/Saturation1' */
#     } else {
#       atv_motoring_x1000_rear = 0U;
	.d2line		2584
	diab.li		r0,0		# rtb_MultiportSwitch=r0
	b		.L4340
.L4339:
.Llo731:
	diab.li		r0,0		# rtb_MultiportSwitch=r0
#     }
# 
#     /* End of Switch: '<S47>/Switch3' */
#   } else {
#     atv_regen_x1000_rear = 0U;
	.d2line		2589
.Llo782:
	sth		r0,atv_regen_x1000_rear@sdarx(r0)		# rtb_MultiportSwitch=r0
#     atv_motoring_x1000_rear = 0U;
.L4340:
	.d2line		2575
.Llo732:
	sth		r0,atv_motoring_x1000_rear@sdarx(r0)		# rtb_MultiportSwitch=r0
	.d2line		2590
.Llo783:
	lhz		r0,atv_motoring_x1000_rear@sdarx(r0)		# rtb_MultiportSwitch=r0
#   }
# 
#   /* End of Switch: '<S47>/Switch5' */
# 
#   /* Switch: '<S48>/Switch2' incorporates:
#    *  Constant: '<S32>/atvc_throttleMaxLimit'
#    *  RelationalOperator: '<S48>/LowerRelop1'
#    *  Switch: '<S48>/Switch'
#    */
#   if (atv_motoring_x1000_rear > atvc_throttleMaxLimit) {
	.d2line		2600
	lhz		r3,6(r31)		# rtb_MultiportSwitch=r3
	se_cmp		r0,r3		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
	bc		0,1,.L4341	# le
#     atv_motoring_x1000_rear_limited = atvc_throttleMaxLimit;
	.d2line		2601
	lhz		r0,6(r31)		# rtb_MultiportSwitch=r0
	b		.L4342
.L4341:
#   } else {
#     atv_motoring_x1000_rear_limited = atv_motoring_x1000_rear;
.L4342:
.Llo784:
	sth		r0,atv_motoring_x1000_rear_limited@sdarx(r0)		# rtb_MultiportSwitch=r0
	.d2line		2614
.Llo785:
	lis		r3,atvc_velocityLimitRwd@ha		# rtb_MultiportSwitch=r3
#   }
# 
#   /* End of Switch: '<S48>/Switch2' */
# 
#   /* DataTypeConversion: '<S39>/Cast2' incorporates:
#    *  Constant: '<S9>/atvc_velocityLimitRwd'
#    *  DataTypeConversion: '<S39>/Data Type Conversion1'
#    *  Gain: '<S39>/Gain2'
#    *  Product: '<S39>/Product2'
#    */
#   ATV_B.Cast2 = (uint16_T)(int32_T)fmod((int32_T)floor(0.277777791F * (real32_T)
	.d2line		2603
	e_lis		r25,17064		# u0_tmp=r25
	.d2line		2623
.Llo593:
	lis		r24,atvc_velocityLimitFwd@ha		# rtb_MultiportSwitch=r24
	lbz		r0,atvc_velocityLimitRwd@l(r3)		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
	e_or2i		r25,31083		# u0_tmp=r25
	efscfui		r3,r0		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r0
	efsmul		r3,r3,r25		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3 u0_tmp=r25
	bl		_f_ftod
.Llo786:
	bl		floor
	bl		_d_dtoi
	bl		_d_itod
	e_lis		r5,16624		# rtb_MultiportSwitch=r5
	diab.li		r6,0
	bl		fmod
	bl		_d_dtoi
.Llo787:
	sth		r3,68(r27)		# rtb_MultiportSwitch=r3
#     atvc_velocityLimitRwd * 303.25370753692243), 65536.0);
# 
#   /* DataTypeConversion: '<S39>/Cast1' incorporates:
#    *  Constant: '<S9>/atvc_velocityLimitFwd'
#    *  DataTypeConversion: '<S39>/Data Type Conversion'
#    *  Gain: '<S39>/Gain1'
#    *  Product: '<S39>/Product'
#    */
#   ATV_B.Cast1 = (uint16_T)(int32_T)fmod((int32_T)floor(0.277777791F * (real32_T)
	mr		r23,r3		# rtb_MultiportSwitch=r23
	lbz		r0,atvc_velocityLimitFwd@l(r24)		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r24
	efscfui		r3,r0		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r0
.Llo788:
	efsmul		r3,r3,r25		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3 u0_tmp=r25
.Llo789:
	bl		_f_ftod
.Llo790:
	bl		floor
	bl		_d_dtoi
	bl		_d_itod
	e_lis		r5,16624		# rtb_MultiportSwitch=r5
	diab.li		r6,0
	bl		fmod
	bl		_d_dtoi
.Llo791:
	sth		r3,70(r27)		# rtb_MultiportSwitch=r3
	.section	.text_vle
.L5716:
#     atvc_velocityLimitFwd * 303.25370753692243), 65536.0);
# 
#   /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage2' */
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage2
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   {
#     U8 data[8];
#     BOOL retval;
#     F32 pcx_CANdb_TransmitMessage2_in_port_buffer[4];
#     F32 * pcx_CANdb_TransmitMessage2_in_port_ptr[4];
#     static const U8 pcx_CANdb_TransmitMessage2_field_start_pos[4] = {
#       48, 32, 16, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage2_field_width[4] = {
#       16, 16, 16, 16, };
# 
#     static const U8 pcx_CANdb_TransmitMessage2_field_is_signed[4] = {
#       0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage2_field_valtype[4] = {
#       0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage2_field_order[4] = {
#       1, 1, 1, 1, };
# 
#     static const F32 pcx_CANdb_TransmitMessage2_field_eng_min[4] = {
#       0.0, 0.0, 0.0, 0.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage2_field_eng_max[4] = {
#       1000.0, 1000.0, 20000.0, 20000.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage2_field_scale[4] = {
#       1.0, 1.0, 1.0, 1.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage2_field_offset[4] = {
#       0.0, 0.0, 0.0, 0.0, };
# 
#     if (pcx_CANdb_TransmitMessage2_msg_handle != PCX_CONFIG_ERROR) {
	.d2line		2662
.Llo594:
	lha		r0,pcx_CANdb_TransmitMessage2_msg_handle@sdarx(r0)		# rtb_MultiportSwitch=r0
.Llo792:
	e_cmph16i	r0,-1		# rtb_MultiportSwitch=r0
	bc		1,2,.L4352	# eq
#       pcx_CANdb_TransmitMessage2_in_port_buffer[0] = atv_regen_x1000_rear;
	.d2line		2663
.Llo793:
	lhz		r0,atv_regen_x1000_rear@sdarx(r0)		# rtb_MultiportSwitch=r0
	.d2line		2670
.Llo794:
	rlwinm		r23,r23,0,16,31		# rtb_MultiportSwitch=r23 rtb_MultiportSwitch=r23
	.d2line		2666
	lhz		r4,atv_motoring_x1000_rear_limited@sdarx(r0)		# rtb_MultiportSwitch=r4
#       pcx_CANdb_TransmitMessage2_in_port_ptr[0] =
	.d2line		2673
	rlwinm		r3,r3,0,16,31		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	efscfui		r5,r0		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r0
#         &pcx_CANdb_TransmitMessage2_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage2_in_port_buffer[1] =
	.d2line		2676
	lis		r6,pcx_CANdb_TransmitMessage2_field_width.4344@ha
	lis		r7,pcx_CANdb_TransmitMessage2_field_is_signed.4345@ha		# rtb_PumpACtrl=r7
.Llo854:
	lis		r8,pcx_CANdb_TransmitMessage2_field_valtype.4346@ha
#         atv_motoring_x1000_rear_limited;
#       pcx_CANdb_TransmitMessage2_in_port_ptr[1] =
	.d2line		2664
	diab.addi		r0,r1,272		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	efscfui		r4,r4		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r4
#         &pcx_CANdb_TransmitMessage2_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage2_in_port_buffer[2] = ATV_B.Cast2;
	stw		r0,320(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	lis		r9,pcx_CANdb_TransmitMessage2_field_order.4347@ha
	stw		r4,276(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
#       pcx_CANdb_TransmitMessage2_in_port_ptr[2] =
	lis		r10,pcx_CANdb_TransmitMessage2_field_eng_min.4348@ha		# rtb_MultiportSwitch=r10
	.d2line		2668
	diab.addi		r0,r1,276		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
#         &pcx_CANdb_TransmitMessage2_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage2_in_port_buffer[3] = ATV_B.Cast1;
	.d2line		2663
	stw		r5,272(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r5
	stw		r0,324(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	lis		r4,pcx_CANdb_TransmitMessage2_field_eng_max.4349@ha		# rtb_MultiportSwitch=r4
#       pcx_CANdb_TransmitMessage2_in_port_ptr[3] =
	e_add16i		r4,r4,pcx_CANdb_TransmitMessage2_field_eng_max.4349@l		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r4
	.d2line		2670
	efscfui		r5,r23		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r23
	.d2line		2671
	diab.addi		r0,r1,280		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
#         &pcx_CANdb_TransmitMessage2_in_port_buffer[3];
#       pcx_vdb_pack_msg((const F32 * const *)
	.d2line		2676
	stw		r4,8(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	stw		r0,328(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	.d2line		2673
	efscfui		r3,r3		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	lis		r4,pcx_CANdb_TransmitMessage2_field_scale.4350@ha		# rtb_MultiportSwitch=r4
	stw		r5,280(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r5
	.d2line		2674
	diab.addi		r0,r1,284		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	e_add16i		r4,r4,pcx_CANdb_TransmitMessage2_field_scale.4350@l		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r4
	stw		r0,332(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	lis		r5,pcx_CANdb_TransmitMessage2_field_start_pos.4343@ha		# rtb_MultiportSwitch=r5
	stw		r4,12(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage2_field_width.4344@l
	diab.li		r0,0		# rtb_MultiportSwitch=r0
	stw		r3,284(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
	stw		r0,20(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	lis		r4,pcx_CANdb_TransmitMessage2_field_offset.4351@ha		# rtb_MultiportSwitch=r4
	e_add16i		r4,r4,pcx_CANdb_TransmitMessage2_field_offset.4351@l		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r4
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage2_field_is_signed.4345@l		# rtb_PumpACtrl=r7 rtb_PumpACtrl=r7
.Llo855:
	diab.li		r0,1		# rtb_MultiportSwitch=r0
	stw		r4,16(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	stw		r0,24(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage2_field_valtype.4346@l
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage2_field_order.4347@l
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage2_field_eng_min.4348@l		# rtb_MultiportSwitch=r10 rtb_MultiportSwitch=r10
	diab.li		r0,4		# rtb_MultiportSwitch=r0
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage2_field_start_pos.4343@l		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r5
	stw		r0,28(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	diab.addi		r3,r1,320		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r1
	diab.addi		r4,r1,168		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	bl		pcx_vdb_pack_msg
#                        &pcx_CANdb_TransmitMessage2_in_port_ptr[0], &data[0],
#                        pcx_CANdb_TransmitMessage2_field_start_pos,
#                        pcx_CANdb_TransmitMessage2_field_width,
#                        pcx_CANdb_TransmitMessage2_field_is_signed,
#                        pcx_CANdb_TransmitMessage2_field_valtype,
#                        pcx_CANdb_TransmitMessage2_field_order,
#                        pcx_CANdb_TransmitMessage2_field_eng_min,
#                        pcx_CANdb_TransmitMessage2_field_eng_max,
#                        pcx_CANdb_TransmitMessage2_field_scale,
#                        pcx_CANdb_TransmitMessage2_field_offset, 0, 1, 4);
# 
#       /* Do a transmit every time we are called, (CT2) */
#       retval = pcx_transmit(pcx_CANdb_TransmitMessage2_msg_handle, data);
	.d2line		2689
	lha		r3,pcx_CANdb_TransmitMessage2_msg_handle@sdarx(r0)		# rtb_MultiportSwitch=r3
	diab.addi		r4,r1,168		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	bl		pcx_transmit
.Llo990:
	b		.L4353
.L4352:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		2692
.Llo795:
	diab.li		r3,0		# retval=r3
.L4353:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage2 = !retval;
	.d2line		2695
.Llo796:
	rlwinm		r0,r3,0,24,31		# rtb_MultiportSwitch=r0 retval=r3
	cntlzw		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	diab.srwi		r0,5		# rtb_MultiportSwitch=r0
	stb		r0,137(r27)		# rtb_MultiportSwitch=r0
	.section	.text_vle
.L5717:
#   }
# 
#   /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput3' */
#   /* S-Function Block: <S7>/pai_BasicAnalogInput3
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XD3, &adc, FALSE);
	.d2line		2704
.Llo991:
	diab.addi		r4,r1,58		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,26		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	.d2line		2705
	e_lis		r25,16544		# u0_tmp=r25
#     atv_xd3_raw_ain = (adc * 5.0) / 4096.0;
.Llo595:
	bl		pax_adc_input
	lha		r0,58(r1)		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	.d2line		2709
	e_lis		r3,16448		# rtb_MultiportSwitch=r3
	efscfsi		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	efsmul		r0,r0,r25		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0 u0_tmp=r25
	efsmul		r0,r0,r29		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
#   }
# 
#   /* Relay: '<S7>/Relay' */
#   if (atv_xd3_raw_ain >= 3.0) {
	stw		r0,atv_xd3_raw_ain@sdarx(r0)		# rtb_MultiportSwitch=r0
	efscmplt		1,r0,r3		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
	bc		1,5,.L4355		# lt
#     ATV_DW.Relay_Mode_b = true;
	.d2line		2710
.Llo596:
	diab.li		r0,1		# rtb_MultiportSwitch=r0
	stb		r0,70(r28)		# rtb_MultiportSwitch=r0
	b		.L4356
.L4355:
#   } else {
#     if (atv_xd3_raw_ain <= 2.0) {
	.d2line		2712
	diab.li		r3,1073741824		# rtb_MultiportSwitch=r3
	efscmpgt		1,r0,r3		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
	bc		1,5,.L4356		# gt
#       ATV_DW.Relay_Mode_b = false;
	.d2line		2713
	diab.li		r0,0		# rtb_MultiportSwitch=r0
	stb		r0,70(r28)		# rtb_MultiportSwitch=r0
.L4356:
#     }
#   }
# 
#   atv_fs1_in = !ATV_DW.Relay_Mode_b;
	.d2line		2717
	lbz		r0,70(r28)		# rtb_MultiportSwitch=r0
	.d2line		2724
	lhz		r4,atv_motoring_x1000_rear@sdarx(r0)		# rtb_MultiportSwitch=r4
	cntlzw		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	diab.srwi		r0,5		# rtb_MultiportSwitch=r0
# 
#   /* End of Relay: '<S7>/Relay' */
# 
#   /* Switch: '<S32>/Switch' incorporates:
#    *  Logic: '<S32>/Logical Operator1'
#    */
#   if (atv_motoring_x1000_rear > (uint16_T)(atvc_throttleNeutralPoint + 10U)) {
	stb		r0,atv_fs1_in@sdarx(r0)		# rtb_MultiportSwitch=r0
	lhz		r3,4(r31)		# rtb_MultiportSwitch=r3
	se_addi		r3,10		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	rlwinm		r3,r3,0,16,31		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	se_cmp		r4,r3		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r3
	bc		0,1,.L4357	# le
#     atv_fs1_out = atv_fs1_in;
	.d2line		2725
	b		.L4358
.L4357:
#   } else {
#     atv_fs1_out = !atv_fs1_in;
	.d2line		2727
	rlwinm		r0,r0,0,24,31		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	cntlzw		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	diab.srwi		r0,5		# rtb_MultiportSwitch=r0
.L4358:
	.section	.text_vle
.L5756:
#   }
# 
#   /* End of Switch: '<S32>/Switch' */
# 
#   /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage3' incorporates:
#    *  Constant: '<S1>/atvc_maxDischCurr'
#    *  Constant: '<S1>/atvc_maxRegenCurr'
#    */
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage3
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   {
#     U8 data[8];
#     BOOL retval;
#     F32 pcx_CANdb_TransmitMessage3_in_port_buffer[5];
#     F32 * pcx_CANdb_TransmitMessage3_in_port_ptr[5];
#     static const U8 pcx_CANdb_TransmitMessage3_field_start_pos[5] = {
#       34, 33, 32, 16, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage3_field_width[5] = {
#       1, 1, 1, 16, 16, };
# 
#     static const U8 pcx_CANdb_TransmitMessage3_field_is_signed[5] = {
#       0, 0, 0, 1, 1, };
# 
#     static const U8 pcx_CANdb_TransmitMessage3_field_valtype[5] = {
#       0, 0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage3_field_order[5] = {
#       1, 1, 1, 1, 1, };
# 
#     static const F32 pcx_CANdb_TransmitMessage3_field_eng_min[5] = {
#       0.0, 0.0, 0.0, -32768.0, 0.0,
#     };
# 
#     static const F32 pcx_CANdb_TransmitMessage3_field_eng_max[5] = {
#       1.0, 1.0, 1.0, 0.0, 32767.0,
#     };
# 
#     static const F32 pcx_CANdb_TransmitMessage3_field_scale[5] = {
#       1.0, 1.0, 1.0, 1.0, 1.0,
#     };
# 
#     static const F32 pcx_CANdb_TransmitMessage3_field_offset[5] = {
#       0.0, 0.0, 0.0, 0.0, 0.0,
#     };
# 
#     if (pcx_CANdb_TransmitMessage3_msg_handle != PCX_CONFIG_ERROR) {
	.d2line		2725
	stb		r0,atv_fs1_out@sdarx(r0)		# rtb_MultiportSwitch=r0
	.d2line		2775
	lha		r0,pcx_CANdb_TransmitMessage3_msg_handle@sdarx(r0)		# rtb_MultiportSwitch=r0
	e_cmph16i	r0,-1		# rtb_MultiportSwitch=r0
	bc		1,2,.L4368	# eq
#       pcx_CANdb_TransmitMessage3_in_port_buffer[0] = atv_fs1_out;
	.d2line		2776
	lbz		r3,atv_fs1_out@sdarx(r0)		# rtb_MultiportSwitch=r3
	.d2line		2777
	diab.addi		r0,r1,368		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	.d2line		2779
	lbz		r5,atv_rwd_mode_in@sdarx(r0)		# rtb_MultiportSwitch=r5
#       pcx_CANdb_TransmitMessage3_in_port_ptr[0] =
	.d2line		2780
	diab.addi		r4,r1,372		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	efscfui		r6,r3		# rtb_MultiportSwitch=r3
#         &pcx_CANdb_TransmitMessage3_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage3_in_port_buffer[1] = atv_rwd_mode_in;
	stw		r0,428(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	stw		r4,432(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	.d2line		2791
	lis		r11,pcx_CANdb_TransmitMessage3_field_eng_max.4365@ha		# rtb_MultiportSwitch=r11
#       pcx_CANdb_TransmitMessage3_in_port_ptr[1] =
	.d2line		2782
	lbz		r3,atv_fwd_mode_in@sdarx(r0)		# rtb_MultiportSwitch=r3
	efscfui		r5,r5		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r5
#         &pcx_CANdb_TransmitMessage3_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage3_in_port_buffer[2] = atv_fwd_mode_in;
	.d2line		2783
	diab.addi		r0,r1,376		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	.d2line		2776
	stw		r6,368(r1)		# rtb_MultiportSwitch=r1
	efscfui		r3,r3		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
#       pcx_CANdb_TransmitMessage3_in_port_ptr[2] =
	.d2line		2779
	stw		r5,372(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r5
	stw		r0,436(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
#         &pcx_CANdb_TransmitMessage3_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage3_in_port_buffer[3] = atvc_maxRegenCurr;
	.d2line		2786
	diab.addi		r4,r1,380		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	.d2line		2782
	stw		r3,376(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
	.d2line		2791
	e_add16i		r11,r11,pcx_CANdb_TransmitMessage3_field_eng_max.4365@l		# rtb_MultiportSwitch=r11 rtb_MultiportSwitch=r11
	lis		r12,pcx_CANdb_TransmitMessage3_field_scale.4366@ha
#       pcx_CANdb_TransmitMessage3_in_port_ptr[3] =
	lis		r25,pcx_CANdb_TransmitMessage3_field_offset.4367@ha		# u0_tmp=r25
	.d2line		2785
.Llo597:
	lhz		r3,24(r31)		# rtb_MultiportSwitch=r3
	.d2line		2789
	diab.addi		r24,r1,384		# rtb_MultiportSwitch=r24 rtb_MultiportSwitch=r1
	diab.li		r21,0
#         &pcx_CANdb_TransmitMessage3_in_port_buffer[3];
#       pcx_CANdb_TransmitMessage3_in_port_buffer[4] = atvc_maxDischCurr;
	diab.li		r22,1
	efscfui		r5,r3		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r3
	.d2line		2786
	stw		r4,440(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
#       pcx_CANdb_TransmitMessage3_in_port_ptr[4] =
	diab.li		r0,5		# rtb_MultiportSwitch=r0
	e_add16i		r12,r12,pcx_CANdb_TransmitMessage3_field_scale.4366@l
#         &pcx_CANdb_TransmitMessage3_in_port_buffer[4];
#       pcx_vdb_pack_msg((const F32 * const *)
	stw		r5,380(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r5
	e_add16i		r25,r25,pcx_CANdb_TransmitMessage3_field_offset.4367@l		# u0_tmp=r25 u0_tmp=r25
	lis		r7,pcx_CANdb_TransmitMessage3_field_is_signed.4361@ha		# rtb_PumpACtrl=r7
.Llo856:
	lis		r8,pcx_CANdb_TransmitMessage3_field_valtype.4362@ha
	.d2line		2788
	lhz		r23,22(r31)		# rtb_MultiportSwitch=r23
	.d2line		2791
	lis		r9,pcx_CANdb_TransmitMessage3_field_order.4363@ha
	lis		r10,pcx_CANdb_TransmitMessage3_field_eng_min.4364@ha		# rtb_MultiportSwitch=r10
	lis		r6,pcx_CANdb_TransmitMessage3_field_width.4360@ha
	stw		r11,8(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r11
	lis		r5,pcx_CANdb_TransmitMessage3_field_start_pos.4359@ha		# rtb_MultiportSwitch=r5
	stw		r12,12(r1)		# rtb_MultiportSwitch=r1
	diab.addi		r3,r1,428		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r1
	efscfui		r11,r23		# rtb_MultiportSwitch=r11 rtb_MultiportSwitch=r23
	stw		r25,16(r1)		# rtb_MultiportSwitch=r1 u0_tmp=r25
	stw		r21,20(r1)		# rtb_MultiportSwitch=r1
	diab.addi		r4,r1,176		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	stw		r22,24(r1)		# rtb_MultiportSwitch=r1
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage3_field_is_signed.4361@l		# rtb_PumpACtrl=r7 rtb_PumpACtrl=r7
.Llo857:
	stw		r0,28(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage3_field_valtype.4362@l
	stw		r11,384(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r11
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage3_field_order.4363@l
	stw		r24,444(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r24
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage3_field_eng_min.4364@l		# rtb_MultiportSwitch=r10 rtb_MultiportSwitch=r10
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage3_field_width.4360@l
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage3_field_start_pos.4359@l		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r5
	bl		pcx_vdb_pack_msg
#                        &pcx_CANdb_TransmitMessage3_in_port_ptr[0], &data[0],
#                        pcx_CANdb_TransmitMessage3_field_start_pos,
#                        pcx_CANdb_TransmitMessage3_field_width,
#                        pcx_CANdb_TransmitMessage3_field_is_signed,
#                        pcx_CANdb_TransmitMessage3_field_valtype,
#                        pcx_CANdb_TransmitMessage3_field_order,
#                        pcx_CANdb_TransmitMessage3_field_eng_min,
#                        pcx_CANdb_TransmitMessage3_field_eng_max,
#                        pcx_CANdb_TransmitMessage3_field_scale,
#                        pcx_CANdb_TransmitMessage3_field_offset, 0, 1, 5);
# 
#       /* Do a transmit every time we are called, (CT2) */
#       retval = pcx_transmit(pcx_CANdb_TransmitMessage3_msg_handle, data);
	.d2line		2804
	lha		r3,pcx_CANdb_TransmitMessage3_msg_handle@sdarx(r0)		# rtb_MultiportSwitch=r3
	diab.addi		r4,r1,176		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	bl		pcx_transmit
.Llo992:
	b		.L4369
.L4368:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		2807
.Llo598:
	diab.li		r3,0		# retval=r3
.L4369:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage3 = !retval;
	.d2line		2810
.Llo993:
	rlwinm		r0,r3,0,24,31		# rtb_MultiportSwitch=r0 retval=r3
	cntlzw		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	diab.srwi		r0,5		# rtb_MultiportSwitch=r0
	stb		r0,138(r27)		# rtb_MultiportSwitch=r0
	.section	.text_vle
.L5757:
#   }
# 
#   /* RelationalOperator: '<S46>/Relational Operator1' incorporates:
#    *  Constant: '<S32>/atvc_throttleNeutralPoint'
#    */
#   rtb_Compare = (atv_throttleX1000 >= atvc_throttleNeutralPoint);
	.d2line		2816
.Llo797:
	lhz		r0,atv_throttleX1000@sdarx(r0)		# rtb_MultiportSwitch=r0
	.d2line		2824
.Llo798:
	diab.addi		r4,r1,60		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	lhz		r6,4(r31)
	diab.li		r3,30		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	.d2line		2825
	e_lis		r24,16544		# rtb_MultiportSwitch=r24
# 
#   /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput8' */
#   /* S-Function Block: <S7>/pai_BasicAnalogInput8
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XE4, &adc, FALSE);
	se_cmp		r0,r6		# rtb_MultiportSwitch=r0
	mfcr		r25		# u0_tmp=r25
.Llo599:
	bl		pax_adc_input
.Llo799:
	se_srwi		r25,31		# u0_tmp=r25 u0_tmp=r25
#     atv_xe4_raw_ain = (adc * 5.0) / 4096.0;
.Llo733:
	lha		r0,60(r1)		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	xori		r25,r25,1		# rtb_Compare=r25 u0_tmp=r25
.Llo600:
	efscfsi		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	efsmul		r0,r0,r24		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r24
	efsmul		r4,r0,r29		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r0
	stw		r4,atv_xe4_raw_ain@sdarx(r0)		# rtb_MultiportSwitch=r4
#   }
# 
#   /* Relay: '<S7>/Relay5' */
#   if (atv_xe4_raw_ain >= atvc_an_in_sel_th + atvc_an_in_sel_his) {
	.d2line		2829
	lwz		r0,12(r31)		# rtb_MultiportSwitch=r0
	lwz		r3,8(r31)		# rtb_MultiportSwitch=r3
	efsadd		r0,r0,r3		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
	efscmplt		1,r4,r0		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r0
	bc		1,5,.L4371		# lt
#     ATV_DW.Relay5_Mode_e = true;
	.d2line		2830
.Llo800:
	diab.li		r0,1		# rtb_MultiportSwitch=r0
.Llo801:
	stb		r0,71(r28)		# rtb_MultiportSwitch=r0
	b		.L4372
.L4371:
#   } else {
#     if (atv_xe4_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
	.d2line		2832
	lwz		r0,12(r31)		# rtb_MultiportSwitch=r0
	lwz		r3,8(r31)		# rtb_MultiportSwitch=r3
	efssub		r0,r0,r3		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
	efscmpgt		1,r4,r0		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r0
	bc		1,5,.L4372		# gt
#       ATV_DW.Relay5_Mode_e = false;
	.d2line		2833
.Llo802:
	diab.li		r0,0		# rtb_MultiportSwitch=r0
.Llo803:
	stb		r0,71(r28)		# rtb_MultiportSwitch=r0
.L4372:
#     }
#   }
# 
#   atv_4wd_din = !ATV_DW.Relay5_Mode_e;
	.d2line		2837
	lbz		r0,71(r28)		# rtb_MultiportSwitch=r0
	cntlzw		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	diab.srwi		r0,5		# rtb_MultiportSwitch=r0
	stb		r0,atv_4wd_din@sdarx(r0)		# rtb_MultiportSwitch=r0
# 
#   /* End of Relay: '<S7>/Relay5' */
# 
#   /* Switch: '<S32>/Switch4' incorporates:
#    *  Constant: '<S32>/Constant4'
#    */
#   if (atv_4wd_din) {
	.d2line		2844
	e_andi.		r0,r0,255		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	bc		1,2,.L4391	# eq
#     /* Switch: '<S46>/Switch5' incorporates:
#      *  Constant: '<S46>/Constant2'
#      */
#     if (ATV_B.en_inv_front_out) {
	.d2line		2848
	lbz		r0,174(r27)		# rtb_MultiportSwitch=r0
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	bc		1,2,.L4389	# eq
#       /* Switch: '<S46>/Switch2' incorporates:
#        *  Constant: '<S46>/Constant1'
#        */
#       if (atv_throttleRegOff) {
	.d2line		2852
	lbz		r0,atv_throttleRegOff@sdarx(r0)		# rtb_MultiportSwitch=r0
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	bc		1,2,.L4387	# eq
#         /* Switch: '<S46>/Switch4' incorporates:
#          *  Constant: '<S51>/Constant'
#          */
#         if (rtb_Compare) {
	.d2line		2856
	se_cmpi		r25,0		# rtb_Compare=r25
	bc		1,2,.L4385	# eq
#           atv_regen_x1000_front = 0U;
	.d2line		2857
	diab.li		r0,0		# rtb_MultiportSwitch=r0
	b		.L4392
.L4385:
#         } else {
#           /* Gain: '<S50>/Gain2' */
#           tmp_3 = 1000U;
	.d2line		2860
	diab.li		r4,1000		# rtb_MultiportSwitch=r4
	.d2line		2867
	lhz		r3,atv_throttleX1000@sdarx(r0)		# rtb_MultiportSwitch=r3
# 
#           /* Sum: '<S50>/Add' incorporates:
#            *  Constant: '<S32>/atvc_throttleNeutralPoint'
#            *  DataTypeConversion: '<S50>/Cast'
#            *  DataTypeConversion: '<S50>/Cast1'
#            */
#           u0_tmp = atvc_throttleNeutralPoint - atv_throttleX1000;
.Llo601:
	stw		r4,72(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	lhz		r0,4(r31)		# rtb_MultiportSwitch=r0
	subf		r3,r3,r0		# u0_tmp=r3 rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r0
# 
#           /* Saturate: '<S50>/Saturation' incorporates:
#            *  Sum: '<S50>/Add'
#            */
#           if (u0_tmp > 1000) {
	.d2line		2872
	cmpi		0,0,r3,1000		# u0_tmp=r3
	bc		0,1,.L4375	# le
#             /* Gain: '<S50>/Gain2' */
#             tmp_4 = 1000U;
	.d2line		2874
.Llo804:
	b		.L4376
.L4375:
.Llo805:
	se_cmpi		r3,0		# u0_tmp=r3
	isel		r4,0,r3,0		# rtb_MultiportSwitch=r4 u0_tmp=r3
.L4376:
#           } else if (u0_tmp < 0) {
#             /* Gain: '<S50>/Gain2' */
#             tmp_4 = 0U;
#           } else {
#             /* Gain: '<S50>/Gain2' */
#             tmp_4 = (uint32_T)u0_tmp;
#           }
# 
#           /* End of Saturate: '<S50>/Saturation' */
# 
#           /* Gain: '<S50>/Gain2' */
#           sMultiWordMul(&tmp_3, 1, &tmp_4, 1, &tmp_0.chunks[0U], 2);
.Llo602:
	stw		r4,68(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	.d2line		2886
.Llo806:
	diab.addi		r3,r1,72		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r1
	diab.addi		r5,r1,68		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r1
	diab.addi		r7,r1,104		# rtb_PumpACtrl=r7 rtb_MultiportSwitch=r1
	diab.li		r8,2
	diab.li		r6,1
	diab.li		r4,1		# rtb_MultiportSwitch=r4
	bl		sMultiWordMul
# 
#           /* Product: '<S50>/Divide3' incorporates:
#            *  Constant: '<S32>/atvc_throttleNeutralPoint'
#            *  DataTypeConversion: '<S50>/Cast1'
#            */
#           if (atvc_throttleNeutralPoint == 0) {
	.d2line		2892
	lhz		r0,4(r31)		# rtb_MultiportSwitch=r0
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	bc		0,2,.L4379	# ne
#             tmp_8 = tmp_g;
	.d2line		2893
	diab.li		r7,tmp_g.4196@sdarx		# rtb_PumpACtrl=r7
	.d2line		2894
.Llo858:
	diab.addi		r3,r1,104		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r1
	lwz		r4,0(r7)		# rtb_MultiportSwitch=r4 rtb_PumpACtrl=r7
	lwz		r5,4(r7)		# rtb_MultiportSwitch=r5 rtb_PumpACtrl=r7
	stw		r4,80(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
#             if (sMultiWordGe(&tmp_0.chunks[0U], &tmp_8.chunks[0U], 2)) {
	stw		r5,84(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r5
	diab.addi		r4,r1,80		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r5,2		# rtb_MultiportSwitch=r5
	bl		sMultiWordGe
.Llo859:
	e_andi.		r3,r3,255		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	bc		1,2,.L4918	# eq
	b		.L4518
.L4379:
#               u0_tmp = MAX_int32_T;
#             } else {
#               u0_tmp = MIN_int32_T;
#             }
#           } else {
#             sLong2MultiWord(atvc_throttleNeutralPoint, &tmp_8.chunks[0U], 2);
	.d2line		2900
	lhz		r3,4(r31)		# rtb_MultiportSwitch=r3
	diab.addi		r4,r1,80		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r5,2		# rtb_MultiportSwitch=r5
	.d2line		2901
	diab.addi		r7,r1,128		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
#             sMultiWordDivFloor(&tmp_0.chunks[0U], 2, &tmp_8.chunks[0U], 2,
	bl		sLong2MultiWord
	diab.addi		r9,r1,88		# rtb_MultiportSwitch=r1
	stw		r7,8(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r7
	diab.addi		r0,r1,152		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	diab.li		r4,2		# rtb_MultiportSwitch=r4
	stw		r0,16(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	stw		r4,12(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	diab.li		r8,3
	stw		r4,20(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	diab.li		r6,2
	diab.addi		r3,r1,104		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r1
	diab.addi		r5,r1,80		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r1
	diab.addi		r7,r1,248		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
	mr		r10,r4		# rtb_MultiportSwitch=r10
	bl		sMultiWordDivFloor
	.d2line		390
	lwz		r0,248(r1)		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
#                                &tmp_c.chunks[0U], 3, &tmp_9.chunks[0U], 2,
#                                &tmp_b.chunks[0U], 2, &tmp_d.chunks[0U], 2);
#             u0_tmp = MultiWord2sLong(&tmp_c.chunks[0U]);
#           }
# 
#           /* Saturate: '<S50>/Saturation1' incorporates:
#            *  Product: '<S50>/Divide3'
#            */
#           if (u0_tmp > 1000) {
	.d2line		2910
	cmpi		0,0,r0,1000		# rtb_MultiportSwitch=r0
	bc		0,1,.L4383	# le
.L4518:
#             atv_regen_x1000_front = 1000U;
	.d2line		2911
	diab.li		r0,1000		# rtb_MultiportSwitch=r0
	b		.L4392
.L4383:
#           } else if (u0_tmp < 0) {
	.d2line		2912
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	bc		0,0,.L4392	# ge
.L4918:
#             atv_regen_x1000_front = 0U;
	.d2line		2913
	diab.li		r0,0		# rtb_MultiportSwitch=r0
	b		.L4392
.L4381:
#           } else {
#             atv_regen_x1000_front = (uint16_T)u0_tmp;
.L4387:
#           }
# 
#           /* End of Saturate: '<S50>/Saturation1' */
#         }
# 
#         /* End of Switch: '<S46>/Switch4' */
#       } else {
#         atv_regen_x1000_front = 0U;
	.d2line		2923
	diab.li		r0,0		# rtb_MultiportSwitch=r0
	b		.L4392
.L4389:
#       }
# 
#       /* End of Switch: '<S46>/Switch2' */
#     } else {
#       atv_regen_x1000_front = 0U;
	.d2line		2928
	diab.li		r0,0		# rtb_MultiportSwitch=r0
	b		.L4392
.L4391:
#     }
# 
#     /* End of Switch: '<S46>/Switch5' */
#   } else {
#     atv_regen_x1000_front = 0U;
	.d2line		2933
	diab.li		r0,0		# rtb_MultiportSwitch=r0
.L4392:
#   }
# 
#   /* End of Switch: '<S32>/Switch4' */
# 
#   /* Switch: '<S46>/Switch1' incorporates:
#    *  Constant: '<S46>/Constant3'
#    */
#   if (ATV_B.en_inv_front_out) {
	.d2line		2857
	sth		r0,atv_regen_x1000_front@sdarx(r0)		# rtb_MultiportSwitch=r0
	.d2line		2941
	lbz		r0,174(r27)		# rtb_MultiportSwitch=r0
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	bc		1,2,.L4404	# eq
#     /* Switch: '<S46>/Switch3' incorporates:
#      *  Constant: '<S50>/Constant'
#      */
#     if (rtb_Compare) {
	.d2line		2945
	se_cmpi		r25,0		# rtb_Compare=r25
	bc		1,2,.L4402	# eq
	.d2line		2951
.Llo734:
	lhz		r25,4(r31)		# rtb_MultiportSwitch=r25
#       /* Sum: '<S51>/Add1' incorporates:
#        *  Constant: '<S32>/atvc_throttleNeutralPoint'
#        *  Constant: '<S51>/Constant1'
#        *  DataTypeConversion: '<S51>/Cast'
#        */
#       u0_tmp = 1000 - atvc_throttleNeutralPoint;
	.d2line		2945
.Llo603:
	diab.li		r4,1000		# rtb_MultiportSwitch=r4
	.d2line		2961
	lhz		r0,atv_throttleX1000@sdarx(r0)		# rtb_MultiportSwitch=r0
# 
#       /* Gain: '<S51>/Gain2' */
#       tmp_3 = 1000U;
	.d2line		2954
	stw		r4,72(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
# 
#       /* Sum: '<S51>/Add' incorporates:
#        *  Constant: '<S32>/atvc_throttleNeutralPoint'
#        *  DataTypeConversion: '<S51>/Cast'
#        *  DataTypeConversion: '<S51>/Cast1'
#        */
#       u0_tmp_0 = atv_throttleX1000 - atvc_throttleNeutralPoint;
	subf		r25,r25,r4		# u0_tmp=r25 rtb_MultiportSwitch=r25 rtb_MultiportSwitch=r4
	lhz		r3,4(r31)		# rtb_MultiportSwitch=r3
.Llo589:
	subf		r3,r3,r0		# u0_tmp_0=r3 rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r0
# 
#       /* Saturate: '<S51>/Saturation' incorporates:
#        *  Sum: '<S51>/Add'
#        */
#       if (u0_tmp_0 > 1000) {
	.d2line		2966
	cmpi		0,0,r3,1000		# u0_tmp_0=r3
	bc		0,1,.L4395	# le
#         /* Gain: '<S51>/Gain2' */
#         tmp_4 = 1000U;
	.d2line		2968
.Llo807:
	stw		r4,68(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
.Llo808:
	b		.L4396
.L4395:
	se_cmpi		r3,0		# u0_tmp_0=r3
	isel		r0,0,r3,0		# rtb_MultiportSwitch=r0 u0_tmp_0=r3
	stw		r0,68(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
.L4396:
#       } else if (u0_tmp_0 < 0) {
#         /* Gain: '<S51>/Gain2' */
#         tmp_4 = 0U;
#       } else {
#         /* Gain: '<S51>/Gain2' */
#         tmp_4 = (uint32_T)u0_tmp_0;
#       }
# 
#       /* End of Saturate: '<S51>/Saturation' */
# 
#       /* Gain: '<S51>/Gain2' */
#       sMultiWordMul(&tmp_3, 1, &tmp_4, 1, &tmp.chunks[0U], 2);
	.d2line		2980
.Llo590:
	diab.li		r4,1		# rtb_MultiportSwitch=r4
.Llo809:
	diab.addi		r3,r1,72		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r1
	diab.addi		r5,r1,68		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r1
	diab.addi		r7,r1,136		# rtb_PumpACtrl=r7 rtb_MultiportSwitch=r1
	diab.li		r8,2
	diab.li		r6,1
	bl		sMultiWordMul
	diab.li		r0,1		# rtb_MultiportSwitch=r0
	se_cmpi		r25,0		# u0_tmp=r25
# 4273
	.d2line		2992
	diab.addi		r4,r1,88		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
# 
#       /* Saturate: '<S51>/Saturation2' incorporates:
#        *  Sum: '<S51>/Add1'
#        */
#       if (u0_tmp < 1) {
#         u0_tmp = 1;
#       }
# 
#       /* End of Saturate: '<S51>/Saturation2' */
# 
#       /* Product: '<S51>/Divide3' */
#       sLong2MultiWord(u0_tmp, &tmp_9.chunks[0U], 2);
	diab.li		r5,2		# rtb_MultiportSwitch=r5
	isel		r3,r25,r0,1		# rtb_MultiportSwitch=r3 u0_tmp=r25 rtb_MultiportSwitch=r0
	.d2line		2993
	diab.addi		r7,r1,260		# rtb_PumpACtrl=r7 rtb_MultiportSwitch=r1
#       sMultiWordDivFloor(&tmp.chunks[0U], 2, &tmp_9.chunks[0U], 2,
	bl		sLong2MultiWord
	diab.addi		r9,r1,128		# rtb_MultiportSwitch=r1
	diab.addi		r0,r1,152		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	diab.li		r4,2		# rtb_MultiportSwitch=r4
	stw		r0,8(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	diab.li		r8,3
	stw		r4,12(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	diab.li		r6,2
	diab.addi		r0,r1,216		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	stw		r4,20(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	stw		r0,16(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	diab.addi		r3,r1,136		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r1
	diab.addi		r5,r1,88		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r1
	mr		r10,r4		# rtb_MultiportSwitch=r10
	bl		sMultiWordDivFloor
	.d2line		390
	lwz		r0,260(r1)		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
#                          &tmp_e.chunks[0U], 3, &tmp_b.chunks[0U], 2,
#                          &tmp_d.chunks[0U], 2, &tmp_f.chunks[0U], 2);
#       u0_tmp = MultiWord2sLong(&tmp_e.chunks[0U]);
# 
#       /* Saturate: '<S51>/Saturation1' incorporates:
#        *  Product: '<S51>/Divide3'
#        */
#       if (u0_tmp > 1000) {
	.d2line		3001
	cmpi		0,0,r0,1000		# rtb_MultiportSwitch=r0
	bc		0,1,.L4400	# le
#         atv_motoring_x1000_front = 1000U;
	.d2line		3002
.Llo604:
	diab.li		r0,1000		# rtb_MultiportSwitch=r0
	b		.L4405
.L4400:
	rlwinm		r3,r0,0,16,31		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r0
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	isel		r0,0,r3,0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
	b		.L4405
.L4402:
#       } else if (u0_tmp < 0) {
#         atv_motoring_x1000_front = 0U;
#       } else {
#         atv_motoring_x1000_front = (uint16_T)u0_tmp;
#       }
# 
#       /* End of Saturate: '<S51>/Saturation1' */
#     } else {
#       atv_motoring_x1000_front = 0U;
	.d2line		3011
	diab.li		r0,0		# rtb_MultiportSwitch=r0
	b		.L4405
.L4404:
#     }
# 
#     /* End of Switch: '<S46>/Switch3' */
#   } else {
#     atv_motoring_x1000_front = 0U;
	.d2line		3016
.Llo735:
	diab.li		r0,0		# rtb_MultiportSwitch=r0
.L4405:
#   }
# 
#   /* End of Switch: '<S46>/Switch1' */
# 
#   /* Switch: '<S32>/Switch3' incorporates:
#    *  Constant: '<S32>/Constant2'
#    */
#   if (atv_4wd_din) {
#     atv_motoring_x1000_front_limited = atv_motoring_x1000_front;
	.d2line		3002
.Llo736:
	sth		r0,atv_motoring_x1000_front@sdarx(r0)		# rtb_MultiportSwitch=r0
	.d2line		3025
	lbz		r0,atv_4wd_din@sdarx(r0)		# rtb_MultiportSwitch=r0
	lhz		r3,atv_motoring_x1000_front@sdarx(r0)		# rtb_MultiportSwitch=r3
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	isel		r0,0,r3,2		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
	sth		r0,atv_motoring_x1000_front_limited@sdarx(r0)		# rtb_MultiportSwitch=r0
#   } else {
#     atv_motoring_x1000_front_limited = 0U;
#   }
# 
#   /* End of Switch: '<S32>/Switch3' */
# 
#   /* Switch: '<S49>/Switch2' incorporates:
#    *  Constant: '<S32>/atvc_throttleMaxLimit'
#    *  RelationalOperator: '<S49>/LowerRelop1'
#    */
#   if (atv_motoring_x1000_front_limited > atvc_throttleMaxLimit) {
	.d2line		3036
	lhz		r3,6(r31)		# rtb_MultiportSwitch=r3
	rlwinm		r0,r0,0,16,31		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	se_cmp		r0,r3		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
	bc		0,1,.L4408	# le
#     atv_motoring_x1000_front_limited = atvc_throttleMaxLimit;
	.d2line		3037
	lhz		r0,6(r31)		# rtb_MultiportSwitch=r0
	sth		r0,atv_motoring_x1000_front_limited@sdarx(r0)		# rtb_MultiportSwitch=r0
.L4408:
	.section	.text_vle
.L5796:
#   }
# 
#   /* End of Switch: '<S49>/Switch2' */
# 
#   /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage4' */
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage4
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   {
#     U8 data[8];
#     BOOL retval;
#     F32 pcx_CANdb_TransmitMessage4_in_port_buffer[4];
#     F32 * pcx_CANdb_TransmitMessage4_in_port_ptr[4];
#     static const U8 pcx_CANdb_TransmitMessage4_field_start_pos[4] = {
#       48, 32, 16, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage4_field_width[4] = {
#       16, 16, 16, 16, };
# 
#     static const U8 pcx_CANdb_TransmitMessage4_field_is_signed[4] = {
#       0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage4_field_valtype[4] = {
#       0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage4_field_order[4] = {
#       1, 1, 1, 1, };
# 
#     static const F32 pcx_CANdb_TransmitMessage4_field_eng_min[4] = {
#       0.0, 0.0, 0.0, 0.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage4_field_eng_max[4] = {
#       1000.0, 1000.0, 20000.0, 20000.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage4_field_scale[4] = {
#       1.0, 1.0, 1.0, 1.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage4_field_offset[4] = {
#       0.0, 0.0, 0.0, 0.0, };
# 
#     if (pcx_CANdb_TransmitMessage4_msg_handle != PCX_CONFIG_ERROR) {
	.d2line		3078
	lha		r0,pcx_CANdb_TransmitMessage4_msg_handle@sdarx(r0)		# rtb_MultiportSwitch=r0
	e_cmph16i	r0,-1		# rtb_MultiportSwitch=r0
	bc		1,2,.L4418	# eq
#       pcx_CANdb_TransmitMessage4_in_port_buffer[0] = atv_regen_x1000_front;
	.d2line		3079
	lhz		r3,atv_regen_x1000_front@sdarx(r0)		# rtb_MultiportSwitch=r3
	.d2line		3080
	diab.addi		r5,r1,288		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r1
	.d2line		3082
	lhz		r0,atv_motoring_x1000_front_limited@sdarx(r0)		# rtb_MultiportSwitch=r0
#       pcx_CANdb_TransmitMessage4_in_port_ptr[0] =
	.d2line		3084
	diab.addi		r4,r1,292		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	efscfui		r3,r3		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
#         &pcx_CANdb_TransmitMessage4_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage4_in_port_buffer[1] =
	stw		r5,336(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r5
	stw		r4,340(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	.d2line		3092
	lis		r11,pcx_CANdb_TransmitMessage4_field_eng_max.4415@ha		# rtb_MultiportSwitch=r11
#         atv_motoring_x1000_front_limited;
#       pcx_CANdb_TransmitMessage4_in_port_ptr[1] =
	.d2line		3079
	stw		r3,288(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
	.d2line		3087
	diab.addi		r5,r1,296		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r1
#         &pcx_CANdb_TransmitMessage4_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage4_in_port_buffer[2] = ATV_B.Cast2;
	e_add16i		r11,r11,pcx_CANdb_TransmitMessage4_field_eng_max.4415@l		# rtb_MultiportSwitch=r11 rtb_MultiportSwitch=r11
	lis		r12,pcx_CANdb_TransmitMessage4_field_scale.4416@ha
	.d2line		3082
	efscfui		r3,r0		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r0
	lis		r25,pcx_CANdb_TransmitMessage4_field_offset.4417@ha		# u0_tmp=r25
#       pcx_CANdb_TransmitMessage4_in_port_ptr[2] =
.Llo605:
	diab.li		r21,0
	diab.li		r22,1
	stw		r3,292(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
	diab.li		r23,4		# rtb_MultiportSwitch=r23
#         &pcx_CANdb_TransmitMessage4_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage4_in_port_buffer[3] = ATV_B.Cast1;
	e_add16i		r12,r12,pcx_CANdb_TransmitMessage4_field_scale.4416@l
	e_add16i		r25,r25,pcx_CANdb_TransmitMessage4_field_offset.4417@l		# u0_tmp=r25 u0_tmp=r25
	.d2line		3086
	lhz		r4,68(r27)		# rtb_MultiportSwitch=r4
#       pcx_CANdb_TransmitMessage4_in_port_ptr[3] =
	.d2line		3090
	diab.addi		r0,r1,300		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	.d2line		3092
	lis		r7,pcx_CANdb_TransmitMessage4_field_is_signed.4411@ha		# rtb_PumpACtrl=r7
#         &pcx_CANdb_TransmitMessage4_in_port_buffer[3];
#       pcx_vdb_pack_msg((const F32 * const *)
.Llo860:
	lis		r8,pcx_CANdb_TransmitMessage4_field_valtype.4412@ha
	efscfui		r6,r4		# rtb_MultiportSwitch=r4
	.d2line		3087
	stw		r5,344(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r5
	lis		r9,pcx_CANdb_TransmitMessage4_field_order.4413@ha
	lis		r10,pcx_CANdb_TransmitMessage4_field_eng_min.4414@ha		# rtb_MultiportSwitch=r10
	stw		r6,296(r1)		# rtb_MultiportSwitch=r1
	lis		r5,pcx_CANdb_TransmitMessage4_field_start_pos.4409@ha		# rtb_MultiportSwitch=r5
	diab.addi		r3,r1,336		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r1
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage4_field_is_signed.4411@l		# rtb_PumpACtrl=r7 rtb_PumpACtrl=r7
	.d2line		3089
.Llo861:
	lhz		r24,70(r27)		# rtb_MultiportSwitch=r24
	lis		r6,pcx_CANdb_TransmitMessage4_field_width.4410@ha
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage4_field_valtype.4412@l
	diab.addi		r4,r1,184		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	stw		r11,8(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r11
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage4_field_order.4413@l
	stw		r12,12(r1)		# rtb_MultiportSwitch=r1
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage4_field_eng_min.4414@l		# rtb_MultiportSwitch=r10 rtb_MultiportSwitch=r10
	efscfui		r11,r24		# rtb_MultiportSwitch=r11 rtb_MultiportSwitch=r24
	stw		r25,16(r1)		# rtb_MultiportSwitch=r1 u0_tmp=r25
	stw		r21,20(r1)		# rtb_MultiportSwitch=r1
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage4_field_start_pos.4409@l		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r5
	stw		r22,24(r1)		# rtb_MultiportSwitch=r1
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage4_field_width.4410@l
	stw		r23,28(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r23
	stw		r11,300(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r11
	stw		r0,348(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	bl		pcx_vdb_pack_msg
#                        &pcx_CANdb_TransmitMessage4_in_port_ptr[0], &data[0],
#                        pcx_CANdb_TransmitMessage4_field_start_pos,
#                        pcx_CANdb_TransmitMessage4_field_width,
#                        pcx_CANdb_TransmitMessage4_field_is_signed,
#                        pcx_CANdb_TransmitMessage4_field_valtype,
#                        pcx_CANdb_TransmitMessage4_field_order,
#                        pcx_CANdb_TransmitMessage4_field_eng_min,
#                        pcx_CANdb_TransmitMessage4_field_eng_max,
#                        pcx_CANdb_TransmitMessage4_field_scale,
#                        pcx_CANdb_TransmitMessage4_field_offset, 0, 1, 4);
# 
#       /* Do a transmit every time we are called, (CT2) */
#       retval = pcx_transmit(pcx_CANdb_TransmitMessage4_msg_handle, data);
	.d2line		3105
	lha		r3,pcx_CANdb_TransmitMessage4_msg_handle@sdarx(r0)		# rtb_MultiportSwitch=r3
	diab.addi		r4,r1,184		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	bl		pcx_transmit
.Llo994:
	b		.L4419
.L4418:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		3108
.Llo606:
	diab.li		r3,0		# retval=r3
.L4419:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage4 = !retval;
	.d2line		3111
.Llo995:
	rlwinm		r0,r3,0,24,31		# rtb_MultiportSwitch=r0 retval=r3
	cntlzw		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	diab.srwi		r0,5		# rtb_MultiportSwitch=r0
	stb		r0,139(r27)		# rtb_MultiportSwitch=r0
	.section	.text_vle
.L5797:
	.section	.text_vle
.L5836:
#   }
# 
#   /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage5' incorporates:
#    *  Constant: '<S1>/atvc_maxDischCurr'
#    *  Constant: '<S1>/atvc_maxRegenCurr'
#    */
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage5
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   {
#     U8 data[8];
#     BOOL retval;
#     F32 pcx_CANdb_TransmitMessage5_in_port_buffer[5];
#     F32 * pcx_CANdb_TransmitMessage5_in_port_ptr[5];
#     static const U8 pcx_CANdb_TransmitMessage5_field_start_pos[5] = {
#       34, 33, 32, 16, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage5_field_width[5] = {
#       1, 1, 1, 16, 16, };
# 
#     static const U8 pcx_CANdb_TransmitMessage5_field_is_signed[5] = {
#       0, 0, 0, 1, 1, };
# 
#     static const U8 pcx_CANdb_TransmitMessage5_field_valtype[5] = {
#       0, 0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage5_field_order[5] = {
#       1, 1, 1, 1, 1, };
# 
#     static const F32 pcx_CANdb_TransmitMessage5_field_eng_min[5] = {
#       0.0, 0.0, 0.0, -32768.0, 0.0,
#     };
# 
#     static const F32 pcx_CANdb_TransmitMessage5_field_eng_max[5] = {
#       1.0, 1.0, 1.0, 0.0, 32767.0,
#     };
# 
#     static const F32 pcx_CANdb_TransmitMessage5_field_scale[5] = {
#       1.0, 1.0, 1.0, 1.0, 1.0,
#     };
# 
#     static const F32 pcx_CANdb_TransmitMessage5_field_offset[5] = {
#       0.0, 0.0, 0.0, 0.0, 0.0,
#     };
# 
#     if (pcx_CANdb_TransmitMessage5_msg_handle != PCX_CONFIG_ERROR) {
	.d2line		3157
.Llo996:
	lha		r0,pcx_CANdb_TransmitMessage5_msg_handle@sdarx(r0)		# rtb_MultiportSwitch=r0
	e_cmph16i	r0,-1		# rtb_MultiportSwitch=r0
	bc		1,2,.L4429	# eq
#       pcx_CANdb_TransmitMessage5_in_port_buffer[0] = atv_fs1_out;
	.d2line		3158
	lbz		r3,atv_fs1_out@sdarx(r0)		# rtb_MultiportSwitch=r3
	.d2line		3159
	diab.addi		r0,r1,388		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	.d2line		3161
	lbz		r5,atv_rwd_mode_in@sdarx(r0)		# rtb_MultiportSwitch=r5
#       pcx_CANdb_TransmitMessage5_in_port_ptr[0] =
	.d2line		3162
	diab.addi		r4,r1,392		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	efscfui		r6,r3		# rtb_MultiportSwitch=r3
#         &pcx_CANdb_TransmitMessage5_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage5_in_port_buffer[1] = atv_rwd_mode_in;
	stw		r0,448(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	stw		r4,452(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	.d2line		3173
	lis		r11,pcx_CANdb_TransmitMessage5_field_eng_max.4426@ha		# rtb_MultiportSwitch=r11
#       pcx_CANdb_TransmitMessage5_in_port_ptr[1] =
	.d2line		3164
	lbz		r3,atv_fwd_mode_in@sdarx(r0)		# rtb_MultiportSwitch=r3
	efscfui		r5,r5		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r5
#         &pcx_CANdb_TransmitMessage5_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage5_in_port_buffer[2] = atv_fwd_mode_in;
	.d2line		3165
	diab.addi		r0,r1,396		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	.d2line		3158
	stw		r6,388(r1)		# rtb_MultiportSwitch=r1
	efscfui		r3,r3		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
#       pcx_CANdb_TransmitMessage5_in_port_ptr[2] =
	.d2line		3161
	stw		r5,392(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r5
	stw		r0,456(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
#         &pcx_CANdb_TransmitMessage5_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage5_in_port_buffer[3] = atvc_maxRegenCurr;
	.d2line		3168
	diab.addi		r4,r1,400		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	.d2line		3164
	stw		r3,396(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
	.d2line		3173
	e_add16i		r11,r11,pcx_CANdb_TransmitMessage5_field_eng_max.4426@l		# rtb_MultiportSwitch=r11 rtb_MultiportSwitch=r11
	lis		r12,pcx_CANdb_TransmitMessage5_field_scale.4427@ha
#       pcx_CANdb_TransmitMessage5_in_port_ptr[3] =
	lis		r25,pcx_CANdb_TransmitMessage5_field_offset.4428@ha		# u0_tmp=r25
	.d2line		3167
.Llo607:
	lhz		r3,24(r31)		# rtb_MultiportSwitch=r3
	diab.li		r22,0
	diab.li		r21,1
#         &pcx_CANdb_TransmitMessage5_in_port_buffer[3];
#       pcx_CANdb_TransmitMessage5_in_port_buffer[4] = atvc_maxDischCurr;
	diab.li		r23,5		# rtb_MultiportSwitch=r23
	efscfui		r5,r3		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r3
	stw		r4,460(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
#       pcx_CANdb_TransmitMessage5_in_port_ptr[4] =
	.d2line		3171
	diab.addi		r0,r1,404		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	e_add16i		r12,r12,pcx_CANdb_TransmitMessage5_field_scale.4427@l
#         &pcx_CANdb_TransmitMessage5_in_port_buffer[4];
#       pcx_vdb_pack_msg((const F32 * const *)
	stw		r5,400(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r5
	e_add16i		r25,r25,pcx_CANdb_TransmitMessage5_field_offset.4428@l		# u0_tmp=r25 u0_tmp=r25
	lis		r7,pcx_CANdb_TransmitMessage5_field_is_signed.4422@ha		# rtb_PumpACtrl=r7
.Llo862:
	lis		r8,pcx_CANdb_TransmitMessage5_field_valtype.4423@ha
	.d2line		3170
	lhz		r24,22(r31)		# rtb_MultiportSwitch=r24
	lis		r9,pcx_CANdb_TransmitMessage5_field_order.4424@ha
	lis		r10,pcx_CANdb_TransmitMessage5_field_eng_min.4425@ha		# rtb_MultiportSwitch=r10
	lis		r6,pcx_CANdb_TransmitMessage5_field_width.4421@ha
	stw		r11,8(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r11
	lis		r5,pcx_CANdb_TransmitMessage5_field_start_pos.4420@ha		# rtb_MultiportSwitch=r5
	stw		r12,12(r1)		# rtb_MultiportSwitch=r1
	diab.addi		r3,r1,448		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r1
	efscfui		r11,r24		# rtb_MultiportSwitch=r11 rtb_MultiportSwitch=r24
	stw		r25,16(r1)		# rtb_MultiportSwitch=r1 u0_tmp=r25
	stw		r22,20(r1)		# rtb_MultiportSwitch=r1
	diab.addi		r4,r1,192		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	stw		r21,24(r1)		# rtb_MultiportSwitch=r1
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage5_field_is_signed.4422@l		# rtb_PumpACtrl=r7 rtb_PumpACtrl=r7
.Llo863:
	stw		r23,28(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r23
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage5_field_valtype.4423@l
	stw		r11,404(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r11
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage5_field_order.4424@l
	stw		r0,464(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage5_field_eng_min.4425@l		# rtb_MultiportSwitch=r10 rtb_MultiportSwitch=r10
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage5_field_width.4421@l
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage5_field_start_pos.4420@l		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r5
	bl		pcx_vdb_pack_msg
#                        &pcx_CANdb_TransmitMessage5_in_port_ptr[0], &data[0],
#                        pcx_CANdb_TransmitMessage5_field_start_pos,
#                        pcx_CANdb_TransmitMessage5_field_width,
#                        pcx_CANdb_TransmitMessage5_field_is_signed,
#                        pcx_CANdb_TransmitMessage5_field_valtype,
#                        pcx_CANdb_TransmitMessage5_field_order,
#                        pcx_CANdb_TransmitMessage5_field_eng_min,
#                        pcx_CANdb_TransmitMessage5_field_eng_max,
#                        pcx_CANdb_TransmitMessage5_field_scale,
#                        pcx_CANdb_TransmitMessage5_field_offset, 0, 1, 5);
# 
#       /* Do a transmit every time we are called, (CT2) */
#       retval = pcx_transmit(pcx_CANdb_TransmitMessage5_msg_handle, data);
	.d2line		3186
	lha		r3,pcx_CANdb_TransmitMessage5_msg_handle@sdarx(r0)		# rtb_MultiportSwitch=r3
	diab.addi		r4,r1,192		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	bl		pcx_transmit
.Llo997:
	b		.L4430
.L4429:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		3189
.Llo608:
	diab.li		r3,0		# retval=r3
.L4430:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage5 = !retval;
	.d2line		3192
.Llo998:
	rlwinm		r0,r3,0,24,31		# rtb_MultiportSwitch=r0 retval=r3
	cntlzw		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	diab.srwi		r0,5		# rtb_MultiportSwitch=r0
	stb		r0,140(r27)		# rtb_MultiportSwitch=r0
	.section	.text_vle
.L5837:
#   }
# 
#   /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput7' */
#   /* S-Function Block: <S7>/pai_BasicAnalogInput7
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XE2, &adc, FALSE);
	.d2line		3201
.Llo999:
	diab.addi		r4,r1,62		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,28		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	.d2line		3202
	e_lis		r25,16544		# u0_tmp=r25
#     atv_xe2_raw_ain = (adc * 5.0) / 4096.0;
.Llo609:
	bl		pax_adc_input
	lha		r0,62(r1)		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	efscfsi		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	efsmul		r0,r0,r25		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0 u0_tmp=r25
	efsmul		r4,r0,r29		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r0
	stw		r4,atv_xe2_raw_ain@sdarx(r0)		# rtb_MultiportSwitch=r4
#   }
# 
#   /* Relay: '<S7>/Relay4' */
#   if (atv_xe2_raw_ain >= atvc_an_in_sel_th + atvc_an_in_sel_his) {
	.d2line		3206
	lwz		r0,12(r31)		# rtb_MultiportSwitch=r0
	lwz		r3,8(r31)		# rtb_MultiportSwitch=r3
	efsadd		r0,r0,r3		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
	efscmplt		1,r4,r0		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r0
	bc		1,5,.L4432		# lt
#     ATV_DW.Relay4_Mode_b = true;
	.d2line		3207
.Llo610:
	diab.li		r0,1		# rtb_MultiportSwitch=r0
.Llo810:
	stb		r0,72(r28)		# rtb_MultiportSwitch=r0
	b		.L4433
.L4432:
#   } else {
#     if (atv_xe2_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
	.d2line		3209
	lwz		r0,12(r31)		# rtb_MultiportSwitch=r0
	lwz		r3,8(r31)		# rtb_MultiportSwitch=r3
	efssub		r0,r0,r3		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
	efscmpgt		1,r4,r0		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r0
	bc		1,5,.L4433		# gt
#       ATV_DW.Relay4_Mode_b = false;
	.d2line		3210
.Llo811:
	diab.li		r0,0		# rtb_MultiportSwitch=r0
.Llo812:
	stb		r0,72(r28)		# rtb_MultiportSwitch=r0
.L4433:
#     }
#   }
# 
#   atv_apu_req_in = !ATV_DW.Relay4_Mode_b;
	.d2line		3214
	lbz		r0,72(r28)		# rtb_MultiportSwitch=r0
	cntlzw		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	diab.srwi		r0,5		# rtb_MultiportSwitch=r0
	stb		r0,atv_apu_req_in@sdarx(r0)		# rtb_MultiportSwitch=r0
# 
#   /* End of Relay: '<S7>/Relay4' */
# 
#   /* RateTransition: '<Root>/Rate Transition24' */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		3219
	lwz		r3,0(r31)		# rtb_MultiportSwitch=r3
	lbz		r3,431(r3)		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	se_cmpi		r3,0		# rtb_MultiportSwitch=r3
	bc		1,2,.L4434	# eq
#     ATV_B.RateTransition24 = ATV_DW.RateTransition24_Buffer0;
	.d2line		3220
	lha		r3,30(r28)		# rtb_MultiportSwitch=r3
	sth		r3,90(r27)		# rtb_MultiportSwitch=r3
.L4434:
	lhz		r3,36(r28)		# rtb_MultiportSwitch=r3
#   }
# 
#   /* End of RateTransition: '<Root>/Rate Transition24' */
# 
#   /* Chart: '<S37>/VSMGestioneIbrido' incorporates:
#    *  Constant: '<S37>/atvc_RpmEndwarmUp'
#    *  RelationalOperator: '<S37>/Relational Operator'
#    */
#   if (ATV_DW.temporalCounter_i1 < 511U) {
	.d2line		3229
	cmpli		0,0,r3,511		# rtb_MultiportSwitch=r3
	bc		0,0,.L4435	# ge
#     ATV_DW.temporalCounter_i1++;
	.d2line		3230
	se_addi		r3,1		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	sth		r3,36(r28)		# rtb_MultiportSwitch=r3
.L4435:
	lbz		r3,54(r28)		# rtb_MultiportSwitch=r3
#   }
# 
#   if (ATV_DW.temporalCounter_i2_m < 255U) {
	.d2line		3233
	cmpli		0,0,r3,255		# rtb_MultiportSwitch=r3
	bc		0,0,.L4436	# ge
#     ATV_DW.temporalCounter_i2_m++;
	.d2line		3234
	se_addi		r3,1		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	stb		r3,54(r28)		# rtb_MultiportSwitch=r3
.L4436:
#   }
# 
#   /* Gateway: loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido */
#   ATV_DW.ReqGen_prev = ATV_DW.ReqGen_start;
	.d2line		3238
	lbz		r4,75(r28)		# rtb_MultiportSwitch=r4
	.d2line		3242
	lbz		r3,50(r28)		# rtb_MultiportSwitch=r3
#   ATV_DW.ReqGen_start = atv_apu_req_in;
	stb		r4,74(r28)		# rtb_MultiportSwitch=r4
# 
#   /* During: loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido */
#   if (ATV_DW.is_active_c2_ATV == 0U) {
	.d2line		3239
	stb		r0,75(r28)		# rtb_MultiportSwitch=r0
	se_cmpi		r3,0		# rtb_MultiportSwitch=r3
	bc		0,2,.L4452	# ne
#     ATV_DW.ReqGen_prev = atv_apu_req_in;
	.d2line		3243
	stb		r0,74(r28)		# rtb_MultiportSwitch=r0
# 
#     /* Entry: loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido */
#     ATV_DW.is_active_c2_ATV = 1U;
# 
#     /* Entry Internal: loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido */
#     /* Entry Internal 'GestioneIbrido': '<S72>:166' */
#     /* Transition: '<S72>:192' */
#     /* Entry Internal 'IceSM': '<S72>:191' */
#     /* Transition: '<S72>:280' */
#     ATV_DW.is_IceSM = ATV_IN_Inizializzazione;
# 
#     /* Entry 'Inizializzazione': '<S72>:279' */
#     ATV_DW.IceStartAttempCnt = 0.0;
	.d2line		3256
	diab.li		r3,0		# rtb_MultiportSwitch=r3
	stw		r3,0(r28)		# rtb_MultiportSwitch=r3
	.d2line		3246
	diab.li		r0,261		# rtb_MultiportSwitch=r0
	sth		r0,50(r28)		# rtb_MultiportSwitch=r0
#     atv_IceOn = false;
	.d2line		3257
	stb		r3,atv_IceOn@sdarx(r0)		# rtb_MultiportSwitch=r3
#     atv_IceKey_out = false;
	.d2line		3266
	diab.li		r0,1		# rtb_MultiportSwitch=r0
#     atv_IceShutdown_out = false;
	.d2line		3258
	stb		r3,atv_IceKey_out@sdarx(r0)		# rtb_MultiportSwitch=r3
#     atv_IceFault = false;
	.d2line		3259
	stb		r3,atv_IceShutdown_out@sdarx(r0)		# rtb_MultiportSwitch=r3
#     ATV_B.GenFwd_out = false;
	.d2line		3260
	stb		r3,atv_IceFault@sdarx(r0)		# rtb_MultiportSwitch=r3
#     atv_IceSM = 0U;
	.d2line		3261
	stb		r3,176(r27)		# rtb_MultiportSwitch=r3
# 
#     /* Entry Internal 'WarmUpIce': '<S72>:168' */
#     /* Transition: '<S72>:305' */
#     ATV_DW.is_WarmUpIce = ATV_IN_CoolUpTermico;
	.d2line		3262
	stb		r3,atv_IceSM@sdarx(r0)		# rtb_MultiportSwitch=r3
	.d2line		3266
	stb		r0,53(r28)		# rtb_MultiportSwitch=r0
	b		.L4453
.L4452:
# 
#     /* Entry 'CoolUpTermico': '<S72>:306' */
#   } else {
#     ATV_GestioneIbrido();
	.d2line		3270
	bl		ATV_GestioneIbrido
	lbz		r6,53(r28)		# rtb_MultiportSwitch=r6
# 
#     /* During 'WarmUpIce': '<S72>:168' */
#     switch (ATV_DW.is_WarmUpIce) {
	.d2line		3273
	se_cmpi		r6,1		# rtb_MultiportSwitch=r6
	bc		1,2,.L4438	# eq
.Llo813:
	se_cmpi		r6,2		# rtb_MultiportSwitch=r6
.Llo814:
	bc		1,2,.L4441	# eq
	se_cmpi		r6,3		# rtb_MultiportSwitch=r6
	bc		1,2,.L4444	# eq
.Llo815:
	b		.L4448
.L4438:
#      case ATV_IN_CoolUpTermico:
#       /* During 'CoolUpTermico': '<S72>:306' */
#       if (atv_IceOn) {
	.d2line		3276
.Llo816:
	lbz		r0,atv_IceOn@sdarx(r0)		# rtb_MultiportSwitch=r0
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	bc		1,2,.L4439	# eq
.Llo817:
	diab.li		r3,4		# rtb_MultiportSwitch=r3
	.d2line		3281
.Llo818:
	diab.li		r0,1		# rtb_MultiportSwitch=r0
#         /* Transition: '<S72>:307' */
#         ATV_DW.is_WarmUpIce = ATV_IN_WarmUpTermico;
# 
#         /* Entry 'WarmUpTermico': '<S72>:102' */
#         atv_IceRG = 1U;
	.d2line		3276
	stb		r3,53(r28)		# rtb_MultiportSwitch=r3
	stb		r0,atv_IceRG@sdarx(r0)		# rtb_MultiportSwitch=r0
#         ATV_B.footBrake_X1000_out = atvc_footBrakeWarmUp;
	.d2line		3282
	lis		r3,atvc_footBrakeWarmUp@ha		# rtb_MultiportSwitch=r3
	lhz		r0,atvc_footBrakeWarmUp@l(r3)		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
	sth		r0,74(r27)		# rtb_MultiportSwitch=r0
	b		.L4453
.L4439:
#       } else {
#         atv_IceRG = 0U;
	.d2line		3284
	diab.li		r0,0		# rtb_MultiportSwitch=r0
	stb		r0,atv_IceRG@sdarx(r0)		# rtb_MultiportSwitch=r0
#         ATV_B.footBrake_X1000_out = 0U;
	.d2line		3285
	sth		r0,74(r27)		# rtb_MultiportSwitch=r0
	.d2line		3287
	b		.L4453
.L4441:
#       }
#       break;
# 
#      case ATV_IN_RegenerativeMode:
#       /* During 'RegenerativeMode': '<S72>:167' */
#       if (!atv_IceOn) {
	.d2line		3291
.Llo819:
	lbz		r0,atv_IceOn@sdarx(r0)		# rtb_MultiportSwitch=r0
.Llo820:
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	bc		0,2,.L4453	# ne
.Llo821:
	diab.li		r0,1		# rtb_MultiportSwitch=r0
.Llo822:
	stb		r0,53(r28)		# rtb_MultiportSwitch=r0
	b		.L4453
.L4444:
#         /* Transition: '<S72>:315' */
#         /* Exit Internal 'RegenerativeMode': '<S72>:167' */
#         ATV_DW.is_WarmUpIce = ATV_IN_CoolUpTermico;
# 
#         /* Entry 'CoolUpTermico': '<S72>:306' */
#       } else {
#         /* During 'Regenerative': '<S72>:225' */
#       }
#       break;
# 
#      case ATV_IN_WaitReg:
#       /* During 'WaitReg': '<S72>:346' */
#       if (!atv_IceOn) {
	.d2line		3304
	lbz		r0,atv_IceOn@sdarx(r0)		# rtb_MultiportSwitch=r0
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	bc		0,2,.L4446	# ne
	diab.li		r0,1		# rtb_MultiportSwitch=r0
	stb		r0,53(r28)		# rtb_MultiportSwitch=r0
	b		.L4453
.L4446:
#         /* Transition: '<S72>:348' */
#         /* Transition: '<S72>:350' */
#         ATV_DW.is_WarmUpIce = ATV_IN_CoolUpTermico;
# 
#         /* Entry 'CoolUpTermico': '<S72>:306' */
#       } else {
#         if (ATV_DW.temporalCounter_i2_m >= 200U) {
	.d2line		3311
	lbz		r0,54(r28)		# rtb_MultiportSwitch=r0
	cmpli		0,0,r0,200		# rtb_MultiportSwitch=r0
	bc		1,0,.L4453	# lt
	diab.li		r0,2		# rtb_MultiportSwitch=r0
	.d2line		3320
	diab.li		r3,3		# rtb_MultiportSwitch=r3
#           /* Transition: '<S72>:347' */
#           ATV_DW.is_WarmUpIce = ATV_IN_RegenerativeMode;
# 
#           /* Entry 'RegenerativeMode': '<S72>:167' */
#           /* Entry Internal 'RegenerativeMode': '<S72>:167' */
#           /* Transition: '<S72>:344' */
#           /* Entry 'Regenerative': '<S72>:225' */
#           ATV_B.footBrake_X1000_out = atvc_footBrakeIce;
	.d2line		3311
	stb		r0,53(r28)		# rtb_MultiportSwitch=r0
	.d2line		3319
	lhz		r0,30(r31)		# rtb_MultiportSwitch=r0
#           atv_IceRG = 3U;
	sth		r0,74(r27)		# rtb_MultiportSwitch=r0
	stb		r3,atv_IceRG@sdarx(r0)		# rtb_MultiportSwitch=r3
	.d2line		3323
	b		.L4453
.L4448:
#         }
#       }
#       break;
# 
#      default:
#       /* During 'WarmUpTermico': '<S72>:102' */
#       if (ATV_B.RateTransition24 > atvc_RpmEndWarmUp) {
	.d2line		3327
	lha		r0,90(r27)		# rtb_MultiportSwitch=r0
	lhz		r3,28(r31)		# rtb_MultiportSwitch=r3
	se_cmp		r0,r3		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
	bc		0,1,.L4450	# le
#         /* Transition: '<S72>:106' */
#         ATV_DW.is_WarmUpIce = ATV_IN_WaitReg;
	.d2line		3329
	diab.li		r0,3		# rtb_MultiportSwitch=r0
	.d2line		3330
	diab.li		r3,0		# rtb_MultiportSwitch=r3
#         ATV_DW.temporalCounter_i2_m = 0U;
	stb		r0,53(r28)		# rtb_MultiportSwitch=r0
	stb		r3,54(r28)		# rtb_MultiportSwitch=r3
# 
#         /* Entry 'WaitReg': '<S72>:346' */
#         atv_IceRG = 2U;
	.d2line		3333
	diab.li		r0,2		# rtb_MultiportSwitch=r0
	stb		r0,atv_IceRG@sdarx(r0)		# rtb_MultiportSwitch=r0
	b		.L4453
.L4450:
#       } else {
#         if (!atv_IceOn) {
	.d2line		3335
	lbz		r0,atv_IceOn@sdarx(r0)		# rtb_MultiportSwitch=r0
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	bc		0,2,.L4453	# ne
#           /* Transition: '<S72>:316' */
#           ATV_DW.is_WarmUpIce = ATV_IN_CoolUpTermico;
	.d2line		3337
	diab.li		r0,1		# rtb_MultiportSwitch=r0
	stb		r0,53(r28)		# rtb_MultiportSwitch=r0
.L4453:
	lhz		r3,32(r28)		# rtb_MultiportSwitch=r3
	lhz		r5,74(r27)		# rtb_MultiportSwitch=r5
# 
#           /* Entry 'CoolUpTermico': '<S72>:306' */
#         }
#       }
#       break;
#     }
#   }
# 
#   /* End of Chart: '<S37>/VSMGestioneIbrido' */
# 
#   /* RateLimiter: '<S37>/Rate Limiter1' */
#   u0_tmp = ATV_B.footBrake_X1000_out - ATV_DW.PrevY_k;
	.d2line		3349
	subf		r0,r3,r5		# u0_tmp=r0 rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r5
#   if (u0_tmp > 1) {
	.d2line		3350
.Llo611:
	se_cmpi		r0,1		# u0_tmp=r0
	bc		0,1,.L4456	# le
#     atv_footBrake_X1000_out = (uint16_T)(ATV_DW.PrevY_k + 1);
	.d2line		3351
.Llo823:
	se_addi		r3,1		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
.Llo824:
	sth		r3,atv_footBrake_X1000_out@sdarx(r0)		# rtb_MultiportSwitch=r3
	b		.L4457
.L4456:
	diab.li		r4,65516		# rtb_MultiportSwitch=r4
	.d2line		3353
	cmpi		0,0,r0,-20		# u0_tmp=r0
#   } else if (u0_tmp < -20) {
#     atv_footBrake_X1000_out = (uint16_T)(ATV_DW.PrevY_k - 20);
	.d2line		3351
	se_add		r3,r4		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r4
	rlwinm		r3,r3,0,16,31		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
# 4284
	isel		r0,r3,r5,0		# u0_tmp=r0 rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r5
	sth		r0,atv_footBrake_X1000_out@sdarx(r0)		# u0_tmp=r0
.L4457:
	.d2line		3353
.Llo612:
	lhz		r0,atv_footBrake_X1000_out@sdarx(r0)		# rtb_MultiportSwitch=r0
#   } else {
#     atv_footBrake_X1000_out = ATV_B.footBrake_X1000_out;
#   }
# 
#   ATV_DW.PrevY_k = atv_footBrake_X1000_out;
	.d2line		3358
.Llo825:
	lhz		r3,34(r28)		# rtb_MultiportSwitch=r3
	sth		r0,32(r28)		# rtb_MultiportSwitch=r0
	lhz		r6,72(r27)		# rtb_MultiportSwitch=r6
# 
#   /* End of RateLimiter: '<S37>/Rate Limiter1' */
# 
#   /* RateLimiter: '<S37>/Rate Limiter' */
#   u0_tmp = ATV_B.tHROTTLEGen_X1000_out - ATV_DW.PrevY_l;
	.d2line		3363
	subf		r4,r3,r6		# u0_tmp=r4 rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r6
#   if (u0_tmp > 50) {
	.d2line		3364
.Llo613:
	cmpi		0,0,r4,50		# u0_tmp=r4
	bc		0,1,.L4460	# le
#     atv_tHROTTLEGen_X1000_out = (uint16_T)(ATV_DW.PrevY_l + 50);
	.d2line		3365
.Llo826:
	diab.addi		r3,r3,50		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
.Llo827:
	b		.L4461
.L4460:
	diab.li		r5,65486		# rtb_MultiportSwitch=r5
	.d2line		3367
	cmpi		0,0,r4,-50		# u0_tmp=r4
#   } else if (u0_tmp < -50) {
#     atv_tHROTTLEGen_X1000_out = (uint16_T)(ATV_DW.PrevY_l - 50);
	.d2line		3365
	se_add		r3,r5		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r5
	rlwinm		r3,r3,0,16,31		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
# 4284
	isel		r3,r3,r6,0		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r6
.L4461:
.Llo614:
	sth		r3,atv_tHROTTLEGen_X1000_out@sdarx(r0)		# rtb_MultiportSwitch=r3
	.d2line		3367
.Llo828:
	lhz		r4,atv_tHROTTLEGen_X1000_out@sdarx(r0)		# rtb_MultiportSwitch=r4
#   } else {
#     atv_tHROTTLEGen_X1000_out = ATV_B.tHROTTLEGen_X1000_out;
#   }
# 
#   ATV_DW.PrevY_l = atv_tHROTTLEGen_X1000_out;
	.d2line		3372
	sth		r4,34(r28)		# rtb_MultiportSwitch=r4
	.section	.text_vle
.L5876:
# 
#   /* End of RateLimiter: '<S37>/Rate Limiter' */
# 
#   /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage7' incorporates:
#    *  Constant: '<S1>/Constant2'
#    *  Constant: '<S1>/Constant3'
#    */
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage7
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   {
#     U8 data[8];
#     BOOL retval;
#     F32 pcx_CANdb_TransmitMessage7_in_port_buffer[4];
#     F32 * pcx_CANdb_TransmitMessage7_in_port_ptr[4];
#     static const U8 pcx_CANdb_TransmitMessage7_field_start_pos[4] = {
#       48, 32, 16, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage7_field_width[4] = {
#       16, 16, 16, 16, };
# 
#     static const U8 pcx_CANdb_TransmitMessage7_field_is_signed[4] = {
#       0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage7_field_valtype[4] = {
#       0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage7_field_order[4] = {
#       1, 1, 1, 1, };
# 
#     static const F32 pcx_CANdb_TransmitMessage7_field_eng_min[4] = {
#       0.0, 0.0, 0.0, 0.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage7_field_eng_max[4] = {
#       1000.0, 1000.0, 20000.0, 20000.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage7_field_scale[4] = {
#       1.0, 1.0, 1.0, 1.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage7_field_offset[4] = {
#       0.0, 0.0, 0.0, 0.0, };
# 
#     if (pcx_CANdb_TransmitMessage7_msg_handle != PCX_CONFIG_ERROR) {
	.d2line		3415
.Llo829:
	lha		r3,pcx_CANdb_TransmitMessage7_msg_handle@sdarx(r0)		# rtb_MultiportSwitch=r3
.Llo830:
	e_cmph16i	r3,-1		# rtb_MultiportSwitch=r3
	bc		1,2,.L4471	# eq
#       pcx_CANdb_TransmitMessage7_in_port_buffer[0] = atv_footBrake_X1000_out;
	.d2line		3416
.Llo831:
	efscfui		r3,r0		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r0
	.d2line		3428
.Llo832:
	lis		r5,pcx_CANdb_TransmitMessage7_field_start_pos.4462@ha		# rtb_MultiportSwitch=r5
#       pcx_CANdb_TransmitMessage7_in_port_ptr[0] =
	lis		r6,pcx_CANdb_TransmitMessage7_field_width.4463@ha		# rtb_MultiportSwitch=r6
	lis		r7,pcx_CANdb_TransmitMessage7_field_is_signed.4464@ha		# rtb_PumpACtrl=r7
#         &pcx_CANdb_TransmitMessage7_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage7_in_port_buffer[1] = atv_tHROTTLEGen_X1000_out;
.Llo864:
	stw		r3,304(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
	.d2line		3417
	diab.addi		r0,r1,304		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
#       pcx_CANdb_TransmitMessage7_in_port_ptr[1] =
	stw		r0,352(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	lis		r8,pcx_CANdb_TransmitMessage7_field_valtype.4465@ha
	.d2line		3419
	efscfui		r3,r4		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r4
#         &pcx_CANdb_TransmitMessage7_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage7_in_port_buffer[2] = 8000.0;
	lis		r9,pcx_CANdb_TransmitMessage7_field_order.4466@ha
#       pcx_CANdb_TransmitMessage7_in_port_ptr[2] =
	.d2line		3420
	diab.addi		r0,r1,308		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	lis		r10,pcx_CANdb_TransmitMessage7_field_eng_min.4467@ha		# rtb_MultiportSwitch=r10
#         &pcx_CANdb_TransmitMessage7_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage7_in_port_buffer[3] = 8000.0;
	stw		r3,308(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
#       pcx_CANdb_TransmitMessage7_in_port_ptr[3] =
	.d2line		3426
	diab.addi		r4,r1,316		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	stw		r0,356(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	.d2line		3428
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage7_field_start_pos.4462@l		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r5
#         &pcx_CANdb_TransmitMessage7_in_port_buffer[3];
#       pcx_vdb_pack_msg((const F32 * const *)
	.d2line		3423
	diab.addi		r3,r1,312		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r1
	stw		r4,364(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	stw		r3,360(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
	e_lis		r0,17914		# rtb_MultiportSwitch=r0
	.d2line		3422
	stw		r0,312(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage7_field_width.4463@l		# rtb_MultiportSwitch=r6 rtb_MultiportSwitch=r6
	lis		r3,pcx_CANdb_TransmitMessage7_field_eng_max.4468@ha		# rtb_MultiportSwitch=r3
	.d2line		3425
	stw		r0,316(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage7_field_eng_max.4468@l		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage7_field_is_signed.4464@l		# rtb_PumpACtrl=r7 rtb_PumpACtrl=r7
.Llo865:
	stw		r3,8(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage7_field_valtype.4465@l
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage7_field_order.4466@l
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage7_field_eng_min.4467@l		# rtb_MultiportSwitch=r10 rtb_MultiportSwitch=r10
	lis		r3,pcx_CANdb_TransmitMessage7_field_scale.4469@ha		# rtb_MultiportSwitch=r3
	diab.addi		r4,r1,200		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage7_field_scale.4469@l		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	stw		r3,12(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
	lis		r3,pcx_CANdb_TransmitMessage7_field_offset.4470@ha		# rtb_MultiportSwitch=r3
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage7_field_offset.4470@l		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	stw		r3,16(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
	diab.li		r3,0		# rtb_MultiportSwitch=r3
	stw		r3,20(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
	diab.li		r3,1		# rtb_MultiportSwitch=r3
	stw		r3,24(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
	diab.li		r3,4		# rtb_MultiportSwitch=r3
	stw		r3,28(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
	diab.addi		r3,r1,352		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r1
	bl		pcx_vdb_pack_msg
#                        &pcx_CANdb_TransmitMessage7_in_port_ptr[0], &data[0],
#                        pcx_CANdb_TransmitMessage7_field_start_pos,
#                        pcx_CANdb_TransmitMessage7_field_width,
#                        pcx_CANdb_TransmitMessage7_field_is_signed,
#                        pcx_CANdb_TransmitMessage7_field_valtype,
#                        pcx_CANdb_TransmitMessage7_field_order,
#                        pcx_CANdb_TransmitMessage7_field_eng_min,
#                        pcx_CANdb_TransmitMessage7_field_eng_max,
#                        pcx_CANdb_TransmitMessage7_field_scale,
#                        pcx_CANdb_TransmitMessage7_field_offset, 0, 1, 4);
# 
#       /* Do a transmit every time we are called, (CT2) */
#       retval = pcx_transmit(pcx_CANdb_TransmitMessage7_msg_handle, data);
	.d2line		3441
	lha		r3,pcx_CANdb_TransmitMessage7_msg_handle@sdarx(r0)		# rtb_MultiportSwitch=r3
	diab.addi		r4,r1,200		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	bl		pcx_transmit
.Llo1000:
	b		.L4472
.L4471:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		3444
.Llo833:
	diab.li		r3,0		# retval=r3
.L4472:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage7 = !retval;
	.d2line		3447
.Llo834:
	rlwinm		r0,r3,0,24,31		# rtb_MultiportSwitch=r0 retval=r3
	cntlzw		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	diab.srwi		r0,5		# rtb_MultiportSwitch=r0
	stb		r0,141(r27)		# rtb_MultiportSwitch=r0
	.section	.text_vle
.L5877:
#   }
# 
#   /* MultiPortSwitch: '<S37>/Multiport Switch' incorporates:
#    *  Constant: '<S37>/atvc_GenWarmUpCurrent'
#    *  Constant: '<S37>/const'
#    *  Constant: '<S9>/atvc_GenTestCurrent'
#    */
#   switch (atv_IceRG) {
	.d2line		3455
.Llo1001:
	lbz		r6,atv_IceRG@sdarx(r0)		# rtb_MultiportSwitch=r6
	se_cmpi		r6,0		# rtb_MultiportSwitch=r6
	bc		1,2,.L4474	# eq
.Llo835:
	se_cmpi		r6,1		# rtb_MultiportSwitch=r6
.Llo836:
	bc		1,2,.L4475	# eq
	se_cmpi		r6,2		# rtb_MultiportSwitch=r6
	bc		1,2,.L4476	# eq
	se_cmpi		r6,3		# rtb_MultiportSwitch=r6
	bc		1,2,.L4477	# eq
.Llo837:
	b		.L4478
.L4474:
#    case 0:
#     rtb_MultiportSwitch = 0;
	.d2line		3457
.Llo838:
	diab.li		r0,0		# rtb_MultiportSwitch=r0
	.d2line		3458
	b		.L4473
.L4475:
#     break;
# 
#    case 1:
#     rtb_MultiportSwitch = atvc_GenWarmUpCurrent;
	.d2line		3461
	lha		r0,20(r31)		# rtb_MultiportSwitch=r0
	.d2line		3462
	b		.L4473
.L4476:
#     break;
# 
#    case 2:
#     rtb_MultiportSwitch = atvc_GenWarmUpCurrent;
	.d2line		3465
	lha		r0,20(r31)		# rtb_MultiportSwitch=r0
	.d2line		3466
	b		.L4473
.L4477:
#     break;
# 
#    case 3:
#     rtb_MultiportSwitch = atvc_GenTestCurrent;
	.d2line		3469
.Llo839:
	lha		r0,26(r31)		# rtb_MultiportSwitch=r0
	.d2line		3470
.Llo840:
	b		.L4473
.L4478:
#     break;
# 
#    default:
#     rtb_MultiportSwitch = 0;
	.d2line		3473
	diab.li		r0,0		# rtb_MultiportSwitch=r0
.L4473:
	extsh		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	lwz		r4,12(r28)		# rtb_MultiportSwitch=r4
	efscfsi		r3,r0		# retval=r3 rtb_MultiportSwitch=r0
#     break;
#   }
# 
#   /* End of MultiPortSwitch: '<S37>/Multiport Switch' */
# 
#   /* RateLimiter: '<S37>/Rate Limiter2' incorporates:
#    *  DataTypeConversion: '<S37>/Data Type Conversion'
#    */
#   rateLimiterRate = (real32_T)rtb_MultiportSwitch - ATV_DW.PrevY;
	.d2line		3482
.Llo1002:
	efssub		r5,r3,r4		# rateLimiterRate=r5 retval=r3 rtb_MultiportSwitch=r4
.Llo745:
	e_lis		r0,16320		# rtb_MultiportSwitch=r0
#   if (rateLimiterRate > 1.5F) {
	.d2line		3483
	efscmpgt		1,r5,r0		# rateLimiterRate=r5 rtb_MultiportSwitch=r0
	bc		0,5,.L4481		# le
#     ATV_DW.PrevY += 1.5F;
	.d2line		3484
	efsadd		r0,r4,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r0
	stw		r0,12(r28)		# rtb_MultiportSwitch=r0
	b		.L4482
.L4481:
#   } else if (rateLimiterRate < -3.0F) {
	.d2line		3485
	e_lis		r0,-16320		# rtb_MultiportSwitch=r0
	efscmplt		1,r5,r0		# rateLimiterRate=r5 rtb_MultiportSwitch=r0
	bc		0,5,.L4479		# ge
#     ATV_DW.PrevY += -3.0F;
	.d2line		3486
.Llo746:
	efsadd		r0,r4,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r0
	stw		r0,12(r28)		# rtb_MultiportSwitch=r0
	b		.L4482
.L4479:
#   } else {
#     ATV_DW.PrevY = rtb_MultiportSwitch;
	.d2line		3488
	stw		r3,12(r28)		# retval=r3
.L4482:
#   }
# 
#   /* End of RateLimiter: '<S37>/Rate Limiter2' */
# 
#   /* DataTypeConversion: '<S37>/Data Type Conversion1' */
#   rateLimiterRate = (real32_T)floor(ATV_DW.PrevY);
	.d2line		3494
.Llo714:
	lwz		r3,12(r28)		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r28
.Llo715:
	bl		_f_ftod
.Llo841:
	bl		floor
	bl		_d_dtof
.Llo737:
	mr		r28,r3		# rateLimiterRate=r28 rateLimiterRate=r3
#   if (rtIsNaNF(rateLimiterRate) || rtIsInfF(rateLimiterRate)) {
	.d2line		3495
	bl		rtIsNaNF
.Llo738:
	e_andi.		r3,r3,255		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	bc		0,2,.L4511	# ne
.Llo739:
	mr		r3,r28		# rateLimiterRate=r3 rateLimiterRate=r28
	bl		rtIsInfF
	e_andi.		r3,r3,255		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	bc		1,2,.L4483	# eq
.L4511:
#     rateLimiterRate = 0.0F;
	.d2line		3496
	diab.li		r3,0		# rateLimiterRate=r3
.Llo741:
	b		.L4512
.L4483:
#   } else {
#     rateLimiterRate = (real32_T)fmod(rateLimiterRate, 65536.0);
	.d2line		3498
.Llo742:
	mr		r3,r28		# rateLimiterRate=r3 rateLimiterRate=r28
	bl		_f_ftod
	.d2line		3501
	diab.li		r28,0		# rtb_MultiportSwitch=r28
.Llo740:
	e_lis		r5,16624		# rateLimiterRate=r5
	diab.li		r6,0		# rtb_MultiportSwitch=r6
	bl		fmod
	bl		_d_dtof
#   }
# 
#   atv_GenCurrentSetPoint = (int16_T)(rateLimiterRate < 0.0F ? (int32_T)(int16_T)
.Llo743:
	efscmplt		1,r3,r28		# rateLimiterRate=r3 rtb_MultiportSwitch=r28
	bc		0,5,.L4512		# ge
	efsneg		r0,r3		# rtb_MultiportSwitch=r0 rateLimiterRate=r3
	efsctuiz		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	neg		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	b		.L4513
.L4512:
	efsctuiz		r0,r3		# rtb_MultiportSwitch=r0 rateLimiterRate=r3
.L4513:
	.section	.text_vle
.L5916:
#     -(int16_T)(uint16_T)-rateLimiterRate : (int32_T)(int16_T)(uint16_T)
#     rateLimiterRate);
# 
#   /* End of DataTypeConversion: '<S37>/Data Type Conversion1' */
# 
#   /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage8' incorporates:
#    *  Constant: '<S1>/Constant'
#    */
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage8
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   {
#     U8 data[8];
#     BOOL retval;
#     F32 pcx_CANdb_TransmitMessage8_in_port_buffer[5];
#     F32 * pcx_CANdb_TransmitMessage8_in_port_ptr[5];
#     static const U8 pcx_CANdb_TransmitMessage8_field_start_pos[5] = {
#       34, 33, 32, 16, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage8_field_width[5] = {
#       1, 1, 1, 16, 16, };
# 
#     static const U8 pcx_CANdb_TransmitMessage8_field_is_signed[5] = {
#       0, 0, 0, 1, 1, };
# 
#     static const U8 pcx_CANdb_TransmitMessage8_field_valtype[5] = {
#       0, 0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage8_field_order[5] = {
#       1, 1, 1, 1, 1, };
# 
#     static const F32 pcx_CANdb_TransmitMessage8_field_eng_min[5] = {
#       0.0, 0.0, 0.0, -32768.0, 0.0,
#     };
# 
#     static const F32 pcx_CANdb_TransmitMessage8_field_eng_max[5] = {
#       1.0, 1.0, 1.0, 0.0, 32767.0,
#     };
# 
#     static const F32 pcx_CANdb_TransmitMessage8_field_scale[5] = {
#       1.0, 1.0, 1.0, 1.0, 1.0,
#     };
# 
#     static const F32 pcx_CANdb_TransmitMessage8_field_offset[5] = {
#       0.0, 0.0, 0.0, 0.0, 0.0,
#     };
# 
#     if (pcx_CANdb_TransmitMessage8_msg_handle != PCX_CONFIG_ERROR) {
.Llo744:
	sth		r0,atv_GenCurrentSetPoint@sdarx(r0)		# rtb_MultiportSwitch=r0
	.d2line		3549
	lha		r0,pcx_CANdb_TransmitMessage8_msg_handle@sdarx(r0)		# rtb_MultiportSwitch=r0
	e_cmph16i	r0,-1		# rtb_MultiportSwitch=r0
	bc		1,2,.L4494	# eq
#       pcx_CANdb_TransmitMessage8_in_port_buffer[0] = ATV_B.FS1_out;
	.d2line		3550
	lbz		r3,177(r27)		# rtb_MultiportSwitch=r3
	.d2line		3551
	diab.addi		r0,r1,408		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	.d2line		3553
	diab.li		r24,0		# rtb_MultiportSwitch=r24
#       pcx_CANdb_TransmitMessage8_in_port_ptr[0] =
	.d2line		3554
	diab.addi		r4,r1,412		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	stw		r0,468(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
#         &pcx_CANdb_TransmitMessage8_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage8_in_port_buffer[1] = 0.0;
	.d2line		3565
	lis		r6,pcx_CANdb_TransmitMessage8_field_offset.4493@ha		# rtb_MultiportSwitch=r6
	stw		r24,412(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r24
#       pcx_CANdb_TransmitMessage8_in_port_ptr[1] =
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage8_field_offset.4493@l		# rtb_MultiportSwitch=r6 rtb_MultiportSwitch=r6
	.d2line		3550
	efscfui		r0,r3		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r3
#         &pcx_CANdb_TransmitMessage8_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage8_in_port_buffer[2] = ATV_B.GenFwd_out;
	stw		r4,472(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	.d2line		3559
	lha		r8,atv_GenCurrentSetPoint@sdarx(r0)		# rtb_MultiportSwitch=r8
	.d2line		3562
	e_lis		r7,16968		# rtb_PumpACtrl=r7
#       pcx_CANdb_TransmitMessage8_in_port_ptr[2] =
	stw		r0,408(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	lis		r3,pcx_CANdb_TransmitMessage8_field_eng_max.4491@ha		# rtb_MultiportSwitch=r3
#         &pcx_CANdb_TransmitMessage8_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage8_in_port_buffer[3] = atv_GenCurrentSetPoint;
	lis		r4,pcx_CANdb_TransmitMessage8_field_scale.4492@ha		# rtb_MultiportSwitch=r4
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage8_field_eng_max.4491@l		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	.d2line		3556
	lbz		r5,176(r27)		# rtb_MultiportSwitch=r5
	.d2line		3565
	e_add16i		r4,r4,pcx_CANdb_TransmitMessage8_field_scale.4492@l		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r4
	.d2line		3557
	diab.addi		r25,r1,416		# rtb_MultiportSwitch=r25 rtb_MultiportSwitch=r1
#       pcx_CANdb_TransmitMessage8_in_port_ptr[3] =
	.d2line		3560
	diab.addi		r28,r1,420		# rtb_MultiportSwitch=r28 rtb_MultiportSwitch=r1
	efscfui		r5,r5		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r5
	stw		r6,16(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r6
#         &pcx_CANdb_TransmitMessage8_in_port_buffer[3];
#       pcx_CANdb_TransmitMessage8_in_port_buffer[4] = 50.0;
	stw		r3,8(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
	.d2line		3563
	diab.addi		r0,r1,424		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
#       pcx_CANdb_TransmitMessage8_in_port_ptr[4] =
	stw		r4,12(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	.d2line		3559
	efscfsi		r6,r8		# rtb_MultiportSwitch=r6 rtb_MultiportSwitch=r8
#         &pcx_CANdb_TransmitMessage8_in_port_buffer[4];
#       pcx_vdb_pack_msg((const F32 * const *)
	.d2line		3556
	stw		r5,416(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r5
	.d2line		3565
	diab.li		r3,1		# rtb_MultiportSwitch=r3
	stw		r6,420(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r6
	diab.li		r4,5		# rtb_MultiportSwitch=r4
	.d2line		3562
	stw		r7,424(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r7
	lis		r9,pcx_CANdb_TransmitMessage8_field_order.4489@ha
	stw		r3,24(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r3
	lis		r10,pcx_CANdb_TransmitMessage8_field_eng_min.4490@ha		# rtb_MultiportSwitch=r10
	stw		r4,28(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r4
	lis		r8,pcx_CANdb_TransmitMessage8_field_valtype.4488@ha		# rtb_MultiportSwitch=r8
	stw		r24,20(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r24
	lis		r5,pcx_CANdb_TransmitMessage8_field_start_pos.4485@ha		# rtb_MultiportSwitch=r5
	.d2line		3557
	stw		r25,476(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r25
	lis		r6,pcx_CANdb_TransmitMessage8_field_width.4486@ha		# rtb_MultiportSwitch=r6
	.d2line		3560
	stw		r28,480(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r28
	lis		r7,pcx_CANdb_TransmitMessage8_field_is_signed.4487@ha		# rtb_MultiportSwitch=r7
	.d2line		3563
	stw		r0,484(r1)		# rtb_MultiportSwitch=r1 rtb_MultiportSwitch=r0
	.d2line		3565
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage8_field_order.4489@l
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage8_field_eng_min.4490@l		# rtb_MultiportSwitch=r10 rtb_MultiportSwitch=r10
	diab.addi		r3,r1,468		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r1
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage8_field_valtype.4488@l		# rtb_MultiportSwitch=r8 rtb_MultiportSwitch=r8
	diab.addi		r4,r1,208		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage8_field_start_pos.4485@l		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r5
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage8_field_width.4486@l		# rtb_MultiportSwitch=r6 rtb_MultiportSwitch=r6
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage8_field_is_signed.4487@l		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r7
	bl		pcx_vdb_pack_msg
#                        &pcx_CANdb_TransmitMessage8_in_port_ptr[0], &data[0],
#                        pcx_CANdb_TransmitMessage8_field_start_pos,
#                        pcx_CANdb_TransmitMessage8_field_width,
#                        pcx_CANdb_TransmitMessage8_field_is_signed,
#                        pcx_CANdb_TransmitMessage8_field_valtype,
#                        pcx_CANdb_TransmitMessage8_field_order,
#                        pcx_CANdb_TransmitMessage8_field_eng_min,
#                        pcx_CANdb_TransmitMessage8_field_eng_max,
#                        pcx_CANdb_TransmitMessage8_field_scale,
#                        pcx_CANdb_TransmitMessage8_field_offset, 0, 1, 5);
# 
#       /* Do a transmit every time we are called, (CT2) */
#       retval = pcx_transmit(pcx_CANdb_TransmitMessage8_msg_handle, data);
	.d2line		3578
	lha		r3,pcx_CANdb_TransmitMessage8_msg_handle@sdarx(r0)		# rtb_MultiportSwitch=r3
	diab.addi		r4,r1,208		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	bl		pcx_transmit
.Llo1003:
	b		.L4495
.L4494:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		3581
.Llo1004:
	diab.li		r3,0		# retval=r3
.L4495:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage8 = !retval;
	.d2line		3584
.Llo1005:
	rlwinm		r0,r3,0,24,31		# rtb_MultiportSwitch=r0 retval=r3
	cntlzw		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	diab.srwi		r0,5		# rtb_MultiportSwitch=r0
	stb		r0,142(r27)		# rtb_MultiportSwitch=r0
	.section	.text_vle
.L5917:
#   }
# 
#   /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
#   /* S-Function Block: <S6>/pdx_DigitalOutput
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)ATV_B.Switch,
	.d2line		3595
.Llo1006:
	lbz		r3,132(r27)		# rtb_MultiportSwitch=r3
	diab.li		r4,0		# rtb_MultiportSwitch=r4
	diab.addi		r7,r1,33		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	diab.li		r6,0		# rtb_MultiportSwitch=r6
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YL4, state, FALSE);
	.d2line		3600
	lbz		r4,33(r1)		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,158		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		pdx_digital_output
#   }
# 
#   /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput1' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
#   /* S-Function Block: <S6>/pdx_DigitalOutput1
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)atv_dbg_pumpB_out,
	.d2line		3611
	lbz		r3,atv_dbg_pumpB_out@sdarx(r0)		# rtb_MultiportSwitch=r3
	diab.li		r4,0		# rtb_MultiportSwitch=r4
	diab.addi		r7,r1,34		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	diab.li		r6,0		# rtb_MultiportSwitch=r6
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YA1, state, FALSE);
	.d2line		3616
	lbz		r4,34(r1)		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,61		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		pdx_digital_output
#   }
# 
#   /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput2' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
#   /* S-Function Block: <S6>/pdx_DigitalOutput2
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)atv_IceShutdown_out,
	.d2line		3627
	lbz		r3,atv_IceShutdown_out@sdarx(r0)		# rtb_MultiportSwitch=r3
	diab.li		r4,0		# rtb_MultiportSwitch=r4
	diab.addi		r7,r1,35		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	diab.li		r6,0		# rtb_MultiportSwitch=r6
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YB4, state, FALSE);
	.d2line		3632
	lbz		r4,35(r1)		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,87		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		pdx_digital_output
#   }
# 
#   /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput3' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
#   /* S-Function Block: <S6>/pdx_DigitalOutput3
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)ATV_B.heater_ctrl_out,
	.d2line		3643
	lbz		r3,172(r27)		# rtb_MultiportSwitch=r3
	diab.li		r4,0		# rtb_MultiportSwitch=r4
	diab.addi		r7,r1,36		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	diab.li		r6,0		# rtb_MultiportSwitch=r6
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_ZF2, state, FALSE);
	.d2line		3648
	lbz		r4,36(r1)		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,212		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		pdx_digital_output
#   }
# 
#   /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput4' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
#   /* S-Function Block: <S6>/pdx_DigitalOutput4
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)ATV_B.en_inv_rear_out,
	.d2line		3659
	lbz		r3,173(r27)		# rtb_MultiportSwitch=r3
	diab.li		r4,0		# rtb_MultiportSwitch=r4
	diab.addi		r7,r1,37		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	diab.li		r6,0		# rtb_MultiportSwitch=r6
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YA2, state, FALSE);
	.d2line		3664
	lbz		r4,37(r1)		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,65		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		pdx_digital_output
#   }
# 
#   /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput5' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
#   /* S-Function Block: <S6>/pdx_DigitalOutput5
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)ATV_B.en_inv_front_out,
	.d2line		3675
	lbz		r3,174(r27)		# rtb_MultiportSwitch=r3
	diab.li		r4,0		# rtb_MultiportSwitch=r4
	diab.addi		r7,r1,38		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	diab.li		r6,0		# rtb_MultiportSwitch=r6
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YA3, state, FALSE);
	.d2line		3680
	lbz		r4,38(r1)		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,70		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		pdx_digital_output
#   }
# 
#   /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput6' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
#   /* S-Function Block: <S6>/pdx_DigitalOutput6
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)ATV_B.en_inv_gen_out,
	.d2line		3691
	lbz		r3,175(r27)		# rtb_MultiportSwitch=r3
	diab.li		r4,0		# rtb_MultiportSwitch=r4
	diab.addi		r7,r1,39		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	diab.li		r6,0		# rtb_MultiportSwitch=r6
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YA4, state, FALSE);
	.d2line		3696
	lbz		r4,39(r1)		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,75		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		pdx_digital_output
#   }
# 
#   /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput7' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
#   /* S-Function Block: <S6>/pdx_DigitalOutput7
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)atv_runLed_out,
	.d2line		3707
	lbz		r3,atv_runLed_out@sdarx(r0)		# rtb_MultiportSwitch=r3
	diab.li		r4,0		# rtb_MultiportSwitch=r4
	diab.addi		r7,r1,40		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	diab.li		r6,0		# rtb_MultiportSwitch=r6
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_ZG2, state, FALSE);
	.d2line		3712
	lbz		r4,40(r1)		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,217		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		pdx_digital_output
#   }
# 
#   /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput8' */
#   /* S-Function Block: <S6>/pdx_DigitalOutput8
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)atv_wakelock_out,
	.d2line		3721
	lbz		r3,atv_wakelock_out@sdarx(r0)		# rtb_MultiportSwitch=r3
	diab.li		r4,0		# rtb_MultiportSwitch=r4
	diab.addi		r7,r1,41		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	diab.li		r6,0		# rtb_MultiportSwitch=r6
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_XD1_ENABLE_PSU_HOLD, state, FALSE);
	.d2line		3726
	lbz		r4,41(r1)		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,21		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		pdx_digital_output
#   }
# 
#   /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput9' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
#   /* S-Function Block: <S6>/pdx_DigitalOutput9
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)atv_IceKey_out,
	.d2line		3737
	lbz		r3,atv_IceKey_out@sdarx(r0)		# rtb_MultiportSwitch=r3
	diab.li		r4,0		# rtb_MultiportSwitch=r4
	diab.addi		r7,r1,42		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	diab.li		r6,0		# rtb_MultiportSwitch=r6
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_ZC1, state, FALSE);
	.d2line		3742
	lbz		r4,42(r1)		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,183		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		pdx_digital_output
#   }
# 
#   /* Switch: '<S6>/Switch' incorporates:
#    *  Constant: '<S6>/atvc_FanTest'
#    */
#   if (atvc_FanTest > 0) {
	.d2line		3748
	lbz		r0,59(r31)		# rtb_MultiportSwitch=r0
	se_cmpi		r0,0		# rtb_MultiportSwitch=r0
	bc		0,1,.L4496	# le
#     rtb_Switch_l = atvc_FanTest;
	.d2line		3749
	lbz		r26,59(r31)		# rtb_Switch_l=r26
.L4496:
#   }
# 
#   /* End of Switch: '<S6>/Switch' */
# 
#   /* DataTypeConversion: '<S6>/Data Type Conversion' */
#   atv_dbg_FAN_out = rtb_Switch_l;
	.d2line		3755
	rlwinm		r26,r26,0,24,31		# rtb_MultiportSwitch=r26 rtb_Switch_l=r26
	.d2line		3761
.Llo758:
	e_lis		r0,16256		# rtb_MultiportSwitch=r0
	efscfui		r3,r26		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r26
# 
#   /* Gain: '<S6>/Gain' */
#   ATV_B.Saturation = 0.01 * atv_dbg_FAN_out;
	stw		r3,atv_dbg_FAN_out@sdarx(r0)		# rtb_MultiportSwitch=r3
	.d2line		3758
	efsmul		r3,r3,r30		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
# 
#   /* Saturate: '<S6>/Saturation' */
#   if (ATV_B.Saturation > 1.0) {
	stw		r3,8(r27)		# rtb_MultiportSwitch=r3
	efscmpgt		1,r3,r0		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r0
	bc		0,5,.L4498		# le
#     /* Gain: '<S6>/Gain' */
#     ATV_B.Saturation = 1.0;
	.d2line		3763
.Llo716:
	stw		r0,8(r27)		# rtb_MultiportSwitch=r0
.Llo717:
	mr		r3,r0		# rtb_MultiportSwitch=r3
	b		.L4499
.L4498:
#   } else {
#     if (ATV_B.Saturation < 0.0) {
	.d2line		3765
	diab.li		r0,0		# rtb_MultiportSwitch=r0
	efscmplt		1,r3,r0		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r0
	bc		0,5,.L4499		# ge
#       /* Gain: '<S6>/Gain' */
#       ATV_B.Saturation = 0.0;
	.d2line		3767
	stw		r0,8(r27)		# rtb_MultiportSwitch=r0
	diab.li		r3,0		# rtb_MultiportSwitch=r3
.L4499:
#     }
#   }
# 
#   /* End of Saturate: '<S6>/Saturation' */
# 
#   /* S-Function (pdx_pwm_output): '<S6>/pdx_PWMOutput' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
#   /*
#    * S-Function Block: <S6>/pdx_PWMOutput
#    * [$Id: pdx_pwm_output.tlc 30730 2012-09-29 12:01:15Z jtough $]
#    */
#   {
#     F32 dc;
#     put_dutycycle_processing(ATV_B.Saturation,
	.d2line		3782
	diab.li		r4,0		# rtb_MultiportSwitch=r4
	diab.addi		r9,r1,76		# rtb_MultiportSwitch=r9 rtb_MultiportSwitch=r1
	e_lis		r8,16256		# rtb_MultiportSwitch=r8
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	diab.li		r6,0		# rtb_MultiportSwitch=r6
	diab.li		r7,0		# rtb_MultiportSwitch=r7
	bl		put_dutycycle_processing
#       0,
#       (U8)false,
#       0.0,
#       (0.0),
#       (1.0),
#       &dc);
#     (void) pdx_pwm_output(PIO_FFPOT_YK3,
	.d2line		3802
.Llo718:
	e_lis		r31,16544		# rtb_MultiportSwitch=r31
	.d2line		3789
.Llo719:
	lwz		r5,76(r1)		# rtb_MultiportSwitch=r5 rtb_MultiportSwitch=r1
	diab.li		r6,0		# rtb_MultiportSwitch=r6
	diab.li		r3,150		# rtb_MultiportSwitch=r3
	e_lis		r4,17658		# rtb_MultiportSwitch=r4
	diab.li		r7,0		# rtb_MultiportSwitch=r7
#                           2000.0,
#                           dc,
#                           0.0,
#                           FALSE);
#   }
# 
#   /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput2' */
#   /* S-Function Block: <S7>/pai_BasicAnalogInput2
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XE3, &adc, FALSE);
	.d2line		3817
	e_lis		r30,17530
	bl		pdx_pwm_output
	diab.addi		r4,r1,64		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,29		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
#     ATV_B.pai_BasicAnalogInput2 = (adc * 5.0) / 4096.0;
	bl		pax_adc_input
	.d2line		3803
	lha		r0,64(r1)		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	.d2line		3812
	diab.addi		r4,r1,66		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,46		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
#   }
# 
#   /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput9' */
#   /* S-Function Block: <S7>/pai_BasicAnalogInput9
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_YG3, &adc, FALSE);
	efscfsi		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	efsmul		r0,r0,r31		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r31
	efsmul		r0,r0,r29		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	stw		r0,40(r27)		# rtb_MultiportSwitch=r0
#     atv_yg3_raw_ain = (adc * 5.0) / 4096.0;
	bl		pax_adc_input
	.d2line		3813
	lha		r0,66(r1)		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	efscfsi		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	efsmul		r0,r0,r31		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r31
	efsmul		r0,r0,r29		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
#   }
# 
#   /* Gain: '<S7>/Gain2' */
#   rtb_Product = floor(1000.0 * ATV_B.pai_BasicAnalogInput2);
	stw		r0,atv_yg3_raw_ain@sdarx(r0)		# rtb_MultiportSwitch=r0
	lwz		r3,40(r27)		# rtb_MultiportSwitch=r3
	efsmul		r3,r3,r30		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
	bl		_f_ftod
.Llo842:
	bl		floor
	bl		_d_dtof
.Llo705:
	mr		r31,r3		# rtb_Product=r31 rtb_Product=r3
#   if (rtIsNaN(rtb_Product) || rtIsInf(rtb_Product)) {
	.d2line		3818
.Llo720:
	bl		rtIsNaN
.Llo706:
	e_andi.		r3,r3,255		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
.Llo721:
	bc		0,2,.L4514	# ne
.Llo707:
	mr		r3,r31		# rtb_Product=r3 rtb_Product=r31
	bl		rtIsInf
.Llo722:
	e_andi.		r3,r3,255		# rtb_MultiportSwitch=r3 rtb_MultiportSwitch=r3
.Llo723:
	bc		1,2,.L4500	# eq
.L4514:
#     rtb_Product = 0.0;
	.d2line		3819
	diab.li		r3,0		# rtb_Product=r3
.Llo709:
	b		.L4515
.L4500:
#   } else {
#     rtb_Product = fmod(rtb_Product, 4.294967296E+9);
	.d2line		3821
.Llo710:
	mr		r3,r31		# rtb_Product=r3 rtb_Product=r31
	bl		_f_ftod
	.d2line		3824
	diab.li		r31,0		# rtb_MultiportSwitch=r31
.Llo708:
	e_lis		r5,16880		# rtb_MultiportSwitch=r5
	diab.li		r6,0		# rtb_MultiportSwitch=r6
	bl		fmod
	bl		_d_dtof
#   }
# 
#   atv_xe3_ain = rtb_Product < 0.0 ? -(int32_T)(uint32_T)-rtb_Product : (int32_T)
.Llo711:
	efscmplt		1,r3,r31		# rtb_Product=r3 rtb_MultiportSwitch=r31
	bc		0,5,.L4515		# ge
.Llo724:
	efsneg		r0,r3		# rtb_MultiportSwitch=r0 rtb_Product=r3
.Llo725:
	efsctuiz		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	neg		r0,r0		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r0
	b		.L4516
.L4515:
.Llo726:
	efsctuiz		r0,r3		# rtb_MultiportSwitch=r0 rtb_Product=r3
.L4516:
#     (uint32_T)rtb_Product;
# 
#   /* End of Gain: '<S7>/Gain2' */
# 
#   /* S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput' incorporates:
#    *  Constant: '<Root>/Constant1'
#    */
#   /* S-Function Block: <Root>/pdx_DigitalOutput
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)true,
.Llo712:
	stw		r0,atv_xe3_ain@sdarx(r0)		# rtb_MultiportSwitch=r0
	.d2line		3837
	diab.li		r3,1		# rtb_MultiportSwitch=r3
	diab.li		r4,0		# rtb_MultiportSwitch=r4
	diab.addi		r7,r1,43		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
	diab.li		r6,1		# rtb_MultiportSwitch=r6
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)(true),
#                          &state);
#     (void) pdx_digital_output
#       (PIO_DOT_XD4_YA1_YA4_YB1_YC2_YC3_YD1_YD2_YD3_YB4_YE1_YE2_YK3_ZA4_ZB4_ZE1_ZE2_ZF3_ENABLE,
	.d2line		3843
.Llo727:
	lbz		r4,43(r1)		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,31		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		pdx_digital_output
#        state, FALSE);
#   }
# 
#   /* S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput1' incorporates:
#    *  Constant: '<Root>/Constant1'
#    */
#   /* S-Function Block: <Root>/pdx_DigitalOutput1
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)true,
	.d2line		3855
	diab.li		r3,1		# rtb_MultiportSwitch=r3
	diab.li		r4,0		# rtb_MultiportSwitch=r4
	diab.addi		r7,r1,44		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
	diab.li		r6,1		# rtb_MultiportSwitch=r6
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)(true),
#                          &state);
#     (void) pdx_digital_output
#       (PIO_DOT_YA2_YA3_YC1_YE3_YL2_YL4_YM2_YM3_ZC1_ZD1_ZD2_ZE3_ZE4_ZG2_ENABLE,
	.d2line		3861
	lbz		r4,44(r1)		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,59		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		pdx_digital_output
#        state, FALSE);
#   }
# 
#   /* S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput2' incorporates:
#    *  Constant: '<Root>/Constant1'
#    */
#   /* S-Function Block: <Root>/pdx_DigitalOutput2
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)true,
	.d2line		3873
	diab.li		r3,1		# rtb_MultiportSwitch=r3
	diab.li		r4,0		# rtb_MultiportSwitch=r4
	diab.addi		r7,r1,45		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
	diab.li		r6,1		# rtb_MultiportSwitch=r6
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)1.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_INT_ENABLE_SECONDARY_MICRO, state, FALSE);
	.d2line		3878
	lbz		r4,45(r1)		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,2		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		pdx_digital_output
#   }
# 
#   /* S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput3' incorporates:
#    *  Constant: '<Root>/Constant'
#    */
#   /* S-Function Block: <Root>/pdx_DigitalOutput3
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)false,
	.d2line		3889
	diab.li		r3,0		# rtb_MultiportSwitch=r3
	diab.addi		r7,r1,46		# rtb_MultiportSwitch=r7 rtb_MultiportSwitch=r1
	diab.li		r4,0		# rtb_MultiportSwitch=r4
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	diab.li		r6,0		# rtb_MultiportSwitch=r6
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YK2_DISABLE, state, FALSE);
	.d2line		3894
	lbz		r4,46(r1)		# rtb_MultiportSwitch=r4 rtb_MultiportSwitch=r1
	diab.li		r3,149		# rtb_MultiportSwitch=r3
	diab.li		r5,0		# rtb_MultiportSwitch=r5
	bl		pdx_digital_output
#   }
# }
	.d2line		3896
	.d2epilogue_begin
	diab.addi		r12,r1,548		# rtb_MultiportSwitch=r1
	lwz		r0,596(r1)		# rtb_MultiportSwitch=r0 rtb_MultiportSwitch=r1
	lmw		r21,0(r12)		# offset r1+548  0x224
	.d2_cfa_restore_list	2,10
	mtspr		lr,r0		# rtb_MultiportSwitch=lr
	diab.addi		r1,r1,592		
	.d2_cfa_def_cfa_offset	0
.Llo843:
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5475:
	.type		ATV_output0,@function
	.size		ATV_output0,.-ATV_output0
# Number of nodes = 4720

# Allocations for ATV_output0
#	?a4		$$359
#	?a5		$$358
#	?a6		$$357
#	?a7		$$267
#	?a8		$$266
#	?a9		$$265
#	?a10		$$264
#	?a11		$$263
#	?a12		$$262
#	?a13		$$261
#	?a14		$$260
#	?a15		$$259
#	?a16		$$258
#	?a17		$$257
#	?a18		$$256
#	?a19		$$255
#	?a20		$$254
#	?a21		$$253
#	?a22		$$252
#	?a23		$$251
#	?a24		$$250
#	?a25		$$249
#	?a26		$$248
#	?a27		$$247
#	?a28		$$246
#	?a29		$$245
#	?a30		$$244
#	?a31		$$243
#	?a32		$$242
#	?a33		$$241
#	?a34		$$240
#	?a35		$$239
#	?a36		$$238
#	?a37		$$237
#	?a38		$$236
#	?a39		$$235
#	?a40		$$234
#	?a41		$$233
#	?a42		$$232
#	?a43		$$231
#	?a44		$$230
#	?a45		$$229
#	?a46		$$228
#	?a47		$$227
#	?a48		$$226
#	?a49		$$225
#	?a50		$$224
#	?a51		$$223
#	?a52		$$222
#	?a53		$$221
#	?a54		$$220
#	?a55		$$219
#	not allocated	$$218
#	not allocated	$$217
#	not allocated	$$216
#	?a56		$$215
#	?a57		$$214
#	not allocated	$$213
#	not allocated	$$212
#	not allocated	$$211
#	not allocated	$$210
#	not allocated	$$209
#	not allocated	$$208
#	not allocated	$$207
#	?a58		$$206
#	?a59		$$205
#	?a60		$$204
#	?a61		$$203
#	?a62		$$202
#	?a63		$$201
#	?a64		$$200
#	?a65		$$199
#	?a66		$$198
#	?a67		$$197
#	?a68		$$196
#	?a69		$$195
#	?a70		$$194
#	?a71		$$193
#	?a72		$$192
#	?a73		$$191
#	?a74		$$190
#	?a75		$$189
#	?a76		u0_tmp_0
#	?a77		u0_tmp
#	?a78		u0_tmp
#	?a79		u0_tmp
#	?a80		u0_tmp
#	?a81		u0_tmp
#	?a82		u0_tmp
#	?a83		u0_tmp
#	?a84		rtb_Product
#	?a85		rtb_Product
#	?a86		rtb_Product
#	?a87		rtb_Product
#	?a88		rtb_Product
#	?a89		rtb_Product
#	?a90		rtb_Product
#	?a91		rtb_Product
#	?a92		rtb_Product
#	?a93		rtb_MultiportSwitch
#	?a94		rtb_Compare
#	?a95		rtb_Compare
#	?a96		rtb_Compare
#	?a97		rateLimiterRate
#	?a98		rateLimiterRate
#	?a99		$$188
#	?a100		$$174
#	not allocated	$$173
#	?a101		$$172
#	?a102		$$171
#	not allocated	$$42
#	not allocated	$$41
#	not allocated	$$40
#	?a103		$$39
#	not allocated	$$12
#	not allocated	$$11
#	?a104		$$10
#	not allocated	$$9
#	?a106		$$8
#	?a107		rateLimiterRate
#	?a108		rtb_Compare
#	?a109		rtb_Switch_l
#	?a110		rtb_Gain_d
#	?a111		rtb_MultiportSwitch
#	?a112		rtb_PumpACtrl
#	?a113		rtb_Product
#	?a114		rtb_Gain
#	SP,136		tmp
#	SP,104		tmp_0
#	SP,144		tmp_1
#	SP,112		tmp_2
#	SP,72		tmp_3
#	SP,68		tmp_4
#	SP,224		tmp_5
#	SP,96		tmp_6
#	SP,120		tmp_7
#	SP,80		tmp_8
#	SP,88		tmp_9
#	SP,236		tmp_a
#	SP,128		tmp_b
#	SP,248		tmp_c
#	SP,152		tmp_d
#	SP,260		tmp_e
#	SP,216		tmp_f
#	?a115		u0_tmp
#	?a116		u0_tmp_0
#	SP,48		adc
#	SP,32		state
#	SP,50		adc
#	SP,52		adc
#	SP,54		adc
#	SP,160		data
#	?a117		retval
#	SP,488		pcx_CANdb_TransmitMessage_in_port_buffer
#	SP,512		pcx_CANdb_TransmitMessage_in_port_ptr
#	SP,56		adc
#	not allocated	u
#	not allocated	u
#	SP,168		data
#	?a118		retval
#	SP,272		pcx_CANdb_TransmitMessage2_in_port_buffer
#	SP,320		pcx_CANdb_TransmitMessage2_in_port_ptr
#	SP,58		adc
#	SP,176		data
#	?a119		retval
#	SP,368		pcx_CANdb_TransmitMessage3_in_port_buffer
#	SP,428		pcx_CANdb_TransmitMessage3_in_port_ptr
#	SP,60		adc
#	not allocated	u
#	not allocated	u
#	SP,184		data
#	?a120		retval
#	SP,288		pcx_CANdb_TransmitMessage4_in_port_buffer
#	SP,336		pcx_CANdb_TransmitMessage4_in_port_ptr
#	SP,192		data
#	?a121		retval
#	SP,388		pcx_CANdb_TransmitMessage5_in_port_buffer
#	SP,448		pcx_CANdb_TransmitMessage5_in_port_ptr
#	SP,62		adc
#	SP,200		data
#	?a122		retval
#	SP,304		pcx_CANdb_TransmitMessage7_in_port_buffer
#	SP,352		pcx_CANdb_TransmitMessage7_in_port_ptr
#	SP,208		data
#	?a123		retval
#	SP,408		pcx_CANdb_TransmitMessage8_in_port_buffer
#	SP,468		pcx_CANdb_TransmitMessage8_in_port_ptr
#	SP,33		state
#	SP,34		state
#	SP,35		state
#	SP,36		state
#	SP,37		state
#	SP,38		state
#	SP,39		state
#	SP,40		state
#	SP,41		state
#	SP,42		state
#	SP,76		dc
#	SP,64		adc
#	SP,66		adc
#	SP,43		state
#	SP,44		state
#	SP,45		state
#	SP,46		state
# static void ATV_update0(void)          /* Sample time: [0.01s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         3900
#$$ld
.L5958:

#$$bf	ATV_update0,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,cr0,spefscr
	.d2_cfa_start __cie
ATV_update0:
	.d2line		0
	.d2prologue_end
	.d2line		3910
	lis		r3,ATV_M@ha
	lwz		r3,ATV_M@l(r3)
#   /* Update absolute time */
#   /* The "clockTick0" counts the number of times the code of this task has
#    * been executed. The absolute time is the multiplication of "clockTick0"
#    * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
#    * overflow during the application lifespan selected.
#    * Timer of this task consists of two 32 bit unsigned integers.
#    * The two integers represent the low bits Timing.clockTick0 and the high bits
#    * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
#    */
#   if (!(++ATV_M->Timing.clockTick0)) {
	lwz		r4,392(r3)
	diab.addi		r0,r4,1
	stw		r0,392(r3)
	se_cmpi		r0,0
	bc		0,2,.L4714	# ne
#     ++ATV_M->Timing.clockTickH0;
	.d2line		3911
	lwz		r4,396(r3)
	se_addi		r4,1
	stw		r4,396(r3)
.L4714:
	.d2line		3914
	lwz		r5,396(r3)
#   }
# 
#   ATV_M->Timing.t[0] = ATV_M->Timing.clockTick0 * ATV_M->Timing.stepSize0 +
	e_lis		r6,20352
	.d2line		3911
	lwz		r4,400(r3)
	efscfui		r5,r5
	lwz		r3,480(r3)
	efsmul		r5,r5,r4
	efsmul		r5,r5,r6
	efscfui		r0,r0
	efsmadd		r5,r0,r4
	stw		r5,0(r3)
#     ATV_M->Timing.clockTickH0 * ATV_M->Timing.stepSize0 * 4294967296.0;
# }
	.d2line		3916
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5959:
	.type		ATV_update0,@function
	.size		ATV_update0,.-ATV_update0
# Number of nodes = 45

# Allocations for ATV_update0
#	?a4		$$274
#	?a5		$$273
#	?a6		$$272
#	not allocated	$$270
#	?a7		$$269
#	not allocated	$$268
#	?a8		$$14
#	?a9		$$13
# static void ATV_output1(void)          /* Sample time: [0.1s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         3920
#$$ld
.L5963:

#$$bf	ATV_output1,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ATV_output1:
	diab.li		r0,-400
	stwux		r1,r1,r0		
	.d2_cfa_def_cfa_offset	400
	diab.addi		r12,r1,364
	mfspr		r0,lr
	stmw		r23,0(r12)		# offset r1+364  0x16c
	.d2_cfa_offset_list	23,31,1,1
	stw		r0,404(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
	.section	.text_vle
.L6045:
#   real_T u0;
# 
#   /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage1' */
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage1
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   {
#     U8 data[8];
#     BOOL retval;
#     F32 pcx_CANdb_TransmitMessage1_in_port_buffer[6];
#     F32 * pcx_CANdb_TransmitMessage1_in_port_ptr[6];
#     static const U8 pcx_CANdb_TransmitMessage1_field_start_pos[6] = {
#       16, 8, 0, 24, 32, 40, };
# 
#     static const U8 pcx_CANdb_TransmitMessage1_field_width[6] = {
#       1, 1, 1, 1, 1, 1, };
# 
#     static const U8 pcx_CANdb_TransmitMessage1_field_is_signed[6] = {
#       0, 0, 0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage1_field_valtype[6] = {
#       0, 0, 0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage1_field_order[6] = {
#       1, 1, 1, 1, 1, 1, };
# 
#     static const F32 pcx_CANdb_TransmitMessage1_field_eng_min[6] = {
#       0.0, 0.0, 0.0, 0.0, 0.0,
#       0.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage1_field_eng_max[6] = {
#       1.0, 1.0, 1.0, 1.0, 1.0,
#       1.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage1_field_scale[6] = {
#       1.0, 1.0, 1.0, 1.0, 1.0,
#       1.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage1_field_offset[6] = {
#       0.0, 0.0, 0.0, 0.0, 0.0,
#       0.0, };
# 
#     if (pcx_CANdb_TransmitMessage1_msg_handle != PCX_CONFIG_ERROR) {
	.d2line		3963
	lha		r0,pcx_CANdb_TransmitMessage1_msg_handle@sdarx(r0)
	e_cmph16i	r0,-1
	bc		1,2,.L4726	# eq
	lis		r11,ATV_B@ha
	.d2line		3965
	diab.addi		r0,r1,188
#       pcx_CANdb_TransmitMessage1_in_port_buffer[0] = ATV_B.RateTransition4_b;
	.d2line		3963
	e_add16i		r11,r11,ATV_B@l
	.d2line		3968
	diab.addi		r4,r1,192
	.d2line		3964
	lbz		r3,127(r11)
#       pcx_CANdb_TransmitMessage1_in_port_ptr[0] =
	.d2line		3971
	diab.addi		r26,r1,196
	.d2line		3982
	lis		r12,pcx_CANdb_TransmitMessage1_field_eng_max.4723@ha
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage1_in_port_buffer[1] = ATV_B.RateTransition;
	lis		r31,pcx_CANdb_TransmitMessage1_field_scale.4724@ha
	.d2line		3965
	stw		r0,236(r1)
	lis		r30,pcx_CANdb_TransmitMessage1_field_offset.4725@ha
#       pcx_CANdb_TransmitMessage1_in_port_ptr[1] =
	.d2line		3974
	diab.addi		r27,r1,200
	.d2line		3977
	diab.addi		r28,r1,204
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage1_in_port_buffer[2] = ATV_B.RateTransition1;
	.d2line		3964
	efscfui		r0,r3
	.d2line		3979
	diab.li		r29,0
	.d2line		3982
	diab.li		r24,1
	diab.li		r23,6
	stw		r0,188(r1)
#       pcx_CANdb_TransmitMessage1_in_port_ptr[2] =
	e_add16i		r12,r12,pcx_CANdb_TransmitMessage1_field_eng_max.4723@l
	e_add16i		r31,r31,pcx_CANdb_TransmitMessage1_field_scale.4724@l
	e_add16i		r30,r30,pcx_CANdb_TransmitMessage1_field_offset.4725@l
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage1_in_port_buffer[3] = ATV_B.RateTransition2;
	.d2line		3967
	lbz		r3,128(r11)
	.d2line		3980
	diab.addi		r0,r1,208
	lis		r6,pcx_CANdb_TransmitMessage1_field_width.4718@ha
#       pcx_CANdb_TransmitMessage1_in_port_ptr[3] =
	lis		r7,pcx_CANdb_TransmitMessage1_field_is_signed.4719@ha
	efscfui		r5,r3
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[3];
#       pcx_CANdb_TransmitMessage1_in_port_buffer[4] = ATV_B.RateTransition2;
	.d2line		3968
	stw		r4,240(r1)
#       pcx_CANdb_TransmitMessage1_in_port_ptr[4] =
	lis		r8,pcx_CANdb_TransmitMessage1_field_valtype.4720@ha
	lis		r9,pcx_CANdb_TransmitMessage1_field_order.4721@ha
	stw		r5,192(r1)
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[4];
#       pcx_CANdb_TransmitMessage1_in_port_buffer[5] = 0.0;
	lis		r10,pcx_CANdb_TransmitMessage1_field_eng_min.4722@ha
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage1_field_width.4718@l
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage1_field_is_signed.4719@l
	.d2line		3970
	lbz		r25,129(r11)
#       pcx_CANdb_TransmitMessage1_in_port_ptr[5] =
	.d2line		3982
	lis		r5,pcx_CANdb_TransmitMessage1_field_start_pos.4717@ha
	diab.addi		r3,r1,236
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage1_field_valtype.4720@l
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[5];
#       pcx_vdb_pack_msg((const F32 * const *)
	.d2line		3971
	stw		r26,244(r1)
	diab.addi		r4,r1,52
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage1_field_order.4721@l
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage1_field_eng_min.4722@l
	efscfui		r26,r25
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage1_field_start_pos.4717@l
	stw		r26,196(r1)
	.d2line		3973
	lbz		r11,130(r11)
	efscfui		r11,r11
	stw		r12,8(r1)
	stw		r31,12(r1)
	stw		r30,16(r1)
	stw		r29,20(r1)
	stw		r24,24(r1)
	stw		r23,28(r1)
	stw		r11,200(r1)
	.d2line		3976
	stw		r11,204(r1)
	.d2line		3979
	stw		r29,208(r1)
	.d2line		3974
	stw		r27,248(r1)
	.d2line		3977
	stw		r28,252(r1)
	.d2line		3980
	stw		r0,256(r1)
	.d2line		3982
	bl		pcx_vdb_pack_msg
#                        &pcx_CANdb_TransmitMessage1_in_port_ptr[0], &data[0],
#                        pcx_CANdb_TransmitMessage1_field_start_pos,
#                        pcx_CANdb_TransmitMessage1_field_width,
#                        pcx_CANdb_TransmitMessage1_field_is_signed,
#                        pcx_CANdb_TransmitMessage1_field_valtype,
#                        pcx_CANdb_TransmitMessage1_field_order,
#                        pcx_CANdb_TransmitMessage1_field_eng_min,
#                        pcx_CANdb_TransmitMessage1_field_eng_max,
#                        pcx_CANdb_TransmitMessage1_field_scale,
#                        pcx_CANdb_TransmitMessage1_field_offset, 0, 1, 6);
# 
#       /* Do a transmit every time we are called, (CT2) */
#       retval = pcx_transmit(pcx_CANdb_TransmitMessage1_msg_handle, data);
	.d2line		3995
	lha		r3,pcx_CANdb_TransmitMessage1_msg_handle@sdarx(r0)
	diab.addi		r4,r1,52
	bl		pcx_transmit
.Llo1036:
	b		.L4727
.L4726:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		3998
.Llo1037:
	diab.li		r3,0		# retval=r3
.L4727:
	.d2line		4001
.Llo1038:
	rlwinm		r0,r3,0,24,31		# retval=r3
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage1 = !retval;
	.d2line		3998
	lis		r31,ATV_B@ha
	cntlzw		r0,r0
	e_add16i		r31,r31,ATV_B@l
	diab.srwi		r0,5
	stb		r0,131(r31)
	.section	.text_vle
.L6046:
	.section	.text_vle
.L6085:
#   }
# 
#   /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage6' */
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage6
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   {
#     U8 data[8];
#     BOOL retval;
#     F32 pcx_CANdb_TransmitMessage6_in_port_buffer[4];
#     F32 * pcx_CANdb_TransmitMessage6_in_port_ptr[4];
#     static const U8 pcx_CANdb_TransmitMessage6_field_start_pos[4] = {
#       0, 8, 16, 24, };
# 
#     static const U8 pcx_CANdb_TransmitMessage6_field_width[4] = {
#       1, 1, 1, 8, };
# 
#     static const U8 pcx_CANdb_TransmitMessage6_field_is_signed[4] = {
#       0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage6_field_valtype[4] = {
#       0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage6_field_order[4] = {
#       1, 1, 1, 1, };
# 
#     static const F32 pcx_CANdb_TransmitMessage6_field_eng_min[4] = {
#       0.0, 0.0, 0.0, 0.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage6_field_eng_max[4] = {
#       1.0, 1.0, 1.0, 255.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage6_field_scale[4] = {
#       1.0, 1.0, 1.0, 1.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage6_field_offset[4] = {
#       0.0, 0.0, 0.0, 0.0, };
# 
#     if (pcx_CANdb_TransmitMessage6_msg_handle != PCX_CONFIG_ERROR) {
	.d2line		4040
.Llo1039:
	lha		r0,pcx_CANdb_TransmitMessage6_msg_handle@sdarx(r0)
	e_cmph16i	r0,-1
	bc		1,2,.L4737	# eq
#       pcx_CANdb_TransmitMessage6_in_port_buffer[0] = ATV_B.RateTransition3;
	.d2line		4041
	lbz		r3,133(r31)		# retval=r3
	.d2line		4042
.Llo1040:
	diab.addi		r0,r1,124
	.d2line		4045
	diab.addi		r5,r1,128
#       pcx_CANdb_TransmitMessage6_in_port_ptr[0] =
	.d2line		4048
	diab.addi		r28,r1,132
	stw		r0,156(r1)
#         &pcx_CANdb_TransmitMessage6_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage6_in_port_buffer[1] = ATV_B.RateTransition5_g;
	.d2line		4053
	lis		r11,pcx_CANdb_TransmitMessage6_field_eng_max.4734@ha
	e_add16i		r11,r11,pcx_CANdb_TransmitMessage6_field_eng_max.4734@l
	lis		r12,pcx_CANdb_TransmitMessage6_field_scale.4735@ha
	.d2line		4041
	efscfui		r0,r3		# retval=r3
#       pcx_CANdb_TransmitMessage6_in_port_ptr[1] =
	lis		r30,pcx_CANdb_TransmitMessage6_field_offset.4736@ha
	.d2line		4051
	diab.addi		r29,r1,136
	diab.li		r26,0
#         &pcx_CANdb_TransmitMessage6_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage6_in_port_buffer[2] = ATV_B.RateTransition6_p;
	stw		r0,124(r1)
	diab.li		r25,4
	e_add16i		r12,r12,pcx_CANdb_TransmitMessage6_field_scale.4735@l
	e_add16i		r30,r30,pcx_CANdb_TransmitMessage6_field_offset.4736@l
#       pcx_CANdb_TransmitMessage6_in_port_ptr[2] =
	.d2line		4044
	lbz		r4,134(r31)
	diab.li		r0,1
#         &pcx_CANdb_TransmitMessage6_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage6_in_port_buffer[3] = ATV_B.RateTransition7_p;
	lis		r7,pcx_CANdb_TransmitMessage6_field_is_signed.4730@ha
	lis		r8,pcx_CANdb_TransmitMessage6_field_valtype.4731@ha
	efscfui		r6,r4
#       pcx_CANdb_TransmitMessage6_in_port_ptr[3] =
	.d2line		4045
	stw		r5,160(r1)
	.d2line		4053
	lis		r9,pcx_CANdb_TransmitMessage6_field_order.4732@ha
	lis		r10,pcx_CANdb_TransmitMessage6_field_eng_min.4733@ha
#         &pcx_CANdb_TransmitMessage6_in_port_buffer[3];
#       pcx_vdb_pack_msg((const F32 * const *)
	stw		r6,128(r1)
	lis		r5,pcx_CANdb_TransmitMessage6_field_start_pos.4728@ha
	diab.addi		r3,r1,156		# retval=r3
.Llo1041:
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage6_field_is_signed.4730@l
	.d2line		4047
	lbz		r27,135(r31)
	lis		r6,pcx_CANdb_TransmitMessage6_field_width.4729@ha
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage6_field_valtype.4731@l
	diab.addi		r4,r1,60
	.d2line		4048
	stw		r28,164(r1)
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage6_field_order.4732@l
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage6_field_eng_min.4733@l
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage6_field_start_pos.4728@l
	efscfui		r28,r27
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage6_field_width.4729@l
	stw		r28,132(r1)
	.d2line		4050
	lbz		r28,122(r31)
	stw		r11,8(r1)
	stw		r12,12(r1)
	efscfui		r11,r28
	stw		r30,16(r1)
	stw		r26,20(r1)
	stw		r0,24(r1)
	stw		r25,28(r1)
	stw		r11,136(r1)
	.d2line		4051
	stw		r29,168(r1)
	.d2line		4053
	bl		pcx_vdb_pack_msg
#                        &pcx_CANdb_TransmitMessage6_in_port_ptr[0], &data[0],
#                        pcx_CANdb_TransmitMessage6_field_start_pos,
#                        pcx_CANdb_TransmitMessage6_field_width,
#                        pcx_CANdb_TransmitMessage6_field_is_signed,
#                        pcx_CANdb_TransmitMessage6_field_valtype,
#                        pcx_CANdb_TransmitMessage6_field_order,
#                        pcx_CANdb_TransmitMessage6_field_eng_min,
#                        pcx_CANdb_TransmitMessage6_field_eng_max,
#                        pcx_CANdb_TransmitMessage6_field_scale,
#                        pcx_CANdb_TransmitMessage6_field_offset, 0, 1, 4);
# 
#       /* Do a transmit every time we are called, (CT2) */
#       retval = pcx_transmit(pcx_CANdb_TransmitMessage6_msg_handle, data);
	.d2line		4066
	lha		r3,pcx_CANdb_TransmitMessage6_msg_handle@sdarx(r0)		# retval=r3
	diab.addi		r4,r1,60
	bl		pcx_transmit
.Llo1042:
	b		.L4738
.L4737:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		4069
.Llo1043:
	diab.li		r3,0		# retval=r3
.L4738:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage6 = !retval;
	.d2line		4072
.Llo1044:
	rlwinm		r0,r3,0,24,31		# retval=r3
	cntlzw		r0,r0
	diab.srwi		r0,5
	stb		r0,136(r31)
	.section	.text_vle
.L6086:
	.section	.text_vle
.L6125:
.Llo1045:
	lha		r3,pcx_CANdb_ReceiveMessage_msg_handle@sdarx(r0)		# retval=r3
#   }
# 
#   /* S-Function (pcx_candb_receive_message): '<S3>/pcx_CANdb_ReceiveMessage' */
#   /* S-Function Block: <S3>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   {
#     U8 data[8];
#     U32 timestamp;
#     S8 pcxf_rx_receive_status;
#     F32 pcx_CANdb_ReceiveMessage_out_port_buffer[3];
#     F32 * pcx_CANdb_ReceiveMessage_out_port[3];
#     static const U8 pcx_CANdb_ReceiveMessage_field_start_pos[3] = {
#       0, 8, 16, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_field_width[3] = {
#       1, 1, 1, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_field_is_signed[3] = {
#       0, 0, 0, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_field_valtype[3] = {
#       0, 0, 0, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_field_order[3] = {
#       1, 1, 1, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_field_eng_min[3] = {
#       0.0, 0.0, 0.0, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_field_eng_max[3] = {
#       1.0, 1.0, 1.0, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_field_scale[3] = {
#       1.0, 1.0, 1.0, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_field_offset[3] = {
#       0.0, 0.0, 0.0, };
# 
#     if (pcx_CANdb_ReceiveMessage_msg_handle != PCX_CONFIG_ERROR) {
	.d2line		4112
.Llo1046:
	e_cmph16i	r3,-1		# retval=r3
	bc		1,2,.L4750	# eq
#       pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_msg_handle,
	.d2line		4113
.Llo1047:
	diab.addi		r4,r1,68
	diab.addi		r5,r1,36
.Llo1048:
	bl		pcx_receive
#         data, &timestamp);
#       ATV_B.pcx_CANdb_ReceiveMessage_o1 = (0 != (pcxf_rx_receive_status &
	.d2line		4115
.Llo1049:
	rlwinm		r4,r3,0,29,29		# pcxf_rx_receive_status=r3
	.d2line		4117
	rlwinm		r5,r3,0,30,30		# pcxf_rx_receive_status=r3
	addic		r0,r4,-1
	subfe		r0,r0,r4
#         PCX_RX_ERROR));
#       ATV_B.pcx_CANdb_ReceiveMessage_o3 = (0 != (pcxf_rx_receive_status &
	stb		r0,153(r31)
	addic		r0,r5,-1
	subfe		r0,r0,r5
	stb		r0,155(r31)
#         PCX_RX_OVERRUN));
# 
#       /* decompose message into fields */
#       if (pcxf_rx_receive_status & PCX_RX_DATA) {
	.d2line		4121
	se_btsti		r3,31		# pcxf_rx_receive_status=r3
	bc		1,2,.L4748	# eq
#         ATV_B.pcx_CANdb_ReceiveMessage_o2 = 1;
	.d2line		4122
.Llo1052:
	diab.li		r6,1
	.d2line		4129
	lis		r4,pcx_CANdb_ReceiveMessage_field_eng_min.4744@ha
#         pcx_CANdb_ReceiveMessage_out_port[0] = (F32*)
	stb		r6,154(r31)
	e_add16i		r4,r4,pcx_CANdb_ReceiveMessage_field_eng_min.4744@l
#           &pcx_CANdb_ReceiveMessage_out_port_buffer[0];
#         pcx_CANdb_ReceiveMessage_out_port[1] = (F32*)
	.d2line		4123
	diab.addi		r3,r1,100		# pcxf_rx_receive_status=r3
	.d2line		4125
.Llo1053:
	diab.addi		r5,r1,104
	stw		r4,8(r1)
#           &pcx_CANdb_ReceiveMessage_out_port_buffer[1];
#         pcx_CANdb_ReceiveMessage_out_port[2] = (F32*)
	.d2line		4127
	diab.addi		r0,r1,108
	stw		r6,28(r1)
	lis		r30,ATV_M@ha
	lis		r4,pcx_CANdb_ReceiveMessage_field_eng_max.4745@ha
#           &pcx_CANdb_ReceiveMessage_out_port_buffer[2];
#         pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_out_port[0], NULL, &data[0],
	stw		r3,112(r1)		# pcxf_rx_receive_status=r3
	e_add16i		r4,r4,pcx_CANdb_ReceiveMessage_field_eng_max.4745@l
	diab.li		r6,3
	stw		r4,12(r1)
	lis		r10,pcx_CANdb_ReceiveMessage_field_order.4743@ha
	stw		r6,32(r1)
	e_add16i		r30,r30,ATV_M@l
	lis		r4,pcx_CANdb_ReceiveMessage_field_scale.4746@ha
	stw		r5,116(r1)
	e_add16i		r4,r4,pcx_CANdb_ReceiveMessage_field_scale.4746@l
	stw		r0,120(r1)
	stw		r4,16(r1)
	diab.addi		r3,r1,112		# pcxf_rx_receive_status=r3
.Llo1054:
	e_add16i		r10,r10,pcx_CANdb_ReceiveMessage_field_order.4743@l
	diab.addi		r7,r30,52
	lis		r4,pcx_CANdb_ReceiveMessage_field_offset.4747@ha
	diab.addi		r8,r30,56
	e_add16i		r4,r4,pcx_CANdb_ReceiveMessage_field_offset.4747@l
	diab.addi		r9,r30,60
	stw		r4,20(r1)
	diab.addi		r6,r30,48
	diab.addi		r5,r1,68
	diab.li		r4,0
	stw		r4,24(r1)
	bl		pcx_vdb_unpack_msg
#                            pcx_CANdb_ReceiveMessage_field_start_pos,
#                            pcx_CANdb_ReceiveMessage_field_width,
#                            pcx_CANdb_ReceiveMessage_field_is_signed,
#                            pcx_CANdb_ReceiveMessage_field_valtype,
#                            pcx_CANdb_ReceiveMessage_field_order,
#                            pcx_CANdb_ReceiveMessage_field_eng_min,
#                            pcx_CANdb_ReceiveMessage_field_eng_max,
#                            pcx_CANdb_ReceiveMessage_field_scale,
#                            pcx_CANdb_ReceiveMessage_field_offset, 0, 1, 3);
#         ATV_B.pcx_CANdb_ReceiveMessage_o4 =
	.d2line		4139
	lwz		r0,100(r1)
	stw		r0,16(r31)
#           pcx_CANdb_ReceiveMessage_out_port_buffer[0];
#         ATV_B.pcx_CANdb_ReceiveMessage_o5 =
	.d2line		4141
	lwz		r0,104(r1)
	stw		r0,20(r31)
#           pcx_CANdb_ReceiveMessage_out_port_buffer[1];
#         ATV_B.pcx_CANdb_ReceiveMessage_o6 =
	.d2line		4143
	lwz		r0,108(r1)
	stw		r0,24(r31)
	b		.L4751
.L4748:
#           pcx_CANdb_ReceiveMessage_out_port_buffer[2];
#       } else {
#         ATV_B.pcx_CANdb_ReceiveMessage_o2 = 0;
	.d2line		4146
	diab.li		r0,0
	stb		r0,154(r31)
	b		.L4751
.L4750:
#       }
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       ATV_B.pcx_CANdb_ReceiveMessage_o1 = 1;
	.d2line		4150
	diab.li		r3,1		# retval=r3
	.d2line		4151
.Llo1050:
	diab.li		r0,0
#       ATV_B.pcx_CANdb_ReceiveMessage_o2 = 0;
	stb		r3,153(r31)		# retval=r3
	sth		r0,154(r31)
.L4751:
	.section	.text_vle
.L6126:
.Llo1051:
	lis		r30,ATV_DW@ha
#       ATV_B.pcx_CANdb_ReceiveMessage_o3 = 0;
#     }
#   }
# 
#   /* Chart: '<S3>/Chart' */
#   ATV_Chart(ATV_B.pcx_CANdb_ReceiveMessage_o2, &ATV_B.sf_Chart, &ATV_DW.sf_Chart);
	.d2line		4157
	lbz		r3,154(r31)		# pcxf_rx_receive_status=r3
	.d2line		4151
	e_add16i		r30,r30,ATV_DW@l
	diab.addi		r4,r31,180
	diab.addi		r5,r30,82
	bl		ATV_Chart
# 
#   /* Switch: '<S3>/Switch1' */
#   atv_v_dbg_chg_req = (ATV_B.sf_Chart.out && (ATV_B.pcx_CANdb_ReceiveMessage_o5
	.d2line		4160
	lbz		r4,180(r31)
	se_cmpi		r4,0
	bc		1,2,.L5043	# eq
	lwz		r0,20(r31)
	diab.li		r3,0		# pcxf_rx_receive_status=r3
.Llo1055:
	efscmpeq		1,r0,r3		# pcxf_rx_receive_status=r3
	bc		0,5,.L4800		# ne
.L5043:
.Llo1056:
	diab.li		r0,0
	b		.L4801
.L4800:
	diab.li		r0,1
.L4801:
	stb		r0,atv_v_dbg_chg_req@sdarx(r0)
#     != 0.0));
# 
#   /* Switch: '<S3>/Switch2' */
#   atv_v_dbg_heater_req = (ATV_B.sf_Chart.out &&
	.d2line		4164
	se_cmpi		r4,0
	bc		1,2,.L5044	# eq
#     (ATV_B.pcx_CANdb_ReceiveMessage_o6 != 0.0));
	.d2line		4165
	lwz		r0,24(r31)
	diab.li		r3,0		# pcxf_rx_receive_status=r3
.Llo1057:
	efscmpeq		1,r0,r3		# pcxf_rx_receive_status=r3
	bc		0,5,.L4803		# ne
.L5044:
	.d2line		4164
.Llo1058:
	diab.li		r0,0
	b		.L4804
.L4803:
	diab.li		r0,1
.L4804:
	stb		r0,atv_v_dbg_heater_req@sdarx(r0)
	.section	.text_vle
.L6165:
	lha		r3,pcx_CANdb_ReceiveMessage_p_msg_handle@sdarx(r0)		# pcxf_rx_receive_status=r3
# 
#   /* S-Function (pcx_candb_receive_message): '<S4>/pcx_CANdb_ReceiveMessage' */
#   /* S-Function Block: <S4>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   {
#     U8 data[8];
#     U32 timestamp;
#     S8 pcxf_rx_receive_status;
#     F32 pcx_CANdb_ReceiveMessage_p_out_port_buffer[7];
#     F32 * pcx_CANdb_ReceiveMessage_p_out_port[7];
#     static const U8 pcx_CANdb_ReceiveMessage_p_field_start_pos[7] = {
#       0, 8, 24, 16, 32, 40, 48, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_p_field_width[7] = {
#       8, 8, 8, 8, 8, 8, 8, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_p_field_is_signed[7] = {
#       0, 0, 0, 0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_p_field_valtype[7] = {
#       0, 0, 0, 0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_p_field_order[7] = {
#       1, 1, 1, 1, 1, 1, 1, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_p_field_eng_min[7] = {
#       0.0, 0.0, 0.0, 0.0, 0.0,
#       0.0, 0.0, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_p_field_eng_max[7] = {
#       255.0, 255.0, 255.0, 255.0, 255.0,
#       255.0, 255.0, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_p_field_scale[7] = {
#       1.0, 1.0, 1.0, 1.0, 1.0,
#       1.0, 1.0, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_p_field_offset[7] = {
#       0.0, 0.0, 0.0, 0.0, 0.0,
#       0.0, 0.0, };
# 
#     if (pcx_CANdb_ReceiveMessage_p_msg_handle != PCX_CONFIG_ERROR) {
	.d2line		4208
.Llo1059:
	e_cmph16i	r3,-1		# pcxf_rx_receive_status=r3
	bc		1,2,.L4763	# eq
#       pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_p_msg_handle,
	.d2line		4209
.Llo1060:
	diab.addi		r4,r1,76
	diab.addi		r5,r1,40
.Llo1061:
	bl		pcx_receive
#         data, &timestamp);
#       ATV_B.pcx_CANdb_ReceiveMessage_o1_k = (0 != (pcxf_rx_receive_status &
	.d2line		4211
.Llo1062:
	rlwinm		r4,r3,0,29,29		# pcxf_rx_receive_status=r3
	.d2line		4213
	rlwinm		r5,r3,0,30,30		# pcxf_rx_receive_status=r3
	addic		r0,r4,-1
	subfe		r0,r0,r4
#         PCX_RX_ERROR));
#       ATV_B.pcx_CANdb_ReceiveMessage_o3_b = (0 != (pcxf_rx_receive_status &
	stb		r0,156(r31)
	addic		r0,r5,-1
	subfe		r0,r0,r5
	stb		r0,158(r31)
#         PCX_RX_OVERRUN));
# 
#       /* decompose message into fields */
#       if (pcxf_rx_receive_status & PCX_RX_DATA) {
	.d2line		4217
	se_btsti		r3,31		# pcxf_rx_receive_status=r3
	bc		1,2,.L4761	# eq
#         ATV_B.pcx_CANdb_ReceiveMessage_o2_d = 1;
	.d2line		4218
.Llo1065:
	diab.li		r5,1
	.d2line		4223
	diab.addi		r3,r1,292		# pcxf_rx_receive_status=r3
#         pcx_CANdb_ReceiveMessage_p_out_port[0] = (F32*)
.Llo1066:
	stb		r5,157(r31)
	.d2line		4219
	diab.addi		r4,r1,284
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[0];
#         pcx_CANdb_ReceiveMessage_p_out_port[1] = (F32*)
	.d2line		4221
	diab.addi		r0,r1,288
	.d2line		4225
	diab.addi		r7,r1,296
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[1];
#         pcx_CANdb_ReceiveMessage_p_out_port[2] = (F32*)
	stw		r3,320(r1)		# pcxf_rx_receive_status=r3
	.d2line		4229
	diab.addi		r6,r1,304
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[2];
#         pcx_CANdb_ReceiveMessage_p_out_port[3] = (F32*)
	.d2line		4233
	stw		r5,28(r1)
	lis		r8,pcx_CANdb_ReceiveMessage_p_field_is_signed.4754@ha
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[3];
#         pcx_CANdb_ReceiveMessage_p_out_port[4] = (F32*)
	lis		r3,pcx_CANdb_ReceiveMessage_p_field_eng_min.4757@ha		# pcxf_rx_receive_status=r3
	.d2line		4219
	stw		r4,312(r1)
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[4];
#         pcx_CANdb_ReceiveMessage_p_out_port[5] = (F32*)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_p_field_eng_min.4757@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	.d2line		4221
	stw		r0,316(r1)
	stw		r3,8(r1)		# pcxf_rx_receive_status=r3
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[5];
#         pcx_CANdb_ReceiveMessage_p_out_port[6] = (F32*)
	.d2line		4227
	diab.addi		r5,r1,300
	.d2line		4225
	stw		r7,324(r1)
	.d2line		4233
	diab.li		r4,0
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[6];
#         pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_p_out_port[0], NULL, &data
	lis		r3,pcx_CANdb_ReceiveMessage_p_field_eng_max.4758@ha		# pcxf_rx_receive_status=r3
	.d2line		4229
	stw		r6,332(r1)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_p_field_eng_max.4758@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	stw		r5,328(r1)
	stw		r3,12(r1)		# pcxf_rx_receive_status=r3
	.d2line		4231
	diab.addi		r0,r1,308
	stw		r4,24(r1)
	lis		r9,pcx_CANdb_ReceiveMessage_p_field_valtype.4755@ha
	lis		r3,pcx_CANdb_ReceiveMessage_p_field_scale.4759@ha		# pcxf_rx_receive_status=r3
	stw		r0,336(r1)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_p_field_scale.4759@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	lis		r10,pcx_CANdb_ReceiveMessage_p_field_order.4756@ha
	stw		r3,16(r1)		# pcxf_rx_receive_status=r3
	lis		r7,pcx_CANdb_ReceiveMessage_p_field_width.4753@ha
	lis		r6,pcx_CANdb_ReceiveMessage_p_field_start_pos.4752@ha
	e_add16i		r8,r8,pcx_CANdb_ReceiveMessage_p_field_is_signed.4754@l
	lis		r3,pcx_CANdb_ReceiveMessage_p_field_offset.4760@ha		# pcxf_rx_receive_status=r3
	diab.addi		r5,r1,76
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_p_field_offset.4760@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	e_add16i		r9,r9,pcx_CANdb_ReceiveMessage_p_field_valtype.4755@l
	stw		r3,20(r1)		# pcxf_rx_receive_status=r3
	e_add16i		r10,r10,pcx_CANdb_ReceiveMessage_p_field_order.4756@l
	e_add16i		r7,r7,pcx_CANdb_ReceiveMessage_p_field_width.4753@l
	e_add16i		r6,r6,pcx_CANdb_ReceiveMessage_p_field_start_pos.4752@l
	diab.li		r3,7		# pcxf_rx_receive_status=r3
	stw		r3,32(r1)		# pcxf_rx_receive_status=r3
	diab.addi		r3,r1,312		# pcxf_rx_receive_status=r3
.Llo1067:
	bl		pcx_vdb_unpack_msg
#                            [0], pcx_CANdb_ReceiveMessage_p_field_start_pos,
#                            pcx_CANdb_ReceiveMessage_p_field_width,
#                            pcx_CANdb_ReceiveMessage_p_field_is_signed,
#                            pcx_CANdb_ReceiveMessage_p_field_valtype,
#                            pcx_CANdb_ReceiveMessage_p_field_order,
#                            pcx_CANdb_ReceiveMessage_p_field_eng_min,
#                            pcx_CANdb_ReceiveMessage_p_field_eng_max,
#                            pcx_CANdb_ReceiveMessage_p_field_scale,
#                            pcx_CANdb_ReceiveMessage_p_field_offset, 0, 1, 7);
#         ATV_B.pcx_CANdb_ReceiveMessage_o4_k =
	.d2line		4243
	lwz		r0,284(r1)
	efsctsiz		r0,r0
	sth		r0,92(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[0];
#         ATV_B.pcx_CANdb_ReceiveMessage_o5_c =
	.d2line		4245
	lwz		r0,288(r1)
	efsctsiz		r0,r0
	sth		r0,94(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[1];
#         ATV_B.pcx_CANdb_ReceiveMessage_o6_o =
	.d2line		4247
	lwz		r0,292(r1)
	efsctsiz		r0,r0
	sth		r0,96(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[2];
#         ATV_B.pcx_CANdb_ReceiveMessage_o7_p =
	.d2line		4249
	lwz		r0,296(r1)
	efsctsiz		r0,r0
	sth		r0,98(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[3];
#         ATV_B.pcx_CANdb_ReceiveMessage_o8 =
	.d2line		4251
	lwz		r0,300(r1)
	efsctsiz		r0,r0
	sth		r0,100(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[4];
#         ATV_B.pcx_CANdb_ReceiveMessage_o9_b =
	.d2line		4253
	lwz		r0,304(r1)
	efsctsiz		r0,r0
	sth		r0,102(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[5];
#         ATV_B.pcx_CANdb_ReceiveMessage_o10 =
	.d2line		4255
	lwz		r0,308(r1)
	efsctsiz		r0,r0
	sth		r0,104(r31)
	b		.L4764
.L4761:
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[6];
#       } else {
#         ATV_B.pcx_CANdb_ReceiveMessage_o2_d = 0;
	.d2line		4258
	diab.li		r0,0
	stb		r0,157(r31)
	b		.L4764
.L4763:
#       }
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       ATV_B.pcx_CANdb_ReceiveMessage_o1_k = 1;
	.d2line		4262
	diab.li		r3,256		# pcxf_rx_receive_status=r3
	.d2line		4264
.Llo1063:
	diab.li		r0,0
#       ATV_B.pcx_CANdb_ReceiveMessage_o2_d = 0;
#       ATV_B.pcx_CANdb_ReceiveMessage_o3_b = 0;
	sth		r3,156(r31)		# pcxf_rx_receive_status=r3
	stb		r0,158(r31)
.L4764:
	.section	.text_vle
.L6166:
#     }
#   }
# 
#   /* Chart: '<S4>/Chart' */
#   ATV_Chart(ATV_B.pcx_CANdb_ReceiveMessage_o2_d, &ATV_B.sf_Chart_b,
	.d2line		4269
.Llo1064:
	lbz		r3,157(r31)		# pcxf_rx_receive_status=r3
	diab.addi		r4,r31,179
	diab.addi		r5,r30,79
	bl		ATV_Chart
#             &ATV_DW.sf_Chart_b);
# 
#   /* Switch: '<S4>/Switch' incorporates:
#    *  Constant: '<S4>/Constant'
#    *  Constant: '<S4>/Constant1'
#    *  Constant: '<S4>/Constant2'
#    *  Constant: '<S4>/Constant3'
#    *  Constant: '<S4>/Constant4'
#    *  Constant: '<S4>/Constant5'
#    *  Constant: '<S4>/Constant6'
#    *  Switch: '<S4>/Switch1'
#    *  Switch: '<S4>/Switch2'
#    *  Switch: '<S4>/Switch3'
#    *  Switch: '<S4>/Switch4'
#    *  Switch: '<S4>/Switch5'
#    *  Switch: '<S4>/Switch6'
#    */
#   if (ATV_B.sf_Chart_b.out) {
	.d2line		4287
	lbz		r0,179(r31)
	se_cmpi		r0,0
	bc		1,2,.L4765	# eq
#     ATV_B.atv_v_dbg_T_FMot = ATV_B.pcx_CANdb_ReceiveMessage_o4_k;
	.d2line		4289
	lha		r0,94(r31)
	.d2line		4288
	lha		r3,92(r31)		# pcxf_rx_receive_status=r3
#     ATV_B.atv_v_dbg_T_FInv = ATV_B.pcx_CANdb_ReceiveMessage_o5_c;
.Llo1068:
	sth		r0,108(r31)
	sth		r3,106(r31)		# pcxf_rx_receive_status=r3
#     ATV_B.atv_v_dbg_T_RMot = ATV_B.pcx_CANdb_ReceiveMessage_o7_p;
	.d2line		4291
	lha		r0,96(r31)
	.d2line		4290
	lha		r3,98(r31)		# pcxf_rx_receive_status=r3
#     ATV_B.atv_v_dbg_T_RInv = ATV_B.pcx_CANdb_ReceiveMessage_o6_o;
	sth		r0,112(r31)
	sth		r3,110(r31)		# pcxf_rx_receive_status=r3
#     ATV_B.atv_v_dbg_T_GMot = ATV_B.pcx_CANdb_ReceiveMessage_o8;
	.d2line		4293
	lha		r0,102(r31)
	.d2line		4292
	lha		r3,100(r31)		# pcxf_rx_receive_status=r3
#     ATV_B.atv_v_dbg_T_GInv = ATV_B.pcx_CANdb_ReceiveMessage_o9_b;
	sth		r0,116(r31)
	sth		r3,114(r31)		# pcxf_rx_receive_status=r3
#     ATV_B.atv_v_dbg_T_Rad = ATV_B.pcx_CANdb_ReceiveMessage_o10;
	.d2line		4294
	lha		r0,104(r31)
	sth		r0,118(r31)
	b		.L4766
.L4765:
#   } else {
#     ATV_B.atv_v_dbg_T_FMot = 0;
	.d2line		4296
.Llo1069:
	diab.li		r0,0
	sth		r0,106(r31)
#     ATV_B.atv_v_dbg_T_FInv = 0;
	.d2line		4297
	stw		r0,108(r31)
#     ATV_B.atv_v_dbg_T_RMot = 0;
#     ATV_B.atv_v_dbg_T_RInv = 0;
	.d2line		4299
	stw		r0,112(r31)
#     ATV_B.atv_v_dbg_T_GMot = 0;
#     ATV_B.atv_v_dbg_T_GInv = 0;
	.d2line		4301
	stw		r0,116(r31)
.L4766:
	.section	.text_vle
.L6205:
	lha		r3,pcx_CANdb_ReceiveMessage_f_msg_handle@sdarx(r0)		# pcxf_rx_receive_status=r3
#     ATV_B.atv_v_dbg_T_Rad = 0;
#   }
# 
#   /* End of Switch: '<S4>/Switch' */
# 
#   /* S-Function (pcx_candb_receive_message): '<S5>/pcx_CANdb_ReceiveMessage' */
#   /* S-Function Block: <S5>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   {
#     U8 data[8];
#     U32 timestamp;
#     S8 pcxf_rx_receive_status;
#     F32 pcx_CANdb_ReceiveMessage_f_out_port_buffer[4];
#     F32 * pcx_CANdb_ReceiveMessage_f_out_port[4];
#     static const U8 pcx_CANdb_ReceiveMessage_f_field_start_pos[4] = {
#       56, 48, 32, 0, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_f_field_width[4] = {
#       8, 8, 16, 32, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_f_field_is_signed[4] = {
#       1, 1, 1, 1, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_f_field_valtype[4] = {
#       0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_f_field_order[4] = {
#       1, 1, 1, 1, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_f_field_eng_min[4] = {
#       -128.0, -128.0, -2048.0, -2.14748E+9, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_f_field_eng_max[4] = {
#       127.0, 127.0, 2047.94, 2.14748E+9, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_f_field_scale[4] = {
#       1.0, 1.0, 0.0625, 1.0, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_f_field_offset[4] = {
#       0.0, 0.0, 0.0, 0.0, };
# 
#     if (pcx_CANdb_ReceiveMessage_f_msg_handle != PCX_CONFIG_ERROR) {
	.d2line		4344
.Llo1070:
	e_cmph16i	r3,-1		# pcxf_rx_receive_status=r3
	bc		1,2,.L4778	# eq
#       pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_f_msg_handle,
	.d2line		4345
.Llo1071:
	diab.addi		r4,r1,84
	diab.addi		r5,r1,44
.Llo1072:
	bl		pcx_receive
#         data, &timestamp);
#       ATV_B.pcx_CANdb_ReceiveMessage_o1_g = (0 != (pcxf_rx_receive_status &
	.d2line		4347
.Llo1073:
	rlwinm		r4,r3,0,29,29		# pcxf_rx_receive_status=r3
	.d2line		4349
	rlwinm		r5,r3,0,30,30		# pcxf_rx_receive_status=r3
	addic		r0,r4,-1
	subfe		r0,r0,r4
#         PCX_RX_ERROR));
#       ATV_B.pcx_CANdb_ReceiveMessage_o3_d = (0 != (pcxf_rx_receive_status &
	stb		r0,159(r31)
	addic		r0,r5,-1
	subfe		r0,r0,r5
	stb		r0,161(r31)
#         PCX_RX_OVERRUN));
# 
#       /* decompose message into fields */
#       if (pcxf_rx_receive_status & PCX_RX_DATA) {
	.d2line		4353
	se_btsti		r3,31		# pcxf_rx_receive_status=r3
	bc		1,2,.L4776	# eq
#         ATV_B.pcx_CANdb_ReceiveMessage_o2_n = 1;
	.d2line		4354
.Llo1076:
	diab.li		r3,1		# pcxf_rx_receive_status=r3
	.d2line		4355
.Llo1077:
	diab.addi		r7,r1,140
#         pcx_CANdb_ReceiveMessage_f_out_port[0] = (F32*)
	stb		r3,160(r31)		# pcxf_rx_receive_status=r3
	.d2line		4359
	diab.addi		r6,r1,148
#           &pcx_CANdb_ReceiveMessage_f_out_port_buffer[0];
#         pcx_CANdb_ReceiveMessage_f_out_port[1] = (F32*)
	.d2line		4357
	diab.addi		r5,r1,144
	.d2line		4361
	diab.addi		r0,r1,152
#           &pcx_CANdb_ReceiveMessage_f_out_port_buffer[1];
#         pcx_CANdb_ReceiveMessage_f_out_port[2] = (F32*)
	.d2line		4363
	stw		r3,28(r1)		# pcxf_rx_receive_status=r3
	diab.li		r4,0
	.d2line		4355
	stw		r7,172(r1)
#           &pcx_CANdb_ReceiveMessage_f_out_port_buffer[2];
#         pcx_CANdb_ReceiveMessage_f_out_port[3] = (F32*)
	lis		r8,pcx_CANdb_ReceiveMessage_f_field_is_signed.4769@ha
	lis		r3,pcx_CANdb_ReceiveMessage_f_field_eng_min.4772@ha		# pcxf_rx_receive_status=r3
	.d2line		4359
	stw		r6,180(r1)
#           &pcx_CANdb_ReceiveMessage_f_out_port_buffer[3];
#         pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_f_out_port[0], NULL, &data
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_f_field_eng_min.4772@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	.d2line		4357
	stw		r5,176(r1)
	stw		r3,8(r1)		# pcxf_rx_receive_status=r3
	lis		r9,pcx_CANdb_ReceiveMessage_f_field_valtype.4770@ha
	stw		r4,24(r1)
	lis		r10,pcx_CANdb_ReceiveMessage_f_field_order.4771@ha
	lis		r3,pcx_CANdb_ReceiveMessage_f_field_eng_max.4773@ha		# pcxf_rx_receive_status=r3
	.d2line		4361
	stw		r0,184(r1)
	.d2line		4363
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_f_field_eng_max.4773@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	lis		r7,pcx_CANdb_ReceiveMessage_f_field_width.4768@ha
	stw		r3,12(r1)		# pcxf_rx_receive_status=r3
	lis		r6,pcx_CANdb_ReceiveMessage_f_field_start_pos.4767@ha
	e_add16i		r8,r8,pcx_CANdb_ReceiveMessage_f_field_is_signed.4769@l
	diab.addi		r5,r1,84
	lis		r3,pcx_CANdb_ReceiveMessage_f_field_scale.4774@ha		# pcxf_rx_receive_status=r3
	e_add16i		r9,r9,pcx_CANdb_ReceiveMessage_f_field_valtype.4770@l
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_f_field_scale.4774@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	e_add16i		r10,r10,pcx_CANdb_ReceiveMessage_f_field_order.4771@l
	stw		r3,16(r1)		# pcxf_rx_receive_status=r3
	e_add16i		r7,r7,pcx_CANdb_ReceiveMessage_f_field_width.4768@l
	e_add16i		r6,r6,pcx_CANdb_ReceiveMessage_f_field_start_pos.4767@l
	lis		r3,pcx_CANdb_ReceiveMessage_f_field_offset.4775@ha		# pcxf_rx_receive_status=r3
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_f_field_offset.4775@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	stw		r3,20(r1)		# pcxf_rx_receive_status=r3
	diab.li		r3,4		# pcxf_rx_receive_status=r3
	stw		r3,32(r1)		# pcxf_rx_receive_status=r3
	diab.addi		r3,r1,172		# pcxf_rx_receive_status=r3
.Llo1078:
	bl		pcx_vdb_unpack_msg
#                            [0], pcx_CANdb_ReceiveMessage_f_field_start_pos,
#                            pcx_CANdb_ReceiveMessage_f_field_width,
#                            pcx_CANdb_ReceiveMessage_f_field_is_signed,
#                            pcx_CANdb_ReceiveMessage_f_field_valtype,
#                            pcx_CANdb_ReceiveMessage_f_field_order,
#                            pcx_CANdb_ReceiveMessage_f_field_eng_min,
#                            pcx_CANdb_ReceiveMessage_f_field_eng_max,
#                            pcx_CANdb_ReceiveMessage_f_field_scale,
#                            pcx_CANdb_ReceiveMessage_f_field_offset, 0, 1, 4);
#         ATV_B.pcx_CANdb_ReceiveMessage_o4_f =
	.d2line		4373
	lwz		r0,140(r1)
	stw		r0,28(r31)
#           pcx_CANdb_ReceiveMessage_f_out_port_buffer[0];
#         ATV_B.pcx_CANdb_ReceiveMessage_o5_m =
	.d2line		4375
	lwz		r0,144(r1)
	stw		r0,32(r31)
#           pcx_CANdb_ReceiveMessage_f_out_port_buffer[1];
#         ATV_B.pcx_CANdb_ReceiveMessage_o6_n =
	.d2line		4377
	lwz		r0,148(r1)
	stw		r0,64(r31)
#           pcx_CANdb_ReceiveMessage_f_out_port_buffer[2];
#         ATV_B.pcx_CANdb_ReceiveMessage_o7 =
	.d2line		4379
	lwz		r0,152(r1)
	stw		r0,36(r31)
	b		.L4779
.L4776:
#           pcx_CANdb_ReceiveMessage_f_out_port_buffer[3];
#       } else {
#         ATV_B.pcx_CANdb_ReceiveMessage_o2_n = 0;
	.d2line		4382
	diab.li		r0,0
	stb		r0,160(r31)
	b		.L4779
.L4778:
#       }
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       ATV_B.pcx_CANdb_ReceiveMessage_o1_g = 1;
	.d2line		4386
	diab.li		r3,1		# pcxf_rx_receive_status=r3
	.d2line		4387
.Llo1074:
	diab.li		r0,0
#       ATV_B.pcx_CANdb_ReceiveMessage_o2_n = 0;
	stb		r3,159(r31)		# pcxf_rx_receive_status=r3
	sth		r0,160(r31)
.L4779:
	.section	.text_vle
.L6206:
#       ATV_B.pcx_CANdb_ReceiveMessage_o3_d = 0;
#     }
#   }
# 
#   /* Chart: '<S5>/Chart' */
#   ATV_Chart(ATV_B.pcx_CANdb_ReceiveMessage_o2_n, &ATV_B.sf_Chart_l,
	.d2line		4393
.Llo1075:
	lbz		r3,160(r31)		# pcxf_rx_receive_status=r3
	diab.addi		r4,r31,178
	diab.addi		r5,r30,76
	bl		ATV_Chart
#             &ATV_DW.sf_Chart_l);
# 
#   /* Switch: '<S5>/Switch3' incorporates:
#    *  Constant: '<S5>/Constant3'
#    */
#   if (ATV_B.sf_Chart_l.out) {
	.d2line		4399
	lbz		r0,178(r31)
	se_cmpi		r0,0
	bc		1,2,.L4780	# eq
#     u0 = ATV_B.pcx_CANdb_ReceiveMessage_o7;
	.d2line		4400
	lwz		r0,36(r31)		# u0=r0
.Llo1021:
	b		.L4781
.L4780:
#   } else {
#     u0 = 0.0;
	.d2line		4402
.Llo1022:
	diab.li		r0,0		# u0=r0
.L4781:
#   }
# 
#   /* End of Switch: '<S5>/Switch3' */
# 
#   /* Saturate: '<S5>/Saturation' */
#   if (u0 > 32767.0) {
	.d2line		4408
.Llo1023:
	e_lis		r3,18175		# pcxf_rx_receive_status=r3
.Llo1079:
	e_ori		r3,r3,65024		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	efscmpgt		1,r0,r3		# u0=r0 pcxf_rx_receive_status=r3
	bc		0,5,.L4783		# le
#     u0 = 32767.0;
	.d2line		4409
	b		.L4784
.L4783:
	e_lis		r3,50943		# pcxf_rx_receive_status=r3
	e_ori		r3,r3,65024		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
#   } else {
#     if (u0 < -32767.0) {
	.d2line		4411
	efscmplt		1,r0,r3		# u0=r0 pcxf_rx_receive_status=r3
	isel		r3,r3,r0,5		# u0=r3 pcxf_rx_receive_status=r3 u0=r0
	b		.L4784
#       u0 = -32767.0;
.L4784:
#     }
#   }
# 
#   u0 = floor(u0);
	.d2line		4416
.Llo1024:
	bl		_f_ftod
.Llo1080:
	bl		floor
	bl		_d_dtof
.Llo1007:
	mr		r30,r3		# u0=r30 u0=r3
#   if (rtIsNaN(u0)) {
	.d2line		4417
	bl		rtIsNaN
.Llo1008:
	e_andi.		r3,r3,255		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
.Llo1081:
	bc		1,2,.L4785	# eq
#     u0 = 0.0;
	.d2line		4418
.Llo1009:
	diab.li		r3,0		# u0=r3
.Llo1011:
	b		.L4806
.L4785:
#   } else {
#     u0 = fmod(u0, 65536.0);
	.d2line		4420
.Llo1012:
	mr		r3,r30		# u0=r3 u0=r30
	bl		_f_ftod
	.d2line		4423
	diab.li		r30,0		# pcxf_rx_receive_status=r30
.Llo1010:
	e_lis		r5,16624
	diab.li		r6,0
	bl		fmod
	bl		_d_dtof
#   }
# 
#   ATV_B.Saturation_a = (int16_T)(u0 < 0.0 ? (int32_T)(int16_T)-(int16_T)
.Llo1013:
	efscmplt		1,r3,r30		# u0=r3 pcxf_rx_receive_status=r30
	bc		0,5,.L4806		# ge
.Llo1082:
	efsneg		r0,r3		# u0=r0 u0=r3
.Llo1025:
	efsctuiz		r0,r0		# u0=r0 u0=r0
	neg		r0,r0		# u0=r0 u0=r0
	b		.L4807
.L4806:
.Llo1026:
	efsctuiz		r0,r3		# u0=r0 u0=r3
.L4807:
	.section	.text_vle
.L6245:
.Llo1014:
	sth		r0,120(r31)		# u0=r0
	lha		r3,pcx_CANdb_ReceiveMessage_e_msg_handle@sdarx(r0)		# u0=r3
#     (uint16_T)-u0 : (int32_T)(int16_T)(uint16_T)u0);
# 
#   /* End of Saturate: '<S5>/Saturation' */
# 
#   /* S-Function (pcx_candb_receive_message): '<S2>/pcx_CANdb_ReceiveMessage' */
#   /* S-Function Block: <S2>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   {
#     U8 data[8];
#     U32 timestamp;
#     S8 pcxf_rx_receive_status;
#     F32 pcx_CANdb_ReceiveMessage_e_out_port_buffer[6];
#     F32 * pcx_CANdb_ReceiveMessage_e_out_port[6];
#     static const U8 pcx_CANdb_ReceiveMessage_e_field_start_pos[6] = {
#       7, 15, 16, 32, 55, 63, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_e_field_width[6] = {
#       8, 8, 16, 16, 8, 8, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_e_field_is_signed[6] = {
#       0, 0, 0, 1, 0, 0, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_e_field_valtype[6] = {
#       0, 0, 0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_ReceiveMessage_e_field_order[6] = {
#       0, 0, 1, 1, 0, 0, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_e_field_eng_min[6] = {
#       0.0, 0.0, 0.0, -3276.8, 0.0,
#       1720.0, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_e_field_eng_max[6] = {
#       255.0, 127.5, 6553.5, 3276.7, 255.0,
#       1975.0, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_e_field_scale[6] = {
#       1.0, 0.5, 0.1, 0.1, 1.0,
#       1.0, };
# 
#     static const F32 pcx_CANdb_ReceiveMessage_e_field_offset[6] = {
#       0.0, 0.0, 0.0, 0.0, 0.0,
#       1720.0, };
# 
#     if (pcx_CANdb_ReceiveMessage_e_msg_handle != PCX_CONFIG_ERROR) {
	.d2line		4469
.Llo1015:
	e_cmph16i	r3,-1		# u0=r3
	bc		1,2,.L4798	# eq
#       pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_e_msg_handle,
	.d2line		4470
.Llo1016:
	diab.addi		r4,r1,92
	diab.addi		r5,r1,48
.Llo1017:
	bl		pcx_receive
#         data, &timestamp);
#       ATV_B.pcx_CANdb_ReceiveMessage_o1_n = (0 != (pcxf_rx_receive_status &
	.d2line		4472
.Llo1018:
	rlwinm		r4,r3,0,29,29		# pcxf_rx_receive_status=r3
	.d2line		4474
	rlwinm		r5,r3,0,30,30		# pcxf_rx_receive_status=r3
	addic		r0,r4,-1		# u0=r0
.Llo1027:
	subfe		r0,r0,r4		# u0=r0 u0=r0
#         PCX_RX_ERROR));
#       ATV_B.pcx_CANdb_ReceiveMessage_o3_p = (0 != (pcxf_rx_receive_status &
	stb		r0,162(r31)		# u0=r0
	addic		r0,r5,-1		# u0=r0
	subfe		r0,r0,r5		# u0=r0 u0=r0
	stb		r0,164(r31)		# u0=r0
#         PCX_RX_OVERRUN));
# 
#       /* decompose message into fields */
#       if (pcxf_rx_receive_status & PCX_RX_DATA) {
	.d2line		4478
	se_btsti		r3,31		# pcxf_rx_receive_status=r3
	bc		1,2,.L4796	# eq
#         ATV_B.pcx_CANdb_ReceiveMessage_o2_l = 1;
	.d2line		4479
.Llo1028:
	diab.li		r4,1
	.d2line		4482
	diab.addi		r3,r1,216		# pcxf_rx_receive_status=r3
#         pcx_CANdb_ReceiveMessage_e_out_port[0] = (F32*)
.Llo1083:
	stb		r4,163(r31)
	.d2line		4480
	diab.addi		r0,r1,212		# u0=r0
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[0];
#         pcx_CANdb_ReceiveMessage_e_out_port[1] = (F32*)
	.d2line		4484
.Llo1029:
	diab.addi		r7,r1,220
	.d2line		4488
	diab.addi		r6,r1,228
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[1];
#         pcx_CANdb_ReceiveMessage_e_out_port[2] = (F32*)
	stw		r3,264(r1)		# pcxf_rx_receive_status=r3
	.d2line		4486
	diab.addi		r5,r1,224
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[2];
#         pcx_CANdb_ReceiveMessage_e_out_port[3] = (F32*)
	.d2line		4492
	stw		r4,28(r1)
	lis		r8,pcx_CANdb_ReceiveMessage_e_field_is_signed.4789@ha
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[3];
#         pcx_CANdb_ReceiveMessage_e_out_port[4] = (F32*)
	lis		r3,pcx_CANdb_ReceiveMessage_e_field_eng_min.4792@ha		# pcxf_rx_receive_status=r3
	.d2line		4480
	stw		r0,260(r1)		# u0=r0
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_e_field_eng_min.4792@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[4];
#         pcx_CANdb_ReceiveMessage_e_out_port[5] = (F32*)
	.d2line		4484
	stw		r7,268(r1)
	stw		r3,8(r1)		# pcxf_rx_receive_status=r3
	diab.li		r4,0
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[5];
#         pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_e_out_port[0], NULL, &data
	.d2line		4488
	stw		r6,276(r1)
	.d2line		4490
	diab.addi		r0,r1,232		# u0=r0
	.d2line		4492
	lis		r3,pcx_CANdb_ReceiveMessage_e_field_eng_max.4793@ha		# pcxf_rx_receive_status=r3
	.d2line		4486
	stw		r5,272(r1)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_e_field_eng_max.4793@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	stw		r4,24(r1)
	stw		r3,12(r1)		# pcxf_rx_receive_status=r3
	lis		r9,pcx_CANdb_ReceiveMessage_e_field_valtype.4790@ha
	stw		r0,280(r1)		# u0=r0
	lis		r10,pcx_CANdb_ReceiveMessage_e_field_order.4791@ha
	lis		r3,pcx_CANdb_ReceiveMessage_e_field_scale.4794@ha		# pcxf_rx_receive_status=r3
	lis		r7,pcx_CANdb_ReceiveMessage_e_field_width.4788@ha
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_e_field_scale.4794@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	lis		r6,pcx_CANdb_ReceiveMessage_e_field_start_pos.4787@ha
	stw		r3,16(r1)		# pcxf_rx_receive_status=r3
	e_add16i		r8,r8,pcx_CANdb_ReceiveMessage_e_field_is_signed.4789@l
	diab.addi		r5,r1,92
	e_add16i		r9,r9,pcx_CANdb_ReceiveMessage_e_field_valtype.4790@l
	lis		r3,pcx_CANdb_ReceiveMessage_e_field_offset.4795@ha		# pcxf_rx_receive_status=r3
	e_add16i		r10,r10,pcx_CANdb_ReceiveMessage_e_field_order.4791@l
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_e_field_offset.4795@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	e_add16i		r7,r7,pcx_CANdb_ReceiveMessage_e_field_width.4788@l
	stw		r3,20(r1)		# pcxf_rx_receive_status=r3
	e_add16i		r6,r6,pcx_CANdb_ReceiveMessage_e_field_start_pos.4787@l
	diab.li		r3,6		# pcxf_rx_receive_status=r3
	stw		r3,32(r1)		# pcxf_rx_receive_status=r3
	diab.addi		r3,r1,260		# pcxf_rx_receive_status=r3
.Llo1084:
	bl		pcx_vdb_unpack_msg
#                            [0], pcx_CANdb_ReceiveMessage_e_field_start_pos,
#                            pcx_CANdb_ReceiveMessage_e_field_width,
#                            pcx_CANdb_ReceiveMessage_e_field_is_signed,
#                            pcx_CANdb_ReceiveMessage_e_field_valtype,
#                            pcx_CANdb_ReceiveMessage_e_field_order,
#                            pcx_CANdb_ReceiveMessage_e_field_eng_min,
#                            pcx_CANdb_ReceiveMessage_e_field_eng_max,
#                            pcx_CANdb_ReceiveMessage_e_field_scale,
#                            pcx_CANdb_ReceiveMessage_e_field_offset, 0, 1, 6);
#         ATV_B.pcx_CANdb_ReceiveMessage_o4_n =
	.d2line		4502
.Llo1030:
	lwz		r0,212(r1)		# u0=r0
.Llo1031:
	stw		r0,44(r31)		# u0=r0
#           pcx_CANdb_ReceiveMessage_e_out_port_buffer[0];
#         ATV_B.pcx_CANdb_ReceiveMessage_o5_mv =
	.d2line		4504
	lwz		r0,216(r1)		# u0=r0
	stw		r0,48(r31)		# u0=r0
#           pcx_CANdb_ReceiveMessage_e_out_port_buffer[1];
#         bms_pack_voltage = pcx_CANdb_ReceiveMessage_e_out_port_buffer[2];
	.d2line		4506
	lwz		r3,220(r1)		# pcxf_rx_receive_status=r3
	.d2line		4507
.Llo1085:
	lwz		r0,224(r1)		# u0=r0
#         ATV_B.atv_bms_pack_current = pcx_CANdb_ReceiveMessage_e_out_port_buffer
	stw		r3,bms_pack_voltage@sdarx(r0)		# pcxf_rx_receive_status=r3
	stw		r0,52(r31)		# u0=r0
#           [3];
#         ATV_B.atv_bms_pack_soh = pcx_CANdb_ReceiveMessage_e_out_port_buffer[4];
	.d2line		4509
	lwz		r0,228(r1)		# u0=r0
	stw		r0,56(r31)		# u0=r0
#         ATV_B.pcx_CANdb_ReceiveMessage_o9 =
	.d2line		4510
	lwz		r0,232(r1)		# u0=r0
	stw		r0,60(r31)		# u0=r0
	b		.L4799
.L4796:
#           pcx_CANdb_ReceiveMessage_e_out_port_buffer[5];
#       } else {
#         ATV_B.pcx_CANdb_ReceiveMessage_o2_l = 0;
	.d2line		4513
.Llo1032:
	diab.li		r0,0		# u0=r0
.Llo1033:
	stb		r0,163(r31)		# u0=r0
	b		.L4799
.L4798:
#       }
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       ATV_B.pcx_CANdb_ReceiveMessage_o1_n = 1;
	.d2line		4517
.Llo1034:
	diab.li		r0,256		# u0=r0
	.d2line		4519
.Llo1035:
	diab.li		r3,0		# u0=r3
#       ATV_B.pcx_CANdb_ReceiveMessage_o2_l = 0;
#       ATV_B.pcx_CANdb_ReceiveMessage_o3_p = 0;
.Llo1019:
	sth		r0,162(r31)		# u0=r0
	stb		r3,164(r31)		# u0=r3
.L4799:
	.section	.text_vle
.L6246:
#     }
#   }
# }
	.d2line		4522
	.d2epilogue_begin
.Llo1020:
	diab.addi		r12,r1,364
	lwz		r0,404(r1)		# u0=r0
	lmw		r23,0(r12)		# offset r1+364  0x16c
	.d2_cfa_restore_list	2,10
	mtspr		lr,r0		# u0=lr
	diab.addi		r1,r1,400		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5964:
	.type		ATV_output1,@function
	.size		ATV_output1,.-ATV_output1
# Number of nodes = 1577

# Allocations for ATV_output1
#	?a4		$$360
#	?a5		$$286
#	?a6		$$285
#	?a7		$$284
#	?a8		$$283
#	?a9		$$282
#	?a10		$$281
#	?a11		$$280
#	?a12		$$279
#	?a13		$$278
#	?a14		$$277
#	?a15		$$276
#	?a16		u0
#	?a17		u0
#	?a18		$$275
#	not allocated	$$16
#	?a19		$$15
#	?a20		u0
#	SP,52		data
#	?a21		retval
#	SP,188		pcx_CANdb_TransmitMessage1_in_port_buffer
#	SP,236		pcx_CANdb_TransmitMessage1_in_port_ptr
#	SP,60		data
#	?a22		retval
#	SP,124		pcx_CANdb_TransmitMessage6_in_port_buffer
#	SP,156		pcx_CANdb_TransmitMessage6_in_port_ptr
#	SP,68		data
#	SP,36		timestamp
#	?a23		pcxf_rx_receive_status
#	SP,100		pcx_CANdb_ReceiveMessage_out_port_buffer
#	SP,112		pcx_CANdb_ReceiveMessage_out_port
#	SP,76		data
#	SP,40		timestamp
#	?a24		pcxf_rx_receive_status
#	SP,284		pcx_CANdb_ReceiveMessage_p_out_port_buffer
#	SP,312		pcx_CANdb_ReceiveMessage_p_out_port
#	SP,84		data
#	SP,44		timestamp
#	?a25		pcxf_rx_receive_status
#	SP,140		pcx_CANdb_ReceiveMessage_f_out_port_buffer
#	SP,172		pcx_CANdb_ReceiveMessage_f_out_port
#	SP,92		data
#	SP,48		timestamp
#	?a26		pcxf_rx_receive_status
#	SP,212		pcx_CANdb_ReceiveMessage_e_out_port_buffer
#	SP,260		pcx_CANdb_ReceiveMessage_e_out_port
# static void ATV_update1(void)          /* Sample time: [0.1s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         4526
#$$ld
.L6287:

#$$bf	ATV_update1,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,cr0,spefscr
	.d2_cfa_start __cie
ATV_update1:
	.d2line		0
	.d2prologue_end
	.d2line		4528
	lbz		r0,atv_v_dbg_chg_req@sdarx(r0)
#   /* Update for RateTransition: '<Root>/Rate Transition4' */
#   ATV_DW.RateTransition4_Buffer0 = atv_v_dbg_chg_req;
	.d2line		4531
	lis		r3,ATV_DW@ha
	e_add16i		r3,r3,ATV_DW@l
	lis		r4,ATV_B@ha
	stb		r0,61(r3)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition5' */
#   ATV_DW.RateTransition5_Buffer0 = atv_v_dbg_heater_req;
	e_add16i		r4,r4,ATV_B@l
	.d2line		4555
	lis		r5,ATV_M@ha
	lbz		r0,atv_v_dbg_heater_req@sdarx(r0)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition6' */
#   ATV_DW.RateTransition6_Buffer0 = ATV_B.atv_v_dbg_T_FMot;
	stb		r0,62(r3)
	.d2line		4534
	lha		r0,106(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition7' */
#   ATV_DW.RateTransition7_Buffer0 = ATV_B.atv_v_dbg_T_FInv;
	sth		r0,16(r3)
	.d2line		4537
	lha		r0,108(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition10' */
#   ATV_DW.RateTransition10_Buffer0 = ATV_B.atv_v_dbg_T_GMot;
	sth		r0,18(r3)
	.d2line		4540
	lha		r0,114(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition8' */
#   ATV_DW.RateTransition8_Buffer0 = ATV_B.atv_v_dbg_T_RMot;
	sth		r0,20(r3)
	.d2line		4543
	lha		r0,110(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition9' */
#   ATV_DW.RateTransition9_Buffer0 = ATV_B.atv_v_dbg_T_RInv;
	sth		r0,22(r3)
	.d2line		4546
	lha		r0,112(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition11' */
#   ATV_DW.RateTransition11_Buffer0 = ATV_B.atv_v_dbg_T_GInv;
	sth		r0,24(r3)
	.d2line		4549
	lha		r0,116(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition12' */
#   ATV_DW.RateTransition12_Buffer0 = ATV_B.atv_v_dbg_T_Rad;
	sth		r0,26(r3)
	.d2line		4552
	lha		r0,118(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition24' */
#   ATV_DW.RateTransition24_Buffer0 = ATV_B.Saturation_a;
	sth		r0,28(r3)
	.d2line		4555
	lha		r0,120(r4)
	sth		r0,30(r3)
	lwz		r3,ATV_M@l(r5)
# 
#   /* Update absolute time */
#   /* The "clockTick1" counts the number of times the code of this task has
#    * been executed. The absolute time is the multiplication of "clockTick1"
#    * and "Timing.stepSize1". Size of "clockTick1" ensures timer will not
#    * overflow during the application lifespan selected.
#    * Timer of this task consists of two 32 bit unsigned integers.
#    * The two integers represent the low bits Timing.clockTick1 and the high bits
#    * Timing.clockTickH1. When the low bit overflows to 0, the high bits increment.
#    */
#   if (!(++ATV_M->Timing.clockTick1)) {
	.d2line		4566
	lwz		r4,404(r3)
	diab.addi		r0,r4,1
	stw		r0,404(r3)
	se_cmpi		r0,0
	bc		0,2,.L4841	# ne
#     ++ATV_M->Timing.clockTickH1;
	.d2line		4567
	lwz		r4,408(r3)
	se_addi		r4,1
	stw		r4,408(r3)
.L4841:
	.d2line		4570
	lwz		r5,408(r3)
#   }
# 
#   ATV_M->Timing.t[1] = ATV_M->Timing.clockTick1 * ATV_M->Timing.stepSize1 +
	e_lis		r6,20352
	.d2line		4567
	lwz		r4,412(r3)
	efscfui		r5,r5
	lwz		r3,480(r3)
	efsmul		r5,r5,r4
	efsmul		r5,r5,r6
	efscfui		r0,r0
	efsmadd		r5,r0,r4
	stw		r5,4(r3)
#     ATV_M->Timing.clockTickH1 * ATV_M->Timing.stepSize1 * 4294967296.0;
# }
	.d2line		4572
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6288:
	.type		ATV_update1,@function
	.size		ATV_update1,.-ATV_update1
# Number of nodes = 149

# Allocations for ATV_update1
#	?a4		$$295
#	?a5		$$294
#	?a6		$$293
#	?a7		$$292
#	?a8		$$291
#	not allocated	$$289
#	?a9		$$288
#	not allocated	$$287
#	?a10		$$18
#	?a11		$$17
# static void ATV_output2(void)          /* Sample time: [1.0s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         4576
#$$ld
.L6292:

#$$bf	ATV_output2,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ATV_output2:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#   /* S-Function (psc_cpu_loading): '<S25>/psc_CpuLoading1' */
#   /* S-Function Block: <S25>/psc_CpuLoading1
#    * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   atv_cpu_loading = psc_get_cpu_loading();
	.d2line		4581
	bl		psc_get_cpu_loading
	.d2line		4594
	lis		r31,pkn_task_1000ms_task_hdl@ha
# 
#   /* S-Function (psc_stack_used): '<S25>/psc_StackUsed' */
#   /*
#    * S-Function Block: <S25>/psc_StackUsed
#    * [$Id: psc_stack_used.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   atv_stack_used = psc_get_used_stack_size();
	stb		r3,atv_cpu_loading@sdarx(r0)
	.d2line		4588
	bl		psc_get_used_stack_size
# 
#   /* S-Function (pkn_task_duration): '<S25>/pkn_TaskDuration1' */
#   /* S-Function Block: <S25>/pkn_TaskDuration1
#    * [$Id: pkn_task_duration.tlc 34330 2013-07-01 12:56:28Z sbhattacharya $]
#    */
#   atv_task_duration_1s = pkn_get_task_duration(pkn_task_1000ms_task_hdl);
	stw		r3,atv_stack_used@sdarx(r0)
	lwz		r3,pkn_task_1000ms_task_hdl@l(r31)
	bl		pkn_get_task_duration
	stw		r3,atv_task_duration_1s@sdarx(r0)
# 
#   /* S-Function (psc_cpu_loading): '<S25>/psc_CpuLoading2' */
#   /* S-Function Block: <S25>/psc_CpuLoading2
#    * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   atv_cpu_loading_max = psc_get_max_cpu_loading();
	.d2line		4600
	bl		psc_get_max_cpu_loading
	stb		r3,atv_cpu_loading_max@sdarx(r0)
# 
#   /* S-Function (pkn_task_duration): '<S25>/pkn_TaskDuration2' */
#   /* S-Function Block: <S25>/pkn_TaskDuration2
#    * [$Id: pkn_task_duration.tlc 34330 2013-07-01 12:56:28Z sbhattacharya $]
#    */
#   atv_task_duration_1s_max = pkn_get_max_task_duration(pkn_task_1000ms_task_hdl);
	.d2line		4606
	lwz		r3,pkn_task_1000ms_task_hdl@l(r31)
	bl		pkn_get_max_task_duration
	stw		r3,atv_task_duration_1s_max@sdarx(r0)
# }
	.d2line		4607
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6293:
	.type		ATV_output2,@function
	.size		ATV_output2,.-ATV_output2
# Number of nodes = 24

# Allocations for ATV_output2
#	not allocated	$$296
# static void ATV_update2(void)          /* Sample time: [1.0s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         4611
#$$ld
.L6297:

#$$bf	ATV_update2,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,cr0,spefscr
	.d2_cfa_start __cie
ATV_update2:
	.d2line		0
	.d2prologue_end
	.d2line		4621
	lis		r3,ATV_M@ha
	lwz		r3,ATV_M@l(r3)
#   /* Update absolute time */
#   /* The "clockTick2" counts the number of times the code of this task has
#    * been executed. The absolute time is the multiplication of "clockTick2"
#    * and "Timing.stepSize2". Size of "clockTick2" ensures timer will not
#    * overflow during the application lifespan selected.
#    * Timer of this task consists of two 32 bit unsigned integers.
#    * The two integers represent the low bits Timing.clockTick2 and the high bits
#    * Timing.clockTickH2. When the low bit overflows to 0, the high bits increment.
#    */
#   if (!(++ATV_M->Timing.clockTick2)) {
	lwz		r4,416(r3)
	diab.addi		r0,r4,1
	stw		r0,416(r3)
	se_cmpi		r0,0
	bc		0,2,.L4845	# ne
#     ++ATV_M->Timing.clockTickH2;
	.d2line		4622
	lwz		r4,420(r3)
	se_addi		r4,1
	stw		r4,420(r3)
.L4845:
	.d2line		4625
	lwz		r5,420(r3)
#   }
# 
#   ATV_M->Timing.t[2] = ATV_M->Timing.clockTick2 * ATV_M->Timing.stepSize2 +
	e_lis		r6,20352
	.d2line		4622
	lwz		r4,424(r3)
	efscfui		r5,r5
	lwz		r3,480(r3)
	efsmul		r5,r5,r4
	efsmul		r5,r5,r6
	efscfui		r0,r0
	efsmadd		r5,r0,r4
	stw		r5,8(r3)
#     ATV_M->Timing.clockTickH2 * ATV_M->Timing.stepSize2 * 4294967296.0;
# }
	.d2line		4627
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6298:
	.type		ATV_update2,@function
	.size		ATV_update2,.-ATV_update2
# Number of nodes = 47

# Allocations for ATV_update2
#	?a4		$$303
#	?a5		$$302
#	?a6		$$301
#	not allocated	$$299
#	?a7		$$298
#	not allocated	$$297
#	?a8		$$20
#	?a9		$$19
# static void ATV_initialize(void)
# {
	.align		1
	.section	.text_vle
        .d2line         4673
#$$ld
.L6302:

#$$bf	ATV_initialize,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ATV_initialize:
	stwu		r1,-96(r1)		
	.d2_cfa_def_cfa_offset	96
	mfspr		r0,lr
	stmw		r27,76(r1)		# offset r1+76  0x4c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,100(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#   /* user code (Start function Body) */
# 
#   /*
#    * [$Id: put_identification.tlc 82546 2021-12-17 21:41:32Z csmith $]
#    */
#   /* S-Function Block: <S23>/pcfg_Config_M5xx
#    * [$Id: pcfg_config_m5xx.tlc 69984 2019-02-26 16:29:50Z jprewett $]
#    */
#   (void) pcfg_set_global_mios_prescaler_m5xx(PIO_CFG_MIOS_GLOBAL_FAST);
	.d2line		4682
	diab.li		r3,50
	.d2line		4720
	lis		r27,ATV_B@ha
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XH3,
	bl		pcfg_set_global_mios_prescaler_m5xx
	diab.li		r29,0
	.d2line		4683
	diab.li		r3,57
	diab.li		r4,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XH2,
	bl		pcfg_setup_pwm_clock_m5xx
	e_add16i		r27,r27,ATV_B@l
	.d2line		4685
	diab.li		r3,56
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XH1,
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		4744
	diab.li		r30,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XG1,
	.d2line		4687
	diab.li		r3,42
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_ZB4,
	.d2line		4689
	diab.li		r3,36
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_DIN_XF1,
	.d2line		4691
	diab.li		r3,178
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_DIN_XF4,
	.d2line		4693
	diab.li		r3,32
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_YB2,
	.d2line		4695
	diab.li		r3,35
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_YK3,
	.d2line		4697
	diab.li		r3,86
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_DIN_XD4_MONITOR_D,
	.d2line		4699
	diab.li		r3,150
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_0C,
	.d2line		4701
	diab.li		r3,27
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_0F,
	.d2line		4703
	diab.li		r3,13
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_1A,
	.d2line		4705
	diab.li		r3,14
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_ZG4,
	.d2line		4707
	diab.li		r3,18
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_1F,
	.d2line		4709
	diab.li		r3,15
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
# 
#   /* Start for S-Function (pdx_digital_input): '<S7>/pdx_DigitalInput' */
# 
#   /* S-Function Block: <S7>/pdx_DigitalInput
#    * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
#    */
#   (void) pdx_digital_input(PIO_DIN_ZA3, NULL, TRUE);
	.d2line		4711
	diab.li		r3,17
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		4719
	diab.li		r3,169
#   put_debounce_by_time_init(&pdx_DigitalInput_detm_wrk_data);
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_input
	.d2line		4720
	lis		r3,pdx_DigitalInput_detm_wrk_data@ha
	e_add16i		r3,r3,pdx_DigitalInput_detm_wrk_data@l
# 
#   /* Start for RateTransition: '<Root>/Rate Transition4' */
#   ATV_B.RateTransition4 = false;
	bl		put_debounce_by_time_init
# 
#   /* Start for RateTransition: '<Root>/Rate Transition5' */
#   ATV_B.RateTransition5 = false;
# 
#   /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage' */
# 
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_TransmitMessage_msg_handle = pcx_declare_message(PCX_TX_MSG,
	.d2line		4723
	sth		r29,124(r27)
	.d2line		4733
	diab.li		r4,0
	diab.li		r3,1
	diab.li		r6,8
	diab.li		r7,256
	diab.li		r5,0
	bl		pcx_declare_message
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     256);
# 
#   /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage1' */
# 
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage1
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_TransmitMessage1_msg_handle = pcx_declare_message(PCX_TX_MSG,
	sth		r3,pcx_CANdb_TransmitMessage_msg_handle@sdarx(r0)
	.d2line		4744
	diab.li		r4,0
	diab.li		r6,8
	diab.li		r7,335
	diab.li		r5,0
	diab.li		r3,1
	bl		pcx_declare_message
	sth		r3,pcx_CANdb_TransmitMessage1_msg_handle@sdarx(r0)
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     335);
# 
#   /* Start for RateTransition: '<Root>/Rate Transition6' */
#   ATV_B.RateTransition6 = 0;
	.d2line		4776
	diab.li		r4,0
# 
#   /* Start for RateTransition: '<Root>/Rate Transition7' */
#   ATV_B.RateTransition7 = 0;
# 
#   /* Start for RateTransition: '<Root>/Rate Transition10' */
#   ATV_B.RateTransition10 = 0;
	diab.li		r6,8
# 
#   /* Start for RateTransition: '<Root>/Rate Transition8' */
#   ATV_B.RateTransition8 = 0;
# 
#   /* Start for RateTransition: '<Root>/Rate Transition9' */
#   ATV_B.RateTransition9 = 0;
	diab.li		r7,498
# 
#   /* Start for RateTransition: '<Root>/Rate Transition11' */
#   ATV_B.RateTransition11 = 0;
# 
#   /* Start for RateTransition: '<Root>/Rate Transition12' */
#   ATV_B.RateTransition12 = 0;
	.d2line		4751
	stw		r30,76(r27)
# 
#   /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage6' */
# 
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage6
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_TransmitMessage6_msg_handle = pcx_declare_message(PCX_TX_MSG,
	diab.li		r5,0
	.d2line		4757
	stw		r30,80(r27)
	diab.li		r3,1
	.d2line		4763
	stw		r30,84(r27)
	.d2line		4769
	sth		r29,88(r27)
	.d2line		4776
	bl		pcx_declare_message
	sth		r3,pcx_CANdb_TransmitMessage6_msg_handle@sdarx(r0)
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     498);
# 
#   /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage2' */
# 
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage2
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_TransmitMessage2_msg_handle = pcx_declare_message(PCX_TX_MSG,
	.d2line		4787
	diab.li		r4,0
	diab.li		r6,8
	diab.li		r7,817
	diab.li		r5,0
	diab.li		r3,1
	bl		pcx_declare_message
	sth		r3,pcx_CANdb_TransmitMessage2_msg_handle@sdarx(r0)
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     817);
# 
#   /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage3' incorporates:
#    *  Constant: '<S1>/atvc_maxDischCurr'
#    *  Constant: '<S1>/atvc_maxRegenCurr'
#    */
# 
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage3
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_TransmitMessage3_msg_handle = pcx_declare_message(PCX_TX_MSG,
	.d2line		4801
	diab.li		r4,0
	diab.li		r6,8
	diab.li		r7,818
	diab.li		r5,0
	diab.li		r3,1
	bl		pcx_declare_message
	sth		r3,pcx_CANdb_TransmitMessage3_msg_handle@sdarx(r0)
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     818);
# 
#   /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage4' */
# 
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage4
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_TransmitMessage4_msg_handle = pcx_declare_message(PCX_TX_MSG,
	.d2line		4812
	diab.li		r4,0
	diab.li		r6,8
	diab.li		r7,785
	diab.li		r5,0
	diab.li		r3,1
	bl		pcx_declare_message
	sth		r3,pcx_CANdb_TransmitMessage4_msg_handle@sdarx(r0)
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     785);
# 
#   /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage5' incorporates:
#    *  Constant: '<S1>/atvc_maxDischCurr'
#    *  Constant: '<S1>/atvc_maxRegenCurr'
#    */
# 
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage5
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_TransmitMessage5_msg_handle = pcx_declare_message(PCX_TX_MSG,
	.d2line		4826
	diab.li		r4,0
	diab.li		r6,8
	diab.li		r7,786
	diab.li		r5,0
	diab.li		r3,1
	bl		pcx_declare_message
	sth		r3,pcx_CANdb_TransmitMessage5_msg_handle@sdarx(r0)
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     786);
# 
#   /* Start for RateTransition: '<Root>/Rate Transition24' */
#   ATV_B.RateTransition24 = 0;
	.d2line		4843
	diab.li		r4,0
# 
#   /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage7' incorporates:
#    *  Constant: '<S1>/Constant2'
#    *  Constant: '<S1>/Constant3'
#    */
# 
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage7
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_TransmitMessage7_msg_handle = pcx_declare_message(PCX_TX_MSG,
	diab.li		r6,8
	diab.li		r7,801
	.d2line		4833
	sth		r29,90(r27)
	diab.li		r5,0
	diab.li		r3,1
	bl		pcx_declare_message
	sth		r3,pcx_CANdb_TransmitMessage7_msg_handle@sdarx(r0)
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     801);
# 
#   /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage8' incorporates:
#    *  Constant: '<S1>/Constant'
#    */
# 
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage8
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_TransmitMessage8_msg_handle = pcx_declare_message(PCX_TX_MSG,
	.d2line		4856
	diab.li		r4,0
	diab.li		r6,8
	diab.li		r7,802
	diab.li		r5,0
	diab.li		r3,1
	bl		pcx_declare_message
	sth		r3,pcx_CANdb_TransmitMessage8_msg_handle@sdarx(r0)
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     802);
# 
#   /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
# 
#   /* S-Function Block: <S6>/pdx_DigitalOutput
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_YL4,
	.d2line		4869
	diab.li		r4,0
	diab.li		r5,1
	diab.li		r3,158
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput1' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
# 
#   /* S-Function Block: <S6>/pdx_DigitalOutput1
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_YA1,
	.d2line		4880
	diab.li		r3,61
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput2' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
# 
#   /* S-Function Block: <S6>/pdx_DigitalOutput2
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_YB4,
	.d2line		4891
	diab.li		r3,87
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput3' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
# 
#   /* S-Function Block: <S6>/pdx_DigitalOutput3
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_ZF2,
	.d2line		4902
	diab.li		r3,212
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput4' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
# 
#   /* S-Function Block: <S6>/pdx_DigitalOutput4
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_YA2,
	.d2line		4913
	diab.li		r3,65
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput5' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
# 
#   /* S-Function Block: <S6>/pdx_DigitalOutput5
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_YA3,
	.d2line		4924
	diab.li		r3,70
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput6' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
# 
#   /* S-Function Block: <S6>/pdx_DigitalOutput6
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_YA4,
	.d2line		4935
	diab.li		r3,75
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput7' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
# 
#   /* S-Function Block: <S6>/pdx_DigitalOutput7
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_ZG2,
	.d2line		4946
	diab.li		r3,217
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput8' */
# 
#   /* S-Function Block: <S6>/pdx_DigitalOutput8
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_XD1_ENABLE_PSU_HOLD,
	.d2line		4955
	diab.li		r3,21
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput9' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
# 
#   /* S-Function Block: <S6>/pdx_DigitalOutput9
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_ZC1,
	.d2line		4966
	diab.li		r3,183
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_pwm_output): '<S6>/pdx_PWMOutput' incorporates:
#    *  Constant: '<S6>/Constant1'
#    */
# 
#   /*
#    * S-Function Block: <S6>/pdx_PWMOutput
#    * [$Id: pdx_pwm_output.tlc 30730 2012-09-29 12:01:15Z jtough $]
#    */
#   (void) pdx_pwm_output(PIO_FFPOT_YK3,
	.d2line		4978
	diab.li		r5,0
	diab.li		r3,150
	e_lis		r4,17658
	diab.li		r7,1
	diab.li		r6,0
	bl		pdx_pwm_output
#                         2000.0,
#                         0.0,
#                         0.0,
#                         TRUE);
# 
#   /* Start for S-Function (pcx_candb_receive_message): '<S3>/pcx_CANdb_ReceiveMessage' */
# 
#   /* S-Function Block: <S3>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_ReceiveMessage_msg_handle = pcx_declare_message(PCX_RX_MSG,
	.d2line		4989
	diab.li		r3,0
	diab.li		r6,8
	diab.li		r7,496
	diab.li		r4,0
	diab.li		r5,0
	bl		pcx_declare_message
	sth		r3,pcx_CANdb_ReceiveMessage_msg_handle@sdarx(r0)
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     496);
# 
#   /* Start for S-Function (pcx_candb_receive_message): '<S4>/pcx_CANdb_ReceiveMessage' */
# 
#   /* S-Function Block: <S4>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_ReceiveMessage_p_msg_handle = pcx_declare_message(PCX_RX_MSG,
	.d2line		5000
	diab.li		r6,8
	diab.li		r7,497
	diab.li		r4,0
	diab.li		r5,0
	diab.li		r3,0
	bl		pcx_declare_message
	sth		r3,pcx_CANdb_ReceiveMessage_p_msg_handle@sdarx(r0)
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     497);
# 
#   /* Start for S-Function (pcx_candb_receive_message): '<S5>/pcx_CANdb_ReceiveMessage' */
# 
#   /* S-Function Block: <S5>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_ReceiveMessage_f_msg_handle = pcx_declare_message(PCX_RX_MSG,
	.d2line		5011
	diab.li		r6,8
	diab.li		r7,549
	diab.li		r4,0
	diab.li		r5,0
	diab.li		r3,0
	bl		pcx_declare_message
	sth		r3,pcx_CANdb_ReceiveMessage_f_msg_handle@sdarx(r0)
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     549);
# 
#   /* Start for S-Function (pcx_candb_receive_message): '<S2>/pcx_CANdb_ReceiveMessage' */
# 
#   /* S-Function Block: <S2>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_ReceiveMessage_e_msg_handle = pcx_declare_message(PCX_RX_MSG,
	.d2line		5022
	diab.li		r6,8
	diab.li		r7,320
	diab.li		r4,0
	diab.li		r5,0
	diab.li		r3,0
	bl		pcx_declare_message
	sth		r3,pcx_CANdb_ReceiveMessage_e_msg_handle@sdarx(r0)
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     320);
# 
#   /* Start for S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput' incorporates:
#    *  Constant: '<Root>/Constant1'
#    */
# 
#   /* S-Function Block: <Root>/pdx_DigitalOutput
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output
#     (PIO_DOT_XD4_YA1_YA4_YB1_YC2_YC3_YD1_YD2_YD3_YB4_YE1_YE2_YK3_ZA4_ZB4_ZE1_ZE2_ZF3_ENABLE,
	.d2line		5036
	diab.li		r4,1
	diab.li		r5,1
	diab.li		r3,31
	bl		pdx_digital_output
#      (U8)(true),
#      TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput1' incorporates:
#    *  Constant: '<Root>/Constant1'
#    */
# 
#   /* S-Function Block: <Root>/pdx_DigitalOutput1
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output
#     (PIO_DOT_YA2_YA3_YC1_YE3_YL2_YL4_YM2_YM3_ZC1_ZD1_ZD2_ZE3_ZE4_ZG2_ENABLE,
	.d2line		5048
	diab.li		r4,1
	diab.li		r3,59
	diab.li		r5,1
	bl		pdx_digital_output
#      (U8)(true),
#      TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput2' incorporates:
#    *  Constant: '<Root>/Constant1'
#    */
# 
#   /* S-Function Block: <Root>/pdx_DigitalOutput2
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_INT_ENABLE_SECONDARY_MICRO,
	.d2line		5059
	diab.li		r4,1
	diab.li		r3,2
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)1.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput3' incorporates:
#    *  Constant: '<Root>/Constant'
#    */
# 
#   /* S-Function Block: <Root>/pdx_DigitalOutput3
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_YK2_DISABLE,
	.d2line		5070
	diab.li		r3,149
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pcx_can_config): '<S21>/pcx_CANConfiguration' */
# 
#   /* S-Function Block: <S21>/pcx_CANConfiguration
#    * [$Id: pcx_can_config.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   pcx_config(PIO_CAN_YE4_YF4_A, PIO_CBAUD_500_KBPS);
	.d2line		5079
	diab.li		r3,0
	diab.li		r4,500
	bl		pcx_config
# 
#   /* Start for S-Function (psc_app_build_date): '<S26>/psc_AppBuildDate' */
# 
#   /*
#    * S-Function Block: <S26>/psc_AppBuildDate
#    * [$Id: psc_app_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 year;
#     U16 month;
#     U16 day;
#     (void) psc_get_application_build_date(&year, &month, &day);
	.d2line		5091
	diab.addi		r3,r1,8
	diab.addi		r4,r1,10
	diab.addi		r5,r1,12
	bl		psc_get_application_build_date
#     atv_app_code_year = year;
	.d2line		5093
	lhz		r0,10(r1)
	.d2line		5107
	diab.addi		r3,r1,14
#     atv_app_code_month = month;
	.d2line		5092
	lhz		r5,8(r1)
	diab.addi		r4,r1,16
#     atv_app_code_day = day;
	sth		r0,atv_app_code_month@sdarx(r0)
	sth		r5,atv_app_code_year@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_app_version): '<S26>/psc_AppVersion' */
# 
#   /*
#    * S-Function Block: <S26>/psc_AppVersion
#    * [$Id: psc_app_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 major_ver;
#     U16 minor_ver;
#     U16 sub_minor_ver;
#     (void) psc_get_application_version(&major_ver, &minor_ver, &sub_minor_ver);
	.d2line		5094
	lhz		r0,12(r1)
	diab.addi		r5,r1,18
	sth		r0,atv_app_code_day@sdarx(r0)
	bl		psc_get_application_version
#     atv_app_code_major_ver = major_ver;
	.d2line		5109
	lhz		r0,16(r1)
	.d2line		5123
	diab.addi		r3,r1,20
#     atv_app_code_minor_ver = minor_ver;
	.d2line		5108
	lhz		r5,14(r1)
	diab.addi		r4,r1,22
#     atv_app_code_subminor_ver = sub_minor_ver;
	sth		r0,atv_app_code_minor_ver@sdarx(r0)
	sth		r5,atv_app_code_major_ver@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_boot_build_date): '<S27>/psc_BootBuildDate' */
# 
#   /*
#    * S-Function Block: <S27>/psc_BootBuildDate
#    * [$Id: psc_boot_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 year;
#     U16 month;
#     U16 day;
#     (void) psc_get_boot_build_date(&year, &month, &day);
	.d2line		5110
	lhz		r0,18(r1)
	diab.addi		r5,r1,24
	sth		r0,atv_app_code_subminor_ver@sdarx(r0)
	bl		psc_get_boot_build_date
#     atv_boot_code_year = year;
	.d2line		5125
	lhz		r0,22(r1)
	.d2line		5139
	diab.addi		r3,r1,26
#     atv_boot_code_month = month;
	.d2line		5124
	lhz		r5,20(r1)
	diab.addi		r4,r1,28
#     atv_boot_code_day = day;
	sth		r0,atv_boot_code_month@sdarx(r0)
	sth		r5,atv_boot_code_year@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_boot_version): '<S27>/psc_BootVersion' */
# 
#   /*
#    * S-Function Block: <S27>/psc_BootVersion
#    * [$Id: psc_boot_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 major_ver;
#     U16 minor_ver;
#     U16 sub_minor_ver;
#     (void) psc_get_boot_version(&major_ver, &minor_ver, &sub_minor_ver);
	.d2line		5126
	lhz		r0,24(r1)
	diab.addi		r5,r1,30
	sth		r0,atv_boot_code_day@sdarx(r0)
	bl		psc_get_boot_version
#     atv_boot_code_major_ver = major_ver;
	.d2line		5140
	lhz		r3,26(r1)
	.d2line		5141
	lhz		r0,28(r1)
#     atv_boot_code_minor_ver = minor_ver;
	sth		r3,atv_boot_code_major_ver@sdarx(r0)
	sth		r0,atv_boot_code_minor_ver@sdarx(r0)
#     atv_boot_code_subminor_ver = sub_minor_ver;
	.d2line		5155
	diab.addi		r3,r1,32
	diab.addi		r4,r1,34
#   }
# 
#   /* Start for S-Function (psc_prg_build_date): '<S28>/psc_PrgBuildDate' */
# 
#   /*
#    * S-Function Block: <S28>/psc_PrgBuildDate
#    * [$Id: psc_prg_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 year;
#     U16 month;
#     U16 day;
#     (void) psc_get_prg_build_date(&year, &month, &day);
	diab.addi		r5,r1,36
	.d2line		5142
	lhz		r0,30(r1)
	.d2line		5206
	lis		r28,ATV_DW@ha
	diab.li		r31,0
#     atv_prg_code_year = year;
	e_add16i		r28,r28,ATV_DW@l
	sth		r0,atv_boot_code_subminor_ver@sdarx(r0)
#     atv_prg_code_month = month;
	bl		psc_get_prg_build_date
	.d2line		5157
	lhz		r0,34(r1)
#     atv_prg_code_day = day;
	.d2line		5171
	diab.addi		r3,r1,38
	.d2line		5156
	lhz		r5,32(r1)
#   }
# 
#   /* Start for S-Function (psc_prg_version): '<S28>/psc_PrgVersion' */
# 
#   /*
#    * S-Function Block: <S28>/psc_PrgVersion
#    * [$Id: psc_prg_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 major_ver;
#     U16 minor_ver;
#     U16 sub_minor_ver;
#     (void) psc_get_prg_version(&major_ver, &minor_ver, &sub_minor_ver);
	diab.addi		r4,r1,40
	sth		r0,atv_prg_code_month@sdarx(r0)
	sth		r5,atv_prg_code_year@sdarx(r0)
	.d2line		5158
	lhz		r0,36(r1)
	diab.addi		r5,r1,42
#     atv_prg_code_major_ver = major_ver;
	sth		r0,atv_prg_code_day@sdarx(r0)
	bl		psc_get_prg_version
#     atv_prg_code_minor_ver = minor_ver;
	.d2line		5173
	lhz		r0,40(r1)
	.d2line		5187
	diab.addi		r3,r1,44
#     atv_prg_code_subminor_ver = sub_minor_ver;
	.d2line		5172
	lhz		r5,38(r1)
	diab.addi		r4,r1,46
#   }
# 
#   /* Start for S-Function (psc_platform_build_date): '<S29>/psc_PlatformBuildDate' */
# 
#   /*
#    * S-Function Block: <S29>/psc_PlatformBuildDate
#    * [$Id: psc_platform_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 year;
#     U16 month;
#     U16 day;
#     (void) psc_get_platform_build_date(&year, &month, &day);
	sth		r0,atv_prg_code_minor_ver@sdarx(r0)
	sth		r5,atv_prg_code_major_ver@sdarx(r0)
	.d2line		5174
	lhz		r0,42(r1)
	diab.addi		r5,r1,48
#     atv_platform_code_year = year;
	sth		r0,atv_prg_code_subminor_ver@sdarx(r0)
	bl		psc_get_platform_build_date
#     atv_platform_code_month = month;
	.d2line		5189
	lhz		r0,46(r1)
	.d2line		5203
	diab.addi		r3,r1,50
#     atv_platform_code_day = day;
	.d2line		5188
	lhz		r5,44(r1)
	diab.addi		r4,r1,52
#   }
# 
#   /* Start for S-Function (psc_platform_version): '<S29>/psc_PlatformVersion' */
# 
#   /*
#    * S-Function Block: <S29>/psc_PlatformVersion
#    * [$Id: psc_platform_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 major_ver;
#     U16 minor_ver;
#     U16 sub_minor_ver;
#     (void) psc_get_platform_version(&major_ver, &minor_ver, &sub_minor_ver);
	sth		r0,atv_platform_code_month@sdarx(r0)
	sth		r5,atv_platform_code_year@sdarx(r0)
	.d2line		5190
	lhz		r0,48(r1)
	diab.addi		r5,r1,54
#     atv_platform_code_major_ver = major_ver;
	sth		r0,atv_platform_code_day@sdarx(r0)
	bl		psc_get_platform_version
#     atv_platform_code_minor_ver = minor_ver;
	.d2line		5205
	lhz		r0,52(r1)
	.d2line		5319
	diab.addi		r3,r28,82
#     atv_platform_code_subminor_ver = sub_minor_ver;
	.d2line		5204
	lhz		r4,50(r1)
	sth		r0,atv_platform_code_minor_ver@sdarx(r0)
	sth		r4,atv_platform_code_major_ver@sdarx(r0)
	.d2line		5206
	lhz		r0,54(r1)
#   }
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition4' */
#   ATV_DW.RateTransition4_Buffer0 = false;
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition5' */
#   ATV_DW.RateTransition5_Buffer0 = false;
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition6' */
#   ATV_DW.RateTransition6_Buffer0 = 0;
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition7' */
#   ATV_DW.RateTransition7_Buffer0 = 0;
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition10' */
#   ATV_DW.RateTransition10_Buffer0 = 0;
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition8' */
#   ATV_DW.RateTransition8_Buffer0 = 0;
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition9' */
#   ATV_DW.RateTransition9_Buffer0 = 0;
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition11' */
#   ATV_DW.RateTransition11_Buffer0 = 0;
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition12' */
#   ATV_DW.RateTransition12_Buffer0 = 0;
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition24' */
#   ATV_DW.RateTransition24_Buffer0 = 0;
# 
#   /* InitializeConditions for RateLimiter: '<S37>/Rate Limiter1' */
#   ATV_DW.PrevY_k = 0U;
# 
#   /* InitializeConditions for RateLimiter: '<S37>/Rate Limiter' */
#   ATV_DW.PrevY_l = 0U;
# 
#   /* InitializeConditions for RateLimiter: '<S37>/Rate Limiter2' */
#   ATV_DW.PrevY = 0.0F;
	sth		r0,atv_platform_code_subminor_ver@sdarx(r0)
	.d2line		5246
	stw		r31,12(r28)
	.d2line		5216
	stw		r30,16(r28)
	.d2line		5222
	stw		r30,20(r28)
	.d2line		5228
	stw		r30,24(r28)
	.d2line		5234
	stw		r30,28(r28)
	.d2line		5240
	stw		r30,32(r28)
	.d2line		5210
	stb		r31,61(r28)
# 
#   /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S3>/pcx_CANdb_ReceiveMessage' */
# 
#   /* S-Function Block: <S3>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   ATV_B.pcx_CANdb_ReceiveMessage_o4 = 0;
	.d2line		5213
	stb		r31,62(r28)
#   ATV_B.pcx_CANdb_ReceiveMessage_o5 = 0;
	.d2line		5253
	stw		r31,16(r27)
#   ATV_B.pcx_CANdb_ReceiveMessage_o6 = 0;
	.d2line		5254
	stw		r31,20(r27)
# 
#   /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S4>/pcx_CANdb_ReceiveMessage' */
# 
#   /* S-Function Block: <S4>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   ATV_B.pcx_CANdb_ReceiveMessage_o4_k = 0;
#   ATV_B.pcx_CANdb_ReceiveMessage_o5_c = 0;
#   ATV_B.pcx_CANdb_ReceiveMessage_o6_o = 0;
#   ATV_B.pcx_CANdb_ReceiveMessage_o7_p = 0;
#   ATV_B.pcx_CANdb_ReceiveMessage_o8 = 0;
#   ATV_B.pcx_CANdb_ReceiveMessage_o9_b = 0;
#   ATV_B.pcx_CANdb_ReceiveMessage_o10 = 0;
# 
#   /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S5>/pcx_CANdb_ReceiveMessage' */
# 
#   /* S-Function Block: <S5>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   ATV_B.pcx_CANdb_ReceiveMessage_o4_f = 0;
	.d2line		5255
	stw		r31,24(r27)
#   ATV_B.pcx_CANdb_ReceiveMessage_o5_m = 0;
	.d2line		5275
	stw		r31,28(r27)
#   ATV_B.pcx_CANdb_ReceiveMessage_o6_n = 0;
#   ATV_B.pcx_CANdb_ReceiveMessage_o7 = 0;
	.d2line		5276
	stw		r31,32(r27)
# 
#   /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S2>/pcx_CANdb_ReceiveMessage' */
# 
#   /* S-Function Block: <S2>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   ATV_B.pcx_CANdb_ReceiveMessage_o4_n = 0;
	.d2line		5278
	stw		r31,36(r27)
#   ATV_B.pcx_CANdb_ReceiveMessage_o5_mv = 0;
	.d2line		5285
	stw		r31,44(r27)
	.d2line		5286
	stw		r31,48(r27)
	.d2line		5277
	stw		r31,64(r27)
	.d2line		5262
	stw		r30,92(r27)
	.d2line		5264
	stw		r30,96(r27)
	.d2line		5266
	stw		r30,100(r27)
#   bms_pack_voltage = 0;
	.d2line		5268
	sth		r29,104(r27)
#   ATV_B.atv_bms_pack_current = 0;
	.d2line		5287
	stw		r31,bms_pack_voltage@sdarx(r0)
#   ATV_B.atv_bms_pack_soh = 0;
	.d2line		5288
	stw		r31,52(r27)
#   ATV_B.pcx_CANdb_ReceiveMessage_o9 = 0;
	.d2line		5289
	stw		r31,56(r27)
# 
#   /* SystemInitialize for Chart: '<S9>/VSM' */
#   ATV_DW.is_CHG_CTRL = ATV_IN_NO_ACTIVE_CHILD_f;
#   ATV_DW.temporalCounter_i3 = 0U;
#   ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_f;
#   ATV_DW.is_HEATER_CTRL = ATV_IN_NO_ACTIVE_CHILD_f;
#   ATV_DW.is_HV_CTRL = ATV_IN_NO_ACTIVE_CHILD_f;
#   ATV_DW.temporalCounter_i2 = 0U;
#   ATV_DW.is_STARTTRIGGER = ATV_IN_NO_ACTIVE_CHILD_f;
#   ATV_DW.temporalCounter_i1_j = 0U;
#   ATV_DW.is_active_c3_ATV = 0U;
#   ATV_DW.is_c3_ATV = ATV_IN_NO_ACTIVE_CHILD_f;
# 
#   /* SystemInitialize for Chart: '<S42>/PUMP LOGIC' */
#   ATV_DW.is_PumpALogic = ATV_IN_NO_ACTIVE_CHILD_f;
#   ATV_DW.is_PumpBLogic = ATV_IN_NO_ACTIVE_CHILD_f;
#   ATV_DW.temporalCounter_i1_f = 0U;
#   ATV_DW.is_active_c5_ATV = 0U;
# 
#   /* SystemInitialize for Chart: '<S37>/VSMGestioneIbrido' */
#   ATV_DW.is_IceSM = ATV_IN_NO_ACTIVE_CHILD_f;
#   ATV_DW.is_MonitoraggioStatoICE = ATV_IN_NO_ACTIVE_CHILD_f;
#   ATV_DW.temporalCounter_i1 = 0U;
	.d2line		5290
	stw		r31,60(r27)
	.d2line		5313
	stw		r30,36(r28)
	.d2line		5301
	stw		r30,40(r28)
	.d2line		5293
	stw		r30,44(r28)
	.d2line		5298
	stw		r30,48(r28)
	.d2line		5312
	stw		r30,52(r28)
#   ATV_DW.is_WarmUpIce = ATV_IN_NO_ACTIVE_CHILD_f;
#   ATV_DW.temporalCounter_i2_m = 0U;
#   ATV_DW.is_active_c2_ATV = 0U;
# 
#   /* SystemInitialize for Chart: '<S3>/Chart' */
#   ATV_Chart_Init(&ATV_DW.sf_Chart);
	.d2line		5305
	sth		r29,56(r28)
	.d2line		5319
	bl		ATV_Chart_Init
# 
#   /* SystemInitialize for Chart: '<S4>/Chart' */
#   ATV_Chart_Init(&ATV_DW.sf_Chart_b);
	.d2line		5322
	diab.addi		r3,r28,79
	bl		ATV_Chart_Init
# 
#   /* SystemInitialize for Chart: '<S5>/Chart' */
#   ATV_Chart_Init(&ATV_DW.sf_Chart_l);
	.d2line		5325
	diab.addi		r3,r28,76
	bl		ATV_Chart_Init
# }
	.d2line		5326
	.d2epilogue_begin
	lmw		r27,76(r1)		# offset r1+76  0x4c
	.d2_cfa_restore_list	3,10
	lwz		r0,100(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,96		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6303:
	.type		ATV_initialize,@function
	.size		ATV_initialize,.-ATV_initialize
# Number of nodes = 1037

# Allocations for ATV_initialize
#	?a4		$$309
#	?a5		$$308
#	?a6		$$307
#	?a7		$$306
#	?a8		$$305
#	?a9		$$304
#	SP,8		year
#	SP,10		month
#	SP,12		day
#	SP,14		major_ver
#	SP,16		minor_ver
#	SP,18		sub_minor_ver
#	SP,20		year
#	SP,22		month
#	SP,24		day
#	SP,26		major_ver
#	SP,28		minor_ver
#	SP,30		sub_minor_ver
#	SP,32		year
#	SP,34		month
#	SP,36		day
#	SP,38		major_ver
#	SP,40		minor_ver
#	SP,42		sub_minor_ver
#	SP,44		year
#	SP,46		month
#	SP,48		day
#	SP,50		major_ver
#	SP,52		minor_ver
#	SP,54		sub_minor_ver
# void MdlOutputs(int_T tid)
# {
	.align		2
	.section	.text_vle
        .d2line         5338
#$$ld
.L6333:

#$$bf	MdlOutputs,interprocedural,nostackparams
	.globl		MdlOutputs
	.d2_cfa_start __cie
MdlOutputs:
.Llo1086:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	.d2prologue_end
	.d2line		4632
	se_cmpi		r3,0
	bc		1,2,.L4883	# eq
	se_cmpi		r3,1
	bc		1,2,.L4884	# eq
	se_cmpi		r3,2
	bc		1,2,.L4885	# eq
	b		.L4886
.L4883:
	.d2line		4634
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_output0
.L4884:
	.d2line		4638
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_output1
.L4885:
	.d2line		4642
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_output2
.L4886:
#   ATV_output(tid);
# }
	.d2line		5340
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1087:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6334:
	.type		MdlOutputs,@function
	.size		MdlOutputs,.-MdlOutputs
# Number of nodes = 4

# Allocations for MdlOutputs
#	?a4		tid
#	not allocated	$$26
#	not allocated	tid
# void MdlUpdate(int_T tid)
# {
	.align		2
	.section	.text_vle
        .d2line         5343
#$$ld
.L6339:

#$$bf	MdlUpdate,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r12,cr0,lr,spefscr
	.globl		MdlUpdate
	.d2_cfa_start __cie
MdlUpdate:
.Llo1088:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	.d2prologue_end
	.d2line		4653
	se_cmpi		r3,0
	bc		1,2,.L4887	# eq
	se_cmpi		r3,1
	bc		1,2,.L4888	# eq
	se_cmpi		r3,2
	bc		1,2,.L4889	# eq
	b		.L4890
.L4887:
	.d2line		4655
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_update0
.L4888:
	.d2line		4659
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_update1
.L4889:
	.d2line		4663
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_update2
.L4890:
#   ATV_update(tid);
# }
	.d2line		5345
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1089:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6340:
	.type		MdlUpdate,@function
	.size		MdlUpdate,.-MdlUpdate
# Number of nodes = 4

# Allocations for MdlUpdate
#	?a4		tid
#	not allocated	$$28
#	not allocated	tid
# void MdlInitializeSizes(void)
# {
	.align		2
	.section	.text_vle
        .d2line         5348
#$$ld
.L6345:

#$$bf	MdlInitializeSizes,interprocedural,nostackparams

# Regs written: 
	.globl		MdlInitializeSizes
	.d2_cfa_start __cie
MdlInitializeSizes:
	.d2line		0
	.d2prologue_end
# }
	.d2line		5349
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6346:
	.type		MdlInitializeSizes,@function
	.size		MdlInitializeSizes,.-MdlInitializeSizes
# Number of nodes = 0

# Allocations for MdlInitializeSizes
# void MdlInitializeSampleTimes(void)
# {
	.align		2
	.section	.text_vle
        .d2line         5352
#$$ld
.L6350:

#$$bf	MdlInitializeSampleTimes,interprocedural,nostackparams

# Regs written: 
	.globl		MdlInitializeSampleTimes
	.d2_cfa_start __cie
MdlInitializeSampleTimes:
	.d2line		0
	.d2prologue_end
# }
	.d2line		5353
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6351:
	.type		MdlInitializeSampleTimes,@function
	.size		MdlInitializeSampleTimes,.-MdlInitializeSampleTimes
# Number of nodes = 0

# Allocations for MdlInitializeSampleTimes
# void MdlInitialize(void)
# {
	.align		2
	.section	.text_vle
        .d2line         5356
#$$ld
.L6355:

#$$bf	MdlInitialize,interprocedural,nostackparams

# Regs written: 
	.globl		MdlInitialize
	.d2_cfa_start __cie
MdlInitialize:
	.d2line		0
	.d2prologue_end
# }
	.d2line		5357
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6356:
	.type		MdlInitialize,@function
	.size		MdlInitialize,.-MdlInitialize
# Number of nodes = 0

# Allocations for MdlInitialize
# void MdlStart(void)
# {
	.align		2
	.section	.text_vle
        .d2line         5360
#$$ld
.L6360:

#$$bf	MdlStart,interprocedural,nostackparams
	.globl		MdlStart
	.d2_cfa_start __cie
MdlStart:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	.d2prologue_end
#   ATV_initialize();
	.d2line		5361
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_initialize
# }
	.d2line		5362
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6361:
	.type		MdlStart,@function
	.size		MdlStart,.-MdlStart
# Number of nodes = 2

# Allocations for MdlStart
# void MdlTerminate(void)
# {
	.align		2
	.section	.text_vle
        .d2line         5365
#$$ld
.L6365:

#$$bf	MdlTerminate,interprocedural,nostackparams

# Regs written: 
	.globl		MdlTerminate
	.d2_cfa_start __cie
MdlTerminate:
	.d2line		0
	.d2prologue_end
#   ATV_terminate();
# }
	.d2line		5367
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6366:
	.type		MdlTerminate,@function
	.size		MdlTerminate,.-MdlTerminate
# Number of nodes = 2

# Allocations for MdlTerminate
#	not allocated	$$21
# RT_MODEL_ATV_T *ATV(void)
# {
	.align		2
	.section	.text_vle
        .d2line         5371
#$$ld
.L6370:

#$$bf	ATV,interprocedural,rasave,nostackparams
	.globl		ATV
	.d2_cfa_start __cie
ATV:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r24,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	24,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#   /* Registration code */
# 
#   /* initialize non-finites */
#   rt_InitInfAndNaN(sizeof(real_T));
	.d2line		5375
	diab.li		r3,4
	lis		r29,ATV_M@ha
	e_add16i		r29,r29,ATV_M@l
	bl		rt_InitInfAndNaN
# 
#   /* initialize real-time model */
#   (void) memset((void *)ATV_M, 0,
	.d2line		5383
	diab.li		r30,0
	.d2line		5378
	lwz		r3,0(r29)
	diab.li		r4,0		# mdlSampleHits=r4
	diab.li		r5,580
	.d2line		5384
	diab.li		r31,1
#                 sizeof(RT_MODEL_ATV_T));
# 
#   /* Initialize timing info */
#   {
#     int_T *mdlTsMap = ATV_M->Timing.sampleTimeTaskIDArray;
	bl		memset
	.d2line		5385
	diab.li		r7,2
#     mdlTsMap[0] = 0;
	lwz		r4,0(r29)		# mdlSampleHits=r4
	.d2line		5389
.Llo1090:
	e_lis		r6,15395
	.d2line		5392
	e_lis		r5,15820
#     mdlTsMap[1] = 1;
	e_or2i		r6,55050
	e_or2i		r5,52429
	.d2line		5393
	e_lis		r0,16256
#     mdlTsMap[2] = 2;
	.d2line		5419
	stw		r7,44(r4)		# mdlSampleHits=r4
#     ATV_M->Timing.sampleTimeTaskIDPtr = (&mdlTsMap[0]);
	.d2line		5412
	e_lis		r26,-16512		# mdlSampleHits=r26
#     ATV_M->Timing.sampleTimes = (&ATV_M->Timing.sampleTimesArray[0]);
	.d2line		5418
	stw		r6,64(r4)		# mdlSampleHits=r4
	lis		r3,ATV_B@ha
	.d2line		5417
	stw		r6,388(r4)		# mdlSampleHits=r4
#     ATV_M->Timing.offsetTimes = (&ATV_M->Timing.offsetTimesArray[0]);
	e_add16i		r3,r3,ATV_B@l
	.d2line		5383
	diab.addi		r27,r4,508		# mdlTsMap=r27 mdlSampleHits=r4
	.d2line		5422
	stw		r3,240(r4)		# mdlSampleHits=r4
# 
#     /* task periods */
#     ATV_M->Timing.sampleTimes[0] = (0.01);
	.d2line		5388
	diab.addi		r25,r4,484		# mdlSampleHits=r4
	.d2line		5413
	stw		r6,400(r4)		# mdlSampleHits=r4
#     ATV_M->Timing.sampleTimes[1] = (0.1);
	.d2line		5389
	diab.addi		r28,r4,496		# mdlSampleHits=r4
	.d2line		5423
	diab.addi		r3,r3,-4
#     ATV_M->Timing.sampleTimes[2] = (1.0);
	.d2line		5414
	stw		r5,412(r4)		# mdlSampleHits=r4
	.d2line		5415
	stw		r0,424(r4)		# mdlSampleHits=r4
# 
#     /* task offsets */
#     ATV_M->Timing.offsetTimes[0] = (0.0);
	.d2line		5402
	diab.addi		r24,r4,568		# mdlSampleHits=r4
#     ATV_M->Timing.offsetTimes[1] = (0.0);
	.d2line		5412
	stw		r26,436(r4)		# mdlSampleHits=r4 mdlSampleHits=r26
#     ATV_M->Timing.offsetTimes[2] = (0.0);
	.d2line		5394
	mr		r8,r30
#   }
# 
#   rtmSetTPtr(ATV_M, &ATV_M->Timing.tArray[0]);
	.d2line		5388
	stw		r25,460(r4)		# mdlSampleHits=r4
	.d2line		5423
	mr		r9,r8
# 
#   {
#     int_T *mdlSampleHits = ATV_M->Timing.sampleHitArray;
	.d2line		5405
	diab.addi		r26,r4,520		# mdlSampleHits=r26 mdlSampleHits=r4
#     int_T *mdlPerTaskSampleHits = ATV_M->Timing.perTaskSampleHitsArray;
#     ATV_M->Timing.perTaskSampleHits = (&mdlPerTaskSampleHits[0]);
	.d2line		5389
	stw		r28,464(r4)		# mdlSampleHits=r4
	.d2line		5407
	diab.addi		r25,r4,532		# mdlSampleHits=r4
#     mdlSampleHits[0] = 1;
	.d2line		5387
	stw		r27,468(r4)		# mdlSampleHits=r4 mdlTsMap=r27
#     ATV_M->Timing.sampleHits = (&mdlSampleHits[0]);
	.d2line		5416
	diab.addi		r28,r4,24		# mdlSampleHits=r4
#   }
# 
#   rtmSetTFinal(ATV_M, -1);
#   ATV_M->Timing.stepSize0 = 0.01;
	.d2line		5409
	stw		r26,472(r4)		# mdlSampleHits=r4 mdlSampleHits=r26
#   ATV_M->Timing.stepSize1 = 0.1;
	stw		r28,232(r4)		# mdlSampleHits=r4
#   ATV_M->Timing.stepSize2 = 1.0;
	stw		r25,476(r4)		# mdlSampleHits=r4
	.d2line		5423
	diab.li		r28,23
	.d2line		5402
	stw		r24,480(r4)		# mdlSampleHits=r4
#   ATV_M->solverInfoPtr = (&ATV_M->solverInfo);
	mtspr		ctr,r28
	.d2line		5392
	stw		r6,484(r4)		# mdlSampleHits=r4
#   ATV_M->Timing.stepSize = (0.01);
#   rtsiSetFixedStepSize(&ATV_M->solverInfo, 0.01);
	.d2line		5393
	stw		r5,488(r4)		# mdlSampleHits=r4
	.d2line		5394
	stw		r0,492(r4)		# mdlSampleHits=r4
#   rtsiSetSolverMode(&ATV_M->solverInfo, SOLVER_MODE_MULTITASKING);
	.d2line		5397
	stw		r30,496(r4)		# mdlSampleHits=r4
	.d2line		5398
	stw		r30,500(r4)		# mdlSampleHits=r4
# 
#   /* block I/O */
#   ATV_M->blockIO = ((void *) &ATV_B);
	.d2line		5399
	stw		r30,504(r4)		# mdlSampleHits=r4
#   (void) memset(((void *) &ATV_B), 0,
	.d2line		5384
	stw		r30,508(r4)		# mdlTsMap=r4
	.d2line		5385
	stw		r31,512(r4)		# mdlTsMap=r4
	.d2line		5386
	stw		r7,516(r4)		# mdlTsMap=r4
	.d2line		5408
	stw		r31,520(r4)		# mdlSampleHits=r4
.L6380:
	.d2line		5423
.Llo1091:
	stwu		r9,4(r3)
	stwu		r9,4(r3)
	bc		2,0,.L6380
#                 sizeof(B_ATV_T));
# 
#   /* exported global signals */
#   atv_xc1_raw_ain = 0.0;
	.d2line		5441
	diab.li		r5,0
#   atv_xc4_raw_ain = 0.0;
	.d2line		5436
	stw		r8,bms_pack_voltage@sdarx(r0)
#   atv_xa3_brake_pedal_raw_ain = 0.0;
	.d2line		5427
	stw		r8,atv_xc1_raw_ain@sdarx(r0)
#   atv_xa1_ain_throttle_raw = 0.0;
	.d2line		5502
	lis		r4,ATV_DW@ha		# mdlSampleHits=r4
	.d2line		5428
.Llo1092:
	stw		r8,atv_xc4_raw_ain@sdarx(r0)
#   atv_xd3_raw_ain = 0.0;
	e_add16i		r4,r4,ATV_DW@l		# mdlSampleHits=r4 mdlSampleHits=r4
#   atv_xe4_raw_ain = 0.0;
	.d2line		5429
	stw		r8,atv_xa3_brake_pedal_raw_ain@sdarx(r0)
#   atv_xe2_raw_ain = 0.0;
	.d2line		5506
	diab.li		r0,11
#   atv_dbg_FAN_out = 0.0;
	.d2line		5430
	stw		r8,atv_xa1_ain_throttle_raw@sdarx(r0)
#   atv_yg3_raw_ain = 0.0;
	diab.addi		r3,r4,-4		# mdlSampleHits=r4
#   bms_pack_voltage = 0.0;
	.d2line		5431
	stw		r8,atv_xd3_raw_ain@sdarx(r0)
#   atv_stack_used = 0U;
	mtspr		ctr,r0
#   atv_task_duration_1s = 0U;
	.d2line		5432
	stw		r8,atv_xe4_raw_ain@sdarx(r0)
#   atv_task_duration_1s_max = 0U;
	.d2line		5433
	stw		r8,atv_xe2_raw_ain@sdarx(r0)
#   atv_xd1_key_ain = 0;
	.d2line		5434
	stw		r8,atv_dbg_FAN_out@sdarx(r0)
#   atv_xe3_ain = 0;
	.d2line		5435
	stw		r8,atv_yg3_raw_ain@sdarx(r0)
	.d2line		5437
	stw		r30,atv_stack_used@sdarx(r0)
#   atv_brake_pedalX1000 = 0U;
	.d2line		5438
	stw		r30,atv_task_duration_1s@sdarx(r0)
#   atv_throttleX1000 = 0U;
	.d2line		5439
	stw		r30,atv_task_duration_1s_max@sdarx(r0)
#   atv_regen_x1000_rear = 0U;
	.d2line		5440
	stw		r30,atv_xd1_key_ain@sdarx(r0)
#   atv_motoring_x1000_rear = 0U;
	.d2line		5441
	stw		r30,atv_xe3_ain@sdarx(r0)
#   atv_motoring_x1000_rear_limited = 0U;
	.d2line		5442
	sth		r5,atv_brake_pedalX1000@sdarx(r0)
#   atv_regen_x1000_front = 0U;
	.d2line		5443
	sth		r5,atv_throttleX1000@sdarx(r0)
#   atv_motoring_x1000_front = 0U;
	.d2line		5444
	sth		r5,atv_regen_x1000_rear@sdarx(r0)
#   atv_motoring_x1000_front_limited = 0U;
	.d2line		5445
	sth		r5,atv_motoring_x1000_rear@sdarx(r0)
#   atv_footBrake_X1000_out = 0U;
	.d2line		5446
	sth		r5,atv_motoring_x1000_rear_limited@sdarx(r0)
#   atv_tHROTTLEGen_X1000_out = 0U;
	.d2line		5447
	sth		r5,atv_regen_x1000_front@sdarx(r0)
#   atv_app_code_year = 0U;
	.d2line		5448
	sth		r5,atv_motoring_x1000_front@sdarx(r0)
#   atv_app_code_month = 0U;
	.d2line		5449
	sth		r5,atv_motoring_x1000_front_limited@sdarx(r0)
#   atv_app_code_day = 0U;
	.d2line		5450
	sth		r5,atv_footBrake_X1000_out@sdarx(r0)
#   atv_app_code_major_ver = 0U;
	.d2line		5451
	sth		r5,atv_tHROTTLEGen_X1000_out@sdarx(r0)
#   atv_app_code_minor_ver = 0U;
	.d2line		5452
	sth		r5,atv_app_code_year@sdarx(r0)
#   atv_app_code_subminor_ver = 0U;
	.d2line		5453
	sth		r5,atv_app_code_month@sdarx(r0)
#   atv_boot_code_year = 0U;
	.d2line		5454
	sth		r5,atv_app_code_day@sdarx(r0)
#   atv_boot_code_month = 0U;
	.d2line		5455
	sth		r5,atv_app_code_major_ver@sdarx(r0)
#   atv_boot_code_day = 0U;
	.d2line		5456
	sth		r5,atv_app_code_minor_ver@sdarx(r0)
#   atv_boot_code_major_ver = 0U;
	.d2line		5457
	sth		r5,atv_app_code_subminor_ver@sdarx(r0)
#   atv_boot_code_minor_ver = 0U;
	.d2line		5458
	sth		r5,atv_boot_code_year@sdarx(r0)
#   atv_boot_code_subminor_ver = 0U;
	.d2line		5459
	sth		r5,atv_boot_code_month@sdarx(r0)
#   atv_prg_code_year = 0U;
	.d2line		5460
	sth		r5,atv_boot_code_day@sdarx(r0)
#   atv_prg_code_month = 0U;
	.d2line		5461
	sth		r5,atv_boot_code_major_ver@sdarx(r0)
#   atv_prg_code_day = 0U;
	.d2line		5462
	sth		r5,atv_boot_code_minor_ver@sdarx(r0)
#   atv_prg_code_major_ver = 0U;
	.d2line		5463
	sth		r5,atv_boot_code_subminor_ver@sdarx(r0)
#   atv_prg_code_minor_ver = 0U;
	.d2line		5464
	sth		r5,atv_prg_code_year@sdarx(r0)
#   atv_prg_code_subminor_ver = 0U;
	.d2line		5465
	sth		r5,atv_prg_code_month@sdarx(r0)
#   atv_platform_code_year = 0U;
	.d2line		5466
	sth		r5,atv_prg_code_day@sdarx(r0)
#   atv_platform_code_month = 0U;
	.d2line		5467
	sth		r5,atv_prg_code_major_ver@sdarx(r0)
#   atv_platform_code_day = 0U;
	.d2line		5468
	sth		r5,atv_prg_code_minor_ver@sdarx(r0)
#   atv_platform_code_major_ver = 0U;
	.d2line		5469
	sth		r5,atv_prg_code_subminor_ver@sdarx(r0)
#   atv_platform_code_minor_ver = 0U;
	.d2line		5470
	sth		r5,atv_platform_code_year@sdarx(r0)
#   atv_platform_code_subminor_ver = 0U;
	.d2line		5471
	sth		r5,atv_platform_code_month@sdarx(r0)
#   atv_GenCurrentSetPoint = 0;
	.d2line		5472
	sth		r5,atv_platform_code_day@sdarx(r0)
#   atv_cpu_loading = 0U;
	.d2line		5473
	sth		r5,atv_platform_code_major_ver@sdarx(r0)
#   atv_cpu_loading_max = 0U;
	.d2line		5474
	sth		r5,atv_platform_code_minor_ver@sdarx(r0)
#   atv_state_out = 0U;
	.d2line		5475
	sth		r5,atv_platform_code_subminor_ver@sdarx(r0)
#   atv_sub_state_out = 0U;
	.d2line		5476
	sth		r5,atv_GenCurrentSetPoint@sdarx(r0)
#   atv_IceSM = 0U;
	.d2line		5477
	stb		r5,atv_cpu_loading@sdarx(r0)
#   atv_IceRG = 0U;
	.d2line		5478
	stb		r5,atv_cpu_loading_max@sdarx(r0)
#   atv_key_signal = false;
	.d2line		5479
	stb		r5,atv_state_out@sdarx(r0)
#   atv_za3_StartBtn_din = false;
	.d2line		5480
	stb		r5,atv_sub_state_out@sdarx(r0)
#   atv_fwd_mode_in = false;
	.d2line		5481
	stb		r5,atv_IceSM@sdarx(r0)
#   atv_rwd_mode_in = false;
	.d2line		5482
	stb		r5,atv_IceRG@sdarx(r0)
#   atv_brake_pedal_digital_in = false;
	.d2line		5483
	stb		r5,atv_key_signal@sdarx(r0)
#   atv_throttleRegOff = false;
	.d2line		5484
	stb		r5,atv_za3_StartBtn_din@sdarx(r0)
#   atv_fs1_in = false;
	.d2line		5485
	stb		r5,atv_fwd_mode_in@sdarx(r0)
#   atv_fs1_out = false;
	.d2line		5486
	stb		r5,atv_rwd_mode_in@sdarx(r0)
#   atv_4wd_din = false;
	.d2line		5487
	stb		r5,atv_brake_pedal_digital_in@sdarx(r0)
#   atv_apu_req_in = false;
	.d2line		5488
	stb		r5,atv_throttleRegOff@sdarx(r0)
#   atv_v_dbg_chg_req = false;
	.d2line		5489
	stb		r5,atv_fs1_in@sdarx(r0)
#   atv_v_dbg_heater_req = false;
	.d2line		5490
	stb		r5,atv_fs1_out@sdarx(r0)
#   atv_wakelock_out = false;
	.d2line		5491
	stb		r5,atv_4wd_din@sdarx(r0)
#   atv_runLed_out = false;
	.d2line		5492
	stb		r5,atv_apu_req_in@sdarx(r0)
#   atv_en_dcdc_out = false;
	.d2line		5493
	stb		r5,atv_v_dbg_chg_req@sdarx(r0)
#   atv_IceKey_out = false;
	.d2line		5494
	stb		r5,atv_v_dbg_heater_req@sdarx(r0)
#   atv_IceShutdown_out = false;
	.d2line		5495
	stb		r5,atv_wakelock_out@sdarx(r0)
#   atv_IceOn = false;
	.d2line		5496
	stb		r5,atv_runLed_out@sdarx(r0)
#   atv_IceFault = false;
	.d2line		5497
	stb		r5,atv_en_dcdc_out@sdarx(r0)
#   atv_dbg_pumpB_out = false;
	.d2line		5498
	stb		r5,atv_IceKey_out@sdarx(r0)
	.d2line		5499
	stb		r5,atv_IceShutdown_out@sdarx(r0)
# 
#   /* states (dwork) */
#   ATV_M->dwork = ((void *) &ATV_DW);
	.d2line		5500
	stb		r5,atv_IceOn@sdarx(r0)
	.d2line		5501
	stb		r5,atv_IceFault@sdarx(r0)
#   (void) memset((void *)&ATV_DW, 0,
	.d2line		5502
	stb		r5,atv_dbg_pumpB_out@sdarx(r0)
	.d2line		5505
	lwz		r6,0(r29)
	stw		r4,292(r6)		# mdlSampleHits=r4
.L6381:
	.d2line		5506
.Llo1093:
	stwu		r5,4(r3)
	stwu		r5,4(r3)
	bc		2,0,.L6381
	lwz		r3,0(r29)
#                 sizeof(DW_ATV_T));
# 
#   /* Initialize Sizes */
#   ATV_M->Sizes.numContStates = (0);    /* Number of continuous states */
	.d2line		5514
	diab.li		r6,3
#   ATV_M->Sizes.numY = (0);             /* Number of model outputs */
#   ATV_M->Sizes.numU = (0);             /* Number of model inputs */
	.d2line		5515
	diab.li		r5,317
	.d2line		5516
	diab.li		r4,104		# mdlSampleHits=r4
#   ATV_M->Sizes.sysDirFeedThru = (0);   /* The model is not direct feedthrough */
#   ATV_M->Sizes.numSampTimes = (3);     /* Number of sample times */
	.d2line		5510
.Llo1094:
	stw		r30,316(r3)
	.d2line		5512
	stw		r30,324(r3)
#   ATV_M->Sizes.numBlocks = (317);      /* Number of blocks */
	.d2line		5511
	stw		r30,328(r3)
	.d2line		5514
	stw		r6,332(r3)
#   ATV_M->Sizes.numBlockIO = (104);     /* Number of block outputs */
	.d2line		5515
	stw		r5,336(r3)
	.d2line		5516
	stw		r4,340(r3)		# mdlSampleHits=r4
	.d2line		5513
	stw		r30,372(r3)
#   return ATV_M;
# }
	.d2line		5518
	.d2epilogue_begin
	lmw		r24,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1095:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6371:
	.type		ATV,@function
	.size		ATV,.-ATV
# Number of nodes = 493

# Allocations for ATV
#	?a4		$$329
#	?a5		$$328
#	?a6		$$327
#	?a7		$$326
#	?a8		$$325
#	?a9		$$324
#	?a10		$$323
#	?a11		$$322
#	?a12		$$321
#	?a13		$$320
#	?a14		$$319
#	?a15		$$318
#	?a16		$$317
#	?a17		$$316
#	?a18		$$314
#	not allocated	$$313
#	not allocated	$$312
#	not allocated	$$311
#	not allocated	$$310
#	?a19		mdlTsMap
#	?a20		mdlSampleHits
#	not allocated	mdlPerTaskSampleHits
# void psc_initialise_app(void)
# {
	.align		2
	.section	.text_vle
        .d2line         5532
#$$ld
.L6384:

#$$bf	psc_initialise_app,interprocedural,rasave,nostackparams
	.globl		psc_initialise_app
	.d2_cfa_start __cie
psc_initialise_app:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#   /* Create the bit patterns for various floating point entities */
#   rt_InitInfAndNaN(sizeof(real_T));
	.d2line		5534
	diab.li		r3,4
	bl		rt_InitInfAndNaN
# 
#   /* Register the simulation. */
#   S = MODEL();
	.d2line		5537
	bl		ATV
	.d2line		5540
	diab.addi		r0,r3,444
	stw		r3,S@sdarx(r0)
#   MdlInitializeSizes();
#   MdlInitializeSampleTimes();
#   (void) rt_SimInitTimingEngine(rtmGetNumSampleTimes(S),
	stw		r0,8(r1)
	mr		r7,r3
	diab.addi		r10,r3,452
	lwz		r4,388(r7)
	lwz		r9,432(r7)
	lwz		r5,460(r7)
	lwz		r6,464(r7)
	lwz		r8,468(r7)
	lwz		r3,332(r3)
	lwz		r7,472(r7)
	bl		rt_SimInitTimingEngine
	.d2line		5361
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_initialize
#     rtmGetStepSize(S),
#     rtmGetSampleTimePtr(S),
#     rtmGetOffsetTimePtr(S),
#     rtmGetSampleHitPtr(S),
#     rtmGetSampleTimeTaskIDPtr(S),
#     rtmGetTStart(S),
#     &rtmGetSimTimeStep(S),
#     &rtmGetTimingData(S));
# 
#   /* Initialise the model. */
#   MdlStart();
# }
	.d2line		5552
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6385:
	.type		psc_initialise_app,@function
	.size		psc_initialise_app,.-psc_initialise_app
# Number of nodes = 59

# Allocations for psc_initialise_app
#	?a4		$$330
#	not allocated	$$32
#	not allocated	$$31
#	not allocated	$$30
# void psc_background_app(void)
# {
	.align		2
	.section	.text_vle
        .d2line         5563
#$$ld
.L6389:

#$$bf	psc_background_app,interprocedural,nostackparams

# Regs written: 
	.globl		psc_background_app
	.d2_cfa_start __cie
psc_background_app:
	.d2line		0
	.d2prologue_end
#   /* Nothing to do for Simulink models. */
# }
	.d2line		5565
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6390:
	.type		psc_background_app,@function
	.size		psc_background_app,.-psc_background_app
# Number of nodes = 0

# Allocations for psc_background_app
# void pkn_angular_model_task(void)
# {
	.align		2
	.section	.text_vle
        .d2line         5576
#$$ld
.L6394:

#$$bf	pkn_angular_model_task,interprocedural,nostackparams

# Regs written: 
	.globl		pkn_angular_model_task
	.d2_cfa_start __cie
pkn_angular_model_task:
	.d2line		0
	.d2prologue_end
#   /* No angular functionality, task declared for linkage only. */
# }
	.d2line		5578
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6395:
	.type		pkn_angular_model_task,@function
	.size		pkn_angular_model_task,.-pkn_angular_model_task
# Number of nodes = 0

# Allocations for pkn_angular_model_task
# void pkn_10ms_model_task(void)
# {
	.align		2
	.section	.text_vle
        .d2line         5588
#$$ld
.L6399:

#$$bf	pkn_10ms_model_task,interprocedural,rasave,nostackparams
	.globl		pkn_10ms_model_task
	.d2_cfa_start __cie
pkn_10ms_model_task:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
	.d2line		5589
	lwz		r6,S@sdarx(r0)
#   real_T tnext = rt_SimUpdateDiscreteEvents(rtmGetNumSampleTimes(S),
	lwz		r3,332(r6)		# tnext=r3
	lwz		r4,444(r6)
	lwz		r5,472(r6)
	lwz		r6,476(r6)
	bl		rt_SimUpdateDiscreteEvents
#     rtmGetTimingData(S),
#     rtmGetSampleHitPtr(S),
#     rtmGetPerTaskSampleHitsPtr(S));
#   rtsiSetSolverStopTime(rtmGetRTWSolverInfo(S), tnext);
	.d2line		5593
.Llo1096:
	lwz		r4,S@sdarx(r0)
	stw		r3,48(r4)		# tnext=r3
	.d2line		4634
	bl		ATV_output0
	.d2line		4655
.Llo1097:
	bl		ATV_update0
	lwz		r3,S@sdarx(r0)		# tnext=r3
#   MdlOutputs(0);
#   MdlUpdate(0);
#   rt_SimUpdateDiscreteTaskTime(rtmGetTPtr(S),
	.d2line		5596
.Llo1098:
	diab.li		r5,0
	lwz		r0,20(r1)
	lwz		r4,444(r3)		# tnext=r3
	mtspr		lr,r0
	lwz		r3,480(r3)		# tnext=r3 tnext=r3
	.d2line		5589
.Llo1099:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		rt_SimUpdateDiscreteTaskTime
#     rtmGetTimingData(S), 0);
# }
	.d2line		5598
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6400:
	.type		pkn_10ms_model_task,@function
	.size		pkn_10ms_model_task,.-pkn_10ms_model_task
# Number of nodes = 52

# Allocations for pkn_10ms_model_task
#	?a4		$$332
#	?a5		$$331
#	not allocated	$$38
#	not allocated	$$37
#	not allocated	$$29
#	not allocated	$$27
#	?a6		tnext
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid
# void pkn_100ms_model_task(void)
# {
	.align		2
	.section	.text_vle
        .d2line         5608
#$$ld
.L6406:

#$$bf	pkn_100ms_model_task,interprocedural,rasave,nostackparams
	.globl		pkn_100ms_model_task
	.d2_cfa_start __cie
pkn_100ms_model_task:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
	.d2line		4638
	bl		ATV_output1
	.d2line		4659
	bl		ATV_update1
	lwz		r3,S@sdarx(r0)
#   MdlOutputs(1);
#   MdlUpdate(1);
#   rt_SimUpdateDiscreteTaskTime(rtmGetTPtr(S),
	.d2line		5611
	diab.li		r5,1
	lwz		r0,20(r1)
	lwz		r4,444(r3)
	mtspr		lr,r0
	lwz		r3,480(r3)
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		rt_SimUpdateDiscreteTaskTime
#     rtmGetTimingData(S), 1);
# }
	.d2line		5613
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6407:
	.type		pkn_100ms_model_task,@function
	.size		pkn_100ms_model_task,.-pkn_100ms_model_task
# Number of nodes = 22

# Allocations for pkn_100ms_model_task
#	?a4		$$333
#	not allocated	$$35
#	not allocated	$$33
#	not allocated	$$24
#	not allocated	$$22
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid
# void pkn_1000ms_model_task(void)
# {
	.align		2
	.section	.text_vle
        .d2line         5623
#$$ld
.L6411:

#$$bf	pkn_1000ms_model_task,interprocedural,rasave,nostackparams
	.globl		pkn_1000ms_model_task
	.d2_cfa_start __cie
pkn_1000ms_model_task:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
	.d2line		4642
	bl		ATV_output2
	.d2line		4663
	bl		ATV_update2
	lwz		r3,S@sdarx(r0)
#   MdlOutputs(2);
#   MdlUpdate(2);
#   rt_SimUpdateDiscreteTaskTime(rtmGetTPtr(S),
	.d2line		5626
	diab.li		r5,2
	lwz		r0,20(r1)
	lwz		r4,444(r3)
	mtspr		lr,r0
	lwz		r3,480(r3)
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		rt_SimUpdateDiscreteTaskTime
#     rtmGetTimingData(S), 2);
# }
	.d2line		5628
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6412:
	.type		pkn_1000ms_model_task,@function
	.size		pkn_1000ms_model_task,.-pkn_1000ms_model_task
# Number of nodes = 22

# Allocations for pkn_1000ms_model_task
#	?a4		$$334
#	not allocated	$$36
#	not allocated	$$34
#	not allocated	$$25
#	not allocated	$$23
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid

# Allocations for module
	.section	.text_vle
	.0byte		.L6414
	.bss
	.0byte		.L6422
	.bss
	.type		ATV_B,@object
	.size		ATV_B,184
	.align		2
	.globl		ATV_B
ATV_B:
	.space		184
	.bss
	.type		ATV_DW,@object
	.size		ATV_DW,88
	.align		2
	.globl		ATV_DW
ATV_DW:
	.space		88
	.sbss
	.0byte		.L6429
	.sbss
	.type		atv_xc1_raw_ain,@object
	.size		atv_xc1_raw_ain,4
	.align		2
	.globl		atv_xc1_raw_ain
atv_xc1_raw_ain:
	.space		4
	.sbss
	.type		atv_xc4_raw_ain,@object
	.size		atv_xc4_raw_ain,4
	.align		2
	.globl		atv_xc4_raw_ain
atv_xc4_raw_ain:
	.space		4
	.sbss
	.type		atv_xa3_brake_pedal_raw_ain,@object
	.size		atv_xa3_brake_pedal_raw_ain,4
	.align		2
	.globl		atv_xa3_brake_pedal_raw_ain
atv_xa3_brake_pedal_raw_ain:
	.space		4
	.sbss
	.type		atv_xa1_ain_throttle_raw,@object
	.size		atv_xa1_ain_throttle_raw,4
	.align		2
	.globl		atv_xa1_ain_throttle_raw
atv_xa1_ain_throttle_raw:
	.space		4
	.sbss
	.type		atv_xd3_raw_ain,@object
	.size		atv_xd3_raw_ain,4
	.align		2
	.globl		atv_xd3_raw_ain
atv_xd3_raw_ain:
	.space		4
	.sbss
	.type		atv_xe4_raw_ain,@object
	.size		atv_xe4_raw_ain,4
	.align		2
	.globl		atv_xe4_raw_ain
atv_xe4_raw_ain:
	.space		4
	.sbss
	.type		atv_xe2_raw_ain,@object
	.size		atv_xe2_raw_ain,4
	.align		2
	.globl		atv_xe2_raw_ain
atv_xe2_raw_ain:
	.space		4
	.sbss
	.type		atv_dbg_FAN_out,@object
	.size		atv_dbg_FAN_out,4
	.align		2
	.globl		atv_dbg_FAN_out
atv_dbg_FAN_out:
	.space		4
	.sbss
	.type		atv_yg3_raw_ain,@object
	.size		atv_yg3_raw_ain,4
	.align		2
	.globl		atv_yg3_raw_ain
atv_yg3_raw_ain:
	.space		4
	.sbss
	.type		bms_pack_voltage,@object
	.size		bms_pack_voltage,4
	.align		2
	.globl		bms_pack_voltage
bms_pack_voltage:
	.space		4
	.sbss
	.type		atv_stack_used,@object
	.size		atv_stack_used,4
	.align		2
	.globl		atv_stack_used
atv_stack_used:
	.space		4
	.sbss
	.type		atv_task_duration_1s,@object
	.size		atv_task_duration_1s,4
	.align		2
	.globl		atv_task_duration_1s
atv_task_duration_1s:
	.space		4
	.sbss
	.type		atv_task_duration_1s_max,@object
	.size		atv_task_duration_1s_max,4
	.align		2
	.globl		atv_task_duration_1s_max
atv_task_duration_1s_max:
	.space		4
	.sbss
	.type		atv_xd1_key_ain,@object
	.size		atv_xd1_key_ain,4
	.align		2
	.globl		atv_xd1_key_ain
atv_xd1_key_ain:
	.space		4
	.sbss
	.type		atv_xe3_ain,@object
	.size		atv_xe3_ain,4
	.align		2
	.globl		atv_xe3_ain
atv_xe3_ain:
	.space		4
	.sbss
	.type		atv_brake_pedalX1000,@object
	.size		atv_brake_pedalX1000,2
	.align		1
	.globl		atv_brake_pedalX1000
atv_brake_pedalX1000:
	.space		2
	.sbss
	.type		atv_throttleX1000,@object
	.size		atv_throttleX1000,2
	.align		1
	.globl		atv_throttleX1000
atv_throttleX1000:
	.space		2
	.sbss
	.type		atv_regen_x1000_rear,@object
	.size		atv_regen_x1000_rear,2
	.align		1
	.globl		atv_regen_x1000_rear
atv_regen_x1000_rear:
	.space		2
	.sbss
	.type		atv_motoring_x1000_rear,@object
	.size		atv_motoring_x1000_rear,2
	.align		1
	.globl		atv_motoring_x1000_rear
atv_motoring_x1000_rear:
	.space		2
	.sbss
	.type		atv_motoring_x1000_rear_limited,@object
	.size		atv_motoring_x1000_rear_limited,2
	.align		1
	.globl		atv_motoring_x1000_rear_limited
atv_motoring_x1000_rear_limited:
	.space		2
	.sbss
	.type		atv_regen_x1000_front,@object
	.size		atv_regen_x1000_front,2
	.align		1
	.globl		atv_regen_x1000_front
atv_regen_x1000_front:
	.space		2
	.sbss
	.type		atv_motoring_x1000_front,@object
	.size		atv_motoring_x1000_front,2
	.align		1
	.globl		atv_motoring_x1000_front
atv_motoring_x1000_front:
	.space		2
	.sbss
	.type		atv_motoring_x1000_front_limited,@object
	.size		atv_motoring_x1000_front_limited,2
	.align		1
	.globl		atv_motoring_x1000_front_limited
atv_motoring_x1000_front_limited:
	.space		2
	.sbss
	.type		atv_footBrake_X1000_out,@object
	.size		atv_footBrake_X1000_out,2
	.align		1
	.globl		atv_footBrake_X1000_out
atv_footBrake_X1000_out:
	.space		2
	.sbss
	.type		atv_tHROTTLEGen_X1000_out,@object
	.size		atv_tHROTTLEGen_X1000_out,2
	.align		1
	.globl		atv_tHROTTLEGen_X1000_out
atv_tHROTTLEGen_X1000_out:
	.space		2
	.sbss
	.type		atv_app_code_year,@object
	.size		atv_app_code_year,2
	.align		1
	.globl		atv_app_code_year
atv_app_code_year:
	.space		2
	.sbss
	.type		atv_app_code_month,@object
	.size		atv_app_code_month,2
	.align		1
	.globl		atv_app_code_month
atv_app_code_month:
	.space		2
	.sbss
	.type		atv_app_code_day,@object
	.size		atv_app_code_day,2
	.align		1
	.globl		atv_app_code_day
atv_app_code_day:
	.space		2
	.sbss
	.type		atv_app_code_major_ver,@object
	.size		atv_app_code_major_ver,2
	.align		1
	.globl		atv_app_code_major_ver
atv_app_code_major_ver:
	.space		2
	.sbss
	.type		atv_app_code_minor_ver,@object
	.size		atv_app_code_minor_ver,2
	.align		1
	.globl		atv_app_code_minor_ver
atv_app_code_minor_ver:
	.space		2
	.sbss
	.type		atv_app_code_subminor_ver,@object
	.size		atv_app_code_subminor_ver,2
	.align		1
	.globl		atv_app_code_subminor_ver
atv_app_code_subminor_ver:
	.space		2
	.sbss
	.type		atv_boot_code_year,@object
	.size		atv_boot_code_year,2
	.align		1
	.globl		atv_boot_code_year
atv_boot_code_year:
	.space		2
	.sbss
	.type		atv_boot_code_month,@object
	.size		atv_boot_code_month,2
	.align		1
	.globl		atv_boot_code_month
atv_boot_code_month:
	.space		2
	.sbss
	.type		atv_boot_code_day,@object
	.size		atv_boot_code_day,2
	.align		1
	.globl		atv_boot_code_day
atv_boot_code_day:
	.space		2
	.sbss
	.type		atv_boot_code_major_ver,@object
	.size		atv_boot_code_major_ver,2
	.align		1
	.globl		atv_boot_code_major_ver
atv_boot_code_major_ver:
	.space		2
	.sbss
	.type		atv_boot_code_minor_ver,@object
	.size		atv_boot_code_minor_ver,2
	.align		1
	.globl		atv_boot_code_minor_ver
atv_boot_code_minor_ver:
	.space		2
	.sbss
	.type		atv_boot_code_subminor_ver,@object
	.size		atv_boot_code_subminor_ver,2
	.align		1
	.globl		atv_boot_code_subminor_ver
atv_boot_code_subminor_ver:
	.space		2
	.sbss
	.type		atv_prg_code_year,@object
	.size		atv_prg_code_year,2
	.align		1
	.globl		atv_prg_code_year
atv_prg_code_year:
	.space		2
	.sbss
	.type		atv_prg_code_month,@object
	.size		atv_prg_code_month,2
	.align		1
	.globl		atv_prg_code_month
atv_prg_code_month:
	.space		2
	.sbss
	.type		atv_prg_code_day,@object
	.size		atv_prg_code_day,2
	.align		1
	.globl		atv_prg_code_day
atv_prg_code_day:
	.space		2
	.sbss
	.type		atv_prg_code_major_ver,@object
	.size		atv_prg_code_major_ver,2
	.align		1
	.globl		atv_prg_code_major_ver
atv_prg_code_major_ver:
	.space		2
	.sbss
	.type		atv_prg_code_minor_ver,@object
	.size		atv_prg_code_minor_ver,2
	.align		1
	.globl		atv_prg_code_minor_ver
atv_prg_code_minor_ver:
	.space		2
	.sbss
	.type		atv_prg_code_subminor_ver,@object
	.size		atv_prg_code_subminor_ver,2
	.align		1
	.globl		atv_prg_code_subminor_ver
atv_prg_code_subminor_ver:
	.space		2
	.sbss
	.type		atv_platform_code_year,@object
	.size		atv_platform_code_year,2
	.align		1
	.globl		atv_platform_code_year
atv_platform_code_year:
	.space		2
	.sbss
	.type		atv_platform_code_month,@object
	.size		atv_platform_code_month,2
	.align		1
	.globl		atv_platform_code_month
atv_platform_code_month:
	.space		2
	.sbss
	.type		atv_platform_code_day,@object
	.size		atv_platform_code_day,2
	.align		1
	.globl		atv_platform_code_day
atv_platform_code_day:
	.space		2
	.sbss
	.type		atv_platform_code_major_ver,@object
	.size		atv_platform_code_major_ver,2
	.align		1
	.globl		atv_platform_code_major_ver
atv_platform_code_major_ver:
	.space		2
	.sbss
	.type		atv_platform_code_minor_ver,@object
	.size		atv_platform_code_minor_ver,2
	.align		1
	.globl		atv_platform_code_minor_ver
atv_platform_code_minor_ver:
	.space		2
	.sbss
	.type		atv_platform_code_subminor_ver,@object
	.size		atv_platform_code_subminor_ver,2
	.align		1
	.globl		atv_platform_code_subminor_ver
atv_platform_code_subminor_ver:
	.space		2
	.sbss
	.type		atv_GenCurrentSetPoint,@object
	.size		atv_GenCurrentSetPoint,2
	.align		1
	.globl		atv_GenCurrentSetPoint
atv_GenCurrentSetPoint:
	.space		2
	.sbss
	.type		atv_cpu_loading,@object
	.size		atv_cpu_loading,1
	.align		0
	.globl		atv_cpu_loading
atv_cpu_loading:
	.space		1
	.sbss
	.type		atv_cpu_loading_max,@object
	.size		atv_cpu_loading_max,1
	.align		0
	.globl		atv_cpu_loading_max
atv_cpu_loading_max:
	.space		1
	.sbss
	.type		atv_state_out,@object
	.size		atv_state_out,1
	.align		0
	.globl		atv_state_out
atv_state_out:
	.space		1
	.sbss
	.type		atv_sub_state_out,@object
	.size		atv_sub_state_out,1
	.align		0
	.globl		atv_sub_state_out
atv_sub_state_out:
	.space		1
	.sbss
	.type		atv_IceSM,@object
	.size		atv_IceSM,1
	.align		0
	.globl		atv_IceSM
atv_IceSM:
	.space		1
	.sbss
	.type		atv_IceRG,@object
	.size		atv_IceRG,1
	.align		0
	.globl		atv_IceRG
atv_IceRG:
	.space		1
	.sbss
	.type		atv_key_signal,@object
	.size		atv_key_signal,1
	.align		0
	.globl		atv_key_signal
atv_key_signal:
	.space		1
	.sbss
	.type		atv_za3_StartBtn_din,@object
	.size		atv_za3_StartBtn_din,1
	.align		0
	.globl		atv_za3_StartBtn_din
atv_za3_StartBtn_din:
	.space		1
	.sbss
	.type		atv_fwd_mode_in,@object
	.size		atv_fwd_mode_in,1
	.align		0
	.globl		atv_fwd_mode_in
atv_fwd_mode_in:
	.space		1
	.sbss
	.type		atv_rwd_mode_in,@object
	.size		atv_rwd_mode_in,1
	.align		0
	.globl		atv_rwd_mode_in
atv_rwd_mode_in:
	.space		1
	.sbss
	.type		atv_brake_pedal_digital_in,@object
	.size		atv_brake_pedal_digital_in,1
	.align		0
	.globl		atv_brake_pedal_digital_in
atv_brake_pedal_digital_in:
	.space		1
	.sbss
	.type		atv_throttleRegOff,@object
	.size		atv_throttleRegOff,1
	.align		0
	.globl		atv_throttleRegOff
atv_throttleRegOff:
	.space		1
	.sbss
	.type		atv_fs1_in,@object
	.size		atv_fs1_in,1
	.align		0
	.globl		atv_fs1_in
atv_fs1_in:
	.space		1
	.sbss
	.type		atv_fs1_out,@object
	.size		atv_fs1_out,1
	.align		0
	.globl		atv_fs1_out
atv_fs1_out:
	.space		1
	.sbss
	.type		atv_4wd_din,@object
	.size		atv_4wd_din,1
	.align		0
	.globl		atv_4wd_din
atv_4wd_din:
	.space		1
	.sbss
	.type		atv_apu_req_in,@object
	.size		atv_apu_req_in,1
	.align		0
	.globl		atv_apu_req_in
atv_apu_req_in:
	.space		1
	.sbss
	.type		atv_v_dbg_chg_req,@object
	.size		atv_v_dbg_chg_req,1
	.align		0
	.globl		atv_v_dbg_chg_req
atv_v_dbg_chg_req:
	.space		1
	.sbss
	.type		atv_v_dbg_heater_req,@object
	.size		atv_v_dbg_heater_req,1
	.align		0
	.globl		atv_v_dbg_heater_req
atv_v_dbg_heater_req:
	.space		1
	.sbss
	.type		atv_wakelock_out,@object
	.size		atv_wakelock_out,1
	.align		0
	.globl		atv_wakelock_out
atv_wakelock_out:
	.space		1
	.sbss
	.type		atv_runLed_out,@object
	.size		atv_runLed_out,1
	.align		0
	.globl		atv_runLed_out
atv_runLed_out:
	.space		1
	.sbss
	.type		atv_en_dcdc_out,@object
	.size		atv_en_dcdc_out,1
	.align		0
	.globl		atv_en_dcdc_out
atv_en_dcdc_out:
	.space		1
	.sbss
	.type		atv_IceKey_out,@object
	.size		atv_IceKey_out,1
	.align		0
	.globl		atv_IceKey_out
atv_IceKey_out:
	.space		1
	.sbss
	.type		atv_IceShutdown_out,@object
	.size		atv_IceShutdown_out,1
	.align		0
	.globl		atv_IceShutdown_out
atv_IceShutdown_out:
	.space		1
	.sbss
	.type		atv_IceOn,@object
	.size		atv_IceOn,1
	.align		0
	.globl		atv_IceOn
atv_IceOn:
	.space		1
	.sbss
	.type		atv_IceFault,@object
	.size		atv_IceFault,1
	.align		0
	.globl		atv_IceFault
atv_IceFault:
	.space		1
	.sbss
	.type		atv_dbg_pumpB_out,@object
	.size		atv_dbg_pumpB_out,1
	.align		0
	.globl		atv_dbg_pumpB_out
atv_dbg_pumpB_out:
	.space		1
	.section	.cal_sec,,r
	.type		atvc_IceOffTh,@object
	.size		atvc_IceOffTh,2
	.align		1
	.globl		atvc_IceOffTh
atvc_IceOffTh:
	.short		1500
	.section	.cal_sec,,r
	.type		atvc_IceOnTh,@object
	.size		atvc_IceOnTh,2
	.align		1
	.globl		atvc_IceOnTh
atvc_IceOnTh:
	.short		2300
	.section	.cal_sec,,r
	.type		atvc_StartThrottleIce,@object
	.size		atvc_StartThrottleIce,2
	.align		1
	.globl		atvc_StartThrottleIce
atvc_StartThrottleIce:
	.short		300
	.section	.cal_sec,,r
	.type		atvc_footBrakeWarmUp,@object
	.size		atvc_footBrakeWarmUp,2
	.align		1
	.globl		atvc_footBrakeWarmUp
atvc_footBrakeWarmUp:
	.short		200
	.section	.cal_sec,,r
	.type		atvc_throttleRegOff,@object
	.size		atvc_throttleRegOff,1
	.align		0
	.globl		atvc_throttleRegOff
atvc_throttleRegOff:
	.byte		1
	.section	.cal_sec,,r
	.type		atvc_IceStartRetry,@object
	.size		atvc_IceStartRetry,1
	.align		0
	.globl		atvc_IceStartRetry
atvc_IceStartRetry:
	.byte		2
	.section	.cal_sec,,r
	.type		atvc_dcMinFan,@object
	.size		atvc_dcMinFan,1
	.align		0
	.globl		atvc_dcMinFan
atvc_dcMinFan:
	.byte		30
	.section	.cal_sec,,r
	.type		atvc_minTempInv,@object
	.size		atvc_minTempInv,1
	.align		0
	.globl		atvc_minTempInv
atvc_minTempInv:
	.byte		40
	.section	.cal_sec,,r
	.type		atvc_minTempMotor,@object
	.size		atvc_minTempMotor,1
	.align		0
	.globl		atvc_minTempMotor
atvc_minTempMotor:
	.byte		60
	.section	.cal_sec,,r
	.type		atvc_socLimitSave,@object
	.size		atvc_socLimitSave,1
	.align		0
	.globl		atvc_socLimitSave
atvc_socLimitSave:
	.byte		5
	.section	.cal_sec,,r
	.type		atvc_tempSwitchOffFan,@object
	.size		atvc_tempSwitchOffFan,1
	.align		0
	.globl		atvc_tempSwitchOffFan
atvc_tempSwitchOffFan:
	.byte		48
	.section	.cal_sec,,r
	.type		atvc_tempSwitchOnFan,@object
	.size		atvc_tempSwitchOnFan,1
	.align		0
	.globl		atvc_tempSwitchOnFan
atvc_tempSwitchOnFan:
	.byte		50
	.section	.cal_sec,,r
	.type		atvc_velocityLimitFwd,@object
	.size		atvc_velocityLimitFwd,1
	.align		0
	.globl		atvc_velocityLimitFwd
atvc_velocityLimitFwd:
	.byte		10
	.section	.cal_sec,,r
	.type		atvc_velocityLimitRwd,@object
	.size		atvc_velocityLimitRwd,1
	.align		0
	.globl		atvc_velocityLimitRwd
atvc_velocityLimitRwd:
	.byte		5
	.bss
	.type		pdx_DigitalInput_detm_wrk_data,@object
	.size		pdx_DigitalInput_detm_wrk_data,12
	.align		2
	.globl		pdx_DigitalInput_detm_wrk_data
pdx_DigitalInput_detm_wrk_data:
	.space		12
	.sbss
	.type		pcx_CANdb_TransmitMessage_msg_handle,@object
	.size		pcx_CANdb_TransmitMessage_msg_handle,2
	.align		1
	.globl		pcx_CANdb_TransmitMessage_msg_handle
pcx_CANdb_TransmitMessage_msg_handle:
	.space		2
	.sbss
	.type		pcx_CANdb_TransmitMessage1_msg_handle,@object
	.size		pcx_CANdb_TransmitMessage1_msg_handle,2
	.align		1
	.globl		pcx_CANdb_TransmitMessage1_msg_handle
pcx_CANdb_TransmitMessage1_msg_handle:
	.space		2
	.sbss
	.type		pcx_CANdb_TransmitMessage6_msg_handle,@object
	.size		pcx_CANdb_TransmitMessage6_msg_handle,2
	.align		1
	.globl		pcx_CANdb_TransmitMessage6_msg_handle
pcx_CANdb_TransmitMessage6_msg_handle:
	.space		2
	.sbss
	.type		pcx_CANdb_TransmitMessage2_msg_handle,@object
	.size		pcx_CANdb_TransmitMessage2_msg_handle,2
	.align		1
	.globl		pcx_CANdb_TransmitMessage2_msg_handle
pcx_CANdb_TransmitMessage2_msg_handle:
	.space		2
	.sbss
	.type		pcx_CANdb_TransmitMessage3_msg_handle,@object
	.size		pcx_CANdb_TransmitMessage3_msg_handle,2
	.align		1
	.globl		pcx_CANdb_TransmitMessage3_msg_handle
pcx_CANdb_TransmitMessage3_msg_handle:
	.space		2
	.sbss
	.type		pcx_CANdb_TransmitMessage4_msg_handle,@object
	.size		pcx_CANdb_TransmitMessage4_msg_handle,2
	.align		1
	.globl		pcx_CANdb_TransmitMessage4_msg_handle
pcx_CANdb_TransmitMessage4_msg_handle:
	.space		2
	.sbss
	.type		pcx_CANdb_TransmitMessage5_msg_handle,@object
	.size		pcx_CANdb_TransmitMessage5_msg_handle,2
	.align		1
	.globl		pcx_CANdb_TransmitMessage5_msg_handle
pcx_CANdb_TransmitMessage5_msg_handle:
	.space		2
	.sbss
	.type		pcx_CANdb_TransmitMessage7_msg_handle,@object
	.size		pcx_CANdb_TransmitMessage7_msg_handle,2
	.align		1
	.globl		pcx_CANdb_TransmitMessage7_msg_handle
pcx_CANdb_TransmitMessage7_msg_handle:
	.space		2
	.sbss
	.type		pcx_CANdb_TransmitMessage8_msg_handle,@object
	.size		pcx_CANdb_TransmitMessage8_msg_handle,2
	.align		1
	.globl		pcx_CANdb_TransmitMessage8_msg_handle
pcx_CANdb_TransmitMessage8_msg_handle:
	.space		2
	.sbss
	.type		pcx_CANdb_ReceiveMessage_msg_handle,@object
	.size		pcx_CANdb_ReceiveMessage_msg_handle,2
	.align		1
	.globl		pcx_CANdb_ReceiveMessage_msg_handle
pcx_CANdb_ReceiveMessage_msg_handle:
	.space		2
	.sbss
	.type		pcx_CANdb_ReceiveMessage_p_msg_handle,@object
	.size		pcx_CANdb_ReceiveMessage_p_msg_handle,2
	.align		1
	.globl		pcx_CANdb_ReceiveMessage_p_msg_handle
pcx_CANdb_ReceiveMessage_p_msg_handle:
	.space		2
	.sbss
	.type		pcx_CANdb_ReceiveMessage_f_msg_handle,@object
	.size		pcx_CANdb_ReceiveMessage_f_msg_handle,2
	.align		1
	.globl		pcx_CANdb_ReceiveMessage_f_msg_handle
pcx_CANdb_ReceiveMessage_f_msg_handle:
	.space		2
	.sbss
	.type		pcx_CANdb_ReceiveMessage_e_msg_handle,@object
	.size		pcx_CANdb_ReceiveMessage_e_msg_handle,2
	.align		1
	.globl		pcx_CANdb_ReceiveMessage_e_msg_handle
pcx_CANdb_ReceiveMessage_e_msg_handle:
	.space		2
	.bss
	.type		ATV_M_,@object
	.size		ATV_M_,580
	.align		2
	.globl		ATV_M_
ATV_M_:
	.space		580
	.sbss
	.type		S,@object
	.size		S,4
	.align		2
	.globl		S
S:
	.space		4
	.type		tmp_g.4196,@object
	.size		tmp_g.4196,8
	.align		2
tmp_g.4196:
	.space		8
	.section	.cal_sec,,r
	.type		pcx_CANdb_TransmitMessage_field_start_pos.4235,@object
	.size		pcx_CANdb_TransmitMessage_field_start_pos.4235,6
	.align		2
pcx_CANdb_TransmitMessage_field_start_pos.4235:
	.byte		0
	.byte		8
	.byte		16
	.byte		24
	.byte		25
	.byte		26
	.type		pcx_CANdb_TransmitMessage_field_width.4236,@object
	.size		pcx_CANdb_TransmitMessage_field_width.4236,6
	.align		2
pcx_CANdb_TransmitMessage_field_width.4236:
	.byte		8
	.byte		8
	.byte		8
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage_field_is_signed.4237,@object
	.size		pcx_CANdb_TransmitMessage_field_is_signed.4237,6
	.align		2
pcx_CANdb_TransmitMessage_field_is_signed.4237:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage_field_valtype.4238,@object
	.size		pcx_CANdb_TransmitMessage_field_valtype.4238,6
	.align		2
pcx_CANdb_TransmitMessage_field_valtype.4238:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage_field_order.4239,@object
	.size		pcx_CANdb_TransmitMessage_field_order.4239,6
	.align		2
pcx_CANdb_TransmitMessage_field_order.4239:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage_field_eng_min.4240,@object
	.size		pcx_CANdb_TransmitMessage_field_eng_min.4240,24
	.align		2
pcx_CANdb_TransmitMessage_field_eng_min.4240:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage_field_eng_max.4241,@object
	.size		pcx_CANdb_TransmitMessage_field_eng_max.4241,24
	.align		2
pcx_CANdb_TransmitMessage_field_eng_max.4241:
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage_field_scale.4242,@object
	.size		pcx_CANdb_TransmitMessage_field_scale.4242,24
	.align		2
pcx_CANdb_TransmitMessage_field_scale.4242:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage_field_offset.4243,@object
	.size		pcx_CANdb_TransmitMessage_field_offset.4243,24
	.align		2
pcx_CANdb_TransmitMessage_field_offset.4243:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage2_field_start_pos.4343,@object
	.size		pcx_CANdb_TransmitMessage2_field_start_pos.4343,4
	.align		2
pcx_CANdb_TransmitMessage2_field_start_pos.4343:
	.byte		48
	.byte		32
	.byte		16
	.byte		0
	.type		pcx_CANdb_TransmitMessage2_field_width.4344,@object
	.size		pcx_CANdb_TransmitMessage2_field_width.4344,4
	.align		2
pcx_CANdb_TransmitMessage2_field_width.4344:
	.byte		16
	.byte		16
	.byte		16
	.byte		16
	.type		pcx_CANdb_TransmitMessage2_field_is_signed.4345,@object
	.size		pcx_CANdb_TransmitMessage2_field_is_signed.4345,4
	.align		2
pcx_CANdb_TransmitMessage2_field_is_signed.4345:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage2_field_valtype.4346,@object
	.size		pcx_CANdb_TransmitMessage2_field_valtype.4346,4
	.align		2
pcx_CANdb_TransmitMessage2_field_valtype.4346:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage2_field_order.4347,@object
	.size		pcx_CANdb_TransmitMessage2_field_order.4347,4
	.align		2
pcx_CANdb_TransmitMessage2_field_order.4347:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage2_field_eng_min.4348,@object
	.size		pcx_CANdb_TransmitMessage2_field_eng_min.4348,16
	.align		2
pcx_CANdb_TransmitMessage2_field_eng_min.4348:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage2_field_eng_max.4349,@object
	.size		pcx_CANdb_TransmitMessage2_field_eng_max.4349,16
	.align		2
pcx_CANdb_TransmitMessage2_field_eng_max.4349:
	.float		+1.00000000000000000000e3
	.float		+1.00000000000000000000e3
	.float		+2.0000000000000000000e4
	.float		+2.0000000000000000000e4
	.type		pcx_CANdb_TransmitMessage2_field_scale.4350,@object
	.size		pcx_CANdb_TransmitMessage2_field_scale.4350,16
	.align		2
pcx_CANdb_TransmitMessage2_field_scale.4350:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage2_field_offset.4351,@object
	.size		pcx_CANdb_TransmitMessage2_field_offset.4351,16
	.align		2
pcx_CANdb_TransmitMessage2_field_offset.4351:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage3_field_start_pos.4359,@object
	.size		pcx_CANdb_TransmitMessage3_field_start_pos.4359,5
	.align		2
pcx_CANdb_TransmitMessage3_field_start_pos.4359:
	.byte		34
	.byte		33
	.byte		32
	.byte		16
	.byte		0
	.type		pcx_CANdb_TransmitMessage3_field_width.4360,@object
	.size		pcx_CANdb_TransmitMessage3_field_width.4360,5
	.align		2
pcx_CANdb_TransmitMessage3_field_width.4360:
	.byte		1
	.byte		1
	.byte		1
	.byte		16
	.byte		16
	.type		pcx_CANdb_TransmitMessage3_field_is_signed.4361,@object
	.size		pcx_CANdb_TransmitMessage3_field_is_signed.4361,5
	.align		2
pcx_CANdb_TransmitMessage3_field_is_signed.4361:
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage3_field_valtype.4362,@object
	.size		pcx_CANdb_TransmitMessage3_field_valtype.4362,5
	.align		2
pcx_CANdb_TransmitMessage3_field_valtype.4362:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage3_field_order.4363,@object
	.size		pcx_CANdb_TransmitMessage3_field_order.4363,5
	.align		2
pcx_CANdb_TransmitMessage3_field_order.4363:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage3_field_eng_min.4364,@object
	.size		pcx_CANdb_TransmitMessage3_field_eng_min.4364,20
	.align		2
pcx_CANdb_TransmitMessage3_field_eng_min.4364:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		-3.2768000000000000000e4
	.float		+0.
	.type		pcx_CANdb_TransmitMessage3_field_eng_max.4365,@object
	.size		pcx_CANdb_TransmitMessage3_field_eng_max.4365,20
	.align		2
pcx_CANdb_TransmitMessage3_field_eng_max.4365:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+0.
	.float		+3.2767000000000000000e4
	.type		pcx_CANdb_TransmitMessage3_field_scale.4366,@object
	.size		pcx_CANdb_TransmitMessage3_field_scale.4366,20
	.align		2
pcx_CANdb_TransmitMessage3_field_scale.4366:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage3_field_offset.4367,@object
	.size		pcx_CANdb_TransmitMessage3_field_offset.4367,20
	.align		2
pcx_CANdb_TransmitMessage3_field_offset.4367:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage4_field_start_pos.4409,@object
	.size		pcx_CANdb_TransmitMessage4_field_start_pos.4409,4
	.align		2
pcx_CANdb_TransmitMessage4_field_start_pos.4409:
	.byte		48
	.byte		32
	.byte		16
	.byte		0
	.type		pcx_CANdb_TransmitMessage4_field_width.4410,@object
	.size		pcx_CANdb_TransmitMessage4_field_width.4410,4
	.align		2
pcx_CANdb_TransmitMessage4_field_width.4410:
	.byte		16
	.byte		16
	.byte		16
	.byte		16
	.type		pcx_CANdb_TransmitMessage4_field_is_signed.4411,@object
	.size		pcx_CANdb_TransmitMessage4_field_is_signed.4411,4
	.align		2
pcx_CANdb_TransmitMessage4_field_is_signed.4411:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage4_field_valtype.4412,@object
	.size		pcx_CANdb_TransmitMessage4_field_valtype.4412,4
	.align		2
pcx_CANdb_TransmitMessage4_field_valtype.4412:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage4_field_order.4413,@object
	.size		pcx_CANdb_TransmitMessage4_field_order.4413,4
	.align		2
pcx_CANdb_TransmitMessage4_field_order.4413:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage4_field_eng_min.4414,@object
	.size		pcx_CANdb_TransmitMessage4_field_eng_min.4414,16
	.align		2
pcx_CANdb_TransmitMessage4_field_eng_min.4414:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage4_field_eng_max.4415,@object
	.size		pcx_CANdb_TransmitMessage4_field_eng_max.4415,16
	.align		2
pcx_CANdb_TransmitMessage4_field_eng_max.4415:
	.float		+1.00000000000000000000e3
	.float		+1.00000000000000000000e3
	.float		+2.0000000000000000000e4
	.float		+2.0000000000000000000e4
	.type		pcx_CANdb_TransmitMessage4_field_scale.4416,@object
	.size		pcx_CANdb_TransmitMessage4_field_scale.4416,16
	.align		2
pcx_CANdb_TransmitMessage4_field_scale.4416:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage4_field_offset.4417,@object
	.size		pcx_CANdb_TransmitMessage4_field_offset.4417,16
	.align		2
pcx_CANdb_TransmitMessage4_field_offset.4417:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage5_field_start_pos.4420,@object
	.size		pcx_CANdb_TransmitMessage5_field_start_pos.4420,5
	.align		2
pcx_CANdb_TransmitMessage5_field_start_pos.4420:
	.byte		34
	.byte		33
	.byte		32
	.byte		16
	.byte		0
	.type		pcx_CANdb_TransmitMessage5_field_width.4421,@object
	.size		pcx_CANdb_TransmitMessage5_field_width.4421,5
	.align		2
pcx_CANdb_TransmitMessage5_field_width.4421:
	.byte		1
	.byte		1
	.byte		1
	.byte		16
	.byte		16
	.type		pcx_CANdb_TransmitMessage5_field_is_signed.4422,@object
	.size		pcx_CANdb_TransmitMessage5_field_is_signed.4422,5
	.align		2
pcx_CANdb_TransmitMessage5_field_is_signed.4422:
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage5_field_valtype.4423,@object
	.size		pcx_CANdb_TransmitMessage5_field_valtype.4423,5
	.align		2
pcx_CANdb_TransmitMessage5_field_valtype.4423:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage5_field_order.4424,@object
	.size		pcx_CANdb_TransmitMessage5_field_order.4424,5
	.align		2
pcx_CANdb_TransmitMessage5_field_order.4424:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage5_field_eng_min.4425,@object
	.size		pcx_CANdb_TransmitMessage5_field_eng_min.4425,20
	.align		2
pcx_CANdb_TransmitMessage5_field_eng_min.4425:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		-3.2768000000000000000e4
	.float		+0.
	.type		pcx_CANdb_TransmitMessage5_field_eng_max.4426,@object
	.size		pcx_CANdb_TransmitMessage5_field_eng_max.4426,20
	.align		2
pcx_CANdb_TransmitMessage5_field_eng_max.4426:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+0.
	.float		+3.2767000000000000000e4
	.type		pcx_CANdb_TransmitMessage5_field_scale.4427,@object
	.size		pcx_CANdb_TransmitMessage5_field_scale.4427,20
	.align		2
pcx_CANdb_TransmitMessage5_field_scale.4427:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage5_field_offset.4428,@object
	.size		pcx_CANdb_TransmitMessage5_field_offset.4428,20
	.align		2
pcx_CANdb_TransmitMessage5_field_offset.4428:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage7_field_start_pos.4462,@object
	.size		pcx_CANdb_TransmitMessage7_field_start_pos.4462,4
	.align		2
pcx_CANdb_TransmitMessage7_field_start_pos.4462:
	.byte		48
	.byte		32
	.byte		16
	.byte		0
	.type		pcx_CANdb_TransmitMessage7_field_width.4463,@object
	.size		pcx_CANdb_TransmitMessage7_field_width.4463,4
	.align		2
pcx_CANdb_TransmitMessage7_field_width.4463:
	.byte		16
	.byte		16
	.byte		16
	.byte		16
	.type		pcx_CANdb_TransmitMessage7_field_is_signed.4464,@object
	.size		pcx_CANdb_TransmitMessage7_field_is_signed.4464,4
	.align		2
pcx_CANdb_TransmitMessage7_field_is_signed.4464:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage7_field_valtype.4465,@object
	.size		pcx_CANdb_TransmitMessage7_field_valtype.4465,4
	.align		2
pcx_CANdb_TransmitMessage7_field_valtype.4465:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage7_field_order.4466,@object
	.size		pcx_CANdb_TransmitMessage7_field_order.4466,4
	.align		2
pcx_CANdb_TransmitMessage7_field_order.4466:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage7_field_eng_min.4467,@object
	.size		pcx_CANdb_TransmitMessage7_field_eng_min.4467,16
	.align		2
pcx_CANdb_TransmitMessage7_field_eng_min.4467:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage7_field_eng_max.4468,@object
	.size		pcx_CANdb_TransmitMessage7_field_eng_max.4468,16
	.align		2
pcx_CANdb_TransmitMessage7_field_eng_max.4468:
	.float		+1.00000000000000000000e3
	.float		+1.00000000000000000000e3
	.float		+2.0000000000000000000e4
	.float		+2.0000000000000000000e4
	.type		pcx_CANdb_TransmitMessage7_field_scale.4469,@object
	.size		pcx_CANdb_TransmitMessage7_field_scale.4469,16
	.align		2
pcx_CANdb_TransmitMessage7_field_scale.4469:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage7_field_offset.4470,@object
	.size		pcx_CANdb_TransmitMessage7_field_offset.4470,16
	.align		2
pcx_CANdb_TransmitMessage7_field_offset.4470:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage8_field_start_pos.4485,@object
	.size		pcx_CANdb_TransmitMessage8_field_start_pos.4485,5
	.align		2
pcx_CANdb_TransmitMessage8_field_start_pos.4485:
	.byte		34
	.byte		33
	.byte		32
	.byte		16
	.byte		0
	.type		pcx_CANdb_TransmitMessage8_field_width.4486,@object
	.size		pcx_CANdb_TransmitMessage8_field_width.4486,5
	.align		2
pcx_CANdb_TransmitMessage8_field_width.4486:
	.byte		1
	.byte		1
	.byte		1
	.byte		16
	.byte		16
	.type		pcx_CANdb_TransmitMessage8_field_is_signed.4487,@object
	.size		pcx_CANdb_TransmitMessage8_field_is_signed.4487,5
	.align		2
pcx_CANdb_TransmitMessage8_field_is_signed.4487:
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage8_field_valtype.4488,@object
	.size		pcx_CANdb_TransmitMessage8_field_valtype.4488,5
	.align		2
pcx_CANdb_TransmitMessage8_field_valtype.4488:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage8_field_order.4489,@object
	.size		pcx_CANdb_TransmitMessage8_field_order.4489,5
	.align		2
pcx_CANdb_TransmitMessage8_field_order.4489:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage8_field_eng_min.4490,@object
	.size		pcx_CANdb_TransmitMessage8_field_eng_min.4490,20
	.align		2
pcx_CANdb_TransmitMessage8_field_eng_min.4490:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		-3.2768000000000000000e4
	.float		+0.
	.type		pcx_CANdb_TransmitMessage8_field_eng_max.4491,@object
	.size		pcx_CANdb_TransmitMessage8_field_eng_max.4491,20
	.align		2
pcx_CANdb_TransmitMessage8_field_eng_max.4491:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+0.
	.float		+3.2767000000000000000e4
	.type		pcx_CANdb_TransmitMessage8_field_scale.4492,@object
	.size		pcx_CANdb_TransmitMessage8_field_scale.4492,20
	.align		2
pcx_CANdb_TransmitMessage8_field_scale.4492:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage8_field_offset.4493,@object
	.size		pcx_CANdb_TransmitMessage8_field_offset.4493,20
	.align		2
pcx_CANdb_TransmitMessage8_field_offset.4493:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage1_field_start_pos.4717,@object
	.size		pcx_CANdb_TransmitMessage1_field_start_pos.4717,6
	.align		2
pcx_CANdb_TransmitMessage1_field_start_pos.4717:
	.byte		16
	.byte		8
	.byte		0
	.byte		24
	.byte		32
	.byte		40
	.type		pcx_CANdb_TransmitMessage1_field_width.4718,@object
	.size		pcx_CANdb_TransmitMessage1_field_width.4718,6
	.align		2
pcx_CANdb_TransmitMessage1_field_width.4718:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage1_field_is_signed.4719,@object
	.size		pcx_CANdb_TransmitMessage1_field_is_signed.4719,6
	.align		2
pcx_CANdb_TransmitMessage1_field_is_signed.4719:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage1_field_valtype.4720,@object
	.size		pcx_CANdb_TransmitMessage1_field_valtype.4720,6
	.align		2
pcx_CANdb_TransmitMessage1_field_valtype.4720:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage1_field_order.4721,@object
	.size		pcx_CANdb_TransmitMessage1_field_order.4721,6
	.align		2
pcx_CANdb_TransmitMessage1_field_order.4721:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage1_field_eng_min.4722,@object
	.size		pcx_CANdb_TransmitMessage1_field_eng_min.4722,24
	.align		2
pcx_CANdb_TransmitMessage1_field_eng_min.4722:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage1_field_eng_max.4723,@object
	.size		pcx_CANdb_TransmitMessage1_field_eng_max.4723,24
	.align		2
pcx_CANdb_TransmitMessage1_field_eng_max.4723:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage1_field_scale.4724,@object
	.size		pcx_CANdb_TransmitMessage1_field_scale.4724,24
	.align		2
pcx_CANdb_TransmitMessage1_field_scale.4724:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage1_field_offset.4725,@object
	.size		pcx_CANdb_TransmitMessage1_field_offset.4725,24
	.align		2
pcx_CANdb_TransmitMessage1_field_offset.4725:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage6_field_start_pos.4728,@object
	.size		pcx_CANdb_TransmitMessage6_field_start_pos.4728,4
	.align		2
pcx_CANdb_TransmitMessage6_field_start_pos.4728:
	.byte		0
	.byte		8
	.byte		16
	.byte		24
	.type		pcx_CANdb_TransmitMessage6_field_width.4729,@object
	.size		pcx_CANdb_TransmitMessage6_field_width.4729,4
	.align		2
pcx_CANdb_TransmitMessage6_field_width.4729:
	.byte		1
	.byte		1
	.byte		1
	.byte		8
	.type		pcx_CANdb_TransmitMessage6_field_is_signed.4730,@object
	.size		pcx_CANdb_TransmitMessage6_field_is_signed.4730,4
	.align		2
pcx_CANdb_TransmitMessage6_field_is_signed.4730:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage6_field_valtype.4731,@object
	.size		pcx_CANdb_TransmitMessage6_field_valtype.4731,4
	.align		2
pcx_CANdb_TransmitMessage6_field_valtype.4731:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage6_field_order.4732,@object
	.size		pcx_CANdb_TransmitMessage6_field_order.4732,4
	.align		2
pcx_CANdb_TransmitMessage6_field_order.4732:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage6_field_eng_min.4733,@object
	.size		pcx_CANdb_TransmitMessage6_field_eng_min.4733,16
	.align		2
pcx_CANdb_TransmitMessage6_field_eng_min.4733:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage6_field_eng_max.4734,@object
	.size		pcx_CANdb_TransmitMessage6_field_eng_max.4734,16
	.align		2
pcx_CANdb_TransmitMessage6_field_eng_max.4734:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+2.5500000000000000000e2
	.type		pcx_CANdb_TransmitMessage6_field_scale.4735,@object
	.size		pcx_CANdb_TransmitMessage6_field_scale.4735,16
	.align		2
pcx_CANdb_TransmitMessage6_field_scale.4735:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage6_field_offset.4736,@object
	.size		pcx_CANdb_TransmitMessage6_field_offset.4736,16
	.align		2
pcx_CANdb_TransmitMessage6_field_offset.4736:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_field_order.4743,@object
	.size		pcx_CANdb_ReceiveMessage_field_order.4743,3
	.align		2
pcx_CANdb_ReceiveMessage_field_order.4743:
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_ReceiveMessage_field_eng_min.4744,@object
	.size		pcx_CANdb_ReceiveMessage_field_eng_min.4744,12
	.align		2
pcx_CANdb_ReceiveMessage_field_eng_min.4744:
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_field_eng_max.4745,@object
	.size		pcx_CANdb_ReceiveMessage_field_eng_max.4745,12
	.align		2
pcx_CANdb_ReceiveMessage_field_eng_max.4745:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_ReceiveMessage_field_scale.4746,@object
	.size		pcx_CANdb_ReceiveMessage_field_scale.4746,12
	.align		2
pcx_CANdb_ReceiveMessage_field_scale.4746:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_ReceiveMessage_field_offset.4747,@object
	.size		pcx_CANdb_ReceiveMessage_field_offset.4747,12
	.align		2
pcx_CANdb_ReceiveMessage_field_offset.4747:
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_p_field_start_pos.4752,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_start_pos.4752,7
	.align		2
pcx_CANdb_ReceiveMessage_p_field_start_pos.4752:
	.byte		0
	.byte		8
	.byte		24
	.byte		16
	.byte		32
	.byte		40
	.byte		48
	.type		pcx_CANdb_ReceiveMessage_p_field_width.4753,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_width.4753,7
	.align		2
pcx_CANdb_ReceiveMessage_p_field_width.4753:
	.byte		8
	.byte		8
	.byte		8
	.byte		8
	.byte		8
	.byte		8
	.byte		8
	.type		pcx_CANdb_ReceiveMessage_p_field_is_signed.4754,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_is_signed.4754,7
	.align		2
pcx_CANdb_ReceiveMessage_p_field_is_signed.4754:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_p_field_valtype.4755,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_valtype.4755,7
	.align		2
pcx_CANdb_ReceiveMessage_p_field_valtype.4755:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_p_field_order.4756,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_order.4756,7
	.align		2
pcx_CANdb_ReceiveMessage_p_field_order.4756:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_ReceiveMessage_p_field_eng_min.4757,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_eng_min.4757,28
	.align		2
pcx_CANdb_ReceiveMessage_p_field_eng_min.4757:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_p_field_eng_max.4758,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_eng_max.4758,28
	.align		2
pcx_CANdb_ReceiveMessage_p_field_eng_max.4758:
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.type		pcx_CANdb_ReceiveMessage_p_field_scale.4759,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_scale.4759,28
	.align		2
pcx_CANdb_ReceiveMessage_p_field_scale.4759:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_ReceiveMessage_p_field_offset.4760,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_offset.4760,28
	.align		2
pcx_CANdb_ReceiveMessage_p_field_offset.4760:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_f_field_start_pos.4767,@object
	.size		pcx_CANdb_ReceiveMessage_f_field_start_pos.4767,4
	.align		2
pcx_CANdb_ReceiveMessage_f_field_start_pos.4767:
	.byte		56
	.byte		48
	.byte		32
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_f_field_width.4768,@object
	.size		pcx_CANdb_ReceiveMessage_f_field_width.4768,4
	.align		2
pcx_CANdb_ReceiveMessage_f_field_width.4768:
	.byte		8
	.byte		8
	.byte		16
	.byte		32
	.type		pcx_CANdb_ReceiveMessage_f_field_is_signed.4769,@object
	.size		pcx_CANdb_ReceiveMessage_f_field_is_signed.4769,4
	.align		2
pcx_CANdb_ReceiveMessage_f_field_is_signed.4769:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_ReceiveMessage_f_field_valtype.4770,@object
	.size		pcx_CANdb_ReceiveMessage_f_field_valtype.4770,4
	.align		2
pcx_CANdb_ReceiveMessage_f_field_valtype.4770:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_f_field_order.4771,@object
	.size		pcx_CANdb_ReceiveMessage_f_field_order.4771,4
	.align		2
pcx_CANdb_ReceiveMessage_f_field_order.4771:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_ReceiveMessage_f_field_eng_min.4772,@object
	.size		pcx_CANdb_ReceiveMessage_f_field_eng_min.4772,16
	.align		2
pcx_CANdb_ReceiveMessage_f_field_eng_min.4772:
	.float		-1.2800000000000000000e2
	.float		-1.2800000000000000000e2
	.float		-2.0480000000000000000e3
	.float		-2.1474800640000000000e9
	.type		pcx_CANdb_ReceiveMessage_f_field_eng_max.4773,@object
	.size		pcx_CANdb_ReceiveMessage_f_field_eng_max.4773,16
	.align		2
pcx_CANdb_ReceiveMessage_f_field_eng_max.4773:
	.float		+1.2700000000000000000e2
	.float		+1.2700000000000000000e2
	.float		+2.0479399414062500000e3
	.float		+2.1474800640000000000e9
	.type		pcx_CANdb_ReceiveMessage_f_field_scale.4774,@object
	.size		pcx_CANdb_ReceiveMessage_f_field_scale.4774,16
	.align		2
pcx_CANdb_ReceiveMessage_f_field_scale.4774:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+6.2500000000000000000e-2
	.float		+1.0000000000000000000
	.type		pcx_CANdb_ReceiveMessage_f_field_offset.4775,@object
	.size		pcx_CANdb_ReceiveMessage_f_field_offset.4775,16
	.align		2
pcx_CANdb_ReceiveMessage_f_field_offset.4775:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_e_field_start_pos.4787,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_start_pos.4787,6
	.align		2
pcx_CANdb_ReceiveMessage_e_field_start_pos.4787:
	.byte		7
	.byte		15
	.byte		16
	.byte		32
	.byte		55
	.byte		63
	.type		pcx_CANdb_ReceiveMessage_e_field_width.4788,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_width.4788,6
	.align		2
pcx_CANdb_ReceiveMessage_e_field_width.4788:
	.byte		8
	.byte		8
	.byte		16
	.byte		16
	.byte		8
	.byte		8
	.type		pcx_CANdb_ReceiveMessage_e_field_is_signed.4789,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_is_signed.4789,6
	.align		2
pcx_CANdb_ReceiveMessage_e_field_is_signed.4789:
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_e_field_valtype.4790,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_valtype.4790,6
	.align		2
pcx_CANdb_ReceiveMessage_e_field_valtype.4790:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_e_field_order.4791,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_order.4791,6
	.align		2
pcx_CANdb_ReceiveMessage_e_field_order.4791:
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_e_field_eng_min.4792,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_eng_min.4792,24
	.align		2
pcx_CANdb_ReceiveMessage_e_field_eng_min.4792:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		-3.2768000488281250000e3
	.float		+0.
	.float		+1.7200000000000000000e3
	.type		pcx_CANdb_ReceiveMessage_e_field_eng_max.4793,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_eng_max.4793,24
	.align		2
pcx_CANdb_ReceiveMessage_e_field_eng_max.4793:
	.float		+2.5500000000000000000e2
	.float		+1.2750000000000000000e2
	.float		+6.5535000000000000000e3
	.float		+3.2766999511718750000e3
	.float		+2.5500000000000000000e2
	.float		+1.9750000000000000000e3
	.type		pcx_CANdb_ReceiveMessage_e_field_scale.4794,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_scale.4794,24
	.align		2
pcx_CANdb_ReceiveMessage_e_field_scale.4794:
	.float		+1.0000000000000000000
	.float		+5.0000000000000000000e-1
	.float		+1.0000000149011611938e-1
	.float		+1.0000000149011611938e-1
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_ReceiveMessage_e_field_offset.4795,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_offset.4795,24
	.align		2
pcx_CANdb_ReceiveMessage_e_field_offset.4795:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+1.7200000000000000000e3
	.type		FLOAT_TEMP.5036,@object
	.size		FLOAT_TEMP.5036,8
	.align		3
FLOAT_TEMP.5036:
	.double		+2.5600000000000000000e2
	.section	.cal_sec,,r
	.align		3
#	Begin local data area
#	LDA + 0
	.type		ATV_M,@object
	.size		ATV_M,4
	.align		2
	.globl		ATV_M
ATV_M:
	.long		ATV_M_
	.section	.cal_sec,,r
#	LDA + 4
	.type		atvc_throttleNeutralPoint,@object
	.size		atvc_throttleNeutralPoint,2
	.align		1
	.globl		atvc_throttleNeutralPoint
atvc_throttleNeutralPoint:
	.short		100
	.section	.cal_sec,,r
#	LDA + 6
	.type		atvc_throttleMaxLimit,@object
	.size		atvc_throttleMaxLimit,2
	.align		1
	.globl		atvc_throttleMaxLimit
atvc_throttleMaxLimit:
	.short		1000
	.section	.cal_sec,,r
#	LDA + 8
	.type		atvc_an_in_sel_his,@object
	.size		atvc_an_in_sel_his,4
	.align		2
	.globl		atvc_an_in_sel_his
atvc_an_in_sel_his:
	.float		+2.5000000000000000000e-1
	.section	.cal_sec,,r
#	LDA + 12
	.type		atvc_an_in_sel_th,@object
	.size		atvc_an_in_sel_th,4
	.align		2
	.globl		atvc_an_in_sel_th
atvc_an_in_sel_th:
	.float		+2.5000000000000000000
	.section	.cal_sec,,r
#	LDA + 16
	.type		atvc_brakePedalHis,@object
	.size		atvc_brakePedalHis,2
	.align		1
	.globl		atvc_brakePedalHis
atvc_brakePedalHis:
	.short		0
	.section	.cal_sec,,r
#	LDA + 18
	.type		atvc_brakePedalOn,@object
	.size		atvc_brakePedalOn,2
	.align		1
	.globl		atvc_brakePedalOn
atvc_brakePedalOn:
	.short		100
	.section	.cal_sec,,r
#	LDA + 20
	.type		atvc_GenWarmUpCurrent,@object
	.size		atvc_GenWarmUpCurrent,2
	.align		1
	.globl		atvc_GenWarmUpCurrent
atvc_GenWarmUpCurrent:
	.short		10
	.section	.cal_sec,,r
#	LDA + 22
	.type		atvc_maxDischCurr,@object
	.size		atvc_maxDischCurr,2
	.align		1
	.globl		atvc_maxDischCurr
atvc_maxDischCurr:
	.short		100
	.section	.cal_sec,,r
#	LDA + 24
	.type		atvc_maxRegenCurr,@object
	.size		atvc_maxRegenCurr,2
	.align		1
	.globl		atvc_maxRegenCurr
atvc_maxRegenCurr:
	.short		50
	.section	.cal_sec,,r
#	LDA + 26
	.type		atvc_GenTestCurrent,@object
	.size		atvc_GenTestCurrent,2
	.align		1
	.globl		atvc_GenTestCurrent
atvc_GenTestCurrent:
	.short		40
	.section	.cal_sec,,r
#	LDA + 28
	.type		atvc_RpmEndWarmUp,@object
	.size		atvc_RpmEndWarmUp,2
	.align		1
	.globl		atvc_RpmEndWarmUp
atvc_RpmEndWarmUp:
	.short		3900
	.section	.cal_sec,,r
#	LDA + 30
	.type		atvc_footBrakeIce,@object
	.size		atvc_footBrakeIce,2
	.align		1
	.globl		atvc_footBrakeIce
atvc_footBrakeIce:
	.short		300
#	LDA + 32
	.type		FLOAT_TEMP.5035,@object
	.size		FLOAT_TEMP.5035,8
	.align		3
FLOAT_TEMP.5035:
	.double		+6.5536000000000000000e4
#	LDA + 40
	.type		FLOAT_TEMP.5034,@object
	.size		FLOAT_TEMP.5034,8
	.align		3
FLOAT_TEMP.5034:
	.double		+4.2949672960000000000e9
#	LDA + 48
	.type		pcx_CANdb_ReceiveMessage_field_start_pos.4739,@object
	.size		pcx_CANdb_ReceiveMessage_field_start_pos.4739,3
	.align		2
pcx_CANdb_ReceiveMessage_field_start_pos.4739:
	.byte		0
	.byte		8
	.byte		16
	.section	.cal_sec,,r
#	LDA + 51
	.type		atvc_maxTempInv,@object
	.size		atvc_maxTempInv,1
	.align		0
	.globl		atvc_maxTempInv
atvc_maxTempInv:
	.byte		60
#	LDA + 52
	.type		pcx_CANdb_ReceiveMessage_field_width.4740,@object
	.size		pcx_CANdb_ReceiveMessage_field_width.4740,3
	.align		2
pcx_CANdb_ReceiveMessage_field_width.4740:
	.byte		1
	.byte		1
	.byte		1
	.section	.cal_sec,,r
#	LDA + 55
	.type		atvc_maxTempMotor,@object
	.size		atvc_maxTempMotor,1
	.align		0
	.globl		atvc_maxTempMotor
atvc_maxTempMotor:
	.byte		80
#	LDA + 56
	.type		pcx_CANdb_ReceiveMessage_field_is_signed.4741,@object
	.size		pcx_CANdb_ReceiveMessage_field_is_signed.4741,3
	.align		2
pcx_CANdb_ReceiveMessage_field_is_signed.4741:
	.byte		0
	.byte		0
	.byte		0
	.section	.cal_sec,,r
#	LDA + 59
	.type		atvc_FanTest,@object
	.size		atvc_FanTest,1
	.align		0
	.globl		atvc_FanTest
atvc_FanTest:
	.byte		0
#	LDA + 60
	.type		pcx_CANdb_ReceiveMessage_field_valtype.4742,@object
	.size		pcx_CANdb_ReceiveMessage_field_valtype.4742,3
	.align		2
pcx_CANdb_ReceiveMessage_field_valtype.4742:
	.byte		0
	.byte		0
	.byte		0
	.section	.text_vle
#$$ld
.L5:
.L7266:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\rtw_matlogging.h"
.L7263:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\rtw_extmode.h"
.L7218:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\rtw_continuous.h"
.L7205:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\rtw_solver.h"
.L7197:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\simstruc_types.h"
.L7190:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\sl_common_types_def.h"
.L6653:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\simstruc_def.h"
.L6633:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\simstruc_compcond.h"
.L6565:	.d2filenum "ATV_types.h"
.L6423:	.d2filenum "ATV.h"
.L6415:	.d2filenum "ATV_api.h"
.L5065:	.d2filenum "no file"
.L5049:	.d2filenum "ATV.c"
	.d2_line_end


	.section	.debug_abbrev,,n
.L9:
	.section	.debug_abbrev,,n
	.uleb128	1
	.uleb128	17
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	37
	.uleb128	8
	.uleb128	27
	.uleb128	8
	.uleb128	19
	.uleb128	15
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	16
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	2
	.uleb128	46
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	63
	.uleb128	12
	.uleb128	39
	.uleb128	12
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	3
	.uleb128	5
	.byte		0x0
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	2
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	4
	.uleb128	52
	.byte		0x0
	.uleb128	58
	.uleb128	6
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	2
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	5
	.uleb128	52
	.byte		0x0
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	2
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	6
	.uleb128	46
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	73
	.uleb128	16
	.uleb128	63
	.uleb128	12
	.uleb128	39
	.uleb128	12
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
	.uleb128	5
	.byte		0x0
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	2
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
	.uleb128	46
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	39
	.uleb128	12
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
	.uleb128	46
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	73
	.uleb128	16
	.uleb128	39
	.uleb128	12
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	52
	.byte		0x0
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	2
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	11
	.byte		0x1
	.uleb128	1
	.uleb128	16
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	52
	.byte		0x0
	.uleb128	63
	.uleb128	12
	.uleb128	60
	.uleb128	12
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	52
	.byte		0x0
	.uleb128	63
	.uleb128	12
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	2
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	19
	.byte		0x1
	.uleb128	58
	.uleb128	6
	.uleb128	59
	.uleb128	15
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	13
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	56
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	19
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	23
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	13
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	11
	.uleb128	15
	.uleb128	13
	.uleb128	11
	.uleb128	12
	.uleb128	11
	.uleb128	56
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	4
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	62
	.uleb128	11
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	24
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	25
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	26
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	27
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	28
	.uleb128	53
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	29
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	30
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	31
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.sleb128	0


	.section	.debug_info,,n
.L2:
	.4byte		.L3-.L1
.L1:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.section	.debug_info,,n
	.sleb128	1
	.4byte		.L7-.L2
	.byte		"ATV.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.7:PPCE200Z4204N3V"
	.byte		0
	.byte		"C:\\Users\\giovanni\\OneDrive\\Desktop\\workspace\\Firmware\\ATV_r2018.2_64_oe_3.2.0_r2022_1_rtmodel"
	.byte		0
	.uleb128	1
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info,,n
.L5050:
	.sleb128	2
	.4byte		.L5046-.L2
	.byte		"sMultiWordMul"
	.byte		0
	.4byte		.L5049
	.uleb128	300
	.byte		0x1
	.byte		0x1
	.4byte		.L5047
	.4byte		.L5048
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L5049
	.uleb128	300
	.byte		"u1"
	.byte		0
	.4byte		.L5051
	.4byte		.L5055
	.sleb128	3
	.4byte		.L5049
	.uleb128	300
	.byte		"n1"
	.byte		0
	.4byte		.L5056
	.4byte		.L5058
	.sleb128	3
	.4byte		.L5049
	.uleb128	300
	.byte		"u2"
	.byte		0
	.4byte		.L5051
	.4byte		.L5059
	.sleb128	3
	.4byte		.L5049
	.uleb128	301
	.byte		"n2"
	.byte		0
	.4byte		.L5056
	.4byte		.L5060
	.sleb128	3
	.4byte		.L5049
	.uleb128	301
	.byte		"y"
	.byte		0
	.4byte		.L5061
	.4byte		.L5062
	.sleb128	3
	.4byte		.L5049
	.uleb128	301
	.byte		"n"
	.byte		0
	.4byte		.L5056
	.4byte		.L5063
	.section	.debug_info,,n
.L5064:
	.sleb128	4
	.4byte		.L5065
	.byte		"k"
	.byte		0
	.4byte		.L5056
	.4byte		.L5066
.L5067:
	.sleb128	4
	.4byte		.L5065
	.byte		"j"
	.byte		0
	.4byte		.L5056
	.4byte		.L5068
.L5069:
	.sleb128	4
	.4byte		.L5065
	.byte		"k"
	.byte		0
	.4byte		.L5056
	.4byte		.L5070
.L5071:
	.sleb128	4
	.4byte		.L5065
	.byte		"cb"
	.byte		0
	.4byte		.L5053
	.4byte		.L5072
.L5073:
	.sleb128	4
	.4byte		.L5065
	.byte		"cb"
	.byte		0
	.4byte		.L5053
	.4byte		.L5074
.L5075:
	.sleb128	4
	.4byte		.L5065
	.byte		"yk"
	.byte		0
	.4byte		.L5053
	.4byte		.L5076
.L5077:
	.sleb128	4
	.4byte		.L5065
	.byte		"u1i"
	.byte		0
	.4byte		.L5053
	.4byte		.L5078
.L5079:
	.sleb128	4
	.4byte		.L5065
	.byte		"u1i"
	.byte		0
	.4byte		.L5053
	.4byte		.L5080
.L5081:
	.sleb128	4
	.4byte		.L5065
	.byte		"u1i"
	.byte		0
	.4byte		.L5053
	.4byte		.L5082
.L5083:
	.sleb128	4
	.4byte		.L5065
	.byte		"k"
	.byte		0
	.4byte		.L5056
	.4byte		.L5084
	.section	.debug_info,,n
.L5085:
	.sleb128	5
	.4byte		.L5049
	.uleb128	303
	.byte		"i"
	.byte		0
	.4byte		.L5056
	.4byte		.L5086
.L5087:
	.sleb128	5
	.4byte		.L5049
	.uleb128	306
	.byte		"nj"
	.byte		0
	.4byte		.L5056
	.4byte		.L5088
.L5089:
	.sleb128	5
	.4byte		.L5049
	.uleb128	307
	.byte		"u1i"
	.byte		0
	.4byte		.L5053
	.4byte		.L5090
.L5091:
	.sleb128	5
	.4byte		.L5049
	.uleb128	308
	.byte		"yk"
	.byte		0
	.4byte		.L5053
	.4byte		.L5092
.L5093:
	.sleb128	5
	.4byte		.L5049
	.uleb128	309
	.byte		"a1"
	.byte		0
	.4byte		.L5053
	.4byte		.L5094
.L5095:
	.sleb128	5
	.4byte		.L5049
	.uleb128	310
	.byte		"a0"
	.byte		0
	.4byte		.L5053
	.4byte		.L5096
.L5097:
	.sleb128	5
	.4byte		.L5049
	.uleb128	311
	.byte		"b1"
	.byte		0
	.4byte		.L5053
	.4byte		.L5098
.L5099:
	.sleb128	5
	.4byte		.L5049
	.uleb128	312
	.byte		"w10"
	.byte		0
	.4byte		.L5053
	.4byte		.L5100
.L5101:
	.sleb128	5
	.4byte		.L5049
	.uleb128	313
	.byte		"w01"
	.byte		0
	.4byte		.L5053
	.4byte		.L5102
.L5103:
	.sleb128	5
	.4byte		.L5049
	.uleb128	314
	.byte		"cb"
	.byte		0
	.4byte		.L5053
	.4byte		.L5104
.L5105:
	.sleb128	5
	.4byte		.L5049
	.uleb128	315
	.byte		"isNegative1"
	.byte		0
	.4byte		.L5106
	.4byte		.L5108
.L5109:
	.sleb128	5
	.4byte		.L5049
	.uleb128	316
	.byte		"isNegative2"
	.byte		0
	.4byte		.L5106
	.4byte		.L5110
.L5111:
	.sleb128	5
	.4byte		.L5049
	.uleb128	317
	.byte		"cb1"
	.byte		0
	.4byte		.L5053
	.4byte		.L5112
.L5113:
	.sleb128	5
	.4byte		.L5049
	.uleb128	318
	.byte		"cb2"
	.byte		0
	.4byte		.L5053
	.4byte		.L5114
	.section	.debug_info,,n
	.sleb128	0
.L5046:
	.section	.debug_info,,n
.L5119:
	.sleb128	6
	.4byte		.L5116-.L2
	.byte		"MultiWord2sLong"
	.byte		0
	.4byte		.L5049
	.uleb128	388
	.4byte		.L5057
	.byte		0x1
	.byte		0x1
	.4byte		.L5117
	.4byte		.L5118
	.sleb128	3
	.4byte		.L5049
	.uleb128	388
	.byte		"u"
	.byte		0
	.4byte		.L5051
	.4byte		.L5120
	.section	.debug_info,,n
	.sleb128	0
.L5116:
	.section	.debug_info,,n
.L5125:
	.sleb128	2
	.4byte		.L5122-.L2
	.byte		"MultiWordNeg"
	.byte		0
	.4byte		.L5049
	.uleb128	430
	.byte		0x1
	.byte		0x1
	.4byte		.L5123
	.4byte		.L5124
	.sleb128	3
	.4byte		.L5049
	.uleb128	430
	.byte		"u1"
	.byte		0
	.4byte		.L5051
	.4byte		.L5126
	.sleb128	3
	.4byte		.L5049
	.uleb128	430
	.byte		"y"
	.byte		0
	.4byte		.L5061
	.4byte		.L5127
	.sleb128	3
	.4byte		.L5049
	.uleb128	430
	.byte		"n"
	.byte		0
	.4byte		.L5056
	.4byte		.L5128
.L5129:
	.sleb128	4
	.4byte		.L5065
	.byte		"i"
	.byte		0
	.4byte		.L5056
	.4byte		.L5130
.L5131:
	.sleb128	5
	.4byte		.L5049
	.uleb128	432
	.byte		"yi"
	.byte		0
	.4byte		.L5053
	.4byte		.L5132
.L5133:
	.sleb128	5
	.4byte		.L5049
	.uleb128	433
	.byte		"carry"
	.byte		0
	.4byte		.L5053
	.4byte		.L5134
	.section	.debug_info,,n
	.sleb128	0
.L5122:
	.section	.debug_info,,n
.L5139:
	.sleb128	2
	.4byte		.L5136-.L2
	.byte		"sMultiWord2MultiWord"
	.byte		0
	.4byte		.L5049
	.uleb128	442
	.byte		0x1
	.byte		0x1
	.4byte		.L5137
	.4byte		.L5138
	.sleb128	3
	.4byte		.L5049
	.uleb128	442
	.byte		"u1"
	.byte		0
	.4byte		.L5051
	.4byte		.L5140
	.sleb128	3
	.4byte		.L5049
	.uleb128	442
	.byte		"n1"
	.byte		0
	.4byte		.L5056
	.4byte		.L5141
	.sleb128	3
	.4byte		.L5049
	.uleb128	442
	.byte		"y"
	.byte		0
	.4byte		.L5061
	.4byte		.L5142
	.sleb128	3
	.4byte		.L5049
	.uleb128	443
	.byte		"n"
	.byte		0
	.4byte		.L5056
	.4byte		.L5143
.L5144:
	.sleb128	4
	.4byte		.L5065
	.byte		"i"
	.byte		0
	.4byte		.L5056
	.4byte		.L5145
.L5146:
	.sleb128	4
	.4byte		.L5065
	.byte		"i"
	.byte		0
	.4byte		.L5056
	.4byte		.L5147
.L5148:
	.sleb128	5
	.4byte		.L5049
	.uleb128	445
	.byte		"u1i"
	.byte		0
	.4byte		.L5053
	.4byte		.L5149
.L5150:
	.sleb128	5
	.4byte		.L5049
	.uleb128	446
	.byte		"nm"
	.byte		0
	.4byte		.L5056
	.4byte		.L5151
	.section	.debug_info,,n
	.sleb128	0
.L5136:
	.section	.debug_info,,n
.L5156:
	.sleb128	2
	.4byte		.L5153-.L2
	.byte		"MultiWordSetSignedMin"
	.byte		0
	.4byte		.L5049
	.uleb128	461
	.byte		0x1
	.byte		0x1
	.4byte		.L5154
	.4byte		.L5155
	.sleb128	3
	.4byte		.L5049
	.uleb128	461
	.byte		"y"
	.byte		0
	.4byte		.L5061
	.4byte		.L5157
	.sleb128	3
	.4byte		.L5049
	.uleb128	461
	.byte		"n"
	.byte		0
	.4byte		.L5056
	.4byte		.L5158
.L5159:
	.sleb128	4
	.4byte		.L5065
	.byte		"i"
	.byte		0
	.4byte		.L5056
	.4byte		.L5160
.L5161:
	.sleb128	5
	.4byte		.L5049
	.uleb128	464
	.byte		"n1"
	.byte		0
	.4byte		.L5056
	.4byte		.L5162
	.section	.debug_info,,n
	.sleb128	0
.L5153:
	.section	.debug_info,,n
.L5167:
	.sleb128	2
	.4byte		.L5164-.L2
	.byte		"MultiWordSetSignedMax"
	.byte		0
	.4byte		.L5049
	.uleb128	473
	.byte		0x1
	.byte		0x1
	.4byte		.L5165
	.4byte		.L5166
	.sleb128	3
	.4byte		.L5049
	.uleb128	473
	.byte		"y"
	.byte		0
	.4byte		.L5061
	.4byte		.L5168
	.sleb128	3
	.4byte		.L5049
	.uleb128	473
	.byte		"n"
	.byte		0
	.4byte		.L5056
	.4byte		.L5169
.L5170:
	.sleb128	4
	.4byte		.L5065
	.byte		"i"
	.byte		0
	.4byte		.L5056
	.4byte		.L5171
.L5172:
	.sleb128	5
	.4byte		.L5049
	.uleb128	476
	.byte		"n1"
	.byte		0
	.4byte		.L5056
	.4byte		.L5173
	.section	.debug_info,,n
	.sleb128	0
.L5164:
	.section	.debug_info,,n
.L5178:
	.sleb128	2
	.4byte		.L5175-.L2
	.byte		"uMultiWordInc"
	.byte		0
	.4byte		.L5049
	.uleb128	485
	.byte		0x1
	.byte		0x1
	.4byte		.L5176
	.4byte		.L5177
	.sleb128	3
	.4byte		.L5049
	.uleb128	485
	.byte		"y"
	.byte		0
	.4byte		.L5061
	.4byte		.L5179
	.sleb128	3
	.4byte		.L5049
	.uleb128	485
	.byte		"n"
	.byte		0
	.4byte		.L5056
	.4byte		.L5180
.L5181:
	.sleb128	4
	.4byte		.L5065
	.byte		"i"
	.byte		0
	.4byte		.L5056
	.4byte		.L5182
.L5183:
	.sleb128	5
	.4byte		.L5049
	.uleb128	487
	.byte		"yi"
	.byte		0
	.4byte		.L5053
	.4byte		.L5184
.L5185:
	.sleb128	5
	.4byte		.L5049
	.uleb128	488
	.byte		"carry"
	.byte		0
	.4byte		.L5053
	.4byte		.L5186
	.section	.debug_info,,n
	.sleb128	0
.L5175:
	.section	.debug_info,,n
.L5191:
	.sleb128	6
	.4byte		.L5188-.L2
	.byte		"MultiWord2Bool"
	.byte		0
	.4byte		.L5049
	.uleb128	497
	.4byte		.L5106
	.byte		0x1
	.byte		0x1
	.4byte		.L5189
	.4byte		.L5190
	.sleb128	3
	.4byte		.L5049
	.uleb128	497
	.byte		"u"
	.byte		0
	.4byte		.L5051
	.4byte		.L5192
	.sleb128	3
	.4byte		.L5049
	.uleb128	497
	.byte		"n"
	.byte		0
	.4byte		.L5056
	.4byte		.L5193
.L5194:
	.sleb128	5
	.4byte		.L5049
	.uleb128	499
	.byte		"y"
	.byte		0
	.4byte		.L5106
	.4byte		.L5195
.L5196:
	.sleb128	5
	.4byte		.L5049
	.uleb128	500
	.byte		"i"
	.byte		0
	.4byte		.L5056
	.4byte		.L5197
	.section	.debug_info,,n
	.sleb128	0
.L5188:
	.section	.debug_info,,n
.L5202:
	.sleb128	6
	.4byte		.L5199-.L2
	.byte		"uMultiWordDiv"
	.byte		0
	.4byte		.L5049
	.uleb128	514
	.4byte		.L5057
	.byte		0x1
	.byte		0x1
	.4byte		.L5200
	.4byte		.L5201
	.sleb128	3
	.4byte		.L5049
	.uleb128	514
	.byte		"a"
	.byte		0
	.4byte		.L5061
	.4byte		.L5203
	.sleb128	3
	.4byte		.L5049
	.uleb128	514
	.byte		"na"
	.byte		0
	.4byte		.L5056
	.4byte		.L5204
	.sleb128	3
	.4byte		.L5049
	.uleb128	514
	.byte		"b"
	.byte		0
	.4byte		.L5061
	.4byte		.L5205
	.sleb128	3
	.4byte		.L5049
	.uleb128	514
	.byte		"nb"
	.byte		0
	.4byte		.L5056
	.4byte		.L5206
	.sleb128	3
	.4byte		.L5049
	.uleb128	515
	.byte		"q"
	.byte		0
	.4byte		.L5061
	.4byte		.L5207
	.sleb128	3
	.4byte		.L5049
	.uleb128	515
	.byte		"nq"
	.byte		0
	.4byte		.L5056
	.4byte		.L5208
	.sleb128	3
	.4byte		.L5049
	.uleb128	515
	.byte		"r"
	.byte		0
	.4byte		.L5061
	.4byte		.L5209
	.sleb128	3
	.4byte		.L5049
	.uleb128	515
	.byte		"nr"
	.byte		0
	.4byte		.L5056
	.4byte		.L5210
.L5211:
	.sleb128	4
	.4byte		.L5065
	.byte		"tpi"
	.byte		0
	.4byte		.L5056
	.4byte		.L5212
.L5213:
	.sleb128	4
	.4byte		.L5065
	.byte		"kr"
	.byte		0
	.4byte		.L5056
	.4byte		.L5214
.L5215:
	.sleb128	4
	.4byte		.L5065
	.byte		"tpi"
	.byte		0
	.4byte		.L5056
	.4byte		.L5216
.L5217:
	.sleb128	4
	.4byte		.L5065
	.byte		"ka"
	.byte		0
	.4byte		.L5056
	.4byte		.L5218
.L5219:
	.sleb128	4
	.4byte		.L5065
	.byte		"tpi"
	.byte		0
	.4byte		.L5056
	.4byte		.L5220
.L5221:
	.sleb128	4
	.4byte		.L5065
	.byte		"ka"
	.byte		0
	.4byte		.L5056
	.4byte		.L5222
.L5223:
	.sleb128	4
	.4byte		.L5065
	.byte		"tpi"
	.byte		0
	.4byte		.L5056
	.4byte		.L5224
.L5225:
	.sleb128	4
	.4byte		.L5065
	.byte		"kr"
	.byte		0
	.4byte		.L5056
	.4byte		.L5226
.L5227:
	.sleb128	4
	.4byte		.L5065
	.byte		"tpi"
	.byte		0
	.4byte		.L5056
	.4byte		.L5228
.L5229:
	.sleb128	4
	.4byte		.L5065
	.byte		"kr"
	.byte		0
	.4byte		.L5056
	.4byte		.L5230
.L5231:
	.sleb128	4
	.4byte		.L5065
	.byte		"kr"
	.byte		0
	.4byte		.L5056
	.4byte		.L5232
.L5233:
	.sleb128	4
	.4byte		.L5065
	.byte		"kr"
	.byte		0
	.4byte		.L5056
	.4byte		.L5234
.L5235:
	.sleb128	4
	.4byte		.L5065
	.byte		"kr"
	.byte		0
	.4byte		.L5056
	.4byte		.L5236
.L5237:
	.sleb128	4
	.4byte		.L5065
	.byte		"ka"
	.byte		0
	.4byte		.L5056
	.4byte		.L5238
.L5239:
	.sleb128	4
	.4byte		.L5065
	.byte		"ka"
	.byte		0
	.4byte		.L5056
	.4byte		.L5240
.L5241:
	.sleb128	4
	.4byte		.L5065
	.byte		"ka"
	.byte		0
	.4byte		.L5056
	.4byte		.L5242
.L5243:
	.sleb128	4
	.4byte		.L5065
	.byte		"ka"
	.byte		0
	.4byte		.L5056
	.4byte		.L5244
.L5245:
	.sleb128	4
	.4byte		.L5065
	.byte		"ka"
	.byte		0
	.4byte		.L5056
	.4byte		.L5246
.L5247:
	.sleb128	4
	.4byte		.L5065
	.byte		"bk"
	.byte		0
	.4byte		.L5053
	.4byte		.L5248
.L5249:
	.sleb128	4
	.4byte		.L5065
	.byte		"bk"
	.byte		0
	.4byte		.L5053
	.4byte		.L5250
.L5251:
	.sleb128	4
	.4byte		.L5065
	.byte		"bk"
	.byte		0
	.4byte		.L5053
	.4byte		.L5252
.L5253:
	.sleb128	4
	.4byte		.L5065
	.byte		"bk"
	.byte		0
	.4byte		.L5053
	.4byte		.L5254
.L5255:
	.sleb128	4
	.4byte		.L5065
	.byte		"bk"
	.byte		0
	.4byte		.L5053
	.4byte		.L5256
.L5257:
	.sleb128	4
	.4byte		.L5065
	.byte		"ak"
	.byte		0
	.4byte		.L5053
	.4byte		.L5258
.L5259:
	.sleb128	4
	.4byte		.L5065
	.byte		"ak"
	.byte		0
	.4byte		.L5053
	.4byte		.L5260
.L5261:
	.sleb128	4
	.4byte		.L5065
	.byte		"ak"
	.byte		0
	.4byte		.L5053
	.4byte		.L5262
.L5263:
	.sleb128	4
	.4byte		.L5065
	.byte		"ak"
	.byte		0
	.4byte		.L5053
	.4byte		.L5264
.L5265:
	.sleb128	4
	.4byte		.L5065
	.byte		"ak"
	.byte		0
	.4byte		.L5053
	.4byte		.L5266
.L5267:
	.sleb128	4
	.4byte		.L5065
	.byte		"t"
	.byte		0
	.4byte		.L5053
	.4byte		.L5268
.L5269:
	.sleb128	4
	.4byte		.L5065
	.byte		"t"
	.byte		0
	.4byte		.L5053
	.4byte		.L5270
.L5271:
	.sleb128	4
	.4byte		.L5065
	.byte		"t"
	.byte		0
	.4byte		.L5053
	.4byte		.L5272
.L5273:
	.sleb128	4
	.4byte		.L5065
	.byte		"t"
	.byte		0
	.4byte		.L5053
	.4byte		.L5274
.L5275:
	.sleb128	4
	.4byte		.L5065
	.byte		"t"
	.byte		0
	.4byte		.L5053
	.4byte		.L5276
.L5277:
	.sleb128	4
	.4byte		.L5065
	.byte		"t"
	.byte		0
	.4byte		.L5053
	.4byte		.L5278
.L5279:
	.sleb128	4
	.4byte		.L5065
	.byte		"t"
	.byte		0
	.4byte		.L5053
	.4byte		.L5280
.L5281:
	.sleb128	4
	.4byte		.L5065
	.byte		"t"
	.byte		0
	.4byte		.L5053
	.4byte		.L5282
.L5283:
	.sleb128	4
	.4byte		.L5065
	.byte		"tpi"
	.byte		0
	.4byte		.L5056
	.4byte		.L5284
.L5285:
	.sleb128	4
	.4byte		.L5065
	.byte		"tpi"
	.byte		0
	.4byte		.L5056
	.4byte		.L5286
.L5287:
	.sleb128	4
	.4byte		.L5065
	.byte		"tpi"
	.byte		0
	.4byte		.L5056
	.4byte		.L5288
.L5289:
	.sleb128	4
	.4byte		.L5065
	.byte		"tpi"
	.byte		0
	.4byte		.L5056
	.4byte		.L5290
.L5291:
	.sleb128	4
	.4byte		.L5065
	.byte		"tpi"
	.byte		0
	.4byte		.L5056
	.4byte		.L5292
.L5293:
	.sleb128	4
	.4byte		.L5065
	.byte		"tpi"
	.byte		0
	.4byte		.L5056
	.4byte		.L5294
.L5295:
	.sleb128	4
	.4byte		.L5065
	.byte		"tpi"
	.byte		0
	.4byte		.L5056
	.4byte		.L5296
.L5297:
	.sleb128	4
	.4byte		.L5065
	.byte		"nbq"
	.byte		0
	.4byte		.L5053
	.4byte		.L5298
.L5299:
	.sleb128	4
	.4byte		.L5065
	.byte		"nbq"
	.byte		0
	.4byte		.L5053
	.4byte		.L5300
.L5301:
	.sleb128	4
	.4byte		.L5065
	.byte		"kbs"
	.byte		0
	.4byte		.L5053
	.4byte		.L5302
.L5303:
	.sleb128	4
	.4byte		.L5065
	.byte		"kbs"
	.byte		0
	.4byte		.L5053
	.4byte		.L5304
.L5305:
	.sleb128	4
	.4byte		.L5065
	.byte		"kbs"
	.byte		0
	.4byte		.L5053
	.4byte		.L5306
.L5307:
	.sleb128	4
	.4byte		.L5065
	.byte		"kbs"
	.byte		0
	.4byte		.L5053
	.4byte		.L5308
.L5309:
	.sleb128	5
	.4byte		.L5049
	.uleb128	517
	.byte		"y"
	.byte		0
	.4byte		.L5056
	.4byte		.L5310
.L5311:
	.sleb128	5
	.4byte		.L5049
	.uleb128	518
	.byte		"nza"
	.byte		0
	.4byte		.L5056
	.4byte		.L5312
.L5313:
	.sleb128	5
	.4byte		.L5049
	.uleb128	519
	.byte		"nzb"
	.byte		0
	.4byte		.L5056
	.4byte		.L5314
.L5315:
	.sleb128	5
	.4byte		.L5049
	.uleb128	520
	.byte		"na1"
	.byte		0
	.4byte		.L5056
	.4byte		.L5316
.L5317:
	.sleb128	5
	.4byte		.L5049
	.uleb128	521
	.byte		"nb1"
	.byte		0
	.4byte		.L5056
	.4byte		.L5318
.L5319:
	.sleb128	5
	.4byte		.L5049
	.uleb128	522
	.byte		"kba"
	.byte		0
	.4byte		.L5053
	.4byte		.L5320
.L5321:
	.sleb128	5
	.4byte		.L5049
	.uleb128	523
	.byte		"kbb"
	.byte		0
	.4byte		.L5053
	.4byte		.L5322
.L5323:
	.sleb128	5
	.4byte		.L5049
	.uleb128	524
	.byte		"nba"
	.byte		0
	.4byte		.L5053
	.4byte		.L5324
.L5325:
	.sleb128	5
	.4byte		.L5049
	.uleb128	525
	.byte		"nbb"
	.byte		0
	.4byte		.L5053
	.4byte		.L5326
.L5327:
	.sleb128	5
	.4byte		.L5049
	.uleb128	526
	.byte		"kbs"
	.byte		0
	.4byte		.L5053
	.4byte		.L5328
.L5329:
	.sleb128	5
	.4byte		.L5049
	.uleb128	527
	.byte		"nbq"
	.byte		0
	.4byte		.L5053
	.4byte		.L5330
.L5331:
	.sleb128	5
	.4byte		.L5049
	.uleb128	528
	.byte		"tnb"
	.byte		0
	.4byte		.L5053
	.4byte		.L5332
.L5333:
	.sleb128	5
	.4byte		.L5049
	.uleb128	529
	.byte		"tpi"
	.byte		0
	.4byte		.L5056
	.4byte		.L5334
.L5335:
	.sleb128	5
	.4byte		.L5049
	.uleb128	530
	.byte		"t"
	.byte		0
	.4byte		.L5053
	.4byte		.L5336
.L5337:
	.sleb128	5
	.4byte		.L5049
	.uleb128	531
	.byte		"mask"
	.byte		0
	.4byte		.L5053
	.4byte		.L5338
.L5339:
	.sleb128	5
	.4byte		.L5049
	.uleb128	532
	.byte		"ak"
	.byte		0
	.4byte		.L5053
	.4byte		.L5340
.L5341:
	.sleb128	5
	.4byte		.L5049
	.uleb128	533
	.byte		"bk"
	.byte		0
	.4byte		.L5053
	.4byte		.L5342
.L5343:
	.sleb128	5
	.4byte		.L5049
	.uleb128	534
	.byte		"ka"
	.byte		0
	.4byte		.L5056
	.4byte		.L5344
	.section	.debug_info,,n
	.sleb128	0
.L5199:
	.section	.debug_info,,n
.L5349:
	.sleb128	2
	.4byte		.L5346-.L2
	.byte		"sMultiWordDivFloor"
	.byte		0
	.4byte		.L5049
	.uleb128	393
	.byte		0x1
	.byte		0x1
	.4byte		.L5347
	.4byte		.L5348
	.sleb128	3
	.4byte		.L5049
	.uleb128	393
	.byte		"u1"
	.byte		0
	.4byte		.L5051
	.4byte		.L5350
	.sleb128	3
	.4byte		.L5049
	.uleb128	393
	.byte		"n1"
	.byte		0
	.4byte		.L5056
	.4byte		.L5351
	.sleb128	3
	.4byte		.L5049
	.uleb128	393
	.byte		"u2"
	.byte		0
	.4byte		.L5051
	.4byte		.L5352
	.sleb128	3
	.4byte		.L5049
	.uleb128	394
	.byte		"n2"
	.byte		0
	.4byte		.L5056
	.4byte		.L5353
	.sleb128	3
	.4byte		.L5049
	.uleb128	394
	.byte		"y1"
	.byte		0
	.4byte		.L5061
	.4byte		.L5354
	.sleb128	3
	.4byte		.L5049
	.uleb128	394
	.byte		"m1"
	.byte		0
	.4byte		.L5056
	.4byte		.L5355
	.sleb128	3
	.4byte		.L5049
	.uleb128	394
	.byte		"y2"
	.byte		0
	.4byte		.L5061
	.4byte		.L5356
	.sleb128	3
	.4byte		.L5049
	.uleb128	394
	.byte		"m2"
	.byte		0
	.4byte		.L5056
	.4byte		.L5357
	.sleb128	3
	.4byte		.L5049
	.uleb128	394
	.byte		"t1"
	.byte		0
	.4byte		.L5061
	.4byte		.L5358
	.sleb128	3
	.4byte		.L5049
	.uleb128	395
	.byte		"l1"
	.byte		0
	.4byte		.L5056
	.4byte		.L5359
	.sleb128	3
	.4byte		.L5049
	.uleb128	395
	.byte		"t2"
	.byte		0
	.4byte		.L5061
	.4byte		.L5360
	.sleb128	3
	.4byte		.L5049
	.uleb128	395
	.byte		"l2"
	.byte		0
	.4byte		.L5056
	.4byte		.L5361
.L5362:
	.sleb128	5
	.4byte		.L5049
	.uleb128	397
	.byte		"numNeg"
	.byte		0
	.4byte		.L5106
	.4byte		.L5363
.L5364:
	.sleb128	5
	.4byte		.L5049
	.uleb128	398
	.byte		"denNeg"
	.byte		0
	.4byte		.L5106
	.4byte		.L5365
	.section	.debug_info,,n
	.sleb128	0
.L5346:
	.section	.debug_info,,n
.L5370:
	.sleb128	2
	.4byte		.L5367-.L2
	.byte		"sLong2MultiWord"
	.byte		0
	.4byte		.L5049
	.uleb128	789
	.byte		0x1
	.byte		0x1
	.4byte		.L5368
	.4byte		.L5369
	.sleb128	3
	.4byte		.L5049
	.uleb128	789
	.byte		"u"
	.byte		0
	.4byte		.L5056
	.4byte		.L5371
	.sleb128	3
	.4byte		.L5049
	.uleb128	789
	.byte		"y"
	.byte		0
	.4byte		.L5061
	.4byte		.L5372
	.sleb128	3
	.4byte		.L5049
	.uleb128	789
	.byte		"n"
	.byte		0
	.4byte		.L5056
	.4byte		.L5373
.L5374:
	.sleb128	4
	.4byte		.L5065
	.byte		"i"
	.byte		0
	.4byte		.L5056
	.4byte		.L5375
.L5376:
	.sleb128	5
	.4byte		.L5049
	.uleb128	791
	.byte		"yi"
	.byte		0
	.4byte		.L5053
	.4byte		.L5377
	.section	.debug_info,,n
	.sleb128	0
.L5367:
	.section	.debug_info,,n
.L5382:
	.sleb128	6
	.4byte		.L5379-.L2
	.byte		"sMultiWordCmp"
	.byte		0
	.4byte		.L5049
	.uleb128	805
	.4byte		.L5057
	.byte		0x1
	.byte		0x1
	.4byte		.L5380
	.4byte		.L5381
	.sleb128	3
	.4byte		.L5049
	.uleb128	805
	.byte		"u1"
	.byte		0
	.4byte		.L5051
	.4byte		.L5383
	.sleb128	3
	.4byte		.L5049
	.uleb128	805
	.byte		"u2"
	.byte		0
	.4byte		.L5051
	.4byte		.L5384
	.sleb128	3
	.4byte		.L5049
	.uleb128	805
	.byte		"n"
	.byte		0
	.4byte		.L5056
	.4byte		.L5385
.L5386:
	.sleb128	4
	.4byte		.L5065
	.byte		"i"
	.byte		0
	.4byte		.L5056
	.4byte		.L5387
.L5388:
	.sleb128	4
	.4byte		.L5065
	.byte		"su2"
	.byte		0
	.4byte		.L5053
	.4byte		.L5389
.L5390:
	.sleb128	4
	.4byte		.L5065
	.byte		"su1"
	.byte		0
	.4byte		.L5053
	.4byte		.L5391
.L5392:
	.sleb128	5
	.4byte		.L5049
	.uleb128	807
	.byte		"y"
	.byte		0
	.4byte		.L5056
	.4byte		.L5393
.L5394:
	.sleb128	5
	.4byte		.L5049
	.uleb128	808
	.byte		"su1"
	.byte		0
	.4byte		.L5053
	.4byte		.L5395
.L5396:
	.sleb128	5
	.4byte		.L5049
	.uleb128	809
	.byte		"su2"
	.byte		0
	.4byte		.L5053
	.4byte		.L5397
	.section	.debug_info,,n
	.sleb128	0
.L5379:
	.section	.debug_info,,n
.L5402:
	.sleb128	6
	.4byte		.L5399-.L2
	.byte		"sMultiWordGe"
	.byte		0
	.4byte		.L5049
	.uleb128	800
	.4byte		.L5106
	.byte		0x1
	.byte		0x1
	.4byte		.L5400
	.4byte		.L5401
	.sleb128	3
	.4byte		.L5049
	.uleb128	800
	.byte		"u1"
	.byte		0
	.4byte		.L5051
	.4byte		.L5403
	.sleb128	3
	.4byte		.L5049
	.uleb128	800
	.byte		"u2"
	.byte		0
	.4byte		.L5051
	.4byte		.L5404
	.sleb128	3
	.4byte		.L5049
	.uleb128	800
	.byte		"n"
	.byte		0
	.4byte		.L5056
	.4byte		.L5405
	.section	.debug_info,,n
	.sleb128	0
.L5399:
	.section	.debug_info,,n
.L5413:
	.sleb128	6
	.4byte		.L5407-.L2
	.byte		"rt_SimUpdateDiscreteEvents"
	.byte		0
	.4byte		.L5049
	.uleb128	831
	.4byte		.L5410
	.byte		0x1
	.byte		0x1
	.4byte		.L5408
	.4byte		.L5409
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L5049
	.uleb128	832
	.byte		"rtmNumSampTimes"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	7
	.4byte		.L5049
	.uleb128	832
	.byte		"rtmTimingData"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	3
	.4byte		.L5049
	.uleb128	832
	.byte		"rtmSampleHitPtr"
	.byte		0
	.4byte		.L5418
	.4byte		.L5419
	.sleb128	7
	.4byte		.L5049
	.uleb128	833
	.byte		"rtmPerTaskSampleHits"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x90
	.uleb128	6
	.section	.debug_info,,n
	.sleb128	0
.L5407:
	.section	.debug_info,,n
.L5424:
	.sleb128	8
	.4byte		.L5421-.L2
	.byte		"rate_monotonic_scheduler"
	.byte		0
	.4byte		.L5049
	.uleb128	851
	.byte		0x1
	.4byte		.L5422
	.4byte		.L5423
	.section	.debug_info,,n
	.sleb128	0
.L5421:
	.section	.debug_info,,n
.L5429:
	.sleb128	2
	.4byte		.L5426-.L2
	.byte		"ATV_Chart_Init"
	.byte		0
	.4byte		.L5049
	.uleb128	887
	.byte		0x1
	.byte		0x1
	.4byte		.L5427
	.4byte		.L5428
	.sleb128	3
	.4byte		.L5049
	.uleb128	887
	.byte		"localDW"
	.byte		0
	.4byte		.L5430
	.4byte		.L5433
	.section	.debug_info,,n
	.sleb128	0
.L5426:
	.section	.debug_info,,n
.L5438:
	.sleb128	2
	.4byte		.L5435-.L2
	.byte		"ATV_Chart"
	.byte		0
	.4byte		.L5049
	.uleb128	900
	.byte		0x1
	.byte		0x1
	.4byte		.L5436
	.4byte		.L5437
	.sleb128	3
	.4byte		.L5049
	.uleb128	900
	.byte		"rtu_in"
	.byte		0
	.4byte		.L5106
	.4byte		.L5439
	.sleb128	3
	.4byte		.L5049
	.uleb128	900
	.byte		"localB"
	.byte		0
	.4byte		.L5440
	.4byte		.L5443
	.sleb128	3
	.4byte		.L5049
	.uleb128	900
	.byte		"localDW"
	.byte		0
	.4byte		.L5430
	.4byte		.L5444
	.section	.debug_info,,n
	.sleb128	0
.L5435:
	.section	.debug_info,,n
.L5449:
	.sleb128	8
	.4byte		.L5446-.L2
	.byte		"ATV_KEY_ON"
	.byte		0
	.4byte		.L5049
	.uleb128	948
	.byte		0x1
	.4byte		.L5447
	.4byte		.L5448
.L5450:
	.sleb128	5
	.4byte		.L5049
	.uleb128	950
	.byte		"tmp"
	.byte		0
	.4byte		.L5106
	.4byte		.L5451
	.section	.debug_info,,n
	.sleb128	0
.L5446:
	.section	.debug_info,,n
.L5457:
	.sleb128	9
	.4byte		.L5454-.L2
	.byte		"ATV_Management"
	.byte		0
	.4byte		.L5049
	.uleb128	1225
	.4byte		.L5411
	.byte		0x1
	.4byte		.L5455
	.4byte		.L5456
	.sleb128	3
	.4byte		.L5049
	.uleb128	1225
	.byte		"TInverterHi"
	.byte		0
	.4byte		.L5458
	.4byte		.L5460
	.sleb128	3
	.4byte		.L5049
	.uleb128	1225
	.byte		"TMotorHi"
	.byte		0
	.4byte		.L5458
	.4byte		.L5461
	.sleb128	3
	.4byte		.L5049
	.uleb128	1225
	.byte		"TgHi"
	.byte		0
	.4byte		.L5458
	.4byte		.L5462
.L5463:
	.sleb128	5
	.4byte		.L5049
	.uleb128	1227
	.byte		"PumpSt"
	.byte		0
	.4byte		.L5411
	.4byte		.L5464
	.section	.debug_info,,n
	.sleb128	0
.L5454:
	.section	.debug_info,,n
.L5470:
	.sleb128	8
	.4byte		.L5467-.L2
	.byte		"ATV_GestioneIbrido"
	.byte		0
	.4byte		.L5049
	.uleb128	1261
	.byte		0x1
	.4byte		.L5468
	.4byte		.L5469
	.section	.debug_info,,n
	.sleb128	0
.L5467:
	.section	.debug_info,,n
.L5476:
	.sleb128	8
	.4byte		.L5473-.L2
	.byte		"ATV_output0"
	.byte		0
	.4byte		.L5049
	.uleb128	1566
	.byte		0x1
	.4byte		.L5474
	.4byte		.L5475
.L5477:
	.sleb128	4
	.4byte		.L5065
	.byte		"u0_tmp_0"
	.byte		0
	.4byte		.L5056
	.4byte		.L5478
.L5479:
	.sleb128	4
	.4byte		.L5065
	.byte		"u0_tmp"
	.byte		0
	.4byte		.L5056
	.4byte		.L5480
.L5481:
	.sleb128	4
	.4byte		.L5065
	.byte		"u0_tmp"
	.byte		0
	.4byte		.L5056
	.4byte		.L5482
.L5483:
	.sleb128	4
	.4byte		.L5065
	.byte		"u0_tmp"
	.byte		0
	.4byte		.L5056
	.4byte		.L5484
.L5485:
	.sleb128	4
	.4byte		.L5065
	.byte		"u0_tmp"
	.byte		0
	.4byte		.L5056
	.4byte		.L5486
.L5487:
	.sleb128	4
	.4byte		.L5065
	.byte		"u0_tmp"
	.byte		0
	.4byte		.L5056
	.4byte		.L5488
.L5489:
	.sleb128	4
	.4byte		.L5065
	.byte		"u0_tmp"
	.byte		0
	.4byte		.L5056
	.4byte		.L5490
.L5491:
	.sleb128	4
	.4byte		.L5065
	.byte		"u0_tmp"
	.byte		0
	.4byte		.L5056
	.4byte		.L5492
.L5493:
	.sleb128	4
	.4byte		.L5065
	.byte		"rtb_Product"
	.byte		0
	.4byte		.L5411
	.4byte		.L5494
.L5495:
	.sleb128	4
	.4byte		.L5065
	.byte		"rtb_Product"
	.byte		0
	.4byte		.L5411
	.4byte		.L5496
.L5497:
	.sleb128	4
	.4byte		.L5065
	.byte		"rtb_Product"
	.byte		0
	.4byte		.L5411
	.4byte		.L5498
.L5499:
	.sleb128	4
	.4byte		.L5065
	.byte		"rtb_Product"
	.byte		0
	.4byte		.L5411
	.4byte		.L5500
.L5501:
	.sleb128	4
	.4byte		.L5065
	.byte		"rtb_Product"
	.byte		0
	.4byte		.L5411
	.4byte		.L5502
.L5503:
	.sleb128	4
	.4byte		.L5065
	.byte		"rtb_Product"
	.byte		0
	.4byte		.L5411
	.4byte		.L5504
.L5505:
	.sleb128	4
	.4byte		.L5065
	.byte		"rtb_Product"
	.byte		0
	.4byte		.L5411
	.4byte		.L5506
.L5507:
	.sleb128	4
	.4byte		.L5065
	.byte		"rtb_Product"
	.byte		0
	.4byte		.L5411
	.4byte		.L5508
.L5509:
	.sleb128	4
	.4byte		.L5065
	.byte		"rtb_Product"
	.byte		0
	.4byte		.L5411
	.4byte		.L5510
.L5511:
	.sleb128	4
	.4byte		.L5065
	.byte		"rtb_MultiportSwitch"
	.byte		0
	.4byte		.L5458
	.4byte		.L5512
.L5513:
	.sleb128	4
	.4byte		.L5065
	.byte		"rtb_Compare"
	.byte		0
	.4byte		.L5106
	.4byte		.L5514
.L5515:
	.sleb128	4
	.4byte		.L5065
	.byte		"rtb_Compare"
	.byte		0
	.4byte		.L5106
	.4byte		.L5516
.L5517:
	.sleb128	4
	.4byte		.L5065
	.byte		"rtb_Compare"
	.byte		0
	.4byte		.L5106
	.4byte		.L5518
.L5519:
	.sleb128	4
	.4byte		.L5065
	.byte		"rateLimiterRate"
	.byte		0
	.4byte		.L5520
	.4byte		.L5521
.L5522:
	.sleb128	4
	.4byte		.L5065
	.byte		"rateLimiterRate"
	.byte		0
	.4byte		.L5520
	.4byte		.L5523
.L5524:
	.sleb128	5
	.4byte		.L5049
	.uleb128	1568
	.byte		"rateLimiterRate"
	.byte		0
	.4byte		.L5520
	.4byte		.L5525
.L5526:
	.sleb128	5
	.4byte		.L5049
	.uleb128	1569
	.byte		"rtb_Compare"
	.byte		0
	.4byte		.L5106
	.4byte		.L5527
.L5528:
	.sleb128	5
	.4byte		.L5049
	.uleb128	1570
	.byte		"rtb_Switch_l"
	.byte		0
	.4byte		.L5529
	.4byte		.L5530
.L5531:
	.sleb128	5
	.4byte		.L5049
	.uleb128	1571
	.byte		"rtb_Gain_d"
	.byte		0
	.4byte		.L5529
	.4byte		.L5532
.L5533:
	.sleb128	5
	.4byte		.L5049
	.uleb128	1572
	.byte		"rtb_MultiportSwitch"
	.byte		0
	.4byte		.L5458
	.4byte		.L5534
.L5535:
	.sleb128	5
	.4byte		.L5049
	.uleb128	1573
	.byte		"rtb_PumpACtrl"
	.byte		0
	.4byte		.L5106
	.4byte		.L5536
.L5537:
	.sleb128	5
	.4byte		.L5049
	.uleb128	1574
	.byte		"rtb_Product"
	.byte		0
	.4byte		.L5411
	.4byte		.L5538
.L5539:
	.sleb128	5
	.4byte		.L5049
	.uleb128	1575
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L5411
	.4byte		.L5540
	.section	.debug_info,,n
.L5541:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1576
	.byte		"tmp"
	.byte		0
	.4byte		.L5542
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	136
.L5544:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1577
	.byte		"tmp_0"
	.byte		0
	.4byte		.L5542
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	104
.L5545:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1578
	.byte		"tmp_1"
	.byte		0
	.4byte		.L5542
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	144
.L5546:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1579
	.byte		"tmp_2"
	.byte		0
	.4byte		.L5542
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	112
.L5547:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1580
	.byte		"tmp_3"
	.byte		0
	.4byte		.L5053
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	72
.L5548:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1581
	.byte		"tmp_4"
	.byte		0
	.4byte		.L5053
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	68
.L5549:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1582
	.byte		"tmp_5"
	.byte		0
	.4byte		.L5550
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	224
.L5552:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1583
	.byte		"tmp_6"
	.byte		0
	.4byte		.L5542
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	96
.L5553:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1584
	.byte		"tmp_7"
	.byte		0
	.4byte		.L5542
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	120
.L5554:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1585
	.byte		"tmp_8"
	.byte		0
	.4byte		.L5542
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	80
.L5555:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1586
	.byte		"tmp_9"
	.byte		0
	.4byte		.L5542
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	88
.L5556:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1587
	.byte		"tmp_a"
	.byte		0
	.4byte		.L5550
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	236
.L5557:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1588
	.byte		"tmp_b"
	.byte		0
	.4byte		.L5542
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	128
.L5558:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1589
	.byte		"tmp_c"
	.byte		0
	.4byte		.L5550
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	248
.L5559:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1590
	.byte		"tmp_d"
	.byte		0
	.4byte		.L5542
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	152
.L5560:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1591
	.byte		"tmp_e"
	.byte		0
	.4byte		.L5550
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	260
.L5561:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1592
	.byte		"tmp_f"
	.byte		0
	.4byte		.L5542
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	216
.L5562:
	.sleb128	5
	.4byte		.L5049
	.uleb128	1593
	.byte		"u0_tmp"
	.byte		0
	.4byte		.L5056
	.4byte		.L5563
.L5564:
	.sleb128	5
	.4byte		.L5049
	.uleb128	1594
	.byte		"u0_tmp_0"
	.byte		0
	.4byte		.L5056
	.4byte		.L5565
.L5566:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1595
	.byte		"tmp_g"
	.byte		0
	.4byte		.L5542
	.sleb128	5
	.byte		0x3
	.4byte		tmp_g.4196
.L5567:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1607
	.byte		"adc"
	.byte		0
	.4byte		.L5458
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	48
.L5568:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1635
	.byte		"state"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	32
.L5569:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1652
	.byte		"adc"
	.byte		0
	.4byte		.L5458
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	50
.L5570:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1678
	.byte		"adc"
	.byte		0
	.4byte		.L5458
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	52
.L5571:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1699
	.byte		"adc"
	.byte		0
	.4byte		.L5458
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	54
.L5572:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1940
	.byte		"data"
	.byte		0
	.4byte		.L5573
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	160
.L5576:
	.sleb128	5
	.4byte		.L5049
	.uleb128	1941
	.byte		"retval"
	.byte		0
	.4byte		.L5577
	.4byte		.L5578
.L5579:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1942
	.byte		"pcx_CANdb_TransmitMessage_in_port_buffer"
	.byte		0
	.4byte		.L5580
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	488
.L5583:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1943
	.byte		"pcx_CANdb_TransmitMessage_in_port_ptr"
	.byte		0
	.4byte		.L5584
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	512
.L5587:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2378
	.byte		"adc"
	.byte		0
	.4byte		.L5458
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	56
.L5588:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2631
	.byte		"data"
	.byte		0
	.4byte		.L5589
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	168
.L5591:
	.sleb128	5
	.4byte		.L5049
	.uleb128	2632
	.byte		"retval"
	.byte		0
	.4byte		.L5577
	.4byte		.L5592
.L5593:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2633
	.byte		"pcx_CANdb_TransmitMessage2_in_port_buffer"
	.byte		0
	.4byte		.L5594
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	272
.L5596:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2634
	.byte		"pcx_CANdb_TransmitMessage2_in_port_ptr"
	.byte		0
	.4byte		.L5597
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	320
.L5599:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2703
	.byte		"adc"
	.byte		0
	.4byte		.L5458
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	58
.L5600:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2740
	.byte		"data"
	.byte		0
	.4byte		.L5601
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	176
.L5603:
	.sleb128	5
	.4byte		.L5049
	.uleb128	2741
	.byte		"retval"
	.byte		0
	.4byte		.L5577
	.4byte		.L5604
.L5605:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2742
	.byte		"pcx_CANdb_TransmitMessage3_in_port_buffer"
	.byte		0
	.4byte		.L5606
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	368
.L5608:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2743
	.byte		"pcx_CANdb_TransmitMessage3_in_port_ptr"
	.byte		0
	.4byte		.L5609
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	428
.L5611:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2823
	.byte		"adc"
	.byte		0
	.4byte		.L5458
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	60
.L5612:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3047
	.byte		"data"
	.byte		0
	.4byte		.L5613
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	184
.L5615:
	.sleb128	5
	.4byte		.L5049
	.uleb128	3048
	.byte		"retval"
	.byte		0
	.4byte		.L5577
	.4byte		.L5616
.L5617:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3049
	.byte		"pcx_CANdb_TransmitMessage4_in_port_buffer"
	.byte		0
	.4byte		.L5618
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	288
.L5620:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3050
	.byte		"pcx_CANdb_TransmitMessage4_in_port_ptr"
	.byte		0
	.4byte		.L5621
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	336
.L5623:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3122
	.byte		"data"
	.byte		0
	.4byte		.L5624
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	192
.L5626:
	.sleb128	5
	.4byte		.L5049
	.uleb128	3123
	.byte		"retval"
	.byte		0
	.4byte		.L5577
	.4byte		.L5627
.L5628:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3124
	.byte		"pcx_CANdb_TransmitMessage5_in_port_buffer"
	.byte		0
	.4byte		.L5629
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	388
.L5631:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3125
	.byte		"pcx_CANdb_TransmitMessage5_in_port_ptr"
	.byte		0
	.4byte		.L5632
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	448
.L5634:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3200
	.byte		"adc"
	.byte		0
	.4byte		.L5458
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	62
.L5635:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3384
	.byte		"data"
	.byte		0
	.4byte		.L5636
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	200
.L5638:
	.sleb128	5
	.4byte		.L5049
	.uleb128	3385
	.byte		"retval"
	.byte		0
	.4byte		.L5577
	.4byte		.L5639
.L5640:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3386
	.byte		"pcx_CANdb_TransmitMessage7_in_port_buffer"
	.byte		0
	.4byte		.L5641
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	304
.L5643:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3387
	.byte		"pcx_CANdb_TransmitMessage7_in_port_ptr"
	.byte		0
	.4byte		.L5644
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	352
.L5646:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3514
	.byte		"data"
	.byte		0
	.4byte		.L5647
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	208
.L5649:
	.sleb128	5
	.4byte		.L5049
	.uleb128	3515
	.byte		"retval"
	.byte		0
	.4byte		.L5577
	.4byte		.L5650
.L5651:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3516
	.byte		"pcx_CANdb_TransmitMessage8_in_port_buffer"
	.byte		0
	.4byte		.L5652
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	408
.L5654:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3517
	.byte		"pcx_CANdb_TransmitMessage8_in_port_ptr"
	.byte		0
	.4byte		.L5655
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	468
.L5657:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3594
	.byte		"state"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	33
.L5658:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3610
	.byte		"state"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	34
.L5659:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3626
	.byte		"state"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	35
.L5660:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3642
	.byte		"state"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	36
.L5661:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3658
	.byte		"state"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	37
.L5662:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3674
	.byte		"state"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	38
.L5663:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3690
	.byte		"state"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	39
.L5664:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3706
	.byte		"state"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	40
.L5665:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3720
	.byte		"state"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	41
.L5666:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3736
	.byte		"state"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	42
.L5667:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3781
	.byte		"dc"
	.byte		0
	.4byte		.L5582
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	76
.L5668:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3801
	.byte		"adc"
	.byte		0
	.4byte		.L5458
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	64
.L5669:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3811
	.byte		"adc"
	.byte		0
	.4byte		.L5458
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	66
.L5670:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3836
	.byte		"state"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	43
.L5671:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3854
	.byte		"state"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	44
.L5672:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3872
	.byte		"state"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	45
.L5673:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3888
	.byte		"state"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	46
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5677
	.4byte		.L5674
	.4byte		.L5675
.L5678:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1944
	.byte		"pcx_CANdb_TransmitMessage_field_start_pos"
	.byte		0
	.4byte		.L5679
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_start_pos.4235
.L5683:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1947
	.byte		"pcx_CANdb_TransmitMessage_field_width"
	.byte		0
	.4byte		.L5684
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_width.4236
.L5687:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1950
	.byte		"pcx_CANdb_TransmitMessage_field_is_signed"
	.byte		0
	.4byte		.L5688
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_is_signed.4237
.L5691:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1953
	.byte		"pcx_CANdb_TransmitMessage_field_valtype"
	.byte		0
	.4byte		.L5692
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_valtype.4238
.L5695:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1956
	.byte		"pcx_CANdb_TransmitMessage_field_order"
	.byte		0
	.4byte		.L5696
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_order.4239
.L5699:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1959
	.byte		"pcx_CANdb_TransmitMessage_field_eng_min"
	.byte		0
	.4byte		.L5700
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_eng_min.4240
.L5704:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1963
	.byte		"pcx_CANdb_TransmitMessage_field_eng_max"
	.byte		0
	.4byte		.L5705
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_eng_max.4241
.L5708:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1967
	.byte		"pcx_CANdb_TransmitMessage_field_scale"
	.byte		0
	.4byte		.L5709
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_scale.4242
.L5712:
	.sleb128	10
	.4byte		.L5049
	.uleb128	1971
	.byte		"pcx_CANdb_TransmitMessage_field_offset"
	.byte		0
	.4byte		.L5713
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_offset.4243
	.section	.debug_info,,n
	.sleb128	0
.L5677:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5719
	.4byte		.L5716
	.4byte		.L5717
.L5720:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2635
	.byte		"pcx_CANdb_TransmitMessage2_field_start_pos"
	.byte		0
	.4byte		.L5721
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_start_pos.4343
.L5724:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2638
	.byte		"pcx_CANdb_TransmitMessage2_field_width"
	.byte		0
	.4byte		.L5725
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_width.4344
.L5728:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2641
	.byte		"pcx_CANdb_TransmitMessage2_field_is_signed"
	.byte		0
	.4byte		.L5729
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_is_signed.4345
.L5732:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2644
	.byte		"pcx_CANdb_TransmitMessage2_field_valtype"
	.byte		0
	.4byte		.L5733
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_valtype.4346
.L5736:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2647
	.byte		"pcx_CANdb_TransmitMessage2_field_order"
	.byte		0
	.4byte		.L5737
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_order.4347
.L5740:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2650
	.byte		"pcx_CANdb_TransmitMessage2_field_eng_min"
	.byte		0
	.4byte		.L5741
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_eng_min.4348
.L5744:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2653
	.byte		"pcx_CANdb_TransmitMessage2_field_eng_max"
	.byte		0
	.4byte		.L5745
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_eng_max.4349
.L5748:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2656
	.byte		"pcx_CANdb_TransmitMessage2_field_scale"
	.byte		0
	.4byte		.L5749
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_scale.4350
.L5752:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2659
	.byte		"pcx_CANdb_TransmitMessage2_field_offset"
	.byte		0
	.4byte		.L5753
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_offset.4351
	.section	.debug_info,,n
	.sleb128	0
.L5719:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5759
	.4byte		.L5756
	.4byte		.L5757
.L5760:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2744
	.byte		"pcx_CANdb_TransmitMessage3_field_start_pos"
	.byte		0
	.4byte		.L5761
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_start_pos.4359
.L5764:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2747
	.byte		"pcx_CANdb_TransmitMessage3_field_width"
	.byte		0
	.4byte		.L5765
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_width.4360
.L5768:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2750
	.byte		"pcx_CANdb_TransmitMessage3_field_is_signed"
	.byte		0
	.4byte		.L5769
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_is_signed.4361
.L5772:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2753
	.byte		"pcx_CANdb_TransmitMessage3_field_valtype"
	.byte		0
	.4byte		.L5773
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_valtype.4362
.L5776:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2756
	.byte		"pcx_CANdb_TransmitMessage3_field_order"
	.byte		0
	.4byte		.L5777
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_order.4363
.L5780:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2759
	.byte		"pcx_CANdb_TransmitMessage3_field_eng_min"
	.byte		0
	.4byte		.L5781
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_eng_min.4364
.L5784:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2763
	.byte		"pcx_CANdb_TransmitMessage3_field_eng_max"
	.byte		0
	.4byte		.L5785
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_eng_max.4365
.L5788:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2767
	.byte		"pcx_CANdb_TransmitMessage3_field_scale"
	.byte		0
	.4byte		.L5789
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_scale.4366
.L5792:
	.sleb128	10
	.4byte		.L5049
	.uleb128	2771
	.byte		"pcx_CANdb_TransmitMessage3_field_offset"
	.byte		0
	.4byte		.L5793
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_offset.4367
	.section	.debug_info,,n
	.sleb128	0
.L5759:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5799
	.4byte		.L5796
	.4byte		.L5797
.L5800:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3051
	.byte		"pcx_CANdb_TransmitMessage4_field_start_pos"
	.byte		0
	.4byte		.L5801
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_start_pos.4409
.L5804:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3054
	.byte		"pcx_CANdb_TransmitMessage4_field_width"
	.byte		0
	.4byte		.L5805
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_width.4410
.L5808:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3057
	.byte		"pcx_CANdb_TransmitMessage4_field_is_signed"
	.byte		0
	.4byte		.L5809
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_is_signed.4411
.L5812:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3060
	.byte		"pcx_CANdb_TransmitMessage4_field_valtype"
	.byte		0
	.4byte		.L5813
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_valtype.4412
.L5816:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3063
	.byte		"pcx_CANdb_TransmitMessage4_field_order"
	.byte		0
	.4byte		.L5817
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_order.4413
.L5820:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3066
	.byte		"pcx_CANdb_TransmitMessage4_field_eng_min"
	.byte		0
	.4byte		.L5821
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_eng_min.4414
.L5824:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3069
	.byte		"pcx_CANdb_TransmitMessage4_field_eng_max"
	.byte		0
	.4byte		.L5825
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_eng_max.4415
.L5828:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3072
	.byte		"pcx_CANdb_TransmitMessage4_field_scale"
	.byte		0
	.4byte		.L5829
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_scale.4416
.L5832:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3075
	.byte		"pcx_CANdb_TransmitMessage4_field_offset"
	.byte		0
	.4byte		.L5833
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_offset.4417
	.section	.debug_info,,n
	.sleb128	0
.L5799:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5839
	.4byte		.L5836
	.4byte		.L5837
.L5840:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3126
	.byte		"pcx_CANdb_TransmitMessage5_field_start_pos"
	.byte		0
	.4byte		.L5841
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_start_pos.4420
.L5844:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3129
	.byte		"pcx_CANdb_TransmitMessage5_field_width"
	.byte		0
	.4byte		.L5845
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_width.4421
.L5848:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3132
	.byte		"pcx_CANdb_TransmitMessage5_field_is_signed"
	.byte		0
	.4byte		.L5849
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_is_signed.4422
.L5852:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3135
	.byte		"pcx_CANdb_TransmitMessage5_field_valtype"
	.byte		0
	.4byte		.L5853
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_valtype.4423
.L5856:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3138
	.byte		"pcx_CANdb_TransmitMessage5_field_order"
	.byte		0
	.4byte		.L5857
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_order.4424
.L5860:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3141
	.byte		"pcx_CANdb_TransmitMessage5_field_eng_min"
	.byte		0
	.4byte		.L5861
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_eng_min.4425
.L5864:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3145
	.byte		"pcx_CANdb_TransmitMessage5_field_eng_max"
	.byte		0
	.4byte		.L5865
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_eng_max.4426
.L5868:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3149
	.byte		"pcx_CANdb_TransmitMessage5_field_scale"
	.byte		0
	.4byte		.L5869
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_scale.4427
.L5872:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3153
	.byte		"pcx_CANdb_TransmitMessage5_field_offset"
	.byte		0
	.4byte		.L5873
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_offset.4428
	.section	.debug_info,,n
	.sleb128	0
.L5839:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5879
	.4byte		.L5876
	.4byte		.L5877
.L5880:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3388
	.byte		"pcx_CANdb_TransmitMessage7_field_start_pos"
	.byte		0
	.4byte		.L5881
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage7_field_start_pos.4462
.L5884:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3391
	.byte		"pcx_CANdb_TransmitMessage7_field_width"
	.byte		0
	.4byte		.L5885
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage7_field_width.4463
.L5888:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3394
	.byte		"pcx_CANdb_TransmitMessage7_field_is_signed"
	.byte		0
	.4byte		.L5889
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage7_field_is_signed.4464
.L5892:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3397
	.byte		"pcx_CANdb_TransmitMessage7_field_valtype"
	.byte		0
	.4byte		.L5893
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage7_field_valtype.4465
.L5896:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3400
	.byte		"pcx_CANdb_TransmitMessage7_field_order"
	.byte		0
	.4byte		.L5897
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage7_field_order.4466
.L5900:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3403
	.byte		"pcx_CANdb_TransmitMessage7_field_eng_min"
	.byte		0
	.4byte		.L5901
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage7_field_eng_min.4467
.L5904:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3406
	.byte		"pcx_CANdb_TransmitMessage7_field_eng_max"
	.byte		0
	.4byte		.L5905
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage7_field_eng_max.4468
.L5908:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3409
	.byte		"pcx_CANdb_TransmitMessage7_field_scale"
	.byte		0
	.4byte		.L5909
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage7_field_scale.4469
.L5912:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3412
	.byte		"pcx_CANdb_TransmitMessage7_field_offset"
	.byte		0
	.4byte		.L5913
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage7_field_offset.4470
	.section	.debug_info,,n
	.sleb128	0
.L5879:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5919
	.4byte		.L5916
	.4byte		.L5917
.L5920:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3518
	.byte		"pcx_CANdb_TransmitMessage8_field_start_pos"
	.byte		0
	.4byte		.L5921
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage8_field_start_pos.4485
.L5924:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3521
	.byte		"pcx_CANdb_TransmitMessage8_field_width"
	.byte		0
	.4byte		.L5925
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage8_field_width.4486
.L5928:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3524
	.byte		"pcx_CANdb_TransmitMessage8_field_is_signed"
	.byte		0
	.4byte		.L5929
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage8_field_is_signed.4487
.L5932:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3527
	.byte		"pcx_CANdb_TransmitMessage8_field_valtype"
	.byte		0
	.4byte		.L5933
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage8_field_valtype.4488
.L5936:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3530
	.byte		"pcx_CANdb_TransmitMessage8_field_order"
	.byte		0
	.4byte		.L5937
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage8_field_order.4489
.L5940:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3533
	.byte		"pcx_CANdb_TransmitMessage8_field_eng_min"
	.byte		0
	.4byte		.L5941
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage8_field_eng_min.4490
.L5944:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3537
	.byte		"pcx_CANdb_TransmitMessage8_field_eng_max"
	.byte		0
	.4byte		.L5945
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage8_field_eng_max.4491
.L5948:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3541
	.byte		"pcx_CANdb_TransmitMessage8_field_scale"
	.byte		0
	.4byte		.L5949
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage8_field_scale.4492
.L5952:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3545
	.byte		"pcx_CANdb_TransmitMessage8_field_offset"
	.byte		0
	.4byte		.L5953
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage8_field_offset.4493
	.section	.debug_info,,n
	.sleb128	0
.L5919:
	.section	.debug_info,,n
	.sleb128	0
.L5473:
	.section	.debug_info,,n
.L5960:
	.sleb128	8
	.4byte		.L5957-.L2
	.byte		"ATV_update0"
	.byte		0
	.4byte		.L5049
	.uleb128	3899
	.byte		0x1
	.4byte		.L5958
	.4byte		.L5959
	.section	.debug_info,,n
	.sleb128	0
.L5957:
	.section	.debug_info,,n
.L5965:
	.sleb128	8
	.4byte		.L5962-.L2
	.byte		"ATV_output1"
	.byte		0
	.4byte		.L5049
	.uleb128	3919
	.byte		0x1
	.4byte		.L5963
	.4byte		.L5964
.L5966:
	.sleb128	4
	.4byte		.L5065
	.byte		"u0"
	.byte		0
	.4byte		.L5411
	.4byte		.L5967
.L5968:
	.sleb128	4
	.4byte		.L5065
	.byte		"u0"
	.byte		0
	.4byte		.L5411
	.4byte		.L5969
.L5970:
	.sleb128	5
	.4byte		.L5049
	.uleb128	3921
	.byte		"u0"
	.byte		0
	.4byte		.L5411
	.4byte		.L5971
.L5972:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3928
	.byte		"data"
	.byte		0
	.4byte		.L5973
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	52
.L5975:
	.sleb128	5
	.4byte		.L5049
	.uleb128	3929
	.byte		"retval"
	.byte		0
	.4byte		.L5577
	.4byte		.L5976
.L5977:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3930
	.byte		"pcx_CANdb_TransmitMessage1_in_port_buffer"
	.byte		0
	.4byte		.L5978
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	188
.L5980:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3931
	.byte		"pcx_CANdb_TransmitMessage1_in_port_ptr"
	.byte		0
	.4byte		.L5981
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	236
.L5983:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4009
	.byte		"data"
	.byte		0
	.4byte		.L5984
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	60
.L5986:
	.sleb128	5
	.4byte		.L5049
	.uleb128	4010
	.byte		"retval"
	.byte		0
	.4byte		.L5577
	.4byte		.L5987
.L5988:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4011
	.byte		"pcx_CANdb_TransmitMessage6_in_port_buffer"
	.byte		0
	.4byte		.L5989
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	124
.L5991:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4012
	.byte		"pcx_CANdb_TransmitMessage6_in_port_ptr"
	.byte		0
	.4byte		.L5992
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	156
.L5994:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4080
	.byte		"data"
	.byte		0
	.4byte		.L5995
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	68
.L5997:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4081
	.byte		"timestamp"
	.byte		0
	.4byte		.L5998
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	36
.L5999:
	.sleb128	5
	.4byte		.L5049
	.uleb128	4082
	.byte		"pcxf_rx_receive_status"
	.byte		0
	.4byte		.L6000
	.4byte		.L6002
.L6003:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4083
	.byte		"pcx_CANdb_ReceiveMessage_out_port_buffer"
	.byte		0
	.4byte		.L6004
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	100
.L6006:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4084
	.byte		"pcx_CANdb_ReceiveMessage_out_port"
	.byte		0
	.4byte		.L6007
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	112
.L6009:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4172
	.byte		"data"
	.byte		0
	.4byte		.L6010
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	76
.L6012:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4173
	.byte		"timestamp"
	.byte		0
	.4byte		.L5998
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	40
.L6013:
	.sleb128	5
	.4byte		.L5049
	.uleb128	4174
	.byte		"pcxf_rx_receive_status"
	.byte		0
	.4byte		.L6000
	.4byte		.L6014
.L6015:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4175
	.byte		"pcx_CANdb_ReceiveMessage_p_out_port_buffer"
	.byte		0
	.4byte		.L6016
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	284
.L6018:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4176
	.byte		"pcx_CANdb_ReceiveMessage_p_out_port"
	.byte		0
	.4byte		.L6019
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	312
.L6021:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4312
	.byte		"data"
	.byte		0
	.4byte		.L6022
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	84
.L6024:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4313
	.byte		"timestamp"
	.byte		0
	.4byte		.L5998
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	44
.L6025:
	.sleb128	5
	.4byte		.L5049
	.uleb128	4314
	.byte		"pcxf_rx_receive_status"
	.byte		0
	.4byte		.L6000
	.4byte		.L6026
.L6027:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4315
	.byte		"pcx_CANdb_ReceiveMessage_f_out_port_buffer"
	.byte		0
	.4byte		.L6028
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	140
.L6030:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4316
	.byte		"pcx_CANdb_ReceiveMessage_f_out_port"
	.byte		0
	.4byte		.L6031
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	172
.L6033:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4433
	.byte		"data"
	.byte		0
	.4byte		.L6034
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	92
.L6036:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4434
	.byte		"timestamp"
	.byte		0
	.4byte		.L5998
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	48
.L6037:
	.sleb128	5
	.4byte		.L5049
	.uleb128	4435
	.byte		"pcxf_rx_receive_status"
	.byte		0
	.4byte		.L6000
	.4byte		.L6038
.L6039:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4436
	.byte		"pcx_CANdb_ReceiveMessage_e_out_port_buffer"
	.byte		0
	.4byte		.L6040
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	212
.L6042:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4437
	.byte		"pcx_CANdb_ReceiveMessage_e_out_port"
	.byte		0
	.4byte		.L6043
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	260
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L6048
	.4byte		.L6045
	.4byte		.L6046
.L6049:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3932
	.byte		"pcx_CANdb_TransmitMessage1_field_start_pos"
	.byte		0
	.4byte		.L6050
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_start_pos.4717
.L6053:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3935
	.byte		"pcx_CANdb_TransmitMessage1_field_width"
	.byte		0
	.4byte		.L6054
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_width.4718
.L6057:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3938
	.byte		"pcx_CANdb_TransmitMessage1_field_is_signed"
	.byte		0
	.4byte		.L6058
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_is_signed.4719
.L6061:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3941
	.byte		"pcx_CANdb_TransmitMessage1_field_valtype"
	.byte		0
	.4byte		.L6062
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_valtype.4720
.L6065:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3944
	.byte		"pcx_CANdb_TransmitMessage1_field_order"
	.byte		0
	.4byte		.L6066
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_order.4721
.L6069:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3947
	.byte		"pcx_CANdb_TransmitMessage1_field_eng_min"
	.byte		0
	.4byte		.L6070
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_eng_min.4722
.L6073:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3951
	.byte		"pcx_CANdb_TransmitMessage1_field_eng_max"
	.byte		0
	.4byte		.L6074
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_eng_max.4723
.L6077:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3955
	.byte		"pcx_CANdb_TransmitMessage1_field_scale"
	.byte		0
	.4byte		.L6078
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_scale.4724
.L6081:
	.sleb128	10
	.4byte		.L5049
	.uleb128	3959
	.byte		"pcx_CANdb_TransmitMessage1_field_offset"
	.byte		0
	.4byte		.L6082
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_offset.4725
	.section	.debug_info,,n
	.sleb128	0
.L6048:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L6088
	.4byte		.L6085
	.4byte		.L6086
.L6089:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4013
	.byte		"pcx_CANdb_TransmitMessage6_field_start_pos"
	.byte		0
	.4byte		.L6090
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_start_pos.4728
.L6093:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4016
	.byte		"pcx_CANdb_TransmitMessage6_field_width"
	.byte		0
	.4byte		.L6094
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_width.4729
.L6097:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4019
	.byte		"pcx_CANdb_TransmitMessage6_field_is_signed"
	.byte		0
	.4byte		.L6098
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_is_signed.4730
.L6101:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4022
	.byte		"pcx_CANdb_TransmitMessage6_field_valtype"
	.byte		0
	.4byte		.L6102
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_valtype.4731
.L6105:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4025
	.byte		"pcx_CANdb_TransmitMessage6_field_order"
	.byte		0
	.4byte		.L6106
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_order.4732
.L6109:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4028
	.byte		"pcx_CANdb_TransmitMessage6_field_eng_min"
	.byte		0
	.4byte		.L6110
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_eng_min.4733
.L6113:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4031
	.byte		"pcx_CANdb_TransmitMessage6_field_eng_max"
	.byte		0
	.4byte		.L6114
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_eng_max.4734
.L6117:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4034
	.byte		"pcx_CANdb_TransmitMessage6_field_scale"
	.byte		0
	.4byte		.L6118
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_scale.4735
.L6121:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4037
	.byte		"pcx_CANdb_TransmitMessage6_field_offset"
	.byte		0
	.4byte		.L6122
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_offset.4736
	.section	.debug_info,,n
	.sleb128	0
.L6088:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L6128
	.4byte		.L6125
	.4byte		.L6126
.L6129:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4085
	.byte		"pcx_CANdb_ReceiveMessage_field_start_pos"
	.byte		0
	.4byte		.L6130
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_start_pos.4739
.L6133:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4088
	.byte		"pcx_CANdb_ReceiveMessage_field_width"
	.byte		0
	.4byte		.L6134
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_width.4740
.L6137:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4091
	.byte		"pcx_CANdb_ReceiveMessage_field_is_signed"
	.byte		0
	.4byte		.L6138
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_is_signed.4741
.L6141:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4094
	.byte		"pcx_CANdb_ReceiveMessage_field_valtype"
	.byte		0
	.4byte		.L6142
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_valtype.4742
.L6145:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4097
	.byte		"pcx_CANdb_ReceiveMessage_field_order"
	.byte		0
	.4byte		.L6146
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_order.4743
.L6149:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4100
	.byte		"pcx_CANdb_ReceiveMessage_field_eng_min"
	.byte		0
	.4byte		.L6150
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_eng_min.4744
.L6153:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4103
	.byte		"pcx_CANdb_ReceiveMessage_field_eng_max"
	.byte		0
	.4byte		.L6154
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_eng_max.4745
.L6157:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4106
	.byte		"pcx_CANdb_ReceiveMessage_field_scale"
	.byte		0
	.4byte		.L6158
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_scale.4746
.L6161:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4109
	.byte		"pcx_CANdb_ReceiveMessage_field_offset"
	.byte		0
	.4byte		.L6162
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_offset.4747
	.section	.debug_info,,n
	.sleb128	0
.L6128:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L6168
	.4byte		.L6165
	.4byte		.L6166
.L6169:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4177
	.byte		"pcx_CANdb_ReceiveMessage_p_field_start_pos"
	.byte		0
	.4byte		.L6170
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_start_pos.4752
.L6173:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4180
	.byte		"pcx_CANdb_ReceiveMessage_p_field_width"
	.byte		0
	.4byte		.L6174
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_width.4753
.L6177:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4183
	.byte		"pcx_CANdb_ReceiveMessage_p_field_is_signed"
	.byte		0
	.4byte		.L6178
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_is_signed.4754
.L6181:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4186
	.byte		"pcx_CANdb_ReceiveMessage_p_field_valtype"
	.byte		0
	.4byte		.L6182
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_valtype.4755
.L6185:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4189
	.byte		"pcx_CANdb_ReceiveMessage_p_field_order"
	.byte		0
	.4byte		.L6186
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_order.4756
.L6189:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4192
	.byte		"pcx_CANdb_ReceiveMessage_p_field_eng_min"
	.byte		0
	.4byte		.L6190
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_eng_min.4757
.L6193:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4196
	.byte		"pcx_CANdb_ReceiveMessage_p_field_eng_max"
	.byte		0
	.4byte		.L6194
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_eng_max.4758
.L6197:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4200
	.byte		"pcx_CANdb_ReceiveMessage_p_field_scale"
	.byte		0
	.4byte		.L6198
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_scale.4759
.L6201:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4204
	.byte		"pcx_CANdb_ReceiveMessage_p_field_offset"
	.byte		0
	.4byte		.L6202
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_offset.4760
	.section	.debug_info,,n
	.sleb128	0
.L6168:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L6208
	.4byte		.L6205
	.4byte		.L6206
.L6209:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4317
	.byte		"pcx_CANdb_ReceiveMessage_f_field_start_pos"
	.byte		0
	.4byte		.L6210
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_f_field_start_pos.4767
.L6213:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4320
	.byte		"pcx_CANdb_ReceiveMessage_f_field_width"
	.byte		0
	.4byte		.L6214
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_f_field_width.4768
.L6217:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4323
	.byte		"pcx_CANdb_ReceiveMessage_f_field_is_signed"
	.byte		0
	.4byte		.L6218
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_f_field_is_signed.4769
.L6221:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4326
	.byte		"pcx_CANdb_ReceiveMessage_f_field_valtype"
	.byte		0
	.4byte		.L6222
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_f_field_valtype.4770
.L6225:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4329
	.byte		"pcx_CANdb_ReceiveMessage_f_field_order"
	.byte		0
	.4byte		.L6226
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_f_field_order.4771
.L6229:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4332
	.byte		"pcx_CANdb_ReceiveMessage_f_field_eng_min"
	.byte		0
	.4byte		.L6230
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_f_field_eng_min.4772
.L6233:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4335
	.byte		"pcx_CANdb_ReceiveMessage_f_field_eng_max"
	.byte		0
	.4byte		.L6234
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_f_field_eng_max.4773
.L6237:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4338
	.byte		"pcx_CANdb_ReceiveMessage_f_field_scale"
	.byte		0
	.4byte		.L6238
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_f_field_scale.4774
.L6241:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4341
	.byte		"pcx_CANdb_ReceiveMessage_f_field_offset"
	.byte		0
	.4byte		.L6242
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_f_field_offset.4775
	.section	.debug_info,,n
	.sleb128	0
.L6208:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L6248
	.4byte		.L6245
	.4byte		.L6246
.L6249:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4438
	.byte		"pcx_CANdb_ReceiveMessage_e_field_start_pos"
	.byte		0
	.4byte		.L6250
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_start_pos.4787
.L6253:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4441
	.byte		"pcx_CANdb_ReceiveMessage_e_field_width"
	.byte		0
	.4byte		.L6254
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_width.4788
.L6257:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4444
	.byte		"pcx_CANdb_ReceiveMessage_e_field_is_signed"
	.byte		0
	.4byte		.L6258
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_is_signed.4789
.L6261:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4447
	.byte		"pcx_CANdb_ReceiveMessage_e_field_valtype"
	.byte		0
	.4byte		.L6262
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_valtype.4790
.L6265:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4450
	.byte		"pcx_CANdb_ReceiveMessage_e_field_order"
	.byte		0
	.4byte		.L6266
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_order.4791
.L6269:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4453
	.byte		"pcx_CANdb_ReceiveMessage_e_field_eng_min"
	.byte		0
	.4byte		.L6270
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_eng_min.4792
.L6273:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4457
	.byte		"pcx_CANdb_ReceiveMessage_e_field_eng_max"
	.byte		0
	.4byte		.L6274
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_eng_max.4793
.L6277:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4461
	.byte		"pcx_CANdb_ReceiveMessage_e_field_scale"
	.byte		0
	.4byte		.L6278
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_scale.4794
.L6281:
	.sleb128	10
	.4byte		.L5049
	.uleb128	4465
	.byte		"pcx_CANdb_ReceiveMessage_e_field_offset"
	.byte		0
	.4byte		.L6282
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_offset.4795
	.section	.debug_info,,n
	.sleb128	0
.L6248:
	.section	.debug_info,,n
	.sleb128	0
.L5962:
	.section	.debug_info,,n
.L6289:
	.sleb128	8
	.4byte		.L6286-.L2
	.byte		"ATV_update1"
	.byte		0
	.4byte		.L5049
	.uleb128	4525
	.byte		0x1
	.4byte		.L6287
	.4byte		.L6288
	.section	.debug_info,,n
	.sleb128	0
.L6286:
	.section	.debug_info,,n
.L6294:
	.sleb128	8
	.4byte		.L6291-.L2
	.byte		"ATV_output2"
	.byte		0
	.4byte		.L5049
	.uleb128	4575
	.byte		0x1
	.4byte		.L6292
	.4byte		.L6293
	.section	.debug_info,,n
	.sleb128	0
.L6291:
	.section	.debug_info,,n
.L6299:
	.sleb128	8
	.4byte		.L6296-.L2
	.byte		"ATV_update2"
	.byte		0
	.4byte		.L5049
	.uleb128	4610
	.byte		0x1
	.4byte		.L6297
	.4byte		.L6298
	.section	.debug_info,,n
	.sleb128	0
.L6296:
	.section	.debug_info,,n
.L6304:
	.sleb128	8
	.4byte		.L6301-.L2
	.byte		"ATV_initialize"
	.byte		0
	.4byte		.L5049
	.uleb128	4672
	.byte		0x1
	.4byte		.L6302
	.4byte		.L6303
.L6305:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5088
	.byte		"year"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L6308:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5089
	.byte		"month"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	10
.L6309:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5090
	.byte		"day"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L6310:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5104
	.byte		"major_ver"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	14
.L6311:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5105
	.byte		"minor_ver"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	16
.L6312:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5106
	.byte		"sub_minor_ver"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	18
.L6313:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5120
	.byte		"year"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	20
.L6314:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5121
	.byte		"month"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	22
.L6315:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5122
	.byte		"day"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	24
.L6316:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5136
	.byte		"major_ver"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	26
.L6317:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5137
	.byte		"minor_ver"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	28
.L6318:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5138
	.byte		"sub_minor_ver"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	30
.L6319:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5152
	.byte		"year"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	32
.L6320:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5153
	.byte		"month"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	34
.L6321:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5154
	.byte		"day"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	36
.L6322:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5168
	.byte		"major_ver"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	38
.L6323:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5169
	.byte		"minor_ver"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	40
.L6324:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5170
	.byte		"sub_minor_ver"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	42
.L6325:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5184
	.byte		"year"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	44
.L6326:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5185
	.byte		"month"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	46
.L6327:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5186
	.byte		"day"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	48
.L6328:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5200
	.byte		"major_ver"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	50
.L6329:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5201
	.byte		"minor_ver"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	52
.L6330:
	.sleb128	10
	.4byte		.L5049
	.uleb128	5202
	.byte		"sub_minor_ver"
	.byte		0
	.4byte		.L6306
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	54
	.section	.debug_info,,n
	.sleb128	0
.L6301:
	.section	.debug_info,,n
.L6335:
	.sleb128	2
	.4byte		.L6332-.L2
	.byte		"MdlOutputs"
	.byte		0
	.4byte		.L5049
	.uleb128	5337
	.byte		0x1
	.byte		0x1
	.4byte		.L6333
	.4byte		.L6334
	.sleb128	3
	.4byte		.L5049
	.uleb128	5337
	.byte		"tid"
	.byte		0
	.4byte		.L5414
	.4byte		.L6336
	.section	.debug_info,,n
	.sleb128	0
.L6332:
	.section	.debug_info,,n
.L6341:
	.sleb128	2
	.4byte		.L6338-.L2
	.byte		"MdlUpdate"
	.byte		0
	.4byte		.L5049
	.uleb128	5342
	.byte		0x1
	.byte		0x1
	.4byte		.L6339
	.4byte		.L6340
	.sleb128	3
	.4byte		.L5049
	.uleb128	5342
	.byte		"tid"
	.byte		0
	.4byte		.L5414
	.4byte		.L6342
	.section	.debug_info,,n
	.sleb128	0
.L6338:
	.section	.debug_info,,n
.L6347:
	.sleb128	2
	.4byte		.L6344-.L2
	.byte		"MdlInitializeSizes"
	.byte		0
	.4byte		.L5049
	.uleb128	5347
	.byte		0x1
	.byte		0x1
	.4byte		.L6345
	.4byte		.L6346
	.section	.debug_info,,n
	.sleb128	0
.L6344:
	.section	.debug_info,,n
.L6352:
	.sleb128	2
	.4byte		.L6349-.L2
	.byte		"MdlInitializeSampleTimes"
	.byte		0
	.4byte		.L5049
	.uleb128	5351
	.byte		0x1
	.byte		0x1
	.4byte		.L6350
	.4byte		.L6351
	.section	.debug_info,,n
	.sleb128	0
.L6349:
	.section	.debug_info,,n
.L6357:
	.sleb128	2
	.4byte		.L6354-.L2
	.byte		"MdlInitialize"
	.byte		0
	.4byte		.L5049
	.uleb128	5355
	.byte		0x1
	.byte		0x1
	.4byte		.L6355
	.4byte		.L6356
	.section	.debug_info,,n
	.sleb128	0
.L6354:
	.section	.debug_info,,n
.L6362:
	.sleb128	2
	.4byte		.L6359-.L2
	.byte		"MdlStart"
	.byte		0
	.4byte		.L5049
	.uleb128	5359
	.byte		0x1
	.byte		0x1
	.4byte		.L6360
	.4byte		.L6361
	.section	.debug_info,,n
	.sleb128	0
.L6359:
	.section	.debug_info,,n
.L6367:
	.sleb128	2
	.4byte		.L6364-.L2
	.byte		"MdlTerminate"
	.byte		0
	.4byte		.L5049
	.uleb128	5364
	.byte		0x1
	.byte		0x1
	.4byte		.L6365
	.4byte		.L6366
	.section	.debug_info,,n
	.sleb128	0
.L6364:
	.section	.debug_info,,n
.L6375:
	.sleb128	6
	.4byte		.L6369-.L2
	.byte		"ATV"
	.byte		0
	.4byte		.L5049
	.uleb128	5370
	.4byte		.L6372
	.byte		0x1
	.byte		0x1
	.4byte		.L6370
	.4byte		.L6371
.L6376:
	.sleb128	5
	.4byte		.L5049
	.uleb128	5383
	.byte		"mdlTsMap"
	.byte		0
	.4byte		.L5418
	.4byte		.L6377
.L6378:
	.sleb128	5
	.4byte		.L5049
	.uleb128	5405
	.byte		"mdlSampleHits"
	.byte		0
	.4byte		.L5418
	.4byte		.L6379
	.section	.debug_info,,n
	.sleb128	0
.L6369:
	.section	.debug_info,,n
.L6386:
	.sleb128	2
	.4byte		.L6383-.L2
	.byte		"psc_initialise_app"
	.byte		0
	.4byte		.L5049
	.uleb128	5531
	.byte		0x1
	.byte		0x1
	.4byte		.L6384
	.4byte		.L6385
	.section	.debug_info,,n
	.sleb128	0
.L6383:
	.section	.debug_info,,n
.L6391:
	.sleb128	2
	.4byte		.L6388-.L2
	.byte		"psc_background_app"
	.byte		0
	.4byte		.L5049
	.uleb128	5562
	.byte		0x1
	.byte		0x1
	.4byte		.L6389
	.4byte		.L6390
	.section	.debug_info,,n
	.sleb128	0
.L6388:
	.section	.debug_info,,n
.L6396:
	.sleb128	2
	.4byte		.L6393-.L2
	.byte		"pkn_angular_model_task"
	.byte		0
	.4byte		.L5049
	.uleb128	5575
	.byte		0x1
	.byte		0x1
	.4byte		.L6394
	.4byte		.L6395
	.section	.debug_info,,n
	.sleb128	0
.L6393:
	.section	.debug_info,,n
.L6401:
	.sleb128	2
	.4byte		.L6398-.L2
	.byte		"pkn_10ms_model_task"
	.byte		0
	.4byte		.L5049
	.uleb128	5587
	.byte		0x1
	.byte		0x1
	.4byte		.L6399
	.4byte		.L6400
.L6402:
	.sleb128	5
	.4byte		.L5049
	.uleb128	5589
	.byte		"tnext"
	.byte		0
	.4byte		.L5411
	.4byte		.L6403
	.section	.debug_info,,n
	.sleb128	0
.L6398:
	.section	.debug_info,,n
.L6408:
	.sleb128	2
	.4byte		.L6405-.L2
	.byte		"pkn_100ms_model_task"
	.byte		0
	.4byte		.L5049
	.uleb128	5607
	.byte		0x1
	.byte		0x1
	.4byte		.L6406
	.4byte		.L6407
	.section	.debug_info,,n
	.sleb128	0
.L6405:
	.section	.debug_info,,n
.L6413:
	.sleb128	2
	.4byte		.L6410-.L2
	.byte		"pkn_1000ms_model_task"
	.byte		0
	.4byte		.L5049
	.uleb128	5622
	.byte		0x1
	.byte		0x1
	.4byte		.L6411
	.4byte		.L6412
	.section	.debug_info,,n
	.sleb128	0
.L6410:
	.section	.debug_info,,n
.L6414:
	.sleb128	12
	.byte		0x1
	.byte		0x1
	.4byte		.L6415
	.uleb128	83
	.byte		"pkn_task_1000ms_task_hdl"
	.byte		0
	.4byte		.L6416
	.section	.debug_info,,n
	.section	.debug_info,,n
.L6422:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1148
	.byte		"ATV_B"
	.byte		0
	.4byte		.L6424
	.sleb128	5
	.byte		0x3
	.4byte		ATV_B
	.section	.debug_info,,n
	.section	.debug_info,,n
.L6426:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1151
	.byte		"ATV_DW"
	.byte		0
	.4byte		.L6427
	.sleb128	5
	.byte		0x3
	.4byte		ATV_DW
	.section	.debug_info,,n
.L6429:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1161
	.byte		"atv_xc1_raw_ain"
	.byte		0
	.4byte		.L5411
	.sleb128	5
	.byte		0x3
	.4byte		atv_xc1_raw_ain
	.section	.debug_info,,n
	.section	.debug_info,,n
.L6430:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1162
	.byte		"atv_xc4_raw_ain"
	.byte		0
	.4byte		.L5411
	.sleb128	5
	.byte		0x3
	.4byte		atv_xc4_raw_ain
	.section	.debug_info,,n
.L6431:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1163
	.byte		"atv_xa3_brake_pedal_raw_ain"
	.byte		0
	.4byte		.L5411
	.sleb128	5
	.byte		0x3
	.4byte		atv_xa3_brake_pedal_raw_ain
	.section	.debug_info,,n
.L6432:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1164
	.byte		"atv_xa1_ain_throttle_raw"
	.byte		0
	.4byte		.L5411
	.sleb128	5
	.byte		0x3
	.4byte		atv_xa1_ain_throttle_raw
	.section	.debug_info,,n
.L6433:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1165
	.byte		"atv_xd3_raw_ain"
	.byte		0
	.4byte		.L5411
	.sleb128	5
	.byte		0x3
	.4byte		atv_xd3_raw_ain
	.section	.debug_info,,n
.L6434:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1166
	.byte		"atv_xe4_raw_ain"
	.byte		0
	.4byte		.L5411
	.sleb128	5
	.byte		0x3
	.4byte		atv_xe4_raw_ain
	.section	.debug_info,,n
.L6435:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1167
	.byte		"atv_xe2_raw_ain"
	.byte		0
	.4byte		.L5411
	.sleb128	5
	.byte		0x3
	.4byte		atv_xe2_raw_ain
	.section	.debug_info,,n
.L6436:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1168
	.byte		"atv_dbg_FAN_out"
	.byte		0
	.4byte		.L5411
	.sleb128	5
	.byte		0x3
	.4byte		atv_dbg_FAN_out
	.section	.debug_info,,n
.L6437:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1169
	.byte		"atv_yg3_raw_ain"
	.byte		0
	.4byte		.L5411
	.sleb128	5
	.byte		0x3
	.4byte		atv_yg3_raw_ain
	.section	.debug_info,,n
.L6438:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1170
	.byte		"bms_pack_voltage"
	.byte		0
	.4byte		.L5411
	.sleb128	5
	.byte		0x3
	.4byte		bms_pack_voltage
	.section	.debug_info,,n
.L6439:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1171
	.byte		"atv_stack_used"
	.byte		0
	.4byte		.L5053
	.sleb128	5
	.byte		0x3
	.4byte		atv_stack_used
	.section	.debug_info,,n
.L6440:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1172
	.byte		"atv_task_duration_1s"
	.byte		0
	.4byte		.L5053
	.sleb128	5
	.byte		0x3
	.4byte		atv_task_duration_1s
	.section	.debug_info,,n
.L6441:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1173
	.byte		"atv_task_duration_1s_max"
	.byte		0
	.4byte		.L5053
	.sleb128	5
	.byte		0x3
	.4byte		atv_task_duration_1s_max
	.section	.debug_info,,n
.L6442:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1174
	.byte		"atv_xd1_key_ain"
	.byte		0
	.4byte		.L5057
	.sleb128	5
	.byte		0x3
	.4byte		atv_xd1_key_ain
	.section	.debug_info,,n
.L6443:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1175
	.byte		"atv_xe3_ain"
	.byte		0
	.4byte		.L5057
	.sleb128	5
	.byte		0x3
	.4byte		atv_xe3_ain
	.section	.debug_info,,n
.L6444:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1176
	.byte		"atv_brake_pedalX1000"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_brake_pedalX1000
	.section	.debug_info,,n
.L6446:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1177
	.byte		"atv_throttleX1000"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_throttleX1000
	.section	.debug_info,,n
.L6447:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1178
	.byte		"atv_regen_x1000_rear"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_regen_x1000_rear
	.section	.debug_info,,n
.L6448:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1179
	.byte		"atv_motoring_x1000_rear"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_motoring_x1000_rear
	.section	.debug_info,,n
.L6449:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1180
	.byte		"atv_motoring_x1000_rear_limited"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_motoring_x1000_rear_limited
	.section	.debug_info,,n
.L6450:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1181
	.byte		"atv_regen_x1000_front"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_regen_x1000_front
	.section	.debug_info,,n
.L6451:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1182
	.byte		"atv_motoring_x1000_front"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_motoring_x1000_front
	.section	.debug_info,,n
.L6452:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1183
	.byte		"atv_motoring_x1000_front_limited"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_motoring_x1000_front_limited
	.section	.debug_info,,n
.L6453:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1184
	.byte		"atv_footBrake_X1000_out"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_footBrake_X1000_out
	.section	.debug_info,,n
.L6454:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1185
	.byte		"atv_tHROTTLEGen_X1000_out"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_tHROTTLEGen_X1000_out
	.section	.debug_info,,n
.L6455:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1186
	.byte		"atv_app_code_year"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_year
	.section	.debug_info,,n
.L6456:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1187
	.byte		"atv_app_code_month"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_month
	.section	.debug_info,,n
.L6457:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1188
	.byte		"atv_app_code_day"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_day
	.section	.debug_info,,n
.L6458:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1189
	.byte		"atv_app_code_major_ver"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_major_ver
	.section	.debug_info,,n
.L6459:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1190
	.byte		"atv_app_code_minor_ver"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_minor_ver
	.section	.debug_info,,n
.L6460:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1191
	.byte		"atv_app_code_subminor_ver"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_subminor_ver
	.section	.debug_info,,n
.L6461:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1192
	.byte		"atv_boot_code_year"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_year
	.section	.debug_info,,n
.L6462:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1193
	.byte		"atv_boot_code_month"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_month
	.section	.debug_info,,n
.L6463:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1194
	.byte		"atv_boot_code_day"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_day
	.section	.debug_info,,n
.L6464:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1195
	.byte		"atv_boot_code_major_ver"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_major_ver
	.section	.debug_info,,n
.L6465:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1196
	.byte		"atv_boot_code_minor_ver"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_minor_ver
	.section	.debug_info,,n
.L6466:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1197
	.byte		"atv_boot_code_subminor_ver"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_subminor_ver
	.section	.debug_info,,n
.L6467:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1198
	.byte		"atv_prg_code_year"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_year
	.section	.debug_info,,n
.L6468:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1199
	.byte		"atv_prg_code_month"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_month
	.section	.debug_info,,n
.L6469:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1200
	.byte		"atv_prg_code_day"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_day
	.section	.debug_info,,n
.L6470:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1201
	.byte		"atv_prg_code_major_ver"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_major_ver
	.section	.debug_info,,n
.L6471:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1202
	.byte		"atv_prg_code_minor_ver"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_minor_ver
	.section	.debug_info,,n
.L6472:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1203
	.byte		"atv_prg_code_subminor_ver"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_subminor_ver
	.section	.debug_info,,n
.L6473:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1204
	.byte		"atv_platform_code_year"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_year
	.section	.debug_info,,n
.L6474:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1205
	.byte		"atv_platform_code_month"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_month
	.section	.debug_info,,n
.L6475:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1206
	.byte		"atv_platform_code_day"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_day
	.section	.debug_info,,n
.L6476:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1207
	.byte		"atv_platform_code_major_ver"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_major_ver
	.section	.debug_info,,n
.L6477:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1208
	.byte		"atv_platform_code_minor_ver"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_minor_ver
	.section	.debug_info,,n
.L6478:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1209
	.byte		"atv_platform_code_subminor_ver"
	.byte		0
	.4byte		.L6445
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_subminor_ver
	.section	.debug_info,,n
.L6479:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1210
	.byte		"atv_GenCurrentSetPoint"
	.byte		0
	.4byte		.L5459
	.sleb128	5
	.byte		0x3
	.4byte		atv_GenCurrentSetPoint
	.section	.debug_info,,n
.L6480:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1211
	.byte		"atv_cpu_loading"
	.byte		0
	.4byte		.L5529
	.sleb128	5
	.byte		0x3
	.4byte		atv_cpu_loading
	.section	.debug_info,,n
.L6481:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1212
	.byte		"atv_cpu_loading_max"
	.byte		0
	.4byte		.L5529
	.sleb128	5
	.byte		0x3
	.4byte		atv_cpu_loading_max
	.section	.debug_info,,n
.L6482:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1213
	.byte		"atv_state_out"
	.byte		0
	.4byte		.L5529
	.sleb128	5
	.byte		0x3
	.4byte		atv_state_out
	.section	.debug_info,,n
.L6483:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1214
	.byte		"atv_sub_state_out"
	.byte		0
	.4byte		.L5529
	.sleb128	5
	.byte		0x3
	.4byte		atv_sub_state_out
	.section	.debug_info,,n
.L6484:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1215
	.byte		"atv_IceSM"
	.byte		0
	.4byte		.L5529
	.sleb128	5
	.byte		0x3
	.4byte		atv_IceSM
	.section	.debug_info,,n
.L6485:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1216
	.byte		"atv_IceRG"
	.byte		0
	.4byte		.L5529
	.sleb128	5
	.byte		0x3
	.4byte		atv_IceRG
	.section	.debug_info,,n
.L6486:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1217
	.byte		"atv_key_signal"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_key_signal
	.section	.debug_info,,n
.L6487:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1218
	.byte		"atv_za3_StartBtn_din"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_za3_StartBtn_din
	.section	.debug_info,,n
.L6488:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1219
	.byte		"atv_fwd_mode_in"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_fwd_mode_in
	.section	.debug_info,,n
.L6489:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1220
	.byte		"atv_rwd_mode_in"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_rwd_mode_in
	.section	.debug_info,,n
.L6490:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1221
	.byte		"atv_brake_pedal_digital_in"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_brake_pedal_digital_in
	.section	.debug_info,,n
.L6491:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1222
	.byte		"atv_throttleRegOff"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_throttleRegOff
	.section	.debug_info,,n
.L6492:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1223
	.byte		"atv_fs1_in"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_fs1_in
	.section	.debug_info,,n
.L6493:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1224
	.byte		"atv_fs1_out"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_fs1_out
	.section	.debug_info,,n
.L6494:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1225
	.byte		"atv_4wd_din"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_4wd_din
	.section	.debug_info,,n
.L6495:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1226
	.byte		"atv_apu_req_in"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_apu_req_in
	.section	.debug_info,,n
.L6496:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1227
	.byte		"atv_v_dbg_chg_req"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_v_dbg_chg_req
	.section	.debug_info,,n
.L6497:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1228
	.byte		"atv_v_dbg_heater_req"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_v_dbg_heater_req
	.section	.debug_info,,n
.L6498:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1229
	.byte		"atv_wakelock_out"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_wakelock_out
	.section	.debug_info,,n
.L6499:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1230
	.byte		"atv_runLed_out"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_runLed_out
	.section	.debug_info,,n
.L6500:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1231
	.byte		"atv_en_dcdc_out"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_en_dcdc_out
	.section	.debug_info,,n
.L6501:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1232
	.byte		"atv_IceKey_out"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_IceKey_out
	.section	.debug_info,,n
.L6502:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1233
	.byte		"atv_IceShutdown_out"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_IceShutdown_out
	.section	.debug_info,,n
.L6503:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1234
	.byte		"atv_IceOn"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_IceOn
	.section	.debug_info,,n
.L6504:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1235
	.byte		"atv_IceFault"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_IceFault
	.section	.debug_info,,n
.L6505:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1236
	.byte		"atv_dbg_pumpB_out"
	.byte		0
	.4byte		.L5106
	.sleb128	5
	.byte		0x3
	.4byte		atv_dbg_pumpB_out
	.section	.debug_info,,n
.L6506:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1266
	.byte		"atvc_IceOffTh"
	.byte		0
	.4byte		.L6507
	.sleb128	5
	.byte		0x3
	.4byte		atvc_IceOffTh
	.section	.debug_info,,n
.L6509:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1269
	.byte		"atvc_IceOnTh"
	.byte		0
	.4byte		.L6507
	.sleb128	5
	.byte		0x3
	.4byte		atvc_IceOnTh
	.section	.debug_info,,n
.L6510:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1275
	.byte		"atvc_StartThrottleIce"
	.byte		0
	.4byte		.L6507
	.sleb128	5
	.byte		0x3
	.4byte		atvc_StartThrottleIce
	.section	.debug_info,,n
.L6511:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1287
	.byte		"atvc_footBrakeWarmUp"
	.byte		0
	.4byte		.L6507
	.sleb128	5
	.byte		0x3
	.4byte		atvc_footBrakeWarmUp
	.section	.debug_info,,n
.L6512:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1304
	.byte		"atvc_throttleRegOff"
	.byte		0
	.4byte		.L6513
	.sleb128	5
	.byte		0x3
	.4byte		atvc_throttleRegOff
	.section	.debug_info,,n
.L6515:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1310
	.byte		"atvc_IceStartRetry"
	.byte		0
	.4byte		.L6516
	.sleb128	5
	.byte		0x3
	.4byte		atvc_IceStartRetry
	.section	.debug_info,,n
.L6518:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1313
	.byte		"atvc_dcMinFan"
	.byte		0
	.4byte		.L6516
	.sleb128	5
	.byte		0x3
	.4byte		atvc_dcMinFan
	.section	.debug_info,,n
.L6519:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1328
	.byte		"atvc_minTempInv"
	.byte		0
	.4byte		.L6516
	.sleb128	5
	.byte		0x3
	.4byte		atvc_minTempInv
	.section	.debug_info,,n
.L6520:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1334
	.byte		"atvc_minTempMotor"
	.byte		0
	.4byte		.L6516
	.sleb128	5
	.byte		0x3
	.4byte		atvc_minTempMotor
	.section	.debug_info,,n
.L6521:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1340
	.byte		"atvc_socLimitSave"
	.byte		0
	.4byte		.L6516
	.sleb128	5
	.byte		0x3
	.4byte		atvc_socLimitSave
	.section	.debug_info,,n
.L6522:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1343
	.byte		"atvc_tempSwitchOffFan"
	.byte		0
	.4byte		.L6516
	.sleb128	5
	.byte		0x3
	.4byte		atvc_tempSwitchOffFan
	.section	.debug_info,,n
.L6523:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1346
	.byte		"atvc_tempSwitchOnFan"
	.byte		0
	.4byte		.L6516
	.sleb128	5
	.byte		0x3
	.4byte		atvc_tempSwitchOnFan
	.section	.debug_info,,n
.L6524:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1351
	.byte		"atvc_velocityLimitFwd"
	.byte		0
	.4byte		.L6516
	.sleb128	5
	.byte		0x3
	.4byte		atvc_velocityLimitFwd
	.section	.debug_info,,n
.L6525:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1354
	.byte		"atvc_velocityLimitRwd"
	.byte		0
	.4byte		.L6516
	.sleb128	5
	.byte		0x3
	.4byte		atvc_velocityLimitRwd
	.section	.debug_info,,n
.L6526:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1375
	.byte		"pdx_DigitalInput_detm_wrk_data"
	.byte		0
	.4byte		.L6527
	.sleb128	5
	.byte		0x3
	.4byte		pdx_DigitalInput_detm_wrk_data
	.section	.debug_info,,n
.L6529:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1376
	.byte		"pcx_CANdb_TransmitMessage_msg_handle"
	.byte		0
	.4byte		.L5459
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_msg_handle
	.section	.debug_info,,n
.L6530:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1377
	.byte		"pcx_CANdb_TransmitMessage1_msg_handle"
	.byte		0
	.4byte		.L5459
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_msg_handle
	.section	.debug_info,,n
.L6531:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1378
	.byte		"pcx_CANdb_TransmitMessage6_msg_handle"
	.byte		0
	.4byte		.L5459
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_msg_handle
	.section	.debug_info,,n
.L6532:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1379
	.byte		"pcx_CANdb_TransmitMessage2_msg_handle"
	.byte		0
	.4byte		.L5459
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_msg_handle
	.section	.debug_info,,n
.L6533:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1380
	.byte		"pcx_CANdb_TransmitMessage3_msg_handle"
	.byte		0
	.4byte		.L5459
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_msg_handle
	.section	.debug_info,,n
.L6534:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1381
	.byte		"pcx_CANdb_TransmitMessage4_msg_handle"
	.byte		0
	.4byte		.L5459
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_msg_handle
	.section	.debug_info,,n
.L6535:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1382
	.byte		"pcx_CANdb_TransmitMessage5_msg_handle"
	.byte		0
	.4byte		.L5459
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_msg_handle
	.section	.debug_info,,n
.L6536:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1383
	.byte		"pcx_CANdb_TransmitMessage7_msg_handle"
	.byte		0
	.4byte		.L5459
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage7_msg_handle
	.section	.debug_info,,n
.L6537:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1384
	.byte		"pcx_CANdb_TransmitMessage8_msg_handle"
	.byte		0
	.4byte		.L5459
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage8_msg_handle
	.section	.debug_info,,n
.L6538:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1385
	.byte		"pcx_CANdb_ReceiveMessage_msg_handle"
	.byte		0
	.4byte		.L5459
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_msg_handle
	.section	.debug_info,,n
.L6539:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1386
	.byte		"pcx_CANdb_ReceiveMessage_p_msg_handle"
	.byte		0
	.4byte		.L5459
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_msg_handle
	.section	.debug_info,,n
.L6540:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1387
	.byte		"pcx_CANdb_ReceiveMessage_f_msg_handle"
	.byte		0
	.4byte		.L5459
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_f_msg_handle
	.section	.debug_info,,n
.L6541:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1388
	.byte		"pcx_CANdb_ReceiveMessage_e_msg_handle"
	.byte		0
	.4byte		.L5459
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_msg_handle
	.section	.debug_info,,n
.L6542:
	.sleb128	13
	.byte		0x1
	.4byte		.L5049
	.uleb128	267
	.byte		"ATV_M_"
	.byte		0
	.4byte		.L6373
	.sleb128	5
	.byte		0x3
	.4byte		ATV_M_
	.section	.debug_info,,n
.L6543:
	.sleb128	13
	.byte		0x1
	.4byte		.L5049
	.uleb128	296
	.byte		"S"
	.byte		0
	.4byte		.L6372
	.sleb128	5
	.byte		0x3
	.4byte		S
	.section	.debug_info,,n
.L6544:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1391
	.byte		"ATV_M"
	.byte		0
	.4byte		.L6545
	.sleb128	5
	.byte		0x3
	.4byte		ATV_M
	.section	.debug_info,,n
.L6546:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1299
	.byte		"atvc_throttleNeutralPoint"
	.byte		0
	.4byte		.L6507
	.sleb128	5
	.byte		0x3
	.4byte		atvc_throttleNeutralPoint
	.section	.debug_info,,n
.L6547:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1296
	.byte		"atvc_throttleMaxLimit"
	.byte		0
	.4byte		.L6507
	.sleb128	5
	.byte		0x3
	.4byte		atvc_throttleMaxLimit
	.section	.debug_info,,n
.L6548:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1246
	.byte		"atvc_an_in_sel_his"
	.byte		0
	.4byte		.L6549
	.sleb128	5
	.byte		0x3
	.4byte		atvc_an_in_sel_his
	.section	.debug_info,,n
.L6551:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1253
	.byte		"atvc_an_in_sel_th"
	.byte		0
	.4byte		.L6549
	.sleb128	5
	.byte		0x3
	.4byte		atvc_an_in_sel_th
	.section	.debug_info,,n
.L6552:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1278
	.byte		"atvc_brakePedalHis"
	.byte		0
	.4byte		.L6507
	.sleb128	5
	.byte		0x3
	.4byte		atvc_brakePedalHis
	.section	.debug_info,,n
.L6553:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1281
	.byte		"atvc_brakePedalOn"
	.byte		0
	.4byte		.L6507
	.sleb128	5
	.byte		0x3
	.4byte		atvc_brakePedalOn
	.section	.debug_info,,n
.L6554:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1263
	.byte		"atvc_GenWarmUpCurrent"
	.byte		0
	.4byte		.L6555
	.sleb128	5
	.byte		0x3
	.4byte		atvc_GenWarmUpCurrent
	.section	.debug_info,,n
.L6557:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1290
	.byte		"atvc_maxDischCurr"
	.byte		0
	.4byte		.L6507
	.sleb128	5
	.byte		0x3
	.4byte		atvc_maxDischCurr
	.section	.debug_info,,n
.L6558:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1293
	.byte		"atvc_maxRegenCurr"
	.byte		0
	.4byte		.L6507
	.sleb128	5
	.byte		0x3
	.4byte		atvc_maxRegenCurr
	.section	.debug_info,,n
.L6559:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1260
	.byte		"atvc_GenTestCurrent"
	.byte		0
	.4byte		.L6555
	.sleb128	5
	.byte		0x3
	.4byte		atvc_GenTestCurrent
	.section	.debug_info,,n
.L6560:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1272
	.byte		"atvc_RpmEndWarmUp"
	.byte		0
	.4byte		.L6507
	.sleb128	5
	.byte		0x3
	.4byte		atvc_RpmEndWarmUp
	.section	.debug_info,,n
.L6561:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1284
	.byte		"atvc_footBrakeIce"
	.byte		0
	.4byte		.L6507
	.sleb128	5
	.byte		0x3
	.4byte		atvc_footBrakeIce
	.section	.debug_info,,n
.L6562:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1316
	.byte		"atvc_maxTempInv"
	.byte		0
	.4byte		.L6516
	.sleb128	5
	.byte		0x3
	.4byte		atvc_maxTempInv
	.section	.debug_info,,n
.L6563:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1322
	.byte		"atvc_maxTempMotor"
	.byte		0
	.4byte		.L6516
	.sleb128	5
	.byte		0x3
	.4byte		atvc_maxTempMotor
	.section	.debug_info,,n
.L6564:
	.sleb128	13
	.byte		0x1
	.4byte		.L6423
	.uleb128	1307
	.byte		"atvc_FanTest"
	.byte		0
	.4byte		.L6516
	.sleb128	5
	.byte		0x3
	.4byte		atvc_FanTest
	.section	.debug_info,,n
.L6374:
	.sleb128	14
	.4byte		.L6565
	.uleb128	21
	.4byte		.L6566-.L2
	.byte		"tag_RTM_ATV_T"
	.byte		0
	.uleb128	580
	.section	.debug_info,,n
.L3682:
	.sleb128	15
	.byte		"path"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3683:
	.sleb128	15
	.byte		"modelName"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L3684:
	.sleb128	15
	.byte		"childSfunctions"
	.byte		0
	.4byte		.L6570
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L3685:
	.sleb128	15
	.byte		"errorStatus"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L3686:
	.sleb128	15
	.byte		"simMode"
	.byte		0
	.4byte		.L6573
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L3687:
	.sleb128	15
	.byte		"extModeInfo"
	.byte		0
	.4byte		.L6575
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3688:
	.sleb128	15
	.byte		"solverInfo"
	.byte		0
	.4byte		.L6578
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3689:
	.sleb128	15
	.byte		"solverInfoPtr"
	.byte		0
	.4byte		.L6581
	.sleb128	3
	.byte		0x23
	.uleb128	232
.L3690:
	.sleb128	15
	.byte		"sfcnInfo"
	.byte		0
	.4byte		.L5416
	.sleb128	3
	.byte		0x23
	.uleb128	236
.L3691:
	.sleb128	15
	.byte		"blockIO"
	.byte		0
	.4byte		.L5416
	.sleb128	3
	.byte		0x23
	.uleb128	240
.L3692:
	.sleb128	15
	.byte		"constBlockIO"
	.byte		0
	.4byte		.L6582
	.sleb128	3
	.byte		0x23
	.uleb128	244
.L3693:
	.sleb128	15
	.byte		"defaultParam"
	.byte		0
	.4byte		.L5416
	.sleb128	3
	.byte		0x23
	.uleb128	248
.L3694:
	.sleb128	15
	.byte		"prevZCSigState"
	.byte		0
	.4byte		.L6584
	.sleb128	3
	.byte		0x23
	.uleb128	252
.L3695:
	.sleb128	15
	.byte		"contStates"
	.byte		0
	.4byte		.L6586
	.sleb128	3
	.byte		0x23
	.uleb128	256
.L3696:
	.sleb128	15
	.byte		"periodicContStateIndices"
	.byte		0
	.4byte		.L5418
	.sleb128	3
	.byte		0x23
	.uleb128	260
.L3697:
	.sleb128	15
	.byte		"periodicContStateRanges"
	.byte		0
	.4byte		.L6586
	.sleb128	3
	.byte		0x23
	.uleb128	264
.L3698:
	.sleb128	15
	.byte		"derivs"
	.byte		0
	.4byte		.L6586
	.sleb128	3
	.byte		0x23
	.uleb128	268
.L3699:
	.sleb128	15
	.byte		"zcSignalValues"
	.byte		0
	.4byte		.L5416
	.sleb128	3
	.byte		0x23
	.uleb128	272
.L3700:
	.sleb128	15
	.byte		"inputs"
	.byte		0
	.4byte		.L5416
	.sleb128	3
	.byte		0x23
	.uleb128	276
.L3701:
	.sleb128	15
	.byte		"outputs"
	.byte		0
	.4byte		.L5416
	.sleb128	3
	.byte		0x23
	.uleb128	280
.L3702:
	.sleb128	15
	.byte		"contStateDisabled"
	.byte		0
	.4byte		.L6587
	.sleb128	3
	.byte		0x23
	.uleb128	284
.L3703:
	.sleb128	15
	.byte		"zCCacheNeedsReset"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	288
.L3704:
	.sleb128	15
	.byte		"derivCacheNeedsReset"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	289
.L3705:
	.sleb128	15
	.byte		"CTOutputIncnstWithState"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	290
.L3706:
	.sleb128	15
	.byte		"dwork"
	.byte		0
	.4byte		.L5416
	.sleb128	3
	.byte		0x23
	.uleb128	292
.L3707:
	.sleb128	15
	.byte		"Sizes"
	.byte		0
	.4byte		.L6588
	.sleb128	3
	.byte		0x23
	.uleb128	296
.L3708:
	.sleb128	15
	.byte		"SpecialInfo"
	.byte		0
	.4byte		.L6589
	.sleb128	3
	.byte		0x23
	.uleb128	380
.L3709:
	.sleb128	15
	.byte		"Timing"
	.byte		0
	.4byte		.L6590
	.sleb128	3
	.byte		0x23
	.uleb128	388
	.sleb128	0
.L6566:
	.section	.debug_info,,n
.L6590:
	.sleb128	16
	.4byte		.L6591-.L2
	.uleb128	192
.L3651:
	.sleb128	15
	.byte		"stepSize"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3652:
	.sleb128	15
	.byte		"clockTick0"
	.byte		0
	.4byte		.L5053
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L3653:
	.sleb128	15
	.byte		"clockTickH0"
	.byte		0
	.4byte		.L5053
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L3654:
	.sleb128	15
	.byte		"stepSize0"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L3655:
	.sleb128	15
	.byte		"clockTick1"
	.byte		0
	.4byte		.L5053
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L3656:
	.sleb128	15
	.byte		"clockTickH1"
	.byte		0
	.4byte		.L5053
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3657:
	.sleb128	15
	.byte		"stepSize1"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3658:
	.sleb128	15
	.byte		"clockTick2"
	.byte		0
	.4byte		.L5053
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L3659:
	.sleb128	15
	.byte		"clockTickH2"
	.byte		0
	.4byte		.L5053
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L3660:
	.sleb128	15
	.byte		"stepSize2"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L3661:
	.sleb128	15
	.byte		"TaskCounters"
	.byte		0
	.4byte		.L6592
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L3662:
	.sleb128	15
	.byte		"RateInteraction"
	.byte		0
	.4byte		.L6593
	.sleb128	2
	.byte		0x23
	.uleb128	43
.L3663:
	.sleb128	15
	.byte		"tStart"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L3664:
	.sleb128	15
	.byte		"tFinal"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L3665:
	.sleb128	15
	.byte		"timeOfLastOutput"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L3666:
	.sleb128	15
	.byte		"timingData"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L3667:
	.sleb128	15
	.byte		"varNextHitTimesList"
	.byte		0
	.4byte		.L6586
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L3668:
	.sleb128	15
	.byte		"simTimeStep"
	.byte		0
	.4byte		.L6594
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L3669:
	.sleb128	15
	.byte		"stopRequestedFlag"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L3670:
	.sleb128	15
	.byte		"sampleTimes"
	.byte		0
	.4byte		.L6596
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L3671:
	.sleb128	15
	.byte		"offsetTimes"
	.byte		0
	.4byte		.L6596
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L3672:
	.sleb128	15
	.byte		"sampleTimeTaskIDPtr"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L3673:
	.sleb128	15
	.byte		"sampleHits"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L3674:
	.sleb128	15
	.byte		"perTaskSampleHits"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L3675:
	.sleb128	15
	.byte		"t"
	.byte		0
	.4byte		.L6596
	.sleb128	2
	.byte		0x23
	.uleb128	92
.L3676:
	.sleb128	15
	.byte		"sampleTimesArray"
	.byte		0
	.4byte		.L6597
	.sleb128	2
	.byte		0x23
	.uleb128	96
.L3677:
	.sleb128	15
	.byte		"offsetTimesArray"
	.byte		0
	.4byte		.L6599
	.sleb128	2
	.byte		0x23
	.uleb128	108
.L3678:
	.sleb128	15
	.byte		"sampleTimeTaskIDArray"
	.byte		0
	.4byte		.L6601
	.sleb128	2
	.byte		0x23
	.uleb128	120
.L3679:
	.sleb128	15
	.byte		"sampleHitArray"
	.byte		0
	.4byte		.L6603
	.sleb128	3
	.byte		0x23
	.uleb128	132
.L3680:
	.sleb128	15
	.byte		"perTaskSampleHitsArray"
	.byte		0
	.4byte		.L6605
	.sleb128	3
	.byte		0x23
	.uleb128	144
.L3681:
	.sleb128	15
	.byte		"tArray"
	.byte		0
	.4byte		.L6607
	.sleb128	3
	.byte		0x23
	.uleb128	180
	.sleb128	0
.L6591:
.L6593:
	.sleb128	16
	.4byte		.L6609-.L2
	.uleb128	1
.L3650:
	.sleb128	15
	.byte		"TID0_1"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6609:
.L6592:
	.sleb128	16
	.4byte		.L6610-.L2
	.uleb128	3
.L3649:
	.sleb128	15
	.byte		"TID"
	.byte		0
	.4byte		.L6611
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6610:
.L6589:
	.sleb128	16
	.4byte		.L6613-.L2
	.uleb128	8
.L3647:
	.sleb128	15
	.byte		"mappingInfo"
	.byte		0
	.4byte		.L6582
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3648:
	.sleb128	15
	.byte		"xpcData"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L6613:
.L6588:
	.sleb128	16
	.4byte		.L6614-.L2
	.uleb128	84
.L3629:
	.sleb128	15
	.byte		"checksums"
	.byte		0
	.4byte		.L6615
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3630:
	.sleb128	15
	.byte		"options"
	.byte		0
	.4byte		.L5053
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L3631:
	.sleb128	15
	.byte		"numContStates"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3632:
	.sleb128	15
	.byte		"numPeriodicContStates"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3633:
	.sleb128	15
	.byte		"numU"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L3634:
	.sleb128	15
	.byte		"numY"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L3635:
	.sleb128	15
	.byte		"numSampTimes"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L3636:
	.sleb128	15
	.byte		"numBlocks"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L3637:
	.sleb128	15
	.byte		"numBlockIO"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L3638:
	.sleb128	15
	.byte		"numBlockPrms"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L3639:
	.sleb128	15
	.byte		"numDwork"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L3640:
	.sleb128	15
	.byte		"numSFcnPrms"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L3641:
	.sleb128	15
	.byte		"numSFcns"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L3642:
	.sleb128	15
	.byte		"numIports"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L3643:
	.sleb128	15
	.byte		"numOports"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L3644:
	.sleb128	15
	.byte		"numNonSampZCs"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L3645:
	.sleb128	15
	.byte		"sysDirFeedThru"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L3646:
	.sleb128	15
	.byte		"rtwGenSfcn"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.sleb128	0
.L6614:
.L6428:
	.sleb128	16
	.4byte		.L6617-.L2
	.uleb128	88
.L3574:
	.sleb128	15
	.byte		"IceStartAttempCnt"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3575:
	.sleb128	15
	.byte		"PumpStB"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L3576:
	.sleb128	15
	.byte		"PumpStA"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L3577:
	.sleb128	15
	.byte		"PrevY"
	.byte		0
	.4byte		.L5520
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L3578:
	.sleb128	15
	.byte		"RateTransition6_Buffer0"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L3579:
	.sleb128	15
	.byte		"RateTransition7_Buffer0"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	18
.L3580:
	.sleb128	15
	.byte		"RateTransition10_Buffer0"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3581:
	.sleb128	15
	.byte		"RateTransition8_Buffer0"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	22
.L3582:
	.sleb128	15
	.byte		"RateTransition9_Buffer0"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3583:
	.sleb128	15
	.byte		"RateTransition11_Buffer0"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	26
.L3584:
	.sleb128	15
	.byte		"RateTransition12_Buffer0"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L3585:
	.sleb128	15
	.byte		"RateTransition24_Buffer0"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	30
.L3586:
	.sleb128	15
	.byte		"PrevY_k"
	.byte		0
	.4byte		.L6445
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L3587:
	.sleb128	15
	.byte		"PrevY_l"
	.byte		0
	.4byte		.L6445
	.sleb128	2
	.byte		0x23
	.uleb128	34
.L3588:
	.sleb128	15
	.byte		"temporalCounter_i1"
	.byte		0
	.4byte		.L6445
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L3589:
	.sleb128	15
	.byte		"temporalCounter_i1_f"
	.byte		0
	.4byte		.L6445
	.sleb128	2
	.byte		0x23
	.uleb128	38
.L3590:
	.sleb128	15
	.byte		"is_active_c3_ATV"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L3591:
	.sleb128	15
	.byte		"is_c3_ATV"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	41
.L3592:
	.sleb128	15
	.byte		"is_DRIVE_ENABLE"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	42
.L3593:
	.sleb128	15
	.byte		"is_HV_CTRL"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	43
.L3594:
	.sleb128	15
	.byte		"is_CHG_CTRL"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L3595:
	.sleb128	15
	.byte		"is_HEATER_CTRL"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	45
.L3596:
	.sleb128	15
	.byte		"is_STARTTRIGGER"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	46
.L3597:
	.sleb128	15
	.byte		"temporalCounter_i1_j"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	47
.L3598:
	.sleb128	15
	.byte		"temporalCounter_i2"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L3599:
	.sleb128	15
	.byte		"temporalCounter_i3"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	49
.L3600:
	.sleb128	15
	.byte		"is_active_c2_ATV"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	50
.L3601:
	.sleb128	15
	.byte		"is_IceSM"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	51
.L3602:
	.sleb128	15
	.byte		"is_MonitoraggioStatoICE"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L3603:
	.sleb128	15
	.byte		"is_WarmUpIce"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	53
.L3604:
	.sleb128	15
	.byte		"temporalCounter_i2_m"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	54
.L3605:
	.sleb128	15
	.byte		"is_active_c5_ATV"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	55
.L3606:
	.sleb128	15
	.byte		"is_PumpALogic"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L3607:
	.sleb128	15
	.byte		"is_PumpBLogic"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	57
.L3608:
	.sleb128	15
	.byte		"Relay2_Mode"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	58
.L3609:
	.sleb128	15
	.byte		"Relay3_Mode"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	59
.L3610:
	.sleb128	15
	.byte		"Relay1_Mode"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L3611:
	.sleb128	15
	.byte		"RateTransition4_Buffer0"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	61
.L3612:
	.sleb128	15
	.byte		"RateTransition5_Buffer0"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	62
.L3613:
	.sleb128	15
	.byte		"Relay_Mode"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	63
.L3614:
	.sleb128	15
	.byte		"Relay1_Mode_h"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L3615:
	.sleb128	15
	.byte		"Relay2_Mode_m"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	65
.L3616:
	.sleb128	15
	.byte		"Relay3_Mode_d"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	66
.L3617:
	.sleb128	15
	.byte		"Relay4_Mode"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	67
.L3618:
	.sleb128	15
	.byte		"Relay5_Mode"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L3619:
	.sleb128	15
	.byte		"Relay1_Mode_b"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	69
.L3620:
	.sleb128	15
	.byte		"Relay_Mode_b"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	70
.L3621:
	.sleb128	15
	.byte		"Relay5_Mode_e"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	71
.L3622:
	.sleb128	15
	.byte		"Relay4_Mode_b"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L3623:
	.sleb128	15
	.byte		"startBtnArmed"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	73
.L3624:
	.sleb128	15
	.byte		"ReqGen_prev"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	74
.L3625:
	.sleb128	15
	.byte		"ReqGen_start"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	75
.L3626:
	.sleb128	15
	.byte		"sf_Chart_l"
	.byte		0
	.4byte		.L5431
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L3627:
	.sleb128	15
	.byte		"sf_Chart_b"
	.byte		0
	.4byte		.L5431
	.sleb128	2
	.byte		0x23
	.uleb128	79
.L3628:
	.sleb128	15
	.byte		"sf_Chart"
	.byte		0
	.4byte		.L5431
	.sleb128	2
	.byte		0x23
	.uleb128	82
	.sleb128	0
.L6617:
.L6425:
	.sleb128	16
	.4byte		.L6618-.L2
	.uleb128	184
.L3471:
	.sleb128	15
	.byte		"pai_BasicAnalogInput"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3472:
	.sleb128	15
	.byte		"psc_CpuLoading"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L3473:
	.sleb128	15
	.byte		"Saturation"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L3474:
	.sleb128	15
	.byte		"pdx_PWMOutput"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L3475:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o4"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L3476:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o5"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3477:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o6"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3478:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o4_f"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L3479:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o5_m"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L3480:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o7"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L3481:
	.sleb128	15
	.byte		"pai_BasicAnalogInput2"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L3482:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o4_n"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L3483:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o5_mv"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L3484:
	.sleb128	15
	.byte		"atv_bms_pack_current"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L3485:
	.sleb128	15
	.byte		"atv_bms_pack_soh"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L3486:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o9"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L3487:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o6_n"
	.byte		0
	.4byte		.L5520
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L3488:
	.sleb128	15
	.byte		"Cast2"
	.byte		0
	.4byte		.L6445
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L3489:
	.sleb128	15
	.byte		"Cast1"
	.byte		0
	.4byte		.L6445
	.sleb128	2
	.byte		0x23
	.uleb128	70
.L3490:
	.sleb128	15
	.byte		"tHROTTLEGen_X1000_out"
	.byte		0
	.4byte		.L6445
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L3491:
	.sleb128	15
	.byte		"footBrake_X1000_out"
	.byte		0
	.4byte		.L6445
	.sleb128	2
	.byte		0x23
	.uleb128	74
.L3492:
	.sleb128	15
	.byte		"RateTransition6"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L3493:
	.sleb128	15
	.byte		"RateTransition7"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	78
.L3494:
	.sleb128	15
	.byte		"RateTransition10"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L3495:
	.sleb128	15
	.byte		"RateTransition8"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	82
.L3496:
	.sleb128	15
	.byte		"RateTransition9"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L3497:
	.sleb128	15
	.byte		"RateTransition11"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	86
.L3498:
	.sleb128	15
	.byte		"RateTransition12"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L3499:
	.sleb128	15
	.byte		"RateTransition24"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	90
.L3500:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o4_k"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	92
.L3501:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o5_c"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	94
.L3502:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o6_o"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	96
.L3503:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o7_p"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	98
.L3504:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o8"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	100
.L3505:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o9_b"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	102
.L3506:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o10"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	104
.L3507:
	.sleb128	15
	.byte		"atv_v_dbg_T_FMot"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	106
.L3508:
	.sleb128	15
	.byte		"atv_v_dbg_T_FInv"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	108
.L3509:
	.sleb128	15
	.byte		"atv_v_dbg_T_RMot"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	110
.L3510:
	.sleb128	15
	.byte		"atv_v_dbg_T_RInv"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	112
.L3511:
	.sleb128	15
	.byte		"atv_v_dbg_T_GMot"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	114
.L3512:
	.sleb128	15
	.byte		"atv_v_dbg_T_GInv"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	116
.L3513:
	.sleb128	15
	.byte		"atv_v_dbg_T_Rad"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	118
.L3514:
	.sleb128	15
	.byte		"Saturation_a"
	.byte		0
	.4byte		.L5459
	.sleb128	2
	.byte		0x23
	.uleb128	120
.L3515:
	.sleb128	15
	.byte		"RateTransition7_p"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	122
.L3516:
	.sleb128	15
	.byte		"LogicalOperator3"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	123
.L3517:
	.sleb128	15
	.byte		"RateTransition4"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	124
.L3518:
	.sleb128	15
	.byte		"RateTransition5"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	125
.L3519:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	126
.L3520:
	.sleb128	15
	.byte		"RateTransition4_b"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	127
.L3521:
	.sleb128	15
	.byte		"RateTransition"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	128
.L3522:
	.sleb128	15
	.byte		"RateTransition1"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	129
.L3523:
	.sleb128	15
	.byte		"RateTransition2"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	130
.L3524:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage1"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	131
.L3525:
	.sleb128	15
	.byte		"Switch"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	132
.L3526:
	.sleb128	15
	.byte		"RateTransition3"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	133
.L3527:
	.sleb128	15
	.byte		"RateTransition5_g"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	134
.L3528:
	.sleb128	15
	.byte		"RateTransition6_p"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	135
.L3529:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage6"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	136
.L3530:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage2"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	137
.L3531:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage3"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	138
.L3532:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage4"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	139
.L3533:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage5"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	140
.L3534:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage7"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	141
.L3535:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage8"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	142
.L3536:
	.sleb128	15
	.byte		"pdx_DigitalOutput"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	143
.L3537:
	.sleb128	15
	.byte		"pdx_DigitalOutput1"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	144
.L3538:
	.sleb128	15
	.byte		"pdx_DigitalOutput2"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	145
.L3539:
	.sleb128	15
	.byte		"pdx_DigitalOutput3"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	146
.L3540:
	.sleb128	15
	.byte		"pdx_DigitalOutput4"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	147
.L3541:
	.sleb128	15
	.byte		"pdx_DigitalOutput5"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	148
.L3542:
	.sleb128	15
	.byte		"pdx_DigitalOutput6"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	149
.L3543:
	.sleb128	15
	.byte		"pdx_DigitalOutput7"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	150
.L3544:
	.sleb128	15
	.byte		"pdx_DigitalOutput8"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	151
.L3545:
	.sleb128	15
	.byte		"pdx_DigitalOutput9"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	152
.L3546:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o1"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	153
.L3547:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o2"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	154
.L3548:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o3"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	155
.L3549:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o1_k"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	156
.L3550:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o2_d"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	157
.L3551:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o3_b"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	158
.L3552:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o1_g"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	159
.L3553:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o2_n"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	160
.L3554:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o3_d"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	161
.L3555:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o1_n"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	162
.L3556:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o2_l"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	163
.L3557:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o3_p"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	164
.L3558:
	.sleb128	15
	.byte		"pdx_DigitalOutput_b"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	165
.L3559:
	.sleb128	15
	.byte		"pdx_DigitalOutput1_i"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	166
.L3560:
	.sleb128	15
	.byte		"pdx_DigitalOutput2_p"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	167
.L3561:
	.sleb128	15
	.byte		"pdx_DigitalOutput3_l"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	168
.L3562:
	.sleb128	15
	.byte		"hvp_ctrl_out"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	169
.L3563:
	.sleb128	15
	.byte		"hvm_ctrl_out"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	170
.L3564:
	.sleb128	15
	.byte		"chg_ctrl_out"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	171
.L3565:
	.sleb128	15
	.byte		"heater_ctrl_out"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	172
.L3566:
	.sleb128	15
	.byte		"en_inv_rear_out"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	173
.L3567:
	.sleb128	15
	.byte		"en_inv_front_out"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	174
.L3568:
	.sleb128	15
	.byte		"en_inv_gen_out"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	175
.L3569:
	.sleb128	15
	.byte		"GenFwd_out"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	176
.L3570:
	.sleb128	15
	.byte		"FS1_out"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	177
.L3571:
	.sleb128	15
	.byte		"sf_Chart_l"
	.byte		0
	.4byte		.L5441
	.sleb128	3
	.byte		0x23
	.uleb128	178
.L3572:
	.sleb128	15
	.byte		"sf_Chart_b"
	.byte		0
	.4byte		.L5441
	.sleb128	3
	.byte		0x23
	.uleb128	179
.L3573:
	.sleb128	15
	.byte		"sf_Chart"
	.byte		0
	.4byte		.L5441
	.sleb128	3
	.byte		0x23
	.uleb128	180
	.sleb128	0
.L6618:
.L5432:
	.sleb128	16
	.4byte		.L6619-.L2
	.uleb128	3
.L3468:
	.sleb128	15
	.byte		"is_active_c1_ATV"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3469:
	.sleb128	15
	.byte		"is_c1_ATV"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	1
.L3470:
	.sleb128	15
	.byte		"temporalCounter_i1"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.sleb128	0
.L6619:
.L5442:
	.sleb128	16
	.4byte		.L6620-.L2
	.uleb128	1
.L3467:
	.sleb128	15
	.byte		"out"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6620:
.L6528:
	.sleb128	16
	.4byte		.L6621-.L2
	.uleb128	12
.L2605:
	.sleb128	15
	.byte		"set_sum"
	.byte		0
	.4byte		.L5582
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L2606:
	.sleb128	15
	.byte		"reset_sum"
	.byte		0
	.4byte		.L5582
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L2607:
	.sleb128	15
	.byte		"steady_state"
	.byte		0
	.4byte		.L5575
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.sleb128	0
.L6621:
.L6421:
	.sleb128	16
	.4byte		.L6622-.L2
	.uleb128	12
.L2358:
	.sleb128	15
	.byte		"dispatch_fn"
	.byte		0
	.4byte		.L6623
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L2359:
	.sleb128	15
	.byte		"ready_taskset"
	.byte		0
	.4byte		.L6626
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L2360:
	.sleb128	15
	.byte		"dispatch_ceiling"
	.byte		0
	.4byte		.L6626
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.sleb128	0
.L6622:
.L5551:
	.sleb128	16
	.4byte		.L6627-.L2
	.uleb128	12
.L1642:
	.sleb128	15
	.byte		"chunks"
	.byte		0
	.4byte		.L6628
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6627:
.L5543:
	.sleb128	16
	.4byte		.L6630-.L2
	.uleb128	8
.L1636:
	.sleb128	15
	.byte		"chunks"
	.byte		0
	.4byte		.L6631
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6630:
.L6572:
	.sleb128	14
	.4byte		.L6633
	.uleb128	101
	.4byte		.L6634-.L2
	.byte		"SimStruct_tag"
	.byte		0
	.uleb128	508
.L1323:
	.sleb128	15
	.byte		"modelName"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1324:
	.sleb128	15
	.byte		"path"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1325:
	.sleb128	15
	.byte		"parent"
	.byte		0
	.4byte		.L6635
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1326:
	.sleb128	15
	.byte		"root"
	.byte		0
	.4byte		.L6635
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1327:
	.sleb128	15
	.byte		"errorStatus"
	.byte		0
	.4byte		.L6637
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1328:
	.sleb128	15
	.byte		"sizes"
	.byte		0
	.4byte		.L6638
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1329:
	.sleb128	15
	.byte		"portInfo"
	.byte		0
	.4byte		.L6639
	.sleb128	3
	.byte		0x23
	.uleb128	172
.L1330:
	.sleb128	15
	.byte		"sfcnParams"
	.byte		0
	.4byte		.L6640
	.sleb128	3
	.byte		0x23
	.uleb128	196
.L1331:
	.sleb128	15
	.byte		"states"
	.byte		0
	.4byte		.L6641
	.sleb128	3
	.byte		0x23
	.uleb128	216
.L1332:
	.sleb128	15
	.byte		"work"
	.byte		0
	.4byte		.L6642
	.sleb128	3
	.byte		0x23
	.uleb128	272
.L1333:
	.sleb128	15
	.byte		"blkInfo"
	.byte		0
	.4byte		.L6643
	.sleb128	3
	.byte		0x23
	.uleb128	304
.L1334:
	.sleb128	15
	.byte		"mdlInfo"
	.byte		0
	.4byte		.L6644
	.sleb128	3
	.byte		0x23
	.uleb128	332
.L1335:
	.sleb128	15
	.byte		"callSys"
	.byte		0
	.4byte		.L6646
	.sleb128	3
	.byte		0x23
	.uleb128	336
.L1336:
	.sleb128	15
	.byte		"regDataType"
	.byte		0
	.4byte		.L6647
	.sleb128	3
	.byte		0x23
	.uleb128	352
.L1337:
	.sleb128	15
	.byte		"stInfo"
	.byte		0
	.4byte		.L6648
	.sleb128	3
	.byte		0x23
	.uleb128	388
.L1338:
	.sleb128	15
	.byte		"modelMethods"
	.byte		0
	.4byte		.L6649
	.sleb128	3
	.byte		0x23
	.uleb128	408
.L1339:
	.sleb128	15
	.byte		"sFunctions"
	.byte		0
	.4byte		.L6570
	.sleb128	3
	.byte		0x23
	.uleb128	504
	.sleb128	0
.L6634:
.L6649:
	.sleb128	16
	.4byte		.L6650-.L2
	.uleb128	96
.L1322:
	.sleb128	15
	.byte		"sFcn"
	.byte		0
	.4byte		.L6651
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6650:
	.section	.debug_info,,n
.L6637:
	.sleb128	17
	.4byte		.L6652-.L2
	.uleb128	4
.L1320:
	.sleb128	15
	.byte		"str"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1321:
	.sleb128	15
	.byte		"msg"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6652:
.L6641:
	.sleb128	14
	.4byte		.L6653
	.uleb128	1979
	.4byte		.L6654-.L2
	.byte		"_ssStates"
	.byte		0
	.uleb128	56
.L1306:
	.sleb128	15
	.byte		"U"
	.byte		0
	.4byte		.L6655
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1307:
	.sleb128	15
	.byte		"Y"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1308:
	.sleb128	15
	.byte		"contStates"
	.byte		0
	.4byte		.L6586
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1309:
	.sleb128	15
	.byte		"discStates"
	.byte		0
	.4byte		.L6586
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1310:
	.sleb128	15
	.byte		"flags"
	.byte		0
	.4byte		.L6656
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1311:
	.sleb128	15
	.byte		"reserved2"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1312:
	.sleb128	15
	.byte		"dX"
	.byte		0
	.4byte		.L6586
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1313:
	.sleb128	15
	.byte		"contStateDisabled"
	.byte		0
	.4byte		.L6587
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1314:
	.sleb128	15
	.byte		"statesInfo2"
	.byte		0
	.4byte		.L6657
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L1315:
	.sleb128	15
	.byte		"nonsampledZCs"
	.byte		0
	.4byte		.L6586
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L1316:
	.sleb128	15
	.byte		"nonsampledZCDirs"
	.byte		0
	.4byte		.L6659
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L1317:
	.sleb128	15
	.byte		"jacobian"
	.byte		0
	.4byte		.L6662
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L1318:
	.sleb128	15
	.byte		"modelMethods2"
	.byte		0
	.4byte		.L6665
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L1319:
	.sleb128	15
	.byte		"reservedSize"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.sleb128	0
.L6654:
.L6656:
	.sleb128	16
	.4byte		.L6667-.L2
	.uleb128	4
	.section	.debug_info,,n
.L1302:
	.sleb128	18
	.byte		"alreadyWarned"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x0
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1303:
	.sleb128	18
	.byte		"skipContStatesConsistencyCheck"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x1
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1304:
	.sleb128	18
	.byte		"reserved13"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0xd
	.byte		0x2
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1305:
	.sleb128	18
	.byte		"reserved16"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x10
	.byte		0xf
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6667:
.L6655:
	.sleb128	17
	.4byte		.L6669-.L2
	.uleb128	4
.L1300:
	.sleb128	15
	.byte		"vect"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1301:
	.sleb128	15
	.byte		"uPtrs"
	.byte		0
	.4byte		.L6670
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6669:
.L6658:
	.sleb128	14
	.4byte		.L6653
	.uleb128	1970
	.4byte		.L6674-.L2
	.byte		"_ssStatesInfo2"
	.byte		0
	.uleb128	36
.L1295:
	.sleb128	15
	.byte		"prevZCSigState"
	.byte		0
	.4byte		.L6584
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1296:
	.sleb128	15
	.byte		"absTol"
	.byte		0
	.4byte		.L6586
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1297:
	.sleb128	15
	.byte		"absTolControl"
	.byte		0
	.4byte		.L6675
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1298:
	.sleb128	15
	.byte		"periodicStatesInfo"
	.byte		0
	.4byte		.L6676
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1299:
	.sleb128	15
	.byte		"reservedForFutureUse"
	.byte		0
	.4byte		.L6679
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L6674:
.L6678:
	.sleb128	14
	.4byte		.L6653
	.uleb128	1962
	.4byte		.L6681-.L2
	.byte		"ssPeriodicStatesInfo_T"
	.byte		0
	.uleb128	20
.L1290:
	.sleb128	15
	.byte		"globalContStateIndex"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1291:
	.sleb128	15
	.byte		"numPeriodicContStates"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1292:
	.sleb128	15
	.byte		"periodicContStateIndices"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1293:
	.sleb128	15
	.byte		"periodicContStateRanges"
	.byte		0
	.4byte		.L6586
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1294:
	.sleb128	15
	.byte		"periodicContStateCounters"
	.byte		0
	.4byte		.L5061
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L6681:
.L6666:
	.sleb128	14
	.4byte		.L6653
	.uleb128	1909
	.4byte		.L6682-.L2
	.byte		"_ssSFcnModelMethods2"
	.byte		0
	.uleb128	88
.L1269:
	.sleb128	15
	.byte		"mdlProjection"
	.byte		0
	.4byte		.L6683
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1270:
	.sleb128	15
	.byte		"mdlJacobian"
	.byte		0
	.4byte		.L6687
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1271:
	.sleb128	15
	.byte		"mdlSetInputPortFrameData"
	.byte		0
	.4byte		.L6691
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1272:
	.sleb128	15
	.byte		"strictBooleanCheckEnabledFcn"
	.byte		0
	.4byte		.L6697
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1273:
	.sleb128	15
	.byte		"mdlSetDefaultPortDimensions"
	.byte		0
	.4byte		.L6701
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1274:
	.sleb128	15
	.byte		"mdlSetDefaultPortDataTypes"
	.byte		0
	.4byte		.L6705
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1275:
	.sleb128	15
	.byte		"mdlSetDefaultPortComplexSignals"
	.byte		0
	.4byte		.L6709
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1276:
	.sleb128	15
	.byte		"ConvertBuiltInDType"
	.byte		0
	.4byte		.L6713
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1277:
	.sleb128	15
	.byte		"resolveCBK"
	.byte		0
	.4byte		.L6718
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L1278:
	.sleb128	15
	.byte		"extModeLogFcn"
	.byte		0
	.4byte		.L6719
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L1279:
	.sleb128	15
	.byte		"mdlExtModeExec"
	.byte		0
	.4byte		.L6728
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L1280:
	.sleb128	15
	.byte		"mdlRTWCG"
	.byte		0
	.4byte		.L6732
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L1281:
	.sleb128	15
	.byte		"mdlMassMatrix"
	.byte		0
	.4byte		.L6738
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L1282:
	.sleb128	15
	.byte		"modelMethods4"
	.byte		0
	.4byte		.L6742
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L1283:
	.sleb128	15
	.byte		"mdlForcingFunction"
	.byte		0
	.4byte		.L6744
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L1284:
	.sleb128	15
	.byte		"mdlEnable"
	.byte		0
	.4byte		.L6748
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L1285:
	.sleb128	15
	.byte		"mdlDisable"
	.byte		0
	.4byte		.L6752
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L1286:
	.sleb128	15
	.byte		"mdlSimStatusChange"
	.byte		0
	.4byte		.L6756
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L1287:
	.sleb128	15
	.byte		"mdlInitializePropagationPass"
	.byte		0
	.4byte		.L6762
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L1288:
	.sleb128	15
	.byte		"constraintsInfo"
	.byte		0
	.4byte		.L6768
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L1289:
	.sleb128	15
	.byte		"modelMethods3"
	.byte		0
	.4byte		.L6770
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.sleb128	0
.L6682:
.L6771:
	.sleb128	14
	.4byte		.L6653
	.uleb128	1896
	.4byte		.L6772-.L2
	.byte		"_ssSFcnModelMethods3"
	.byte		0
	.uleb128	48
.L1263:
	.sleb128	15
	.byte		"massMatrix"
	.byte		0
	.4byte		.L6773
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1264:
	.sleb128	15
	.byte		"mdlInitSystemMatrices"
	.byte		0
	.4byte		.L6774
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1265:
	.sleb128	15
	.byte		"numSlvrJacobianNzmax"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L1266:
	.sleb128	15
	.byte		"slvrJacobianMatrix"
	.byte		0
	.4byte		.L6662
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L1267:
	.sleb128	15
	.byte		"mdlJacobianIrJc"
	.byte		0
	.4byte		.L6778
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L1268:
	.sleb128	15
	.byte		"reservedForFutureUse"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.sleb128	0
.L6772:
.L6743:
	.sleb128	14
	.4byte		.L6653
	.uleb128	1883
	.4byte		.L6782-.L2
	.byte		"_ssSFcnModelMethods4"
	.byte		0
	.uleb128	60
.L1255:
	.sleb128	15
	.byte		"mdlSetInputPortSymbolicDimensions"
	.byte		0
	.4byte		.L6783
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1256:
	.sleb128	15
	.byte		"mdlSetOutputPortSymbolicDimensions"
	.byte		0
	.4byte		.L6788
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1257:
	.sleb128	15
	.byte		"mdlSetupRuntimeResources"
	.byte		0
	.4byte		.L6792
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1258:
	.sleb128	15
	.byte		"mdlCleanupRuntimeResources"
	.byte		0
	.4byte		.L6796
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1259:
	.sleb128	15
	.byte		"mdlDataTransferRead"
	.byte		0
	.4byte		.L6800
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1260:
	.sleb128	15
	.byte		"mdlDataTransferWrite"
	.byte		0
	.4byte		.L6804
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1261:
	.sleb128	15
	.byte		"mdlDataTransferInitBuffers"
	.byte		0
	.4byte		.L6808
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1262:
	.sleb128	15
	.byte		"reservedForFuture"
	.byte		0
	.4byte		.L6812
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.sleb128	0
.L6782:
.L6651:
	.sleb128	14
	.4byte		.L6653
	.uleb128	1806
	.4byte		.L6814-.L2
	.byte		"_ssSFcnModelMethods"
	.byte		0
	.uleb128	96
.L1231:
	.sleb128	15
	.byte		"mdlInitializeSizes"
	.byte		0
	.4byte		.L6815
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1232:
	.sleb128	15
	.byte		"mdlGetInputPortWidthLevel1"
	.byte		0
	.4byte		.L6819
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1233:
	.sleb128	15
	.byte		"mdlGetOutputPortWidthLevel1"
	.byte		0
	.4byte		.L6823
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1234:
	.sleb128	15
	.byte		"mdlSetInputPortDimensions"
	.byte		0
	.4byte		.L6827
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1235:
	.sleb128	15
	.byte		"mdlSetOutputPortDimensions"
	.byte		0
	.4byte		.L6828
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1236:
	.sleb128	15
	.byte		"mdlSetInputPortDataType"
	.byte		0
	.4byte		.L6829
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1237:
	.sleb128	15
	.byte		"mdlSetOutputPortDataType"
	.byte		0
	.4byte		.L6834
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1238:
	.sleb128	15
	.byte		"mdlInitializeSampleTimes"
	.byte		0
	.4byte		.L6838
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1239:
	.sleb128	15
	.byte		"mdlSetInputPortSampleTime"
	.byte		0
	.4byte		.L6842
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L1240:
	.sleb128	15
	.byte		"mdlSetOutputPortSampleTime"
	.byte		0
	.4byte		.L6846
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L1241:
	.sleb128	15
	.byte		"mdlSetWorkWidths"
	.byte		0
	.4byte		.L6850
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L1242:
	.sleb128	15
	.byte		"mdlRTW"
	.byte		0
	.4byte		.L6854
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L1243:
	.sleb128	15
	.byte		"mdlInitializeConditions"
	.byte		0
	.4byte		.L6858
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L1244:
	.sleb128	15
	.byte		"mdlStart"
	.byte		0
	.4byte		.L6859
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L1245:
	.sleb128	15
	.byte		"mdlCheckParameters"
	.byte		0
	.4byte		.L6863
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L1246:
	.sleb128	15
	.byte		"mdlProcessParameters"
	.byte		0
	.4byte		.L6867
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L1247:
	.sleb128	15
	.byte		"mdlGetTimeOfNextVarHit"
	.byte		0
	.4byte		.L6871
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L1248:
	.sleb128	15
	.byte		"mdlOutputs"
	.byte		0
	.4byte		.L6875
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L1249:
	.sleb128	15
	.byte		"mdlUpdate"
	.byte		0
	.4byte		.L6876
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L1250:
	.sleb128	15
	.byte		"mdlDerivatives"
	.byte		0
	.4byte		.L6877
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L1251:
	.sleb128	15
	.byte		"mdlZeroCrossings"
	.byte		0
	.4byte		.L6878
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L1252:
	.sleb128	15
	.byte		"mdlTerminate"
	.byte		0
	.4byte		.L6882
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L1253:
	.sleb128	15
	.byte		"fcnInEnable"
	.byte		0
	.4byte		.L6886
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L1254:
	.sleb128	15
	.byte		"fcnOutDisable"
	.byte		0
	.4byte		.L6887
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.sleb128	0
.L6814:
.L6887:
	.sleb128	17
	.4byte		.L6888-.L2
	.uleb128	4
.L1229:
	.sleb128	15
	.byte		"mdlSetOutputPortComplexSignal"
	.byte		0
	.4byte		.L6889
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1230:
	.sleb128	15
	.byte		"mdlDisable"
	.byte		0
	.4byte		.L6894
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6888:
.L6886:
	.sleb128	17
	.4byte		.L6898-.L2
	.uleb128	4
.L1227:
	.sleb128	15
	.byte		"mdlSetInputPortComplexSignal"
	.byte		0
	.4byte		.L6899
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1228:
	.sleb128	15
	.byte		"mdlEnable"
	.byte		0
	.4byte		.L6903
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6898:
.L6877:
	.sleb128	17
	.4byte		.L6907-.L2
	.uleb128	4
.L1225:
	.sleb128	15
	.byte		"level2"
	.byte		0
	.4byte		.L6908
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1226:
	.sleb128	15
	.byte		"level1"
	.byte		0
	.4byte		.L6912
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6907:
.L6876:
	.sleb128	17
	.4byte		.L6916-.L2
	.uleb128	4
.L1223:
	.sleb128	15
	.byte		"level2"
	.byte		0
	.4byte		.L6917
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1224:
	.sleb128	15
	.byte		"level1"
	.byte		0
	.4byte		.L6921
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6916:
.L6875:
	.sleb128	17
	.4byte		.L6925-.L2
	.uleb128	4
.L1221:
	.sleb128	15
	.byte		"level2"
	.byte		0
	.4byte		.L6926
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1222:
	.sleb128	15
	.byte		"level1"
	.byte		0
	.4byte		.L6930
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6925:
.L6858:
	.sleb128	17
	.4byte		.L6934-.L2
	.uleb128	4
.L1219:
	.sleb128	15
	.byte		"level2"
	.byte		0
	.4byte		.L6935
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1220:
	.sleb128	15
	.byte		"level1"
	.byte		0
	.4byte		.L6939
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6934:
.L6828:
	.sleb128	17
	.4byte		.L6943-.L2
	.uleb128	4
.L1217:
	.sleb128	15
	.byte		"mdlSetOutputPortWidth"
	.byte		0
	.4byte		.L6944
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1218:
	.sleb128	15
	.byte		"mdlSetOutputPortDims"
	.byte		0
	.4byte		.L6948
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6943:
.L6827:
	.sleb128	17
	.4byte		.L6956-.L2
	.uleb128	4
.L1215:
	.sleb128	15
	.byte		"mdlSetInputPortWidth"
	.byte		0
	.4byte		.L6957
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1216:
	.sleb128	15
	.byte		"mdlSetInputPortDims"
	.byte		0
	.4byte		.L6961
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6956:
.L6769:
	.sleb128	14
	.4byte		.L6653
	.uleb128	1798
	.4byte		.L6965-.L2
	.byte		"_ssConstraintsInfo"
	.byte		0
	.uleb128	12
.L1212:
	.sleb128	15
	.byte		"numConstraints"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1213:
	.sleb128	15
	.byte		"constraints"
	.byte		0
	.4byte		.L6586
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1214:
	.sleb128	15
	.byte		"mdlConstraints"
	.byte		0
	.4byte		.L6966
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.sleb128	0
.L6965:
.L6773:
	.sleb128	14
	.4byte		.L6653
	.uleb128	1789
	.4byte		.L6970-.L2
	.byte		"_ssMassMatrixInfo"
	.byte		0
	.uleb128	28
.L1210:
	.sleb128	15
	.byte		"type"
	.byte		0
	.4byte		.L6971
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1211:
	.sleb128	15
	.byte		"info"
	.byte		0
	.4byte		.L6973
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L6970:
.L6648:
	.sleb128	14
	.4byte		.L6653
	.uleb128	1585
	.4byte		.L6975-.L2
	.byte		"_ssStInfo"
	.byte		0
	.uleb128	20
.L1205:
	.sleb128	15
	.byte		"sampleTimes"
	.byte		0
	.4byte		.L6596
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1206:
	.sleb128	15
	.byte		"offsetTimes"
	.byte		0
	.4byte		.L6596
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1207:
	.sleb128	15
	.byte		"tNext"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1208:
	.sleb128	15
	.byte		"tNextTid"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1209:
	.sleb128	15
	.byte		"sampleTimeTaskIDs"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L6975:
.L6647:
	.sleb128	14
	.4byte		.L6653
	.uleb128	1554
	.4byte		.L6976-.L2
	.byte		"_ssRegDataType"
	.byte		0
	.uleb128	36
.L1196:
	.sleb128	15
	.byte		"arg1"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1197:
	.sleb128	15
	.byte		"registerFcn"
	.byte		0
	.4byte		.L6977
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1198:
	.sleb128	15
	.byte		"setSizeFcn"
	.byte		0
	.4byte		.L6981
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1199:
	.sleb128	15
	.byte		"getSizeFcn"
	.byte		0
	.4byte		.L6985
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1200:
	.sleb128	15
	.byte		"setZeroFcn"
	.byte		0
	.4byte		.L6989
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1201:
	.sleb128	15
	.byte		"getZeroFcn"
	.byte		0
	.4byte		.L6993
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1202:
	.sleb128	15
	.byte		"getNameFcn"
	.byte		0
	.4byte		.L6997
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1203:
	.sleb128	15
	.byte		"getIdFcn"
	.byte		0
	.4byte		.L7001
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1204:
	.sleb128	15
	.byte		"setNumDWorkFcn"
	.byte		0
	.4byte		.L7005
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.sleb128	0
.L6976:
.L6718:
	.sleb128	14
	.4byte		.L6653
	.uleb128	1525
	.4byte		.L7009-.L2
	.byte		"_ssResolveCBK"
	.byte		0
	.uleb128	8
.L1194:
	.sleb128	15
	.byte		"Resolver"
	.byte		0
	.4byte		.L7010
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1195:
	.sleb128	15
	.byte		"_slBlock"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L7009:
.L6646:
	.sleb128	14
	.4byte		.L6653
	.uleb128	1508
	.4byte		.L7019-.L2
	.byte		"_ssCallSys"
	.byte		0
	.uleb128	16
.L1190:
	.sleb128	15
	.byte		"outputs"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1191:
	.sleb128	15
	.byte		"args1"
	.byte		0
	.4byte		.L7020
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1192:
	.sleb128	15
	.byte		"args2"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1193:
	.sleb128	15
	.byte		"fcns"
	.byte		0
	.4byte		.L7021
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.sleb128	0
.L7019:
.L6645:
	.sleb128	14
	.4byte		.L6653
	.uleb128	1298
	.4byte		.L7027-.L2
	.byte		"_ssMdlInfo"
	.byte		0
	.uleb128	276
.L1124:
	.sleb128	15
	.byte		"simMode"
	.byte		0
	.4byte		.L6573
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1125:
	.sleb128	15
	.byte		"t"
	.byte		0
	.4byte		.L6596
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1126:
	.sleb128	15
	.byte		"sampleHits"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1127:
	.sleb128	15
	.byte		"tStart"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1128:
	.sleb128	15
	.byte		"tFinal"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1129:
	.sleb128	15
	.byte		"timeOfLastOutput"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1130:
	.sleb128	15
	.byte		"minStepSize"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1131:
	.sleb128	15
	.byte		"timingData"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1132:
	.sleb128	15
	.byte		"simTimeStep"
	.byte		0
	.4byte		.L6594
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L1133:
	.sleb128	15
	.byte		"stopRequested"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L1134:
	.sleb128	15
	.byte		"logOutput"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L1135:
	.sleb128	15
	.byte		"outputTimes"
	.byte		0
	.4byte		.L6596
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L1136:
	.sleb128	15
	.byte		"outputTimesIndex"
	.byte		0
	.4byte		.L7028
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L1137:
	.sleb128	15
	.byte		"numOutputTimes"
	.byte		0
	.4byte		.L7028
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L1138:
	.sleb128	15
	.byte		"outputTimesOnly"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L1139:
	.sleb128	15
	.byte		"obsoletedNeedOutputAtTPlusTol"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L1140:
	.sleb128	15
	.byte		"solverName"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L1141:
	.sleb128	15
	.byte		"variableStepSolver"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L1142:
	.sleb128	15
	.byte		"solverData"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L1143:
	.sleb128	15
	.byte		"solverStopTime"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L1144:
	.sleb128	15
	.byte		"stepSize"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L1145:
	.sleb128	15
	.byte		"solverNeedsReset"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L1146:
	.sleb128	15
	.byte		"mdlFlags"
	.byte		0
	.4byte		.L7029
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L1147:
	.sleb128	15
	.byte		"maxNumMinSteps"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	92
.L1148:
	.sleb128	15
	.byte		"solverRefineFactor"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	96
.L1149:
	.sleb128	15
	.byte		"solverRelTol"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	100
.L1150:
	.sleb128	15
	.byte		"solverAbsTol_Obsolete"
	.byte		0
	.4byte		.L6586
	.sleb128	2
	.byte		0x23
	.uleb128	104
.L1151:
	.sleb128	15
	.byte		"maxStepSize"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	108
.L1152:
	.sleb128	15
	.byte		"solverMaxOrder"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	112
.L1153:
	.sleb128	15
	.byte		"fixedStepSize"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	116
.L1154:
	.sleb128	15
	.byte		"numNonContDerivSigInfos"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	120
.L1155:
	.sleb128	15
	.byte		"nonContDerivSigInfos"
	.byte		0
	.4byte		.L7030
	.sleb128	2
	.byte		0x23
	.uleb128	124
.L1156:
	.sleb128	15
	.byte		"solverAbsTolControl_Obsolete"
	.byte		0
	.4byte		.L6675
	.sleb128	3
	.byte		0x23
	.uleb128	128
.L1157:
	.sleb128	15
	.byte		"timingBridge"
	.byte		0
	.4byte		.L7033
	.sleb128	3
	.byte		0x23
	.uleb128	132
.L1158:
	.sleb128	15
	.byte		"rtwLogInfo"
	.byte		0
	.4byte		.L7036
	.sleb128	3
	.byte		0x23
	.uleb128	136
.L1159:
	.sleb128	15
	.byte		"solverInfo"
	.byte		0
	.4byte		.L7039
	.sleb128	3
	.byte		0x23
	.uleb128	140
.L1160:
	.sleb128	15
	.byte		"errorStatusBuffer"
	.byte		0
	.4byte		.L7040
	.sleb128	3
	.byte		0x23
	.uleb128	144
.L1161:
	.sleb128	15
	.byte		"blkRTSGateway"
	.byte		0
	.4byte		.L7041
	.sleb128	3
	.byte		0x23
	.uleb128	148
.L1162:
	.sleb128	15
	.byte		"mexApiVoidPtr1"
	.byte		0
	.4byte		.L5416
	.sleb128	3
	.byte		0x23
	.uleb128	152
.L1163:
	.sleb128	15
	.byte		"solverExtrapolationOrder"
	.byte		0
	.4byte		.L5414
	.sleb128	3
	.byte		0x23
	.uleb128	156
.L1164:
	.sleb128	15
	.byte		"solverNumberNewtonIterations"
	.byte		0
	.4byte		.L5414
	.sleb128	3
	.byte		0x23
	.uleb128	160
.L1165:
	.sleb128	15
	.byte		"extModeInfo"
	.byte		0
	.4byte		.L6575
	.sleb128	3
	.byte		0x23
	.uleb128	164
.L1166:
	.sleb128	15
	.byte		"blockIO"
	.byte		0
	.4byte		.L5416
	.sleb128	3
	.byte		0x23
	.uleb128	168
.L1167:
	.sleb128	15
	.byte		"blockIOVarDims"
	.byte		0
	.4byte		.L7047
	.sleb128	3
	.byte		0x23
	.uleb128	172
.L1168:
	.sleb128	15
	.byte		"defaultParam"
	.byte		0
	.4byte		.L6586
	.sleb128	3
	.byte		0x23
	.uleb128	176
.L1169:
	.sleb128	15
	.byte		"mappingInfo"
	.byte		0
	.4byte		.L6582
	.sleb128	3
	.byte		0x23
	.uleb128	180
.L1170:
	.sleb128	15
	.byte		"mexApiInt2"
	.byte		0
	.4byte		.L5414
	.sleb128	3
	.byte		0x23
	.uleb128	184
.L1171:
	.sleb128	15
	.byte		"reservedString"
	.byte		0
	.4byte		.L7048
	.sleb128	3
	.byte		0x23
	.uleb128	188
.L1172:
	.sleb128	15
	.byte		"regInputPortDimsInfo"
	.byte		0
	.4byte		.L7050
	.sleb128	3
	.byte		0x23
	.uleb128	220
.L1173:
	.sleb128	15
	.byte		"regOutputPortDimsInfo"
	.byte		0
	.4byte		.L7054
	.sleb128	3
	.byte		0x23
	.uleb128	224
.L1174:
	.sleb128	15
	.byte		"reservedForXPC"
	.byte		0
	.4byte		.L5416
	.sleb128	3
	.byte		0x23
	.uleb128	228
.L1175:
	.sleb128	15
	.byte		"perTaskSampleHits"
	.byte		0
	.4byte		.L5418
	.sleb128	3
	.byte		0x23
	.uleb128	232
.L1176:
	.sleb128	15
	.byte		"solverMode"
	.byte		0
	.4byte		.L7058
	.sleb128	3
	.byte		0x23
	.uleb128	236
.L1177:
	.sleb128	15
	.byte		"rtwgenMode"
	.byte		0
	.4byte		.L7060
	.sleb128	3
	.byte		0x23
	.uleb128	240
.L1178:
	.sleb128	15
	.byte		"reservedForFutureInt"
	.byte		0
	.4byte		.L7062
	.sleb128	3
	.byte		0x23
	.uleb128	244
.L1179:
	.sleb128	15
	.byte		"mexApiReal1"
	.byte		0
	.4byte		.L5411
	.sleb128	3
	.byte		0x23
	.uleb128	252
.L1180:
	.sleb128	15
	.byte		"mexApiReal2"
	.byte		0
	.4byte		.L5411
	.sleb128	3
	.byte		0x23
	.uleb128	256
.L1181:
	.sleb128	15
	.byte		"timeOfNextSampleHit"
	.byte		0
	.4byte		.L6586
	.sleb128	3
	.byte		0x23
	.uleb128	260
.L1182:
	.sleb128	15
	.byte		"varNextHitTimesList"
	.byte		0
	.4byte		.L6586
	.sleb128	3
	.byte		0x23
	.uleb128	264
.L1183:
	.sleb128	15
	.byte		"tNextWasAdjusted"
	.byte		0
	.4byte		.L6587
	.sleb128	3
	.byte		0x23
	.uleb128	268
.L1184:
	.sleb128	15
	.byte		"reservedDoubleVect"
	.byte		0
	.4byte		.L7064
	.sleb128	3
	.byte		0x23
	.uleb128	272
	.sleb128	0
.L7027:
.L7029:
	.sleb128	16
	.4byte		.L7066-.L2
	.uleb128	4
.L1100:
	.sleb128	18
	.byte		"zcCacheNeedsReset"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x0
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1101:
	.sleb128	18
	.byte		"derivCacheNeedsReset"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x1
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1102:
	.sleb128	18
	.byte		"blkStateChange"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x2
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1103:
	.sleb128	18
	.byte		"cTimeOutputInconsistentWithStateAtMajorStep"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x3
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1104:
	.sleb128	18
	.byte		"forceSfcnExceptionHandling"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x4
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1105:
	.sleb128	18
	.byte		"inlineParameters"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x5
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1106:
	.sleb128	18
	.byte		"solverAssertCheck"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x6
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1107:
	.sleb128	18
	.byte		"minStepViolatedError"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x7
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1108:
	.sleb128	18
	.byte		"blockStateForSolverChangedAtMajorStep"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x8
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1109:
	.sleb128	18
	.byte		"noZCStateUpdate"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x9
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1110:
	.sleb128	18
	.byte		"computingJacobian"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0xa
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1111:
	.sleb128	18
	.byte		"solverCheckingCIC"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0xb
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1112:
	.sleb128	18
	.byte		"errorStatusIsMsg"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0xc
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1113:
	.sleb128	18
	.byte		"timeTweakWarn"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0xd
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1114:
	.sleb128	18
	.byte		"solverRequestingReset"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0xe
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1115:
	.sleb128	18
	.byte		"firstInitCondCalled"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0xf
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1116:
	.sleb128	18
	.byte		"sparseSlvrJacobian"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x10
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1117:
	.sleb128	18
	.byte		"frameUpgradeWarn"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x11
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1118:
	.sleb128	18
	.byte		"outputMethodComputed"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x12
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1119:
	.sleb128	18
	.byte		"doingParameterInit"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x13
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1120:
	.sleb128	18
	.byte		"f0EvaluationForJacobian"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0x14
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1121:
	.sleb128	18
	.byte		"isRowMajor"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x16
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1122:
	.sleb128	18
	.byte		"zcEvalForRefine"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x17
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1123:
	.sleb128	18
	.byte		"reserved8"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x8
	.byte		0x18
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7066:
.L7032:
	.sleb128	16
	.4byte		.L7067-.L2
	.uleb128	12
.L1097:
	.sleb128	15
	.byte		"sizeInBytes"
	.byte		0
	.4byte		.L5415
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1098:
	.sleb128	15
	.byte		"pCurrVal"
	.byte		0
	.4byte		.L7068
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1099:
	.sleb128	15
	.byte		"pPrevVal"
	.byte		0
	.4byte		.L7068
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.sleb128	0
.L7067:
.L6643:
	.sleb128	14
	.4byte		.L6653
	.uleb128	728
	.4byte		.L7069-.L2
	.byte		"_ssBlkInfo"
	.byte		0
	.uleb128	28
.L724:
	.sleb128	15
	.byte		"inputConnected"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L725:
	.sleb128	15
	.byte		"outputConnected"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L726:
	.sleb128	15
	.byte		"placementGroup"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L727:
	.sleb128	15
	.byte		"block"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L728:
	.sleb128	15
	.byte		"blkInfo2"
	.byte		0
	.4byte		.L7070
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L729:
	.sleb128	15
	.byte		"absTolOffset_Obsolete"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L730:
	.sleb128	15
	.byte		"sfcnFlags"
	.byte		0
	.4byte		.L7072
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.sleb128	0
.L7069:
.L7072:
	.sleb128	16
	.4byte		.L7073-.L2
	.uleb128	4
.L718:
	.sleb128	18
	.byte		"okToCallStartTerminateOnSimRestart"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x0
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L719:
	.sleb128	18
	.byte		"sCodeGenArrayLayout"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x3
	.byte		0x1
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L720:
	.sleb128	18
	.byte		"sRowMajorOptIn"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x4
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L721:
	.sleb128	18
	.byte		"runtimeThreadSafetyCompliance"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x4
	.byte		0x5
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L722:
	.sleb128	18
	.byte		"reserved1"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x7
	.byte		0x9
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L723:
	.sleb128	18
	.byte		"reserved2"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x10
	.byte		0x10
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7073:
.L7071:
	.sleb128	14
	.4byte		.L6653
	.uleb128	718
	.4byte		.L7074-.L2
	.byte		"_ssBlkInfo2"
	.byte		0
	.uleb128	132
.L711:
	.sleb128	15
	.byte		"rtwSfcnInfo"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L712:
	.sleb128	15
	.byte		"unused"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L713:
	.sleb128	15
	.byte		"portInfo2"
	.byte		0
	.4byte		.L7075
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L714:
	.sleb128	15
	.byte		"stInfo2"
	.byte		0
	.4byte		.L7077
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L715:
	.sleb128	15
	.byte		"reservedPtrs"
	.byte		0
	.4byte		.L7079
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L716:
	.sleb128	15
	.byte		"impulseResponseLength"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L717:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L7081
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.sleb128	0
.L7074:
.L7078:
	.sleb128	14
	.4byte		.L6653
	.uleb128	696
	.4byte		.L7083-.L2
	.byte		"_ssSTInfo2"
	.byte		0
	.uleb128	52
.L701:
	.sleb128	15
	.byte		"ctrlRateInstanceIndex"
	.byte		0
	.4byte		.L7084
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L702:
	.sleb128	15
	.byte		"isControlledByThisBlock"
	.byte		0
	.4byte		.L6587
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L703:
	.sleb128	15
	.byte		"nRateIndices"
	.byte		0
	.4byte		.L7085
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L704:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L7086
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.sleb128	0
.L7083:
.L7076:
	.sleb128	14
	.4byte		.L6653
	.uleb128	684
	.4byte		.L7088-.L2
	.byte		"_ssPortInfo2"
	.byte		0
	.uleb128	40
.L692:
	.sleb128	15
	.byte		"inputs"
	.byte		0
	.4byte		.L7089
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L693:
	.sleb128	15
	.byte		"outputs"
	.byte		0
	.4byte		.L7091
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L694:
	.sleb128	15
	.byte		"inputUnits"
	.byte		0
	.4byte		.L7093
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L695:
	.sleb128	15
	.byte		"outputUnits"
	.byte		0
	.4byte		.L7095
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L696:
	.sleb128	15
	.byte		"inputDimsConstraint"
	.byte		0
	.4byte		.L7097
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L697:
	.sleb128	15
	.byte		"outputDimsConstraint"
	.byte		0
	.4byte		.L7099
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L698:
	.sleb128	15
	.byte		"inputCoSimAttribute"
	.byte		0
	.4byte		.L7101
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L699:
	.sleb128	15
	.byte		"outputCoSimAttribute"
	.byte		0
	.4byte		.L7103
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L700:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L7105
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.sleb128	0
.L7088:
.L7104:
	.sleb128	14
	.4byte		.L6653
	.uleb128	676
	.4byte		.L7107-.L2
	.byte		"_ssOutPortCoSimAttribute"
	.byte		0
	.uleb128	1
.L691:
	.sleb128	15
	.byte		"isContinuousQuantity"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7107:
.L7102:
	.sleb128	14
	.4byte		.L6653
	.uleb128	669
	.4byte		.L7108-.L2
	.byte		"_ssInPortCoSimAttribute"
	.byte		0
	.uleb128	1
.L690:
	.sleb128	15
	.byte		"isContinuousQuantity"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7108:
.L7100:
	.sleb128	14
	.4byte		.L6653
	.uleb128	661
	.4byte		.L7109-.L2
	.byte		"_ssOutPortDimsConstraint"
	.byte		0
	.uleb128	8
.L688:
	.sleb128	15
	.byte		"type"
	.byte		0
	.4byte		.L7110
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L689:
	.sleb128	15
	.byte		"size"
	.byte		0
	.4byte		.L7028
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L7109:
.L7098:
	.sleb128	14
	.4byte		.L6653
	.uleb128	653
	.4byte		.L7112-.L2
	.byte		"_ssInPortDimsConstraint"
	.byte		0
	.uleb128	8
.L686:
	.sleb128	15
	.byte		"type"
	.byte		0
	.4byte		.L7110
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L687:
	.sleb128	15
	.byte		"size"
	.byte		0
	.4byte		.L7028
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L7112:
	.section	.debug_info,,n
.L7111:
	.sleb128	19
	.4byte		.L7113-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	20
	.byte		"SS_DIMS_CONSTRAINT_UNSPECIFIED"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"SS_DIMS_CONSTRAINT_NONE"
	.byte		0
	.sleb128	1
	.sleb128	20
	.byte		"SS_DIMS_CONSTRAINT_MULTIPLE"
	.byte		0
	.sleb128	2
	.sleb128	20
	.byte		"SS_DIMS_CONSTRAINT_EXPLICIT"
	.byte		0
	.sleb128	3
	.sleb128	20
	.byte		"SS_DIMS_CONSTRAINT_IMMUTABLE"
	.byte		0
	.sleb128	4
	.sleb128	20
	.byte		"SS_DIMS_CONSTRAINT_MULTIPORTEQUALSIZE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L7113:
.L7096:
	.sleb128	14
	.4byte		.L6653
	.uleb128	637
	.4byte		.L7114-.L2
	.byte		"_ssOutPortUnit"
	.byte		0
	.uleb128	4
.L679:
	.sleb128	15
	.byte		"unitId"
	.byte		0
	.4byte		.L7115
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7114:
.L7094:
	.sleb128	14
	.4byte		.L6653
	.uleb128	630
	.4byte		.L7116-.L2
	.byte		"_ssInPortUnit"
	.byte		0
	.uleb128	4
.L678:
	.sleb128	15
	.byte		"unitId"
	.byte		0
	.4byte		.L7115
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7116:
.L7092:
	.sleb128	14
	.4byte		.L6653
	.uleb128	622
	.4byte		.L7117-.L2
	.byte		"_ssOutPortVarDims"
	.byte		0
	.uleb128	36
.L676:
	.sleb128	15
	.byte		"portVarDims"
	.byte		0
	.4byte		.L7047
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L677:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L7118
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L7117:
.L7090:
	.sleb128	14
	.4byte		.L6653
	.uleb128	614
	.4byte		.L7120-.L2
	.byte		"_ssInPortVarDims"
	.byte		0
	.uleb128	36
.L674:
	.sleb128	15
	.byte		"portVarDims"
	.byte		0
	.4byte		.L7121
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L675:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L7122
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L7120:
.L6642:
	.sleb128	14
	.4byte		.L6653
	.uleb128	594
	.4byte		.L7124-.L2
	.byte		"_ssWork"
	.byte		0
	.uleb128	32
.L666:
	.sleb128	15
	.byte		"iWork"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L667:
	.sleb128	15
	.byte		"rWork"
	.byte		0
	.4byte		.L6586
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L668:
	.sleb128	15
	.byte		"pWork"
	.byte		0
	.4byte		.L7020
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L669:
	.sleb128	15
	.byte		"modeVector"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L670:
	.sleb128	15
	.byte		"userData"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L671:
	.sleb128	15
	.byte		"dWork"
	.byte		0
	.4byte		.L7125
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L672:
	.sleb128	15
	.byte		"dWorkAux"
	.byte		0
	.4byte		.L7126
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L673:
	.sleb128	15
	.byte		"localMdlInfo"
	.byte		0
	.4byte		.L7128
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.sleb128	0
.L7124:
.L7129:
	.sleb128	14
	.4byte		.L6653
	.uleb128	607
	.4byte		.L7130-.L2
	.byte		"_ssLocalMdlInfo"
	.byte		0
	.uleb128	128
.L1185:
	.sleb128	15
	.byte		"ownerBd"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1186:
	.sleb128	15
	.byte		"rtp"
	.byte		0
	.4byte		.L6586
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1187:
	.sleb128	15
	.byte		"blockIO"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1188:
	.sleb128	15
	.byte		"blockIOVarDims"
	.byte		0
	.4byte		.L7047
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1189:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L7131
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L7130:
.L7125:
	.sleb128	17
	.4byte		.L7133-.L2
	.uleb128	4
.L664:
	.sleb128	15
	.byte		"sfcn"
	.byte		0
	.4byte		.L7134
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L665:
	.sleb128	15
	.byte		"root"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7133:
.L6640:
	.sleb128	14
	.4byte		.L6653
	.uleb128	578
	.4byte		.L7136-.L2
	.byte		"_ssSFcnParams"
	.byte		0
	.uleb128	20
.L659:
	.sleb128	15
	.byte		"dlgNum"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L660:
	.sleb128	15
	.byte		"dlgParams"
	.byte		0
	.4byte		.L7016
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L661:
	.sleb128	15
	.byte		"dlgAttribs"
	.byte		0
	.4byte		.L7137
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L662:
	.sleb128	15
	.byte		"numRtp"
	.byte		0
	.4byte		.L7138
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L663:
	.sleb128	15
	.byte		"rtp"
	.byte		0
	.4byte		.L7139
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L7136:
.L7138:
	.sleb128	17
	.4byte		.L7143-.L2
	.uleb128	4
.L657:
	.sleb128	15
	.byte		"numRtp"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L658:
	.sleb128	15
	.byte		"placeholder"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7143:
.L6639:
	.sleb128	14
	.4byte		.L6653
	.uleb128	553
	.4byte		.L7144-.L2
	.byte		"_ssPortInfo"
	.byte		0
	.uleb128	24
.L649:
	.sleb128	15
	.byte		"regNumInputPortsFcn"
	.byte		0
	.4byte		.L7145
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L650:
	.sleb128	15
	.byte		"regNumInputPortsFcnArg"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L651:
	.sleb128	15
	.byte		"regNumOutputPortsFcn"
	.byte		0
	.4byte		.L7149
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L652:
	.sleb128	15
	.byte		"regNumOutputPortsFcnArg"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L653:
	.sleb128	15
	.byte		"inputs"
	.byte		0
	.4byte		.L7153
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L654:
	.sleb128	15
	.byte		"outputs"
	.byte		0
	.4byte		.L7155
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.sleb128	0
.L7144:
.L7156:
	.sleb128	14
	.4byte		.L6653
	.uleb128	515
	.4byte		.L7157-.L2
	.byte		"_ssPortOutputs"
	.byte		0
	.uleb128	48
.L637:
	.sleb128	15
	.byte		"width"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L638:
	.sleb128	15
	.byte		"dataTypeId"
	.byte		0
	.4byte		.L6833
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L639:
	.sleb128	15
	.byte		"complexSignal"
	.byte		0
	.4byte		.L6893
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L640:
	.sleb128	15
	.byte		"signalVect"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L641:
	.sleb128	15
	.byte		"connected"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L642:
	.sleb128	15
	.byte		"attributes"
	.byte		0
	.4byte		.L7158
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L643:
	.sleb128	15
	.byte		"sampleTime"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L644:
	.sleb128	15
	.byte		"offsetTime"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L645:
	.sleb128	15
	.byte		"dims"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L646:
	.sleb128	15
	.byte		"sampleTimeIndex"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L647:
	.sleb128	15
	.byte		"icPrmIdxPlus1"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L648:
	.sleb128	15
	.byte		"numDims"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.sleb128	0
.L7157:
.L7158:
	.sleb128	16
	.4byte		.L7159-.L2
	.uleb128	4
.L623:
	.sleb128	18
	.byte		"optimOpts"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0x0
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L624:
	.sleb128	18
	.byte		"frameData"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0x2
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L625:
	.sleb128	18
	.byte		"cToMergeBlk"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x4
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L626:
	.sleb128	18
	.byte		"constOutputExprInRTW"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x5
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L627:
	.sleb128	18
	.byte		"outputExprInRTW"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x6
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L628:
	.sleb128	18
	.byte		"trivialOutputExprInRTW"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x7
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L629:
	.sleb128	18
	.byte		"okToMerge"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0x8
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L630:
	.sleb128	18
	.byte		"cecId"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0xa
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L631:
	.sleb128	18
	.byte		"nonContPort"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0xc
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L632:
	.sleb128	18
	.byte		"dimensionsMode"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0xd
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L633:
	.sleb128	18
	.byte		"fedByBlockWithModesNoZCs"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0xf
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L634:
	.sleb128	18
	.byte		"busMode"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0x10
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L635:
	.sleb128	18
	.byte		"optimizeInIR"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x12
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L636:
	.sleb128	18
	.byte		"reserved13"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0xd
	.byte		0x13
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7159:
.L7154:
	.sleb128	14
	.4byte		.L6653
	.uleb128	475
	.4byte		.L7160-.L2
	.byte		"_ssPortInputs"
	.byte		0
	.uleb128	52
.L610:
	.sleb128	15
	.byte		"width"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L611:
	.sleb128	15
	.byte		"directFeedThrough"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L612:
	.sleb128	15
	.byte		"dataTypeId"
	.byte		0
	.4byte		.L6833
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L613:
	.sleb128	15
	.byte		"complexSignal"
	.byte		0
	.4byte		.L6893
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L614:
	.sleb128	15
	.byte		"signal"
	.byte		0
	.4byte		.L7161
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L615:
	.sleb128	15
	.byte		"connected"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L616:
	.sleb128	15
	.byte		"attributes"
	.byte		0
	.4byte		.L7162
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L617:
	.sleb128	15
	.byte		"sampleTime"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L618:
	.sleb128	15
	.byte		"offsetTime"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L619:
	.sleb128	15
	.byte		"dims"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L620:
	.sleb128	15
	.byte		"bufferDstPort"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L621:
	.sleb128	15
	.byte		"sampleTimeIndex"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L622:
	.sleb128	15
	.byte		"numDims"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.sleb128	0
.L7160:
.L7162:
	.sleb128	16
	.4byte		.L7163-.L2
	.uleb128	4
.L598:
	.sleb128	18
	.byte		"overWritable"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x0
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L599:
	.sleb128	18
	.byte		"optimOpts"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0x1
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L600:
	.sleb128	18
	.byte		"frameData"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0x3
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L601:
	.sleb128	18
	.byte		"contiguity"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x5
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L602:
	.sleb128	18
	.byte		"acceptExprInRTW"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x6
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L603:
	.sleb128	18
	.byte		"cinId"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0x7
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L604:
	.sleb128	18
	.byte		"nonDerivPort"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x9
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L605:
	.sleb128	18
	.byte		"dimensionsMode"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0xa
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L606:
	.sleb128	18
	.byte		"busMode"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0xc
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L607:
	.sleb128	18
	.byte		"optimizeInIR"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0xe
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L608:
	.sleb128	18
	.byte		"reserved1"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0xf
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L609:
	.sleb128	18
	.byte		"reserved16"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x10
	.byte		0x10
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7163:
.L7161:
	.sleb128	17
	.4byte		.L7164-.L2
	.uleb128	4
.L596:
	.sleb128	15
	.byte		"vect"
	.byte		0
	.4byte		.L6582
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L597:
	.sleb128	15
	.byte		"ptrs"
	.byte		0
	.4byte		.L7165
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7164:
.L7127:
	.sleb128	14
	.4byte		.L6653
	.uleb128	433
	.4byte		.L7168-.L2
	.byte		"_ssDWorkAuxRecord"
	.byte		0
	.uleb128	48
.L587:
	.sleb128	15
	.byte		"rtwIdentifier"
	.byte		0
	.4byte		.L7040
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L588:
	.sleb128	15
	.byte		"rtwStorageClass"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L589:
	.sleb128	15
	.byte		"rtwTypeQualifier"
	.byte		0
	.4byte		.L7040
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L590:
	.sleb128	15
	.byte		"flags"
	.byte		0
	.4byte		.L7169
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L591:
	.sleb128	15
	.byte		"icPrmIdxPlus1"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L592:
	.sleb128	15
	.byte		"bitFieldWidth"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L593:
	.sleb128	15
	.byte		"unusedInts"
	.byte		0
	.4byte		.L7170
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L594:
	.sleb128	15
	.byte		"resolvedSignalObject"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L595:
	.sleb128	15
	.byte		"unusedPtrs"
	.byte		0
	.4byte		.L7172
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.sleb128	0
.L7168:
.L7169:
	.sleb128	16
	.4byte		.L7174-.L2
	.uleb128	4
.L578:
	.sleb128	18
	.byte		"DisableBoundsChecking"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x0
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L579:
	.sleb128	18
	.byte		"ExtModeUpload"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x1
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L580:
	.sleb128	18
	.byte		"rtwIdMustResolveToSignalObject"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0x2
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L581:
	.sleb128	18
	.byte		"rtwIdDoneResolve"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x4
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L582:
	.sleb128	18
	.byte		"ensureResetForSizeVary"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x5
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L583:
	.sleb128	18
	.byte		"minMaxCheckpoint"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0x6
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L584:
	.sleb128	18
	.byte		"optimizeInIR"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x8
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L585:
	.sleb128	18
	.byte		"reserved7"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x7
	.byte		0x9
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L586:
	.sleb128	18
	.byte		"reserved16"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x10
	.byte		0x10
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7174:
.L6638:
	.sleb128	14
	.4byte		.L6653
	.uleb128	271
	.4byte		.L7175-.L2
	.byte		"_ssSizes"
	.byte		0
	.uleb128	152
.L545:
	.sleb128	15
	.byte		"numContStates"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L546:
	.sleb128	15
	.byte		"numDiscStates"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L547:
	.sleb128	15
	.byte		"out"
	.byte		0
	.4byte		.L7176
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L548:
	.sleb128	15
	.byte		"in"
	.byte		0
	.4byte		.L7177
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L549:
	.sleb128	15
	.byte		"mexApiInt1"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L550:
	.sleb128	15
	.byte		"sysDirFeedThrough"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L551:
	.sleb128	15
	.byte		"numSampleTimes"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L552:
	.sleb128	15
	.byte		"numSFcnParams"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L553:
	.sleb128	15
	.byte		"numIWork"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L554:
	.sleb128	15
	.byte		"numRWork"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L555:
	.sleb128	15
	.byte		"numPWork"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L556:
	.sleb128	15
	.byte		"numBlocks"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L557:
	.sleb128	15
	.byte		"numSFunctions"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L558:
	.sleb128	15
	.byte		"numBlockIO"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L559:
	.sleb128	15
	.byte		"numBlockParams"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L560:
	.sleb128	15
	.byte		"checksums"
	.byte		0
	.4byte		.L7178
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L561:
	.sleb128	15
	.byte		"simStructVer"
	.byte		0
	.4byte		.L5057
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L562:
	.sleb128	15
	.byte		"numNonsampledZCs"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L563:
	.sleb128	15
	.byte		"numZCEvents"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L564:
	.sleb128	15
	.byte		"numModes"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L565:
	.sleb128	15
	.byte		"options"
	.byte		0
	.4byte		.L5053
	.sleb128	2
	.byte		0x23
	.uleb128	92
.L566:
	.sleb128	15
	.byte		"sizeofY"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	96
.L567:
	.sleb128	15
	.byte		"sizeofU"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	100
.L568:
	.sleb128	15
	.byte		"sizeofBlockIO"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	104
.L569:
	.sleb128	15
	.byte		"sizeofGlobalBlockIO"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	108
.L570:
	.sleb128	15
	.byte		"numDWork"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	112
.L571:
	.sleb128	15
	.byte		"sizeofDWork"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	116
.L572:
	.sleb128	15
	.byte		"RTWGeneratedSFcn"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	120
.L573:
	.sleb128	15
	.byte		"flags"
	.byte		0
	.4byte		.L7180
	.sleb128	2
	.byte		0x23
	.uleb128	124
.L574:
	.sleb128	15
	.byte		"numJacobianNzMax"
	.byte		0
	.4byte		.L5414
	.sleb128	3
	.byte		0x23
	.uleb128	128
.L575:
	.sleb128	15
	.byte		"rtModel"
	.byte		0
	.4byte		.L5416
	.sleb128	3
	.byte		0x23
	.uleb128	132
.L576:
	.sleb128	15
	.byte		"constBlockIO"
	.byte		0
	.4byte		.L6582
	.sleb128	3
	.byte		0x23
	.uleb128	136
.L577:
	.sleb128	15
	.byte		"reservedForFuture"
	.byte		0
	.4byte		.L7181
	.sleb128	3
	.byte		0x23
	.uleb128	140
	.sleb128	0
.L7175:
.L7180:
	.sleb128	16
	.4byte		.L7183-.L2
	.uleb128	4
.L523:
	.sleb128	18
	.byte		"hasMdlDimensionsFcn"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x0
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L524:
	.sleb128	18
	.byte		"usesNumPorts"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x1
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L525:
	.sleb128	18
	.byte		"vectMode"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x4
	.byte		0x2
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L526:
	.sleb128	18
	.byte		"blockReduction"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x6
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L527:
	.sleb128	18
	.byte		"treatAsAtomic"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x7
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L528:
	.sleb128	18
	.byte		"rtwcg"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x8
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L529:
	.sleb128	18
	.byte		"needAbsoluteTime"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x9
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L530:
	.sleb128	18
	.byte		"explicitFCSSCtrl"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0xa
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L531:
	.sleb128	18
	.byte		"modelRefTsInhSupLevel"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0xb
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L532:
	.sleb128	18
	.byte		"needElapseTime"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0xd
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L533:
	.sleb128	18
	.byte		"hasSubFunctions"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0xe
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L534:
	.sleb128	18
	.byte		"callsOutputInInit"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0xf
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L535:
	.sleb128	18
	.byte		"disableMdlProjection"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x10
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L536:
	.sleb128	18
	.byte		"modelRefNormalModeSupport"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x2
	.byte		0x11
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L537:
	.sleb128	18
	.byte		"simStateCompliance"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x4
	.byte		0x13
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L538:
	.sleb128	18
	.byte		"simStateVisibility"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x17
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L539:
	.sleb128	18
	.byte		"disableMdlSlvrJacobian"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x18
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L540:
	.sleb128	18
	.byte		"isRapidAcceleratorActive"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x19
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L541:
	.sleb128	18
	.byte		"isConcurrentTasks"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x1a
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L542:
	.sleb128	18
	.byte		"usesCustomCodeFcns"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x1b
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L543:
	.sleb128	18
	.byte		"crlReplacementEnabled"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x1
	.byte		0x1c
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L544:
	.sleb128	18
	.byte		"vmSimulationsCompliance"
	.byte		0
	.4byte		.L6668
	.uleb128	4
	.byte		0x3
	.byte		0x1d
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7183:
.L7177:
	.sleb128	17
	.4byte		.L7184-.L2
	.uleb128	4
.L521:
	.sleb128	15
	.byte		"numInputPorts"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L522:
	.sleb128	15
	.byte		"numU"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7184:
.L7176:
	.sleb128	17
	.4byte		.L7185-.L2
	.uleb128	4
.L519:
	.sleb128	15
	.byte		"numOutputPorts"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L520:
	.sleb128	15
	.byte		"numY"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7185:
.L6974:
	.sleb128	14
	.4byte		.L6653
	.uleb128	250
	.4byte		.L7186-.L2
	.byte		"ssSparseMatrixInfo_tag"
	.byte		0
	.uleb128	24
.L513:
	.sleb128	15
	.byte		"mRows"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L514:
	.sleb128	15
	.byte		"nCols"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L515:
	.sleb128	15
	.byte		"nzMax"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L516:
	.sleb128	15
	.byte		"Ir"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L517:
	.sleb128	15
	.byte		"Jc"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L518:
	.sleb128	15
	.byte		"Pr"
	.byte		0
	.4byte		.L6586
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.sleb128	0
.L7186:
.L6727:
	.sleb128	19
	.4byte		.L7187-.L2
	.uleb128	4
	.sleb128	20
	.byte		"EXTLOGTASK_TRIG_ARM"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"EXTLOGTASK_INIT_EVENT"
	.byte		0
	.sleb128	1
	.sleb128	20
	.byte		"EXTLOGTASK_TERM_INTERMEDIATE_ONESHOT"
	.byte		0
	.sleb128	2
	.sleb128	20
	.byte		"EXTLOGTASK_TERM_SESSION"
	.byte		0
	.sleb128	3
	.sleb128	0
.L7187:
.L6761:
	.sleb128	19
	.4byte		.L7188-.L2
	.uleb128	4
	.sleb128	20
	.byte		"SIM_PAUSE"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"SIM_CONTINUE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L7188:
.L6767:
	.sleb128	19
	.4byte		.L7189-.L2
	.uleb128	4
	.sleb128	20
	.byte		"DIMENSION_PROPAGATION"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"TYPE_PROPAGATION"
	.byte		0
	.sleb128	1
	.sleb128	20
	.byte		"COMPLEX_PROPAGATION"
	.byte		0
	.sleb128	2
	.sleb128	20
	.byte		"UNIT_PROPAGATION"
	.byte		0
	.sleb128	3
	.sleb128	0
.L7189:
.L7142:
	.sleb128	14
	.4byte		.L7190
	.uleb128	219
	.4byte		.L7191-.L2
	.byte		"ssParamRec_tag"
	.byte		0
	.uleb128	44
.L460:
	.sleb128	15
	.byte		"name"
	.byte		0
	.4byte		.L6723
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L461:
	.sleb128	15
	.byte		"nDimensions"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L462:
	.sleb128	15
	.byte		"dimensions"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L463:
	.sleb128	15
	.byte		"dataTypeId"
	.byte		0
	.4byte		.L6833
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L464:
	.sleb128	15
	.byte		"complexSignal"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L465:
	.sleb128	15
	.byte		"data"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L466:
	.sleb128	15
	.byte		"dataAttributes"
	.byte		0
	.4byte		.L6582
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L467:
	.sleb128	15
	.byte		"nDlgParamIndices"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L468:
	.sleb128	15
	.byte		"dlgParamIndices"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L469:
	.sleb128	15
	.byte		"transformed"
	.byte		0
	.4byte		.L7192
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L470:
	.sleb128	15
	.byte		"outputAsMatrix"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.sleb128	0
.L7191:
.L7193:
	.sleb128	19
	.4byte		.L7194-.L2
	.uleb128	4
	.sleb128	20
	.byte		"RTPARAM_NOT_TRANSFORMED"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"RTPARAM_TRANSFORMED"
	.byte		0
	.sleb128	1
	.sleb128	20
	.byte		"RTPARAM_MAKE_TRANSFORMED_TUNABLE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L7194:
.L6696:
	.sleb128	19
	.4byte		.L7195-.L2
	.uleb128	4
	.sleb128	20
	.byte		"FRAME_INHERITED"
	.byte		0
	.sleb128	-1
	.sleb128	20
	.byte		"FRAME_NO"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"FRAME_YES"
	.byte		0
	.sleb128	1
	.sleb128	0
.L7195:
.L7046:
	.sleb128	19
	.4byte		.L7196-.L2
	.uleb128	4
	.sleb128	20
	.byte		"SLEXEC_BLK_RTS_SET_NUM_TICKS_TO_NEXT_SAMPLE_HIT_FOR_CTRLRATE"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"SLEXEC_BLK_RTS_GET_NUM_TICKS_TO_NEXT_SAMPLE_HIT_FOR_CTRLRATE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L7196:
.L6664:
	.sleb128	14
	.4byte		.L7197
	.uleb128	284
	.4byte		.L7198-.L2
	.byte		"SparseHeader_Tag"
	.byte		0
	.uleb128	24
.L267:
	.sleb128	15
	.byte		"mRows"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L268:
	.sleb128	15
	.byte		"nCols"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L269:
	.sleb128	15
	.byte		"nzMax"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L270:
	.sleb128	15
	.byte		"Ir"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L271:
	.sleb128	15
	.byte		"Jc"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L272:
	.sleb128	15
	.byte		"Pr"
	.byte		0
	.4byte		.L6586
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.sleb128	0
.L7198:
.L7135:
	.sleb128	14
	.4byte		.L7197
	.uleb128	265
	.4byte		.L7199-.L2
	.byte		"_ssDWorkRecord"
	.byte		0
	.uleb128	24
.L256:
	.sleb128	15
	.byte		"width"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L257:
	.sleb128	15
	.byte		"dataTypeId"
	.byte		0
	.4byte		.L6833
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L258:
	.sleb128	15
	.byte		"complexSignal"
	.byte		0
	.4byte		.L6893
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L259:
	.sleb128	15
	.byte		"array"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L260:
	.sleb128	15
	.byte		"name"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L261:
	.sleb128	15
	.byte		"usedAs"
	.byte		0
	.4byte		.L7200
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.sleb128	0
.L7199:
.L7201:
	.sleb128	19
	.4byte		.L7202-.L2
	.uleb128	4
	.sleb128	20
	.byte		"SS_DWORK_USED_AS_DWORK"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"SS_DWORK_USED_AS_DSTATE"
	.byte		0
	.sleb128	1
	.sleb128	20
	.byte		"SS_DWORK_USED_AS_SCRATCH"
	.byte		0
	.sleb128	2
	.sleb128	20
	.byte		"SS_DWORK_USED_AS_MODE"
	.byte		0
	.sleb128	3
	.sleb128	0
.L7202:
.L6955:
	.sleb128	14
	.4byte		.L7197
	.uleb128	214
	.4byte		.L7203-.L2
	.byte		"DimsInfo_tag"
	.byte		0
	.uleb128	16
.L248:
	.sleb128	15
	.byte		"width"
	.byte		0
	.4byte		.L5415
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L249:
	.sleb128	15
	.byte		"numDims"
	.byte		0
	.4byte		.L5415
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L250:
	.sleb128	15
	.byte		"dims"
	.byte		0
	.4byte		.L7047
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L251:
	.sleb128	15
	.byte		"nextSigDims"
	.byte		0
	.4byte		.L7204
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.sleb128	0
.L7203:
.L6580:
	.sleb128	14
	.4byte		.L7205
	.uleb128	44
	.4byte		.L7206-.L2
	.byte		"_ssSolverInfo_tag"
	.byte		0
	.uleb128	208
.L183:
	.sleb128	15
	.byte		"rtModelPtr"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L184:
	.sleb128	15
	.byte		"simTimeStepPtr"
	.byte		0
	.4byte		.L7207
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L185:
	.sleb128	15
	.byte		"solverData"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L186:
	.sleb128	15
	.byte		"solverName"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L187:
	.sleb128	15
	.byte		"isVariableStepSolver"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L188:
	.sleb128	15
	.byte		"solverNeedsReset"
	.byte		0
	.4byte		.L5106
	.sleb128	2
	.byte		0x23
	.uleb128	17
.L189:
	.sleb128	15
	.byte		"solverMode"
	.byte		0
	.4byte		.L7058
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L190:
	.sleb128	15
	.byte		"solverStopTime"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L191:
	.sleb128	15
	.byte		"stepSizePtr"
	.byte		0
	.4byte		.L6596
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L192:
	.sleb128	15
	.byte		"minStepSize"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L193:
	.sleb128	15
	.byte		"maxStepSize"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L194:
	.sleb128	15
	.byte		"fixedStepSize"
	.byte		0
	.4byte		.L5410
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L195:
	.sleb128	15
	.byte		"solverShapePreserveControl"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L196:
	.sleb128	15
	.byte		"solverMaxConsecutiveMinStep"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L197:
	.sleb128	15
	.byte		"maxNumMinSteps"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L198:
	.sleb128	15
	.byte		"solverMaxOrder"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L199:
	.sleb128	15
	.byte		"solverConsecutiveZCsStepRelTol"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L200:
	.sleb128	15
	.byte		"solverMaxConsecutiveZCs"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L201:
	.sleb128	15
	.byte		"solverExtrapolationOrder"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L202:
	.sleb128	15
	.byte		"solverNumberNewtonIterations"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L203:
	.sleb128	15
	.byte		"solverRefineFactor"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L204:
	.sleb128	15
	.byte		"solverRelTol"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L205:
	.sleb128	15
	.byte		"unused_real_T_1"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L206:
	.sleb128	15
	.byte		"dXPtr"
	.byte		0
	.4byte		.L7208
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L207:
	.sleb128	15
	.byte		"tPtr"
	.byte		0
	.4byte		.L7209
	.sleb128	2
	.byte		0x23
	.uleb128	92
.L208:
	.sleb128	15
	.byte		"numContStatesPtr"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	96
.L209:
	.sleb128	15
	.byte		"contStatesPtr"
	.byte		0
	.4byte		.L7208
	.sleb128	2
	.byte		0x23
	.uleb128	100
.L210:
	.sleb128	15
	.byte		"numPeriodicContStatesPtr"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	104
.L211:
	.sleb128	15
	.byte		"periodicContStateIndicesPtr"
	.byte		0
	.4byte		.L7210
	.sleb128	2
	.byte		0x23
	.uleb128	108
.L212:
	.sleb128	15
	.byte		"periodicContStateRangesPtr"
	.byte		0
	.4byte		.L7208
	.sleb128	2
	.byte		0x23
	.uleb128	112
.L213:
	.sleb128	15
	.byte		"zcSignalVector"
	.byte		0
	.4byte		.L6586
	.sleb128	2
	.byte		0x23
	.uleb128	116
.L214:
	.sleb128	15
	.byte		"zcEventsVector"
	.byte		0
	.4byte		.L6675
	.sleb128	2
	.byte		0x23
	.uleb128	120
.L215:
	.sleb128	15
	.byte		"zcSignalAttrib"
	.byte		0
	.4byte		.L6675
	.sleb128	2
	.byte		0x23
	.uleb128	124
.L216:
	.sleb128	15
	.byte		"zcSignalVectorLength"
	.byte		0
	.4byte		.L5414
	.sleb128	3
	.byte		0x23
	.uleb128	128
.L217:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L6675
	.sleb128	3
	.byte		0x23
	.uleb128	132
.L218:
	.sleb128	15
	.byte		"foundContZcEvents"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	136
.L219:
	.sleb128	15
	.byte		"isAtLeftPostOfContZcEvent"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	137
.L220:
	.sleb128	15
	.byte		"isAtRightPostOfContZcEvent"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	138
.L221:
	.sleb128	15
	.byte		"adaptiveZcDetection"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	139
.L222:
	.sleb128	15
	.byte		"numZcSignals"
	.byte		0
	.4byte		.L5414
	.sleb128	3
	.byte		0x23
	.uleb128	140
.L223:
	.sleb128	15
	.byte		"stateProjection"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	144
.L224:
	.sleb128	15
	.byte		"robustResetMethod"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	145
.L225:
	.sleb128	15
	.byte		"updateJacobianAtReset"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	146
.L226:
	.sleb128	15
	.byte		"consistencyChecking"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	147
.L227:
	.sleb128	15
	.byte		"massMatrixType"
	.byte		0
	.4byte		.L6971
	.sleb128	3
	.byte		0x23
	.uleb128	148
.L228:
	.sleb128	15
	.byte		"massMatrixNzMax"
	.byte		0
	.4byte		.L5414
	.sleb128	3
	.byte		0x23
	.uleb128	152
.L229:
	.sleb128	15
	.byte		"massMatrixIr"
	.byte		0
	.4byte		.L5418
	.sleb128	3
	.byte		0x23
	.uleb128	156
.L230:
	.sleb128	15
	.byte		"massMatrixJc"
	.byte		0
	.4byte		.L5418
	.sleb128	3
	.byte		0x23
	.uleb128	160
.L231:
	.sleb128	15
	.byte		"massMatrixPr"
	.byte		0
	.4byte		.L6586
	.sleb128	3
	.byte		0x23
	.uleb128	164
.L232:
	.sleb128	15
	.byte		"errStatusPtr"
	.byte		0
	.4byte		.L7211
	.sleb128	3
	.byte		0x23
	.uleb128	168
.L233:
	.sleb128	15
	.byte		"modelMethodsPtr"
	.byte		0
	.4byte		.L7212
	.sleb128	3
	.byte		0x23
	.uleb128	172
.L234:
	.sleb128	15
	.byte		"zcThreshold"
	.byte		0
	.4byte		.L5411
	.sleb128	3
	.byte		0x23
	.uleb128	176
.L235:
	.sleb128	15
	.byte		"zeroCrossAlgorithm"
	.byte		0
	.4byte		.L5414
	.sleb128	3
	.byte		0x23
	.uleb128	180
.L236:
	.sleb128	15
	.byte		"consecutiveZCsError"
	.byte		0
	.4byte		.L5414
	.sleb128	3
	.byte		0x23
	.uleb128	184
.L237:
	.sleb128	15
	.byte		"CTOutputIncnstWithState"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	188
.L238:
	.sleb128	15
	.byte		"isComputingJacobian"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	189
.L239:
	.sleb128	15
	.byte		"solverJacobianMethodControl"
	.byte		0
	.4byte		.L7215
	.sleb128	3
	.byte		0x23
	.uleb128	192
.L240:
	.sleb128	15
	.byte		"ignoredZcDiagnostic"
	.byte		0
	.4byte		.L5414
	.sleb128	3
	.byte		0x23
	.uleb128	196
.L241:
	.sleb128	15
	.byte		"maskedZcDiagnostic"
	.byte		0
	.4byte		.L5414
	.sleb128	3
	.byte		0x23
	.uleb128	200
.L242:
	.sleb128	15
	.byte		"isOutputMethodComputed"
	.byte		0
	.4byte		.L5106
	.sleb128	3
	.byte		0x23
	.uleb128	204
	.sleb128	0
.L7206:
.L7216:
	.sleb128	19
	.4byte		.L7217-.L2
	.uleb128	4
	.sleb128	20
	.byte		"SL_JM_BD_AUTO"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"SL_JM_BD_SPARSE_PERTURBATION"
	.byte		0
	.sleb128	1
	.sleb128	20
	.byte		"SL_JM_BD_FULL_PERTURBATION"
	.byte		0
	.sleb128	2
	.sleb128	20
	.byte		"SL_JM_BD_SPARSE_ANALYTICAL"
	.byte		0
	.sleb128	3
	.sleb128	20
	.byte		"SL_JM_BD_FULL_ANALYTICAL"
	.byte		0
	.sleb128	4
	.sleb128	0
.L7217:
.L7214:
	.sleb128	14
	.4byte		.L7218
	.uleb128	62
	.4byte		.L7219-.L2
	.byte		"_RTWRTModelMethodsInfo_tag"
	.byte		0
	.uleb128	44
.L163:
	.sleb128	15
	.byte		"rtModelPtr"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L164:
	.sleb128	15
	.byte		"rtmInitSizesFcn"
	.byte		0
	.4byte		.L7220
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L165:
	.sleb128	15
	.byte		"rtmInitSampTimesFcn"
	.byte		0
	.4byte		.L7224
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L166:
	.sleb128	15
	.byte		"rtmStartFcn"
	.byte		0
	.4byte		.L7228
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L167:
	.sleb128	15
	.byte		"rtmOutputsFcn"
	.byte		0
	.4byte		.L7232
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L168:
	.sleb128	15
	.byte		"rtmUpdateFcn"
	.byte		0
	.4byte		.L7236
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L169:
	.sleb128	15
	.byte		"rtmDervisFcn"
	.byte		0
	.4byte		.L7240
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L170:
	.sleb128	15
	.byte		"rtmProjectionFcn"
	.byte		0
	.4byte		.L7244
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L171:
	.sleb128	15
	.byte		"rtmMassMatrixFcn"
	.byte		0
	.4byte		.L7248
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L172:
	.sleb128	15
	.byte		"rtmForcingFunctionFcn"
	.byte		0
	.4byte		.L7252
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L173:
	.sleb128	15
	.byte		"rtmTerminateFcn"
	.byte		0
	.4byte		.L7256
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.sleb128	0
.L7219:
.L6595:
	.sleb128	19
	.4byte		.L7260-.L2
	.uleb128	4
	.sleb128	20
	.byte		"MINOR_TIME_STEP"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"MAJOR_TIME_STEP"
	.byte		0
	.sleb128	1
	.sleb128	0
.L7260:
.L7059:
	.sleb128	19
	.4byte		.L7261-.L2
	.uleb128	4
	.sleb128	20
	.byte		"SOLVER_MODE_AUTO"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"SOLVER_MODE_SINGLETASKING"
	.byte		0
	.sleb128	1
	.sleb128	20
	.byte		"SOLVER_MODE_MULTITASKING"
	.byte		0
	.sleb128	2
	.sleb128	0
.L7261:
.L6972:
	.sleb128	19
	.4byte		.L7262-.L2
	.uleb128	4
	.sleb128	20
	.byte		"SS_MATRIX_NONE"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"SS_MATRIX_CONSTANT"
	.byte		0
	.sleb128	1
	.sleb128	20
	.byte		"SS_MATRIX_TIMEDEP"
	.byte		0
	.sleb128	2
	.sleb128	20
	.byte		"SS_MATRIX_STATEDEP"
	.byte		0
	.sleb128	3
	.sleb128	0
.L7262:
.L6577:
	.sleb128	14
	.4byte		.L7263
	.uleb128	15
	.4byte		.L7264-.L2
	.byte		"_RTWExtModeInfo_tag"
	.byte		0
	.uleb128	20
.L149:
	.sleb128	15
	.byte		"subSysActiveVectorAddr"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L150:
	.sleb128	15
	.byte		"checksumsPtr"
	.byte		0
	.4byte		.L5061
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L151:
	.sleb128	15
	.byte		"mdlMappingInfoPtr"
	.byte		0
	.4byte		.L7265
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L152:
	.sleb128	15
	.byte		"tPtr"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L153:
	.sleb128	15
	.byte		"tFinalTicks"
	.byte		0
	.4byte		.L5057
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L7264:
.L7038:
	.sleb128	14
	.4byte		.L7266
	.uleb128	81
	.4byte		.L7267-.L2
	.byte		"_RTWLogInfo_tag"
	.byte		0
	.uleb128	72
.L131:
	.sleb128	15
	.byte		"logInfo"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L132:
	.sleb128	15
	.byte		"logXSignalPtrs"
	.byte		0
	.4byte		.L7268
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L133:
	.sleb128	15
	.byte		"logYSignalPtrs"
	.byte		0
	.4byte		.L7269
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L134:
	.sleb128	15
	.byte		"logFormat"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L135:
	.sleb128	15
	.byte		"logMaxRows"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L136:
	.sleb128	15
	.byte		"logDecimation"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L137:
	.sleb128	15
	.byte		"logVarNameModifier"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L138:
	.sleb128	15
	.byte		"logT"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L139:
	.sleb128	15
	.byte		"logX"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L140:
	.sleb128	15
	.byte		"logXFinal"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L141:
	.sleb128	15
	.byte		"logY"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L142:
	.sleb128	15
	.byte		"logSL"
	.byte		0
	.4byte		.L6567
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L143:
	.sleb128	15
	.byte		"logXSignalInfo"
	.byte		0
	.4byte		.L7270
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L144:
	.sleb128	15
	.byte		"logYSignalInfo"
	.byte		0
	.4byte		.L7271
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L145:
	.sleb128	15
	.byte		"mdlLogData"
	.byte		0
	.4byte		.L7272
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L146:
	.sleb128	15
	.byte		"mdlLogDataIfInInterval"
	.byte		0
	.4byte		.L7275
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L147:
	.sleb128	15
	.byte		"mmi"
	.byte		0
	.4byte		.L6582
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L148:
	.sleb128	15
	.byte		"loggingInterval"
	.byte		0
	.4byte		.L5416
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.sleb128	0
.L7267:
.L7271:
	.sleb128	17
	.4byte		.L7278-.L2
	.uleb128	4
.L129:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L7279
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L130:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L7283
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7278:
.L7270:
	.sleb128	17
	.4byte		.L7284-.L2
	.uleb128	4
.L127:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L7279
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L128:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L7283
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7284:
.L7269:
	.sleb128	17
	.4byte		.L7285-.L2
	.uleb128	4
.L125:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L7286
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L126:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L7291
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7285:
.L7268:
	.sleb128	17
	.4byte		.L7293-.L2
	.uleb128	4
.L123:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L7286
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L124:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L7291
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7293:
.L7282:
	.sleb128	14
	.4byte		.L7266
	.uleb128	39
	.4byte		.L7294-.L2
	.byte		"RTWLogSignalInfo_tag"
	.byte		0
	.uleb128	76
.L104:
	.sleb128	15
	.byte		"numSignals"
	.byte		0
	.4byte		.L5414
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L105:
	.sleb128	15
	.byte		"numCols"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L106:
	.sleb128	15
	.byte		"numDims"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L107:
	.sleb128	15
	.byte		"dims"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L108:
	.sleb128	15
	.byte		"isVarDims"
	.byte		0
	.4byte		.L6587
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L109:
	.sleb128	15
	.byte		"currSigDims"
	.byte		0
	.4byte		.L7020
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L110:
	.sleb128	15
	.byte		"currSigDimsSize"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L111:
	.sleb128	15
	.byte		"dataTypes"
	.byte		0
	.4byte		.L7295
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L112:
	.sleb128	15
	.byte		"complexSignals"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L113:
	.sleb128	15
	.byte		"frameData"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L114:
	.sleb128	15
	.byte		"preprocessingPtrs"
	.byte		0
	.4byte		.L7298
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L115:
	.sleb128	15
	.byte		"labels"
	.byte		0
	.4byte		.L7303
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L116:
	.sleb128	15
	.byte		"titles"
	.byte		0
	.4byte		.L7040
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L117:
	.sleb128	15
	.byte		"titleLengths"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L118:
	.sleb128	15
	.byte		"plotStyles"
	.byte		0
	.4byte		.L5418
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L119:
	.sleb128	15
	.byte		"blockNames"
	.byte		0
	.4byte		.L7304
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L120:
	.sleb128	15
	.byte		"stateNames"
	.byte		0
	.4byte		.L7305
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L121:
	.sleb128	15
	.byte		"crossMdlRef"
	.byte		0
	.4byte		.L6587
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L122:
	.sleb128	15
	.byte		"dataTypeConvert"
	.byte		0
	.4byte		.L7306
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.sleb128	0
.L7294:
.L7305:
	.sleb128	17
	.4byte		.L7309-.L2
	.uleb128	4
.L102:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L7211
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L103:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L7310
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7309:
.L7304:
	.sleb128	17
	.4byte		.L7311-.L2
	.uleb128	4
.L100:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L7211
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L101:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L7310
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7311:
.L7303:
	.sleb128	17
	.4byte		.L7312-.L2
	.uleb128	4
.L98:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L7211
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L99:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L7310
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7312:
.L7308:
	.sleb128	14
	.4byte		.L7266
	.uleb128	23
	.4byte		.L7313-.L2
	.byte		"RTWLogDataTypeConvert_tag"
	.byte		0
	.uleb128	36
.L89:
	.sleb128	15
	.byte		"conversionNeeded"
	.byte		0
	.4byte		.L5415
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L90:
	.sleb128	15
	.byte		"dataTypeIdLoggingTo"
	.byte		0
	.4byte		.L7296
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L91:
	.sleb128	15
	.byte		"dataTypeIdOriginal"
	.byte		0
	.4byte		.L6833
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L92:
	.sleb128	15
	.byte		"bitsPerChunk"
	.byte		0
	.4byte		.L5415
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L93:
	.sleb128	15
	.byte		"numOfChunk"
	.byte		0
	.4byte		.L5415
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L94:
	.sleb128	15
	.byte		"isSigned"
	.byte		0
	.4byte		.L6668
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L95:
	.sleb128	15
	.byte		"fracSlope"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L96:
	.sleb128	15
	.byte		"fixedExp"
	.byte		0
	.4byte		.L5415
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L97:
	.sleb128	15
	.byte		"bias"
	.byte		0
	.4byte		.L5411
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.sleb128	0
.L7313:
.L6661:
	.sleb128	19
	.4byte		.L7314-.L2
	.uleb128	4
	.sleb128	20
	.byte		"FALLING_ZERO_CROSSING"
	.byte		0
	.sleb128	-1
	.sleb128	20
	.byte		"ANY_ZERO_CROSSING"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"RISING_ZERO_CROSSING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L7314:
.L7035:
	.sleb128	14
	.4byte		.L7197
	.uleb128	124
	.4byte		.L7315-.L2
	.byte		"_rtTimingBridge_tag"
	.byte		0
	.uleb128	28
.L74:
	.sleb128	15
	.byte		"nTasks"
	.byte		0
	.4byte		.L5053
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L75:
	.sleb128	15
	.byte		"clockTick"
	.byte		0
	.4byte		.L7316
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L76:
	.sleb128	15
	.byte		"clockTickH"
	.byte		0
	.4byte		.L7316
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L77:
	.sleb128	15
	.byte		"taskCounter"
	.byte		0
	.4byte		.L5061
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L78:
	.sleb128	15
	.byte		"taskTime"
	.byte		0
	.4byte		.L7208
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L79:
	.sleb128	15
	.byte		"rateTransition"
	.byte		0
	.4byte		.L7317
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L80:
	.sleb128	15
	.byte		"firstInitCond"
	.byte		0
	.4byte		.L6587
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.sleb128	0
.L7315:
.L7061:
	.sleb128	19
	.4byte		.L7318-.L2
	.uleb128	4
	.sleb128	20
	.byte		"SS_RTWGEN_UNKNOWN"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"SS_RTWGEN_RTW_CODE"
	.byte		0
	.sleb128	1
	.sleb128	20
	.byte		"SS_RTWGEN_ACCELERATOR"
	.byte		0
	.sleb128	2
	.sleb128	20
	.byte		"SS_RTWGEN_MODELREFERENCE_SIM_TARGET"
	.byte		0
	.sleb128	3
	.sleb128	20
	.byte		"SS_RTWGEN_MODELREFERENCE_RTW_TARGET"
	.byte		0
	.sleb128	4
	.sleb128	0
.L7318:
.L6574:
	.sleb128	19
	.4byte		.L7319-.L2
	.uleb128	4
	.sleb128	20
	.byte		"SS_SIMMODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"SS_SIMMODE_SIZES_CALL_ONLY"
	.byte		0
	.sleb128	1
	.sleb128	20
	.byte		"SS_SIMMODE_RTWGEN"
	.byte		0
	.sleb128	2
	.sleb128	20
	.byte		"SS_SIMMODE_EXTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	0
.L7319:
.L7297:
	.sleb128	19
	.4byte		.L7320-.L2
	.uleb128	4
	.sleb128	20
	.byte		"SS_DOUBLE"
	.byte		0
	.sleb128	0
	.sleb128	20
	.byte		"SS_SINGLE"
	.byte		0
	.sleb128	1
	.sleb128	20
	.byte		"SS_INT8"
	.byte		0
	.sleb128	2
	.sleb128	20
	.byte		"SS_UINT8"
	.byte		0
	.sleb128	3
	.sleb128	20
	.byte		"SS_INT16"
	.byte		0
	.sleb128	4
	.sleb128	20
	.byte		"SS_UINT16"
	.byte		0
	.sleb128	5
	.sleb128	20
	.byte		"SS_INT32"
	.byte		0
	.sleb128	6
	.sleb128	20
	.byte		"SS_UINT32"
	.byte		0
	.sleb128	7
	.sleb128	20
	.byte		"SS_BOOLEAN"
	.byte		0
	.sleb128	8
	.sleb128	0
.L7320:
	.section	.debug_info,,n
.L5054:
	.sleb128	21
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L5053:
	.sleb128	22
	.byte		"uint32_T"
	.byte		0
	.4byte		.L5054
	.section	.debug_info,,n
.L5052:
	.sleb128	23
	.4byte		.L5053
	.section	.debug_info,,n
.L5051:
	.sleb128	24
	.4byte		.L5052
.L5057:
	.sleb128	21
	.byte		"long"
	.byte		0
	.byte		0x5
	.byte		0x4
.L5056:
	.sleb128	22
	.byte		"int32_T"
	.byte		0
	.4byte		.L5057
.L5061:
	.sleb128	24
	.4byte		.L5053
.L5107:
	.sleb128	21
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L5106:
	.sleb128	22
	.byte		"boolean_T"
	.byte		0
	.4byte		.L5107
.L5412:
	.sleb128	21
	.byte		"float"
	.byte		0
	.byte		0x4
	.byte		0x4
.L5411:
	.sleb128	22
	.byte		"real_T"
	.byte		0
	.4byte		.L5412
.L5410:
	.sleb128	22
	.byte		"time_T"
	.byte		0
	.4byte		.L5411
.L5415:
	.sleb128	21
	.byte		"int"
	.byte		0
	.byte		0x5
	.byte		0x4
.L5414:
	.sleb128	22
	.byte		"int_T"
	.byte		0
	.4byte		.L5415
	.section	.debug_info,,n
.L5417:
	.sleb128	25
	.byte		"void"
	.byte		0
	.byte		0x0
.L5416:
	.sleb128	24
	.4byte		.L5417
.L5418:
	.sleb128	24
	.4byte		.L5414
.L5431:
	.sleb128	22
	.byte		"DW_Chart_ATV_T"
	.byte		0
	.4byte		.L5432
.L5430:
	.sleb128	24
	.4byte		.L5431
.L5441:
	.sleb128	22
	.byte		"B_Chart_ATV_T"
	.byte		0
	.4byte		.L5442
.L5440:
	.sleb128	24
	.4byte		.L5441
.L5459:
	.sleb128	21
	.byte		"short"
	.byte		0
	.byte		0x5
	.byte		0x2
.L5458:
	.sleb128	22
	.byte		"int16_T"
	.byte		0
	.4byte		.L5459
.L5520:
	.sleb128	22
	.byte		"real32_T"
	.byte		0
	.4byte		.L5412
.L5529:
	.sleb128	22
	.byte		"uint8_T"
	.byte		0
	.4byte		.L5107
.L5542:
	.sleb128	22
	.byte		"int64m_T"
	.byte		0
	.4byte		.L5543
.L5550:
	.sleb128	22
	.byte		"int96m_T"
	.byte		0
	.4byte		.L5551
.L5575:
	.sleb128	22
	.byte		"U8"
	.byte		0
	.4byte		.L5107
	.section	.debug_info,,n
.L5573:
	.sleb128	26
	.4byte		.L5574-.L2
	.4byte		.L5575
	.section	.debug_info,,n
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5574:
.L5577:
	.sleb128	22
	.byte		"BOOL"
	.byte		0
	.4byte		.L5107
.L5582:
	.sleb128	22
	.byte		"F32"
	.byte		0
	.4byte		.L5412
.L5580:
	.sleb128	26
	.4byte		.L5581-.L2
	.4byte		.L5582
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5581:
.L5586:
	.sleb128	24
	.4byte		.L5582
.L5584:
	.sleb128	26
	.4byte		.L5585-.L2
	.4byte		.L5586
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5585:
.L5589:
	.sleb128	26
	.4byte		.L5590-.L2
	.4byte		.L5575
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5590:
.L5594:
	.sleb128	26
	.4byte		.L5595-.L2
	.4byte		.L5582
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5595:
.L5597:
	.sleb128	26
	.4byte		.L5598-.L2
	.4byte		.L5586
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5598:
.L5601:
	.sleb128	26
	.4byte		.L5602-.L2
	.4byte		.L5575
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5602:
.L5606:
	.sleb128	26
	.4byte		.L5607-.L2
	.4byte		.L5582
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5607:
.L5609:
	.sleb128	26
	.4byte		.L5610-.L2
	.4byte		.L5586
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5610:
.L5613:
	.sleb128	26
	.4byte		.L5614-.L2
	.4byte		.L5575
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5614:
.L5618:
	.sleb128	26
	.4byte		.L5619-.L2
	.4byte		.L5582
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5619:
.L5621:
	.sleb128	26
	.4byte		.L5622-.L2
	.4byte		.L5586
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5622:
.L5624:
	.sleb128	26
	.4byte		.L5625-.L2
	.4byte		.L5575
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5625:
.L5629:
	.sleb128	26
	.4byte		.L5630-.L2
	.4byte		.L5582
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5630:
.L5632:
	.sleb128	26
	.4byte		.L5633-.L2
	.4byte		.L5586
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5633:
.L5636:
	.sleb128	26
	.4byte		.L5637-.L2
	.4byte		.L5575
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5637:
.L5641:
	.sleb128	26
	.4byte		.L5642-.L2
	.4byte		.L5582
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5642:
.L5644:
	.sleb128	26
	.4byte		.L5645-.L2
	.4byte		.L5586
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5645:
.L5647:
	.sleb128	26
	.4byte		.L5648-.L2
	.4byte		.L5575
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5648:
.L5652:
	.sleb128	26
	.4byte		.L5653-.L2
	.4byte		.L5582
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5653:
.L5655:
	.sleb128	26
	.4byte		.L5656-.L2
	.4byte		.L5586
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5656:
.L5682:
	.sleb128	23
	.4byte		.L5575
.L5680:
	.sleb128	26
	.4byte		.L5681-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5681:
.L5679:
	.sleb128	23
	.4byte		.L5680
.L5685:
	.sleb128	26
	.4byte		.L5686-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5686:
.L5684:
	.sleb128	23
	.4byte		.L5685
.L5689:
	.sleb128	26
	.4byte		.L5690-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5690:
.L5688:
	.sleb128	23
	.4byte		.L5689
.L5693:
	.sleb128	26
	.4byte		.L5694-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5694:
.L5692:
	.sleb128	23
	.4byte		.L5693
.L5697:
	.sleb128	26
	.4byte		.L5698-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5698:
.L5696:
	.sleb128	23
	.4byte		.L5697
.L5703:
	.sleb128	23
	.4byte		.L5582
.L5701:
	.sleb128	26
	.4byte		.L5702-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5702:
.L5700:
	.sleb128	23
	.4byte		.L5701
.L5706:
	.sleb128	26
	.4byte		.L5707-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5707:
.L5705:
	.sleb128	23
	.4byte		.L5706
.L5710:
	.sleb128	26
	.4byte		.L5711-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5711:
.L5709:
	.sleb128	23
	.4byte		.L5710
.L5714:
	.sleb128	26
	.4byte		.L5715-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5715:
.L5713:
	.sleb128	23
	.4byte		.L5714
.L5722:
	.sleb128	26
	.4byte		.L5723-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5723:
.L5721:
	.sleb128	23
	.4byte		.L5722
.L5726:
	.sleb128	26
	.4byte		.L5727-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5727:
.L5725:
	.sleb128	23
	.4byte		.L5726
.L5730:
	.sleb128	26
	.4byte		.L5731-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5731:
.L5729:
	.sleb128	23
	.4byte		.L5730
.L5734:
	.sleb128	26
	.4byte		.L5735-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5735:
.L5733:
	.sleb128	23
	.4byte		.L5734
.L5738:
	.sleb128	26
	.4byte		.L5739-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5739:
.L5737:
	.sleb128	23
	.4byte		.L5738
.L5742:
	.sleb128	26
	.4byte		.L5743-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5743:
.L5741:
	.sleb128	23
	.4byte		.L5742
.L5746:
	.sleb128	26
	.4byte		.L5747-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5747:
.L5745:
	.sleb128	23
	.4byte		.L5746
.L5750:
	.sleb128	26
	.4byte		.L5751-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5751:
.L5749:
	.sleb128	23
	.4byte		.L5750
.L5754:
	.sleb128	26
	.4byte		.L5755-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5755:
.L5753:
	.sleb128	23
	.4byte		.L5754
.L5762:
	.sleb128	26
	.4byte		.L5763-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5763:
.L5761:
	.sleb128	23
	.4byte		.L5762
.L5766:
	.sleb128	26
	.4byte		.L5767-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5767:
.L5765:
	.sleb128	23
	.4byte		.L5766
.L5770:
	.sleb128	26
	.4byte		.L5771-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5771:
.L5769:
	.sleb128	23
	.4byte		.L5770
.L5774:
	.sleb128	26
	.4byte		.L5775-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5775:
.L5773:
	.sleb128	23
	.4byte		.L5774
.L5778:
	.sleb128	26
	.4byte		.L5779-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5779:
.L5777:
	.sleb128	23
	.4byte		.L5778
.L5782:
	.sleb128	26
	.4byte		.L5783-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5783:
.L5781:
	.sleb128	23
	.4byte		.L5782
.L5786:
	.sleb128	26
	.4byte		.L5787-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5787:
.L5785:
	.sleb128	23
	.4byte		.L5786
.L5790:
	.sleb128	26
	.4byte		.L5791-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5791:
.L5789:
	.sleb128	23
	.4byte		.L5790
.L5794:
	.sleb128	26
	.4byte		.L5795-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5795:
.L5793:
	.sleb128	23
	.4byte		.L5794
.L5802:
	.sleb128	26
	.4byte		.L5803-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5803:
.L5801:
	.sleb128	23
	.4byte		.L5802
.L5806:
	.sleb128	26
	.4byte		.L5807-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5807:
.L5805:
	.sleb128	23
	.4byte		.L5806
.L5810:
	.sleb128	26
	.4byte		.L5811-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5811:
.L5809:
	.sleb128	23
	.4byte		.L5810
.L5814:
	.sleb128	26
	.4byte		.L5815-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5815:
.L5813:
	.sleb128	23
	.4byte		.L5814
.L5818:
	.sleb128	26
	.4byte		.L5819-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5819:
.L5817:
	.sleb128	23
	.4byte		.L5818
.L5822:
	.sleb128	26
	.4byte		.L5823-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5823:
.L5821:
	.sleb128	23
	.4byte		.L5822
.L5826:
	.sleb128	26
	.4byte		.L5827-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5827:
.L5825:
	.sleb128	23
	.4byte		.L5826
.L5830:
	.sleb128	26
	.4byte		.L5831-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5831:
.L5829:
	.sleb128	23
	.4byte		.L5830
.L5834:
	.sleb128	26
	.4byte		.L5835-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5835:
.L5833:
	.sleb128	23
	.4byte		.L5834
.L5842:
	.sleb128	26
	.4byte		.L5843-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5843:
.L5841:
	.sleb128	23
	.4byte		.L5842
.L5846:
	.sleb128	26
	.4byte		.L5847-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5847:
.L5845:
	.sleb128	23
	.4byte		.L5846
.L5850:
	.sleb128	26
	.4byte		.L5851-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5851:
.L5849:
	.sleb128	23
	.4byte		.L5850
.L5854:
	.sleb128	26
	.4byte		.L5855-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5855:
.L5853:
	.sleb128	23
	.4byte		.L5854
.L5858:
	.sleb128	26
	.4byte		.L5859-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5859:
.L5857:
	.sleb128	23
	.4byte		.L5858
.L5862:
	.sleb128	26
	.4byte		.L5863-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5863:
.L5861:
	.sleb128	23
	.4byte		.L5862
.L5866:
	.sleb128	26
	.4byte		.L5867-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5867:
.L5865:
	.sleb128	23
	.4byte		.L5866
.L5870:
	.sleb128	26
	.4byte		.L5871-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5871:
.L5869:
	.sleb128	23
	.4byte		.L5870
.L5874:
	.sleb128	26
	.4byte		.L5875-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5875:
.L5873:
	.sleb128	23
	.4byte		.L5874
.L5882:
	.sleb128	26
	.4byte		.L5883-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5883:
.L5881:
	.sleb128	23
	.4byte		.L5882
.L5886:
	.sleb128	26
	.4byte		.L5887-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5887:
.L5885:
	.sleb128	23
	.4byte		.L5886
.L5890:
	.sleb128	26
	.4byte		.L5891-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5891:
.L5889:
	.sleb128	23
	.4byte		.L5890
.L5894:
	.sleb128	26
	.4byte		.L5895-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5895:
.L5893:
	.sleb128	23
	.4byte		.L5894
.L5898:
	.sleb128	26
	.4byte		.L5899-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5899:
.L5897:
	.sleb128	23
	.4byte		.L5898
.L5902:
	.sleb128	26
	.4byte		.L5903-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5903:
.L5901:
	.sleb128	23
	.4byte		.L5902
.L5906:
	.sleb128	26
	.4byte		.L5907-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5907:
.L5905:
	.sleb128	23
	.4byte		.L5906
.L5910:
	.sleb128	26
	.4byte		.L5911-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5911:
.L5909:
	.sleb128	23
	.4byte		.L5910
.L5914:
	.sleb128	26
	.4byte		.L5915-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5915:
.L5913:
	.sleb128	23
	.4byte		.L5914
.L5922:
	.sleb128	26
	.4byte		.L5923-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5923:
.L5921:
	.sleb128	23
	.4byte		.L5922
.L5926:
	.sleb128	26
	.4byte		.L5927-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5927:
.L5925:
	.sleb128	23
	.4byte		.L5926
.L5930:
	.sleb128	26
	.4byte		.L5931-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5931:
.L5929:
	.sleb128	23
	.4byte		.L5930
.L5934:
	.sleb128	26
	.4byte		.L5935-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5935:
.L5933:
	.sleb128	23
	.4byte		.L5934
.L5938:
	.sleb128	26
	.4byte		.L5939-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5939:
.L5937:
	.sleb128	23
	.4byte		.L5938
.L5942:
	.sleb128	26
	.4byte		.L5943-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5943:
.L5941:
	.sleb128	23
	.4byte		.L5942
.L5946:
	.sleb128	26
	.4byte		.L5947-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5947:
.L5945:
	.sleb128	23
	.4byte		.L5946
.L5950:
	.sleb128	26
	.4byte		.L5951-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5951:
.L5949:
	.sleb128	23
	.4byte		.L5950
.L5954:
	.sleb128	26
	.4byte		.L5955-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5955:
.L5953:
	.sleb128	23
	.4byte		.L5954
.L5973:
	.sleb128	26
	.4byte		.L5974-.L2
	.4byte		.L5575
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5974:
.L5978:
	.sleb128	26
	.4byte		.L5979-.L2
	.4byte		.L5582
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5979:
.L5981:
	.sleb128	26
	.4byte		.L5982-.L2
	.4byte		.L5586
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5982:
.L5984:
	.sleb128	26
	.4byte		.L5985-.L2
	.4byte		.L5575
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5985:
.L5989:
	.sleb128	26
	.4byte		.L5990-.L2
	.4byte		.L5582
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5990:
.L5992:
	.sleb128	26
	.4byte		.L5993-.L2
	.4byte		.L5586
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5993:
.L5995:
	.sleb128	26
	.4byte		.L5996-.L2
	.4byte		.L5575
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5996:
.L5998:
	.sleb128	22
	.byte		"U32"
	.byte		0
	.4byte		.L5054
.L6001:
	.sleb128	21
	.byte		"signed char"
	.byte		0
	.byte		0x6
	.byte		0x1
.L6000:
	.sleb128	22
	.byte		"S8"
	.byte		0
	.4byte		.L6001
.L6004:
	.sleb128	26
	.4byte		.L6005-.L2
	.4byte		.L5582
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6005:
.L6007:
	.sleb128	26
	.4byte		.L6008-.L2
	.4byte		.L5586
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6008:
.L6010:
	.sleb128	26
	.4byte		.L6011-.L2
	.4byte		.L5575
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L6011:
.L6016:
	.sleb128	26
	.4byte		.L6017-.L2
	.4byte		.L5582
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L6017:
.L6019:
	.sleb128	26
	.4byte		.L6020-.L2
	.4byte		.L5586
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L6020:
.L6022:
	.sleb128	26
	.4byte		.L6023-.L2
	.4byte		.L5575
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L6023:
.L6028:
	.sleb128	26
	.4byte		.L6029-.L2
	.4byte		.L5582
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6029:
.L6031:
	.sleb128	26
	.4byte		.L6032-.L2
	.4byte		.L5586
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6032:
.L6034:
	.sleb128	26
	.4byte		.L6035-.L2
	.4byte		.L5575
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L6035:
.L6040:
	.sleb128	26
	.4byte		.L6041-.L2
	.4byte		.L5582
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6041:
.L6043:
	.sleb128	26
	.4byte		.L6044-.L2
	.4byte		.L5586
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6044:
.L6051:
	.sleb128	26
	.4byte		.L6052-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6052:
.L6050:
	.sleb128	23
	.4byte		.L6051
.L6055:
	.sleb128	26
	.4byte		.L6056-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6056:
.L6054:
	.sleb128	23
	.4byte		.L6055
.L6059:
	.sleb128	26
	.4byte		.L6060-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6060:
.L6058:
	.sleb128	23
	.4byte		.L6059
.L6063:
	.sleb128	26
	.4byte		.L6064-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6064:
.L6062:
	.sleb128	23
	.4byte		.L6063
.L6067:
	.sleb128	26
	.4byte		.L6068-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6068:
.L6066:
	.sleb128	23
	.4byte		.L6067
.L6071:
	.sleb128	26
	.4byte		.L6072-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6072:
.L6070:
	.sleb128	23
	.4byte		.L6071
.L6075:
	.sleb128	26
	.4byte		.L6076-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6076:
.L6074:
	.sleb128	23
	.4byte		.L6075
.L6079:
	.sleb128	26
	.4byte		.L6080-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6080:
.L6078:
	.sleb128	23
	.4byte		.L6079
.L6083:
	.sleb128	26
	.4byte		.L6084-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6084:
.L6082:
	.sleb128	23
	.4byte		.L6083
.L6091:
	.sleb128	26
	.4byte		.L6092-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6092:
.L6090:
	.sleb128	23
	.4byte		.L6091
.L6095:
	.sleb128	26
	.4byte		.L6096-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6096:
.L6094:
	.sleb128	23
	.4byte		.L6095
.L6099:
	.sleb128	26
	.4byte		.L6100-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6100:
.L6098:
	.sleb128	23
	.4byte		.L6099
.L6103:
	.sleb128	26
	.4byte		.L6104-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6104:
.L6102:
	.sleb128	23
	.4byte		.L6103
.L6107:
	.sleb128	26
	.4byte		.L6108-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6108:
.L6106:
	.sleb128	23
	.4byte		.L6107
.L6111:
	.sleb128	26
	.4byte		.L6112-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6112:
.L6110:
	.sleb128	23
	.4byte		.L6111
.L6115:
	.sleb128	26
	.4byte		.L6116-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6116:
.L6114:
	.sleb128	23
	.4byte		.L6115
.L6119:
	.sleb128	26
	.4byte		.L6120-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6120:
.L6118:
	.sleb128	23
	.4byte		.L6119
.L6123:
	.sleb128	26
	.4byte		.L6124-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6124:
.L6122:
	.sleb128	23
	.4byte		.L6123
.L6131:
	.sleb128	26
	.4byte		.L6132-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6132:
.L6130:
	.sleb128	23
	.4byte		.L6131
.L6135:
	.sleb128	26
	.4byte		.L6136-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6136:
.L6134:
	.sleb128	23
	.4byte		.L6135
.L6139:
	.sleb128	26
	.4byte		.L6140-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6140:
.L6138:
	.sleb128	23
	.4byte		.L6139
.L6143:
	.sleb128	26
	.4byte		.L6144-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6144:
.L6142:
	.sleb128	23
	.4byte		.L6143
.L6147:
	.sleb128	26
	.4byte		.L6148-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6148:
.L6146:
	.sleb128	23
	.4byte		.L6147
.L6151:
	.sleb128	26
	.4byte		.L6152-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6152:
.L6150:
	.sleb128	23
	.4byte		.L6151
.L6155:
	.sleb128	26
	.4byte		.L6156-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6156:
.L6154:
	.sleb128	23
	.4byte		.L6155
.L6159:
	.sleb128	26
	.4byte		.L6160-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6160:
.L6158:
	.sleb128	23
	.4byte		.L6159
.L6163:
	.sleb128	26
	.4byte		.L6164-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6164:
.L6162:
	.sleb128	23
	.4byte		.L6163
.L6171:
	.sleb128	26
	.4byte		.L6172-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L6172:
.L6170:
	.sleb128	23
	.4byte		.L6171
.L6175:
	.sleb128	26
	.4byte		.L6176-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L6176:
.L6174:
	.sleb128	23
	.4byte		.L6175
.L6179:
	.sleb128	26
	.4byte		.L6180-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L6180:
.L6178:
	.sleb128	23
	.4byte		.L6179
.L6183:
	.sleb128	26
	.4byte		.L6184-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L6184:
.L6182:
	.sleb128	23
	.4byte		.L6183
.L6187:
	.sleb128	26
	.4byte		.L6188-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L6188:
.L6186:
	.sleb128	23
	.4byte		.L6187
.L6191:
	.sleb128	26
	.4byte		.L6192-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L6192:
.L6190:
	.sleb128	23
	.4byte		.L6191
.L6195:
	.sleb128	26
	.4byte		.L6196-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L6196:
.L6194:
	.sleb128	23
	.4byte		.L6195
.L6199:
	.sleb128	26
	.4byte		.L6200-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L6200:
.L6198:
	.sleb128	23
	.4byte		.L6199
.L6203:
	.sleb128	26
	.4byte		.L6204-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L6204:
.L6202:
	.sleb128	23
	.4byte		.L6203
.L6211:
	.sleb128	26
	.4byte		.L6212-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6212:
.L6210:
	.sleb128	23
	.4byte		.L6211
.L6215:
	.sleb128	26
	.4byte		.L6216-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6216:
.L6214:
	.sleb128	23
	.4byte		.L6215
.L6219:
	.sleb128	26
	.4byte		.L6220-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6220:
.L6218:
	.sleb128	23
	.4byte		.L6219
.L6223:
	.sleb128	26
	.4byte		.L6224-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6224:
.L6222:
	.sleb128	23
	.4byte		.L6223
.L6227:
	.sleb128	26
	.4byte		.L6228-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6228:
.L6226:
	.sleb128	23
	.4byte		.L6227
.L6231:
	.sleb128	26
	.4byte		.L6232-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6232:
.L6230:
	.sleb128	23
	.4byte		.L6231
.L6235:
	.sleb128	26
	.4byte		.L6236-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6236:
.L6234:
	.sleb128	23
	.4byte		.L6235
.L6239:
	.sleb128	26
	.4byte		.L6240-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6240:
.L6238:
	.sleb128	23
	.4byte		.L6239
.L6243:
	.sleb128	26
	.4byte		.L6244-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6244:
.L6242:
	.sleb128	23
	.4byte		.L6243
.L6251:
	.sleb128	26
	.4byte		.L6252-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6252:
.L6250:
	.sleb128	23
	.4byte		.L6251
.L6255:
	.sleb128	26
	.4byte		.L6256-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6256:
.L6254:
	.sleb128	23
	.4byte		.L6255
.L6259:
	.sleb128	26
	.4byte		.L6260-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6260:
.L6258:
	.sleb128	23
	.4byte		.L6259
.L6263:
	.sleb128	26
	.4byte		.L6264-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6264:
.L6262:
	.sleb128	23
	.4byte		.L6263
.L6267:
	.sleb128	26
	.4byte		.L6268-.L2
	.4byte		.L5682
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6268:
.L6266:
	.sleb128	23
	.4byte		.L6267
.L6271:
	.sleb128	26
	.4byte		.L6272-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6272:
.L6270:
	.sleb128	23
	.4byte		.L6271
.L6275:
	.sleb128	26
	.4byte		.L6276-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6276:
.L6274:
	.sleb128	23
	.4byte		.L6275
.L6279:
	.sleb128	26
	.4byte		.L6280-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6280:
.L6278:
	.sleb128	23
	.4byte		.L6279
.L6283:
	.sleb128	26
	.4byte		.L6284-.L2
	.4byte		.L5703
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6284:
.L6282:
	.sleb128	23
	.4byte		.L6283
.L6307:
	.sleb128	21
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L6306:
	.sleb128	22
	.byte		"U16"
	.byte		0
	.4byte		.L6307
.L6373:
	.sleb128	22
	.byte		"RT_MODEL_ATV_T"
	.byte		0
	.4byte		.L6374
.L6372:
	.sleb128	24
	.4byte		.L6373
.L6420:
	.sleb128	22
	.byte		"PKN_TASK_T"
	.byte		0
	.4byte		.L6421
.L6419:
	.sleb128	23
	.4byte		.L6420
.L6418:
	.sleb128	24
	.4byte		.L6419
.L6417:
	.sleb128	23
	.4byte		.L6418
.L6416:
	.sleb128	22
	.byte		"PKN_TASK_HANDLE_T"
	.byte		0
	.4byte		.L6417
.L6424:
	.sleb128	22
	.byte		"B_ATV_T"
	.byte		0
	.4byte		.L6425
.L6427:
	.sleb128	22
	.byte		"DW_ATV_T"
	.byte		0
	.4byte		.L6428
.L6445:
	.sleb128	22
	.byte		"uint16_T"
	.byte		0
	.4byte		.L6307
.L6508:
	.sleb128	23
	.4byte		.L6445
	.section	.debug_info,,n
.L6507:
	.sleb128	28
	.4byte		.L6508
.L6514:
	.sleb128	23
	.4byte		.L5106
.L6513:
	.sleb128	28
	.4byte		.L6514
.L6517:
	.sleb128	23
	.4byte		.L5529
.L6516:
	.sleb128	28
	.4byte		.L6517
.L6527:
	.sleb128	22
	.byte		"PUT_DEBOUNCE_TIME_T"
	.byte		0
	.4byte		.L6528
.L6545:
	.sleb128	23
	.4byte		.L6372
.L6550:
	.sleb128	23
	.4byte		.L5411
.L6549:
	.sleb128	28
	.4byte		.L6550
.L6556:
	.sleb128	23
	.4byte		.L5459
.L6555:
	.sleb128	28
	.4byte		.L6556
.L6569:
	.sleb128	22
	.byte		"char_T"
	.byte		0
	.4byte		.L5107
.L6568:
	.sleb128	23
	.4byte		.L6569
.L6567:
	.sleb128	24
	.4byte		.L6568
.L6571:
	.sleb128	24
	.4byte		.L6572
.L6570:
	.sleb128	24
	.4byte		.L6571
.L6573:
	.sleb128	22
	.byte		"SS_SimMode"
	.byte		0
	.4byte		.L6574
.L6576:
	.sleb128	22
	.byte		"RTWExtModeInfo"
	.byte		0
	.4byte		.L6577
.L6575:
	.sleb128	24
	.4byte		.L6576
.L6579:
	.sleb128	22
	.byte		"ssSolverInfo"
	.byte		0
	.4byte		.L6580
.L6578:
	.sleb128	22
	.byte		"RTWSolverInfo"
	.byte		0
	.4byte		.L6579
.L6581:
	.sleb128	24
	.4byte		.L6578
.L6583:
	.sleb128	23
	.4byte		.L5417
.L6582:
	.sleb128	24
	.4byte		.L6583
.L6585:
	.sleb128	22
	.byte		"ZCSigState"
	.byte		0
	.4byte		.L5529
.L6584:
	.sleb128	24
	.4byte		.L6585
.L6586:
	.sleb128	24
	.4byte		.L5411
.L6587:
	.sleb128	24
	.4byte		.L5106
.L6594:
	.sleb128	22
	.byte		"SimTimeStep"
	.byte		0
	.4byte		.L6595
.L6596:
	.sleb128	24
	.4byte		.L5410
.L6597:
	.sleb128	26
	.4byte		.L6598-.L2
	.4byte		.L5410
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6598:
.L6599:
	.sleb128	26
	.4byte		.L6600-.L2
	.4byte		.L5410
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6600:
.L6601:
	.sleb128	26
	.4byte		.L6602-.L2
	.4byte		.L5414
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6602:
.L6603:
	.sleb128	26
	.4byte		.L6604-.L2
	.4byte		.L5414
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6604:
.L6605:
	.sleb128	26
	.4byte		.L6606-.L2
	.4byte		.L5414
	.sleb128	27
	.uleb128	8
	.sleb128	0
.L6606:
.L6607:
	.sleb128	26
	.4byte		.L6608-.L2
	.4byte		.L5410
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6608:
.L6611:
	.sleb128	26
	.4byte		.L6612-.L2
	.4byte		.L5529
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6612:
.L6615:
	.sleb128	26
	.4byte		.L6616-.L2
	.4byte		.L5053
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6616:
	.section	.debug_info,,n
.L6624:
	.sleb128	29
	.4byte		.L6625-.L2
	.byte		0x1
	.sleb128	0
.L6625:
.L6623:
	.sleb128	24
	.4byte		.L6624
.L6626:
	.sleb128	22
	.byte		"PKN_TASKSET_T"
	.byte		0
	.4byte		.L5998
.L6628:
	.sleb128	26
	.4byte		.L6629-.L2
	.4byte		.L5053
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6629:
.L6631:
	.sleb128	26
	.4byte		.L6632-.L2
	.4byte		.L5053
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L6632:
.L6636:
	.sleb128	22
	.byte		"SimStruct"
	.byte		0
	.4byte		.L6572
.L6635:
	.sleb128	24
	.4byte		.L6636
.L6644:
	.sleb128	24
	.4byte		.L6645
.L6657:
	.sleb128	24
	.4byte		.L6658
.L6660:
	.sleb128	22
	.byte		"ZCDirection"
	.byte		0
	.4byte		.L6661
.L6659:
	.sleb128	24
	.4byte		.L6660
.L6663:
	.sleb128	22
	.byte		"SparseHeader"
	.byte		0
	.4byte		.L6664
.L6662:
	.sleb128	24
	.4byte		.L6663
.L6665:
	.sleb128	24
	.4byte		.L6666
.L6668:
	.sleb128	21
	.byte		"unsigned int"
	.byte		0
	.byte		0x7
	.byte		0x4
.L6673:
	.sleb128	24
	.4byte		.L6550
.L6672:
	.sleb128	23
	.4byte		.L6673
.L6671:
	.sleb128	24
	.4byte		.L6672
.L6670:
	.sleb128	22
	.byte		"UPtrsType"
	.byte		0
	.4byte		.L6671
.L6675:
	.sleb128	24
	.4byte		.L5529
.L6677:
	.sleb128	22
	.byte		"ssPeriodicStatesInfo"
	.byte		0
	.4byte		.L6678
.L6676:
	.sleb128	24
	.4byte		.L6677
.L6679:
	.sleb128	26
	.4byte		.L6680-.L2
	.4byte		.L5416
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L6680:
.L6685:
	.sleb128	29
	.4byte		.L6686-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6686:
.L6684:
	.sleb128	24
	.4byte		.L6685
.L6683:
	.sleb128	22
	.byte		"mdlProjectionFcn"
	.byte		0
	.4byte		.L6684
.L6689:
	.sleb128	29
	.4byte		.L6690-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6690:
.L6688:
	.sleb128	24
	.4byte		.L6689
.L6687:
	.sleb128	22
	.byte		"mdlJacobianFcn"
	.byte		0
	.4byte		.L6688
.L6693:
	.sleb128	29
	.4byte		.L6694-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
.L6695:
	.sleb128	22
	.byte		"Frame_T"
	.byte		0
	.4byte		.L6696
	.sleb128	30
	.4byte		.L6695
	.sleb128	0
.L6694:
.L6692:
	.sleb128	24
	.4byte		.L6693
.L6691:
	.sleb128	22
	.byte		"mdlSetInputPortFrameDataFcn"
	.byte		0
	.4byte		.L6692
	.section	.debug_info,,n
.L6699:
	.sleb128	31
	.4byte		.L6700-.L2
	.4byte		.L5106
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L6700:
.L6698:
	.sleb128	24
	.4byte		.L6699
.L6697:
	.sleb128	22
	.byte		"StrictBooleanCheckEnabled"
	.byte		0
	.4byte		.L6698
.L6703:
	.sleb128	29
	.4byte		.L6704-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6704:
.L6702:
	.sleb128	24
	.4byte		.L6703
.L6701:
	.sleb128	22
	.byte		"mdlSetDefaultPortDimensionsFcn"
	.byte		0
	.4byte		.L6702
.L6707:
	.sleb128	29
	.4byte		.L6708-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6708:
.L6706:
	.sleb128	24
	.4byte		.L6707
.L6705:
	.sleb128	22
	.byte		"mdlSetDefaultPortDataTypesFcn"
	.byte		0
	.4byte		.L6706
.L6711:
	.sleb128	29
	.4byte		.L6712-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6712:
.L6710:
	.sleb128	24
	.4byte		.L6711
.L6709:
	.sleb128	22
	.byte		"mdlSetDefaultPortComplexSignalsFcn"
	.byte		0
	.4byte		.L6710
.L6715:
	.sleb128	31
	.4byte		.L6716-.L2
	.4byte		.L5106
	.byte		0x1
	.sleb128	30
	.4byte		.L5415
	.sleb128	30
	.4byte		.L5106
	.sleb128	30
	.4byte		.L5106
.L6717:
	.sleb128	23
	.4byte		.L5415
	.sleb128	30
	.4byte		.L6717
	.sleb128	30
	.4byte		.L6582
	.sleb128	30
	.4byte		.L6717
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L6716:
.L6714:
	.sleb128	24
	.4byte		.L6715
.L6713:
	.sleb128	22
	.byte		"ConvertBuiltInDTypeFcn"
	.byte		0
	.4byte		.L6714
.L6724:
	.sleb128	23
	.4byte		.L5107
.L6723:
	.sleb128	24
	.4byte		.L6724
.L6721:
	.sleb128	31
	.4byte		.L6722-.L2
	.4byte		.L6723
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
.L6726:
	.sleb128	22
	.byte		"ExtModeLogBlockMeth"
	.byte		0
	.4byte		.L6727
.L6725:
	.sleb128	23
	.4byte		.L6726
	.sleb128	30
	.4byte		.L6725
	.sleb128	0
.L6722:
.L6720:
	.sleb128	24
	.4byte		.L6721
.L6719:
	.sleb128	22
	.byte		"SFunExtModeFcn"
	.byte		0
	.4byte		.L6720
.L6730:
	.sleb128	29
	.4byte		.L6731-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6731:
.L6729:
	.sleb128	24
	.4byte		.L6730
.L6728:
	.sleb128	22
	.byte		"mdlExtModeExecFcn"
	.byte		0
	.4byte		.L6729
.L6734:
	.sleb128	29
	.4byte		.L6735-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
.L6737:
	.sleb128	22
	.byte		"RTWCGInterface"
	.byte		0
	.4byte		.L5417
.L6736:
	.sleb128	24
	.4byte		.L6737
	.sleb128	30
	.4byte		.L6736
	.sleb128	0
.L6735:
.L6733:
	.sleb128	24
	.4byte		.L6734
.L6732:
	.sleb128	22
	.byte		"mdlRTWCGFcn"
	.byte		0
	.4byte		.L6733
.L6740:
	.sleb128	29
	.4byte		.L6741-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6741:
.L6739:
	.sleb128	24
	.4byte		.L6740
.L6738:
	.sleb128	22
	.byte		"mdlMassMatrixFcn"
	.byte		0
	.4byte		.L6739
.L6742:
	.sleb128	24
	.4byte		.L6743
.L6746:
	.sleb128	29
	.4byte		.L6747-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6747:
.L6745:
	.sleb128	24
	.4byte		.L6746
.L6744:
	.sleb128	22
	.byte		"mdlForcingFunctionFcn"
	.byte		0
	.4byte		.L6745
.L6750:
	.sleb128	29
	.4byte		.L6751-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6751:
.L6749:
	.sleb128	24
	.4byte		.L6750
.L6748:
	.sleb128	22
	.byte		"mdlEnableFcn"
	.byte		0
	.4byte		.L6749
.L6754:
	.sleb128	29
	.4byte		.L6755-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6755:
.L6753:
	.sleb128	24
	.4byte		.L6754
.L6752:
	.sleb128	22
	.byte		"mdlDisableFcn"
	.byte		0
	.4byte		.L6753
.L6758:
	.sleb128	29
	.4byte		.L6759-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
.L6760:
	.sleb128	22
	.byte		"ssSimStatusChangeType"
	.byte		0
	.4byte		.L6761
	.sleb128	30
	.4byte		.L6760
	.sleb128	0
.L6759:
.L6757:
	.sleb128	24
	.4byte		.L6758
.L6756:
	.sleb128	22
	.byte		"mdlSimStatusChangeFcn"
	.byte		0
	.4byte		.L6757
.L6764:
	.sleb128	29
	.4byte		.L6765-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
.L6766:
	.sleb128	22
	.byte		"PropagationPassType"
	.byte		0
	.4byte		.L6767
	.sleb128	30
	.4byte		.L6766
	.sleb128	0
.L6765:
.L6763:
	.sleb128	24
	.4byte		.L6764
.L6762:
	.sleb128	22
	.byte		"mdlInitializePropagationPassFcn"
	.byte		0
	.4byte		.L6763
.L6768:
	.sleb128	24
	.4byte		.L6769
.L6770:
	.sleb128	24
	.4byte		.L6771
.L6776:
	.sleb128	29
	.4byte		.L6777-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6777:
.L6775:
	.sleb128	24
	.4byte		.L6776
.L6774:
	.sleb128	22
	.byte		"mdlInitSystemMatricesFcn"
	.byte		0
	.4byte		.L6775
.L6780:
	.sleb128	29
	.4byte		.L6781-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6781:
.L6779:
	.sleb128	24
	.4byte		.L6780
.L6778:
	.sleb128	22
	.byte		"mdlJacobianIrJcFcn"
	.byte		0
	.4byte		.L6779
.L6785:
	.sleb128	29
	.4byte		.L6786-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
.L6787:
	.sleb128	22
	.byte		"SymbDimsId"
	.byte		0
	.4byte		.L5414
	.sleb128	30
	.4byte		.L6787
	.sleb128	0
.L6786:
.L6784:
	.sleb128	24
	.4byte		.L6785
.L6783:
	.sleb128	22
	.byte		"mdlSetInputPortSymbolicDimensionsFcn"
	.byte		0
	.4byte		.L6784
.L6790:
	.sleb128	29
	.4byte		.L6791-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	30
	.4byte		.L6787
	.sleb128	0
.L6791:
.L6789:
	.sleb128	24
	.4byte		.L6790
.L6788:
	.sleb128	22
	.byte		"mdlSetOutputPortSymbolicDimensionsFcn"
	.byte		0
	.4byte		.L6789
.L6794:
	.sleb128	29
	.4byte		.L6795-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6795:
.L6793:
	.sleb128	24
	.4byte		.L6794
.L6792:
	.sleb128	22
	.byte		"mdlSetupRuntimeResourcesFcn"
	.byte		0
	.4byte		.L6793
.L6798:
	.sleb128	29
	.4byte		.L6799-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6799:
.L6797:
	.sleb128	24
	.4byte		.L6798
.L6796:
	.sleb128	22
	.byte		"mdlCleanupRuntimeResourcesFcn"
	.byte		0
	.4byte		.L6797
.L6802:
	.sleb128	29
	.4byte		.L6803-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5053
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L6803:
.L6801:
	.sleb128	24
	.4byte		.L6802
.L6800:
	.sleb128	22
	.byte		"mdlDataTransferReadFcn"
	.byte		0
	.4byte		.L6801
.L6806:
	.sleb128	29
	.4byte		.L6807-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5053
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L6807:
.L6805:
	.sleb128	24
	.4byte		.L6806
.L6804:
	.sleb128	22
	.byte		"mdlDataTransferWriteFcn"
	.byte		0
	.4byte		.L6805
.L6810:
	.sleb128	29
	.4byte		.L6811-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5053
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L6811:
.L6809:
	.sleb128	24
	.4byte		.L6810
.L6808:
	.sleb128	22
	.byte		"mdlDataTransferInitBuffersFcn"
	.byte		0
	.4byte		.L6809
.L6812:
	.sleb128	26
	.4byte		.L6813-.L2
	.4byte		.L5416
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L6813:
.L6817:
	.sleb128	29
	.4byte		.L6818-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6818:
.L6816:
	.sleb128	24
	.4byte		.L6817
.L6815:
	.sleb128	22
	.byte		"mdlInitializeSizesFcn"
	.byte		0
	.4byte		.L6816
.L6821:
	.sleb128	31
	.4byte		.L6822-.L2
	.4byte		.L5414
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L6822:
.L6820:
	.sleb128	24
	.4byte		.L6821
.L6819:
	.sleb128	22
	.byte		"mdlGetInputPortWidthLevel1Fcn"
	.byte		0
	.4byte		.L6820
.L6825:
	.sleb128	31
	.4byte		.L6826-.L2
	.4byte		.L5414
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L6826:
.L6824:
	.sleb128	24
	.4byte		.L6825
.L6823:
	.sleb128	22
	.byte		"mdlGetOutputPortWidthLevel1Fcn"
	.byte		0
	.4byte		.L6824
.L6831:
	.sleb128	29
	.4byte		.L6832-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
.L6833:
	.sleb128	22
	.byte		"DTypeId"
	.byte		0
	.4byte		.L5414
	.sleb128	30
	.4byte		.L6833
	.sleb128	0
.L6832:
.L6830:
	.sleb128	24
	.4byte		.L6831
.L6829:
	.sleb128	22
	.byte		"mdlSetInputPortDataTypeFcn"
	.byte		0
	.4byte		.L6830
.L6836:
	.sleb128	29
	.4byte		.L6837-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	30
	.4byte		.L6833
	.sleb128	0
.L6837:
.L6835:
	.sleb128	24
	.4byte		.L6836
.L6834:
	.sleb128	22
	.byte		"mdlSetOutputPortDataTypeFcn"
	.byte		0
	.4byte		.L6835
.L6840:
	.sleb128	29
	.4byte		.L6841-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6841:
.L6839:
	.sleb128	24
	.4byte		.L6840
.L6838:
	.sleb128	22
	.byte		"mdlInitializeSampleTimesFcn"
	.byte		0
	.4byte		.L6839
.L6844:
	.sleb128	29
	.4byte		.L6845-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5415
	.sleb128	30
	.4byte		.L5411
	.sleb128	30
	.4byte		.L5411
	.sleb128	0
.L6845:
.L6843:
	.sleb128	24
	.4byte		.L6844
.L6842:
	.sleb128	22
	.byte		"mdlSetInputPortSampleTimeFcn"
	.byte		0
	.4byte		.L6843
.L6848:
	.sleb128	29
	.4byte		.L6849-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5415
	.sleb128	30
	.4byte		.L5411
	.sleb128	30
	.4byte		.L5411
	.sleb128	0
.L6849:
.L6847:
	.sleb128	24
	.4byte		.L6848
.L6846:
	.sleb128	22
	.byte		"mdlSetOutputPortSampleTimeFcn"
	.byte		0
	.4byte		.L6847
.L6852:
	.sleb128	29
	.4byte		.L6853-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6853:
.L6851:
	.sleb128	24
	.4byte		.L6852
.L6850:
	.sleb128	22
	.byte		"mdlSetWorkWidthsFcn"
	.byte		0
	.4byte		.L6851
.L6856:
	.sleb128	29
	.4byte		.L6857-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6857:
.L6855:
	.sleb128	24
	.4byte		.L6856
.L6854:
	.sleb128	22
	.byte		"mdlRTWFcn"
	.byte		0
	.4byte		.L6855
.L6861:
	.sleb128	29
	.4byte		.L6862-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6862:
.L6860:
	.sleb128	24
	.4byte		.L6861
.L6859:
	.sleb128	22
	.byte		"mdlStartFcn"
	.byte		0
	.4byte		.L6860
.L6865:
	.sleb128	29
	.4byte		.L6866-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6866:
.L6864:
	.sleb128	24
	.4byte		.L6865
.L6863:
	.sleb128	22
	.byte		"mdlCheckParametersFcn"
	.byte		0
	.4byte		.L6864
.L6869:
	.sleb128	29
	.4byte		.L6870-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6870:
.L6868:
	.sleb128	24
	.4byte		.L6869
.L6867:
	.sleb128	22
	.byte		"mdlProcessParametersFcn"
	.byte		0
	.4byte		.L6868
.L6873:
	.sleb128	29
	.4byte		.L6874-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6874:
.L6872:
	.sleb128	24
	.4byte		.L6873
.L6871:
	.sleb128	22
	.byte		"mdlGetTimeOfNextVarHitFcn"
	.byte		0
	.4byte		.L6872
.L6880:
	.sleb128	29
	.4byte		.L6881-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6881:
.L6879:
	.sleb128	24
	.4byte		.L6880
.L6878:
	.sleb128	22
	.byte		"mdlZeroCrossingsFcn"
	.byte		0
	.4byte		.L6879
.L6884:
	.sleb128	29
	.4byte		.L6885-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6885:
.L6883:
	.sleb128	24
	.4byte		.L6884
.L6882:
	.sleb128	22
	.byte		"mdlTerminateFcn"
	.byte		0
	.4byte		.L6883
.L6891:
	.sleb128	29
	.4byte		.L6892-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
.L6893:
	.sleb128	22
	.byte		"CSignal_T"
	.byte		0
	.4byte		.L5414
	.sleb128	30
	.4byte		.L6893
	.sleb128	0
.L6892:
.L6890:
	.sleb128	24
	.4byte		.L6891
.L6889:
	.sleb128	22
	.byte		"mdlSetOutputPortComplexSignalFcn"
	.byte		0
	.4byte		.L6890
.L6896:
	.sleb128	29
	.4byte		.L6897-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6897:
.L6895:
	.sleb128	24
	.4byte		.L6896
.L6894:
	.sleb128	22
	.byte		"RTWGeneratedDisableFcn"
	.byte		0
	.4byte		.L6895
.L6901:
	.sleb128	29
	.4byte		.L6902-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	30
	.4byte		.L6893
	.sleb128	0
.L6902:
.L6900:
	.sleb128	24
	.4byte		.L6901
.L6899:
	.sleb128	22
	.byte		"mdlSetInputPortComplexSignalFcn"
	.byte		0
	.4byte		.L6900
.L6905:
	.sleb128	29
	.4byte		.L6906-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6906:
.L6904:
	.sleb128	24
	.4byte		.L6905
.L6903:
	.sleb128	22
	.byte		"RTWGeneratedEnableFcn"
	.byte		0
	.4byte		.L6904
.L6910:
	.sleb128	29
	.4byte		.L6911-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6911:
.L6909:
	.sleb128	24
	.4byte		.L6910
.L6908:
	.sleb128	22
	.byte		"mdlDerivativesFcn"
	.byte		0
	.4byte		.L6909
.L6914:
	.sleb128	29
	.4byte		.L6915-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6586
	.sleb128	30
	.4byte		.L6673
	.sleb128	30
	.4byte		.L6673
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L6915:
.L6913:
	.sleb128	24
	.4byte		.L6914
.L6912:
	.sleb128	22
	.byte		"mdlDerivativesLevel1Fcn"
	.byte		0
	.4byte		.L6913
.L6919:
	.sleb128	29
	.4byte		.L6920-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L6920:
.L6918:
	.sleb128	24
	.4byte		.L6919
.L6917:
	.sleb128	22
	.byte		"mdlUpdateFcn"
	.byte		0
	.4byte		.L6918
.L6923:
	.sleb128	29
	.4byte		.L6924-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6586
	.sleb128	30
	.4byte		.L6673
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L6924:
.L6922:
	.sleb128	24
	.4byte		.L6923
.L6921:
	.sleb128	22
	.byte		"mdlUpdateLevel1Fcn"
	.byte		0
	.4byte		.L6922
.L6928:
	.sleb128	29
	.4byte		.L6929-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L6929:
.L6927:
	.sleb128	24
	.4byte		.L6928
.L6926:
	.sleb128	22
	.byte		"mdlOutputsFcn"
	.byte		0
	.4byte		.L6927
.L6932:
	.sleb128	29
	.4byte		.L6933-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6586
	.sleb128	30
	.4byte		.L6673
	.sleb128	30
	.4byte		.L6673
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L6933:
.L6931:
	.sleb128	24
	.4byte		.L6932
.L6930:
	.sleb128	22
	.byte		"mdlOutputsLevel1Fcn"
	.byte		0
	.4byte		.L6931
.L6937:
	.sleb128	29
	.4byte		.L6938-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6938:
.L6936:
	.sleb128	24
	.4byte		.L6937
.L6935:
	.sleb128	22
	.byte		"mdlInitializeConditionsFcn"
	.byte		0
	.4byte		.L6936
.L6941:
	.sleb128	29
	.4byte		.L6942-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6586
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6942:
.L6940:
	.sleb128	24
	.4byte		.L6941
.L6939:
	.sleb128	22
	.byte		"mdlInitializeConditionsLevel1Fcn"
	.byte		0
	.4byte		.L6940
.L6946:
	.sleb128	29
	.4byte		.L6947-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L6947:
.L6945:
	.sleb128	24
	.4byte		.L6946
.L6944:
	.sleb128	22
	.byte		"mdlSetOutputPortWidthFcn"
	.byte		0
	.4byte		.L6945
.L6950:
	.sleb128	29
	.4byte		.L6951-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
.L6954:
	.sleb128	22
	.byte		"DimsInfo_T"
	.byte		0
	.4byte		.L6955
.L6953:
	.sleb128	23
	.4byte		.L6954
.L6952:
	.sleb128	24
	.4byte		.L6953
	.sleb128	30
	.4byte		.L6952
	.sleb128	0
.L6951:
.L6949:
	.sleb128	24
	.4byte		.L6950
.L6948:
	.sleb128	22
	.byte		"mdlSetOutputPortDimensionsFcn"
	.byte		0
	.4byte		.L6949
.L6959:
	.sleb128	29
	.4byte		.L6960-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L6960:
.L6958:
	.sleb128	24
	.4byte		.L6959
.L6957:
	.sleb128	22
	.byte		"mdlSetInputPortWidthFcn"
	.byte		0
	.4byte		.L6958
.L6963:
	.sleb128	29
	.4byte		.L6964-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	30
	.4byte		.L6952
	.sleb128	0
.L6964:
.L6962:
	.sleb128	24
	.4byte		.L6963
.L6961:
	.sleb128	22
	.byte		"mdlSetInputPortDimensionsFcn"
	.byte		0
	.4byte		.L6962
.L6968:
	.sleb128	29
	.4byte		.L6969-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	0
.L6969:
.L6967:
	.sleb128	24
	.4byte		.L6968
.L6966:
	.sleb128	22
	.byte		"mdlConstraintsFcn"
	.byte		0
	.4byte		.L6967
.L6971:
	.sleb128	22
	.byte		"ssMatrixType"
	.byte		0
	.4byte		.L6972
.L6973:
	.sleb128	22
	.byte		"ssSparseMatrixInfo"
	.byte		0
	.4byte		.L6974
.L6979:
	.sleb128	31
	.4byte		.L6980-.L2
	.4byte		.L6833
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L6567
	.sleb128	0
.L6980:
.L6978:
	.sleb128	24
	.4byte		.L6979
.L6977:
	.sleb128	22
	.byte		"OldRegisterDataType"
	.byte		0
	.4byte		.L6978
.L6983:
	.sleb128	31
	.4byte		.L6984-.L2
	.4byte		.L5414
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L6833
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L6984:
.L6982:
	.sleb128	24
	.4byte		.L6983
.L6981:
	.sleb128	22
	.byte		"SetDataTypeSize"
	.byte		0
	.4byte		.L6982
.L6987:
	.sleb128	31
	.4byte		.L6988-.L2
	.4byte		.L5414
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L6833
	.sleb128	0
.L6988:
.L6986:
	.sleb128	24
	.4byte		.L6987
.L6985:
	.sleb128	22
	.byte		"GetDataTypeSize"
	.byte		0
	.4byte		.L6986
.L6991:
	.sleb128	31
	.4byte		.L6992-.L2
	.4byte		.L5414
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L6833
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L6992:
.L6990:
	.sleb128	24
	.4byte		.L6991
.L6989:
	.sleb128	22
	.byte		"SetDataTypeZero"
	.byte		0
	.4byte		.L6990
.L6995:
	.sleb128	31
	.4byte		.L6996-.L2
	.4byte		.L6582
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L6833
	.sleb128	0
.L6996:
.L6994:
	.sleb128	24
	.4byte		.L6995
.L6993:
	.sleb128	22
	.byte		"GetDataTypeZero"
	.byte		0
	.4byte		.L6994
.L6999:
	.sleb128	31
	.4byte		.L7000-.L2
	.4byte		.L6567
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L6833
	.sleb128	0
.L7000:
.L6998:
	.sleb128	24
	.4byte		.L6999
.L6997:
	.sleb128	22
	.byte		"GetDataTypeName"
	.byte		0
	.4byte		.L6998
.L7003:
	.sleb128	31
	.4byte		.L7004-.L2
	.4byte		.L6833
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L6567
	.sleb128	0
.L7004:
.L7002:
	.sleb128	24
	.4byte		.L7003
.L7001:
	.sleb128	22
	.byte		"GetDataTypeId"
	.byte		0
	.4byte		.L7002
.L7007:
	.sleb128	31
	.4byte		.L7008-.L2
	.4byte		.L5414
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L7008:
.L7006:
	.sleb128	24
	.4byte		.L7007
.L7005:
	.sleb128	22
	.byte		"SetNumDWork"
	.byte		0
	.4byte		.L7006
.L7012:
	.sleb128	31
	.4byte		.L7013-.L2
	.4byte		.L5414
	.byte		0x1
.L7015:
	.sleb128	23
	.4byte		.L6636
.L7014:
	.sleb128	24
	.4byte		.L7015
	.sleb128	30
	.4byte		.L7014
	.sleb128	30
	.4byte		.L6723
.L7018:
	.sleb128	22
	.byte		"mxArray"
	.byte		0
	.4byte		.L5411
.L7017:
	.sleb128	24
	.4byte		.L7018
.L7016:
	.sleb128	24
	.4byte		.L7017
	.sleb128	30
	.4byte		.L7016
	.sleb128	0
.L7013:
.L7011:
	.sleb128	24
	.4byte		.L7012
.L7010:
	.sleb128	22
	.byte		"_ResolveVarFcn"
	.byte		0
	.4byte		.L7011
.L7020:
	.sleb128	24
	.4byte		.L5416
.L7026:
	.sleb128	22
	.byte		"ssFcnCallErr_T"
	.byte		0
	.4byte		.L5414
.L7024:
	.sleb128	31
	.4byte		.L7025-.L2
	.4byte		.L7026
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L5414
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L7025:
.L7023:
	.sleb128	24
	.4byte		.L7024
.L7022:
	.sleb128	22
	.byte		"SysOutputFcn"
	.byte		0
	.4byte		.L7023
.L7021:
	.sleb128	24
	.4byte		.L7022
.L7028:
	.sleb128	22
	.byte		"uint_T"
	.byte		0
	.4byte		.L6668
.L7031:
	.sleb128	22
	.byte		"ssNonContDerivSigInfo"
	.byte		0
	.4byte		.L7032
.L7030:
	.sleb128	24
	.4byte		.L7031
.L7034:
	.sleb128	22
	.byte		"rtTimingBridge"
	.byte		0
	.4byte		.L7035
.L7033:
	.sleb128	24
	.4byte		.L7034
.L7037:
	.sleb128	22
	.byte		"RTWLogInfo"
	.byte		0
	.4byte		.L7038
.L7036:
	.sleb128	24
	.4byte		.L7037
.L7039:
	.sleb128	24
	.4byte		.L6579
.L7040:
	.sleb128	24
	.4byte		.L6569
.L7043:
	.sleb128	31
	.4byte		.L7044-.L2
	.4byte		.L5414
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
.L7045:
	.sleb128	22
	.byte		"_slexecBlkRTSType"
	.byte		0
	.4byte		.L7046
	.sleb128	30
	.4byte		.L7045
	.sleb128	30
	.4byte		.L5414
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L7044:
.L7042:
	.sleb128	24
	.4byte		.L7043
.L7041:
	.sleb128	22
	.byte		"_slexecBlkRTSGateway"
	.byte		0
	.4byte		.L7042
.L7047:
	.sleb128	24
	.4byte		.L5415
.L7048:
	.sleb128	26
	.4byte		.L7049-.L2
	.4byte		.L6569
	.sleb128	27
	.uleb128	31
	.sleb128	0
.L7049:
.L7052:
	.sleb128	31
	.4byte		.L7053-.L2
	.4byte		.L5414
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	30
	.4byte		.L6952
	.sleb128	0
.L7053:
.L7051:
	.sleb128	24
	.4byte		.L7052
.L7050:
	.sleb128	22
	.byte		"_ssSetInputPortDimensionInfoFcn"
	.byte		0
	.4byte		.L7051
.L7056:
	.sleb128	31
	.4byte		.L7057-.L2
	.4byte		.L5414
	.byte		0x1
	.sleb128	30
	.4byte		.L6635
	.sleb128	30
	.4byte		.L5414
	.sleb128	30
	.4byte		.L6952
	.sleb128	0
.L7057:
.L7055:
	.sleb128	24
	.4byte		.L7056
.L7054:
	.sleb128	22
	.byte		"_ssSetOutputPortDimensionInfoFcn"
	.byte		0
	.4byte		.L7055
.L7058:
	.sleb128	22
	.byte		"SolverMode"
	.byte		0
	.4byte		.L7059
.L7060:
	.sleb128	22
	.byte		"RTWGenMode"
	.byte		0
	.4byte		.L7061
.L7062:
	.sleb128	26
	.4byte		.L7063-.L2
	.4byte		.L5414
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L7063:
.L7064:
	.sleb128	26
	.4byte		.L7065-.L2
	.4byte		.L6586
	.sleb128	27
	.uleb128	0
	.sleb128	0
.L7065:
.L7068:
	.sleb128	24
	.4byte		.L5107
.L7070:
	.sleb128	24
	.4byte		.L7071
.L7075:
	.sleb128	24
	.4byte		.L7076
.L7077:
	.sleb128	24
	.4byte		.L7078
.L7079:
	.sleb128	26
	.4byte		.L7080-.L2
	.4byte		.L5416
	.sleb128	27
	.uleb128	12
	.sleb128	0
.L7080:
.L7081:
	.sleb128	26
	.4byte		.L7082-.L2
	.4byte		.L5414
	.sleb128	27
	.uleb128	14
	.sleb128	0
.L7082:
.L7085:
	.sleb128	22
	.byte		"size_t"
	.byte		0
	.4byte		.L6668
.L7084:
	.sleb128	24
	.4byte		.L7085
.L7086:
	.sleb128	26
	.4byte		.L7087-.L2
	.4byte		.L5416
	.sleb128	27
	.uleb128	9
	.sleb128	0
.L7087:
.L7089:
	.sleb128	24
	.4byte		.L7090
.L7091:
	.sleb128	24
	.4byte		.L7092
.L7093:
	.sleb128	24
	.4byte		.L7094
.L7095:
	.sleb128	24
	.4byte		.L7096
.L7097:
	.sleb128	24
	.4byte		.L7098
.L7099:
	.sleb128	24
	.4byte		.L7100
.L7101:
	.sleb128	24
	.4byte		.L7102
.L7103:
	.sleb128	24
	.4byte		.L7104
.L7105:
	.sleb128	26
	.4byte		.L7106-.L2
	.4byte		.L5416
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L7106:
.L7110:
	.sleb128	22
	.byte		"SS_DimsConstraintType"
	.byte		0
	.4byte		.L7111
.L7115:
	.sleb128	22
	.byte		"UnitId"
	.byte		0
	.4byte		.L5414
.L7118:
	.sleb128	26
	.4byte		.L7119-.L2
	.4byte		.L5416
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L7119:
.L7121:
	.sleb128	24
	.4byte		.L6717
.L7122:
	.sleb128	26
	.4byte		.L7123-.L2
	.4byte		.L5416
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L7123:
.L7126:
	.sleb128	24
	.4byte		.L7127
.L7128:
	.sleb128	24
	.4byte		.L7129
.L7131:
	.sleb128	26
	.4byte		.L7132-.L2
	.4byte		.L5416
	.sleb128	27
	.uleb128	27
	.sleb128	0
.L7132:
.L7134:
	.sleb128	24
	.4byte		.L7135
.L7137:
	.sleb128	24
	.4byte		.L7028
.L7141:
	.sleb128	22
	.byte		"ssParamRec"
	.byte		0
	.4byte		.L7142
.L7140:
	.sleb128	24
	.4byte		.L7141
.L7139:
	.sleb128	24
	.4byte		.L7140
.L7147:
	.sleb128	31
	.4byte		.L7148-.L2
	.4byte		.L5414
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L7148:
.L7146:
	.sleb128	24
	.4byte		.L7147
.L7145:
	.sleb128	22
	.byte		"_ssRegNumInputPortsFcn"
	.byte		0
	.4byte		.L7146
.L7151:
	.sleb128	31
	.4byte		.L7152-.L2
	.4byte		.L5414
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L7152:
.L7150:
	.sleb128	24
	.4byte		.L7151
.L7149:
	.sleb128	22
	.byte		"_ssRegNumOutputPortsFcn"
	.byte		0
	.4byte		.L7150
.L7153:
	.sleb128	24
	.4byte		.L7154
.L7155:
	.sleb128	24
	.4byte		.L7156
.L7167:
	.sleb128	23
	.4byte		.L6582
.L7166:
	.sleb128	24
	.4byte		.L7167
.L7165:
	.sleb128	22
	.byte		"InputPtrsType"
	.byte		0
	.4byte		.L7166
.L7170:
	.sleb128	26
	.4byte		.L7171-.L2
	.4byte		.L5414
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L7171:
.L7172:
	.sleb128	26
	.4byte		.L7173-.L2
	.4byte		.L5416
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L7173:
.L7178:
	.sleb128	26
	.4byte		.L7179-.L2
	.4byte		.L5053
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L7179:
.L7181:
	.sleb128	26
	.4byte		.L7182-.L2
	.4byte		.L5415
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L7182:
.L7192:
	.sleb128	22
	.byte		"TransformedFlag"
	.byte		0
	.4byte		.L7193
.L7200:
	.sleb128	22
	.byte		"ssDWorkUsageType"
	.byte		0
	.4byte		.L7201
.L7204:
	.sleb128	24
	.4byte		.L6955
.L7207:
	.sleb128	24
	.4byte		.L6594
.L7208:
	.sleb128	24
	.4byte		.L6586
.L7209:
	.sleb128	24
	.4byte		.L6596
.L7210:
	.sleb128	24
	.4byte		.L5418
.L7211:
	.sleb128	24
	.4byte		.L6567
.L7213:
	.sleb128	22
	.byte		"RTWRTModelMethodsInfo"
	.byte		0
	.4byte		.L7214
.L7212:
	.sleb128	24
	.4byte		.L7213
.L7215:
	.sleb128	22
	.byte		"slJmBdControl"
	.byte		0
	.4byte		.L7216
.L7222:
	.sleb128	29
	.4byte		.L7223-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L7223:
.L7221:
	.sleb128	24
	.4byte		.L7222
.L7220:
	.sleb128	22
	.byte		"rtMdlInitializeSizesFcn"
	.byte		0
	.4byte		.L7221
.L7226:
	.sleb128	29
	.4byte		.L7227-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L7227:
.L7225:
	.sleb128	24
	.4byte		.L7226
.L7224:
	.sleb128	22
	.byte		"rtMdlInitializeSampleTimesFcn"
	.byte		0
	.4byte		.L7225
.L7230:
	.sleb128	29
	.4byte		.L7231-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L7231:
.L7229:
	.sleb128	24
	.4byte		.L7230
.L7228:
	.sleb128	22
	.byte		"rtMdlStartFcn"
	.byte		0
	.4byte		.L7229
.L7234:
	.sleb128	29
	.4byte		.L7235-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L7235:
.L7233:
	.sleb128	24
	.4byte		.L7234
.L7232:
	.sleb128	22
	.byte		"rtMdlOutputsFcn"
	.byte		0
	.4byte		.L7233
.L7238:
	.sleb128	29
	.4byte		.L7239-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L5414
	.sleb128	0
.L7239:
.L7237:
	.sleb128	24
	.4byte		.L7238
.L7236:
	.sleb128	22
	.byte		"rtMdlUpdateFcn"
	.byte		0
	.4byte		.L7237
.L7242:
	.sleb128	29
	.4byte		.L7243-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L7243:
.L7241:
	.sleb128	24
	.4byte		.L7242
.L7240:
	.sleb128	22
	.byte		"rtMdlDerivativesFcn"
	.byte		0
	.4byte		.L7241
.L7246:
	.sleb128	29
	.4byte		.L7247-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L7247:
.L7245:
	.sleb128	24
	.4byte		.L7246
.L7244:
	.sleb128	22
	.byte		"rtMdlProjectionFcn"
	.byte		0
	.4byte		.L7245
.L7250:
	.sleb128	29
	.4byte		.L7251-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L7251:
.L7249:
	.sleb128	24
	.4byte		.L7250
.L7248:
	.sleb128	22
	.byte		"rtMdlMassMatrixFcn"
	.byte		0
	.4byte		.L7249
.L7254:
	.sleb128	29
	.4byte		.L7255-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L7255:
.L7253:
	.sleb128	24
	.4byte		.L7254
.L7252:
	.sleb128	22
	.byte		"rtMdlForcingFunctionFcn"
	.byte		0
	.4byte		.L7253
.L7258:
	.sleb128	29
	.4byte		.L7259-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L7259:
.L7257:
	.sleb128	24
	.4byte		.L7258
.L7256:
	.sleb128	22
	.byte		"rtMdlTerminateFcn"
	.byte		0
	.4byte		.L7257
.L7265:
	.sleb128	24
	.4byte		.L6582
.L7273:
	.sleb128	29
	.4byte		.L7274-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L5416
	.sleb128	0
.L7274:
.L7272:
	.sleb128	24
	.4byte		.L7273
.L7276:
	.sleb128	29
	.4byte		.L7277-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L5106
	.sleb128	0
.L7277:
.L7275:
	.sleb128	24
	.4byte		.L7276
.L7281:
	.sleb128	22
	.byte		"RTWLogSignalInfo"
	.byte		0
	.4byte		.L7282
.L7280:
	.sleb128	23
	.4byte		.L7281
.L7279:
	.sleb128	24
	.4byte		.L7280
.L7283:
	.sleb128	24
	.4byte		.L7281
.L7290:
	.sleb128	23
	.4byte		.L6001
.L7289:
	.sleb128	24
	.4byte		.L7290
.L7288:
	.sleb128	23
	.4byte		.L7289
.L7287:
	.sleb128	24
	.4byte		.L7288
.L7286:
	.sleb128	22
	.byte		"LogSignalPtrsType"
	.byte		0
	.4byte		.L7287
.L7292:
	.sleb128	24
	.4byte		.L6001
.L7291:
	.sleb128	24
	.4byte		.L7292
.L7296:
	.sleb128	22
	.byte		"BuiltInDTypeId"
	.byte		0
	.4byte		.L7297
.L7295:
	.sleb128	24
	.4byte		.L7296
.L7301:
	.sleb128	29
	.4byte		.L7302-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5416
	.sleb128	30
	.4byte		.L6582
	.sleb128	0
.L7302:
.L7300:
	.sleb128	24
	.4byte		.L7301
.L7299:
	.sleb128	22
	.byte		"RTWPreprocessingFcnPtr"
	.byte		0
	.4byte		.L7300
.L7298:
	.sleb128	24
	.4byte		.L7299
.L7307:
	.sleb128	22
	.byte		"RTWLogDataTypeConvert"
	.byte		0
	.4byte		.L7308
.L7306:
	.sleb128	24
	.4byte		.L7307
.L7310:
	.sleb128	24
	.4byte		.L7040
.L7316:
	.sleb128	24
	.4byte		.L5061
.L7317:
	.sleb128	24
	.4byte		.L6587
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L5055:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L5058:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo4),4
	.d2locend
.L5059:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),5
	.d2locend
.L5060:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),6
	.d2locend
.L5062:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),7
	.d2locend
.L5063:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),8
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),30
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),8
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),30
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),8
	.d2locend
.L5066:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo7),8
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),30
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),8
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),30
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),8
	.d2locend
.L5068:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),25
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),25
	.d2locend
.L5070:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo15),8
	.d2locend
.L5072:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),18
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),20
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo19),19
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),0
	.d2locend
.L5074:
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo3),3
	.d2locend
.L5076:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo5),0
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo3),0
	.d2locend
.L5078:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),22
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),24
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),21
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),25
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),25
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo47),24
	.d2locend
.L5080:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),0
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),24
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),0
	.d2locend
.L5082:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo54),24
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),25
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo55),24
	.d2locend
.L5084:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo56),12
	.d2locend
.L5086:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo56),12
	.d2locend
.L5088:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),25
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),25
	.d2locend
.L5090:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),30
	.d2locend
.L5092:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),0
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo48),0
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),23
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),20
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),20
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo68),24
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),23
	.d2locend
.L5094:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo20),31
	.d2locend
.L5096:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo20),30
	.d2locend
.L5098:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo20),31
	.d2locend
.L5100:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo26),21
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo72),22
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo19),22
	.d2locend
.L5102:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo26),20
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo72),21
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo19),21
	.d2locend
.L5104:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),23
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo52),0
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo78),23
	.d2locend
.L5108:
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo56),29
	.d2locend
.L5110:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo56),28
	.d2locend
.L5112:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo56),27
	.d2locend
.L5114:
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo20),26
	.d2locend
.L5120:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),3
	.d2locend
.L5126:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),3
	.d2locend
.L5127:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),4
	.d2locend
.L5128:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo87),5
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),0
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),0
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),0
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo86),5
	.d2locend
.L5130:
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo89),0
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),7
	.d2locend
.L5132:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo98),0
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo94),0
	.d2locend
.L5134:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo94),5
	.d2locend
.L5140:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),0
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),3
	.d2locend
.L5141:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo103),4
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),4
	.d2locend
.L5142:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo105),5
	.d2locend
.L5143:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo105),6
	.d2locend
.L5145:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),11
	.d2locend
.L5147:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),11
	.d2locend
.L5149:
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo104),3
	.d2locend
.L5151:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),11
	.d2locend
.L5157:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),3
	.d2locend
.L5158:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo110),4
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo109),4
	.d2locend
.L5160:
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo111),7
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),7
	.d2locend
.L5162:
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo111),7
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),7
	.d2locend
.L5168:
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),3
	.d2locend
.L5169:
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo117),4
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo116),4
	.d2locend
.L5171:
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo118),7
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),7
	.d2locend
.L5173:
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo118),7
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),7
	.d2locend
.L5179:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),3
	.d2locend
.L5180:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo126),4
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),0
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),4
	.d2locend
.L5182:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo128),0
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo131),3
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),3
	.d2locend
.L5184:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo134),5
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo124),0
	.d2locend
.L5186:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo124),4
	.d2locend
.L5192:
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),3
	.d2locend
.L5193:
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo139),4
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),0
	.d2locend
.L5195:
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo142),4
	.d2locend
.L5197:
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo141),5
	.d2locend
.L5203:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),3
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),3
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),3
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo151),3
	.d2locend
.L5204:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo152),4
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo154),30
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo156),30
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),30
	.d2locend
.L5205:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo159),5
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo161),6
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo163),5
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo165),6
	.d2locreg	%offsetof(.Llo166), %offsetof(.Llo167),5
	.d2locend
.L5206:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo168),6
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo170),6
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo167),6
	.d2locend
.L5207:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo171),7
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo173),7
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo167),7
	.d2locend
.L5208:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo174),8
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo176),8
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo178),8
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo180),8
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),8
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo167),8
	.d2locend
.L5209:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo167),9
	.d2locend
.L5210:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo183),10
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo185),28
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo187),10
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo189),28
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo191),10
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo192),10
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo194),10
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo195),10
	.d2locreg	%offsetof(.Llo196), %offsetof(.Llo197),10
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo199),10
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo201),10
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo167),10
	.d2locend
.L5212:
	.d2locreg	%offsetof(.Llo203), %offsetof(.Llo176),8
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo154),8
	.d2locend
.L5214:
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo183),10
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo186),28
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo189),28
	.d2locend
.L5216:
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),29
	.d2locend
.L5218:
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),30
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo210),30
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo212),30
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo214),30
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo172),30
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),30
	.d2locend
.L5220:
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),29
	.d2locend
.L5222:
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),30
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo210),30
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo212),30
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo214),30
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo172),30
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),30
	.d2locend
.L5224:
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo189),4
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo216),4
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo218),30
	.d2locreg	%offsetof(.Llo219), %offsetof(.Llo220),4
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),4
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),4
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),4
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),4
	.d2locend
.L5226:
	.d2locreg	%offsetof(.Llo225), %offsetof(.Llo226),4
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo227),4
	.d2locend
.L5228:
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),29
	.d2locend
.L5230:
	.d2locreg	%offsetof(.Llo228), %offsetof(.Llo197),10
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo223),10
	.d2locend
.L5232:
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo201),10
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo157),10
	.d2locend
.L5234:
	.d2locreg	%offsetof(.Llo230), %offsetof(.Llo231),21
	.d2locreg	%offsetof(.Llo232), %offsetof(.Llo233),21
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo193),21
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo235),21
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo237),21
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo239),21
	.d2locreg	%offsetof(.Llo240), %offsetof(.Llo241),21
	.d2locreg	%offsetof(.Llo242), %offsetof(.Llo243),21
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo244),21
	.d2locend
.L5236:
	.d2locreg	%offsetof(.Llo245), %offsetof(.Llo214),4
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo246),4
	.d2locreg	%offsetof(.Llo247), %offsetof(.Llo248),4
	.d2locend
.L5238:
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),30
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo210),30
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo212),30
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo214),30
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo172),30
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),30
	.d2locend
.L5240:
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),30
	.d2locreg	%offsetof(.Llo249), %offsetof(.Llo209),10
	.d2locreg	%offsetof(.Llo250), %offsetof(.Llo210),30
	.d2locreg	%offsetof(.Llo251), %offsetof(.Llo252),10
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo212),30
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo214),30
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo172),30
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),30
	.d2locend
.L5242:
	.d2locreg	%offsetof(.Llo253), %offsetof(.Llo254),22
	.d2locreg	%offsetof(.Llo255), %offsetof(.Llo256),22
	.d2locend
.L5244:
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo252),11
	.d2locend
.L5246:
	.d2locreg	%offsetof(.Llo258), %offsetof(.Llo172),24
	.d2locend
.L5248:
	.d2locreg	%offsetof(.Llo259), %offsetof(.Llo260),0
	.d2locreg	%offsetof(.Llo261), %offsetof(.Llo262),10
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo179),10
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo264),10
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),0
	.d2locend
.L5250:
	.d2locreg	%offsetof(.Llo265), %offsetof(.Llo264),11
	.d2locreg	%offsetof(.Llo237), %offsetof(.Llo266),11
	.d2locend
.L5252:
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo267),18
	.d2locreg	%offsetof(.Llo268), %offsetof(.Llo235),18
	.d2locend
.L5254:
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo269),0
	.d2locreg	%offsetof(.Llo270), %offsetof(.Llo271),0
	.d2locreg	%offsetof(.Llo272), %offsetof(.Llo273),0
	.d2locreg	%offsetof(.Llo274), %offsetof(.Llo275),0
	.d2locreg	%offsetof(.Llo276), %offsetof(.Llo277),0
	.d2locreg	%offsetof(.Llo278), %offsetof(.Llo279),0
	.d2locreg	%offsetof(.Llo280), %offsetof(.Llo281),0
	.d2locreg	%offsetof(.Llo282), %offsetof(.Llo283),0
	.d2locend
.L5256:
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo150),7
	.d2locend
.L5258:
	.d2locreg	%offsetof(.Llo284), %offsetof(.Llo193),11
	.d2locend
.L5260:
	.d2locreg	%offsetof(.Llo285), %offsetof(.Llo286),20
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo267),20
	.d2locreg	%offsetof(.Llo287), %offsetof(.Llo235),20
	.d2locend
.L5262:
	.d2locreg	%offsetof(.Llo288), %offsetof(.Llo208),0
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo289),0
	.d2locreg	%offsetof(.Llo290), %offsetof(.Llo291),10
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo210),0
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo244),0
	.d2locend
.L5264:
	.d2locreg	%offsetof(.Llo292), %offsetof(.Llo269),20
	.d2locreg	%offsetof(.Llo270), %offsetof(.Llo293),22
	.d2locreg	%offsetof(.Llo294), %offsetof(.Llo279),20
	.d2locreg	%offsetof(.Llo280), %offsetof(.Llo295),30
	.d2locreg	%offsetof(.Llo296), %offsetof(.Llo252),20
	.d2locend
.L5266:
	.d2locreg	%offsetof(.Llo297), %offsetof(.Llo172),0
	.d2locend
.L5268:
	.d2locreg	%offsetof(.Llo298), %offsetof(.Llo299),25
	.d2locreg	%offsetof(.Llo300), %offsetof(.Llo301),25
	.d2locend
.L5270:
	.d2locreg	%offsetof(.Llo302), %offsetof(.Llo303),12
	.d2locreg	%offsetof(.Llo304), %offsetof(.Llo305),11
	.d2locreg	%offsetof(.Llo306), %offsetof(.Llo307),0
	.d2locreg	%offsetof(.Llo288), %offsetof(.Llo208),0
	.d2locreg	%offsetof(.Llo308), %offsetof(.Llo289),0
	.d2locreg	%offsetof(.Llo309), %offsetof(.Llo310),0
	.d2locreg	%offsetof(.Llo291), %offsetof(.Llo210),0
	.d2locreg	%offsetof(.Llo311), %offsetof(.Llo252),0
	.d2locreg	%offsetof(.Llo312), %offsetof(.Llo313),0
	.d2locreg	%offsetof(.Llo314), %offsetof(.Llo315),0
	.d2locreg	%offsetof(.Llo316), %offsetof(.Llo317),0
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo244),0
	.d2locreg	%offsetof(.Llo318), %offsetof(.Llo319),0
	.d2locreg	%offsetof(.Llo320), %offsetof(.Llo321),0
	.d2locend
.L5272:
	.d2locreg	%offsetof(.Llo322), %offsetof(.Llo307),21
	.d2locreg	%offsetof(.Llo323), %offsetof(.Llo286),22
	.d2locend
.L5274:
	.d2locreg	%offsetof(.Llo324), %offsetof(.Llo310),11
	.d2locreg	%offsetof(.Llo325), %offsetof(.Llo243),11
	.d2locend
.L5276:
	.d2locreg	%offsetof(.Llo326), %offsetof(.Llo269),21
	.d2locreg	%offsetof(.Llo270), %offsetof(.Llo327),21
	.d2locreg	%offsetof(.Llo271), %offsetof(.Llo273),21
	.d2locreg	%offsetof(.Llo328), %offsetof(.Llo275),30
	.d2locreg	%offsetof(.Llo276), %offsetof(.Llo329),30
	.d2locreg	%offsetof(.Llo277), %offsetof(.Llo330),30
	.d2locreg	%offsetof(.Llo331), %offsetof(.Llo279),22
	.d2locreg	%offsetof(.Llo280), %offsetof(.Llo332),22
	.d2locreg	%offsetof(.Llo281), %offsetof(.Llo283),22
	.d2locend
.L5278:
	.d2locreg	%offsetof(.Llo316), %offsetof(.Llo333),0
	.d2locreg	%offsetof(.Llo334), %offsetof(.Llo335),0
	.d2locend
.L5280:
	.d2locreg	%offsetof(.Llo336), %offsetof(.Llo337),28
	.d2locreg	%offsetof(.Llo338), %offsetof(.Llo246),26
	.d2locend
.L5282:
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo166),7
	.d2locend
.L5284:
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo339),6
	.d2locreg	%offsetof(.Llo340), %offsetof(.Llo189),6
	.d2locreg	%offsetof(.Llo341), %offsetof(.Llo342),6
	.d2locreg	%offsetof(.Llo302), %offsetof(.Llo303),24
	.d2locreg	%offsetof(.Llo343), %offsetof(.Llo344),6
	.d2locreg	%offsetof(.Llo345), %offsetof(.Llo262),24
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo220),6
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),6
	.d2locreg	%offsetof(.Llo346), %offsetof(.Llo215),6
	.d2locreg	%offsetof(.Llo347), %offsetof(.Llo227),6
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),6
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),6
	.d2locend
.L5286:
	.d2locreg	%offsetof(.Llo348), %offsetof(.Llo349),11
	.d2locreg	%offsetof(.Llo262), %offsetof(.Llo350),11
	.d2locend
.L5288:
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),29
	.d2locend
.L5290:
	.d2locreg	%offsetof(.Llo351), %offsetof(.Llo352),11
	.d2locreg	%offsetof(.Llo353), %offsetof(.Llo209),11
	.d2locend
.L5292:
	.d2locreg	%offsetof(.Llo296), %offsetof(.Llo252),26
	.d2locreg	%offsetof(.Llo354), %offsetof(.Llo355),26
	.d2locend
.L5294:
	.d2locreg	%offsetof(.Llo356), %offsetof(.Llo357),28
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo358),28
	.d2locreg	%offsetof(.Llo359), %offsetof(.Llo360),28
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo227),28
	.d2locend
.L5296:
	.d2locreg	%offsetof(.Llo361), %offsetof(.Llo362),4
	.d2locreg	%offsetof(.Llo363), %offsetof(.Llo162),4
	.d2locreg	%offsetof(.Llo364), %offsetof(.Llo365),4
	.d2locend
.L5298:
	.d2locreg	%offsetof(.Llo366), %offsetof(.Llo252),28
	.d2locend
.L5300:
	.d2locreg	%offsetof(.Llo367), %offsetof(.Llo214),7
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo172),7
	.d2locend
.L5302:
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo193),10
	.d2locend
.L5304:
	.d2locreg	%offsetof(.Llo292), %offsetof(.Llo269),20
	.d2locreg	%offsetof(.Llo368), %offsetof(.Llo271),20
	.d2locreg	%offsetof(.Llo369), %offsetof(.Llo370),20
	.d2locreg	%offsetof(.Llo371), %offsetof(.Llo277),30
	.d2locreg	%offsetof(.Llo372), %offsetof(.Llo373),30
	.d2locreg	%offsetof(.Llo374), %offsetof(.Llo281),20
	.d2locreg	%offsetof(.Llo375), %offsetof(.Llo252),20
	.d2locend
.L5306:
	.d2locreg	%offsetof(.Llo376), %offsetof(.Llo172),31
	.d2locend
.L5308:
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),3
	.d2locend
.L5310:
	.d2locreg	%offsetof(.Llo377), %offsetof(.Llo146),12
	.d2locreg	%offsetof(.Llo378), %offsetof(.Llo379),24
	.d2locreg	%offsetof(.Llo380), %offsetof(.Llo150),12
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo223),12
	.d2locreg	%offsetof(.Llo382), %offsetof(.Llo157),12
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo167),12
	.d2locend
.L5312:
	.d2locreg	%offsetof(.Llo383), %offsetof(.Llo384),30
	.d2locreg	%offsetof(.Llo385), %offsetof(.Llo222),31
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),31
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),31
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),30
	.d2locend
.L5314:
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo189),4
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo220),4
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),4
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),4
	.d2locreg	%offsetof(.Llo386), %offsetof(.Llo387),4
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),4
	.d2locreg	%offsetof(.Llo388), %offsetof(.Llo389),4
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),4
	.d2locend
.L5316:
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),30
	.d2locreg	%offsetof(.Llo390), %offsetof(.Llo353),30
	.d2locreg	%offsetof(.Llo391), %offsetof(.Llo210),30
	.d2locreg	%offsetof(.Llo392), %offsetof(.Llo295),10
	.d2locreg	%offsetof(.Llo393), %offsetof(.Llo252),30
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo212),30
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo214),30
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo172),30
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),30
	.d2locend
.L5318:
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),29
	.d2locend
.L5320:
	.d2locreg	%offsetof(.Llo394), %offsetof(.Llo395),28
	.d2locreg	%offsetof(.Llo396), %offsetof(.Llo212),28
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),28
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),28
	.d2locend
.L5322:
	.d2locreg	%offsetof(.Llo397), %offsetof(.Llo206),27
	.d2locend
.L5324:
	.d2locreg	%offsetof(.Llo398), %offsetof(.Llo241),26
	.d2locreg	%offsetof(.Llo399), %offsetof(.Llo353),26
	.d2locreg	%offsetof(.Llo400), %offsetof(.Llo295),26
	.d2locreg	%offsetof(.Llo401), %offsetof(.Llo212),26
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),26
	.d2locend
.L5326:
	.d2locreg	%offsetof(.Llo300), %offsetof(.Llo220),25
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),25
	.d2locend
.L5328:
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo179),8
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo402),8
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo232),8
	.d2locreg	%offsetof(.Llo403), %offsetof(.Llo181),8
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo404),8
	.d2locreg	%offsetof(.Llo324), %offsetof(.Llo310),26
	.d2locreg	%offsetof(.Llo405), %offsetof(.Llo406),8
	.d2locreg	%offsetof(.Llo407), %offsetof(.Llo255),26
	.d2locreg	%offsetof(.Llo408), %offsetof(.Llo409),8
	.d2locreg	%offsetof(.Llo410), %offsetof(.Llo411),8
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo244),8
	.d2locend
.L5330:
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),3
	.d2locend
.L5332:
	.d2locreg	%offsetof(.Llo378), %offsetof(.Llo379),24
	.d2locreg	%offsetof(.Llo412), %offsetof(.Llo258),24
	.d2locend
.L5334:
	.d2locreg	%offsetof(.Llo413), %offsetof(.Llo414),31
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),31
	.d2locend
.L5336:
	.d2locreg	%offsetof(.Llo415), %offsetof(.Llo416),28
	.d2locend
.L5338:
	.d2locreg	%offsetof(.Llo417), %offsetof(.Llo179),23
	.d2locreg	%offsetof(.Llo418), %offsetof(.Llo220),23
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),23
	.d2locend
.L5340:
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo146),0
	.d2locend
.L5342:
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo419),3
	.d2locreg	%offsetof(.Llo420), %offsetof(.Llo146),4
	.d2locend
.L5344:
	.d2locreg	%offsetof(.Llo421), %offsetof(.Llo403),22
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo422),22
	.d2locreg	%offsetof(.Llo423), %offsetof(.Llo424),22
	.d2locend
.L5350:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo426),3
	.d2locreg	%offsetof(.Llo427), %offsetof(.Llo428),3
	.d2locend
.L5351:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo429),4
	.d2locreg	%offsetof(.Llo427), %offsetof(.Llo428),4
	.d2locend
.L5352:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo430),5
	.d2locreg	%offsetof(.Llo431), %offsetof(.Llo432),25
	.d2locend
.L5353:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo433),6
	.d2locreg	%offsetof(.Llo434), %offsetof(.Llo435),24
	.d2locend
.L5354:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo436),7
	.d2locreg	%offsetof(.Llo437), %offsetof(.Llo438),31
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo440),31
	.d2locend
.L5355:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo436),8
	.d2locreg	%offsetof(.Llo437), %offsetof(.Llo438),30
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo440),30
	.d2locend
.L5356:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo436),9
	.d2locreg	%offsetof(.Llo437), %offsetof(.Llo438),29
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo441),29
	.d2locend
.L5357:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo436),10
	.d2locreg	%offsetof(.Llo437), %offsetof(.Llo438),28
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo441),28
	.d2locend
.L5358:
	.d2locreg	%offsetof(.Llo442), %offsetof(.Llo443),12
	.d2locreg	%offsetof(.Llo444), %offsetof(.Llo445),3
	.d2locreg	%offsetof(.Llo446), %offsetof(.Llo447),3
	.d2locend
.L5359:
	.d2locreg	%offsetof(.Llo431), %offsetof(.Llo445),23
	.d2locend
.L5360:
	.d2locreg	%offsetof(.Llo434), %offsetof(.Llo445),22
	.d2locend
.L5361:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo445),21
	.d2locend
.L5363:
	.d2locreg	%offsetof(.Llo448), %offsetof(.Llo438),27
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo449),27
	.d2locend
.L5365:
	.d2locreg	%offsetof(.Llo450), %offsetof(.Llo438),26
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo449),26
	.d2locend
.L5371:
	.d2locreg	%offsetof(.Llo451), %offsetof(.Llo452),3
	.d2locend
.L5372:
	.d2locreg	%offsetof(.Llo451), %offsetof(.Llo453),4
	.d2locend
.L5373:
	.d2locreg	%offsetof(.Llo451), %offsetof(.Llo454),5
	.d2locreg	%offsetof(.Llo455), %offsetof(.Llo453),5
	.d2locend
.L5375:
	.d2locreg	%offsetof(.Llo456), %offsetof(.Llo457),5
	.d2locend
.L5377:
	.d2locreg	%offsetof(.Llo452), %offsetof(.Llo455),3
	.d2locend
.L5383:
	.d2locreg	%offsetof(.Llo458), %offsetof(.Llo459),3
	.d2locreg	%offsetof(.Llo460), %offsetof(.Llo461),3
	.d2locreg	%offsetof(.Llo462), %offsetof(.Llo463),3
	.d2locreg	%offsetof(.Llo464), %offsetof(.Llo465),3
	.d2locend
.L5384:
	.d2locreg	%offsetof(.Llo458), %offsetof(.Llo461),4
	.d2locreg	%offsetof(.Llo464), %offsetof(.Llo465),4
	.d2locend
.L5385:
	.d2locreg	%offsetof(.Llo458), %offsetof(.Llo466),5
	.d2locreg	%offsetof(.Llo465), %offsetof(.Llo467),5
	.d2locend
.L5387:
	.d2locreg	%offsetof(.Llo468), %offsetof(.Llo461),5
	.d2locreg	%offsetof(.Llo464), %offsetof(.Llo465),5
	.d2locend
.L5389:
	.d2locreg	%offsetof(.Llo469), %offsetof(.Llo461),6
	.d2locend
.L5391:
	.d2locreg	%offsetof(.Llo470), %offsetof(.Llo461),7
	.d2locend
.L5393:
	.d2locreg	%offsetof(.Llo471), %offsetof(.Llo472),0
	.d2locreg	%offsetof(.Llo473), %offsetof(.Llo463),0
	.d2locreg	%offsetof(.Llo474), %offsetof(.Llo464),3
	.d2locreg	%offsetof(.Llo475), %offsetof(.Llo467),0
	.d2locend
.L5395:
	.d2locreg	%offsetof(.Llo476), %offsetof(.Llo477),0
	.d2locreg	%offsetof(.Llo459), %offsetof(.Llo468),6
	.d2locend
.L5397:
	.d2locreg	%offsetof(.Llo478), %offsetof(.Llo468),6
	.d2locend
.L5403:
	.d2locreg	%offsetof(.Llo479), %offsetof(.Llo480),3
	.d2locend
.L5404:
	.d2locreg	%offsetof(.Llo479), %offsetof(.Llo480),4
	.d2locend
.L5405:
	.d2locreg	%offsetof(.Llo479), %offsetof(.Llo480),5
	.d2locend
.L5419:
	.d2locreg	%offsetof(.Llo481), %offsetof(.Llo482),5
	.d2locend
.L5433:
	.d2locreg	%offsetof(.Llo483), %offsetof(.Llo484),3
	.d2locend
.L5439:
	.d2locreg	%offsetof(.Llo485), %offsetof(.Llo486),3
	.d2locreg	%offsetof(.Llo487), %offsetof(.Llo488),3
	.d2locend
.L5443:
	.d2locreg	%offsetof(.Llo485), %offsetof(.Llo488),4
	.d2locend
.L5444:
	.d2locreg	%offsetof(.Llo485), %offsetof(.Llo488),5
	.d2locend
.L5451:
	.d2locreg	%offsetof(.Llo489), %offsetof(.Llo490),0
	.d2locreg	%offsetof(.Llo491), %offsetof(.Llo492),0
	.d2locreg	%offsetof(.Llo493), %offsetof(.Llo494),0
	.d2locreg	%offsetof(.Llo495), %offsetof(.Llo496),0
	.d2locreg	%offsetof(.Llo497), %offsetof(.Llo498),0
	.d2locreg	%offsetof(.Llo499), %offsetof(.Llo500),0
	.d2locreg	%offsetof(.Llo501), %offsetof(.Llo502),0
	.d2locreg	%offsetof(.Llo503), %offsetof(.Llo504),0
	.d2locreg	%offsetof(.Llo505), %offsetof(.Llo506),0
	.d2locreg	%offsetof(.Llo507), %offsetof(.Llo508),0
	.d2locreg	%offsetof(.Llo509), %offsetof(.Llo510),0
	.d2locreg	%offsetof(.Llo511), %offsetof(.Llo512),0
	.d2locreg	%offsetof(.Llo513), %offsetof(.Llo514),0
	.d2locreg	%offsetof(.Llo515), %offsetof(.Llo516),0
	.d2locreg	%offsetof(.Llo517), %offsetof(.Llo518),0
	.d2locreg	%offsetof(.Llo519), %offsetof(.Llo520),0
	.d2locreg	%offsetof(.Llo521), %offsetof(.Llo522),0
	.d2locreg	%offsetof(.Llo523), %offsetof(.Llo524),0
	.d2locreg	%offsetof(.Llo525), %offsetof(.Llo526),0
	.d2locreg	%offsetof(.Llo527), %offsetof(.Llo528),0
	.d2locreg	%offsetof(.Llo529), %offsetof(.Llo530),0
	.d2locreg	%offsetof(.Llo531), %offsetof(.Llo532),0
	.d2locreg	%offsetof(.Llo533), %offsetof(.Llo534),0
	.d2locreg	%offsetof(.Llo535), %offsetof(.Llo536),0
	.d2locreg	%offsetof(.Llo537), %offsetof(.Llo538),0
	.d2locreg	%offsetof(.Llo539), %offsetof(.Llo540),0
	.d2locreg	%offsetof(.Llo541), %offsetof(.Llo542),0
	.d2locreg	%offsetof(.Llo543), %offsetof(.Llo544),0
	.d2locreg	%offsetof(.Llo545), %offsetof(.Llo546),0
	.d2locreg	%offsetof(.Llo547), %offsetof(.Llo548),0
	.d2locreg	%offsetof(.Llo549), %offsetof(.Llo550),0
	.d2locreg	%offsetof(.Llo551), %offsetof(.Llo552),0
	.d2locreg	%offsetof(.Llo553), %offsetof(.Llo554),0
	.d2locreg	%offsetof(.Llo555), %offsetof(.Llo556),0
	.d2locreg	%offsetof(.Llo557), %offsetof(.Llo558),0
	.d2locreg	%offsetof(.Llo559), %offsetof(.Llo560),0
	.d2locreg	%offsetof(.Llo561), %offsetof(.Llo562),0
	.d2locreg	%offsetof(.Llo563), %offsetof(.Llo564),0
	.d2locreg	%offsetof(.Llo565), %offsetof(.Llo566),0
	.d2locreg	%offsetof(.Llo567), %offsetof(.Llo568),0
	.d2locreg	%offsetof(.Llo569), %offsetof(.Llo570),0
	.d2locreg	%offsetof(.Llo571), %offsetof(.Llo572),0
	.d2locreg	%offsetof(.Llo573), %offsetof(.Llo574),0
	.d2locreg	%offsetof(.Llo575), %offsetof(.Llo576),0
	.d2locend
.L5460:
	.d2locreg	%offsetof(.Llo577), %offsetof(.Llo578),3
	.d2locreg	%offsetof(.Llo579), %offsetof(.Llo580),3
	.d2locreg	%offsetof(.Llo581), %offsetof(.Llo582),3
	.d2locreg	%offsetof(.Llo583), %offsetof(.Llo584),3
	.d2locreg	%offsetof(.Llo585), %offsetof(.Llo586),3
	.d2locend
.L5461:
	.d2locreg	%offsetof(.Llo577), %offsetof(.Llo587),4
	.d2locend
.L5462:
	.d2locreg	%offsetof(.Llo577), %offsetof(.Llo587),5
	.d2locend
.L5464:
	.d2locreg	%offsetof(.Llo588), %offsetof(.Llo584),3
	.d2locend
.L5478:
	.d2locreg	%offsetof(.Llo589), %offsetof(.Llo590),3
	.d2locend
.L5480:
	.d2locreg	%offsetof(.Llo591), %offsetof(.Llo592),25
	.d2locreg	%offsetof(.Llo593), %offsetof(.Llo594),25
	.d2locreg	%offsetof(.Llo595), %offsetof(.Llo596),25
	.d2locreg	%offsetof(.Llo597), %offsetof(.Llo598),25
	.d2locreg	%offsetof(.Llo599), %offsetof(.Llo600),25
	.d2locend
.L5484:
	.d2locreg	%offsetof(.Llo601), %offsetof(.Llo602),3
	.d2locend
.L5486:
	.d2locreg	%offsetof(.Llo603), %offsetof(.Llo604),25
	.d2locreg	%offsetof(.Llo605), %offsetof(.Llo606),25
	.d2locreg	%offsetof(.Llo607), %offsetof(.Llo608),25
	.d2locreg	%offsetof(.Llo609), %offsetof(.Llo610),25
	.d2locend
.L5490:
	.d2locreg	%offsetof(.Llo611), %offsetof(.Llo612),0
	.d2locend
.L5492:
	.d2locreg	%offsetof(.Llo613), %offsetof(.Llo614),4
	.d2locend
.L5494:
	.d2locreg	%offsetof(.Llo615), %offsetof(.Llo616),3
	.d2locreg	%offsetof(.Llo617), %offsetof(.Llo618),3
	.d2locreg	%offsetof(.Llo619), %offsetof(.Llo620),3
	.d2locreg	%offsetof(.Llo621), %offsetof(.Llo622),3
	.d2locreg	%offsetof(.Llo623), %offsetof(.Llo624),3
	.d2locreg	%offsetof(.Llo625), %offsetof(.Llo626),3
	.d2locreg	%offsetof(.Llo627), %offsetof(.Llo628),3
	.d2locreg	%offsetof(.Llo629), %offsetof(.Llo630),3
	.d2locreg	%offsetof(.Llo631), %offsetof(.Llo632),3
	.d2locend
.L5496:
	.d2locreg	%offsetof(.Llo633), %offsetof(.Llo634),26
	.d2locreg	%offsetof(.Llo635), %offsetof(.Llo636),26
	.d2locend
.L5498:
	.d2locreg	%offsetof(.Llo637), %offsetof(.Llo638),0
	.d2locreg	%offsetof(.Llo639), %offsetof(.Llo640),3
	.d2locreg	%offsetof(.Llo641), %offsetof(.Llo642),3
	.d2locreg	%offsetof(.Llo643), %offsetof(.Llo644),3
	.d2locreg	%offsetof(.Llo645), %offsetof(.Llo646),3
	.d2locreg	%offsetof(.Llo647), %offsetof(.Llo648),3
	.d2locreg	%offsetof(.Llo649), %offsetof(.Llo650),3
	.d2locreg	%offsetof(.Llo651), %offsetof(.Llo652),3
	.d2locreg	%offsetof(.Llo653), %offsetof(.Llo654),3
	.d2locreg	%offsetof(.Llo655), %offsetof(.Llo656),3
	.d2locreg	%offsetof(.Llo657), %offsetof(.Llo658),3
	.d2locreg	%offsetof(.Llo659), %offsetof(.Llo660),3
	.d2locreg	%offsetof(.Llo661), %offsetof(.Llo662),3
	.d2locreg	%offsetof(.Llo663), %offsetof(.Llo664),3
	.d2locreg	%offsetof(.Llo665), %offsetof(.Llo666),3
	.d2locreg	%offsetof(.Llo667), %offsetof(.Llo668),3
	.d2locreg	%offsetof(.Llo669), %offsetof(.Llo670),3
	.d2locreg	%offsetof(.Llo671), %offsetof(.Llo672),3
	.d2locreg	%offsetof(.Llo673), %offsetof(.Llo674),3
	.d2locreg	%offsetof(.Llo675), %offsetof(.Llo676),3
	.d2locreg	%offsetof(.Llo677), %offsetof(.Llo678),3
	.d2locreg	%offsetof(.Llo679), %offsetof(.Llo680),3
	.d2locreg	%offsetof(.Llo681), %offsetof(.Llo682),3
	.d2locend
.L5500:
	.d2locreg	%offsetof(.Llo683), %offsetof(.Llo641),3
	.d2locreg	%offsetof(.Llo684), %offsetof(.Llo644),26
	.d2locend
.L5502:
	.d2locreg	%offsetof(.Llo685), %offsetof(.Llo686),0
	.d2locreg	%offsetof(.Llo687), %offsetof(.Llo688),3
	.d2locreg	%offsetof(.Llo689), %offsetof(.Llo690),0
	.d2locreg	%offsetof(.Llo691), %offsetof(.Llo692),3
	.d2locreg	%offsetof(.Llo693), %offsetof(.Llo694),3
	.d2locreg	%offsetof(.Llo695), %offsetof(.Llo696),3
	.d2locend
.L5504:
	.d2locreg	%offsetof(.Llo691), %offsetof(.Llo692),3
	.d2locreg	%offsetof(.Llo693), %offsetof(.Llo697),3
	.d2locreg	%offsetof(.Llo698), %offsetof(.Llo699),3
	.d2locreg	%offsetof(.Llo700), %offsetof(.Llo696),3
	.d2locreg	%offsetof(.Llo701), %offsetof(.Llo702),25
	.d2locend
.L5506:
	.d2locreg	%offsetof(.Llo703), %offsetof(.Llo698),3
	.d2locreg	%offsetof(.Llo704), %offsetof(.Llo700),25
	.d2locend
.L5508:
	.d2locreg	%offsetof(.Llo705), %offsetof(.Llo706),3
	.d2locreg	%offsetof(.Llo707), %offsetof(.Llo708),31
	.d2locend
.L5510:
	.d2locreg	%offsetof(.Llo709), %offsetof(.Llo710),3
	.d2locreg	%offsetof(.Llo711), %offsetof(.Llo712),3
	.d2locend
.L5512:
	.d2locreg	%offsetof(.Llo713), %offsetof(.Llo714),28
	.d2locreg	%offsetof(.Llo715), %offsetof(.Llo716),26
	.d2locreg	%offsetof(.Llo717), %offsetof(.Llo718),3
	.d2locreg	%offsetof(.Llo719), %offsetof(.Llo720),31
	.d2locreg	%offsetof(.Llo706), %offsetof(.Llo721),3
	.d2locreg	%offsetof(.Llo722), %offsetof(.Llo723),3
	.d2locreg	%offsetof(.Llo708), %offsetof(.Llo724),31
	.d2locreg	%offsetof(.Llo725), %offsetof(.Llo726),0
	.d2locreg	%offsetof(.Llo712), %offsetof(.Llo727),0
	.d2locend
.L5514:
	.d2locreg	%offsetof(.Llo728), %offsetof(.Llo729),0
	.d2locend
.L5516:
	.d2locreg	%offsetof(.Llo701), %offsetof(.Llo730),25
	.d2locreg	%offsetof(.Llo731), %offsetof(.Llo732),25
	.d2locend
.L5518:
	.d2locreg	%offsetof(.Llo733), %offsetof(.Llo734),25
	.d2locreg	%offsetof(.Llo735), %offsetof(.Llo736),25
	.d2locend
.L5521:
	.d2locreg	%offsetof(.Llo737), %offsetof(.Llo738),3
	.d2locreg	%offsetof(.Llo739), %offsetof(.Llo740),28
	.d2locend
.L5523:
	.d2locreg	%offsetof(.Llo741), %offsetof(.Llo742),3
	.d2locreg	%offsetof(.Llo743), %offsetof(.Llo744),3
	.d2locend
.L5525:
	.d2locreg	%offsetof(.Llo745), %offsetof(.Llo746),5
	.d2locend
.L5527:
	.d2locreg	%offsetof(.Llo747), %offsetof(.Llo748),0
	.d2locreg	%offsetof(.Llo749), %offsetof(.Llo750),0
	.d2locreg	%offsetof(.Llo751), %offsetof(.Llo752),0
	.d2locend
.L5530:
	.d2locreg	%offsetof(.Llo753), %offsetof(.Llo754),26
	.d2locreg	%offsetof(.Llo755), %offsetof(.Llo756),3
	.d2locreg	%offsetof(.Llo757), %offsetof(.Llo758),26
	.d2locend
.L5532:
	.d2locreg	%offsetof(.Llo757), %offsetof(.Llo729),3
	.d2locend
.L5534:
	.d2locreg	%offsetof(.Llo759), %offsetof(.Llo760),0
	.d2locreg	%offsetof(.Llo761), %offsetof(.Llo762),0
	.d2locreg	%offsetof(.Llo763), %offsetof(.Llo764),3
	.d2locreg	%offsetof(.Llo765), %offsetof(.Llo766),0
	.d2locreg	%offsetof(.Llo767), %offsetof(.Llo768),1
	.d2locreg	%offsetof(.Llo769), %offsetof(.Llo770),4
	.d2locreg	%offsetof(.Llo771), %offsetof(.Llo772),1
	.d2locreg	%offsetof(.Llo773), %offsetof(.Llo774),3
	.d2locreg	%offsetof(.Llo775), %offsetof(.Llo776),1
	.d2locreg	%offsetof(.Llo777), %offsetof(.Llo778),1
	.d2locreg	%offsetof(.Llo779), %offsetof(.Llo780),4
	.d2locreg	%offsetof(.Llo781), %offsetof(.Llo731),1
	.d2locreg	%offsetof(.Llo782), %offsetof(.Llo732),4
	.d2locreg	%offsetof(.Llo783), %offsetof(.Llo784),1
	.d2locreg	%offsetof(.Llo785), %offsetof(.Llo786),0
	.d2locreg	%offsetof(.Llo787), %offsetof(.Llo788),3
	.d2locreg	%offsetof(.Llo789), %offsetof(.Llo790),0
	.d2locreg	%offsetof(.Llo791), %offsetof(.Llo594),1
	.d2locreg	%offsetof(.Llo792), %offsetof(.Llo793),23
	.d2locreg	%offsetof(.Llo794), %offsetof(.Llo795),1
	.d2locreg	%offsetof(.Llo796), %offsetof(.Llo797),1
	.d2locreg	%offsetof(.Llo798), %offsetof(.Llo799),0
	.d2locreg	%offsetof(.Llo733), %offsetof(.Llo800),1
	.d2locreg	%offsetof(.Llo801), %offsetof(.Llo802),4
	.d2locreg	%offsetof(.Llo803), %offsetof(.Llo804),1
	.d2locreg	%offsetof(.Llo805), %offsetof(.Llo602),4
	.d2locreg	%offsetof(.Llo806), %offsetof(.Llo807),1
	.d2locreg	%offsetof(.Llo808), %offsetof(.Llo590),4
	.d2locreg	%offsetof(.Llo809), %offsetof(.Llo610),1
	.d2locreg	%offsetof(.Llo810), %offsetof(.Llo811),4
	.d2locreg	%offsetof(.Llo812), %offsetof(.Llo813),1
	.d2locreg	%offsetof(.Llo814), %offsetof(.Llo815),6
	.d2locreg	%offsetof(.Llo816), %offsetof(.Llo817),6
	.d2locreg	%offsetof(.Llo818), %offsetof(.Llo819),1
	.d2locreg	%offsetof(.Llo820), %offsetof(.Llo821),6
	.d2locreg	%offsetof(.Llo822), %offsetof(.Llo823),1
	.d2locreg	%offsetof(.Llo824), %offsetof(.Llo612),5
	.d2locreg	%offsetof(.Llo825), %offsetof(.Llo826),1
	.d2locreg	%offsetof(.Llo827), %offsetof(.Llo614),6
	.d2locreg	%offsetof(.Llo828), %offsetof(.Llo829),3
	.d2locreg	%offsetof(.Llo830), %offsetof(.Llo831),4
	.d2locreg	%offsetof(.Llo832), %offsetof(.Llo833),1
	.d2locreg	%offsetof(.Llo834), %offsetof(.Llo835),1
	.d2locreg	%offsetof(.Llo836), %offsetof(.Llo837),6
	.d2locreg	%offsetof(.Llo838), %offsetof(.Llo839),6
	.d2locreg	%offsetof(.Llo840), %offsetof(.Llo714),1
	.d2locreg	%offsetof(.Llo715), %offsetof(.Llo841),1
	.d2locreg	%offsetof(.Llo738), %offsetof(.Llo842),1
	.d2locreg	%offsetof(.Llo706), %offsetof(.Llo843),1
	.d2locend
.L5536:
	.d2locreg	%offsetof(.Llo844), %offsetof(.Llo845),7
	.d2locreg	%offsetof(.Llo846), %offsetof(.Llo847),7
	.d2locreg	%offsetof(.Llo848), %offsetof(.Llo849),7
	.d2locreg	%offsetof(.Llo850), %offsetof(.Llo851),7
	.d2locreg	%offsetof(.Llo852), %offsetof(.Llo853),7
	.d2locreg	%offsetof(.Llo854), %offsetof(.Llo855),7
	.d2locreg	%offsetof(.Llo856), %offsetof(.Llo857),7
	.d2locreg	%offsetof(.Llo858), %offsetof(.Llo859),7
	.d2locreg	%offsetof(.Llo860), %offsetof(.Llo861),7
	.d2locreg	%offsetof(.Llo862), %offsetof(.Llo863),7
	.d2locreg	%offsetof(.Llo864), %offsetof(.Llo865),7
	.d2locend
.L5538:
	.d2locreg	%offsetof(.Llo866), %offsetof(.Llo867),3
	.d2locreg	%offsetof(.Llo868), %offsetof(.Llo869),31
	.d2locend
.L5540:
	.d2locreg	%offsetof(.Llo763), %offsetof(.Llo688),3
	.d2locend
.L5563:
	.d2locreg	%offsetof(.Llo870), %offsetof(.Llo770),4
	.d2locreg	%offsetof(.Llo871), %offsetof(.Llo774),4
	.d2locreg	%offsetof(.Llo776), %offsetof(.Llo777),4
	.d2locreg	%offsetof(.Llo731), %offsetof(.Llo732),4
	.d2locend
.L5565:
	.d2locreg	%offsetof(.Llo872), %offsetof(.Llo780),3
	.d2locend
.L5578:
	.d2locreg	%offsetof(.Llo873), %offsetof(.Llo874),3
	.d2locreg	%offsetof(.Llo875), %offsetof(.Llo876),3
	.d2locreg	%offsetof(.Llo877), %offsetof(.Llo878),3
	.d2locreg	%offsetof(.Llo879), %offsetof(.Llo880),3
	.d2locreg	%offsetof(.Llo881), %offsetof(.Llo882),3
	.d2locreg	%offsetof(.Llo883), %offsetof(.Llo884),3
	.d2locreg	%offsetof(.Llo885), %offsetof(.Llo886),3
	.d2locreg	%offsetof(.Llo887), %offsetof(.Llo888),3
	.d2locreg	%offsetof(.Llo889), %offsetof(.Llo890),3
	.d2locreg	%offsetof(.Llo891), %offsetof(.Llo892),3
	.d2locreg	%offsetof(.Llo893), %offsetof(.Llo894),3
	.d2locreg	%offsetof(.Llo895), %offsetof(.Llo896),3
	.d2locreg	%offsetof(.Llo897), %offsetof(.Llo898),3
	.d2locreg	%offsetof(.Llo899), %offsetof(.Llo900),3
	.d2locreg	%offsetof(.Llo901), %offsetof(.Llo902),3
	.d2locreg	%offsetof(.Llo903), %offsetof(.Llo904),3
	.d2locreg	%offsetof(.Llo905), %offsetof(.Llo906),3
	.d2locreg	%offsetof(.Llo907), %offsetof(.Llo908),3
	.d2locreg	%offsetof(.Llo909), %offsetof(.Llo910),3
	.d2locreg	%offsetof(.Llo911), %offsetof(.Llo912),3
	.d2locreg	%offsetof(.Llo913), %offsetof(.Llo914),3
	.d2locreg	%offsetof(.Llo915), %offsetof(.Llo916),3
	.d2locreg	%offsetof(.Llo917), %offsetof(.Llo918),3
	.d2locreg	%offsetof(.Llo919), %offsetof(.Llo920),3
	.d2locreg	%offsetof(.Llo921), %offsetof(.Llo922),3
	.d2locreg	%offsetof(.Llo923), %offsetof(.Llo924),3
	.d2locreg	%offsetof(.Llo925), %offsetof(.Llo926),3
	.d2locreg	%offsetof(.Llo927), %offsetof(.Llo928),3
	.d2locreg	%offsetof(.Llo929), %offsetof(.Llo930),3
	.d2locreg	%offsetof(.Llo931), %offsetof(.Llo932),3
	.d2locreg	%offsetof(.Llo933), %offsetof(.Llo934),3
	.d2locreg	%offsetof(.Llo935), %offsetof(.Llo936),3
	.d2locreg	%offsetof(.Llo937), %offsetof(.Llo938),3
	.d2locreg	%offsetof(.Llo939), %offsetof(.Llo940),3
	.d2locreg	%offsetof(.Llo941), %offsetof(.Llo942),3
	.d2locreg	%offsetof(.Llo943), %offsetof(.Llo845),3
	.d2locreg	%offsetof(.Llo944), %offsetof(.Llo945),3
	.d2locreg	%offsetof(.Llo946), %offsetof(.Llo947),3
	.d2locreg	%offsetof(.Llo948), %offsetof(.Llo847),3
	.d2locreg	%offsetof(.Llo949), %offsetof(.Llo849),3
	.d2locreg	%offsetof(.Llo950), %offsetof(.Llo951),3
	.d2locreg	%offsetof(.Llo952), %offsetof(.Llo953),3
	.d2locreg	%offsetof(.Llo954), %offsetof(.Llo955),3
	.d2locreg	%offsetof(.Llo956), %offsetof(.Llo957),3
	.d2locreg	%offsetof(.Llo958), %offsetof(.Llo959),3
	.d2locreg	%offsetof(.Llo960), %offsetof(.Llo961),3
	.d2locreg	%offsetof(.Llo962), %offsetof(.Llo963),3
	.d2locreg	%offsetof(.Llo964), %offsetof(.Llo965),3
	.d2locreg	%offsetof(.Llo966), %offsetof(.Llo967),3
	.d2locreg	%offsetof(.Llo968), %offsetof(.Llo969),3
	.d2locreg	%offsetof(.Llo970), %offsetof(.Llo971),3
	.d2locreg	%offsetof(.Llo972), %offsetof(.Llo973),3
	.d2locreg	%offsetof(.Llo974), %offsetof(.Llo975),3
	.d2locreg	%offsetof(.Llo976), %offsetof(.Llo977),3
	.d2locreg	%offsetof(.Llo978), %offsetof(.Llo851),3
	.d2locreg	%offsetof(.Llo979), %offsetof(.Llo980),3
	.d2locreg	%offsetof(.Llo981), %offsetof(.Llo982),3
	.d2locreg	%offsetof(.Llo983), %offsetof(.Llo984),3
	.d2locreg	%offsetof(.Llo985), %offsetof(.Llo986),3
	.d2locreg	%offsetof(.Llo987), %offsetof(.Llo988),3
	.d2locreg	%offsetof(.Llo989), %offsetof(.Llo760),3
	.d2locend
.L5592:
	.d2locreg	%offsetof(.Llo990), %offsetof(.Llo795),3
	.d2locreg	%offsetof(.Llo796), %offsetof(.Llo991),3
	.d2locend
.L5604:
	.d2locreg	%offsetof(.Llo992), %offsetof(.Llo598),3
	.d2locreg	%offsetof(.Llo993), %offsetof(.Llo797),3
	.d2locend
.L5616:
	.d2locreg	%offsetof(.Llo994), %offsetof(.Llo606),3
	.d2locreg	%offsetof(.Llo995), %offsetof(.Llo996),3
	.d2locend
.L5627:
	.d2locreg	%offsetof(.Llo997), %offsetof(.Llo608),3
	.d2locreg	%offsetof(.Llo998), %offsetof(.Llo999),3
	.d2locend
.L5639:
	.d2locreg	%offsetof(.Llo1000), %offsetof(.Llo833),3
	.d2locreg	%offsetof(.Llo834), %offsetof(.Llo1001),3
	.d2locreg	%offsetof(.Llo1002), %offsetof(.Llo714),3
	.d2locend
.L5650:
	.d2locreg	%offsetof(.Llo1003), %offsetof(.Llo1004),3
	.d2locreg	%offsetof(.Llo1005), %offsetof(.Llo1006),3
	.d2locend
.L5482:
.L5488:
	.d2locend
.L5967:
	.d2locreg	%offsetof(.Llo1007), %offsetof(.Llo1008),3
	.d2locreg	%offsetof(.Llo1009), %offsetof(.Llo1010),30
	.d2locend
.L5969:
	.d2locreg	%offsetof(.Llo1011), %offsetof(.Llo1012),3
	.d2locreg	%offsetof(.Llo1013), %offsetof(.Llo1014),3
	.d2locreg	%offsetof(.Llo1015), %offsetof(.Llo1016),3
	.d2locreg	%offsetof(.Llo1017), %offsetof(.Llo1018),3
	.d2locreg	%offsetof(.Llo1019), %offsetof(.Llo1020),3
	.d2locend
.L5971:
	.d2locreg	%offsetof(.Llo1021), %offsetof(.Llo1022),0
	.d2locreg	%offsetof(.Llo1023), %offsetof(.Llo1024),0
	.d2locreg	%offsetof(.Llo1025), %offsetof(.Llo1026),0
	.d2locreg	%offsetof(.Llo1014), %offsetof(.Llo1016),0
	.d2locreg	%offsetof(.Llo1027), %offsetof(.Llo1028),0
	.d2locreg	%offsetof(.Llo1029), %offsetof(.Llo1030),0
	.d2locreg	%offsetof(.Llo1031), %offsetof(.Llo1032),0
	.d2locreg	%offsetof(.Llo1033), %offsetof(.Llo1034),0
	.d2locreg	%offsetof(.Llo1035), %offsetof(.Llo1020),0
	.d2locend
.L5976:
	.d2locreg	%offsetof(.Llo1036), %offsetof(.Llo1037),3
	.d2locreg	%offsetof(.Llo1038), %offsetof(.Llo1039),3
	.d2locreg	%offsetof(.Llo1040), %offsetof(.Llo1041),3
	.d2locend
.L5987:
	.d2locreg	%offsetof(.Llo1042), %offsetof(.Llo1043),3
	.d2locreg	%offsetof(.Llo1044), %offsetof(.Llo1045),3
	.d2locreg	%offsetof(.Llo1046), %offsetof(.Llo1047),3
	.d2locreg	%offsetof(.Llo1048), %offsetof(.Llo1049),3
	.d2locreg	%offsetof(.Llo1050), %offsetof(.Llo1051),3
	.d2locend
.L6002:
	.d2locreg	%offsetof(.Llo1049), %offsetof(.Llo1052),3
	.d2locreg	%offsetof(.Llo1053), %offsetof(.Llo1054),3
	.d2locreg	%offsetof(.Llo1055), %offsetof(.Llo1056),3
	.d2locreg	%offsetof(.Llo1057), %offsetof(.Llo1058),3
	.d2locreg	%offsetof(.Llo1059), %offsetof(.Llo1060),3
	.d2locreg	%offsetof(.Llo1061), %offsetof(.Llo1062),3
	.d2locreg	%offsetof(.Llo1063), %offsetof(.Llo1064),3
	.d2locend
.L6014:
	.d2locreg	%offsetof(.Llo1062), %offsetof(.Llo1065),3
	.d2locreg	%offsetof(.Llo1066), %offsetof(.Llo1067),3
	.d2locreg	%offsetof(.Llo1068), %offsetof(.Llo1069),3
	.d2locreg	%offsetof(.Llo1070), %offsetof(.Llo1071),3
	.d2locreg	%offsetof(.Llo1072), %offsetof(.Llo1073),3
	.d2locreg	%offsetof(.Llo1074), %offsetof(.Llo1075),3
	.d2locend
.L6026:
	.d2locreg	%offsetof(.Llo1073), %offsetof(.Llo1076),3
	.d2locreg	%offsetof(.Llo1077), %offsetof(.Llo1078),3
	.d2locreg	%offsetof(.Llo1079), %offsetof(.Llo1080),3
	.d2locreg	%offsetof(.Llo1008), %offsetof(.Llo1081),3
	.d2locreg	%offsetof(.Llo1010), %offsetof(.Llo1082),30
	.d2locend
.L6038:
	.d2locreg	%offsetof(.Llo1018), %offsetof(.Llo1028),3
	.d2locreg	%offsetof(.Llo1083), %offsetof(.Llo1084),3
	.d2locreg	%offsetof(.Llo1085), %offsetof(.Llo1032),3
	.d2locend
.L6336:
	.d2locreg	%offsetof(.Llo1086), %offsetof(.Llo1087),3
	.d2locend
.L6342:
	.d2locreg	%offsetof(.Llo1088), %offsetof(.Llo1089),3
	.d2locend
.L6377:
	.d2locreg	%offsetof(.Llo1090), %offsetof(.Llo1091),4
	.d2locend
.L6379:
	.d2locreg	%offsetof(.Llo1090), %offsetof(.Llo1091),4
	.d2locreg	%offsetof(.Llo1092), %offsetof(.Llo1093),4
	.d2locreg	%offsetof(.Llo1094), %offsetof(.Llo1095),4
	.d2locend
.L6403:
	.d2locreg	%offsetof(.Llo1096), %offsetof(.Llo1097),3
	.d2locreg	%offsetof(.Llo1098), %offsetof(.Llo1099),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "pkn_1000ms_model_task"
	.wrcm.nstrlist "tailCalls", "rt_SimUpdateDiscreteTaskTime"
	.wrcm.nstrlist "calls", "ATV_output2","ATV_update2"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "pkn_100ms_model_task"
	.wrcm.nstrlist "tailCalls", "rt_SimUpdateDiscreteTaskTime"
	.wrcm.nstrlist "calls", "ATV_output1","ATV_update1"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "pkn_10ms_model_task"
	.wrcm.nstrlist "tailCalls", "rt_SimUpdateDiscreteTaskTime"
	.wrcm.nstrlist "calls", "ATV_output0","ATV_update0","rt_SimUpdateDiscreteEvents"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "pkn_angular_model_task"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "psc_background_app"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "psc_initialise_app"
	.wrcm.nstrlist "tailCalls", "ATV_initialize"
	.wrcm.nstrlist "calls", "ATV","rt_InitInfAndNaN","rt_SimInitTimingEngine"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "ATV"
	.wrcm.nstrlist "calls", "memset","rt_InitInfAndNaN"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "MdlTerminate"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "MdlStart"
	.wrcm.nstrlist "tailCalls", "ATV_initialize"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "MdlInitialize"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "MdlInitializeSampleTimes"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "MdlInitializeSizes"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "MdlUpdate"
	.wrcm.nstrlist "tailCalls", "ATV_update0","ATV_update1","ATV_update2"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "MdlOutputs"
	.wrcm.nstrlist "tailCalls", "ATV_output0","ATV_output1","ATV_output2"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "ATV_initialize"
	.wrcm.nint32 "local", 1
	.wrcm.nlist "calls"
	.wrcm.str "ATV_Chart_Init"
	.wrcm.str "pcfg_set_global_mios_prescaler_m5xx"
	.wrcm.str "pcfg_setup_pwm_clock_m5xx"
	.wrcm.str "pcx_config"
	.wrcm.str "pcx_declare_message"
	.wrcm.str "pdx_digital_input"
	.wrcm.str "pdx_digital_output"
	.wrcm.str "pdx_pwm_output"
	.wrcm.str "psc_get_application_build_date"
	.wrcm.str "psc_get_application_version"
	.wrcm.str "psc_get_boot_build_date"
	.wrcm.str "psc_get_boot_version"
	.wrcm.str "psc_get_platform_build_date"
	.wrcm.str "psc_get_platform_version"
	.wrcm.str "psc_get_prg_build_date"
	.wrcm.str "psc_get_prg_version"
	.wrcm.str "put_debounce_by_time_init"
	.wrcm.end
	.wrcm.nint32 "frameSize", 96
	.wrcm.end
	.wrcm.nelem "ATV_update2"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "ATV_output2"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "pkn_get_max_task_duration","pkn_get_task_duration","psc_get_cpu_loading","psc_get_max_cpu_loading","psc_get_used_stack_size"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "ATV_update1"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "ATV_output1"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "ATV_Chart","_d_dtof","_f_ftod","floor","fmod","pcx_receive","pcx_transmit","pcx_vdb_pack_msg","pcx_vdb_unpack_msg","rtIsNaN"
	.wrcm.nint32 "frameSize", 400
	.wrcm.end
	.wrcm.nelem "ATV_update0"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "ATV_output0"
	.wrcm.nint32 "local", 1
	.wrcm.nlist "calls"
	.wrcm.str "ATV_GestioneIbrido"
	.wrcm.str "ATV_KEY_ON"
	.wrcm.str "ATV_Management"
	.wrcm.str "_d_dtof"
	.wrcm.str "_d_dtoi"
	.wrcm.str "_d_dtou"
	.wrcm.str "_d_itod"
	.wrcm.str "_f_ftod"
	.wrcm.str "floor"
	.wrcm.str "fmod"
	.wrcm.str "pax_adc_input"
	.wrcm.str "pcx_transmit"
	.wrcm.str "pcx_vdb_pack_msg"
	.wrcm.str "pdx_digital_input"
	.wrcm.str "pdx_digital_output"
	.wrcm.str "pdx_pwm_output"
	.wrcm.str "psc_get_cpu_loading"
	.wrcm.str "put_debounce_by_time"
	.wrcm.str "put_dutycycle_processing"
	.wrcm.str "put_state_processing"
	.wrcm.str "rate_monotonic_scheduler"
	.wrcm.str "rtIsInf"
	.wrcm.str "rtIsInfF"
	.wrcm.str "rtIsNaN"
	.wrcm.str "rtIsNaNF"
	.wrcm.str "sLong2MultiWord"
	.wrcm.str "sMultiWordDivFloor"
	.wrcm.str "sMultiWordGe"
	.wrcm.str "sMultiWordMul"
	.wrcm.end
	.wrcm.nint32 "frameSize", 592
	.wrcm.end
	.wrcm.nelem "ATV_GestioneIbrido"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "ATV_Management"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "ATV_KEY_ON"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "ATV_Chart"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "ATV_Chart_Init"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "rate_monotonic_scheduler"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "rt_SimUpdateDiscreteEvents"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "sMultiWordGe"
	.wrcm.nstrlist "calls", "sMultiWordCmp"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "sMultiWordCmp"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "sLong2MultiWord"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "sMultiWordDivFloor"
	.wrcm.nstrlist "calls", "MultiWord2Bool","MultiWordNeg","MultiWordSetSignedMax","MultiWordSetSignedMin","sMultiWord2MultiWord","uMultiWordDiv","uMultiWordInc"
	.wrcm.nint32 "frameSize", 64
	.wrcm.end
	.wrcm.nelem "uMultiWordDiv"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "MultiWord2Bool"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "uMultiWordInc"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "MultiWordSetSignedMax"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "MultiWordSetSignedMin"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "sMultiWord2MultiWord"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "MultiWordNeg"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "MultiWord2sLong"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "sMultiWordMul"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "tools"
	.wrcm.nelem "llopt"
	.wrcm.nelem "version"
	.wrcm.nstr "string", "5.9.6.7"
	.wrcm.nint32 "number", 5967
	.wrcm.nstr "path", "C:\WindRiver\compilers\diab-5.9.6.7\WIN32\bin\llopt.exe"
	.wrcm.nstr "label", "DIAB_5_9_6_7-FCS_20190506_120059"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "ctoa"
	.wrcm.nelem "version"
	.wrcm.nstr "string", "5.9.6.7"
	.wrcm.nint32 "number", 5967
	.wrcm.nstr "path", "C:\WindRiver\compilers\diab-5.9.6.7\WIN32\lib\ctoa.exe"
	.wrcm.nstr "label", "DIAB_5_9_6_7-FCS_20190506_120059"
	.wrcm.end
	.wrcm.nstr "options", "-ew1551 -ew1792 -ei1827 -Xmake-opt-key=ATV.o -Xsingle-fp -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32 -Xaddr-sconst=0x11 -Xbss-common-off -Xdouble-avoid -Xenum-is-int -Xforce-prototypes -Xkeywords=0x08 -Xmin-align=1 -Xpass-source -Xsmall-const=0 -Xstrict-eabi -Xname-const=.cal_sec -Xmake-opt-key=ATV.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.7\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32\lib\cderror.cat -Xsingle-fp -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32 -ew1551 -ew1792 -g3 -O -Xaddr-sconst=0x11 -Xbss-common-off -Xdouble-avoid -Xenum-is-int -Xforce-prototypes -Xkeywords=0x08 -Xmin-align=1 -Xpass-source -Xsmall-const=0 -Xstrict-eabi -ei1827 -Xname-const=.cal_sec -Y+C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\cpp/std:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\cpp:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\simple:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include -D__softfp -D__PPC_VLE__ -D__EABI__ -D__BIG_ENDIAN__ -D__ppc -D_SUPPORTS_BUILTIN_PREFETCH -D__SIZEOF_POINTER__=4 -D__CONFIGURE_EMBEDDED=0 -D__CONFIGURE_EXCEPTIONS=1 -D_DIAB_TOOL -D_SUPPORTS_BUILTIN_EXPECT -DCFG_M560 -DCFG_SUB_000 -DMODEL=ATV -DNUMST=3 -DTID01EQ=0 -DNCSTATES=0 -DMT=1 -DMODEL_REF_BUILD=0 -DINT8_T=signed char -DUINT8_T=unsigned char -DINT16_T=signed short -DUINT16_T=unsigned short -DINT32_T=signed long -DUINT32_T=unsigned long -DREAL_T=float -DRT -DREAL_T=float -DUSE_RTMODEL -I. -IC:/openecu/platform/3_2_0_FS_r2022-1/openecu/../targets/M560/M560_000/mpc5746d_lib/include -IC:/PROGRA~1/MATLAB/R2018b/simulink/include -IC:/PROGRA~1/MATLAB/R2018b/extern/include -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/libsrc -IC:/Users/giovanni/OneDrive/Desktop/workspace/Firmware -IC:/Users/giovanni/OneDrive/Desktop/workspace/Firmware/ATV_r2018.2_64_oe_3.2.0_r2022_1_rtmodel -IC:/PROGRA~1/MATLAB/R2018b/extern/include -IC:/PROGRA~1/MATLAB/R2018b/simulink/include -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src/ext_mode/common"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "ATV.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
