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
        .d2line         235
#$$ld
.L4910:

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
	.d2line		252
.Llo16:
	rlwinm		r30,r4,2,0,29		# n1=r4
	.d2line		253
	rlwinm		r31,r6,2,0,29		# n2=r6
	.d2line		257
	se_add		r30,r3		# u1=r3
	se_add		r31,r5		# u2=r5
#   isNegative2 = ((u2[n2 - 1] & 2147483648U) != 0U);
	lwz		r29,-4(r30)		# isNegative1=r29
	.d2line		254
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
	bc		0,1,.L3696	# le
	.d2line		257
	mr		r30,r8		# k=r30 k=r8
	diab.addi		r10,r7,-4		# y=r7
	diab.li		r31,0
	se_btsti		r30,31		# n=r30
	bc		1,2,.L4799	# eq
.L4800:
#     y[k] = 0U;
	.d2line		258
.Llo7:
	stwu		r31,4(r10)
	.d2line		257
.Llo8:
	diab.addi		r30,r30,-1		# k=r30 k=r30
	se_btsti		r30,31		# k=r30
	bc		0,2,.L4800	# ne
	se_cmpi		r30,0		# k=r30
	bc		1,2,.L3696	# eq
.L4799:
.Llo9:
	se_srwi		r30,1		# k=r30 k=r30
.Llo10:
	mtspr		ctr,r30		# k=ctr
.L4787:
	.d2line		258
	stwu		r31,4(r10)
	stwu		r31,4(r10)
	bc		2,0,.L4787
.L3696:
#   }
# 
#   for (i = 0; i < n1; i++) {
	.d2line		261
.Llo11:
	se_cmpi		r4,0		# n1=r4
.Llo12:
	bc		0,1,.L3699	# le
.Llo13:
	diab.li		r12,0		# i=r12
.L4789:
.Llo14:
	rlwinm		r10,r12,2,0,29		# i=r12
#     cb = 0U;
#     u1i = u1[i];
	.d2line		262
	diab.li		r23,0		# cb=r23
	.d2line		263
.Llo75:
	lwzx		r30,r3,r10		# u1i=r30 u1=r3
#     if (isNegative1) {
	.d2line		264
.Llo57:
	se_cmpi		r29,0		# isNegative1=r29
	bc		1,2,.L3701	# eq
#       u1i = ~u1i + cb1;
	.d2line		265
	nor		r30,r30,r30		# u1i=r30 u1i=r30 u1i=r30
	se_add		r30,r27		# u1i=r30 u1i=r30 cb1=r27
#       cb1 = (uint32_T)(u1i < cb1);
	.d2line		266
	subfc		r27,r27,r30		# cb1=r27 cb1=r27 u1i=r30
	subfe		r27,r27,r27		# cb1=r27 cb1=r27 cb1=r27
	neg		r27,r27		# cb1=r27 cb1=r27
.L3701:
#     }
# 
#     a1 = u1i >> 16U;
	.d2line		270
	subf		r0,r12,r8		# cb=r0 i=r12 n=r8
#     a0 = u1i & 65535U;
	.d2line		269
.Llo21:
	rlwinm		r31,r30,16,16,31		# a1=r31 u1i=r30
.Llo71:
	se_cmp		r0,r6		# cb=r0 n2=r6
	.d2line		274
	mr		r11,r12		# k=r11 k=r12
	isel		r25,r6,r0,1		# nj=r25 n2=r6 cb=r0
#     cb2 = 1U;
#     k = n - i;
#     nj = n2 <= k ? n2 : k;
#     k = i;
.Llo17:
	rlwinm		r30,r30,0,16,31		# a0=r30 u1i=r30
#     for (j = 0; j < nj; j++) {
	.d2line		275
.Llo58:
	se_cmpi		r25,0		# nj=r25
	bc		0,1,.L3702	# le
	.d2line		271
.Llo22:
	add		r10,r7,r10		# y=r7
	diab.li		r26,1		# cb2=r26
.Llo82:
	diab.addi		r9,r5,-4		# u2=r5
	.d2line		275
	se_btsti		r25,31		# nj=r25
	diab.addi		r10,r10,-4
	bc		1,2,.L4794	# eq
.L4796:
#       yk = y[k];
	.d2line		276
	lwzu		r0,4(r10)		# yk=r0
#       u1i = u2[j];
	.d2line		278
.Llo59:
	se_cmpi		r28,0		# isNegative2=r28
#       if (isNegative2) {
	.d2line		277
	lwzu		r22,4(r9)		# u1i=r22
.Llo37:
	bc		1,2,.L4795	# eq
#         u1i = ~u1i + cb2;
	.d2line		279
	nor		r22,r22,r22		# u1i=r22 u1i=r22 u1i=r22
	add		r22,r22,r26		# u1i=r22 u1i=r22 cb2=r26
#         cb2 = (uint32_T)(u1i < cb2);
	.d2line		280
	subfc		r26,r26,r22		# cb2=r26 cb2=r26 u1i=r22
	subfe		r26,r26,r26		# cb2=r26 cb2=r26 cb2=r26
	neg		r26,r26		# cb2=r26 cb2=r26
.L4795:
#       }
# 
#       b1 = u1i >> 16U;
	.d2line		284
.Llo60:
	rlwinm		r21,r22,0,16,31		# u1i=r21 u1i=r22
#       u1i &= 65535U;
	.d2line		287
.Llo61:
	add		r0,r0,r23		# yk=r0 yk=r0 cb=r23
#       w10 = a1 * u1i;
	.d2line		289
	mullw		r24,r21,r30		# u1i=r24 u1i=r21 a0=r30
#       w01 = a0 * b1;
	.d2line		288
.Llo38:
	subfc		r20,r23,r0		# w01=r20 cb=r23 yk=r0
#       yk += cb;
	.d2line		283
.Llo39:
	rlwinm		r22,r22,16,16,31		# b1=r22 u1i=r22
#       cb = (uint32_T)(yk < cb);
	subfe		r18,r20,r20		# cb=r18 w01=r20 w01=r20
	.d2line		285
.Llo23:
	mullw		r21,r31,r21		# w10=r21 a1=r31 u1i=r21
	.d2line		290
	add		r23,r0,r24		# yk=r23 yk=r0 u1i=r24
#       u1i *= a0;
	.d2line		286
	mullw		r20,r30,r22		# w01=r20 a0=r30 b1=r22
#       yk += u1i;
	.d2line		291
	subfc		r24,r24,r23		# u1i=r24 u1i=r24 yk=r23
#       cb += (yk < u1i);
	.d2line		292
	rlwinm		r0,r21,16,0,15		# u1i=r0 w10=r21
.Llo48:
	subfe		r19,r24,r24		# cb=r19 u1i=r24 u1i=r24
	.d2line		293
.Llo62:
	add		r23,r23,r0		# yk=r23 yk=r23 u1i=r0
	.d2line		295
	rlwinm		r24,r20,16,0,15		# u1i=r24 w01=r20
#       u1i = w10 << 16U;
	.d2line		294
.Llo40:
	subfc		r0,r0,r23		# u1i=r0 u1i=r0 yk=r23
#       yk += u1i;
	.d2line		288
	neg		r18,r18		# cb=r18 cb=r18
#       cb += (yk < u1i);
	.d2line		296
	add		r23,r23,r24		# yk=r23 yk=r23 u1i=r24
	subfe		r0,r0,r0		# u1i=r0 u1i=r0 u1i=r0
	.d2line		291
	neg		r19,r19		# cb=r19 cb=r19
	.d2line		297
	subfc		r24,r24,r23		# u1i=r24 u1i=r24 yk=r23
#       u1i = w01 << 16U;
	.d2line		294
	neg		r0,r0		# u1i=r0 u1i=r0
#       yk += u1i;
.Llo49:
	add		r18,r18,r19		# cb=r18 cb=r18 cb=r19
#       cb += (yk < u1i);
.Llo24:
	subfe		r24,r24,r24		# u1i=r24 u1i=r24 u1i=r24
	.d2line		298
.Llo25:
	stw		r23,0(r10)		# yk=r23
	add		r0,r18,r0		# cb=r0 cb=r18 cb=r0
	neg		r24,r24		# u1i=r24 u1i=r24
#       y[k] = yk;
	.d2line		299
.Llo54:
	rlwinm		r21,r21,16,16,31		# w10=r21 w10=r21
#       cb += w10 >> 16U;
	se_add		r0,r24		# cb=r0 cb=r0 cb=r24
	mullw		r23,r31,r22		# yk=r23 a1=r31 b1=r22
	rlwinm		r20,r20,16,16,31		# w01=r20 w01=r20
	add		r0,r21,r0		# cb=r0 w10=r21 cb=r0
	.d2line		275
	diab.addi		r25,r25,-1		# j=r25 j=r25
	add		r20,r0,r20		# w01=r20 cb=r0 w01=r20
#       cb += w01 >> 16U;
#       cb += a1 * b1;
#       k++;
	.d2line		302
	diab.addi		r11,r11,1		# k=r11 k=r11
	se_btsti		r25,31		# j=r25
	add		r23,r23,r20		# cb=r23 yk=r23 w01=r20
.Llo63:
	bc		0,2,.L4796	# ne
	.d2line		275
.Llo26:
	se_cmpi		r25,0		# j=r25
	bc		1,2,.L3702	# eq
.L4794:
	se_srwi		r25,1		# j=r25 j=r25
.Llo18:
	mtspr		ctr,r25		# j=ctr
.L4788:
	.d2line		276
	lwzu		r20,4(r10)		# yk=r20
	.d2line		278
.Llo64:
	se_cmpi		r28,0		# isNegative2=r28
	.d2line		277
	lwzu		r21,4(r9)		# u1i=r21
.Llo41:
	bc		1,2,.L4798	# eq
	.d2line		279
	nor		r21,r21,r21		# u1i=r21 u1i=r21 u1i=r21
	add		r21,r21,r26		# u1i=r21 u1i=r21 cb2=r26
	.d2line		280
	subfc		r26,r26,r21		# cb2=r26 cb2=r26 u1i=r21
	subfe		r26,r26,r26		# cb2=r26 cb2=r26 cb2=r26
	neg		r26,r26		# cb2=r26 cb2=r26
.L4798:
	.d2line		284
.Llo65:
	rlwinm		r22,r21,0,16,31		# u1i=r22 u1i=r21
	.d2line		287
.Llo66:
	add		r20,r20,r23		# yk=r20 yk=r20 cb=r23
	.d2line		289
	mullw		r25,r22,r30		# u1i=r25 u1i=r22 a0=r30
	.d2line		288
	subfc		r0,r23,r20		# cb=r0 cb=r23 yk=r20
	.d2line		283
.Llo27:
	rlwinm		r23,r21,16,16,31		# b1=r23 u1i=r21
.Llo76:
	subfe		r0,r0,r0		# cb=r0 cb=r0 cb=r0
	.d2line		285
	mullw		r22,r31,r22		# w10=r22 a1=r31 u1i=r22
	.d2line		290
	add		r20,r20,r25		# yk=r20 yk=r20 u1i=r25
	.d2line		286
	mullw		r21,r30,r23		# w01=r21 a0=r30 b1=r23
	.d2line		291
.Llo42:
	subfc		r25,r25,r20		# u1i=r25 u1i=r25 yk=r20
	.d2line		292
.Llo43:
	rlwinm		r24,r22,16,0,15		# u1i=r24 w10=r22
.Llo50:
	subfe		r18,r25,r25		# cb=r18 u1i=r25 u1i=r25
	.d2line		293
	add		r20,r20,r24		# yk=r20 yk=r20 u1i=r24
	.d2line		295
	rlwinm		r25,r21,16,0,15		# u1i=r25 w01=r21
	.d2line		294
.Llo44:
	subfc		r24,r24,r20		# u1i=r24 u1i=r24 yk=r20
	.d2line		288
	neg		r0,r0		# cb=r0 cb=r0
	.d2line		296
	add		r20,r20,r25		# yk=r20 yk=r20 u1i=r25
	subfe		r19,r24,r24		# cb=r19 u1i=r24 u1i=r24
	.d2line		298
	stw		r20,0(r10)		# yk=r20
	.d2line		291
	neg		r18,r18		# cb=r18 cb=r18
	.d2line		294
	neg		r19,r19		# cb=r19 cb=r19
	add		r0,r0,r18		# cb=r0 cb=r0 cb=r18
	.d2line		297
	subfc		r20,r25,r20		# yk=r20 u1i=r25 yk=r20
	add		r0,r0,r19		# cb=r0 cb=r0 cb=r19
	subfe		r20,r20,r20		# yk=r20 yk=r20 yk=r20
	.d2line		299
	rlwinm		r22,r22,16,16,31		# w10=r22 w10=r22
	neg		r20,r20		# yk=r20 yk=r20
.Llo67:
	mullw		r23,r31,r23		# b1=r23 a1=r31 b1=r23
	add		r0,r0,r20		# cb=r0 cb=r0 cb=r20
	rlwinm		r21,r21,16,16,31		# w01=r21 w01=r21
	add		r0,r22,r0		# cb=r0 w10=r22 cb=r0
	.d2line		276
	lwzu		r24,4(r10)		# yk=r24
	.d2line		277
.Llo51:
	lwzu		r25,4(r9)		# u1i=r25
.Llo45:
	add		r0,r0,r21		# cb=r0 cb=r0 w01=r21
	.d2line		278
.Llo77:
	se_cmpi		r28,0		# isNegative2=r28
	add		r0,r0,r23		# cb=r0 cb=r0 b1=r23
.Llo28:
	bc		1,2,.L3704	# eq
	.d2line		279
.Llo72:
	nor		r25,r25,r25		# u1i=r25 u1i=r25 u1i=r25
	se_add		r25,r26		# u1i=r25 u1i=r25 cb2=r26
	.d2line		280
	subfc		r26,r26,r25		# cb2=r26 cb2=r26 u1i=r25
	subfe		r26,r26,r26		# cb2=r26 cb2=r26 cb2=r26
	neg		r26,r26		# cb2=r26 cb2=r26
.L3704:
	.d2line		284
	rlwinm		r22,r25,0,16,31		# u1i=r22 u1i=r25
	.d2line		287
.Llo73:
	add		r23,r24,r0		# yk=r23 yk=r24 cb=r0
	.d2line		289
	mullw		r24,r22,r30		# u1i=r24 u1i=r22 a0=r30
	.d2line		288
.Llo68:
	subfc		r0,r0,r23		# cb=r0 cb=r0 yk=r23
	.d2line		283
.Llo69:
	se_srwi		r25,16		# b1=r25 u1i=r25
.Llo46:
	subfe		r20,r0,r0		# cb=r20 cb=r0 cb=r0
	.d2line		285
.Llo29:
	mullw		r22,r31,r22		# w10=r22 a1=r31 u1i=r22
	.d2line		290
	add		r23,r23,r24		# yk=r23 yk=r23 u1i=r24
	.d2line		286
	mullw		r21,r30,r25		# w01=r21 a0=r30 b1=r25
	.d2line		291
.Llo74:
	subfc		r24,r24,r23		# u1i=r24 u1i=r24 yk=r23
	.d2line		292
	rlwinm		r0,r22,16,0,15		# u1i=r0 w10=r22
.Llo52:
	subfe		r19,r24,r24		# cb=r19 u1i=r24 u1i=r24
	.d2line		293
	add		r23,r23,r0		# yk=r23 yk=r23 u1i=r0
	.d2line		295
	rlwinm		r24,r21,16,0,15		# u1i=r24 w01=r21
	.d2line		294
.Llo47:
	subfc		r0,r0,r23		# u1i=r0 u1i=r0 yk=r23
	.d2line		288
	neg		r20,r20		# cb=r20 cb=r20
	.d2line		296
.Llo30:
	add		r23,r23,r24		# yk=r23 yk=r23 u1i=r24
.Llo31:
	subfe		r0,r0,r0		# u1i=r0 u1i=r0 u1i=r0
	.d2line		291
	neg		r19,r19		# cb=r19 cb=r19
	.d2line		297
	subfc		r24,r24,r23		# u1i=r24 u1i=r24 yk=r23
	.d2line		294
	neg		r0,r0		# u1i=r0 u1i=r0
.Llo53:
	add		r20,r20,r19		# cb=r20 cb=r20 cb=r19
	subfe		r24,r24,r24		# u1i=r24 u1i=r24 u1i=r24
	add		r0,r20,r0		# cb=r0 cb=r20 cb=r0
	neg		r24,r24		# u1i=r24 u1i=r24
	.d2line		299
.Llo55:
	rlwinm		r22,r22,16,16,31		# w10=r22 w10=r22
	se_add		r0,r24		# cb=r0 cb=r0 cb=r24
	mullw		r25,r25,r31		# a1=r25 a1=r25 b1=r31
	.d2line		298
	stw		r23,0(r10)		# yk=r23
	rlwinm		r21,r21,16,16,31		# w01=r21 w01=r21
	add		r0,r22,r0		# cb=r0 w10=r22 cb=r0
	.d2line		302
	diab.addi		r11,r11,2		# k=r11 k=r11
	add		r0,r0,r21		# cb=r0 cb=r0 w01=r21
	add		r23,r0,r25		# cb=r23 cb=r0 a1=r25
.Llo70:
	bc		2,0,.L4788
.L3702:
#     }
# 
#     if (k < n) {
	.d2line		305
.Llo19:
	cmp		0,0,r11,r8		# k=r11 n=r8
	bc		0,0,.L3706	# ge
#       y[k] = cb;
	.d2line		306
.Llo20:
	rlwinm		r11,r11,2,0,29		# k=r11 k=r11
	stwux		r23,r11,r7		# k=r11 cb=r23
.L3706:
	.d2line		261
	diab.addi		r12,r12,1		# i=r12 i=r12
	cmp		0,0,r12,r4		# i=r12 n1=r4
	bc		1,0,.L4789	# lt
.L3699:
#     }
#   }
# 
#   /* Apply sign */
#   if (isNegative1 != isNegative2) {
	.d2line		311
.Llo78:
	se_cmp		r29,r28		# isNegative1=r29 isNegative2=r28
	bc		1,2,.L3711	# eq
#     cb = 1U;
#     for (k = 0; k < n; k++) {
	.d2line		313
.Llo56:
	cmpi		0,0,r8,0		# n=r8
	bc		0,1,.L3711	# le
	.d2line		312
	diab.li		r3,1		# cb=r3
.Llo2:
	diab.addi		r7,r7,-4		# y=r7 y=r7
	.d2line		313
	e_andi.		r0,r8,1		# cb=r0 n=r8
	bc		1,2,.L4791	# eq
.L4792:
#       yk = ~y[k] + cb;
	.d2line		314
	lwzu		r4,4(r7)		# n1=r4 y=r7
	.d2line		313
	diab.addi		r8,r8,-1		# k=r8 k=r8
	e_andi.		r0,r8,1		# cb=r0 k=r8
#       y[k] = yk;
	nor		r0,r4,r4		# cb=r0 n1=r4 n1=r4
#       cb = (uint32_T)(yk < cb);
.Llo32:
	se_add		r0,r3		# yk=r0 cb=r0 cb=r3
	.d2line		316
.Llo33:
	subfc		r3,r3,r0		# cb=r3 cb=r3 yk=r0
	.d2line		315
	stw		r0,0(r7)		# y=r7 yk=r0
	subfe		r3,r3,r3		# cb=r3 cb=r3 cb=r3
	neg		r3,r3		# cb=r3 cb=r3
	bc		0,2,.L4792	# ne
	.d2line		313
.Llo5:
	cmpi		0,0,r8,0		# k=r8
	bc		1,2,.L3711	# eq
.L4791:
.Llo6:
	rlwinm		r8,r8,31,1,31		# k=r8 k=r8
.Llo15:
	mtspr		ctr,r8		# k=ctr
.L4790:
	.d2line		314
	lwzu		r0,4(r7)		# cb=r0 y=r7
.Llo34:
	nor		r0,r0,r0		# cb=r0 cb=r0 cb=r0
.Llo36:
	se_add		r0,r3		# yk=r0 cb=r0 cb=r3
	.d2line		315
.Llo35:
	stw		r0,0(r7)		# y=r7 yk=r0
	.d2line		316
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
	bc		2,0,.L4790
.L3711:
#     }
#   }
# }
	.d2line		319
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
.L4911:
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
#	?a10		$$317
#	?a11		$$316
#	?a12		$$315
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
        .d2line         322
#$$ld
.L4980:

#$$bf	MultiWord2sLong,interprocedural,nostackparams

# Regs written: r3
	.globl		MultiWord2sLong
	.d2_cfa_start __cie
MultiWord2sLong:
	.d2line		0
	.d2prologue_end
#   return (int32_T)u[0];
	.d2line		323
.Llo83:
	lwz		r3,0(r3)		# u=r3 u=r3
# }
	.d2line		324
	.d2epilogue_begin
.Llo84:
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4981:
	.type		MultiWord2sLong,@function
	.size		MultiWord2sLong,.-MultiWord2sLong
# Number of nodes = 3

# Allocations for MultiWord2sLong
#	?a4		u
# void MultiWordNeg(const uint32_T u1[], uint32_T y[], int32_T n)
# {
	.align		2
	.section	.text_vle
        .d2line         364
#$$ld
.L4986:

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
	.d2line		368
.Llo95:
	bc		0,1,.L3748	# le
	.d2line		366
.Llo87:
	diab.li		r5,1		# carry=r5
.Llo88:
	diab.addi		r3,r3,-4		# u1=r3 u1=r3
	diab.addi		r4,r4,-4		# y=r4 y=r4
	mr		r7,r0		# i=r7 i=r0
	.d2line		368
	se_btsti		r0,31		# n=r0
	bc		1,2,.L4803	# eq
.L4804:
#     yi = ~u1[i] + carry;
	.d2line		369
.Llo89:
	lwzu		r6,4(r3)		# u1=r3
	.d2line		368
.Llo96:
	diab.addi		r7,r7,-1		# i=r7 i=r7
	se_btsti		r7,31		# i=r7
#     y[i] = yi;
	nor		r0,r6,r6		# n=r0
#     carry = (uint32_T)(yi < carry);
.Llo90:
	se_add		r0,r5		# yi=r0 n=r0 carry=r5
	.d2line		371
.Llo91:
	subfc		r5,r5,r0		# carry=r5 carry=r5 yi=r0
	.d2line		370
	stwu		r0,4(r4)		# y=r4 yi=r0
	subfe		r5,r5,r5		# carry=r5 carry=r5 carry=r5
	neg		r5,r5		# carry=r5 carry=r5
	bc		0,2,.L4804	# ne
	.d2line		368
.Llo98:
	se_cmpi		r7,0		# i=r7
	bc		1,2,.L3748	# eq
.L4803:
	se_srwi		r7,1		# i=r7 i=r7
.Llo97:
	mtspr		ctr,r7		# i=ctr
.L4802:
	.d2line		369
	lwzu		r0,4(r3)		# n=r0 u1=r3
.Llo92:
	nor		r0,r0,r0		# n=r0 n=r0 n=r0
.Llo99:
	se_add		r0,r5		# yi=r0 n=r0 carry=r5
	.d2line		370
.Llo93:
	stwu		r0,4(r4)		# y=r4 yi=r0
	.d2line		371
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
	bc		2,0,.L4802
.L3748:
#   }
# }
	.d2line		373
	.d2epilogue_begin
.Llo94:
	blr
.Llo86:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4987:
	.type		MultiWordNeg,@function
	.size		MultiWordNeg,.-MultiWordNeg
# Number of nodes = 38

# Allocations for MultiWordNeg
#	?a4		u1
#	?a5		y
#	?a6		n
#	?a7		$$318
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
        .d2line         377
#$$ld
.L5000:

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
	.d2line		381
.Llo100:
	se_cmp		r6,r4		# n=r6 n1=r4
	isel		r11,r4,r6,1		# nm=r11 n1=r4 n=r6
#   for (i = 0; i < nm; i++) {
	.d2line		382
.Llo106:
	cmpi		0,0,r11,0		# nm=r11
	bc		0,1,.L3754	# le
	mr		r7,r11		# i=r7 i=r11
	diab.addi		r9,r5,-4		# y=r5
	diab.addi		r8,r3,-4		# u1=r3
	se_btsti		r7,31		# nm=r7
	bc		1,2,.L4811	# eq
.L4812:
#     y[i] = u1[i];
	.d2line		383
	lwzu		r10,4(r8)
	.d2line		382
	diab.addi		r7,r7,-1		# i=r7 i=r7
	se_btsti		r7,31		# i=r7
	stwu		r10,4(r9)
	bc		0,2,.L4812	# ne
	se_cmpi		r7,0		# i=r7
	bc		1,2,.L3754	# eq
.L4811:
	se_srwi		r7,1		# i=r7 i=r7
	mtspr		ctr,r7		# i=ctr
.L4806:
	.d2line		383
	lwzu		r0,4(r8)
	stwu		r0,4(r9)
	lwzu		r0,4(r8)
	stwu		r0,4(r9)
	bc		2,0,.L4806
.L3754:
#   }
# 
#   if (n > n1) {
	.d2line		386
	se_cmp		r6,r4		# n=r6 n1=r4
	bc		0,1,.L3760	# le
	rlwinm		r0,r4,2,0,29		# u1=r0 n1=r4
	se_add		r3,r0		# u1=r3 u1=r3 u1=r0
	diab.li		r4,-1		# n1=r4
	lwz		r0,-4(r3)		# u1=r0 u1=r3
	se_btsti		r0,0		# u1=r0
	isel		r3,0,r4,2		# u1i=r3 n1=r4
#     u1i = (u1[n1 - 1] & 2147483648U) != 0U ? MAX_uint32_T : 0U;
#     for (i = nm; i < n; i++) {
	.d2line		388
.Llo101:
	cmp		0,0,r11,r6		# nm=r11 n=r6
.Llo102:
	bc		0,0,.L3760	# ge
.Llo103:
	rlwinm		r7,r11,2,0,29		# i=r7 nm=r11
	subf		r11,r11,r6		# i=r11 nm=r11 n=r6
	se_add		r5,r7		# y=r5 y=r5 i=r7
	e_andi.		r0,r11,1		# u1=r0 i=r11
	diab.addi		r5,r5,-4		# y=r5 y=r5
	bc		1,2,.L4808	# eq
.L4809:
#       y[i] = u1i;
	.d2line		389
	stwu		r3,4(r5)		# y=r5 u1i=r3
	.d2line		388
	diab.addi		r11,r11,-1		# i=r11 i=r11
	e_andi.		r0,r11,1		# u1=r0 i=r11
	bc		0,2,.L4809	# ne
	cmpi		0,0,r11,0		# i=r11
	bc		1,2,.L3760	# eq
.L4808:
	rlwinm		r11,r11,31,1,31		# i=r11 i=r11
.Llo107:
	mtspr		ctr,r11		# i=ctr
.L4807:
	.d2line		389
	stwu		r3,4(r5)		# y=r5 u1i=r3
	stwu		r3,4(r5)		# y=r5 u1i=r3
	bc		2,0,.L4807
.L3760:
#     }
#   }
# }
	.d2line		392
	.d2epilogue_begin
.Llo104:
	blr
.Llo105:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5001:
	.type		sMultiWord2MultiWord,@function
	.size		sMultiWord2MultiWord,.-sMultiWord2MultiWord
# Number of nodes = 75

# Allocations for sMultiWord2MultiWord
#	?a4		u1
#	?a5		n1
#	?a6		y
#	?a7		n
#	?a8		$$320
#	?a9		$$319
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
        .d2line         395
#$$ld
.L5017:

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
	.d2line		399
.Llo108:
	e_addi.		r7,r4,-1		# n1=r7
.Llo112:
	bc		0,1,.L3774	# le
	diab.addi		r6,r3,-4		# y=r3
	diab.li		r4,0
.Llo110:
	mr		r5,r7		# i=r5 i=r7
	se_btsti		r7,31		# n1=r7
	bc		1,2,.L4815	# eq
.L4816:
#     y[i] = 0U;
	.d2line		400
	stwu		r4,4(r6)
	.d2line		399
	diab.addi		r5,r5,-1		# i=r5 i=r5
	se_btsti		r5,31		# i=r5
	bc		0,2,.L4816	# ne
	se_cmpi		r5,0		# i=r5
	bc		1,2,.L3774	# eq
.L4815:
	se_srwi		r5,1		# i=r5 i=r5
	mtspr		ctr,r5		# i=ctr
.L4814:
	.d2line		400
	stwu		r4,4(r6)
	stwu		r4,4(r6)
	bc		2,0,.L4814
.L3774:
#   }
# 
#   y[n1] = 2147483648U;
	.d2line		403
.Llo111:
	e_lis		r0,-32768
.Llo113:
	se_slwi		r7,2		# n1=r7 n1=r7
.Llo114:
	stwx		r0,r3,r7		# y=r3
# }
	.d2line		404
	.d2epilogue_begin
	blr
.Llo109:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5018:
	.type		MultiWordSetSignedMin,@function
	.size		MultiWordSetSignedMin,.-MultiWordSetSignedMin
# Number of nodes = 32

# Allocations for MultiWordSetSignedMin
#	?a4		y
#	?a5		n
#	?a6		$$321
#	?a7		$$57
#	?a8		i
#	?a9		$$56
#	not allocated	i
#	?a10		n1
# void MultiWordSetSignedMax(uint32_T y[], int32_T n)
# {
	.align		2
	.section	.text_vle
        .d2line         407
#$$ld
.L5028:

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
	.d2line		411
.Llo115:
	e_addi.		r7,r4,-1		# n1=r7
.Llo119:
	bc		0,1,.L3780	# le
	diab.addi		r6,r3,-4		# y=r3
	diab.li		r4,-1
.Llo117:
	mr		r5,r7		# i=r5 i=r7
	se_btsti		r7,31		# n1=r7
	bc		1,2,.L4819	# eq
.L4820:
#     y[i] = MAX_uint32_T;
	.d2line		412
	stwu		r4,4(r6)
	.d2line		411
	diab.addi		r5,r5,-1		# i=r5 i=r5
	se_btsti		r5,31		# i=r5
	bc		0,2,.L4820	# ne
	se_cmpi		r5,0		# i=r5
	bc		1,2,.L3780	# eq
.L4819:
	se_srwi		r5,1		# i=r5 i=r5
	mtspr		ctr,r5		# i=ctr
.L4818:
	.d2line		412
	stwu		r4,4(r6)
	stwu		r4,4(r6)
	bc		2,0,.L4818
.L3780:
#   }
# 
#   y[n1] = 2147483647U;
	.d2line		415
.Llo118:
	diab.li		r0,2147483647
.Llo120:
	se_slwi		r7,2		# n1=r7 n1=r7
.Llo121:
	stwx		r0,r3,r7		# y=r3
# }
	.d2line		416
	.d2epilogue_begin
	blr
.Llo116:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5029:
	.type		MultiWordSetSignedMax,@function
	.size		MultiWordSetSignedMax,.-MultiWordSetSignedMax
# Number of nodes = 32

# Allocations for MultiWordSetSignedMax
#	?a4		y
#	?a5		n
#	?a6		$$322
#	?a7		$$59
#	?a8		i
#	?a9		$$58
#	not allocated	i
#	?a10		n1
# void uMultiWordInc(uint32_T y[], int32_T n)
# {
	.align		2
	.section	.text_vle
        .d2line         419
#$$ld
.L5039:

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
	.d2line		423
.Llo129:
	bc		0,1,.L3786	# le
	.d2line		421
.Llo126:
	diab.addi		r6,r3,-4		# y=r3
.Llo127:
	diab.li		r4,1		# carry=r4
	.d2line		423
.Llo136:
	se_btsti		r0,31		# n=r0
	mr		r3,r0		# i=r3 i=r0
.Llo123:
	bc		1,2,.L4823	# eq
.L4824:
#     yi = y[i] + carry;
	.d2line		424
.Llo128:
	lwzu		r5,4(r6)		# yi=r5
	.d2line		423
.Llo130:
	diab.addi		r3,r3,-1		# i=r3 i=r3
#     y[i] = yi;
	se_btsti		r3,31		# i=r3
#     carry = (uint32_T)(yi < carry);
	se_add		r5,r4		# yi=r5 carry=r5 carry=r4
	.d2line		426
	subfc		r4,r4,r5		# carry=r4 carry=r4 yi=r5
	.d2line		425
	stw		r5,0(r6)		# yi=r5
	subfe		r4,r4,r4		# carry=r4 carry=r4 carry=r4
	neg		r4,r4		# carry=r4 carry=r4
	bc		0,2,.L4824	# ne
	.d2line		423
.Llo134:
	se_cmpi		r3,0		# i=r3
	bc		1,2,.L3786	# eq
.L4823:
	se_srwi		r3,1		# i=r3 i=r3
.Llo131:
	mtspr		ctr,r3		# i=ctr
.L4822:
	.d2line		424
	lwzu		r0,4(r6)		# n=r0
.Llo135:
	se_add		r0,r4		# yi=r0 carry=r0 carry=r4
	.d2line		425
	stw		r0,0(r6)		# yi=r0
	.d2line		426
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
	bc		2,0,.L4822
.L3786:
#   }
# }
	.d2line		428
	.d2epilogue_begin
.Llo124:
	blr
.Llo125:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5040:
	.type		uMultiWordInc,@function
	.size		uMultiWordInc,.-uMultiWordInc
# Number of nodes = 37

# Allocations for uMultiWordInc
#	?a4		y
#	?a5		n
#	?a6		$$323
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
        .d2line         431
#$$ld
.L5052:

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
	.d2line		434
	diab.li		r4,0		# y=r4
#   i = 0;
#   while ((i < n) && (!y)) {
	.d2line		436
.Llo139:
	bc		0,1,.L3792	# le
	.d2line		435
.Llo140:
	diab.li		r5,0
.Llo143:
	diab.addi		r3,r3,-4		# u=r3 u=r3
.L4826:
#     if (u[i] != 0U) {
	.d2line		437
	lwzu		r6,4(r3)		# u=r3
	.d2line		438
	diab.li		r7,1
#       y = true;
	se_cmpi		r6,0
	isel		r4,r4,r7,2		# y=r4 y=r4
.L3794:
#     }
# 
#     i++;
	.d2line		441
	se_addi		r5,1		# i=r5 i=r5
	.d2line		436
	se_cmp		r5,r0		# i=r5 n=r0
	bc		0,0,.L3792	# ge
	se_cmpi		r4,0		# y=r4
	bc		1,2,.L4826	# eq
.L3792:
#   }
# 
#   return y;
	.d2line		444
.Llo141:
	rlwinm		r3,r4,0,24,31		# y=r3 y=r4
# }
	.d2line		445
	.d2epilogue_begin
.Llo138:
	blr
.Llo142:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5053:
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
        .d2line         449
#$$ld
.L5063:

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
	.d2line		471
.Llo383:
	mr.		r4,r6		# nzb=?a109 nzb=r6
#   tpi = nb - 1;
	.d2line		470
.Llo152:
	diab.addi		r31,r6,-1		# tpi=r31 nb=r6
#   while ((nzb > 0) && (b[tpi] == 0U)) {
.Llo413:
	bc		0,1,.L3799	# le
	.d2line		471
.Llo153:
	rlwinm		r6,r31,2,0,29		# nb=r6 tpi=r31
	lwzx		r0,r6,r5		# nb=r6 b=r5
	add		r26,r6,r5		# nb=r6 b=r5
	se_cmpi		r0,0
	bc		0,2,.L3799	# ne
.Llo168:
	mr		r6,r26
.L4827:
#     nzb--;
#     tpi--;
	.d2line		473
.Llo169:
	diab.addi		r31,r31,-1		# tpi=r31 tpi=r31
	.d2line		471
	e_add2i.		r4,-1		# nzb=r4
	bc		0,1,.L3879	# le
	lwzu		r0,-4(r6)		# nb=r6
	se_cmpi		r0,0
	bc		1,2,.L4827	# eq
.L3799:
#   }
# 
#   if (nzb > 0) {
	.d2line		476
	se_cmpi		r4,0		# nzb=r4
	bc		0,1,.L3879	# le
#     nza = na;
	.d2line		477
.Llo414:
	mr		r31,r30		# nza=r31 nza=r30
#     for (tpi = 0; tpi < nq; tpi++) {
	.d2line		478
	cmpi		0,0,r8,0		# nq=r8
	bc		0,1,.L3801	# le
.Llo384:
	diab.addi		r29,r7,-4		# q=r7
.Llo385:
	diab.li		r6,0		# nb=r6
	e_andi.		r0,r8,1		# nq=r8
	bc		1,2,.L4881	# eq
.L4882:
#       q[tpi] = 0U;
	.d2line		479
.Llo203:
	stwu		r6,4(r29)		# nb=r6
	.d2line		478
	diab.addi		r8,r8,-1		# tpi=r8 tpi=r8
.Llo174:
	e_andi.		r0,r8,1		# tpi=r8
	bc		0,2,.L4882	# ne
	cmpi		0,0,r8,0		# tpi=r8
	bc		1,2,.L3801	# eq
.L4881:
.Llo175:
	rlwinm		r8,r8,31,1,31		# tpi=r8 tpi=r8
.Llo176:
	mtspr		ctr,r8		# tpi=ctr
.L4828:
	.d2line		479
	stwu		r6,4(r29)		# nb=r6
	stwu		r6,4(r29)		# nb=r6
	bc		2,0,.L4828
.L3801:
#     }
# 
#     tpi = na - 1;
	.d2line		482
.Llo177:
	diab.addi		r6,r30,-1		# tpi=r6 na=r30
#     while ((nza > 0) && (a[tpi] == 0U)) {
	.d2line		483
.Llo170:
	se_cmpi		r30,0		# na=r30
	bc		0,1,.L3804	# le
.Llo154:
	rlwinm		r30,r6,2,0,29		# na=r30 tpi=r6
.Llo155:
	lwzx		r0,r30,r3		# na=r30 a=r3
	add		r8,r30,r3		# nq=r8 na=r30 a=r3
	se_cmpi		r0,0
	bc		0,2,.L3804	# ne
.L4829:
#       nza--;
#       tpi--;
	.d2line		485
.Llo156:
	diab.addi		r6,r6,-1		# tpi=r6 tpi=r6
	.d2line		483
	e_add2i.		r31,-1		# nza=r31
	bc		0,1,.L3877	# le
	lwzu		r0,-4(r8)		# nq=r8
	se_cmpi		r0,0
	bc		1,2,.L4829	# eq
.L3804:
#     }
# 
#     if ((nza > 0) && (nza >= nzb)) {
	.d2line		488
	se_cmpi		r31,0		# nza=r31
	bc		0,1,.L3877	# le
.Llo339:
	se_cmp		r31,r4		# nza=r31 nzb=r4
	bc		1,0,.L3877	# lt
#       nb1 = nzb - 1;
	.d2line		489
.Llo204:
	diab.addi		r29,r4,-1		# nb1=r29 nzb=r4
#       na1 = nza - 1;
	.d2line		490
.Llo205:
	diab.addi		r30,r31,-1		# na1=r30 nza=r31
#       for (kr = 0; kr < nr; kr++) {
	.d2line		491
.Llo207:
	cmpi		0,0,r10,0		# nr=r10
	bc		0,1,.L3806	# le
	mr		r28,r10		# kr=r28 kr=r10
	diab.addi		r27,r9,-4		# r=r9
	diab.li		r6,0		# tpi=r6
.Llo340:
	se_btsti		r28,31		# nr=r28
	bc		1,2,.L4878	# eq
.L4879:
#         r[kr] = 0U;
	.d2line		492
.Llo183:
	stwu		r6,4(r27)		# tpi=r6
	.d2line		491
.Llo184:
	diab.addi		r28,r28,-1		# kr=r28 kr=r28
	se_btsti		r28,31		# kr=r28
	bc		0,2,.L4879	# ne
	se_cmpi		r28,0		# kr=r28
	bc		1,2,.L3806	# eq
.L4878:
.Llo185:
	se_srwi		r28,1		# kr=r28 kr=r28
.Llo186:
	mtspr		ctr,r28		# kr=ctr
.L4831:
	.d2line		492
	stwu		r6,4(r27)		# tpi=r6
	stwu		r6,4(r27)		# tpi=r6
	bc		2,0,.L4831
.L3806:
#       }
# 
#       /* Quick return if dividend and divisor fit into single word. */
#       if (nza == 1) {
	.d2line		496
.Llo187:
	se_cmpi		r31,1		# nza=r31
.Llo188:
	bc		0,2,.L3872	# ne
#         ak = a[0];
	.d2line		497
.Llo189:
	lwz		r0,0(r3)		# ak=r0 a=r3
#         bk = b[0];
	.d2line		502
.Llo190:
	diab.li		r12,7		# y=r12
#         nbq = ak / bk;
	.d2line		498
.Llo377:
	lwz		r3,0(r5)		# bk=r3 b=r5
#         q[0] = nbq;
	.d2line		499
.Llo145:
	divwu		r4,r0,r3		# nbq=r4 ak=r0 bk=r3
#         r[0] = ak - nbq * bk;
	.d2line		501
.Llo419:
	mullw		r3,r3,r4		# nbq=r3 nbq=r3 bk=r4
	.d2line		500
.Llo420:
	stw		r4,0(r7)		# q=r7 nbq=r4
	subf		r3,r3,r0		# nbq=r3 nbq=r3 ak=r0
#         y = 7;
	stw		r3,0(r9)		# r=r9 nbq=r3
	.d2line		502
	b		.L3880
.L3872:
.Llo146:
	rlwinm		r6,r29,2,0,29		# tpi=r6 nb1=r29
	.d2line		505
.Llo341:
	diab.li		r27,1		# kbb=r27
	.d2line		502
.Llo397:
	lwzux		r0,r6,r5		# tpi=r6 b=r5
#       } else {
#         /* Remove leading zeros from both, dividend and divisor. */
#         kbb = 1U;
#         t = b[nb1] >> 1U;
	.d2line		506
.Llo259:
	rlwinm		r28,r0,31,1,31		# t=r28
#         while (t != 0U) {
	.d2line		507
.Llo415:
	se_cmpi		r28,0		# t=r28
	bc		1,2,.L3809	# eq
.L4832:
#           kbb++;
	.d2line		509
	se_srwi		r28,1		# t=r28 t=r28
#           t >>= 1U;
	.d2line		508
	se_addi		r27,1		# kbb=r27 kbb=r27
	.d2line		507
	se_cmpi		r28,0		# t=r28
	bc		0,2,.L4832	# ne
.L3809:
#         }
# 
#         kba = 1U;
#         t = a[na1] >> 1U;
	.d2line		513
.Llo416:
	rlwinm		r26,r30,2,0,29		# na1=r30
	.d2line		512
	diab.li		r28,1		# kba=r28
.Llo394:
	lwzux		r25,r26,r3		# t=r25
.Llo298:
	se_srwi		r25,1		# t=r25 t=r25
#         while (t != 0U) {
	.d2line		514
	se_cmpi		r25,0		# t=r25
	bc		1,2,.L3811	# eq
.L4833:
#           kba++;
	.d2line		516
	se_srwi		r25,1		# t=r25 t=r25
#           t >>= 1U;
	.d2line		515
	se_addi		r28,1		# kba=r28 kba=r28
	.d2line		514
	se_cmpi		r25,0		# t=r25
	bc		0,2,.L4833	# ne
.L3811:
#         }
# 
#         /* Quick return if quotient is zero. */
#         if ((nza > nzb) || (kba >= kbb)) {
	.d2line		520
	se_cmp		r31,r4		# nza=r31 nzb=r4
	bc		1,1,.L3881	# gt
.Llo299:
	se_cmpl		r28,r27		# kba=r28 kbb=r27
	bc		1,0,.L3870	# lt
.L3881:
#           nba = ((uint32_T)na1 << 5) + kba;
	.d2line		521
	rlwinm		r26,r30,5,0,26		# nba=r26 na1=r30
	.d2line		522
.Llo398:
	rlwinm		r25,r29,5,0,26		# t=r25 nb1=r29
#           nbb = ((uint32_T)nb1 << 5) + kbb;
	.d2line		525
.Llo300:
	cmpi		0,0,r27,32		# kbb=r27
	se_add		r26,r28		# nba=r26 nba=r26 kba=r28
# 
#           /* Normalize b. */
#           if (kbb != 32U) {
	se_add		r25,r27		# nbb=r25 t=r25 kbb=r27
.Llo301:
	bc		1,2,.L3816	# eq
#             bk = b[nb1];
	.d2line		526
	mr		r10,r0		# bk=r10 bk=r0
#             kbs = 32U - kbb;
	.d2line		527
.Llo191:
	subfic		r8,r27,32		# kbs=r8 kbb=r27
#             for (tpi = nb1; tpi > 0; tpi--) {
	.d2line		528
.Llo178:
	mr.		r11,r29		# tpi=?a90 tpi=?a111
.Llo348:
	bc		0,1,.L3813	# le
.Llo260:
	mr		r11,r29		# tpi=r11 tpi=r29
.Llo261:
	mr		r24,r6		# tpi=r24
	e_andi.		r0,r11,1		# nb1=r11
	bc		1,2,.L4875	# eq
	diab.addi		r24,r6,4		# tpi=r24 tpi=r6
.L4876:
#               t = bk << kbs;
	.d2line		529
.Llo342:
	slw		r12,r10,r8		# t=r12 bk=r10 kbs=r8
.Llo302:
	diab.addi		r24,r24,-4		# tpi=r24 tpi=r24
#               bk = b[tpi - 1];
	.d2line		530
	lwz		r10,-4(r24)		# bk=r10 tpi=r24
#               t |= bk >> kbb;
#               b[tpi] = t;
	.d2line		528
	diab.addi		r11,r11,-1		# tpi=r11 tpi=r11
	e_andi.		r0,r11,1		# tpi=r11
	.d2line		532
	srw		r0,r10,r27		# bk=r10 kbb=r27
	or		r0,r0,r12		# t=r12
	stw		r0,0(r24)		# tpi=r24
	bc		0,2,.L4876	# ne
	.d2line		528
.Llo303:
	diab.addi		r24,r24,-4		# tpi=r24 tpi=r24
.Llo343:
	cmpi		0,0,r11,0		# tpi=r11
	bc		1,2,.L4877	# eq
.L4875:
	rlwinm		r11,r11,31,1,31		# tpi=r11 tpi=r11
.Llo349:
	se_addi		r24,8		# tpi=r24 tpi=r24
	mtspr		ctr,r11		# tpi=ctr
.L4834:
	.d2line		529
.Llo344:
	diab.addi		r24,r24,-8		# tpi=r24 tpi=r24
.Llo345:
	slw		r11,r10,r8		# t=r11 bk=r10 kbs=r8
	.d2line		530
.Llo304:
	lwz		r0,-4(r24)		# bk=r0 tpi=r24
	lwz		r10,-8(r24)		# bk=r10 tpi=r24
	.d2line		532
	srw		r23,r0,r27		# bk=r0 kbb=r27
	srw		r12,r10,r27		# t=r12 bk=r10 kbb=r27
	slw		r0,r0,r8		# t=r0 bk=r0 kbs=r8
	or		r23,r23,r11		# t=r11
	or		r0,r12,r0		# t=r0 t=r12 t=r0
	stw		r0,-4(r24)		# tpi=r24 t=r0
	stw		r23,0(r24)		# tpi=r24
	bc		2,0,.L4834
.Llo305:
	diab.li		r11,0		# tpi=r11
.L4877:
.L3813:
#             }
# 
#             b[tpi] = bk << kbs;
	.d2line		536
.Llo262:
	diab.li		r24,1		# tpi=r24
	.d2line		535
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
	b		.L3817
.L3816:
#           } else {
#             mask = MAX_uint32_T;
	.d2line		538
.Llo179:
	diab.li		r23,-1		# mask=r23
.L3817:
#           }
# 
#           /* Initialize quotient to zero. */
#           tnb = 0U;
	.d2line		542
.Llo418:
	diab.li		r24,0		# tnb=r24
#           y = 0;
	.d2line		543
.Llo378:
	mr		r12,r24		# y=r12 y=r24
.L3852:
# 
#           /* Until exit conditions have been met, do */
#           do {
#             /* Normalize a */
#             if (kba != 32U) {
	.d2line		548
	cmpi		0,0,r28,32		# kba=r28
	bc		1,2,.L3823	# eq
#               kbs = 32U - kba;
	.d2line		550
	rlwinm		r21,r30,2,0,29		# kr=r21 na1=r30
#               tnb += kbs;
	.d2line		549
.Llo230:
	subfic		r10,r28,32		# kbs=r10 kba=r28
	.d2line		551
.Llo192:
	lwzux		r11,r21,r3		# ak=r11 kr=r21 a=r3
#               ak = a[na1];
	.d2line		552
.Llo284:
	mr.		r22,r30		# ka=?a124 ka=?a110
#               for (ka = na1; ka > 0; ka--) {
.Llo421:
	add		r24,r24,r10		# tnb=r24 tnb=r24 kbs=r10
	bc		0,1,.L3820	# le
	mr		r22,r30		# ka=r22 ka=r30
	mr		r8,r21		# kr=r8
.Llo180:
	e_andi.		r0,r22,1		# t=r0 na1=r22
	bc		1,2,.L4872	# eq
.Llo402:
	diab.addi		r8,r21,4		# kbs=r8 kr=r21
.L4873:
#                 t = ak << kbs;
	.d2line		553
.Llo231:
	slw		r21,r11,r10		# t=r21 ak=r11 kbs=r10
.Llo322:
	diab.addi		r8,r8,-4		# kbs=r8 kbs=r8
#                 ak = a[ka - 1];
	.d2line		554
	lwz		r11,-4(r8)		# ak=r11 kbs=r8
#                 t |= ak >> kba;
#                 a[ka] = t;
	.d2line		552
	diab.addi		r22,r22,-1		# ka=r22 ka=r22
	e_andi.		r0,r22,1		# t=r0 ka=r22
	.d2line		556
	srw		r0,r11,r28		# t=r0 ak=r11 kba=r28
.Llo306:
	or		r0,r0,r21		# t=r0 t=r0 t=r21
	stw		r0,0(r8)		# kbs=r8 t=r0
	bc		0,2,.L4873	# ne
	.d2line		552
.Llo307:
	diab.addi		r8,r8,-4		# kbs=r8 kbs=r8
	cmpi		0,0,r22,0		# ka=r22
	bc		1,2,.L4874	# eq
.L4872:
.Llo232:
	rlwinm		r22,r22,31,1,31		# ka=r22 ka=r22
.Llo403:
	diab.addi		r8,r8,8		# kbs=r8 kbs=r8
	mtspr		ctr,r22		# ka=ctr
.L4835:
	.d2line		553
.Llo233:
	diab.addi		r8,r8,-8		# kbs=r8 kbs=r8
	slw		r22,r11,r10		# t=r22 ak=r11 kbs=r10
	.d2line		554
.Llo323:
	lwz		r0,-4(r8)		# ak=r0 kbs=r8
	lwz		r11,-8(r8)		# ak=r11 kbs=r8
	.d2line		556
	srw		r20,r0,r28		# ak=r20 ak=r0 kba=r28
.Llo285:
	srw		r21,r11,r28		# t=r21 ak=r11 kba=r28
	slw		r0,r0,r10		# t=r0 ak=r0 kbs=r10
	or		r20,r20,r22		# ak=r20 ak=r20 t=r22
	or		r0,r21,r0		# t=r0 t=r21 t=r0
	stw		r0,-4(r8)		# kbs=r8 t=r0
	stw		r20,0(r8)		# kbs=r8 ak=r20
	bc		2,0,.L4835
.Llo286:
	diab.li		r22,0		# ka=r22
.L4874:
.L3820:
#               }
# 
#               a[ka] = ak << kbs;
	.d2line		559
.Llo181:
	slw		r11,r11,r10		# ak=r11 ak=r11 kbs=r10
	rlwinm		r22,r22,2,0,29		# ka=r22 ka=r22
.Llo422:
	stwx		r11,r3,r22		# a=r3 ak=r11
.L3823:
.Llo193:
	rlwinm		r8,r30,2,0,29		# kbs=r8 na1=r30
	.d2line		564
.Llo182:
	diab.li		r10,-1		# bk=r10
	.d2line		559
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
	.d2line		565
	and		r10,r0,r10		# bk=r10 t=r0 bk=r10
	cmpl		0,0,r10,r11		# bk=r10 bk=r11
	bc		0,2,.L3827	# ne
#               kr = 0;
#               ka = na1;
	.d2line		567
.Llo264:
	mr		r10,r30		# ka=r10 ka=r30
#               tpi = nb1;
	.d2line		568
	mr		r11,r29		# tpi=r11 tpi=r29
	.d2line		566
	diab.li		r21,0		# kr=r21
.L4846:
#               while ((kr == 0) && (tpi > 0)) {
	.d2line		569
.Llo234:
	cmpi		0,0,r11,0		# tpi=r11
	bc		0,1,.L3890	# le
#                 ka--;
	.d2line		570
.Llo267:
	diab.addi		r10,r10,-1		# ka=r10 ka=r10
#                 ak = a[ka];
	.d2line		572
	diab.addi		r11,r11,-1		# tpi=r11 tpi=r11
	.d2line		571
	rlwinm		r22,r10,2,0,29		# ka=r22 ka=r10
#                 tpi--;
	.d2line		573
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
	.d2line		574
	and		r22,r22,r20		# ka=r22 ka=r22 ak=r20
	cmpl		0,0,r22,r18		# ka=r22 bk=r18
	bc		1,2,.L4846	# eq
#                   kr = ak > bk ? 1 : -1;
	.d2line		575
.Llo424:
	cmpl		0,0,r20,r18		# ak=r20 bk=r18
	bc		0,1,.L4780	# le
.Llo235:
	diab.li		r21,1		# kr=r21
.Llo236:
	b		.L3890
.L3886:
.L3827:
#                 }
#               }
#             } else {
#               kr = ak > bk ? 1 : -1;
	.d2line		579
.Llo237:
	cmpl		0,0,r0,r11		# t=r0 bk=r11
	bc		0,1,.L3888	# le
.Llo266:
	diab.li		r21,1		# kr=r21
.Llo238:
	b		.L3890
.L3888:
.L4780:
#             }
# 
#             /* If the remainder in a is still greater or equal to b, subtract normalized divisor from a. */
#             if ((kr >= 0) || (nba > nbb)) {
	.d2line		575
.Llo239:
	diab.li		r21,-1		# kr=r21
	.d2line		583
.Llo240:
	se_cmpl		r26,r25		# nba=r26 nbb=r25
	bc		0,1,.L3850	# le
.L3890:
#               nbq = nba - nbb;
	.d2line		584
.Llo395:
	subf		r28,r25,r26		# nbq=r28 nbb=r25 nba=r26
# 
#               /* If the remainder and the divisor are equal, set remainder to zero. */
#               if (kr == 0) {
	.d2line		587
.Llo366:
	cmpi		0,0,r21,0		# kr=r21
	bc		0,2,.L3839	# ne
#                 ka = na1;
	.d2line		588
.Llo241:
	mr		r10,r30		# ka=r10 ka=r30
#                 for (tpi = nb1; tpi > 0; tpi--) {
	.d2line		589
	mr.		r11,r29		# tpi=?a92 tpi=?a111
.Llo351:
	bc		0,1,.L3829	# le
.Llo208:
	mr		r11,r29		# tpi=r11 tpi=r29
.Llo249:
	diab.addi		r26,r8,4		# nba=r26 kbs=r8
.Llo399:
	diab.li		r30,0		# na1=r30
.Llo390:
	e_andi.		r0,r11,1		# t=r0 nb1=r11
	bc		1,2,.L4869	# eq
.L4870:
#                   a[ka] = 0U;
	.d2line		590
	stwu		r30,-4(r26)		# nba=r26 na1=r30
#                   ka--;
	.d2line		589
	diab.addi		r11,r11,-1		# tpi=r11 tpi=r11
	.d2line		591
	diab.addi		r10,r10,-1		# ka=r10 ka=r10
	e_andi.		r0,r11,1		# t=r0 tpi=r11
	bc		0,2,.L4870	# ne
	.d2line		589
	cmpi		0,0,r11,0		# tpi=r11
	bc		1,2,.L4871	# eq
.L4869:
	rlwinm		r11,r11,31,1,31		# tpi=r11 tpi=r11
.Llo352:
	mtspr		ctr,r11		# tpi=ctr
.L4838:
	.d2line		590
	stwu		r30,-4(r26)		# nba=r26 na1=r30
	.d2line		591
	diab.addi		r10,r10,-2		# ka=r10 ka=r10
	stwu		r30,-4(r26)		# nba=r26 na1=r30
	bc		2,0,.L4838
	diab.li		r11,0		# tpi=r11
.L4871:
.L3829:
#                 }
# 
#                 a[ka] -= b[tpi];
	.d2line		594
.Llo353:
	rlwinm		r10,r10,2,0,29		# ka=r10 ka=r10
	rlwinm		r11,r11,2,0,29		# tpi=r11 tpi=r11
	lwzx		r0,r10,r3		# t=r0 ka=r10 a=r3
.Llo308:
	lwzux		r30,r11,r5		# na1=r30 tpi=r11
.Llo391:
	subf		r30,r30,r0		# na1=r30 na1=r30 t=r0
	stwx		r30,r10,r3		# ka=r10 a=r3 na1=r30
	b		.L3840
.L3839:
#               } else {
#                 /* Otherwise, subtract the divisor from the remainder */
#                 if (kr < 0) {
	.d2line		597
.Llo209:
	bc		0,0,.L3835	# ge
#                   ak = a[na1];
	.d2line		598
.Llo250:
	mr		r10,r0		# ak=r10 ak=r0
#                   kba = 31U;
#                   for (ka = na1; ka > 0; ka--) {
	.d2line		600
	mr.		r22,r30		# ka=?a68 ka=?a110
.Llo253:
	bc		0,1,.L3832	# le
.Llo289:
	mr		r22,r30		# ka=r22 ka=r30
.Llo290:
	mr		r26,r8		# kbs=r26
	e_andi.		r0,r22,1		# t=r0 na1=r22
	bc		1,2,.L4866	# eq
	diab.addi		r26,r8,4		# kbs=r26 kbs=r8
.L4867:
#                     t = ak << 1U;
	.d2line		601
.Llo404:
	rlwinm		r11,r10,1,0,30		# t=r11 ak=r10
.Llo324:
	diab.addi		r26,r26,-4		# kbs=r26 kbs=r26
#                     ak = a[ka - 1];
	.d2line		602
	lwz		r10,-4(r26)		# ak=r10 kbs=r26
#                     t |= ak >> 31U;
#                     a[ka] = t;
	.d2line		600
	diab.addi		r22,r22,-1		# ka=r22 ka=r22
	e_andi.		r0,r22,1		# t=r0 ka=r22
	.d2line		604
	rlwinm		r0,r10,1,31,31		# t=r0 ak=r10
.Llo309:
	or		r0,r0,r11		# t=r0 t=r0 t=r11
	stw		r0,0(r26)		# kbs=r26 t=r0
	bc		0,2,.L4867	# ne
	.d2line		600
.Llo310:
	diab.addi		r26,r26,-4		# kbs=r26 kbs=r26
.Llo405:
	cmpi		0,0,r22,0		# ka=r22
	bc		1,2,.L4868	# eq
.L4866:
	rlwinm		r22,r22,31,1,31		# ka=r22 ka=r22
.Llo254:
	se_addi		r26,8		# kbs=r26 kbs=r26
	mtspr		ctr,r22		# ka=ctr
.L4836:
	.d2line		601
.Llo406:
	diab.addi		r26,r26,-8		# kbs=r26 kbs=r26
.Llo407:
	rlwinm		r11,r10,1,0,30		# t=r11 ak=r10
	.d2line		602
.Llo325:
	lwz		r0,-4(r26)		# ak=r0 kbs=r26
	lwz		r10,-8(r26)		# ak=r10 kbs=r26
	.d2line		604
	rlwinm		r21,r0,1,31,31		# kr=r21 ak=r0
.Llo242:
	rlwinm		r22,r10,1,31,31		# ka=r22 ak=r10
	se_slwi		r0,1		# t=r0 ak=r0
	or		r21,r21,r11		# kr=r21 kr=r21 t=r11
	or		r0,r22,r0		# t=r0 ka=r22 t=r0
	stw		r0,-4(r26)		# kbs=r26 t=r0
	stw		r21,0(r26)		# kbs=r26 kr=r21
	bc		2,0,.L4836
.Llo243:
	diab.li		r22,0		# ka=r22
.L4868:
.L3832:
#                   }
# 
#                   a[ka] = ak << 1U;
	.d2line		607
.Llo255:
	rlwinm		r10,r10,1,0,30		# ak=r10 ak=r10
.Llo408:
	rlwinm		r22,r22,2,0,29		# ka=r22 ka=r22
.Llo256:
	stwx		r10,r3,r22		# a=r3 ak=r10
#                   tnb++;
	.d2line		608
	se_addi		r24,1		# tnb=r24 tnb=r24
#                   nbq--;
	.d2line		609
	diab.addi		r28,r28,-1		# nbq=r28 nbq=r28
.L3835:
#                 }
# 
#                 kbs = 0U;
#                 ka = na1 - nb1;
	.d2line		613
.Llo291:
	subf		r11,r29,r30		# ka=r11 nb1=r29 na1=r30
#                 for (tpi = 0; tpi < nzb; tpi++) {
	.d2line		614
.Llo257:
	se_cmpi		r4,0		# nzb=r4
	bc		0,1,.L3840	# le
	.d2line		612
.Llo210:
	rlwinm		r10,r11,2,0,29		# na1=r10 ka=r11
.Llo392:
	diab.li		r20,0		# kbs=r20
.Llo292:
	add		r10,r10,r3		# na1=r10 na1=r10 a=r3
	diab.addi		r26,r5,-4		# nba=r26 b=r5
.Llo400:
	mr		r30,r4		# tpi=r30 tpi=r4
	.d2line		614
	se_btsti		r4,31		# nzb=r4
	diab.addi		r10,r10,-4		# na1=r10 na1=r10
	bc		1,2,.L4859	# eq
.L4862:
#                   bk = b[tpi];
	.d2line		615
.Llo216:
	lwzu		r0,4(r26)		# bk=r0 nba=r26
#                   t = a[ka];
	.d2line		618
.Llo217:
	cmpi		0,0,r20,0		# kbs=r20
#                   ak = (t - bk) - kbs;
	.d2line		616
	lwzu		r21,4(r10)		# t=r21 na1=r10
	.d2line		617
.Llo326:
	subf		r0,r0,r21		# bk=r0 bk=r0 t=r21
#                   kbs = kbs != 0U ? (uint32_T)(ak >= t) : (uint32_T)(ak > t);
	subf		r22,r20,r0		# ak=r22 kbs=r20 bk=r0
	bc		1,2,.L4860	# eq
	.d2line		618
.Llo269:
	diab.li		r0,-1		# bk=r0
.Llo270:
	subfc		r21,r21,r22		# t=r21 t=r21 ak=r22
.Llo327:
	subfze		r20,r0		# kbs=r20 bk=r0
.Llo368:
	b		.L4861
.L4860:
.Llo271:
	subfc		r0,r22,r21		# bk=r0 ak=r22 t=r21
.Llo272:
	subfe		r20,r0,r0		# kbs=r20 bk=r0 bk=r0
.Llo369:
	neg		r20,r20		# kbs=r20 kbs=r20
.L4861:
#                   a[ka] = ak;
	.d2line		619
.Llo273:
	stw		r22,0(r10)		# na1=r10 ak=r22
#                   ka++;
	.d2line		614
	diab.addi		r30,r30,-1		# tpi=r30 tpi=r30
	.d2line		620
	diab.addi		r11,r11,1		# ka=r11 ka=r11
	se_btsti		r30,31		# tpi=r30
	bc		0,2,.L4862	# ne
	.d2line		614
.Llo293:
	se_cmpi		r30,0		# tpi=r30
.Llo294:
	bc		1,2,.L3840	# eq
.L4859:
.Llo218:
	se_srwi		r30,1		# tpi=r30 tpi=r30
.Llo219:
	mtspr		ctr,r30		# tpi=ctr
.L4837:
	.d2line		615
	lwzu		r0,4(r26)		# bk=r0 nba=r26
	.d2line		618
.Llo274:
	cmpi		0,0,r20,0		# kbs=r20
	.d2line		616
	lwzu		r30,4(r10)		# t=r30 na1=r10
	.d2line		617
.Llo328:
	subf		r0,r0,r30		# bk=r0 bk=r0 t=r30
	subf		r20,r20,r0		# ak=r20 kbs=r20 bk=r0
.Llo370:
	bc		1,2,.L4864	# eq
	.d2line		618
.Llo275:
	diab.li		r0,-1		# bk=r0
.Llo276:
	subfc		r30,r30,r20		# t=r30 t=r30 ak=r20
.Llo329:
	subfze		r30,r0		# kbs=r30 bk=r0
.Llo371:
	b		.L4865
.L4864:
.Llo277:
	subfc		r30,r20,r30		# t=r30 ak=r20 t=r30
	subfe		r30,r30,r30		# t=r30 t=r30 t=r30
.Llo372:
	neg		r30,r30		# kbs=r30 t=r30
.L4865:
	.d2line		619
.Llo330:
	stw		r20,0(r10)		# na1=r10 ak=r20
	.d2line		618
	se_cmpi		r30,0		# kbs=r30
	.d2line		615
	lwzu		r0,4(r26)		# bk=r0 nba=r26
	.d2line		616
.Llo278:
	lwzu		r22,4(r10)		# t=r22 na1=r10
	.d2line		617
.Llo331:
	subf		r0,r0,r22		# bk=r0 bk=r0 t=r22
	subf		r30,r30,r0		# ak=r30 kbs=r30 bk=r0
.Llo373:
	bc		1,2,.L3891	# eq
	.d2line		618
.Llo279:
	diab.li		r0,-1		# bk=r0
.Llo280:
	subfc		r22,r22,r30		# t=r22 t=r22 ak=r30
.Llo332:
	subfze		r20,r0		# kbs=r20 bk=r0
.Llo374:
	b		.L3892
.L3891:
.Llo281:
	subfc		r0,r30,r22		# bk=r0 ak=r30 t=r22
.Llo282:
	subfe		r20,r0,r0		# ak=r20 bk=r0 bk=r0
.Llo375:
	neg		r20,r20		# kbs=r20 ak=r20
.L3892:
	.d2line		619
.Llo283:
	stw		r30,0(r10)		# na1=r10 ak=r30
	.d2line		620
	diab.addi		r11,r11,2		# ka=r11 ka=r11
	bc		2,0,.L4837
.L3840:
#                 }
#               }
# 
#               /* Update the quotient. */
#               tpi = (int32_T)(nbq >> 5);
	.d2line		625
.Llo295:
	rlwinm		r26,r28,27,5,31		# tpi=r26 nbq=r28
#               q[tpi] |= 1U << (nbq - ((uint32_T)tpi << 5));
	.d2line		626
.Llo296:
	diab.li		r10,1		# ka=r10
.Llo251:
	rlwinm		r30,r26,2,0,29		# na1=r30 tpi=r26
	.d2line		630
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
	bc		0,1,.L3841	# le
.Llo252:
	lwz		r0,0(r8)		# t=r0 kbs=r8
.Llo312:
	se_cmpi		r0,0		# t=r0
	bc		0,2,.L3841	# ne
.L4839:
#                 nza--;
.Llo313:
	e_add2i.		r31,-1		# nza=r31
	bc		0,1,.L3841	# le
	lwzu		r0,-4(r8)		# t=r0 kbs=r8
.Llo314:
	se_cmpi		r0,0		# t=r0
	bc		1,2,.L4839	# eq
.L3841:
#                 tpi--;
#               }
# 
#               if (nza >= nzb) {
	.d2line		635
.Llo315:
	se_cmp		r31,r4		# nza=r31 nzb=r4
	bc		1,0,.L3848	# lt
#                 na1 = nza - 1;
	.d2line		636
.Llo409:
	diab.addi		r30,r31,-1		# na1=r30 nza=r31
#                 kba = 1U;
#                 t = a[na1] >> 1U;
	.d2line		637
.Llo211:
	diab.li		r28,1		# kba=r28
	.d2line		638
.Llo396:
	rlwinm		r8,r30,2,0,29		# kbs=r8 na1=r30
.Llo410:
	lwzux		r0,r8,r3		# t=r0 kbs=r8
.Llo316:
	se_srwi		r0,1		# t=r0 t=r0
#                 while (t != 0U) {
	.d2line		639
.Llo317:
	se_cmpi		r0,0		# t=r0
	bc		1,2,.L3843	# eq
.L4840:
#                   kba++;
	.d2line		641
.Llo411:
	se_srwi		r0,1		# t=r0 t=r0
#                   t >>= 1U;
	.d2line		640
	se_addi		r28,1		# kba=r28 kba=r28
	.d2line		639
	se_cmpi		r0,0		# t=r0
	bc		0,2,.L4840	# ne
.L3843:
#                 }
# 
#                 nba = (((uint32_T)na1 << 5) + kba) - tnb;
	.d2line		644
	rlwinm		r26,r30,5,0,26		# tpi=r26 na1=r30
.Llo354:
	se_add		r26,r28		# tpi=r26 tpi=r26 kba=r28
.Llo401:
	subf		r26,r24,r26		# nba=r26 tnb=r24 tpi=r26
#                 if (nba < nbb) {
	.d2line		645
.Llo355:
	se_cmpl		r26,r25		# nba=r26 nbb=r25
	bc		0,0,.L3851	# ge
#                   y = 2;
	.d2line		646
.Llo333:
	diab.li		r12,2		# y=r12
	b		.L3861
.L3848:
#                 }
#               } else if (nza == 0) {
	.d2line		648
.Llo212:
	se_cmpi		r31,0		# nza=r31
	bc		0,2,.L3846	# ne
#                 y = 1;
	.d2line		649
.Llo220:
	diab.li		r12,1		# y=r12
	b		.L4781
.L3846:
#               } else {
#                 na1 = nza - 1;
	.d2line		651
	diab.addi		r30,r31,-1		# na1=r30 nza=r31
#                 y = 4;
	.d2line		652
.Llo213:
	diab.li		r12,4		# y=r12
	b		.L3861
.L3850:
#               }
#             } else {
#               y = 3;
	.d2line		655
.Llo221:
	diab.li		r12,3		# y=r12
.L3851:
#             }
#           } while (y == 0);
	.d2line		657
.Llo244:
	cmpi		0,0,r12,0		# y=r12
	bc		1,2,.L3852	# eq
# 
#           /* Return the remainder. */
#           if (y == 1) {
	.d2line		660
	cmpi		0,0,r12,1		# y=r12
	bc		0,2,.L3861	# ne
.L4781:
#             r[0] = a[0];
	.d2line		661
.Llo222:
	lwz		r0,0(r3)		# t=r0 a=r3
.Llo318:
	stw		r0,0(r9)		# r=r9 t=r0
	b		.L3862
.L3861:
#           } else {
#             tpi = (int32_T)(tnb >> 5);
	.d2line		663
.Llo319:
	rlwinm		r28,r24,27,5,31		# tpi=r28 tnb=r24
#             nbq = tnb - ((uint32_T)tpi << 5);
	.d2line		674
.Llo356:
	diab.li		r4,0		# kr=r4
	.d2line		664
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
	.d2line		665
.Llo367:
	subf.		r7,r7,r24		# nbq=?a97 tnb=?a118
.Llo171:
	bc		0,2,.L3859	# ne
	.d2line		667
.Llo379:
	se_cmpi		r29,0		# nb1=r29
.Llo380:
	bc		1,0,.L3862	# lt
.Llo214:
	se_slwi		r28,2		# tpi=r28 tpi=r28
	diab.addi		r4,r29,1		# kr=r4 nb1=r29
.Llo225:
	add		r6,r28,r3		# tpi=r6 tpi=r28 a=r3
.Llo346:
	diab.addi		r9,r9,-4		# r=r9 r=r9
	se_btsti		r4,31		# kr=r4
	diab.addi		r6,r6,-4		# tpi=r6 tpi=r6
	bc		1,2,.L4856	# eq
.L4857:
	.d2line		668
.Llo357:
	lwzu		r3,4(r6)		# a=r3 tpi=r6
	.d2line		667
	diab.addi		r4,r4,-1		# kr=r4 kr=r4
	se_btsti		r4,31		# kr=r4
	stwu		r3,4(r9)		# r=r9 a=r3
	bc		0,2,.L4857	# ne
.Llo147:
	se_cmpi		r4,0		# kr=r4
	bc		1,2,.L3862	# eq
.L4856:
.Llo148:
	se_srwi		r4,1		# kr=r4 kr=r4
.Llo226:
	mtspr		ctr,r4		# kr=ctr
.L4842:
	.d2line		668
	lwzu		r0,4(r6)		# t=r0 tpi=r6
.Llo334:
	stwu		r0,4(r9)		# r=r9 t=r0
	lwzu		r0,4(r6)		# t=r0 tpi=r6
	stwu		r0,4(r9)		# r=r9 t=r0
	bc		2,0,.L4842
.Llo335:
	b		.L3862
.L3859:
	.d2line		673
.Llo215:
	rlwinm		r24,r28,2,0,29		# tnb=r24 tpi=r28
	.d2line		672
.Llo412:
	subfic		r31,r7,32		# kbs=r31 nbq=r7
.Llo376:
	lwzux		r0,r24,r3		# ak=r0 tnb=r24
#               for (ka = tpi + 1; ka <= na1; ka++) {
	.d2line		675
.Llo297:
	diab.addi		r24,r28,1		# ka=r24 tpi=r28
.Llo258:
	se_cmp		r24,r30		# ka=r24 na1=r30
	bc		1,1,.L3856	# gt
.Llo358:
	rlwinm		r28,r24,2,0,29		# tpi=r28 ka=r24
.Llo359:
	diab.addi		r6,r9,-4		# tpi=r6 r=r9
.Llo347:
	se_add		r3,r28		# a=r3 a=r3 tpi=r28
	diab.addi		r3,r3,-4		# a=r3 a=r3
.L4841:
#                 t = ak >> nbq;
	.d2line		676
.Llo360:
	srw		r28,r0,r7		# t=r28 ak=r0 nbq=r7
#                 ak = a[ka];
	.d2line		675
.Llo336:
	se_addi		r24,1		# ka=r24 ka=r24
#                 t |= ak << kbs;
#                 r[kr] = t;
	.d2line		677
	lwzu		r0,4(r3)		# ak=r0 a=r3
	.d2line		680
	se_addi		r4,1		# kr=r4 kr=r4
	se_cmp		r24,r30		# ka=r24 na1=r30
#                 kr++;
	.d2line		679
	slw		r26,r0,r31		# nba=r26 ak=r0 kbs=r31
	or		r28,r28,r26		# t=r28 t=r28 t=r26
.Llo337:
	stwu		r28,4(r6)		# tpi=r6 t=r28
.Llo338:
	bc		0,1,.L4841	# le
.L3856:
#               }
# 
#               r[kr] = ak >> nbq;
	.d2line		683
.Llo246:
	srw		r0,r0,r7		# ak=r0 ak=r0 nbq=r7
.Llo247:
	se_slwi		r4,2		# kr=r4 kr=r4
.Llo248:
	stwx		r0,r9,r4		# r=r9 ak=r0
.L3862:
#             }
#           }
# 
#           /* Restore b. */
#           if (kbb != 32U) {
	.d2line		688
.Llo172:
	cmpi		0,0,r27,32		# kbb=r27
	bc		1,2,.L3880	# eq
#             bk = b[0];
	.d2line		689
.Llo227:
	lwz		r7,0(r5)		# bk=r7 b=r5
#             kbs = 32U - kbb;
	.d2line		690
.Llo173:
	subfic		r3,r27,32		# kbs=r3 kbb=r27
#             for (tpi = 0; tpi < nb1; tpi++) {
	.d2line		691
.Llo149:
	diab.li		r4,0		# tpi=r4
.Llo361:
	se_cmpi		r29,0		# nb1=r29
	bc		0,1,.L3863	# le
.Llo362:
	mr		r6,r5		# b=r6 b=r5
	mr		r4,r29		# tpi=r4 tpi=r29
.Llo363:
	se_btsti		r29,31		# nb1=r29
	bc		1,2,.L4853	# eq
.L4854:
#               t = bk >> kbs;
	.d2line		692
.Llo159:
	srw		r31,r7,r3		# t=r31 bk=r7 kbs=r3
#               bk = b[tpi + 1];
	.d2line		691
.Llo160:
	diab.addi		r4,r4,-1		# tpi=r4 tpi=r4
#               t |= bk << kbb;
#               b[tpi] = t;
	.d2line		693
	lwzu		r7,4(r6)		# bk=r7 b=r6
	se_btsti		r4,31		# tpi=r4
	.d2line		695
	slw		r0,r7,r27		# t=r0 bk=r7 kbb=r27
.Llo320:
	or		r0,r0,r31		# t=r0 t=r0 t=r31
	stw		r0,-4(r6)		# b=r6 t=r0
	bc		0,2,.L4854	# ne
	.d2line		691
.Llo321:
	se_cmpi		r4,0		# tpi=r4
	bc		1,2,.L4855	# eq
.L4853:
.Llo161:
	se_srwi		r4,1		# tpi=r4 tpi=r4
.Llo162:
	diab.addi		r6,r6,-8		# b=r6 b=r6
	mtspr		ctr,r4		# tpi=ctr
.L4843:
	.d2line		693
.Llo163:
	lwz		r0,12(r6)		# bk=r0 b=r6
	.d2line		692
.Llo164:
	srw		r7,r7,r3		# t=r7 bk=r7 kbs=r3
	.d2line		695
	slw		r4,r0,r27		# tpi=r4 bk=r0 kbb=r27
	or		r4,r4,r7		# tpi=r4 tpi=r4 t=r7
	srw		r0,r0,r3		# t=r0 bk=r0 kbs=r3
	stwu		r4,8(r6)		# b=r6 tpi=r4
	lwz		r7,8(r6)		# bk=r7 b=r6
	slw		r31,r7,r27		# nza=r31 bk=r7 kbb=r27
	or		r0,r0,r31		# t=r0 t=r0 t=r31
	stw		r0,4(r6)		# b=r6 t=r0
	bc		2,0,.L4843
	diab.li		r4,0		# tpi=r4
.L4855:
.Llo364:
	subf		r4,r4,r29		# tpi=r4 tpi=r4 nb1=r29
.L3863:
#             }
# 
#             b[tpi] = bk >> kbs;
	.d2line		698
.Llo165:
	srw		r7,r7,r3		# bk=r7 bk=r7 kbs=r3
.Llo166:
	se_slwi		r4,2		# tpi=r4 tpi=r4
.Llo365:
	stwx		r7,r5,r4		# b=r5 bk=r7
	b		.L3880
.L3870:
#           }
#         } else {
#           for (kr = 0; kr < nr; kr++) {
	.d2line		701
.Llo150:
	cmpi		0,0,r10,0		# nr=r10
	bc		0,1,.L3867	# le
.Llo206:
	diab.addi		r9,r9,-4		# r=r9 r=r9
	diab.addi		r3,r3,-4		# a=r3 a=r3
	e_andi.		r0,r10,1		# nr=r10
	bc		1,2,.L4850	# eq
.L4851:
#             r[kr] = a[kr];
	.d2line		702
.Llo228:
	lwzu		r4,4(r3)		# nzb=r4 a=r3
	.d2line		701
.Llo386:
	diab.addi		r10,r10,-1		# kr=r10 kr=r10
.Llo195:
	e_andi.		r0,r10,1		# kr=r10
	stwu		r4,4(r9)		# r=r9 nzb=r4
	bc		0,2,.L4851	# ne
.Llo387:
	cmpi		0,0,r10,0		# kr=r10
	bc		1,2,.L3867	# eq
.L4850:
.Llo196:
	rlwinm		r10,r10,31,1,31		# kr=r10 kr=r10
.Llo197:
	mtspr		ctr,r10		# kr=ctr
.L4844:
	.d2line		702
	lwzu		r0,4(r3)		# a=r3
	stwu		r0,4(r9)		# r=r9
	lwzu		r0,4(r3)		# a=r3
	stwu		r0,4(r9)		# r=r9
	bc		2,0,.L4844
.L3867:
#           }
# 
#           y = 6;
	.d2line		705
.Llo198:
	diab.li		r12,6		# y=r12
.Llo381:
	b		.L3880
.L3877:
#         }
#       }
#     } else {
#       for (kr = 0; kr < nr; kr++) {
	.d2line		709
.Llo223:
	cmpi		0,0,r10,0		# nr=r10
	bc		0,1,.L3874	# le
.Llo224:
	diab.addi		r9,r9,-4		# r=r9 r=r9
	diab.addi		r3,r3,-4		# a=r3 a=r3
	e_andi.		r0,r10,1		# nr=r10
	bc		1,2,.L4847	# eq
.L4848:
#         r[kr] = a[kr];
	.d2line		710
.Llo229:
	lwzu		r4,4(r3)		# nzb=r4 a=r3
	.d2line		709
.Llo388:
	diab.addi		r10,r10,-1		# kr=r10 kr=r10
.Llo199:
	e_andi.		r0,r10,1		# kr=r10
	stwu		r4,4(r9)		# r=r9 nzb=r4
	bc		0,2,.L4848	# ne
.Llo389:
	cmpi		0,0,r10,0		# kr=r10
	bc		1,2,.L3874	# eq
.L4847:
.Llo200:
	rlwinm		r10,r10,31,1,31		# kr=r10 kr=r10
.Llo201:
	mtspr		ctr,r10		# kr=ctr
.L4830:
	.d2line		710
	lwzu		r0,4(r3)		# a=r3
	stwu		r0,4(r9)		# r=r9
	lwzu		r0,4(r3)		# a=r3
	stwu		r0,4(r9)		# r=r9
	bc		2,0,.L4830
.L3874:
#       }
# 
#       y = 5;
	.d2line		713
.Llo202:
	diab.li		r12,5		# y=r12
.Llo382:
	b		.L3880
.L3879:
#     }
#   } else {
#     y = -1;
	.d2line		716
.Llo157:
	diab.li		r12,-1		# y=r12
.L3880:
#   }
# 
#   return y;
	.d2line		719
.Llo158:
	mr		r3,r12		# y=r3 y=r12
# }
	.d2line		720
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
.L5064:
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
#	?a12		$$334
#	?a13		$$333
#	?a14		$$332
#	?a15		$$331
#	?a16		$$330
#	?a17		$$329
#	?a18		$$328
#	?a19		$$327
#	?a20		$$326
#	?a21		$$325
#	?a22		$$324
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
        .d2line         329
#$$ld
.L5210:

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
	.d2line		332
	rlwinm		r6,r4,2,0,29		# n1=r4
	.d2line		333
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
	.d2line		334
	se_cmpi		r27,0		# numNeg=r27
	bc		1,2,.L3729	# eq
#     MultiWordNeg(u1, t1, n1);
	.d2line		335
.Llo436:
	mr		r5,r4		# n1=r5 n1=r4
.Llo437:
	mr		r4,r12		# t1=r4 t1=r12
.Llo429:
	bl		MultiWordNeg
.Llo426:
	b		.L3730
.L3729:
#   } else {
#     sMultiWord2MultiWord(u1, n1, t1, l1);
	.d2line		337
.Llo427:
	mr		r5,r12		# t1=r5 t1=r12
	mr		r6,r23		# l1=r6 l1=r23
	bl		sMultiWord2MultiWord
.L3730:
#   }
# 
#   if (denNeg) {
	.d2line		340
.Llo428:
	e_andi.		r0,r26,255		# denNeg=r26
	.d2line		343
	mr		r3,r25		# u2=r3 u2=r25
	bc		1,2,.L3731	# eq
#     MultiWordNeg(u2, t2, n2);
	.d2line		341
.Llo432:
	mr		r4,r22		# t2=r4 t2=r22
	mr		r5,r24		# n2=r5 n2=r24
	bl		MultiWordNeg
	b		.L3732
.L3731:
#   } else {
#     sMultiWord2MultiWord(u2, n2, t2, l2);
	.d2line		343
	mr		r4,r24		# n2=r4 n2=r24
	mr		r5,r22		# t2=r5 t2=r22
	mr		r6,r21		# l2=r6 l2=r21
	bl		sMultiWord2MultiWord
.L3732:
#   }
# 
#   if (uMultiWordDiv(t1, l1, t2, l2, y1, m1, y2, m2) < 0) {
	.d2line		346
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
	bc		0,0,.L3737	# ge
#     if (numNeg) {
	.d2line		347
.Llo445:
	se_cmpi		r27,0		# numNeg=r27
	.d2line		350
	mr		r3,r31		# y1=r3 y1=r31
	mr		r4,r30		# m1=r4 m1=r30
	bc		1,2,.L3733	# eq
#       MultiWordSetSignedMin(y1, m1);
	.d2line		348
.Llo438:
	bl		MultiWordSetSignedMin
	b		.L3738
.L3733:
#     } else {
#       MultiWordSetSignedMax(y1, m1);
	.d2line		350
	bl		MultiWordSetSignedMax
	b		.L3738
.L3737:
#     }
#   } else {
#     if ((boolean_T)(numNeg ^ denNeg)) {
	.d2line		353
.Llo439:
	xor		r0,r27,r26		# numNeg=r27 denNeg=r26
	e_andi.		r0,r0,255
	bc		1,2,.L3738	# eq
#       if (MultiWord2Bool(y2, m2)) {
	.d2line		354
.Llo449:
	mr		r3,r29		# y2=r3 y2=r29
	mr		r4,r28		# m2=r4 m2=r28
	bl		MultiWord2Bool
.Llo446:
	e_andi.		r3,r3,255		# t1=r3 t1=r3
.Llo447:
	bc		1,2,.L3735	# eq
#         uMultiWordInc(y1, m1);
	.d2line		355
.Llo441:
	mr		r3,r31		# y1=r3 y1=r31
	mr		r4,r30		# m1=r4 m1=r30
	bl		uMultiWordInc
.L3735:
#       }
# 
#       MultiWordNeg(y1, y1, m1);
	.d2line		358
	mr		r3,r31		# y1=r3 y1=r31
	mr		r5,r30		# m1=r5 m1=r30
	mr		r4,r31		# y1=r4 y1=r31
	bl		MultiWordNeg
.L3738:
#     }
#   }
# }
	.d2line		361
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
.L5211:
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
        .d2line         723
#$$ld
.L5231:

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
	.d2line		726
.Llo451:
	stw		r3,0(r4)		# y=r4 u=r3
	diab.li		r0,0
	diab.li		r6,-1
	se_cmpi		r3,0		# u=r3
# 4284
	isel		r3,r6,r0,0		# yi=r3
#   yi = u < 0 ? MAX_uint32_T : 0U;
#   for (i = 1; i < n; i++) {
	.d2line		728
.Llo452:
	se_cmpi		r5,1		# n=r5
	bc		0,1,.L3965	# le
.Llo456:
	diab.addi		r5,r5,-1		# i=r5 n=r5
.Llo454:
	se_btsti		r5,31		# i=r5
	bc		1,2,.L4885	# eq
.L4886:
#     y[i] = yi;
	.d2line		729
	stwu		r3,4(r4)		# y=r4 yi=r3
	.d2line		728
	diab.addi		r5,r5,-1		# i=r5 i=r5
	se_btsti		r5,31		# i=r5
	bc		0,2,.L4886	# ne
	se_cmpi		r5,0		# i=r5
	bc		1,2,.L3965	# eq
.L4885:
	se_srwi		r5,1		# i=r5 i=r5
.Llo457:
	mtspr		ctr,r5		# i=ctr
.L4884:
	.d2line		729
	stwu		r3,4(r4)		# y=r4 yi=r3
	stwu		r3,4(r4)		# y=r4 yi=r3
	bc		2,0,.L4884
.L3965:
#   }
# }
	.d2line		731
	.d2epilogue_begin
.Llo455:
	blr
.Llo453:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5232:
	.type		sLong2MultiWord,@function
	.size		sLong2MultiWord,.-sLong2MultiWord
# Number of nodes = 33

# Allocations for sLong2MultiWord
#	?a4		u
#	?a5		y
#	?a6		n
#	?a7		$$335
#	?a8		i
#	?a9		$$98
#	?a10		yi
#	not allocated	i
# int32_T sMultiWordCmp(const uint32_T u1[], const uint32_T u2[], int32_T n)
# {
	.align		2
	.section	.text_vle
        .d2line         739
#$$ld
.L5243:

#$$bf	sMultiWordCmp,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,r7,cr0
	.globl		sMultiWordCmp
	.d2_cfa_start __cie
sMultiWordCmp:
	.d2line		0
	.d2prologue_end
	.d2line		744
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
	.d2line		745
.Llo478:
	lwz		r0,-4(r4)		# su1=r0 u2=r4
#   su2 = u2[n - 1] & 2147483648U;
	rlwinm		r6,r6,0,0,0		# su1=r6 su2=r6
	rlwinm		r0,r0,0,0,0		# su2=r0 su1=r0
#   if ((su1 ^ su2) != 0U) {
	.d2line		746
	xor.		r0,r0,r6		# su1=?a16 su2=?a17
.Llo477:
	bc		1,2,.L3979	# eq
.Llo459:
	diab.li		r3,1		# u1=r3
.Llo460:
	diab.li		r0,-1		# su1=r0
.Llo471:
	cmpli		0,0,r6,0		# su1=r6
# 4273
	isel		r0,r3,r0,2		# y=r0 u1=r3 su1=r0
	b		.L3980
.L3979:
#     y = su1 != 0U ? -1 : 1;
#   } else {
#     y = 0;
	.d2line		749
.Llo472:
	diab.li		r0,0		# y=r0
#     i = n;
#     while ((y == 0) && (i > 0)) {
	.d2line		751
.Llo473:
	se_cmpi		r5,0		# n=r5
	bc		0,1,.L3980	# le
.L4888:
#       i--;
	.d2line		753
.Llo468:
	lwzu		r7,-4(r3)		# su1=r7 u1=r3
#       su1 = u1[i];
	.d2line		752
.Llo470:
	diab.addi		r5,r5,-1		# i=r5 i=r5
#       su2 = u2[i];
	.d2line		754
.Llo466:
	lwzu		r6,-4(r4)		# su2=r6 u2=r4
#       if (su1 != su2) {
	.d2line		755
.Llo469:
	se_cmpl		r7,r6		# su1=r7 su2=r6
	bc		1,2,.L4889	# eq
#         y = su1 > su2 ? 1 : -1;
	.d2line		756
.Llo461:
	diab.li		r3,1		# u1=r3
.Llo462:
	isel		r3,r3,r0,1		# y=r3 u1=r3 y=r0
.L3983:
.Llo463:
	diab.li		r0,-1		# y=r0
.Llo474:
	isel		r0,r3,r0,1		# y=r0 y=r3 y=r0
	b		.L3980
.L4889:
	.d2line		751
.Llo464:
	se_cmpi		r5,0		# i=r5
.Llo475:
	bc		0,2,.L4888	# ne
.L3980:
#       }
#     }
#   }
# 
#   return y;
	.d2line		761
.Llo465:
	mr		r3,r0		# y=r3 y=r0
# }
	.d2line		762
	.d2epilogue_begin
	blr
.Llo467:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5244:
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
        .d2line         734
#$$ld
.L5263:

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
	.d2line		735
	bl		sMultiWordCmp
.Llo480:
	se_srwi		r3,31
	xori		r3,r3,1
# }
	.d2line		736
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
.L5264:
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
        .d2line         767
#$$ld
.L5271:

#$$bf	rt_SimUpdateDiscreteEvents,interprocedural,nostackparams

# Regs written: r0,r3,r6
	.globl		rt_SimUpdateDiscreteEvents
	.d2_cfa_start __cie
rt_SimUpdateDiscreteEvents:
	.d2line		0
	.d2prologue_end
#   rtmSampleHitPtr[1] = rtmStepTask(ATV_M, 1);
	.d2line		768
.Llo481:
	lis		r6,ATV_M@ha
	.d2line		773
	e_lis		r3,-16512
	lwz		r6,ATV_M@l(r6)
	lbz		r0,429(r6)
	cntlzw		r0,r0
	diab.srwi		r0,5
#   rtmSampleHitPtr[2] = rtmStepTask(ATV_M, 2);
	stw		r0,4(r5)		# rtmSampleHitPtr=r5
	.d2line		769
	lbz		r0,430(r6)
	cntlzw		r0,r0
	diab.srwi		r0,5
#   UNUSED_PARAMETER(rtmNumSampTimes);
#   UNUSED_PARAMETER(rtmTimingData);
#   UNUSED_PARAMETER(rtmPerTaskSampleHits);
#   return(-1);
	stw		r0,8(r5)		# rtmSampleHitPtr=r5
# }
	.d2line		774
	.d2epilogue_begin
	blr
.Llo482:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5272:
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
        .d2line         785
#$$ld
.L5285:

#$$bf	rate_monotonic_scheduler,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,cr0
	.d2_cfa_start __cie
rate_monotonic_scheduler:
	.d2line		0
	.d2prologue_end
	.d2line		794
	lis		r5,ATV_M@ha
	lwz		r3,ATV_M@l(r5)
#   /* To ensure a deterministic data transfer between two rates,
#    * data is transferred at the priority of a fast task and the frequency
#    * of the slow task.  The following flags indicate when the data transfer
#    * happens.  That is, a rate interaction flag is set true when both rates
#    * will run, and false otherwise.
#    */
# 
#   /* tid 0 shares data with slower tid rate: 1 */
#   ATV_M->Timing.RateInteraction.TID0_1 = (ATV_M->Timing.TaskCounters.TID[1] == 0);
	lbz		r0,429(r3)
	.d2line		797
	lwz		r4,476(r3)
	cntlzw		r0,r0
	diab.srwi		r0,5
# 
#   /* update PerTaskSampleHits matrix for non-inline sfcn */
#   ATV_M->Timing.perTaskSampleHits[1] = ATV_M->Timing.RateInteraction.TID0_1;
	stb		r0,431(r3)
	rlwinm		r0,r0,0,24,31
	stw		r0,4(r4)
# 
#   /* Compute which subrates run during the next base time step.  Subrates
#    * are an integer multiple of the base rate counter.  Therefore, the subtask
#    * counter is reset when it reaches its limit (zero means run).
#    */
#   (ATV_M->Timing.TaskCounters.TID[1])++;
	.d2line		803
	lbz		r4,429(r3)
	se_addi		r4,1
	stb		r4,429(r3)
	lwz		r3,ATV_M@l(r5)
#   if ((ATV_M->Timing.TaskCounters.TID[1]) > 9) {/* Sample time: [0.1s, 0.0s] */
	.d2line		804
	lbz		r0,429(r3)
	se_cmpi		r0,9
	bc		0,1,.L3997	# le
#     ATV_M->Timing.TaskCounters.TID[1] = 0;
	.d2line		805
	diab.li		r0,0
	stb		r0,429(r3)
.L3997:
#   }
# 
#   (ATV_M->Timing.TaskCounters.TID[2])++;
	.d2line		808
	lbz		r4,430(r3)
	lis		r5,ATV_M@ha
	se_addi		r4,1
	stb		r4,430(r3)
	lwz		r3,ATV_M@l(r5)
	lbz		r0,430(r3)
#   if ((ATV_M->Timing.TaskCounters.TID[2]) > 99) {/* Sample time: [1.0s, 0.0s] */
	.d2line		809
	cmpi		0,0,r0,99
	bc		0,1,.L3998	# le
	diab.li		r0,0
	stb		r0,430(r3)
.L3998:
#     ATV_M->Timing.TaskCounters.TID[2] = 0;
#   }
# }
	.d2line		812
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5286:
	.type		rate_monotonic_scheduler,@function
	.size		rate_monotonic_scheduler,.-rate_monotonic_scheduler
# Number of nodes = 61

# Allocations for rate_monotonic_scheduler
#	not allocated	$$112
#	?a4		$$111
#	?a5		$$110
#	?a6		$$109
#	?a7		$$105
#	?a8		$$6
#	?a9		$$5
# void ATV_Chart_Init(DW_Chart_ATV_T *localDW)
# {
	.align		2
	.section	.text_vle
        .d2line         820
#$$ld
.L5290:

#$$bf	ATV_Chart_Init,interprocedural,nostackparams

# Regs written: r0
	.globl		ATV_Chart_Init
	.d2_cfa_start __cie
ATV_Chart_Init:
	.d2line		0
	.d2prologue_end
	.d2line		822
.Llo483:
	diab.li		r0,0
#   localDW->temporalCounter_i1 = 0U;
#   localDW->is_active_c1_ATV = 0U;
	stb		r0,0(r3)		# localDW=r3
#   localDW->is_c1_ATV = ATV_IN_NO_ACTIVE_CHILD;
	.d2line		823
	stb		r0,1(r3)		# localDW=r3
	.d2line		821
	stb		r0,2(r3)		# localDW=r3
# }
	.d2line		824
	.d2epilogue_begin
	blr
.Llo484:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5291:
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
        .d2line         832
#$$ld
.L5299:

#$$bf	ATV_Chart,interprocedural,nostackparams

# Regs written: r0,r3,r6,cr0
	.globl		ATV_Chart
	.d2_cfa_start __cie
ATV_Chart:
	.d2line		0
	.d2prologue_end
	.d2line		834
.Llo485:
	lbz		r6,2(r5)		# localDW=r5
#   /* Chart: '<S3>/Chart' */
#   if (localDW->temporalCounter_i1 < 7U) {
	se_cmpli	r6,7
	bc		0,0,.L4003	# ge
#     localDW->temporalCounter_i1++;
	.d2line		835
	se_addi		r6,1
	stb		r6,2(r5)		# localDW=r5
.L4003:
#   }
# 
#   /* Gateway: CANBUS_Reception_V_DBG_CTRL/Chart */
#   /* During: CANBUS_Reception_V_DBG_CTRL/Chart */
#   if (localDW->is_active_c1_ATV == 0U) {
	.d2line		840
	lbz		r0,0(r5)		# localDW=r5
	se_cmpi		r0,0
	bc		0,2,.L4008	# ne
	diab.li		r0,1
	.d2line		849
	diab.li		r3,0
#     /* Entry: CANBUS_Reception_V_DBG_CTRL/Chart */
#     localDW->is_active_c1_ATV = 1U;
# 
#     /* Entry Internal: CANBUS_Reception_V_DBG_CTRL/Chart */
#     /* Transition: '<S10>:4' */
#     localDW->is_c1_ATV = ATV_IN_NO_RX;
	.d2line		840
.Llo486:
	stb		r0,0(r5)		# localDW=r5
# 
#     /* Entry 'NO_RX': '<S10>:5' */
#     localB->out = false;
	.d2line		846
	stb		r0,1(r5)		# localDW=r5
	stb		r3,0(r4)		# localB=r4
	.d2line		876
	blr
.L4008:
#   } else if (localDW->is_c1_ATV == ATV_IN_NO_RX) {
	.d2line		850
.Llo487:
	lbz		r0,1(r5)		# localDW=r5
	se_cmpi		r0,1
	bc		0,2,.L4006	# ne
#     localB->out = false;
	.d2line		851
	diab.li		r0,0
	.d2line		854
	se_cmpi		r3,0		# rtu_in=r3
# 
#     /* During 'NO_RX': '<S10>:5' */
#     if (rtu_in) {
	stb		r0,0(r4)		# localB=r4
	bc		1,2,.L4009	# eq
#       /* Transition: '<S10>:6' */
#       localDW->is_c1_ATV = ATV_IN_RX;
	.d2line		857
	stb		r0,2(r5)		# localDW=r5
	.d2line		856
	diab.li		r0,2
#       localDW->temporalCounter_i1 = 0U;
	stb		r0,1(r5)		# localDW=r5
# 
#       /* Entry 'RX': '<S10>:3' */
#       localB->out = true;
	.d2line		860
	diab.li		r0,1
	stb		r0,0(r4)		# localB=r4
	.d2line		876
	blr
.L4006:
#     }
#   } else {
#     localB->out = true;
	.d2line		866
	se_cmpi		r3,0		# rtu_in=r3
	.d2line		863
	diab.li		r3,1		# rtu_in=r3
# 
#     /* During 'RX': '<S10>:3' */
#     if ((!rtu_in) && (localDW->temporalCounter_i1 >= 5U)) {
	stb		r3,0(r4)		# localB=r4 rtu_in=r3
	bc		0,2,.L4009	# ne
	.d2line		866
	lbz		r0,2(r5)		# localDW=r5
	se_cmpli	r0,5
	bc		1,0,.L4009	# lt
#       /* Transition: '<S10>:7' */
#       localDW->is_c1_ATV = ATV_IN_NO_RX;
	.d2line		868
	stb		r3,1(r5)		# localDW=r5 rtu_in=r3
# 
#       /* Entry 'NO_RX': '<S10>:5' */
#       localB->out = false;
	.d2line		871
	diab.li		r0,0
	stb		r0,0(r4)		# localB=r4
.L4009:
#     }
#   }
# 
#   /* End of Chart: '<S3>/Chart' */
# }
	.d2line		876
	.d2epilogue_begin
	blr
.Llo488:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5300:
	.type		ATV_Chart,@function
	.size		ATV_Chart,.-ATV_Chart
# Number of nodes = 89

# Allocations for ATV_Chart
#	?a4		rtu_in
#	?a5		localB
#	?a6		localDW
#	?a7		$$116
#	?a8		$$114
# void GestioneIbridoProceduraAvvi(uint16_T rtu_rPMG,
#   B_GestioneIbridoProceduraAvvi_T *localB)
# {
	.align		2
	.section	.text_vle
        .d2line         881
#$$ld
.L5310:

#$$bf	GestioneIbridoProceduraAvvi,interprocedural,nostackparams

# Regs written: r0,cr0
	.globl		GestioneIbridoProceduraAvvi
	.d2_cfa_start __cie
GestioneIbridoProceduraAvvi:
.Llo489:
	cmpi		0,0,r3,1000		# rtu_rPMG=r3
	.d2prologue_end
#   /* Switch: '<S67>/Switch' incorporates:
#    *  Constant: '<S67>/ATVC_rPMStart'
#    *  RelationalOperator: '<S67>/Relational Operator'
#    */
#   localB->Switch = (rtu_rPMG > 1000);
	.d2line		886
	mfcr		r0
	rlwinm		r0,r0,2,31,31
	stb		r0,0(r4)		# localB=r4
# }
	.d2line		887
	.d2epilogue_begin
	blr
.Llo490:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5311:
	.type		GestioneIbridoProceduraAvvi,@function
	.size		GestioneIbridoProceduraAvvi,.-GestioneIbridoProceduraAvvi
# Number of nodes = 7

# Allocations for GestioneIbridoProceduraAvvi
#	?a4		rtu_rPMG
#	?a5		localB
# static void ATV_KEY_ON(void)
# {
	.align		1
	.section	.text_vle
        .d2line         891
#$$ld
.L5322:

#$$bf	ATV_KEY_ON,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,cr0
	.d2_cfa_start __cie
ATV_KEY_ON:
	.d2line		0
	.d2prologue_end
	.d2line		895
	lbz		r0,atv_key_signal@sdarx(r0)		# tmp=r0
#   boolean_T tmp;
# 
#   /* During 'KEY_ON': '<S37>:20' */
#   tmp = !atv_key_signal;
.Llo491:
	lis		r3,ATV_DW@ha
	e_add16i		r3,r3,ATV_DW@l
	cntlzw		r0,r0		# tmp=r0 tmp=r0
	diab.srwi		r0,5		# tmp=r0
#   if (tmp && (ATV_DW.is_HV_CTRL != ATV_IN_HVM_ON) && (ATV_DW.is_HV_CTRL !=
	.d2line		896
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4058	# eq
	lbz		r4,24(r3)
	se_cmpi		r4,1
	bc		1,2,.L4058	# eq
	se_cmpi		r4,4
	bc		1,2,.L4058	# eq
#        ATV_IN_HV_ON) && (ATV_DW.is_HV_CTRL != ATV_IN_HV_WAIT_INV_OFF)) {
	.d2line		897
	se_cmpi		r4,5
	bc		1,2,.L4058	# eq
#     /* Transition: '<S37>:23' */
#     /* Transition: '<S37>:25' */
#     /* Exit Internal 'KEY_ON': '<S37>:20' */
#     /* Exit Internal 'STARTTRIGGER': '<S37>:119' */
#     ATV_DW.is_STARTTRIGGER = ATV_IN_NO_ACTIVE_CHILD_b;
	.d2line		905
.Llo492:
	lbz		r0,23(r3)		# tmp=r0
	.d2line		902
.Llo493:
	diab.li		r4,0
# 
#     /* Exit Internal 'DRIVE_ENABLE': '<S37>:85' */
#     if (ATV_DW.is_DRIVE_ENABLE == ATV_IN_DRIVE_ENABLED) {
	stb		r4,27(r3)
	se_cmpi		r0,1		# tmp=r0
	bc		0,2,.L5327	# ne
	.d2line		905
.Llo494:
	stb		r4,atv_runLed_out@sdarx(r0)
.L5327:
#       /* Exit 'DRIVE_ENABLED': '<S37>:88' */
#       atv_runLed_out = false;
#       ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_b;
#     } else {
#       ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_b;
#     }
# 
#     /* Exit Internal 'HEATER_CTRL': '<S37>:72' */
#     ATV_DW.is_HEATER_CTRL = ATV_IN_NO_ACTIVE_CHILD_b;
# 
#     /* Exit Internal 'CHG_CTRL': '<S37>:68' */
#     ATV_DW.is_CHG_CTRL = ATV_IN_NO_ACTIVE_CHILD_b;
# 
#     /* Exit Internal 'HV_CTRL': '<S37>:34' */
#     ATV_DW.is_HV_CTRL = ATV_IN_NO_ACTIVE_CHILD_b;
#     ATV_DW.is_c3_ATV = ATV_IN_PRE_SLEEP;
	.d2line		921
	diab.li		r0,768		# tmp=r0
	.d2line		920
.Llo495:
	sth		r4,24(r3)
	sth		r0,22(r3)		# tmp=r0
	.d2line		914
	stb		r4,26(r3)
#     ATV_DW.temporalCounter_i1_ji = 0U;
	.d2line		922
	stb		r4,28(r3)
# 
#     /* Entry 'PRE_SLEEP': '<S37>:3' */
#     atv_state_out = 2U;
	.d2line		925
	diab.li		r0,2		# tmp=r0
	stb		r0,atv_state_out@sdarx(r0)		# tmp=r0
#     atv_sub_state_out = 0U;
	.d2line		926
	stb		r4,atv_sub_state_out@sdarx(r0)
	.d2line		1164
	blr
.L4058:
	.d2line		926
	lbz		r6,24(r3)
#   } else {
#     /* During 'HV_CTRL': '<S37>:34' */
#     switch (ATV_DW.is_HV_CTRL) {
	.d2line		929
	se_cmpi		r6,1
	bc		1,2,.L4019	# eq
	se_cmpi		r6,2
	bc		1,2,.L4021	# eq
	se_cmpi		r6,3
	bc		1,2,.L4023	# eq
	se_cmpi		r6,4
	bc		1,2,.L4026	# eq
	b		.L4028
.L4019:
#      case ATV_IN_HVM_ON:
#       /* During 'HVM_ON': '<S37>:54' */
#       if (ATV_DW.temporalCounter_i2_j >= 50U) {
	.d2line		932
.Llo496:
	lbz		r0,29(r3)		# tmp=r0
.Llo497:
	cmpli		0,0,r0,50		# tmp=r0
	bc		1,0,.L4018	# lt
.Llo498:
	diab.li		r0,4		# tmp=r0
	.d2line		937
.Llo499:
	diab.li		r5,3
#         /* Transition: '<S37>:56' */
#         ATV_DW.is_HV_CTRL = ATV_IN_HV_ON;
# 
#         /* Entry 'HV_ON': '<S37>:53' */
#         atv_sub_state_out = 3U;
	.d2line		932
	stb		r0,24(r3)		# tmp=r0
	.d2line		938
	lis		r4,(ATV_B+150)@ha
#         ATV_B.hvp_ctrl_out = true;
	diab.li		r0,257		# tmp=r0
	stb		r5,atv_sub_state_out@sdarx(r0)
	sth		r0,(ATV_B+150)@l(r4)		# tmp=r0
	.d2line		941
	b		.L4018
.L4021:
	.d2line		943
.Llo500:
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
#         ATV_B.hvm_ctrl_out = true;
#       }
#       break;
# 
#      case ATV_IN_HV_ARMED:
#       /* During 'HV_ARMED': '<S37>:83' */
#       if (ATV_B.LogicalOperator3 && (!ATV_B.RateTransition4)) {
	.d2line		945
	lbz		r0,109(r4)		# tmp=r0
.Llo501:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4018	# eq
.Llo502:
	lbz		r0,110(r4)		# tmp=r0
.Llo503:
	se_cmpi		r0,0		# tmp=r0
	bc		0,2,.L4018	# ne
.Llo504:
	diab.li		r6,1
	diab.li		r0,0		# tmp=r0
.Llo505:
	stb		r6,24(r3)
#         /* Transition: '<S37>:51' */
#         ATV_DW.is_HV_CTRL = ATV_IN_HVM_ON;
#         ATV_DW.temporalCounter_i2_j = 0U;
	.d2line		952
	diab.li		r5,2
# 
#         /* Entry 'HVM_ON': '<S37>:54' */
#         ATV_DW.startBtnArmed = false;
	.d2line		948
	stb		r0,29(r3)		# tmp=r0
#         atv_sub_state_out = 2U;
	.d2line		951
	stb		r0,49(r3)		# tmp=r0
	stb		r5,atv_sub_state_out@sdarx(r0)
#         ATV_B.hvp_ctrl_out = false;
	.d2line		953
	sth		r6,150(r4)
	.d2line		956
	b		.L4018
.L4023:
	.d2line		958
.Llo506:
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
#         ATV_B.hvm_ctrl_out = true;
#       }
#       break;
# 
#      case ATV_IN_HV_OFF:
#       /* During 'HV_OFF': '<S37>:52' */
#       if ((!ATV_B.LogicalOperator3) && (!ATV_B.RateTransition4)) {
	.d2line		960
	lbz		r0,109(r4)		# tmp=r0
.Llo507:
	se_cmpi		r0,0		# tmp=r0
	bc		0,2,.L4024	# ne
.Llo508:
	lbz		r0,110(r4)		# tmp=r0
.Llo509:
	se_cmpi		r0,0		# tmp=r0
	bc		0,2,.L4024	# ne
.Llo510:
	diab.li		r0,2		# tmp=r0
	.d2line		965
.Llo511:
	diab.li		r5,1
#         /* Transition: '<S37>:84' */
#         ATV_DW.is_HV_CTRL = ATV_IN_HV_ARMED;
# 
#         /* Entry 'HV_ARMED': '<S37>:83' */
#         atv_sub_state_out = 1U;
	.d2line		960
	stb		r0,24(r3)		# tmp=r0
	stb		r5,atv_sub_state_out@sdarx(r0)
#         ATV_B.hvp_ctrl_out = false;
	.d2line		966
	diab.li		r0,0		# tmp=r0
	sth		r0,150(r4)		# tmp=r0
	b		.L4018
.L4024:
#         ATV_B.hvm_ctrl_out = false;
#       } else {
#         atv_sub_state_out = 0U;
	.d2line		969
.Llo512:
	diab.li		r0,0		# tmp=r0
.Llo513:
	stb		r0,atv_sub_state_out@sdarx(r0)		# tmp=r0
#         ATV_B.hvp_ctrl_out = false;
	.d2line		970
	sth		r0,150(r4)		# tmp=r0
	.d2line		973
	b		.L4018
.L4026:
#         ATV_B.hvm_ctrl_out = false;
#       }
#       break;
# 
#      case ATV_IN_HV_ON:
#       /* During 'HV_ON': '<S37>:53' */
#       if ((ATV_DW.startBtnArmed && ATV_B.LogicalOperator3) ||
	.d2line		977
	lbz		r4,49(r3)
	se_cmpi		r4,0
	bc		1,2,.L4061	# eq
	lis		r4,(ATV_B+109)@ha
	lbz		r4,(ATV_B+109)@l(r4)
	se_cmpi		r4,0
	bc		0,2,.L4060	# ne
.L4061:
#           ATV_B.RateTransition4 || tmp) {
	.d2line		978
	lis		r4,(ATV_B+110)@ha
	lbz		r4,(ATV_B+110)@l(r4)
	se_cmpi		r4,0
	bc		0,2,.L4060	# ne
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4018	# eq
.L4060:
.Llo514:
	diab.li		r4,5
	.d2line		981
	diab.li		r0,0		# tmp=r0
#         /* Transition: '<S37>:48' */
#         ATV_DW.is_HV_CTRL = ATV_IN_HV_WAIT_INV_OFF;
#         ATV_DW.temporalCounter_i2_j = 0U;
	.d2line		978
.Llo515:
	stb		r4,24(r3)
	.d2line		984
	diab.li		r5,4
# 
#         /* Entry 'HV_WAIT_INV_OFF': '<S37>:98' */
#         atv_sub_state_out = 4U;
	stb		r0,29(r3)		# tmp=r0
	.d2line		985
	lis		r4,(ATV_B+150)@ha
#         ATV_B.hvp_ctrl_out = true;
	diab.li		r0,257		# tmp=r0
	stb		r5,atv_sub_state_out@sdarx(r0)
	sth		r0,(ATV_B+150)@l(r4)		# tmp=r0
	.d2line		988
	b		.L4018
.L4028:
#         ATV_B.hvm_ctrl_out = true;
#       }
#       break;
# 
#      default:
#       /* During 'HV_WAIT_INV_OFF': '<S37>:98' */
#       if (ATV_DW.temporalCounter_i2_j >= 50U) {
	.d2line		992
.Llo516:
	lbz		r0,29(r3)		# tmp=r0
.Llo517:
	cmpli		0,0,r0,50		# tmp=r0
	bc		1,0,.L4018	# lt
.Llo518:
	diab.li		r0,3		# tmp=r0
.Llo519:
	stb		r0,24(r3)		# tmp=r0
.L4018:
.Llo520:
	lbz		r6,25(r3)
#         /* Transition: '<S37>:99' */
#         /* Transition: '<S37>:47' */
#         ATV_DW.is_HV_CTRL = ATV_IN_HV_OFF;
# 
#         /* Entry 'HV_OFF': '<S37>:52' */
#       }
#       break;
#     }
# 
#     /* During 'CHG_CTRL': '<S37>:68' */
#     switch (ATV_DW.is_CHG_CTRL) {
	.d2line		1003
	se_cmpi		r6,1
	bc		1,2,.L4031	# eq
	se_cmpi		r6,2
	bc		1,2,.L4033	# eq
	b		.L4038
.L4031:
	.d2line		1004
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
#      case ATV_IN_CHG_OFF:
#       /* During 'CHG_OFF': '<S37>:62' */
#       if (ATV_B.RateTransition4 && ((!ATV_B.hvp_ctrl_out) ||
	.d2line		1006
	lbz		r0,110(r4)		# tmp=r0
.Llo521:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4030	# eq
.Llo522:
	lbz		r0,150(r4)		# tmp=r0
.Llo523:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4062	# eq
#            (ATV_DW.temporalCounter_i3 < 100U))) {
	.d2line		1007
.Llo524:
	lbz		r0,30(r3)		# tmp=r0
.Llo525:
	cmpli		0,0,r0,100		# tmp=r0
	bc		0,0,.L4030	# ge
.L4062:
#         /* Transition: '<S37>:64' */
#         ATV_DW.is_CHG_CTRL = ATV_IN_HVM_ON_m;
	.d2line		1009
.Llo526:
	diab.li		r4,2
	.d2line		1010
	diab.li		r0,0		# tmp=r0
#         ATV_DW.temporalCounter_i3 = 0U;
.Llo527:
	stb		r4,25(r3)
	stb		r0,30(r3)		# tmp=r0
	.d2line		1014
	b		.L4030
.L4033:
	.d2line		1016
.Llo528:
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
# 
#         /* Entry 'HVM_ON': '<S37>:66' */
#       }
#       break;
# 
#      case ATV_IN_HVM_ON_m:
#       /* During 'HVM_ON': '<S37>:66' */
#       if ((!ATV_B.RateTransition4) || ATV_B.hvp_ctrl_out) {
	.d2line		1018
	lbz		r0,110(r4)		# tmp=r0
.Llo529:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4063	# eq
.Llo530:
	lbz		r0,150(r4)		# tmp=r0
.Llo531:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4036	# eq
.L4063:
#         /* Transition: '<S37>:61' */
#         ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
	.d2line		1020
.Llo532:
	diab.li		r5,1
	diab.li		r0,0		# tmp=r0
.Llo533:
	stb		r5,25(r3)
#         ATV_DW.temporalCounter_i3 = 0U;
	.d2line		1021
	stb		r0,30(r3)		# tmp=r0
# 
#         /* Entry 'CHG_OFF': '<S37>:62' */
#         ATV_B.chg_ctrl_out = false;
#         ATV_B.hvm_ctrl_out = false;
	.d2line		1025
	stb		r0,151(r4)		# tmp=r0
	.d2line		1024
	stb		r0,152(r4)		# tmp=r0
	b		.L4030
.L4036:
#       } else if (ATV_DW.temporalCounter_i3 >= 150U) {
	.d2line		1026
.Llo534:
	lbz		r0,30(r3)		# tmp=r0
.Llo535:
	cmpli		0,0,r0,150		# tmp=r0
	bc		1,0,.L4034	# lt
.Llo536:
	diab.li		r0,3		# tmp=r0
.Llo537:
	stb		r0,25(r3)		# tmp=r0
	b		.L4030
.L4034:
#         /* Transition: '<S37>:63' */
#         ATV_DW.is_CHG_CTRL = ATV_IN_HV_ON_o;
# 
#         /* Entry 'HV_ON': '<S37>:65' */
#       } else {
#         ATV_B.chg_ctrl_out = false;
	.d2line		1032
.Llo538:
	diab.li		r0,0		# tmp=r0
	.d2line		1035
.Llo539:
	b		.L4065
.L4038:
	.d2line		1037
.Llo540:
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
#         ATV_B.hvm_ctrl_out = true;
#       }
#       break;
# 
#      default:
#       /* During 'HV_ON': '<S37>:65' */
#       if ((!ATV_B.RateTransition4) || ATV_B.hvp_ctrl_out) {
	.d2line		1039
	lbz		r0,110(r4)		# tmp=r0
.Llo541:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4064	# eq
.Llo542:
	lbz		r0,150(r4)		# tmp=r0
.Llo543:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4039	# eq
.L4064:
#         /* Transition: '<S37>:59' */
#         /* Transition: '<S37>:60' */
#         ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
	.d2line		1042
.Llo544:
	diab.li		r5,1
	diab.li		r0,0		# tmp=r0
.Llo545:
	stb		r5,25(r3)
#         ATV_DW.temporalCounter_i3 = 0U;
	.d2line		1043
	stb		r0,30(r3)		# tmp=r0
# 
#         /* Entry 'CHG_OFF': '<S37>:62' */
#         ATV_B.chg_ctrl_out = false;
#         ATV_B.hvm_ctrl_out = false;
	.d2line		1047
	stb		r0,151(r4)		# tmp=r0
	.d2line		1046
	stb		r0,152(r4)		# tmp=r0
	b		.L4030
.L4039:
#       } else {
#         ATV_B.chg_ctrl_out = true;
	.d2line		1049
.Llo546:
	diab.li		r0,1		# tmp=r0
.L4065:
#         ATV_B.hvm_ctrl_out = true;
	.d2line		1032
.Llo547:
	stb		r0,152(r4)		# tmp=r0
	.d2line		1050
	diab.li		r0,1		# tmp=r0
	lis		r4,(ATV_B+151)@ha
	stb		r0,(ATV_B+151)@l(r4)		# tmp=r0
.L4030:
#       }
#       break;
#     }
# 
#     /* During 'HEATER_CTRL': '<S37>:72' */
#     if (ATV_DW.is_HEATER_CTRL == ATV_IN_HEATER_OFF) {
	.d2line		1056
.Llo548:
	lbz		r0,26(r3)		# tmp=r0
	.d2line		1065
.Llo549:
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
	se_cmpi		r0,1		# tmp=r0
	bc		0,2,.L4043	# ne
#       ATV_B.heater_ctrl_out = false;
	.d2line		1057
.Llo550:
	diab.li		r0,0		# tmp=r0
.Llo551:
	stb		r0,153(r4)		# tmp=r0
# 
#       /* During 'HEATER_OFF': '<S37>:69' */
#       if (ATV_B.RateTransition5) {
	.d2line		1060
	lbz		r0,111(r4)		# tmp=r0
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L4044	# eq
#         /* Transition: '<S37>:78' */
#         ATV_DW.is_HEATER_CTRL = ATV_IN_HVM_ON_m;
	.d2line		1062
.Llo552:
	diab.li		r5,2
	.d2line		1065
	diab.li		r0,1		# tmp=r0
# 
#         /* Entry 'HVM_ON': '<S37>:73' */
#         ATV_B.heater_ctrl_out = true;
.Llo553:
	stb		r5,26(r3)
	stb		r0,153(r4)		# tmp=r0
	b		.L4044
.L4043:
#       }
#     } else {
#       ATV_B.heater_ctrl_out = true;
	.d2line		1071
.Llo554:
	lbz		r0,111(r4)		# tmp=r0
	.d2line		1068
.Llo555:
	diab.li		r5,1
# 
#       /* During 'HVM_ON': '<S37>:73' */
#       if (!ATV_B.RateTransition5) {
	stb		r5,153(r4)
	se_cmpi		r0,0		# tmp=r0
	bc		0,2,.L4044	# ne
#         /* Transition: '<S37>:77' */
#         ATV_DW.is_HEATER_CTRL = ATV_IN_HEATER_OFF;
	.d2line		1073
.Llo556:
	stb		r5,26(r3)
# 
#         /* Entry 'HEATER_OFF': '<S37>:69' */
#         ATV_B.heater_ctrl_out = false;
	.d2line		1076
	diab.li		r0,0		# tmp=r0
.Llo557:
	stb		r0,153(r4)		# tmp=r0
.L4044:
.Llo558:
	lbz		r6,23(r3)
#       }
#     }
# 
#     /* During 'DRIVE_ENABLE': '<S37>:85' */
#     switch (ATV_DW.is_DRIVE_ENABLE) {
	.d2line		1081
	se_cmpi		r6,1
	bc		1,2,.L4046	# eq
	se_cmpi		r6,2
	bc		1,2,.L4048	# eq
	b		.L4052
.L4046:
#      case ATV_IN_DRIVE_ENABLED:
#       atv_state_out = 5U;
	.d2line		1083
	diab.li		r0,5		# tmp=r0
.Llo559:
	lis		r4,ATV_B@ha
	stb		r0,atv_state_out@sdarx(r0)		# tmp=r0
	.d2line		1084
	diab.li		r5,257
#       ATV_B.en_inv_rear_out = true;
	e_add16i		r4,r4,ATV_B@l
	.d2line		1086
	diab.li		r0,1		# tmp=r0
#       ATV_B.en_inv_front_out = true;
#       ATV_B.en_inv_gen_out = true;
	sth		r5,154(r4)
	stb		r0,156(r4)		# tmp=r0
# 
#       /* During 'DRIVE_ENABLED': '<S37>:88' */
#       if (ATV_DW.is_HV_CTRL != ATV_IN_HV_ON) {
	.d2line		1089
	lbz		r0,24(r3)		# tmp=r0
	se_cmpi		r0,4		# tmp=r0
	bc		1,2,.L4045	# eq
.Llo560:
	diab.li		r0,0		# tmp=r0
#         /* Transition: '<S37>:92' */
#         /* Transition: '<S37>:93' */
#         /* Transition: '<S37>:94' */
#         /* Exit 'DRIVE_ENABLED': '<S37>:88' */
#         atv_runLed_out = false;
	.d2line		1095
.Llo561:
	diab.li		r6,3
#         ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;
	.d2line		1094
	stb		r0,atv_runLed_out@sdarx(r0)		# tmp=r0
	.d2line		1098
	diab.li		r5,4
# 
#         /* Entry 'IDLE': '<S37>:87' */
#         atv_state_out = 4U;
	stb		r6,23(r3)
	stb		r5,atv_state_out@sdarx(r0)
#         ATV_B.en_inv_rear_out = false;
	.d2line		1099
	sth		r0,154(r4)		# tmp=r0
#         ATV_B.en_inv_front_out = false;
#         ATV_B.en_inv_gen_out = false;
	.d2line		1101
	stb		r0,156(r4)		# tmp=r0
	.d2line		1103
	b		.L4045
.L4048:
#       }
#       break;
# 
#      case ATV_IN_HV_DEL:
#       /* During 'HV_DEL': '<S37>:96' */
#       if (ATV_DW.temporalCounter_i1_ji >= 50U) {
	.d2line		1107
.Llo562:
	lbz		r0,28(r3)		# tmp=r0
.Llo563:
	cmpli		0,0,r0,50		# tmp=r0
	bc		1,0,.L4050	# lt
.Llo564:
	diab.li		r0,1		# tmp=r0
	.d2line		1112
.Llo565:
	diab.li		r6,5
#         /* Transition: '<S37>:97' */
#         ATV_DW.is_DRIVE_ENABLE = ATV_IN_DRIVE_ENABLED;
# 
#         /* Entry 'DRIVE_ENABLED': '<S37>:88' */
#         atv_state_out = 5U;
	.d2line		1107
	stb		r0,23(r3)		# tmp=r0
	lis		r4,ATV_B@ha
	.d2line		1113
	diab.li		r5,257
	e_add16i		r4,r4,ATV_B@l
#         ATV_B.en_inv_rear_out = true;
	stb		r6,atv_state_out@sdarx(r0)
	sth		r5,154(r4)
#         ATV_B.en_inv_front_out = true;
#         ATV_B.en_inv_gen_out = true;
	.d2line		1115
	stb		r0,156(r4)		# tmp=r0
#         atv_runLed_out = true;
	.d2line		1116
	stb		r0,atv_runLed_out@sdarx(r0)		# tmp=r0
	b		.L4045
.L4050:
#       } else {
#         if (ATV_DW.is_HV_CTRL != ATV_IN_HV_ON) {
	.d2line		1118
.Llo566:
	lbz		r0,24(r3)		# tmp=r0
.Llo567:
	se_cmpi		r0,4		# tmp=r0
	bc		1,2,.L4045	# eq
.Llo568:
	diab.li		r0,3		# tmp=r0
	.d2line		1123
.Llo569:
	diab.li		r5,4
#           /* Transition: '<S37>:86' */
#           ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;
# 
#           /* Entry 'IDLE': '<S37>:87' */
#           atv_state_out = 4U;
	.d2line		1118
	stb		r0,23(r3)		# tmp=r0
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
	stb		r5,atv_state_out@sdarx(r0)
#           ATV_B.en_inv_rear_out = false;
	.d2line		1124
	diab.li		r0,0		# tmp=r0
	sth		r0,154(r4)		# tmp=r0
#           ATV_B.en_inv_front_out = false;
#           ATV_B.en_inv_gen_out = false;
	.d2line		1126
	stb		r0,156(r4)		# tmp=r0
	.d2line		1129
	b		.L4045
.L4052:
#         }
#       }
#       break;
# 
#      default:
#       atv_state_out = 4U;
	.d2line		1132
.Llo570:
	diab.li		r0,4		# tmp=r0
.Llo571:
	lis		r4,ATV_B@ha
	stb		r0,atv_state_out@sdarx(r0)		# tmp=r0
	e_add16i		r4,r4,ATV_B@l
#       ATV_B.en_inv_rear_out = false;
	.d2line		1133
	diab.li		r0,0		# tmp=r0
	sth		r0,154(r4)		# tmp=r0
#       ATV_B.en_inv_front_out = false;
#       ATV_B.en_inv_gen_out = false;
	.d2line		1135
	stb		r0,156(r4)		# tmp=r0
# 
#       /* During 'IDLE': '<S37>:87' */
#       if (ATV_DW.is_HV_CTRL == ATV_IN_HV_ON) {
	.d2line		1138
	lbz		r4,24(r3)
	se_cmpi		r4,4
	bc		0,2,.L4045	# ne
#         /* Transition: '<S37>:95' */
#         ATV_DW.is_DRIVE_ENABLE = ATV_IN_HV_DEL;
	.d2line		1141
	stb		r0,28(r3)		# tmp=r0
	.d2line		1140
	diab.li		r0,2		# tmp=r0
#         ATV_DW.temporalCounter_i1_ji = 0U;
	stb		r0,23(r3)		# tmp=r0
.L4045:
	.d2line		1141
.Llo572:
	lbz		r0,27(r3)		# tmp=r0
.Llo573:
	lis		r4,(ATV_B+109)@ha
	lbz		r4,(ATV_B+109)@l(r4)
#       }
#       break;
#     }
# 
#     /* During 'STARTTRIGGER': '<S37>:119' */
#     if (ATV_DW.is_STARTTRIGGER == ATV_IN_STARTTRIGGER_OFF) {
	.d2line		1147
	se_cmpi		r0,1		# tmp=r0
	bc		0,2,.L4056	# ne
#       /* During 'STARTTRIGGER_OFF': '<S37>:117' */
#       if (!ATV_B.LogicalOperator3) {
	.d2line		1149
.Llo574:
	se_cmpi		r4,0
	bc		0,2,.L4059	# ne
	diab.li		r4,2
	.d2line		1154
	diab.li		r0,1		# tmp=r0
#         /* Transition: '<S37>:114' */
#         ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_ON;
# 
#         /* Entry 'STARTTRIGGER_ON': '<S37>:118' */
#         ATV_DW.startBtnArmed = true;
	.d2line		1149
.Llo575:
	stb		r4,27(r3)
	stb		r0,49(r3)		# tmp=r0
	.d2line		1164
	blr
.L4056:
#       }
#     } else {
#       /* During 'STARTTRIGGER_ON': '<S37>:118' */
#       if (ATV_B.LogicalOperator3) {
	.d2line		1158
.Llo576:
	se_cmpi		r4,0
	bc		1,2,.L4059	# eq
	diab.li		r0,1		# tmp=r0
.Llo577:
	stb		r0,27(r3)		# tmp=r0
.L4059:
#         /* Transition: '<S37>:116' */
#         ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_OFF;
#       }
#     }
#   }
# }
	.d2line		1164
	.d2epilogue_begin
.Llo578:
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5323:
	.type		ATV_KEY_ON,@function
	.size		ATV_KEY_ON,.-ATV_KEY_ON
# Number of nodes = 828

# Allocations for ATV_KEY_ON
#	?a4		$$336
#	?a5		$$141
#	?a6		$$140
#	?a7		$$139
#	?a8		$$138
#	?a9		$$137
#	?a10		$$136
#	?a11		$$135
#	?a12		$$134
#	?a13		$$133
#	?a14		$$132
#	?a15		$$131
#	?a16		$$130
#	?a17		$$129
#	?a18		$$128
#	?a19		$$127
#	?a20		$$126
#	?a21		$$125
#	?a22		$$124
#	?a23		$$123
#	?a24		$$122
#	?a25		$$117
#	?a26		tmp
# static real_T ATV_Off(boolean_T TInverterLow, boolean_T TMotorLow)
# {
	.align		1
	.section	.text_vle
        .d2line         1168
#$$ld
.L5330:

#$$bf	ATV_Off,interprocedural,nostackparams

# Regs written: r0,r3,cr0
	.d2_cfa_start __cie
ATV_Off:
.Llo579:
	se_cmpi		r3,0		# TInverterLow=r3
	.d2prologue_end
#   real_T PumpSt;
# 
#   /* Truth Table Function 'Off': '<S40>:77' */
#   if (TInverterLow && TMotorLow && ATV_B.RelationalOperator5) {
	.d2line		1172
	bc		1,2,.L4099	# eq
	se_cmpi		r4,0		# TMotorLow=r4
	bc		1,2,.L4099	# eq
	lis		r3,(ATV_B+119)@ha		# TInverterLow=r3
	lbz		r0,(ATV_B+119)@l(r3)		# TInverterLow=r3
	se_cmpi		r0,0
	bc		1,2,.L4099	# eq
#     /* Condition '#1': '<S40>:77:10' */
#     /* Condition '#2': '<S40>:77:14' */
#     /* Condition '#3': '<S40>:77:18' */
#     /* Action '1': '<S40>:77:30' */
#     PumpSt = 0.0;
	.d2line		1177
.Llo580:
	diab.li		r3,0		# PumpSt=r3
	.d2line		1184
.Llo584:
	blr
.L4099:
#   } else {
#     /* Action '2': '<S40>:77:36' */
#     PumpSt = 1.0;
	.d2line		1180
.Llo581:
	e_lis		r3,16256		# TInverterLow=r3
.L4100:
#   }
# 
#   return PumpSt;
# }
	.d2line		1184
	.d2epilogue_begin
.Llo582:
	blr
.Llo583:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5331:
	.type		ATV_Off,@function
	.size		ATV_Off,.-ATV_Off
# Number of nodes = 25

# Allocations for ATV_Off
#	?a4		TInverterLow
#	?a5		TMotorLow
#	?a6		PumpSt
# static real_T ATV_On(boolean_T TInverterHi, boolean_T TMotorHi)
# {
	.align		1
	.section	.text_vle
        .d2line         1188
#$$ld
.L5339:

#$$bf	ATV_On,interprocedural,nostackparams

# Regs written: r0,r3,cr0
	.d2_cfa_start __cie
ATV_On:
.Llo585:
	se_cmpi		r3,0		# TInverterHi=r3
	.d2prologue_end
#   real_T PumpSt;
# 
#   /* Truth Table Function 'On': '<S40>:92' */
#   if (TInverterHi) {
	.d2line		1192
	bc		1,2,.L4108	# eq
#     /* Condition '#1': '<S40>:92:10' */
#     /* Action '1': '<S40>:92:34' */
#     PumpSt = 1.0;
	.d2line		1195
	e_lis		r3,16256		# TInverterHi=r3
	.d2line		1210
.Llo586:
	blr
.L4108:
#   } else if (TMotorHi) {
	.d2line		1196
.Llo587:
	se_cmpi		r4,0		# TMotorHi=r4
	bc		1,2,.L4106	# eq
#     /* Condition '#2': '<S40>:92:14' */
#     /* Action '1': '<S40>:92:34' */
#     PumpSt = 1.0;
	.d2line		1199
	e_lis		r3,16256		# TInverterHi=r3
	.d2line		1210
.Llo588:
	blr
.L4106:
	.d2line		1199
.Llo589:
	lis		r3,(ATV_B+118)@ha		# TInverterHi=r3
	lbz		r0,(ATV_B+118)@l(r3)		# TInverterHi=r3
	se_cmpi		r0,0
	isel		r3,0,r0,2		# TInverterHi=r3
.L5346:
	e_lis		r0,16256
	isel		r3,r3,r0,2		# TInverterHi=r3 TInverterHi=r3
.L5347:
.L4109:
#   } else if (ATV_B.RelationalOperator4) {
#     /* Condition '#3': '<S40>:92:18' */
#     /* Action '1': '<S40>:92:34' */
#     PumpSt = 1.0;
#   } else {
#     /* Action '2': '<S40>:92:40' */
#     PumpSt = 0.0;
#   }
# 
#   return PumpSt;
# }
	.d2line		1210
	.d2epilogue_begin
.Llo590:
	blr
.Llo591:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5340:
	.type		ATV_On,@function
	.size		ATV_On,.-ATV_On
# Number of nodes = 33

# Allocations for ATV_On
#	?a4		TInverterHi
#	?a5		TMotorHi
#	?a6		PumpSt
# static void ATV_ProceduraAvviamento(void)
# {
	.align		1
	.section	.text_vle
        .d2line         1214
#$$ld
.L5350:

#$$bf	ATV_ProceduraAvviamento,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,cr0
	.d2_cfa_start __cie
ATV_ProceduraAvviamento:
	.d2line		0
	.d2prologue_end
	.d2line		1216
	lis		r3,ATV_DW@ha
	e_add16i		r3,r3,ATV_DW@l
	lbz		r0,54(r3)
	lbz		r4,55(r3)
#   /* During 'ProceduraAvviamento': '<S66>:191' */
#   if (((ATV_DW.ReqGen_prev != ATV_DW.ReqGen_start) && (!ATV_DW.ReqGen_start)) ||
	se_cmp		r0,r4
	bc		1,2,.L4150	# eq
	se_cmpi		r4,0
	bc		1,2,.L4149	# eq
.L4150:
#       ATV_DW.ShutDownHybrid) {
	.d2line		1217
	lbz		r5,51(r3)
	se_cmpi		r5,0
	bc		1,2,.L4147	# eq
.L4149:
#     /* Transition: '<S66>:194' */
#     /* Exit Internal 'ProceduraAvviamento': '<S66>:191' */
#     if (ATV_DW.is_ProceduraAvviamento == ATV_IN_StarterMode) {
	.d2line		1220
	lbz		r4,33(r3)
	.d2line		1228
	diab.li		r0,0
	se_cmpi		r4,2
	bc		0,2,.L4115	# ne
#       /* Exit Internal 'StarterMode': '<S66>:67' */
#       ATV_DW.is_StarterMode = ATV_IN_NO_ACTIVE_CHILD_b;
	.d2line		1222
	stb		r0,35(r3)
	b		.L4151
.L4115:
# 
#       /* Exit 'StarterMode': '<S66>:67' */
#       ATV_DW.is_ProceduraAvviamento = ATV_IN_NO_ACTIVE_CHILD_b;
#     } else {
#       /* Exit Internal 'RegenerativeMode': '<S66>:167' */
#       ATV_DW.is_RegenerativeMode = ATV_IN_NO_ACTIVE_CHILD_b;
	.d2line		1228
	stb		r0,34(r3)
.L4151:
#       ATV_DW.is_ProceduraAvviamento = ATV_IN_NO_ACTIVE_CHILD_b;
#     }
# 
#     ATV_DW.is_GestioneIbrido = ATV_IN_ProceduraSpegnimento;
	.d2line		1232
	diab.li		r0,512
	sth		r0,32(r3)
	.d2line		1397
	blr
.L4147:
	.d2line		1232
	lbz		r6,33(r3)
# 
#     /* Entry 'ProceduraSpegnimento': '<S66>:193' */
#   } else {
#     switch (ATV_DW.is_ProceduraAvviamento) {
	.d2line		1236
	se_cmpi		r6,1
	bc		1,2,.L4118	# eq
	se_cmpi		r6,2
	bc		1,2,.L4127	# eq
	se_cmpi		r6,3
	bc		1,2,.L4144	# eq
	.d2line		1397
	blr
.L4118:
	.d2line		1237
	lbz		r6,34(r3)
#      case ATV_IN_RegenerativeMode:
#       /* During 'RegenerativeMode': '<S66>:167' */
#       switch (ATV_DW.is_RegenerativeMode) {
	.d2line		1239
	se_cmpi		r6,1
	bc		1,2,.L4120	# eq
	se_cmpi		r6,2
	bc		1,2,.L4122	# eq
	se_cmpi		r6,3
	bc		1,2,.L4124	# eq
	.d2line		1397
	blr
.L4120:
	.d2line		1240
	lhz		r0,8(r3)
#        case ATV_IN_Step1:
#         /* During 'Step1': '<S66>:202' */
#         if (ATV_DW.temporalCounter_i1 >= 500U) {
	.d2line		1242
	cmpli		0,0,r0,500
	bc		1,0,.L4148	# lt
	diab.li		r4,0
	.d2line		1244
	diab.li		r0,2
#           /* Transition: '<S66>:206' */
#           ATV_DW.is_RegenerativeMode = ATV_IN_Step2;
	.d2line		1242
	sth		r4,8(r3)
	stb		r0,34(r3)
	.d2line		1397
	blr
.L4122:
	.d2line		1251
	lhz		r0,8(r3)
#           ATV_DW.temporalCounter_i1 = 0U;
# 
#           /* Entry 'Step2': '<S66>:204' */
#         }
#         break;
# 
#        case ATV_IN_Step2:
#         /* During 'Step2': '<S66>:204' */
#         if (ATV_DW.temporalCounter_i1 >= 500U) {
	.d2line		1253
	cmpli		0,0,r0,500
	bc		1,0,.L4148	# lt
	diab.li		r4,0
	.d2line		1255
	diab.li		r0,3
#           /* Transition: '<S66>:207' */
#           ATV_DW.is_RegenerativeMode = ATV_IN_Step3;
	.d2line		1253
	sth		r4,8(r3)
	stb		r0,34(r3)
	.d2line		1397
	blr
.L4124:
#           ATV_DW.temporalCounter_i1 = 0U;
# 
#           /* Entry 'Step3': '<S66>:208' */
#         }
#         break;
# 
#        case ATV_IN_Step3:
#         /* During 'Step3': '<S66>:208' */
#         if (ATV_DW.temporalCounter_i1 >= 500U) {
	.d2line		1264
	lhz		r0,8(r3)
	cmpli		0,0,r0,500
	bc		1,0,.L4148	# lt
	diab.li		r0,4
	stb		r0,34(r3)
	.d2line		1397
	blr
.L4127:
#           /* Transition: '<S66>:210' */
#           ATV_DW.is_RegenerativeMode = ATV_IN_Step4;
# 
#           /* Entry 'Step4': '<S66>:209' */
#         }
#         break;
# 
#        default:
#         /* During 'Step4': '<S66>:209' */
#         break;
#       }
#       break;
# 
#      case ATV_IN_StarterMode:
#       /* During 'StarterMode': '<S66>:67' */
#       switch (ATV_DW.is_StarterMode) {
	.d2line		1280
	lbz		r6,35(r3)
	se_cmpi		r6,1
	bc		1,2,.L4129	# eq
	se_cmpi		r6,2
	bc		1,2,.L4132	# eq
	se_cmpi		r6,3
	bc		1,2,.L4134	# eq
	b		.L4139
.L4129:
	.d2line		1281
	lhz		r4,8(r3)
#        case ATV_IN_AvviamentoIce:
#         /* During 'AvviamentoIce': '<S66>:11' */
#         if (ATV_DW.temporalCounter_i1 >= 300U) {
	.d2line		1285
	diab.li		r0,0
	.d2line		1283
	cmpli		0,0,r4,300
	bc		1,0,.L4130	# lt
	sth		r0,8(r3)
#           /* Transition: '<S66>:123' */
#           ATV_DW.is_StarterMode = ATV_IN_TimeoutAvviamentoIce;
	.d2line		1285
	diab.li		r0,4
	stb		r0,35(r3)
	.d2line		1397
	blr
.L4130:
	.d2line		1285
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
.Llo592:
	sth		r0,92(r4)
	stb		r0,157(r4)		# localB=r4
#           ATV_DW.temporalCounter_i1 = 0U;
# 
#           /* Entry 'TimeoutAvviamentoIce': '<S66>:215' */
#         } else {
#           /* Simulink Function 'IceRun': '<S66>:114' */
#           ATV_B.rPMG = 0U;
# 
#           /* Outputs for Function Call SubSystem: '<S66>/GestioneIbrido.ProceduraAvviamento.StarterMode.IceRun' */
#           GestioneIbridoProceduraAvvi(ATV_B.rPMG,
#             &ATV_B.GestioneIbridoProceduraAvviamen);
# 
#           /* End of Outputs for SubSystem: '<S66>/GestioneIbrido.ProceduraAvviamento.StarterMode.IceRun' */
#           ATV_DW.IceStatus = ATV_B.GestioneIbridoProceduraAvviamen.Switch;
	.d2line		1298
	stb		r0,50(r3)
	.d2line		1397
	blr
.L4132:
#         }
#         break;
# 
#        case ATV_IN_Inizializzazione:
#         /* During 'Inizializzazione': '<S66>:6' */
#         if ((ATV_DW.ReqGen_prev != ATV_DW.ReqGen_start) && ATV_DW.ReqGen_start)
	.d2line		1304
.Llo593:
	se_cmp		r0,r4
	bc		1,2,.L4148	# eq
	se_cmpi		r4,0
	bc		1,2,.L4148	# eq
#         {
#           /* Transition: '<S66>:9' */
#           ATV_DW.is_StarterMode = ATV_IN_AvviamentoIce;
#           ATV_DW.temporalCounter_i1 = 0U;
	.d2line		1308
	diab.li		r4,0
	.d2line		1307
	diab.li		r0,1
	sth		r4,8(r3)
	stb		r0,35(r3)
	.d2line		1397
	blr
.L4134:
	.d2line		1314
	lhz		r4,8(r3)
# 
#           /* Entry 'AvviamentoIce': '<S66>:11' */
#         }
#         break;
# 
#        case ATV_IN_MonitoraggioICe:
#         /* During 'MonitoraggioICe': '<S66>:122' */
#         if (ATV_DW.temporalCounter_i1 >= 100U) {
	.d2line		1316
	cmpli		0,0,r4,100
	bc		1,0,.L4137	# lt
	diab.li		r5,0
	.d2line		1322
	diab.li		r4,3
#           /* Transition: '<S66>:125' */
#           ATV_DW.IceOn = true;
#           ATV_DW.is_StarterMode = ATV_IN_NO_ACTIVE_CHILD_b;
# 
#           /* Exit 'StarterMode': '<S66>:67' */
#           ATV_DW.is_ProceduraAvviamento = ATV_IN_StopAvviamento;
	.d2line		1318
	diab.li		r0,1
	.d2line		1316
	sth		r5,8(r3)
	stb		r4,33(r3)
	.d2line		1319
	stb		r5,35(r3)
	stb		r0,52(r3)
	.d2line		1397
	blr
.L4137:
#           ATV_DW.temporalCounter_i1 = 0U;
# 
#           /* Entry 'StopAvviamento': '<S66>:185' */
#         } else if ((!ATV_DW.IceStatus) && atv_apu_req_in &&
	.d2line		1326
	lbz		r0,50(r3)
	se_cmpi		r0,0
	bc		0,2,.L4135	# ne
	lbz		r0,atv_apu_req_in@sdarx(r0)
	se_cmpi		r0,0
	bc		1,2,.L4135	# eq
#                    (ATV_DW.temporalCounter_i1 >= 300U)) {
	.d2line		1327
	cmpli		0,0,r4,300
	bc		1,0,.L4135	# lt
	diab.li		r4,0
	.d2line		1332
	diab.li		r0,1
#           /* Transition: '<S66>:96' */
#           /* Transition: '<S66>:198' */
#           /* Transition: '<S66>:196' */
#           /* Transition: '<S66>:165' */
#           ATV_DW.is_StarterMode = ATV_IN_AvviamentoIce;
	.d2line		1327
	sth		r4,8(r3)
	stb		r0,35(r3)
	.d2line		1397
	blr
.L4135:
	.d2line		1332
	lis		r4,ATV_B@ha
	diab.li		r0,0
	e_add16i		r4,r4,ATV_B@l
.Llo594:
	sth		r0,92(r4)
	stb		r0,157(r4)		# localB=r4
#           ATV_DW.temporalCounter_i1 = 0U;
# 
#           /* Entry 'AvviamentoIce': '<S66>:11' */
#         } else {
#           /* Simulink Function 'IceRun': '<S66>:114' */
#           ATV_B.rPMG = 0U;
# 
#           /* Outputs for Function Call SubSystem: '<S66>/GestioneIbrido.ProceduraAvviamento.StarterMode.IceRun' */
#           GestioneIbridoProceduraAvvi(ATV_B.rPMG,
#             &ATV_B.GestioneIbridoProceduraAvviamen);
# 
#           /* End of Outputs for SubSystem: '<S66>/GestioneIbrido.ProceduraAvviamento.StarterMode.IceRun' */
#           ATV_DW.IceStatus = ATV_B.GestioneIbridoProceduraAvviamen.Switch;
	.d2line		1345
	stb		r0,50(r3)
	.d2line		1397
	blr
.L4139:
#         }
#         break;
# 
#        default:
#         /* During 'TimeoutAvviamentoIce': '<S66>:215' */
#         if ((!ATV_DW.IceStatus) && atv_apu_req_in && (ATV_DW.temporalCounter_i1 >=
	.d2line		1351
.Llo595:
	lbz		r4,50(r3)
	se_cmpi		r4,0
	bc		0,2,.L4142	# ne
	lbz		r0,atv_apu_req_in@sdarx(r0)
	se_cmpi		r0,0
	bc		1,2,.L4142	# eq
	lhz		r0,8(r3)
	cmpli		0,0,r0,300
	bc		1,0,.L4142	# lt
	diab.li		r4,0
	.d2line		1357
	diab.li		r0,1
#              300U)) {
#           /* Transition: '<S66>:217' */
#           /* Transition: '<S66>:220' */
#           /* Transition: '<S66>:196' */
#           /* Transition: '<S66>:165' */
#           ATV_DW.is_StarterMode = ATV_IN_AvviamentoIce;
	.d2line		1351
	sth		r4,8(r3)
	stb		r0,35(r3)
	.d2line		1397
	blr
.L4142:
#           ATV_DW.temporalCounter_i1 = 0U;
# 
#           /* Entry 'AvviamentoIce': '<S66>:11' */
#         } else if (ATV_DW.IceStatus) {
	.d2line		1361
	se_cmpi		r4,0
	.d2line		1363
	diab.li		r0,0
	bc		1,2,.L4140	# eq
#           /* Transition: '<S66>:216' */
#           ATV_DW.is_StarterMode = ATV_IN_MonitoraggioICe;
#           ATV_DW.temporalCounter_i1 = 0U;
	.d2line		1364
	sth		r0,8(r3)
	.d2line		1363
	diab.li		r0,3
	stb		r0,35(r3)
	.d2line		1397
	blr
.L4140:
	.d2line		1363
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
.Llo596:
	sth		r0,92(r4)
	stb		r0,157(r4)		# localB=r4
# 
#           /* Entry 'MonitoraggioICe': '<S66>:122' */
#         } else {
#           /* Simulink Function 'IceRun': '<S66>:114' */
#           ATV_B.rPMG = 0U;
# 
#           /* Outputs for Function Call SubSystem: '<S66>/GestioneIbrido.ProceduraAvviamento.StarterMode.IceRun' */
#           GestioneIbridoProceduraAvvi(ATV_B.rPMG,
#             &ATV_B.GestioneIbridoProceduraAvviamen);
# 
#           /* End of Outputs for SubSystem: '<S66>/GestioneIbrido.ProceduraAvviamento.StarterMode.IceRun' */
#           ATV_DW.IceStatus = ATV_B.GestioneIbridoProceduraAvviamen.Switch;
	.d2line		1376
	stb		r0,50(r3)
	.d2line		1397
	blr
.L4144:
#         }
#         break;
#       }
#       break;
# 
#      case ATV_IN_StopAvviamento:
#       /* During 'StopAvviamento': '<S66>:185' */
#       if (ATV_DW.temporalCounter_i1 >= 50U) {
	.d2line		1384
.Llo597:
	lhz		r0,8(r3)
	cmpli		0,0,r0,50
	bc		1,0,.L4148	# lt
	diab.li		r0,4
	stb		r0,33(r3)
.L4148:
#         /* Transition: '<S66>:186' */
#         ATV_DW.is_ProceduraAvviamento = ATV_IN_WarmUpTermico;
# 
#         /* Entry 'WarmUpTermico': '<S66>:102' */
#       }
#       break;
# 
#      default:
#       /* During 'WarmUpTermico': '<S66>:102' */
#       break;
#     }
#   }
# }
	.d2line		1397
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5351:
	.type		ATV_ProceduraAvviamento,@function
	.size		ATV_ProceduraAvviamento,.-ATV_ProceduraAvviamento
# Number of nodes = 453

# Allocations for ATV_ProceduraAvviamento
#	?a4		$$164
#	?a5		$$163
#	?a6		$$162
#	?a7		$$161
#	?a8		$$160
#	?a9		$$159
#	?a10		$$158
#	?a11		$$157
#	?a12		$$156
#	?a13		$$155
#	?a14		$$149
#	?a15		$$148
#	not allocated	$$147
#	not allocated	$$146
#	not allocated	$$145
#	not allocated	$$144
#	not allocated	$$143
#	not allocated	$$142
#	not allocated	$$39
#	not allocated	$$38
#	not allocated	$$37
#	not allocated	rtu_rPMG
#	?a16		localB
#	not allocated	rtu_rPMG
#	?a17		localB
#	not allocated	rtu_rPMG
#	?a18		localB
# static void ATV_output0(void)          /* Sample time: [0.01s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         1401
#$$ld
.L5361:

#$$bf	ATV_output0,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ATV_output0:
	diab.li		r0,-448
	stwux		r1,r1,r0		
	.d2_cfa_def_cfa_offset	448
	diab.addi		r12,r1,408
	mfspr		r0,lr
	stmw		r22,0(r12)		# offset r1+408  0x198
	.d2_cfa_offset_list	22,31,1,1
	stw		r0,452(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#   boolean_T rtb_Compare;
#   uint8_T rtb_Gain_d;
#   real_T rtb_Gain;
#   boolean_T RelationalOperator6;
#   boolean_T RelationalOperator8;
#   boolean_T PumpACtrl;
#   int32_T PumpBOn;
#   int64m_T tmp;
#   int64m_T tmp_0;
#   uint32_T tmp_1;
#   uint32_T tmp_2;
#   int96m_T tmp_3;
#   int64m_T tmp_4;
#   int64m_T tmp_5;
#   int64m_T tmp_6;
#   int64m_T tmp_7;
#   int96m_T tmp_8;
#   int64m_T tmp_9;
#   int64m_T tmp_a;
#   int32_T u0_tmp;
#   static int64m_T tmp_b = { { 0U, 0U } /* chunks */
#   };
# 
#   boolean_T guard1 = false;
# 
#   {                                    /* Sample time: [0.01s, 0.0s] */
#     rate_monotonic_scheduler();
	.d2line		1428
	bl		rate_monotonic_scheduler
#   }
# 
#   /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput' */
#   /* S-Function Block: <S6>/pai_BasicAnalogInput
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XD1, &adc, FALSE);
	.d2line		1438
	e_lis		r26,16544
	.d2line		1437
.Llo681:
	diab.addi		r4,r1,46
	diab.li		r3,24
	diab.li		r5,0
	e_lis		r29,14720
#     ATV_B.pai_BasicAnalogInput = (adc * 5.0) / 4096.0;
	bl		pax_adc_input
	lis		r28,ATV_B@ha
	lha		r0,46(r1)
	.d2line		1442
	e_lis		r3,17530
	e_add16i		r28,r28,ATV_B@l
	efscfsi		r0,r0
	efsmul		r0,r0,r26
	efsmul		r0,r0,r29
#   }
# 
#   /* Gain: '<S6>/Gain' */
#   rtb_Gain = floor(1000.0 * ATV_B.pai_BasicAnalogInput);
	stw		r0,0(r28)
	efsmul		r3,r0,r3
	bl		_f_ftod
	bl		floor
	bl		_d_dtof
.Llo893:
	mr		r31,r3		# rtb_Gain=r31 rtb_Gain=r3
#   if (rtIsNaN(rtb_Gain) || rtIsInf(rtb_Gain)) {
	.d2line		1443
	bl		rtIsNaN
.Llo894:
	e_andi.		r3,r3,255
	bc		0,2,.L4387	# ne
.Llo895:
	mr		r3,r31		# rtb_Gain=r3 rtb_Gain=r31
	bl		rtIsInf
	e_andi.		r3,r3,255
	bc		1,2,.L4175	# eq
.L4387:
#     rtb_Gain = 0.0;
	.d2line		1444
	diab.li		r3,0		# rtb_Gain=r3
.Llo669:
	b		.L4388
.L4175:
#   } else {
#     rtb_Gain = fmod(rtb_Gain, 4.294967296E+9);
	.d2line		1446
.Llo670:
	mr		r3,r31		# rtb_Gain=r3 rtb_Gain=r31
	bl		_f_ftod
	.d2line		1449
	diab.li		r31,0
.Llo896:
	e_lis		r5,16880
	diab.li		r6,0
	bl		fmod
	bl		_d_dtof
#   }
# 
#   atv_xd1_key_ain = rtb_Gain < 0.0 ? -(int32_T)(uint32_T)-rtb_Gain : (int32_T)
.Llo671:
	efscmplt		1,r3,r31		# rtb_Gain=r3
	bc		0,5,.L4388		# ge
	efsneg		r0,r3		# rtb_Gain=r3
	efsctuiz		r0,r0
	neg		r0,r0
	b		.L4389
.L4388:
	efsctuiz		r0,r3		# rtb_Gain=r3
.L4389:
#     (uint32_T)rtb_Gain;
# 
#   /* End of Gain: '<S6>/Gain' */
# 
#   /* RelationalOperator: '<S30>/Compare' incorporates:
#    *  Constant: '<S30>/Constant'
#    */
#   atv_key_signal = (atv_xd1_key_ain > 500);
.Llo672:
	stw		r0,atv_xd1_key_ain@sdarx(r0)
	.d2line		1465
	diab.addi		r4,r1,32
	diab.li		r3,169		# rtb_Gain=r3
	diab.li		r5,0
	.d2line		1457
	lwz		r0,atv_xd1_key_ain@sdarx(r0)
	e_lis		r30,15395
# 
#   /* S-Function (pdx_digital_input): '<S6>/pdx_DigitalInput' */
#   /* S-Function Block: <S6>/pdx_DigitalInput
#    * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
#    */
#   {
#     uint8_T state;
#     (void) pdx_digital_input(PIO_DIN_ZA3, &state, FALSE);
	e_or2i		r30,55050
	.d2line		1489
	lis		r27,atvc_an_in_sel_th@ha
	cmpi		0,0,r0,500
	lis		r25,atvc_an_in_sel_his@ha
	mfcr		r0
	lis		r31,ATV_DW@ha
#     put_debounce_by_time(state,
	rlwinm		r0,r0,2,31,31
	e_add16i		r31,r31,ATV_DW@l
	stb		r0,atv_key_signal@sdarx(r0)
	bl		pdx_digital_input
	.d2line		1466
	lbz		r3,32(r1)		# rtb_Gain=r3
	lis		r9,pdx_DigitalInput_detm_wrk_data@ha
	e_lis		r6,15692
	e_lis		r7,15820
	diab.addi		r8,r1,32
	mr		r4,r30
#                          0.01,
#                          0,
#                          0.05,
#                          0.1,
#                          &state,
#                          &pdx_DigitalInput_detm_wrk_data);
#     atv_za3_StartBtn_din = state;
	diab.li		r5,0
	e_add16i		r9,r9,pdx_DigitalInput_detm_wrk_data@l
	e_or2i		r6,52429
	e_or2i		r7,52429
#   }
# 
#   /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput5' */
#   /* S-Function Block: <S6>/pai_BasicAnalogInput5
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XC1, &adc, FALSE);
	bl		put_debounce_by_time
	.d2line		1473
	lbz		r0,32(r1)
	.d2line		1482
	diab.addi		r4,r1,48
	diab.li		r3,20		# rtb_Gain=r3
#     atv_xc1_raw_ain = (adc * 5.0) / 4096.0;
	diab.li		r5,0
	stb		r0,atv_za3_StartBtn_din@sdarx(r0)
	bl		pax_adc_input
	.d2line		1483
	lha		r0,48(r1)
	efscfsi		r0,r0
#   }
# 
#   /* Relay: '<S6>/Relay2' incorporates:
#    *  Relay: '<S6>/Relay3'
#    */
#   rtb_Gain = atvc_an_in_sel_th + atvc_an_in_sel_his;
	efsmul		r0,r0,r26		# rtb_Gain=r26
	efsmul		r0,r0,r29
	stw		r0,atv_xc1_raw_ain@sdarx(r0)
	.d2line		1489
	lwz		r26,atvc_an_in_sel_th@l(r27)		# rtb_Gain=r26
	lwz		r4,atvc_an_in_sel_his@l(r25)
	efsadd		r26,r26,r4		# rtb_Gain=r26 rtb_Gain=r26
#   if (atv_xc1_raw_ain >= rtb_Gain) {
	.d2line		1490
	efscmplt		1,r0,r26		# rtb_Gain=r26
	bc		1,5,.L4178		# lt
#     ATV_DW.Relay2_Mode = true;
	.d2line		1491
	diab.li		r0,1
	stb		r0,41(r31)
	b		.L4179
.L4178:
#   } else {
#     if (atv_xc1_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
	.d2line		1493
	lwz		r3,atvc_an_in_sel_th@l(r27)		# rtb_Gain=r3
.Llo673:
	lwz		r4,atvc_an_in_sel_his@l(r25)
	efssub		r3,r3,r4		# rtb_Gain=r3 rtb_Gain=r3
	efscmpgt		1,r0,r3		# rtb_Gain=r3
	bc		1,5,.L4179		# gt
#       ATV_DW.Relay2_Mode = false;
	.d2line		1494
.Llo674:
	diab.li		r0,0
	stb		r0,41(r31)
.L4179:
#     }
#   }
# 
#   atv_fwd_mode_in = !ATV_DW.Relay2_Mode;
	.d2line		1498
	lbz		r0,41(r31)
	.d2line		1508
	diab.addi		r4,r1,50
	diab.li		r3,23		# rtb_Gain=r3
	diab.li		r5,0
# 
#   /* End of Relay: '<S6>/Relay2' */
# 
#   /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput6' */
#   /* S-Function Block: <S6>/pai_BasicAnalogInput6
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XC4, &adc, FALSE);
	cntlzw		r0,r0
	.d2line		1509
	e_lis		r27,16544
	diab.srwi		r0,5
	stb		r0,atv_fwd_mode_in@sdarx(r0)
#     atv_xc4_raw_ain = (adc * 5.0) / 4096.0;
	bl		pax_adc_input
	lha		r0,50(r1)
	efscfsi		r0,r0
	efsmul		r0,r0,r27
	efsmul		r0,r0,r29
	stw		r0,atv_xc4_raw_ain@sdarx(r0)
#   }
# 
#   /* Relay: '<S6>/Relay3' */
#   if (atv_xc4_raw_ain >= rtb_Gain) {
	.d2line		1513
	efscmplt		1,r0,r26		# rtb_Gain=r26
	bc		1,5,.L4181		# lt
#     ATV_DW.Relay3_Mode = true;
	.d2line		1514
.Llo682:
	diab.li		r0,1
	stb		r0,42(r31)
	b		.L4182
.L4181:
#   } else {
#     if (atv_xc4_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
	.d2line		1516
	lis		r3,atvc_an_in_sel_th@ha		# rtb_Gain=r3
.Llo675:
	lis		r4,atvc_an_in_sel_his@ha
	lwz		r3,atvc_an_in_sel_th@l(r3)		# rtb_Gain=r3 rtb_Gain=r3
	lwz		r4,atvc_an_in_sel_his@l(r4)
	efssub		r3,r3,r4		# rtb_Gain=r3 rtb_Gain=r3
	efscmpgt		1,r0,r3		# rtb_Gain=r3
	bc		1,5,.L4182		# gt
#       ATV_DW.Relay3_Mode = false;
	.d2line		1517
.Llo676:
	diab.li		r0,0
	stb		r0,42(r31)
.L4182:
#     }
#   }
# 
#   atv_rwd_mode_in = !ATV_DW.Relay3_Mode;
	.d2line		1521
	lbz		r0,42(r31)
	.d2line		1529
	diab.addi		r4,r1,52
	diab.li		r3,14		# rtb_Gain=r3
	diab.li		r5,0
# 
#   /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput4' */
#   /* S-Function Block: <S6>/pai_BasicAnalogInput4
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XA3, &adc, FALSE);
	cntlzw		r0,r0
	.d2line		1530
	e_lis		r26,16544		# rtb_Gain=r26
.Llo683:
	diab.srwi		r0,5
	e_lis		r27,16102
	stb		r0,atv_rwd_mode_in@sdarx(r0)
#     atv_xa3_brake_pedal_raw_ain = (adc * 5.0) / 4096.0;
	e_or2i		r27,26214
	bl		pax_adc_input
	lha		r0,52(r1)
	efscfsi		r0,r0
	efsmul		r0,r0,r26		# rtb_Gain=r26
	efsmul		r0,r0,r29
.Llo685:
	stw		r0,atv_xa3_brake_pedal_raw_ain@sdarx(r0)
#   }
# 
#   /* Switch: '<S14>/Switch' incorporates:
#    *  Constant: '<S16>/Lower Limit'
#    *  Constant: '<S16>/Upper Limit'
#    *  Logic: '<S16>/AND'
#    *  RelationalOperator: '<S16>/Lower Test'
#    *  RelationalOperator: '<S16>/Upper Test'
#    */
#   if ((0.45 <= atv_xa3_brake_pedal_raw_ain) && (atv_xa3_brake_pedal_raw_ain <=
	.d2line		1540
	efscmpgt		1,r27,r0
	bc		1,5,.L4190		# gt
.Llo684:
	e_lis		r3,16529		# rtb_Gain=r3
.Llo677:
	e_or2i		r3,39322		# rtb_Gain=r3
	efscmpgt		1,r0,r3		# rtb_Gain=r3
	bc		1,5,.L4190		# gt
.Llo678:
	e_lis		r3,16528		# rtb_Gain=r3
#        4.55)) {
#     /* Saturate: '<S14>/Saturation' */
#     if (atv_xa3_brake_pedal_raw_ain > 4.5) {
	.d2line		1543
.Llo679:
	efscmpgt		1,r0,r3		# rtb_Gain=r3
	bc		0,5,.L4185		# le
#       rtb_Gain = 4.5;
	.d2line		1544
.Llo686:
	b		.L4186
.L4185:
#     } else if (atv_xa3_brake_pedal_raw_ain < 0.5) {
	.d2line		1545
.Llo687:
	e_lis		r3,16128		# rtb_Gain=r3
	efscmplt		1,r0,r3		# rtb_Gain=r3
	bc		0,5,.L4183		# ge
#       rtb_Gain = 0.5;
	.d2line		1546
	b		.L4186
.L4183:
#     } else {
#       rtb_Gain = atv_xa3_brake_pedal_raw_ain;
	.d2line		1548
	mr		r3,r0		# rtb_Gain=r3 rtb_Gain=r0
.L4186:
#     }
# 
#     /* End of Saturate: '<S14>/Saturation' */
# 
#     /* Gain: '<S14>/Gain' incorporates:
#      *  Constant: '<S14>/Constant1'
#      *  Sum: '<S14>/Add'
#      */
#     rtb_Gain = floor((rtb_Gain - 0.5) * 750.0);
	.d2line		1557
	e_lis		r4,16128
	e_lis		r0,17467
	efssub		r3,r3,r4		# rtb_Gain=r3 rtb_Gain=r3
.Llo680:
	.diab.bseti		r0,16
	efsmul		r3,r3,r0		# rtb_Gain=r3 rtb_Gain=r3
.Llo688:
	bl		_f_ftod
	bl		floor
	bl		_d_dtof
.Llo733:
	mr		r26,r3		# rtb_Gain=r26 rtb_Gain=r3
#     if (rtIsNaN(rtb_Gain)) {
	.d2line		1558
	bl		rtIsNaN
.Llo689:
	e_andi.		r3,r3,255		# rtb_Gain=r3 rtb_Gain=r3
.Llo690:
	bc		1,2,.L4187	# eq
#       atv_brake_pedalX1000 = 0U;
	.d2line		1559
.Llo734:
	diab.li		r0,0
	sth		r0,atv_brake_pedalX1000@sdarx(r0)
	b		.L4191
.L4187:
#     } else {
#       atv_brake_pedalX1000 = (uint16_T)fmod(rtb_Gain, 65536.0);
	.d2line		1561
	mr		r3,r26		# rtb_Gain=r3 rtb_Gain=r26
	bl		_f_ftod
	e_lis		r5,16624
	diab.li		r6,0
	bl		fmod
	bl		_d_dtou
.Llo691:
	sth		r3,atv_brake_pedalX1000@sdarx(r0)		# rtb_Gain=r3
#     }
# 
#     /* Saturate: '<S14>/Saturation1' */
#     if (atv_brake_pedalX1000 >= 1000) {
	.d2line		1565
	rlwinm		r3,r3,0,16,31		# rtb_Gain=r3 rtb_Gain=r3
	cmpi		0,0,r3,1000		# rtb_Gain=r3
	bc		1,0,.L4191	# lt
#       /* Gain: '<S14>/Gain' */
#       atv_brake_pedalX1000 = 1000U;
	.d2line		1567
.Llo692:
	diab.li		r0,1000
	sth		r0,atv_brake_pedalX1000@sdarx(r0)
	b		.L4191
.L4190:
#     }
# 
#     /* End of Saturate: '<S14>/Saturation1' */
#   } else {
#     /* Gain: '<S14>/Gain' incorporates:
#      *  Constant: '<S14>/Constant'
#      */
#     atv_brake_pedalX1000 = 0U;
	.d2line		1575
	diab.li		r0,0
	sth		r0,atv_brake_pedalX1000@sdarx(r0)
.L4191:
	.d2line		1581
	lis		r3,atvc_brakePedalOn@ha		# rtb_Gain=r3
#   }
# 
#   /* End of Switch: '<S14>/Switch' */
# 
#   /* Relay: '<S6>/Relay1' */
#   if (atv_brake_pedalX1000 >= (uint16_T)((uint32_T)atvc_brakePedalOn +
.Llo693:
	lis		r4,atvc_brakePedalHis@ha
	lhz		r0,atvc_brakePedalOn@l(r3)		# rtb_Gain=r3
	.d2line		1575
	lhz		r6,atv_brake_pedalX1000@sdarx(r0)
	lhz		r5,atvc_brakePedalHis@l(r4)
	se_add		r0,r5
	rlwinm		r0,r0,0,16,31
	se_cmp		r0,r6
	bc		1,1,.L4193	# gt
#        atvc_brakePedalHis)) {
#     ATV_DW.Relay1_Mode = true;
	.d2line		1583
	diab.li		r0,1
	stb		r0,43(r31)
	b		.L4194
.L4193:
#   } else {
#     if (atv_brake_pedalX1000 <= (uint16_T)((uint32_T)atvc_brakePedalOn -
	.d2line		1585
	lhz		r0,atvc_brakePedalOn@l(r3)		# rtb_Gain=r3
	lhz		r3,atvc_brakePedalHis@l(r4)		# rtb_Gain=r3
	subf		r3,r3,r0		# rtb_Gain=r3 rtb_Gain=r3
	rlwinm		r3,r3,0,16,31		# rtb_Gain=r3 rtb_Gain=r3
	se_cmp		r3,r6		# rtb_Gain=r3
	bc		1,0,.L4194	# lt
#          atvc_brakePedalHis)) {
#       ATV_DW.Relay1_Mode = false;
	.d2line		1587
.Llo694:
	diab.li		r0,0
	stb		r0,43(r31)
.L4194:
#     }
#   }
# 
#   atv_brake_pedal_digital_in = ATV_DW.Relay1_Mode;
	.d2line		1591
	lbz		r3,43(r31)		# rtb_Gain=r3
	.d2line		1601
.Llo695:
	lbz		r0,atv_za3_StartBtn_din@sdarx(r0)
# 
#   /* End of Relay: '<S6>/Relay1' */
# 
#   /* Logic: '<S8>/Logical Operator3' incorporates:
#    *  Logic: '<S6>/Logical Operator'
#    *  Logic: '<S8>/Logical Operator1'
#    *  Logic: '<S8>/Logical Operator2'
#    *  Logic: '<S8>/Logical Operator4'
#    */
#   ATV_B.LogicalOperator3 = ((!atv_za3_StartBtn_din) && ((!atv_fwd_mode_in) &&
	stb		r3,atv_brake_pedal_digital_in@sdarx(r0)		# rtb_Gain=r3
	se_cmpi		r0,0
	bc		0,2,.L4392	# ne
	lbz		r0,atv_fwd_mode_in@sdarx(r0)
	se_cmpi		r0,0
	bc		0,2,.L4392	# ne
#     (!atv_rwd_mode_in)) && atv_brake_pedal_digital_in);
	.d2line		1602
	lbz		r0,atv_rwd_mode_in@sdarx(r0)
	se_cmpi		r0,0
	bc		0,2,.L4392	# ne
	e_andi.		r0,r3,255		# rtb_Gain=r3
	bc		0,2,.L4390	# ne
.L4392:
	.d2line		1601
	diab.li		r0,0
	b		.L4391
.L4390:
.Llo696:
	diab.li		r0,1
.L4391:
	stb		r0,109(r28)
	lis		r25,ATV_M@ha
	e_add16i		r25,r25,ATV_M@l
# 
#   /* RateTransition: '<Root>/Rate Transition4' */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		1605
	lwz		r3,0(r25)		# rtb_Gain=r3
.Llo697:
	lbz		r0,431(r3)		# rtb_Gain=r3
	se_cmpi		r0,0
	bc		1,2,.L4195	# eq
#     ATV_B.RateTransition4 = ATV_DW.RateTransition4_Buffer0;
	.d2line		1606
.Llo698:
	lbz		r0,44(r31)
	stb		r0,110(r28)
# 
#     /* RateTransition: '<Root>/Rate Transition5' */
#     ATV_B.RateTransition5 = ATV_DW.RateTransition5_Buffer0;
	.d2line		1609
	lbz		r0,45(r31)
	stb		r0,111(r28)
.L4195:
	lbz		r3,28(r31)		# rtb_Gain=r3
#   }
# 
#   /* End of RateTransition: '<Root>/Rate Transition4' */
# 
#   /* Chart: '<S8>/VSM' */
#   if (ATV_DW.temporalCounter_i1_ji < 127U) {
	.d2line		1615
.Llo699:
	cmpli		0,0,r3,127		# rtb_Gain=r3
	bc		0,0,.L4196	# ge
#     ATV_DW.temporalCounter_i1_ji++;
	.d2line		1616
	se_addi		r3,1		# rtb_Gain=r3 rtb_Gain=r3
	stb		r3,28(r31)		# rtb_Gain=r3
.L4196:
.Llo700:
	lbz		r3,29(r31)		# rtb_Gain=r3
#   }
# 
#   if (ATV_DW.temporalCounter_i2_j < 63U) {
	.d2line		1619
.Llo701:
	cmpli		0,0,r3,63		# rtb_Gain=r3
	bc		0,0,.L4197	# ge
#     ATV_DW.temporalCounter_i2_j++;
	.d2line		1620
	se_addi		r3,1		# rtb_Gain=r3 rtb_Gain=r3
	stb		r3,29(r31)		# rtb_Gain=r3
.L4197:
.Llo702:
	lbz		r3,30(r31)		# rtb_Gain=r3
#   }
# 
#   if (ATV_DW.temporalCounter_i3 < 255U) {
	.d2line		1623
.Llo703:
	cmpli		0,0,r3,255		# rtb_Gain=r3
	bc		0,0,.L4198	# ge
#     ATV_DW.temporalCounter_i3++;
	.d2line		1624
	se_addi		r3,1		# rtb_Gain=r3 rtb_Gain=r3
	stb		r3,30(r31)		# rtb_Gain=r3
.L4198:
	lbz		r0,21(r31)
#   }
# 
#   /* Gateway: loop_10ms/VSM */
#   /* During: loop_10ms/VSM */
#   if (ATV_DW.is_active_c3_ATV == 0U) {
	.d2line		1629
	e_andi.		r0,r0,255
	bc		0,2,.L4211	# ne
	.d2line		1635
.Llo704:
	diab.li		r0,4
	.d2line		1629
	diab.li		r3,1		# rtb_Gain=r3
#     /* Entry: loop_10ms/VSM */
#     ATV_DW.is_active_c3_ATV = 1U;
# 
#     /* Entry Internal: loop_10ms/VSM */
#     /* Transition: '<S37>:4' */
#     ATV_DW.is_c3_ATV = ATV_IN_SLEEP;
.Llo705:
	stb		r0,22(r31)
	stb		r3,21(r31)		# rtb_Gain=r3
# 
#     /* Entry 'SLEEP': '<S37>:9' */
#     atv_state_out = 1U;
	.d2line		1638
	diab.li		r0,0
	stb		r3,atv_state_out@sdarx(r0)		# rtb_Gain=r3
#     atv_sub_state_out = 0U;
	.d2line		1639
	stb		r0,atv_sub_state_out@sdarx(r0)
#     atv_wakelock_out = false;
	.d2line		1640
	stb		r0,atv_wakelock_out@sdarx(r0)
#     atv_en_dcdc_out = false;
	.d2line		1641
	stb		r0,atv_en_dcdc_out@sdarx(r0)
	b		.L4212
.L4211:
#   } else {
#     switch (ATV_DW.is_c3_ATV) {
	.d2line		1643
.Llo706:
	lbz		r6,22(r31)
	se_cmpi		r6,1
	bc		1,2,.L4200	# eq
	se_cmpi		r6,2
	bc		1,2,.L4204	# eq
	se_cmpi		r6,3
	bc		1,2,.L4205	# eq
	b		.L4209
.L4200:
#      case ATV_IN_INIT:
#       atv_state_out = 3U;
	.d2line		1650
	lbz		r3,atv_key_signal@sdarx(r0)		# rtb_Gain=r3
	.d2line		1645
.Llo707:
	diab.li		r5,3
	diab.li		r0,1
#       atv_wakelock_out = true;
	stb		r5,atv_state_out@sdarx(r0)
#       atv_en_dcdc_out = true;
	.d2line		1646
	stb		r0,atv_wakelock_out@sdarx(r0)
# 
#       /* During 'INIT': '<S37>:5' */
#       if (!atv_key_signal) {
	se_cmpi		r3,0		# rtb_Gain=r3
	.d2line		1647
	stb		r0,atv_en_dcdc_out@sdarx(r0)
	bc		0,2,.L4202	# ne
#         /* Transition: '<S37>:17' */
#         ATV_DW.is_c3_ATV = ATV_IN_PRE_SLEEP;
	.d2line		1652
.Llo708:
	diab.li		r0,0
	stb		r5,22(r31)
#         ATV_DW.temporalCounter_i1_ji = 0U;
	.d2line		1653
	stb		r0,28(r31)
# 
#         /* Entry 'PRE_SLEEP': '<S37>:3' */
#         atv_state_out = 2U;
	.d2line		1656
	diab.li		r3,2		# rtb_Gain=r3
.Llo709:
	stb		r3,atv_state_out@sdarx(r0)		# rtb_Gain=r3
#         atv_sub_state_out = 0U;
	.d2line		1657
	stb		r0,atv_sub_state_out@sdarx(r0)
	b		.L4212
.L4202:
#       } else {
#         if (ATV_DW.temporalCounter_i1_ji >= 100U) {
	.d2line		1659
.Llo710:
	lbz		r3,28(r31)		# rtb_Gain=r3
.Llo711:
	cmpli		0,0,r3,100		# rtb_Gain=r3
	bc		1,0,.L4212	# lt
#           /* Transition: '<S37>:22' */
#           ATV_DW.is_c3_ATV = ATV_IN_KEY_ON;
	.d2line		1661
.Llo712:
	diab.li		r3,2		# rtb_Gain=r3
	.d2line		1667
.Llo713:
	diab.li		r4,769
# 
#           /* Entry 'KEY_ON': '<S37>:20' */
#           /* Entry Internal 'KEY_ON': '<S37>:20' */
#           /* Entry Internal 'HV_CTRL': '<S37>:34' */
#           /* Transition: '<S37>:82' */
#           ATV_DW.is_HV_CTRL = ATV_IN_HV_OFF;
	stb		r3,22(r31)		# rtb_Gain=r3
	sth		r4,24(r31)
	diab.li		r3,0		# rtb_Gain=r3
# 
#           /* Entry 'HV_OFF': '<S37>:52' */
#           /* Entry Internal 'CHG_CTRL': '<S37>:68' */
#           /* Transition: '<S37>:67' */
#           ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
#           ATV_DW.temporalCounter_i3 = 0U;
	.d2line		1673
	stb		r3,30(r31)		# rtb_Gain=r3
# 
#           /* Entry 'CHG_OFF': '<S37>:62' */
#           ATV_B.chg_ctrl_out = false;
#           ATV_B.hvm_ctrl_out = false;
	.d2line		1691
	diab.li		r4,4
	.d2line		1677
	stb		r3,151(r28)		# rtb_Gain=r3
# 
#           /* Entry Internal 'HEATER_CTRL': '<S37>:72' */
#           /* Transition: '<S37>:74' */
#           ATV_DW.is_HEATER_CTRL = ATV_IN_HEATER_OFF;
	.d2line		1676
	stb		r3,152(r28)		# rtb_Gain=r3
# 
#           /* Entry 'HEATER_OFF': '<S37>:69' */
#           ATV_B.heater_ctrl_out = false;
	.d2line		1681
	stb		r0,26(r31)
# 
#           /* Entry Internal 'DRIVE_ENABLE': '<S37>:85' */
#           /* Transition: '<S37>:91' */
#           ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;
	.d2line		1684
	stb		r3,153(r28)		# rtb_Gain=r3
# 
#           /* Entry 'IDLE': '<S37>:87' */
#           atv_state_out = 4U;
	.d2line		1688
	stb		r5,23(r31)
	.d2line		1691
	stb		r4,atv_state_out@sdarx(r0)
#           ATV_B.en_inv_rear_out = false;
	.d2line		1692
	sth		r3,154(r28)		# rtb_Gain=r3
#           ATV_B.en_inv_front_out = false;
#           ATV_B.en_inv_gen_out = false;
	.d2line		1694
	stb		r3,156(r28)		# rtb_Gain=r3
# 
#           /* Entry Internal 'STARTTRIGGER': '<S37>:119' */
#           /* Transition: '<S37>:115' */
#           ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_OFF;
	.d2line		1698
	stb		r0,27(r31)
	.d2line		1701
	b		.L4212
.L4204:
#         }
#       }
#       break;
# 
#      case ATV_IN_KEY_ON:
#       ATV_KEY_ON();
	.d2line		1704
.Llo714:
	bl		ATV_KEY_ON
	.d2line		1705
	b		.L4212
.L4205:
#       break;
# 
#      case ATV_IN_PRE_SLEEP:
#       atv_state_out = 2U;
	.d2line		1711
	lbz		r0,atv_key_signal@sdarx(r0)
	.d2line		1708
	diab.li		r3,2		# rtb_Gain=r3
# 
#       /* During 'PRE_SLEEP': '<S37>:3' */
#       if (atv_key_signal) {
.Llo715:
	stb		r3,atv_state_out@sdarx(r0)		# rtb_Gain=r3
	se_cmpi		r0,0
	bc		1,2,.L4207	# eq
	.d2line		1711
.Llo716:
	diab.li		r0,1
#         /* Transition: '<S37>:19' */
#         ATV_DW.is_c3_ATV = ATV_IN_INIT;
	.d2line		1713
	diab.li		r3,0		# rtb_Gain=r3
.Llo717:
	stb		r0,22(r31)
#         ATV_DW.temporalCounter_i1_ji = 0U;
	.d2line		1717
	diab.li		r4,3
# 
#         /* Entry 'INIT': '<S37>:5' */
#         atv_state_out = 3U;
	.d2line		1714
	stb		r3,28(r31)		# rtb_Gain=r3
	stb		r4,atv_state_out@sdarx(r0)
#         atv_sub_state_out = 0U;
	.d2line		1718
	stb		r3,atv_sub_state_out@sdarx(r0)		# rtb_Gain=r3
#         atv_wakelock_out = true;
	.d2line		1719
	stb		r0,atv_wakelock_out@sdarx(r0)
#         atv_en_dcdc_out = true;
	.d2line		1720
	stb		r0,atv_en_dcdc_out@sdarx(r0)
	b		.L4212
.L4207:
#       } else {
#         if (ATV_DW.temporalCounter_i1_ji >= 25U) {
	.d2line		1722
.Llo718:
	lbz		r0,28(r31)
	se_cmpli	r0,25
	bc		1,0,.L4212	# lt
#           /* Transition: '<S37>:16' */
#           ATV_DW.is_c3_ATV = ATV_IN_SLEEP;
	.d2line		1724
	diab.li		r0,4
	.d2line		1727
	diab.li		r3,1		# rtb_Gain=r3
# 
#           /* Entry 'SLEEP': '<S37>:9' */
#           atv_state_out = 1U;
.Llo719:
	stb		r0,22(r31)
	diab.li		r0,0
	stb		r3,atv_state_out@sdarx(r0)		# rtb_Gain=r3
#           atv_sub_state_out = 0U;
	.d2line		1728
	stb		r0,atv_sub_state_out@sdarx(r0)
#           atv_wakelock_out = false;
	.d2line		1729
	stb		r0,atv_wakelock_out@sdarx(r0)
#           atv_en_dcdc_out = false;
	.d2line		1730
	stb		r0,atv_en_dcdc_out@sdarx(r0)
	.d2line		1733
	b		.L4212
.L4209:
#         }
#       }
#       break;
# 
#      default:
#       atv_state_out = 1U;
	.d2line		1741
.Llo720:
	lbz		r3,atv_key_signal@sdarx(r0)		# rtb_Gain=r3
	.d2line		1736
.Llo721:
	diab.li		r4,1
	diab.li		r0,0
#       atv_wakelock_out = false;
	stb		r4,atv_state_out@sdarx(r0)
#       atv_en_dcdc_out = false;
	.d2line		1737
	stb		r0,atv_wakelock_out@sdarx(r0)
# 
#       /* During 'SLEEP': '<S37>:9' */
#       if (atv_key_signal) {
	se_cmpi		r3,0		# rtb_Gain=r3
	.d2line		1738
	stb		r0,atv_en_dcdc_out@sdarx(r0)
	bc		1,2,.L4212	# eq
#         /* Transition: '<S37>:12' */
#         ATV_DW.is_c3_ATV = ATV_IN_INIT;
	.d2line		1743
.Llo722:
	stb		r4,22(r31)
#         ATV_DW.temporalCounter_i1_ji = 0U;
	.d2line		1747
	diab.li		r3,3		# rtb_Gain=r3
# 
#         /* Entry 'INIT': '<S37>:5' */
#         atv_state_out = 3U;
	.d2line		1744
.Llo723:
	stb		r0,28(r31)
	stb		r3,atv_state_out@sdarx(r0)		# rtb_Gain=r3
#         atv_sub_state_out = 0U;
	.d2line		1748
	stb		r0,atv_sub_state_out@sdarx(r0)
#         atv_wakelock_out = true;
	.d2line		1749
	stb		r4,atv_wakelock_out@sdarx(r0)
#         atv_en_dcdc_out = true;
	.d2line		1750
	stb		r4,atv_en_dcdc_out@sdarx(r0)
.L4212:
#       }
#       break;
#     }
#   }
# 
#   /* End of Chart: '<S8>/VSM' */
# 
#   /* S-Function (psc_cpu_loading): '<S1>/psc_CpuLoading' */
#   /* S-Function Block: <S1>/psc_CpuLoading
#    * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   ATV_B.psc_CpuLoading = psc_get_cpu_loading();
	.d2line		1762
.Llo724:
	bl		psc_get_cpu_loading
.Llo725:
	rlwinm		r3,r3,0,24,31		# rtb_Gain=r3 rtb_Gain=r3
	efscfui		r7,r3		# rtb_Gain=r3
	stw		r7,4(r28)
	.section	.text_vle
.L5520:
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
	.d2line		1804
.Llo726:
	lha		r0,pcx_CANdb_TransmitMessage_msg_handle@sdarx(r0)
	e_cmph16i	r0,-1
	bc		1,2,.L4222	# eq
#       pcx_CANdb_TransmitMessage_in_port_buffer[0] = atv_state_out;
	.d2line		1805
	lbz		r5,atv_state_out@sdarx(r0)
	.d2line		1806
	diab.addi		r0,r1,348
	.d2line		1808
	lbz		r3,atv_sub_state_out@sdarx(r0)		# rtb_Gain=r3
#       pcx_CANdb_TransmitMessage_in_port_ptr[0] =
	.d2line		1809
.Llo727:
	diab.addi		r4,r1,352
	efscfui		r6,r5
#         &pcx_CANdb_TransmitMessage_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage_in_port_buffer[1] = atv_sub_state_out;
	.d2line		1814
	lbz		r9,atv_wakelock_out@sdarx(r0)
	.d2line		1817
	lbz		r8,atv_en_dcdc_out@sdarx(r0)
	efscfui		r10,r3		# rtb_Gain=r3
#       pcx_CANdb_TransmitMessage_in_port_ptr[1] =
	.d2line		1805
	stw		r6,348(r1)
	.d2line		1811
	stw		r7,356(r1)
#         &pcx_CANdb_TransmitMessage_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage_in_port_buffer[2] = ATV_B.psc_CpuLoading;
	.d2line		1812
	diab.addi		r5,r1,356
#       pcx_CANdb_TransmitMessage_in_port_ptr[2] =
	.d2line		1814
	efscfui		r9,r9
	.d2line		1820
	lbz		r3,atv_runLed_out@sdarx(r0)		# rtb_Gain=r3
#         &pcx_CANdb_TransmitMessage_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage_in_port_buffer[3] = atv_wakelock_out;
	.d2line		1806
	stw		r0,372(r1)
	.d2line		1815
	diab.addi		r6,r1,360
	.d2line		1817
	efscfui		r8,r8
#       pcx_CANdb_TransmitMessage_in_port_ptr[3] =
	.d2line		1818
	diab.addi		r7,r1,364
	.d2line		1808
	stw		r10,352(r1)
#         &pcx_CANdb_TransmitMessage_in_port_buffer[3];
#       pcx_CANdb_TransmitMessage_in_port_buffer[4] = atv_en_dcdc_out;
	.d2line		1821
	diab.addi		r0,r1,368
	stw		r8,364(r1)
	.d2line		1814
	stw		r9,360(r1)
#       pcx_CANdb_TransmitMessage_in_port_ptr[4] =
	.d2line		1823
	lis		r10,pcx_CANdb_TransmitMessage_field_eng_min.4218@ha
	.d2line		1820
	efscfui		r8,r3		# rtb_Gain=r3
#         &pcx_CANdb_TransmitMessage_in_port_buffer[4];
#       pcx_CANdb_TransmitMessage_in_port_buffer[5] = atv_runLed_out;
	.d2line		1812
	stw		r5,380(r1)
	.d2line		1815
	stw		r6,384(r1)
	lis		r9,pcx_CANdb_TransmitMessage_field_order.4217@ha
	lis		r3,pcx_CANdb_TransmitMessage_field_eng_max.4219@ha		# rtb_Gain=r3
	stw		r8,368(r1)
#       pcx_CANdb_TransmitMessage_in_port_ptr[5] =
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage_field_eng_max.4219@l		# rtb_Gain=r3 rtb_Gain=r3
	.d2line		1818
	stw		r7,388(r1)
	.d2line		1823
	stw		r3,8(r1)		# rtb_Gain=r3
#         &pcx_CANdb_TransmitMessage_in_port_buffer[5];
#       pcx_vdb_pack_msg((const F32 * const *)
	lis		r5,pcx_CANdb_TransmitMessage_field_start_pos.4213@ha
	.d2line		1809
	stw		r4,376(r1)
	lis		r6,pcx_CANdb_TransmitMessage_field_width.4214@ha
	lis		r3,pcx_CANdb_TransmitMessage_field_scale.4220@ha		# rtb_Gain=r3
	.d2line		1821
	stw		r0,392(r1)
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage_field_scale.4220@l		# rtb_Gain=r3 rtb_Gain=r3
	lis		r8,pcx_CANdb_TransmitMessage_field_valtype.4216@ha
	stw		r3,12(r1)		# rtb_Gain=r3
	lis		r7,pcx_CANdb_TransmitMessage_field_is_signed.4215@ha
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage_field_eng_min.4218@l
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage_field_order.4217@l
	lis		r3,pcx_CANdb_TransmitMessage_field_offset.4221@ha		# rtb_Gain=r3
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage_field_start_pos.4213@l
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage_field_offset.4221@l		# rtb_Gain=r3 rtb_Gain=r3
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage_field_width.4214@l
	stw		r3,16(r1)		# rtb_Gain=r3
	diab.addi		r4,r1,132
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage_field_valtype.4216@l
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage_field_is_signed.4215@l
	diab.li		r3,0		# rtb_Gain=r3
	stw		r3,20(r1)		# rtb_Gain=r3
	diab.li		r3,1		# rtb_Gain=r3
	stw		r3,24(r1)		# rtb_Gain=r3
	diab.li		r3,6		# rtb_Gain=r3
	stw		r3,28(r1)		# rtb_Gain=r3
	diab.addi		r3,r1,372		# rtb_Gain=r3
.Llo728:
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
	.d2line		1836
	lha		r3,pcx_CANdb_TransmitMessage_msg_handle@sdarx(r0)		# rtb_Gain=r3
	diab.addi		r4,r1,132
	bl		pcx_transmit
.Llo979:
	b		.L4223
.L4222:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		1839
.Llo980:
	diab.li		r3,0		# retval=r3
.L4223:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage = !retval;
	.d2line		1842
.Llo981:
	rlwinm		r0,r3,0,24,31		# retval=r3
	cntlzw		r0,r0
	diab.srwi		r0,5
	stb		r0,112(r28)
	.section	.text_vle
.L5521:
.Llo982:
	lwz		r5,0(r25)
#   }
# 
#   /* RateTransition: '<S1>/Rate Transition4' incorporates:
#    *  RateTransition: '<Root>/Rate Transition10'
#    *  RateTransition: '<Root>/Rate Transition6'
#    *  RateTransition: '<Root>/Rate Transition7'
#    */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		1850
	lbz		r0,431(r5)
	se_cmpi		r0,0
	bc		1,2,.L4224	# eq
#     ATV_B.RateTransition4_b = ATV_B.hvm_ctrl_out;
	.d2line		1854
	lbz		r0,150(r28)
	.d2line		1851
	lbz		r3,151(r28)		# retval=r3
# 
#     /* RateTransition: '<S1>/Rate Transition' */
#     ATV_B.RateTransition = ATV_B.hvp_ctrl_out;
.Llo983:
	stb		r0,114(r28)
	stb		r3,113(r28)		# retval=r3
# 
#     /* RateTransition: '<S1>/Rate Transition1' */
#     ATV_B.RateTransition1 = ATV_B.chg_ctrl_out;
	.d2line		1860
	lbz		r0,153(r28)
	.d2line		1857
	lbz		r3,152(r28)		# retval=r3
# 
#     /* RateTransition: '<S1>/Rate Transition2' */
#     ATV_B.RateTransition2 = ATV_B.heater_ctrl_out;
	stb		r0,116(r28)
	stb		r3,115(r28)		# retval=r3
#     ATV_B.RateTransition6 = ATV_DW.RateTransition6_Buffer0;
	.d2line		1861
	lbz		r0,14(r31)
	stb		r0,94(r28)
#     ATV_B.RateTransition7 = ATV_DW.RateTransition7_Buffer0;
	.d2line		1862
	lbz		r0,15(r31)
	stb		r0,95(r28)
#     ATV_B.RateTransition10 = ATV_DW.RateTransition10_Buffer0;
	.d2line		1863
	lbz		r0,16(r31)
	stb		r0,96(r28)
.L4224:
#   }
# 
#   /* End of RateTransition: '<S1>/Rate Transition4' */
# 
#   /* Logic: '<S29>/Logical Operator' incorporates:
#    *  Constant: '<S29>/atvc_socLimitSave'
#    *  Constant: '<S8>/state_Const1'
#    *  RelationalOperator: '<S29>/Relational Operator12'
#    */
#   rtb_Compare = (80 <= atvc_socLimitSave);
	.d2line		1873
.Llo984:
	lis		r3,atvc_socLimitSave@ha		# retval=r3
	.d2line		1878
.Llo985:
	lis		r6,atvc_maxTempMotor@ha
	lbz		r0,atvc_socLimitSave@l(r3)		# retval=r3
	lbz		r4,96(r28)
	lbz		r6,atvc_maxTempMotor@l(r6)
	cmpi		0,0,r0,80
	mfcr		r0
# 
#   /* RelationalOperator: '<S29>/Relational Operator4' incorporates:
#    *  Constant: '<S29>/atvc_maxTempMotor'
#    */
#   ATV_B.RelationalOperator4 = (ATV_B.RateTransition10 > atvc_maxTempMotor);
	.d2line		1883
	lis		r3,atvc_minTempMotor@ha		# retval=r3
	se_cmp		r6,r4
	rlwinm		r6,r0,1,31,31
	mfcr		r0
	xori		r8,r6,1		# rtb_Compare=r8
.Llo881:
	se_srwi		r0,31
# 
#   /* RelationalOperator: '<S29>/Relational Operator5' incorporates:
#    *  Constant: '<S29>/atvc_minTempMotor'
#    */
#   ATV_B.RelationalOperator5 = (ATV_B.RateTransition10 < atvc_minTempMotor);
	stb		r0,118(r28)
	lbz		r0,atvc_minTempMotor@l(r3)		# retval=r3
	se_cmp		r0,r4
	mfcr		r0
	rlwinm		r0,r0,2,31,31
	stb		r0,119(r28)
# 
#   /* RateTransition: '<Root>/Rate Transition8' incorporates:
#    *  RateTransition: '<Root>/Rate Transition9'
#    */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		1888
	lbz		r0,431(r5)
	se_cmpi		r0,0
	bc		1,2,.L4225	# eq
#     ATV_B.RateTransition8 = ATV_DW.RateTransition8_Buffer0;
	.d2line		1889
.Llo986:
	lbz		r0,17(r31)
	stb		r0,97(r28)
#     ATV_B.RateTransition9 = ATV_DW.RateTransition9_Buffer0;
	.d2line		1890
	lbz		r0,18(r31)
	stb		r0,98(r28)
.L4225:
	.d2line		1898
	lis		r3,atvc_maxTempMotor@ha		# retval=r3
#   }
# 
#   /* End of RateTransition: '<Root>/Rate Transition8' */
# 
#   /* RelationalOperator: '<S29>/Relational Operator6' incorporates:
#    *  Constant: '<S29>/atvc_maxTempMotor'
#    */
#   RelationalOperator6 = (ATV_B.RateTransition8 > atvc_maxTempMotor);
	.d2line		1890
.Llo987:
	lbz		r26,97(r28)		# rtb_Gain=r26
.Llo729:
	lbz		r0,atvc_maxTempMotor@l(r3)		# retval=r3
	lbz		r7,98(r28)
	.d2line		1903
	lis		r3,atvc_maxTempInv@ha		# retval=r3
	se_cmp		r0,r26		# rtb_Gain=r26
	lbz		r3,atvc_maxTempInv@l(r3)		# retval=r3 retval=r3
# 
#   /* RelationalOperator: '<S29>/Relational Operator8' incorporates:
#    *  Constant: '<S29>/atvc_maxTempInv'
#    */
#   RelationalOperator8 = (ATV_B.RateTransition9 > atvc_maxTempInv);
	mfcr		r24		# RelationalOperator6=r24
	.d2line		1906
.Llo897:
	lbz		r0,431(r5)
	se_srwi		r24,31		# RelationalOperator6=r24 RelationalOperator6=r24
	se_cmp		r3,r7		# retval=r3
	mfcr		r9		# RelationalOperator8=r9
# 
#   /* RateTransition: '<Root>/Rate Transition11' */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
.Llo922:
	rlwinm		r9,r9,1,31,31		# RelationalOperator8=r9 RelationalOperator8=r9
	se_cmpi		r0,0
	bc		1,2,.L4226	# eq
#     ATV_B.RateTransition11 = ATV_DW.RateTransition11_Buffer0;
	.d2line		1907
.Llo988:
	lbz		r0,19(r31)
	stb		r0,99(r28)
.L4226:
	lhz		r3,12(r31)		# retval=r3
#   }
# 
#   /* End of RateTransition: '<Root>/Rate Transition11' */
# 
#   /* Chart: '<S38>/PUMP LOGIC' incorporates:
#    *  Constant: '<S29>/atvc_maxTempInv'
#    *  Constant: '<S29>/atvc_maxTempMotor'
#    *  Constant: '<S29>/atvc_minTempInv'
#    *  Constant: '<S29>/atvc_minTempMotor'
#    *  RelationalOperator: '<S29>/Relational Operator'
#    *  RelationalOperator: '<S29>/Relational Operator1'
#    *  RelationalOperator: '<S29>/Relational Operator2'
#    *  RelationalOperator: '<S29>/Relational Operator3'
#    *  RelationalOperator: '<S29>/Relational Operator7'
#    *  RelationalOperator: '<S29>/Relational Operator9'
#    */
#   if (ATV_DW.temporalCounter_i1_j < 65535U) {
	.d2line		1924
.Llo989:
	cmpli		0,0,r3,65535		# retval=r3
	bc		0,0,.L4227	# ge
#     ATV_DW.temporalCounter_i1_j++;
	.d2line		1925
	se_addi		r3,1		# retval=r3 retval=r3
	sth		r3,12(r31)		# retval=r3
.L4227:
#   }
# 
#   /* Gateway: loop_10ms/COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
#   /* During: loop_10ms/COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
#   if (ATV_DW.is_active_c6_ATV == 0U) {
	.d2line		1930
	lbz		r0,38(r31)
	se_cmpi		r0,0
	bc		0,2,.L4248	# ne
	.d2line		1932
.Llo990:
	diab.li		r0,257
#     /* Entry: loop_10ms/COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
#     ATV_DW.is_active_c6_ATV = 1U;
# 
#     /* Entry Internal: loop_10ms/COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
#     /* Entry 'PumpALogic': '<S40>:47' */
#     ATV_DW.PumpStA = 0.0;
# 
#     /* Entry Internal 'PumpALogic': '<S40>:47' */
#     /* Transition: '<S40>:56' */
#     ATV_DW.is_PumpALogic = ATV_IN_Off;
# 
#     /* Entry 'Off': '<S40>:63' */
#     PumpACtrl = false;
# 
#     /* Entry 'PumpBLogic': '<S40>:14' */
#     ATV_DW.PumpStB = 0.0;
	.d2line		1930
	diab.li		r6,0		# PumpBOn=r6
.Llo930:
	sth		r0,38(r31)
# 
#     /* Entry Internal 'PumpBLogic': '<S40>:14' */
#     /* Transition: '<S40>:27' */
#     ATV_DW.is_PumpBLogic = ATV_IN_Off;
#     ATV_DW.temporalCounter_i1_j = 0U;
	.d2line		1943
	mr		r10,r6		# PumpACtrl=r10 PumpACtrl=r6
	.d2line		1946
	stw		r6,0(r31)		# PumpBOn=r6
	.d2line		1950
	diab.li		r0,1
	.d2line		1936
	stw		r6,4(r31)		# PumpBOn=r6
	.d2line		1951
	sth		r6,12(r31)		# PumpBOn=r6
# 
#     /* Entry 'Off': '<S40>:24' */
#     atv_dbg_pumpB_out = false;
	stb		r0,40(r31)
	.d2line		1954
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)		# PumpBOn=r6
#     PumpBOn = 0;
	.d2line		1955
	b		.L4249
.L4248:
.Llo931:
	lbz		r0,39(r31)
	lwz		r3,4(r31)		# retval=r3
#   } else {
#     /* During 'PumpALogic': '<S40>:47' */
#     if (ATV_DW.is_PumpALogic == ATV_IN_Off) {
	.d2line		1958
.Llo991:
	se_cmpi		r0,1
	bc		0,2,.L4232	# ne
#       PumpACtrl = false;
# 
#       /* During 'Off': '<S40>:63' */
#       if (ATV_DW.PumpStA == 1.0) {
	.d2line		1962
	e_lis		r0,16256
	efscmpeq		1,r3,r0		# retval=r3
	bc		0,5,.L4228		# ne
.Llo992:
	diab.li		r0,2
	.d2line		1967
	diab.li		r10,1		# PumpACtrl=r10
#         /* Transition: '<S40>:116' */
#         ATV_DW.is_PumpALogic = ATV_IN_Run;
# 
#         /* Entry 'Run': '<S40>:54' */
#         PumpACtrl = true;
	.d2line		1962
.Llo932:
	stb		r0,39(r31)
	b		.L4233
.L4228:
#       } else {
#         ATV_DW.PumpStA = ATV_On(ATV_B.RateTransition7 > atvc_maxTempInv,
	.d2line		1969
.Llo933:
	lis		r3,atvc_maxTempInv@ha		# retval=r3
.Llo993:
	lbz		r6,95(r28)
	lbz		r3,atvc_maxTempInv@l(r3)		# retval=r3 retval=r3
	lis		r4,atvc_maxTempMotor@ha
	lbz		r0,94(r28)
	.d2line		1959
	diab.li		r10,0		# PumpACtrl=r10
.Llo934:
	lbz		r4,atvc_maxTempMotor@l(r4)
	se_cmp		r6,r3		# retval=r3
	mfcr		r3		# retval=r3
	se_cmp		r0,r4
	rlwinm		r3,r3,2,31,31		# retval=r3 retval=r3
.Llo994:
	mfcr		r4
	rlwinm		r4,r4,2,31,31
	bl		ATV_On
.Llo995:
	stw		r3,4(r31)		# retval=r3
	b		.L4233
.L4232:
#           ATV_B.RateTransition6 > atvc_maxTempMotor);
#       }
#     } else {
#       PumpACtrl = true;
# 
#       /* During 'Run': '<S40>:54' */
#       if (ATV_DW.PumpStA == 0.0) {
	.d2line		1976
.Llo935:
	diab.li		r10,0
.Llo936:
	efscmpeq		1,r3,r10		# retval=r3
	bc		0,5,.L4230		# ne
.Llo996:
	diab.li		r0,1
#         /* Transition: '<S40>:62' */
#         ATV_DW.is_PumpALogic = ATV_IN_Off;
# 
#         /* Entry 'Off': '<S40>:63' */
#         PumpACtrl = false;
	stb		r0,39(r31)
	.d2line		1981
	b		.L4233
.L4230:
#       } else {
#         ATV_DW.PumpStA = ATV_Off(ATV_B.RateTransition7 < atvc_minTempInv,
	.d2line		1983
	lis		r3,atvc_minTempInv@ha		# retval=r3
.Llo997:
	lbz		r6,95(r28)
	lbz		r3,atvc_minTempInv@l(r3)		# retval=r3 retval=r3
	lis		r4,atvc_minTempMotor@ha
	lbz		r0,94(r28)
	.d2line		1973
	diab.li		r10,1		# PumpACtrl=r10
	lbz		r4,atvc_minTempMotor@l(r4)
	se_cmp		r6,r3		# retval=r3
	mfcr		r3		# retval=r3
	se_cmp		r0,r4
	se_srwi		r3,31		# retval=r3 retval=r3
.Llo998:
	mfcr		r4
	se_srwi		r4,31
	bl		ATV_Off
.Llo999:
	stw		r3,4(r31)		# retval=r3
.L4233:
#           ATV_B.RateTransition6 < atvc_minTempMotor);
#       }
#     }
# 
#     /* During 'PumpBLogic': '<S40>:14' */
#     switch (ATV_DW.is_PumpBLogic) {
	.d2line		1989
.Llo1000:
	lbz		r6,40(r31)
	se_cmpi		r6,1
	bc		1,2,.L4235	# eq
	se_cmpi		r6,2
	bc		1,2,.L4240	# eq
	b		.L4243
.L4235:
#      case ATV_IN_Off:
#       atv_dbg_pumpB_out = false;
	.d2line		1991
	diab.li		r6,0
	.d2line		1995
.Llo940:
	e_lis		r3,16256		# retval=r3
#       PumpBOn = 0;
# 
#       /* During 'Off': '<S40>:24' */
#       if (ATV_DW.PumpStB == 1.0) {
.Llo1001:
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)
	lwz		r0,0(r31)
	efscmpeq		1,r0,r3		# retval=r3
	bc		0,5,.L4238		# ne
#         /* Transition: '<S40>:29' */
#         ATV_DW.is_PumpBLogic = ATV_IN_Run;
	.d2line		1997
.Llo730:
	diab.li		r0,2
	.d2line		2000
	diab.li		r6,1		# PumpBOn=r6
# 
#         /* Entry 'Run': '<S40>:28' */
#         atv_dbg_pumpB_out = true;
	stb		r0,40(r31)
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)		# PumpBOn=r6
#         PumpBOn = 1;
	.d2line		2001
	b		.L4249
.L4238:
	lhz		r0,12(r31)
#       } else if (ATV_DW.temporalCounter_i1_j >= 50000U) {
	.d2line		2002
	cmpli		0,0,r0,50000
	bc		1,0,.L4236	# lt
	sth		r6,12(r31)		# PumpBOn=r6
#         /* Transition: '<S40>:32' */
#         ATV_DW.is_PumpBLogic = ATV_IN_Run60sec;
	.d2line		2004
	diab.li		r0,3
	stb		r0,40(r31)
#         ATV_DW.temporalCounter_i1_j = 0U;
# 
#         /* Entry 'Run60sec': '<S40>:22' */
#         atv_dbg_pumpB_out = true;
	.d2line		2008
	diab.li		r6,1		# PumpBOn=r6
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)		# PumpBOn=r6
#         PumpBOn = 1;
	.d2line		2009
	b		.L4249
.L4236:
#       } else {
#         ATV_DW.PumpStB = ATV_On(RelationalOperator8, RelationalOperator6);
	.d2line		2011
	mr		r3,r9		# RelationalOperator8=r3 RelationalOperator8=r9
	mr		r4,r24		# RelationalOperator6=r4 RelationalOperator6=r24
	bl		ATV_On
	stw		r3,0(r31)		# RelationalOperator8=r3
	.d2line		2013
	b		.L4249
.L4240:
#       }
#       break;
# 
#      case ATV_IN_Run:
#       atv_dbg_pumpB_out = true;
	.d2line		2016
.Llo731:
	diab.li		r6,1
	.d2line		2020
.Llo941:
	diab.li		r0,0
#       PumpBOn = 1;
# 
#       /* During 'Run': '<S40>:28' */
#       if (ATV_DW.PumpStB == 0.0) {
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)
	lwz		r3,0(r31)		# retval=r3
.Llo1002:
	efscmpeq		1,r3,r0		# retval=r3
	bc		0,5,.L4241		# ne
#         /* Transition: '<S40>:25' */
#         ATV_DW.is_PumpBLogic = ATV_IN_Off;
#         ATV_DW.temporalCounter_i1_j = 0U;
	.d2line		2023
.Llo898:
	sth		r0,12(r31)		# PumpBOn=r0
	.d2line		2022
	stb		r6,40(r31)
# 
#         /* Entry 'Off': '<S40>:24' */
#         atv_dbg_pumpB_out = false;
	.d2line		2026
	stb		r0,atv_dbg_pumpB_out@sdarx(r0)		# PumpBOn=r0
	diab.li		r6,0
#         PumpBOn = 0;
	.d2line		2027
	b		.L4249
.L4241:
#       } else {
#         ATV_DW.PumpStB = ATV_Off(ATV_B.RateTransition9 < atvc_minTempInv,
	.d2line		2029
	lis		r3,atvc_minTempInv@ha		# retval=r3
.Llo1003:
	lis		r4,atvc_minTempMotor@ha
	lbz		r0,atvc_minTempInv@l(r3)		# retval=r3
	lbz		r4,atvc_minTempMotor@l(r4)
	se_cmp		r0,r7
	mfcr		r3		# retval=r3
	se_cmp		r4,r26		# rtb_Gain=r26
	rlwinm		r3,r3,2,31,31		# retval=r3 retval=r3
.Llo1004:
	mfcr		r4
	rlwinm		r4,r4,2,31,31
	bl		ATV_Off
.Llo1005:
	stw		r3,0(r31)		# retval=r3
	.d2line		2032
	b		.L4249
.L4243:
#           ATV_B.RateTransition8 < atvc_minTempMotor);
#       }
#       break;
# 
#      default:
#       atv_dbg_pumpB_out = true;
	.d2line		2035
.Llo732:
	diab.li		r6,1		# PumpBOn=r6
	.d2line		2039
.Llo942:
	e_lis		r3,16256		# retval=r3
#       PumpBOn = 1;
# 
#       /* During 'Run60sec': '<S40>:22' */
#       if (ATV_DW.PumpStB == 1.0) {
.Llo1006:
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)		# PumpBOn=r6
	lwz		r0,0(r31)
	efscmpeq		1,r0,r3		# retval=r3
	bc		0,5,.L4246		# ne
#         /* Transition: '<S40>:31' */
#         /* Transition: '<S40>:34' */
#         ATV_DW.is_PumpBLogic = ATV_IN_Run;
	.d2line		2042
.Llo1007:
	diab.li		r0,2
	stb		r0,40(r31)
# 
#         /* Entry 'Run': '<S40>:28' */
#         atv_dbg_pumpB_out = true;
	.d2line		2045
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)		# PumpBOn=r6
	b		.L4249
.L4246:
	lhz		r0,12(r31)
#       } else if (ATV_DW.temporalCounter_i1_j >= 9000U) {
	.d2line		2046
	cmpli		0,0,r0,9000
	bc		1,0,.L4244	# lt
	.d2line		2048
	stb		r6,40(r31)		# PumpBOn=r6
	.d2line		2046
	diab.li		r6,0		# PumpBOn=r6
#         /* Transition: '<S40>:26' */
#         ATV_DW.is_PumpBLogic = ATV_IN_Off;
	sth		r6,12(r31)		# PumpBOn=r6
#         ATV_DW.temporalCounter_i1_j = 0U;
# 
#         /* Entry 'Off': '<S40>:24' */
#         atv_dbg_pumpB_out = false;
	.d2line		2052
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)		# PumpBOn=r6
#         PumpBOn = 0;
	.d2line		2053
	b		.L4249
.L4244:
#       } else {
#         ATV_DW.PumpStB = ATV_On(RelationalOperator8, RelationalOperator6);
	.d2line		2055
	mr		r3,r9		# RelationalOperator8=r3 RelationalOperator8=r9
	mr		r4,r24		# RelationalOperator6=r4 RelationalOperator6=r24
	bl		ATV_On
	stw		r3,0(r31)		# RelationalOperator8=r3
.L4249:
#       }
#       break;
#     }
#   }
# 
#   /* End of Chart: '<S38>/PUMP LOGIC' */
# 
#   /* Switch: '<S38>/Switch' */
#   ATV_B.Switch = ((!rtb_Compare) && PumpACtrl);
	.d2line		2064
.Llo899:
	e_andi.		r0,r8,255		# PumpBOn=r0 rtb_Compare=r8
	bc		0,2,.L4896	# ne
	cmpi		0,0,r10,0		# PumpACtrl=r10
	bc		0,2,.L4393	# ne
.L4896:
	diab.li		r0,0		# PumpBOn=r0
	b		.L4394
.L4393:
.Llo937:
	diab.li		r0,1		# PumpBOn=r0
.L4394:
.Llo938:
	stb		r0,120(r28)		# PumpBOn=r0
# 
#   /* RateTransition: '<S1>/Rate Transition3' */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		2067
	lbz		r3,431(r5)		# retval=r3
.Llo1008:
	se_cmpi		r3,0		# retval=r3
	bc		1,2,.L4250	# eq
#     ATV_B.RateTransition3 = ATV_B.Switch;
	.d2line		2068
.Llo1009:
	stb		r0,121(r28)		# PumpBOn=r0
# 
#     /* RateTransition: '<S1>/Rate Transition5' */
#     ATV_B.RateTransition5_g = atv_dbg_pumpB_out;
	.d2line		2071
	lbz		r0,atv_dbg_pumpB_out@sdarx(r0)		# PumpBOn=r0
	stb		r0,122(r28)		# PumpBOn=r0
# 
#     /* RateTransition: '<Root>/Rate Transition12' */
#     ATV_B.RateTransition12 = ATV_DW.RateTransition12_Buffer0;
	.d2line		2074
	lbz		r0,20(r31)		# PumpBOn=r0
	stb		r0,100(r28)		# PumpBOn=r0
.L4250:
	.d2line		2080
	lis		r3,atvc_tempSwitchOnFan@ha		# retval=r3
#   }
# 
#   /* End of RateTransition: '<S1>/Rate Transition3' */
# 
#   /* Relay: '<S39>/Relay1' */
#   if (ATV_B.RateTransition12 >= atvc_tempSwitchOnFan) {
	.d2line		2074
.Llo1010:
	lbz		r0,100(r28)		# PumpBOn=r0
	lbz		r3,atvc_tempSwitchOnFan@l(r3)		# retval=r3 retval=r3
	se_cmp		r3,r0		# retval=r3 PumpBOn=r0
	bc		1,1,.L4252	# gt
#     ATV_DW.Relay1_Mode_e = true;
	.d2line		2081
.Llo1011:
	diab.li		r3,1		# retval=r3
.Llo1012:
	stb		r3,46(r31)		# retval=r3
	b		.L4253
.L4252:
#   } else {
#     if (ATV_B.RateTransition12 <= atvc_tempSwitchOffFan) {
	.d2line		2083
.Llo1013:
	lis		r3,atvc_tempSwitchOffFan@ha		# retval=r3
.Llo1014:
	lbz		r3,atvc_tempSwitchOffFan@l(r3)		# retval=r3 retval=r3
	se_cmp		r3,r0		# retval=r3 PumpBOn=r0
	bc		1,0,.L4253	# lt
#       ATV_DW.Relay1_Mode_e = false;
	.d2line		2084
.Llo1015:
	diab.li		r3,0		# retval=r3
.Llo1016:
	stb		r3,46(r31)		# retval=r3
.L4253:
#     }
#   }
# 
#   /* Switch: '<S38>/Switch1' incorporates:
#    *  Constant: '<S38>/FanOff'
#    *  Logic: '<S39>/Logical Operator'
#    *  Relay: '<S39>/Relay1'
#    *  Switch: '<S39>/Switch1'
#    */
#   if (rtb_Compare) {
	.d2line		2094
.Llo1017:
	e_andi.		r3,r8,255		# retval=r3 rtb_Compare=r8
	bc		1,2,.L4258	# eq
#     atv_dbg_FAN_out = 0.0;
	.d2line		2095
.Llo882:
	diab.li		r0,0		# PumpBOn=r0
	stw		r0,atv_dbg_FAN_out@sdarx(r0)		# PumpBOn=r0
	b		.L4259
.L4258:
#   } else if ((PumpBOn != 0) && ATV_DW.Relay1_Mode_e) {
	.d2line		2096
	se_cmpi		r6,0		# PumpBOn=r6
	bc		1,2,.L4256	# eq
.Llo939:
	lbz		r3,46(r31)		# retval=r3
.Llo943:
	se_cmpi		r3,0		# retval=r3
	bc		1,2,.L4256	# eq
#     /* Sum: '<S39>/Add1' incorporates:
#      *  Constant: '<S38>/atvc_tempSwitchOnFan'
#      *  Switch: '<S39>/Switch1'
#      */
#     rtb_Gain_d = (uint8_T)(ATV_B.RateTransition12 - atvc_tempSwitchOnFan);
	.d2line		2101
.Llo1018:
	lis		r3,atvc_tempSwitchOnFan@ha		# retval=r3
	.d2line		2106
.Llo1019:
	diab.li		r5,20
	lbz		r4,atvc_tempSwitchOnFan@l(r3)		# RelationalOperator6=r4 retval=r3
# 
#     /* Saturate: '<S39>/Saturation' incorporates:
#      *  Switch: '<S39>/Switch1'
#      */
#     if (rtb_Gain_d >= 20) {
	.d2line		2116
.Llo891:
	e_lis		r6,16800		# PumpBOn=r6
.Llo944:
	subf		r4,r4,r0		# rtb_Gain_d=r4 RelationalOperator6=r4 PumpBOn=r0
	.d2line		2124
.Llo900:
	lis		r3,atvc_dcMinFan@ha		# retval=r3
	rlwinm		r0,r4,0,24,31		# PumpBOn=r0 rtb_Gain_d=r4
#       rtb_Gain_d = 20U;
#     }
# 
#     /* End of Saturate: '<S39>/Saturation' */
# 
#     /* Product: '<S39>/Product' incorporates:
#      *  Constant: '<S39>/Constant'
#      *  Switch: '<S39>/Switch1'
#      */
#     atv_dbg_FAN_out = (real_T)rtb_Gain_d / 20.0;
	se_cmpi		r0,20		# PumpBOn=r0
	isel		r0,r4,r5,0		# rtb_Gain_d=r0 rtb_Gain_d=r4
	rlwinm		r0,r0,0,24,31		# rtb_Gain_d=r0 rtb_Gain_d=r0
	efscfui		r0,r0		# rtb_Gain_d=r0 rtb_Gain_d=r0
	efsdiv		r0,r0,r6		# rtb_Gain_d=r0 rtb_Gain_d=r0 PumpBOn=r6
# 
#     /* Gain: '<S39>/Gain' incorporates:
#      *  Constant: '<S39>/Constant1'
#      *  DataTypeConversion: '<S39>/Data Type Conversion'
#      *  Switch: '<S39>/Switch1'
#      *  Switch: '<S41>/Switch2'
#      */
#     rtb_Gain = 0.01 * (real_T)atvc_dcMinFan;
	stw		r0,atv_dbg_FAN_out@sdarx(r0)		# rtb_Gain_d=r0
	lbz		r3,atvc_dcMinFan@l(r3)		# retval=r3 retval=r3
	efscfui		r3,r3		# retval=r3 retval=r3
.Llo735:
	efsmul		r3,r3,r30		# rtb_Gain=r3 retval=r3
# 
#     /* Switch: '<S41>/Switch' incorporates:
#      *  RelationalOperator: '<S41>/UpperRelop'
#      *  Switch: '<S39>/Switch1'
#      *  Switch: '<S41>/Switch2'
#      */
#     if (atv_dbg_FAN_out < rtb_Gain) {
	.d2line		2131
.Llo1020:
	efscmplt		1,r0,r3		# rtb_Gain_d=r0 rtb_Gain=r3
	bc		0,5,.L4259		# ge
#       atv_dbg_FAN_out = rtb_Gain;
	.d2line		2132
.Llo892:
	stw		r3,atv_dbg_FAN_out@sdarx(r0)		# rtb_Gain=r3
	b		.L4259
.L4256:
#     }
# 
#     /* End of Switch: '<S41>/Switch' */
#   } else {
#     /* Switch: '<S39>/Switch1' incorporates:
#      *  Constant: '<S39>/Ventola spenta'
#      */
#     atv_dbg_FAN_out = 0.0;
	.d2line		2140
.Llo736:
	diab.li		r0,0		# PumpBOn=r0
.Llo945:
	stw		r0,atv_dbg_FAN_out@sdarx(r0)		# PumpBOn=r0
.L4259:
#   }
# 
#   /* End of Switch: '<S38>/Switch1' */
# 
#   /* Gain: '<S1>/Gain' */
#   rtb_Gain = floor(100.0 * atv_dbg_FAN_out);
	.d2line		2146
.Llo946:
	lwz		r3,atv_dbg_FAN_out@sdarx(r0)		# retval=r3
.Llo1021:
	e_lis		r0,17096		# PumpBOn=r0
.Llo947:
	efsmul		r3,r3,r0		# retval=r3 retval=r3 PumpBOn=r0
.Llo1022:
	bl		_f_ftod
.Llo948:
	bl		floor
	bl		_d_dtof
.Llo737:
	mr		r26,r3		# rtb_Gain=r26 rtb_Gain=r3
#   if (rtIsNaN(rtb_Gain) || rtIsInf(rtb_Gain)) {
	.d2line		2147
	bl		rtIsNaN
.Llo738:
	e_andi.		r3,r3,255		# retval=r3 retval=r3
.Llo1023:
	bc		0,2,.L4396	# ne
.Llo739:
	mr		r3,r26		# rtb_Gain=r3 rtb_Gain=r26
	bl		rtIsInf
.Llo1024:
	e_andi.		r3,r3,255		# retval=r3 retval=r3
.Llo1025:
	bc		1,2,.L4260	# eq
.L4396:
#     rtb_Gain = 0.0;
	.d2line		2148
	diab.li		r3,0		# rtb_Gain=r3
.Llo741:
	b		.L4397
.L4260:
#   } else {
#     rtb_Gain = fmod(rtb_Gain, 256.0);
	.d2line		2150
.Llo742:
	mr		r3,r26		# rtb_Gain=r3 rtb_Gain=r26
	bl		_f_ftod
	.d2line		2153
	diab.li		r26,0		# retval=r26
.Llo740:
	e_lis		r5,16496
	diab.li		r6,0		# PumpBOn=r6
	bl		fmod
	bl		_d_dtof
#   }
# 
#   rtb_Gain_d = (uint8_T)(rtb_Gain < 0.0 ? (int32_T)(uint8_T)-(int8_T)(uint8_T)
.Llo743:
	efscmplt		1,r3,r26		# rtb_Gain=r3 retval=r26
	bc		0,5,.L4397		# ge
.Llo1026:
	efsneg		r0,r3		# PumpBOn=r0 rtb_Gain=r3
.Llo949:
	efsctuiz		r3,r0		# rtb_Gain=r3 PumpBOn=r0
	neg		r3,r3		# rtb_Gain_d=r3 rtb_Gain=r3
.Llo744:
	b		.L4398
.L4397:
.Llo745:
	efsctuiz		r3,r3		# rtb_Gain_d=r3 rtb_Gain=r3
.L4398:
#     -rtb_Gain : (int32_T)(uint8_T)rtb_Gain);
# 
#   /* End of Gain: '<S1>/Gain' */
# 
#   /* RelationalOperator: '<S9>/Compare' incorporates:
#    *  Constant: '<S9>/Constant'
#    */
#   rtb_Compare = (rtb_Gain_d > 0);
	.d2line		2164
.Llo746:
	lwz		r4,0(r25)		# RelationalOperator6=r4
	.d2line		2161
.Llo901:
	rlwinm		r5,r3,0,24,31		# rtb_Gain_d=r3
	neg		r0,r5		# PumpBOn=r0
.Llo950:
	lbz		r4,431(r4)		# RelationalOperator6=r4 RelationalOperator6=r4
# 
#   /* RateTransition: '<S1>/Rate Transition6' */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	andc		r0,r0,r5		# PumpBOn=r0 PumpBOn=r0
.Llo779:
	se_srwi		r0,31		# rtb_Compare=r0 PumpBOn=r0
.Llo951:
	se_cmpi		r4,0		# RelationalOperator6=r4
	bc		1,2,.L4262	# eq
#     ATV_B.RateTransition6_p = rtb_Compare;
# 
#     /* RateTransition: '<S1>/Rate Transition7' */
#     ATV_B.RateTransition7_p = rtb_Gain_d;
	.d2line		2168
.Llo902:
	stb		r3,101(r28)		# rtb_Gain_d=r3
	.d2line		2165
	stb		r0,123(r28)		# rtb_Compare=r0
.L4262:
#   }
# 
#   /* End of RateTransition: '<S1>/Rate Transition6' */
# 
#   /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput1' */
#   /* S-Function Block: <S6>/pai_BasicAnalogInput1
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XA1, &adc, FALSE);
	.d2line		2179
.Llo777:
	diab.addi		r4,r1,54		# RelationalOperator6=r4
	diab.li		r3,12		# rtb_Gain_d=r3
	diab.li		r5,0
	.d2line		2180
	e_lis		r26,16544		# retval=r26
#     atv_xa1_ain_throttle_raw = (adc * 5.0) / 4096.0;
.Llo1027:
	bl		pax_adc_input
	lha		r0,54(r1)		# rtb_Compare=r0
.Llo780:
	efscfsi		r0,r0		# rtb_Compare=r0 rtb_Compare=r0
	efsmul		r0,r0,r26		# rtb_Compare=r0 rtb_Compare=r0 retval=r26
	efsmul		r3,r0,r29		# rtb_Gain_d=r3 rtb_Compare=r0
.Llo747:
	stw		r3,atv_xa1_ain_throttle_raw@sdarx(r0)		# rtb_Gain_d=r3
#   }
# 
#   /* Switch: '<S13>/Switch' incorporates:
#    *  Constant: '<S13>/Constant'
#    *  Constant: '<S15>/Lower Limit'
#    *  Constant: '<S15>/Upper Limit'
#    *  Logic: '<S15>/AND'
#    *  RelationalOperator: '<S15>/Lower Test'
#    *  RelationalOperator: '<S15>/Upper Test'
#    */
#   if ((0.45 <= atv_xa1_ain_throttle_raw) && (atv_xa1_ain_throttle_raw <= 4.55))
	.d2line		2191
	efscmpgt		1,r27,r3		# rtb_Gain_d=r3
	bc		1,5,.L4269		# gt
.Llo781:
	e_lis		r0,16529		# rtb_Compare=r0
.Llo782:
	e_or2i		r0,39322		# rtb_Compare=r0
	efscmpgt		1,r3,r0		# rtb_Gain_d=r3 rtb_Compare=r0
	bc		1,5,.L4269		# gt
.Llo783:
	e_lis		r0,16528		# rtb_Compare=r0
#   {
#     /* Saturate: '<S13>/Saturation' */
#     if (atv_xa1_ain_throttle_raw > 4.5) {
	.d2line		2194
.Llo784:
	efscmpgt		1,r3,r0		# rtb_Gain_d=r3 rtb_Compare=r0
	bc		0,5,.L4265		# le
#       rtb_Gain = 4.5;
	.d2line		2195
	mr		r3,r0		# rtb_Gain=r3 rtb_Gain=r0
	b		.L4266
.L4265:
#     } else if (atv_xa1_ain_throttle_raw < 0.5) {
	.d2line		2196
.Llo785:
	e_lis		r0,16128		# rtb_Compare=r0
.Llo786:
	efscmplt		1,r3,r0		# rtb_Gain_d=r3 rtb_Compare=r0
	bc		0,5,.L4263		# ge
#       rtb_Gain = 0.5;
	.d2line		2197
	mr		r3,r0		# rtb_Gain=r3 rtb_Gain=r0
	b		.L4266
.L4263:
#     } else {
#       rtb_Gain = atv_xa1_ain_throttle_raw;
.L4266:
#     }
# 
#     /* End of Saturate: '<S13>/Saturation' */
# 
#     /* Gain: '<S13>/Gain' incorporates:
#      *  Constant: '<S13>/Constant1'
#      *  Sum: '<S13>/Add'
#      */
#     rtb_Gain = floor((rtb_Gain - 0.5) * 250.0);
	.d2line		2208
.Llo748:
	e_lis		r4,16128		# RelationalOperator6=r4
.Llo903:
	e_lis		r0,17274		# rtb_Compare=r0
.Llo749:
	efssub		r3,r3,r4		# rtb_Gain=r3 rtb_Gain=r3 RelationalOperator6=r4
.Llo778:
	efsmul		r3,r3,r0		# rtb_Gain=r3 rtb_Gain=r3 rtb_Compare=r0
.Llo750:
	bl		_f_ftod
.Llo787:
	bl		floor
	bl		_d_dtof
.Llo759:
	mr		r27,r3		# rtb_Gain=r27 rtb_Gain=r3
#     if (rtIsNaN(rtb_Gain)) {
	.d2line		2209
	bl		rtIsNaN
.Llo751:
	e_andi.		r3,r3,255		# rtb_Gain=r3 rtb_Gain=r3
.Llo752:
	bc		1,2,.L4267	# eq
#       atv_throttleX1000 = 0U;
	.d2line		2210
.Llo760:
	diab.li		r0,0		# rtb_Compare=r0
.Llo788:
	sth		r0,atv_throttleX1000@sdarx(r0)		# rtb_Compare=r0
	b		.L4270
.L4267:
#     } else {
#       atv_throttleX1000 = (uint16_T)fmod(rtb_Gain, 65536.0);
	.d2line		2212
.Llo789:
	mr		r3,r27		# rtb_Gain=r3 rtb_Gain=r27
	bl		_f_ftod
	e_lis		r5,16624
	diab.li		r6,0		# PumpBOn=r6
	bl		fmod
	bl		_d_dtou
.Llo753:
	sth		r3,atv_throttleX1000@sdarx(r0)		# rtb_Gain=r3
	b		.L4270
.L4269:
#     }
# 
#     /* End of Gain: '<S13>/Gain' */
#   } else {
#     atv_throttleX1000 = 0U;
	.d2line		2217
.Llo761:
	diab.li		r0,0		# rtb_Compare=r0
.Llo790:
	sth		r0,atv_throttleX1000@sdarx(r0)		# rtb_Compare=r0
.L4270:
#   }
# 
#   /* End of Switch: '<S13>/Switch' */
# 
#   /* Switch: '<S43>/Switch5' incorporates:
#    *  Constant: '<S43>/Constant2'
#    *  Constant: '<S43>/Constant3'
#    *  Switch: '<S43>/Switch1'
#    */
#   if (ATV_B.en_inv_rear_out) {
	.d2line		2227
.Llo754:
	lbz		r3,154(r28)		# rtb_Gain=r3
	.d2line		2309
.Llo755:
	diab.li		r0,0		# rtb_Compare=r0
.Llo791:
	se_cmpi		r3,0		# rtb_Gain=r3
	bc		1,2,.L4280	# eq
#     /* Switch: '<S43>/Switch4' incorporates:
#      *  Constant: '<S47>/Constant'
#      */
#     ATV_B.Switch5 = 0U;
	.d2line		2231
.Llo756:
	sth		r0,80(r28)		# rtb_Compare=r0
	.d2line		2239
	lis		r3,atvc_throttleNeutralPoint@ha		# rtb_Gain=r3
# 
#     /* Sum: '<S47>/Add1' incorporates:
#      *  Constant: '<S31>/atvc_throttleNeutralPoint'
#      *  Constant: '<S47>/Constant1'
#      *  DataTypeConversion: '<S47>/Cast'
#      *  Switch: '<S43>/Switch3'
#      */
#     PumpBOn = 1000 - atvc_throttleNeutralPoint;
.Llo757:
	lhz		r27,atvc_throttleNeutralPoint@l(r3)		# rtb_Gain=r27 rtb_Gain=r3
.Llo630:
	diab.li		r0,1000		# rtb_Compare=r0
	.d2line		2252
	lhz		r4,atv_throttleX1000@sdarx(r0)		# RelationalOperator6=r4
# 
#     /* Gain: '<S47>/Gain2' incorporates:
#      *  Switch: '<S43>/Switch3'
#      */
#     tmp_1 = 1000U;
	.d2line		2244
.Llo904:
	stw		r0,68(r1)		# rtb_Compare=r0
# 
#     /* Sum: '<S47>/Add' incorporates:
#      *  Constant: '<S31>/atvc_throttleNeutralPoint'
#      *  DataTypeConversion: '<S47>/Cast'
#      *  DataTypeConversion: '<S47>/Cast1'
#      *  Switch: '<S43>/Switch3'
#      */
#     u0_tmp = atv_throttleX1000 - atvc_throttleNeutralPoint;
	subf		r27,r27,r0		# PumpBOn=r27 rtb_Gain=r27 rtb_Compare=r0
	lhz		r3,atvc_throttleNeutralPoint@l(r3)		# rtb_Gain=r3 rtb_Gain=r3
.Llo965:
	subf		r3,r3,r4		# u0_tmp=r3 rtb_Gain=r3 RelationalOperator6=r4
# 
#     /* Saturate: '<S47>/Saturation' incorporates:
#      *  Sum: '<S47>/Add'
#      *  Switch: '<S43>/Switch3'
#      */
#     if (u0_tmp > 1000) {
	.d2line		2258
.Llo758:
	cmpi		0,0,r3,1000		# u0_tmp=r3
	bc		0,1,.L4273	# le
#       /* Gain: '<S47>/Gain2' */
#       tmp_2 = 1000U;
	.d2line		2260
.Llo905:
	b		.L4274
.L4273:
	se_cmpi		r3,0		# u0_tmp=r3
	isel		r0,0,r3,0		# rtb_Compare=r0 u0_tmp=r3
.L4274:
#     } else if (u0_tmp < 0) {
#       /* Gain: '<S47>/Gain2' */
#       tmp_2 = 0U;
#     } else {
#       /* Gain: '<S47>/Gain2' */
#       tmp_2 = (uint32_T)u0_tmp;
#     }
# 
#     /* End of Saturate: '<S47>/Saturation' */
# 
#     /* Gain: '<S47>/Gain2' incorporates:
#      *  Switch: '<S43>/Switch3'
#      */
#     sMultiWordMul(&tmp_1, 1, &tmp_2, 1, &tmp_0.chunks[0U], 2);
.Llo966:
	stw		r0,64(r1)		# rtb_Compare=r0
	.d2line		2274
	diab.li		r4,1		# RelationalOperator6=r4
	diab.addi		r3,r1,68		# u0_tmp=r3
	diab.addi		r5,r1,64
	diab.addi		r7,r1,108
	diab.li		r8,2		# rtb_Compare=r8
	diab.li		r6,1		# PumpBOn=r6
	bl		sMultiWordMul
.Llo792:
	diab.li		r0,1		# rtb_Compare=r0
.Llo793:
	se_cmpi		r27,0		# PumpBOn=r27
# 4273
	.d2line		2289
	diab.addi		r4,r1,116		# RelationalOperator6=r4
# 
#     /* Saturate: '<S47>/Saturation2' incorporates:
#      *  Sum: '<S47>/Add1'
#      *  Switch: '<S43>/Switch3'
#      */
#     if (PumpBOn < 1) {
#       PumpBOn = 1;
#     }
# 
#     /* End of Saturate: '<S47>/Saturation2' */
# 
#     /* Product: '<S47>/Divide3' incorporates:
#      *  Switch: '<S43>/Switch3'
#      */
#     sLong2MultiWord(PumpBOn, &tmp_4.chunks[0U], 2);
	diab.li		r5,2
	isel		r3,r27,r0,1		# u0_tmp=r3 PumpBOn=r27 rtb_Compare=r0
	.d2line		2290
	diab.addi		r7,r1,192
#     sMultiWordDivFloor(&tmp_0.chunks[0U], 2, &tmp_4.chunks[0U], 2,
	bl		sLong2MultiWord
.Llo794:
	diab.addi		r9,r1,84		# RelationalOperator8=r9
	diab.addi		r0,r1,92		# rtb_Compare=r0
.Llo795:
	diab.li		r4,2		# RelationalOperator6=r4
.Llo906:
	stw		r0,8(r1)		# rtb_Compare=r0
	diab.li		r8,3		# rtb_Compare=r8
	stw		r4,12(r1)		# RelationalOperator6=r4
	diab.li		r6,2		# PumpBOn=r6
	diab.addi		r0,r1,100		# rtb_Compare=r0
	stw		r4,20(r1)		# RelationalOperator6=r4
	stw		r0,16(r1)		# rtb_Compare=r0
	diab.addi		r3,r1,108		# u0_tmp=r3
	diab.addi		r5,r1,116
	mr		r10,r4		# RelationalOperator6=r10
	bl		sMultiWordDivFloor
	.d2line		323
.Llo796:
	lwz		r3,192(r1)		# u0_tmp=r3
#                        &tmp_3.chunks[0U], 3, &tmp_5.chunks[0U], 2,
#                        &tmp_6.chunks[0U], 2, &tmp_7.chunks[0U], 2);
#     PumpBOn = MultiWord2sLong(&tmp_3.chunks[0U]);
# 
#     /* Saturate: '<S47>/Saturation1' incorporates:
#      *  Product: '<S47>/Divide3'
#      *  Switch: '<S43>/Switch3'
#      */
#     if (PumpBOn > 1000) {
	.d2line		2299
.Llo967:
	cmpi		0,0,r3,1000		# u0_tmp=r3
	bc		0,1,.L4278	# le
#       ATV_B.Switch1 = 1000U;
	.d2line		2300
.Llo631:
	diab.li		r0,1000		# rtb_Compare=r0
.Llo797:
	sth		r0,82(r28)		# rtb_Compare=r0
	b		.L4281
.L4278:
.Llo798:
	rlwinm		r0,r3,0,16,31		# rtb_Compare=r0 u0_tmp=r3
.Llo799:
	se_cmpi		r3,0		# u0_tmp=r3
	isel		r0,0,r0,0		# rtb_Compare=r0 rtb_Compare=r0
	sth		r0,82(r28)		# rtb_Compare=r0
	b		.L4281
.L4280:
#     } else if (PumpBOn < 0) {
#       ATV_B.Switch1 = 0U;
#     } else {
#       ATV_B.Switch1 = (uint16_T)PumpBOn;
#     }
# 
#     /* End of Saturate: '<S47>/Saturation1' */
#   } else {
#     ATV_B.Switch5 = 0U;
	.d2line		2309
.Llo968:
	stw		r0,80(r28)		# rtb_Compare=r0
.L4281:
	.d2line		2320
.Llo800:
	lis		r3,atvc_velocityLimitRwd@ha		# u0_tmp=r3
#     ATV_B.Switch1 = 0U;
#   }
# 
#   /* End of Switch: '<S43>/Switch5' */
# 
#   /* DataTypeConversion: '<S35>/Cast2' incorporates:
#    *  Constant: '<S8>/atvc_velocityLimitRwd'
#    *  Gain: '<S35>/Gain2'
#    *  Product: '<S35>/Product2'
#    */
#   ATV_B.Cast2 = (uint16_T)(int32_T)fmod((int32_T)floor(142.0 * (real_T)
	.d2line		2309
.Llo969:
	e_lis		r27,17064		# PumpBOn=r27
.Llo632:
	lbz		r0,atvc_velocityLimitRwd@l(r3)		# rtb_Compare=r0 u0_tmp=r3
.Llo801:
	e_or2i		r27,13830		# PumpBOn=r27
	.d2line		2328
	lis		r26,atvc_velocityLimitFwd@ha		# retval=r26
.Llo1028:
	efscfui		r3,r0		# u0_tmp=r3 rtb_Compare=r0
	efsmul		r3,r3,r27		# u0_tmp=r3 u0_tmp=r3 PumpBOn=r27
.Llo970:
	bl		_f_ftod
.Llo802:
	bl		floor
	bl		_d_dtoi
	bl		_d_itod
	e_lis		r5,16624
	diab.li		r6,0		# PumpBOn=r6
	bl		fmod
	bl		_d_dtoi
.Llo971:
	sth		r3,84(r28)		# u0_tmp=r3
#     atvc_velocityLimitRwd * 0.001953125 * 303.25370753692243), 65536.0);
# 
#   /* DataTypeConversion: '<S35>/Cast1' incorporates:
#    *  Constant: '<S8>/atvc_velocityLimitFwd'
#    *  Gain: '<S35>/Gain1'
#    *  Product: '<S35>/Product'
#    */
#   ATV_B.Cast1 = (uint16_T)(int32_T)fmod((int32_T)floor(142.0 * (real_T)
	mr		r25,r3		# u0_tmp=r25
	lbz		r0,atvc_velocityLimitFwd@l(r26)		# rtb_Compare=r0 retval=r26
.Llo803:
	efscfui		r3,r0		# u0_tmp=r3 rtb_Compare=r0
	efsmul		r3,r3,r27		# u0_tmp=r3 u0_tmp=r3 PumpBOn=r27
.Llo972:
	bl		_f_ftod
.Llo804:
	bl		floor
	bl		_d_dtoi
	bl		_d_itod
	e_lis		r5,16624
	diab.li		r6,0		# PumpBOn=r6
	bl		fmod
	bl		_d_dtoi
.Llo973:
	sth		r3,86(r28)		# u0_tmp=r3
	.section	.text_vle
.L5562:
#     atvc_velocityLimitFwd * 0.001953125 * 303.25370753692243), 65536.0);
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
	.d2line		2367
.Llo633:
	lha		r0,pcx_CANdb_TransmitMessage2_msg_handle@sdarx(r0)		# rtb_Compare=r0
.Llo805:
	e_cmph16i	r0,-1		# rtb_Compare=r0
	bc		1,2,.L4291	# eq
#       pcx_CANdb_TransmitMessage2_in_port_buffer[0] = ATV_B.Switch5;
	.d2line		2368
.Llo806:
	lhz		r4,80(r28)		# RelationalOperator6=r4
	.d2line		2369
.Llo907:
	diab.addi		r0,r1,204		# rtb_Compare=r0
	.d2line		2380
.Llo807:
	lis		r8,pcx_CANdb_TransmitMessage2_field_eng_max.4288@ha		# rtb_Compare=r8
#       pcx_CANdb_TransmitMessage2_in_port_ptr[0] =
	.d2line		2374
.Llo883:
	rlwinm		r7,r25,0,16,31		# u0_tmp=r25
	stw		r0,236(r1)		# rtb_Compare=r0
#         &pcx_CANdb_TransmitMessage2_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage2_in_port_buffer[1] = ATV_B.Switch1;
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage2_field_eng_max.4288@l		# rtb_Compare=r8 rtb_Compare=r8
	.d2line		2377
	rlwinm		r5,r3,0,16,31		# u0_tmp=r3
	lis		r9,pcx_CANdb_TransmitMessage2_field_scale.4289@ha		# RelationalOperator8=r9
#       pcx_CANdb_TransmitMessage2_in_port_ptr[1] =
	.d2line		2368
.Llo923:
	efscfui		r0,r4		# rtb_Compare=r0 RelationalOperator6=r4
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage2_field_scale.4289@l		# RelationalOperator8=r9 RelationalOperator8=r9
#         &pcx_CANdb_TransmitMessage2_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage2_in_port_buffer[2] = ATV_B.Cast2;
	.d2line		2375
	diab.addi		r3,r1,212		# u0_tmp=r3
	.d2line		2372
	diab.addi		r27,r1,208		# PumpBOn=r27
.Llo634:
	stw		r0,204(r1)		# rtb_Compare=r0
	.d2line		2380
	lis		r4,pcx_CANdb_TransmitMessage2_field_offset.4290@ha		# RelationalOperator6=r4
	e_add16i		r4,r4,pcx_CANdb_TransmitMessage2_field_offset.4290@l		# RelationalOperator6=r4 RelationalOperator6=r4
#       pcx_CANdb_TransmitMessage2_in_port_ptr[2] =
	diab.li		r24,0		# RelationalOperator6=r24
	.d2line		2371
	lhz		r6,82(r28)		# PumpBOn=r6
.Llo952:
	diab.li		r26,1		# retval=r26
#         &pcx_CANdb_TransmitMessage2_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage2_in_port_buffer[3] = ATV_B.Cast1;
.Llo1029:
	diab.li		r25,4		# u0_tmp=r25
	.d2line		2378
	diab.addi		r0,r1,216		# rtb_Compare=r0
	efscfui		r6,r6		# PumpBOn=r6 PumpBOn=r6
#       pcx_CANdb_TransmitMessage2_in_port_ptr[3] =
	stw		r8,8(r1)		# rtb_Compare=r8
	stw		r9,12(r1)		# RelationalOperator8=r9
#         &pcx_CANdb_TransmitMessage2_in_port_buffer[3];
#       pcx_vdb_pack_msg((const F32 * const *)
	lis		r10,pcx_CANdb_TransmitMessage2_field_eng_min.4287@ha		# RelationalOperator6=r10
	.d2line		2374
	efscfui		r7,r7
	stw		r6,208(r1)		# PumpBOn=r6
	stw		r4,16(r1)		# RelationalOperator6=r4
	lis		r9,pcx_CANdb_TransmitMessage2_field_order.4286@ha		# RelationalOperator8=r9
	.d2line		2377
	efscfui		r8,r5		# rtb_Compare=r8
	stw		r7,212(r1)
	.d2line		2375
	stw		r3,244(r1)		# u0_tmp=r3
	.d2line		2380
	lis		r6,pcx_CANdb_TransmitMessage2_field_width.4283@ha		# PumpBOn=r6
	stw		r8,216(r1)		# rtb_Compare=r8
	lis		r5,pcx_CANdb_TransmitMessage2_field_start_pos.4282@ha
	stw		r24,20(r1)		# RelationalOperator6=r24
	lis		r7,pcx_CANdb_TransmitMessage2_field_is_signed.4284@ha
	stw		r26,24(r1)		# retval=r26
	lis		r8,pcx_CANdb_TransmitMessage2_field_valtype.4285@ha		# rtb_Compare=r8
	stw		r25,28(r1)		# u0_tmp=r25
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage2_field_eng_min.4287@l		# RelationalOperator6=r10 RelationalOperator6=r10
	.d2line		2372
	stw		r27,240(r1)		# PumpBOn=r27
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage2_field_order.4286@l		# RelationalOperator8=r9 RelationalOperator8=r9
	.d2line		2378
.Llo924:
	stw		r0,248(r1)		# rtb_Compare=r0
	diab.addi		r4,r1,140		# RelationalOperator6=r4
.Llo908:
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage2_field_width.4283@l		# PumpBOn=r6 PumpBOn=r6
.Llo953:
	diab.addi		r3,r1,236		# u0_tmp=r3
.Llo974:
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage2_field_start_pos.4282@l
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage2_field_is_signed.4284@l
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage2_field_valtype.4285@l		# rtb_Compare=r8 rtb_Compare=r8
.Llo884:
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
	.d2line		2393
.Llo808:
	lha		r3,pcx_CANdb_TransmitMessage2_msg_handle@sdarx(r0)		# u0_tmp=r3
	diab.addi		r4,r1,140		# RelationalOperator6=r4
	bl		pcx_transmit
.Llo1032:
	b		.L4292
.L4291:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		2396
.Llo635:
	diab.li		r3,0		# retval=r3
.L4292:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage2 = !retval;
	.d2line		2399
.Llo975:
	rlwinm		r0,r3,0,24,31		# rtb_Compare=r0 retval=r3
.Llo809:
	cntlzw		r0,r0		# rtb_Compare=r0 rtb_Compare=r0
	diab.srwi		r0,5		# rtb_Compare=r0
	stb		r0,125(r28)		# rtb_Compare=r0
	.section	.text_vle
.L5563:
.Llo810:
	lis		r27,atvc_throttleNeutralPoint@ha		# PumpBOn=r27
	.d2line		2408
.Llo636:
	lhz		r0,atv_throttleX1000@sdarx(r0)		# rtb_Compare=r0
#   }
# 
#   /* Logic: '<S6>/Logical Operator1' incorporates:
#    *  Constant: '<S6>/Constant'
#    *  Constant: '<S6>/Constant2'
#    *  RelationalOperator: '<S12>/Upper Test'
#    *  Sum: '<S6>/Add'
#    */
#   atv_fs1_in = (atv_throttleX1000 > (uint16_T)(atvc_throttleNeutralPoint + 20U));
	.d2line		2399
.Llo811:
	e_add16i		r27,r27,atvc_throttleNeutralPoint@l		# PumpBOn=r27 PumpBOn=r27
	lhz		r3,0(r27)		# retval=r3 PumpBOn=r27
.Llo1033:
	se_addi		r3,20		# retval=r3 retval=r3
	rlwinm		r3,r3,0,16,31		# retval=r3 retval=r3
	se_cmp		r0,r3		# rtb_Compare=r0 retval=r3
	mfcr		r0		# rtb_Compare=r0
	rlwinm		r0,r0,2,31,31		# rtb_Compare=r0 rtb_Compare=r0
	stb		r0,atv_fs1_in@sdarx(r0)		# rtb_Compare=r0
	.section	.text_vle
.L5602:
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
	.d2line		2453
.Llo1034:
	lha		r3,pcx_CANdb_TransmitMessage3_msg_handle@sdarx(r0)		# retval=r3
.Llo1035:
	e_cmph16i	r3,-1		# retval=r3
	bc		1,2,.L4302	# eq
#       pcx_CANdb_TransmitMessage3_in_port_buffer[0] = atv_fs1_in;
	.d2line		2454
.Llo1036:
	rlwinm		r0,r0,0,24,31		# rtb_Compare=r0 rtb_Compare=r0
	.d2line		2457
	lbz		r5,atv_rwd_mode_in@sdarx(r0)
	efscfui		r6,r0		# PumpBOn=r6 rtb_Compare=r0
#       pcx_CANdb_TransmitMessage3_in_port_ptr[0] =
	.d2line		2460
.Llo954:
	lbz		r3,atv_fwd_mode_in@sdarx(r0)		# retval=r3
	.d2line		2458
.Llo1037:
	diab.addi		r4,r1,272		# RelationalOperator6=r4
#         &pcx_CANdb_TransmitMessage3_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage3_in_port_buffer[1] = atv_rwd_mode_in;
	.d2line		2469
.Llo909:
	lis		r11,pcx_CANdb_TransmitMessage3_field_eng_max.4299@ha
	efscfui		r5,r5
	.d2line		2455
	diab.addi		r0,r1,268		# rtb_Compare=r0
#       pcx_CANdb_TransmitMessage3_in_port_ptr[1] =
	stw		r0,308(r1)		# rtb_Compare=r0
	e_add16i		r11,r11,pcx_CANdb_TransmitMessage3_field_eng_max.4299@l
#         &pcx_CANdb_TransmitMessage3_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage3_in_port_buffer[2] = atv_fwd_mode_in;
	.d2line		2457
	stw		r5,272(r1)
	lis		r9,pcx_CANdb_TransmitMessage3_field_scale.4300@ha		# RelationalOperator8=r9
	.d2line		2461
.Llo925:
	diab.addi		r0,r1,276		# rtb_Compare=r0
#       pcx_CANdb_TransmitMessage3_in_port_ptr[2] =
	.d2line		2454
	stw		r6,268(r1)		# PumpBOn=r6
	.d2line		2460
	efscfui		r5,r3		# retval=r3
#         &pcx_CANdb_TransmitMessage3_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage3_in_port_buffer[3] = atvc_maxRegenCurr;
	.d2line		2458
	stw		r4,312(r1)		# RelationalOperator6=r4
	stw		r0,316(r1)		# rtb_Compare=r0
	.d2line		2466
	lis		r6,atvc_maxDischCurr@ha		# PumpBOn=r6
	stw		r5,276(r1)
#       pcx_CANdb_TransmitMessage3_in_port_ptr[3] =
	.d2line		2463
	lis		r3,atvc_maxRegenCurr@ha		# retval=r3
	.d2line		2464
	diab.addi		r4,r1,280		# RelationalOperator6=r4
	.d2line		2469
	lis		r10,pcx_CANdb_TransmitMessage3_field_offset.4301@ha		# RelationalOperator6=r10
#         &pcx_CANdb_TransmitMessage3_in_port_buffer[3];
#       pcx_CANdb_TransmitMessage3_in_port_buffer[4] = atvc_maxDischCurr;
	lhz		r3,atvc_maxRegenCurr@l(r3)		# retval=r3 retval=r3
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage3_field_scale.4300@l		# RelationalOperator8=r9 RelationalOperator8=r9
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage3_field_offset.4301@l		# RelationalOperator6=r10 RelationalOperator6=r10
.Llo910:
	diab.li		r26,0		# retval=r26
.Llo911:
	efscfui		r3,r3		# retval=r3 retval=r3
	stw		r4,320(r1)		# RelationalOperator6=r4
#       pcx_CANdb_TransmitMessage3_in_port_ptr[4] =
	diab.li		r25,1		# u0_tmp=r25
.Llo976:
	diab.li		r24,5		# RelationalOperator6=r24
#         &pcx_CANdb_TransmitMessage3_in_port_buffer[4];
#       pcx_vdb_pack_msg((const F32 * const *)
	stw		r3,280(r1)		# retval=r3
	.d2line		2467
	diab.addi		r0,r1,284		# rtb_Compare=r0
	lis		r7,pcx_CANdb_TransmitMessage3_field_is_signed.4295@ha
	lis		r8,pcx_CANdb_TransmitMessage3_field_valtype.4296@ha		# rtb_Compare=r8
	.d2line		2466
.Llo885:
	lhz		r12,atvc_maxDischCurr@l(r6)		# PumpBOn=r6
	lis		r5,pcx_CANdb_TransmitMessage3_field_start_pos.4293@ha
	diab.addi		r4,r1,148		# RelationalOperator6=r4
	diab.addi		r3,r1,308		# retval=r3
.Llo1038:
	stw		r11,8(r1)
	lis		r6,pcx_CANdb_TransmitMessage3_field_width.4294@ha		# PumpBOn=r6
	stw		r9,12(r1)		# RelationalOperator8=r9
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage3_field_is_signed.4295@l
	stw		r10,16(r1)		# RelationalOperator6=r10
	efscfui		r11,r12
	stw		r26,20(r1)		# retval=r26
	lis		r9,pcx_CANdb_TransmitMessage3_field_order.4297@ha		# RelationalOperator8=r9
	stw		r25,24(r1)		# u0_tmp=r25
	lis		r10,pcx_CANdb_TransmitMessage3_field_eng_min.4298@ha		# RelationalOperator6=r10
	stw		r24,28(r1)		# RelationalOperator6=r24
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage3_field_valtype.4296@l		# rtb_Compare=r8 rtb_Compare=r8
.Llo886:
	stw		r11,284(r1)
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage3_field_start_pos.4293@l
	stw		r0,324(r1)		# rtb_Compare=r0
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage3_field_width.4294@l		# PumpBOn=r6 PumpBOn=r6
.Llo955:
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage3_field_order.4297@l		# RelationalOperator8=r9 RelationalOperator8=r9
.Llo926:
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage3_field_eng_min.4298@l		# RelationalOperator6=r10 RelationalOperator6=r10
.Llo912:
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
	.d2line		2482
.Llo812:
	lha		r3,pcx_CANdb_TransmitMessage3_msg_handle@sdarx(r0)		# retval=r3
	diab.addi		r4,r1,148		# RelationalOperator6=r4
	bl		pcx_transmit
.Llo1039:
	b		.L4303
.L4302:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		2485
.Llo813:
	diab.li		r3,0		# retval=r3
.L4303:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage3 = !retval;
	.d2line		2488
.Llo814:
	rlwinm		r0,r3,0,24,31		# rtb_Compare=r0 retval=r3
.Llo815:
	cntlzw		r0,r0		# rtb_Compare=r0 rtb_Compare=r0
	diab.srwi		r0,5		# rtb_Compare=r0
	stb		r0,126(r28)		# rtb_Compare=r0
	.section	.text_vle
.L5603:
#   }
# 
#   /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput8' */
#   /* S-Function Block: <S6>/pai_BasicAnalogInput8
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XE4, &adc, FALSE);
	.d2line		2497
.Llo816:
	diab.addi		r4,r1,56		# RelationalOperator6=r4
	diab.li		r3,30		# retval=r3
	diab.li		r5,0
	.d2line		2498
	e_lis		r26,16544		# retval=r26
#     atv_xe4_raw_ain = (adc * 5.0) / 4096.0;
.Llo1030:
	bl		pax_adc_input
	lha		r0,56(r1)		# rtb_Compare=r0
	.d2line		2502
.Llo817:
	lis		r3,atvc_an_in_sel_th@ha		# retval=r3
.Llo1040:
	lis		r4,atvc_an_in_sel_his@ha		# RelationalOperator6=r4
.Llo913:
	efscfsi		r0,r0		# rtb_Compare=r0 rtb_Compare=r0
	efsmul		r0,r0,r26		# rtb_Compare=r0 rtb_Compare=r0 retval=r26
#   }
# 
#   /* Relay: '<S6>/Relay5' */
#   if (atv_xe4_raw_ain >= atvc_an_in_sel_th + atvc_an_in_sel_his) {
	efsmul		r6,r0,r29		# PumpBOn=r6 rtb_Compare=r0
.Llo956:
	stw		r6,atv_xe4_raw_ain@sdarx(r0)		# PumpBOn=r6
	lwz		r0,atvc_an_in_sel_th@l(r3)		# rtb_Compare=r0 retval=r3
	lwz		r5,atvc_an_in_sel_his@l(r4)		# RelationalOperator6=r4
	efsadd		r0,r0,r5		# rtb_Compare=r0 rtb_Compare=r0
	efscmplt		1,r6,r0		# PumpBOn=r6 rtb_Compare=r0
	bc		1,5,.L4305		# lt
#     ATV_DW.Relay5_Mode = true;
	.d2line		2503
.Llo818:
	diab.li		r0,1		# rtb_Compare=r0
.Llo819:
	stb		r0,47(r31)		# rtb_Compare=r0
	b		.L4306
.L4305:
#   } else {
#     if (atv_xe4_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
	.d2line		2505
.Llo820:
	lwz		r0,atvc_an_in_sel_th@l(r3)		# rtb_Compare=r0 retval=r3
.Llo821:
	lwz		r3,atvc_an_in_sel_his@l(r4)		# retval=r3 RelationalOperator6=r4
	efssub		r0,r0,r3		# rtb_Compare=r0 rtb_Compare=r0 retval=r3
	efscmpgt		1,r6,r0		# PumpBOn=r6 rtb_Compare=r0
	bc		1,5,.L4306		# gt
#       ATV_DW.Relay5_Mode = false;
	.d2line		2506
.Llo822:
	diab.li		r0,0		# rtb_Compare=r0
.Llo823:
	stb		r0,47(r31)		# rtb_Compare=r0
.L4306:
#     }
#   }
# 
#   atv_4wd_din = !ATV_DW.Relay5_Mode;
	.d2line		2510
.Llo824:
	lbz		r0,47(r31)		# rtb_Compare=r0
.Llo825:
	cntlzw		r0,r0		# rtb_Compare=r0 rtb_Compare=r0
	diab.srwi		r0,5		# rtb_Compare=r0
	stb		r0,atv_4wd_din@sdarx(r0)		# rtb_Compare=r0
# 
#   /* End of Relay: '<S6>/Relay5' */
# 
#   /* Switch: '<S31>/Switch4' incorporates:
#    *  Constant: '<S31>/Constant2'
#    *  Constant: '<S31>/Constant4'
#    *  Switch: '<S31>/Switch3'
#    */
#   if (atv_4wd_din) {
	.d2line		2519
	e_andi.		r0,r0,255		# rtb_Compare=r0 rtb_Compare=r0
.Llo826:
	bc		1,2,.L4332	# eq
#     /* Switch: '<S42>/Switch5' incorporates:
#      *  Constant: '<S42>/Constant2'
#      *  Constant: '<S42>/Constant3'
#      *  Switch: '<S42>/Switch1'
#      */
#     if (ATV_B.en_inv_front_out) {
	.d2line		2525
	lbz		r0,155(r28)		# rtb_Compare=r0
.Llo827:
	se_cmpi		r0,0		# rtb_Compare=r0
	bc		1,2,.L4330	# eq
.Llo828:
	lhz		r3,atv_throttleX1000@sdarx(r0)		# retval=r3
#       /* Switch: '<S42>/Switch4' incorporates:
#        *  Constant: '<S31>/atvc_throttleNeutralPoint'
#        *  Constant: '<S45>/Constant'
#        *  RelationalOperator: '<S42>/Relational Operator1'
#        */
#       if (atv_throttleX1000 >= atvc_throttleNeutralPoint) {
	.d2line		2531
.Llo664:
	lhz		r0,0(r27)		# rtb_Compare=r0 PumpBOn=r27
.Llo829:
	se_cmp		r0,r3		# rtb_Compare=r0 retval=r3
	bc		1,1,.L4328	# gt
#         ATV_B.Switch4 = 0U;
	.d2line		2532
.Llo830:
	diab.li		r4,0		# RelationalOperator6=r4
.Llo914:
	diab.li		r0,1000		# rtb_Compare=r0
.Llo831:
	sth		r4,88(r28)		# RelationalOperator6=r4
# 
#         /* Sum: '<S45>/Add1' incorporates:
#          *  Constant: '<S45>/Constant'
#          *  Constant: '<S45>/Constant1'
#          *  DataTypeConversion: '<S45>/Cast'
#          *  Switch: '<S42>/Switch3'
#          */
#         PumpBOn = 1000 - atvc_throttleNeutralPoint;
	.d2line		2540
	lhz		r26,0(r27)		# retval=r26 PumpBOn=r27
	.d2line		2545
.Llo660:
	stw		r0,68(r1)		# rtb_Compare=r0
# 
#         /* Gain: '<S45>/Gain2' incorporates:
#          *  Switch: '<S42>/Switch3'
#          */
#         tmp_1 = 1000U;
	subf		r26,r26,r0		# PumpBOn=r26 retval=r26 rtb_Compare=r0
# 
#         /* Sum: '<S45>/Add' incorporates:
#          *  DataTypeConversion: '<S45>/Cast'
#          *  DataTypeConversion: '<S45>/Cast1'
#          *  Switch: '<S42>/Switch3'
#          */
#         u0_tmp = atv_throttleX1000 - atvc_throttleNeutralPoint;
	.d2line		2552
.Llo1031:
	lhz		r4,0(r27)		# RelationalOperator6=r4 PumpBOn=r27
.Llo598:
	subf		r4,r4,r3		# u0_tmp=r4 RelationalOperator6=r4 retval=r3
# 
#         /* Saturate: '<S45>/Saturation' incorporates:
#          *  Sum: '<S45>/Add'
#          *  Switch: '<S42>/Switch3'
#          */
#         if (u0_tmp > 1000) {
	.d2line		2558
.Llo915:
	cmpi		0,0,r4,1000		# u0_tmp=r4
	bc		0,1,.L4309	# le
#           /* Gain: '<S45>/Gain2' */
#           tmp_2 = 1000U;
	.d2line		2560
.Llo637:
	b		.L4310
.L4309:
	se_cmpi		r4,0		# u0_tmp=r4
	isel		r0,0,r4,0		# rtb_Compare=r0 u0_tmp=r4
.L4310:
#         } else if (u0_tmp < 0) {
#           /* Gain: '<S45>/Gain2' */
#           tmp_2 = 0U;
#         } else {
#           /* Gain: '<S45>/Gain2' */
#           tmp_2 = (uint32_T)u0_tmp;
#         }
# 
#         /* End of Saturate: '<S45>/Saturation' */
# 
#         /* Gain: '<S45>/Gain2' incorporates:
#          *  Switch: '<S42>/Switch3'
#          */
#         sMultiWordMul(&tmp_1, 1, &tmp_2, 1, &tmp.chunks[0U], 2);
.Llo599:
	stw		r0,64(r1)		# rtb_Compare=r0
	.d2line		2574
	diab.li		r4,1		# u0_tmp=r4
	diab.addi		r3,r1,68		# retval=r3
	diab.addi		r5,r1,64
	diab.addi		r7,r1,76
	diab.li		r8,2		# rtb_Compare=r8
	diab.li		r6,1		# PumpBOn=r6
	bl		sMultiWordMul
.Llo832:
	diab.li		r0,1		# rtb_Compare=r0
.Llo833:
	se_cmpi		r26,0		# PumpBOn=r26
# 4273
	.d2line		2589
	diab.addi		r4,r1,92		# u0_tmp=r4
# 
#         /* Saturate: '<S45>/Saturation2' incorporates:
#          *  Sum: '<S45>/Add1'
#          *  Switch: '<S42>/Switch3'
#          */
#         if (PumpBOn < 1) {
#           PumpBOn = 1;
#         }
# 
#         /* End of Saturate: '<S45>/Saturation2' */
# 
#         /* Product: '<S45>/Divide3' incorporates:
#          *  Switch: '<S42>/Switch3'
#          */
#         sLong2MultiWord(PumpBOn, &tmp_6.chunks[0U], 2);
	diab.li		r5,2
	isel		r3,r26,r0,1		# retval=r3 PumpBOn=r26 rtb_Compare=r0
	.d2line		2590
	diab.addi		r7,r1,180
#         sMultiWordDivFloor(&tmp.chunks[0U], 2, &tmp_6.chunks[0U], 2,
	bl		sLong2MultiWord
.Llo834:
	diab.addi		r9,r1,100		# RelationalOperator8=r9
	diab.addi		r0,r1,124		# rtb_Compare=r0
.Llo835:
	diab.li		r4,2		# u0_tmp=r4
.Llo600:
	stw		r0,8(r1)		# rtb_Compare=r0
	diab.li		r8,3		# rtb_Compare=r8
	stw		r4,12(r1)		# u0_tmp=r4
	diab.li		r6,2		# PumpBOn=r6
	diab.addi		r0,r1,172		# rtb_Compare=r0
	stw		r4,20(r1)		# u0_tmp=r4
	stw		r0,16(r1)		# rtb_Compare=r0
	diab.addi		r3,r1,76		# retval=r3
	diab.addi		r5,r1,92
	mr		r10,r4		# u0_tmp=r10
	bl		sMultiWordDivFloor
	.d2line		323
.Llo601:
	lwz		r3,180(r1)		# retval=r3
#                            &tmp_8.chunks[0U], 3, &tmp_7.chunks[0U], 2,
#                            &tmp_9.chunks[0U], 2, &tmp_a.chunks[0U], 2);
#         PumpBOn = MultiWord2sLong(&tmp_8.chunks[0U]);
# 
#         /* Saturate: '<S45>/Saturation1' incorporates:
#          *  Product: '<S45>/Divide3'
#          *  Switch: '<S42>/Switch3'
#          */
#         if (PumpBOn > 1000) {
	.d2line		2599
.Llo1041:
	cmpi		0,0,r3,1000		# retval=r3
	bc		0,1,.L4314	# le
#           ATV_B.Switch3 = 1000U;
	.d2line		2600
.Llo661:
	diab.li		r0,1000		# rtb_Compare=r0
.Llo836:
	sth		r0,90(r28)		# rtb_Compare=r0
	b		.L4333
.L4314:
.Llo837:
	rlwinm		r0,r3,0,16,31		# rtb_Compare=r0 retval=r3
.Llo838:
	se_cmpi		r3,0		# retval=r3
	isel		r0,0,r0,0		# rtb_Compare=r0 rtb_Compare=r0
	sth		r0,90(r28)		# rtb_Compare=r0
	b		.L4333
.L4328:
#         } else if (PumpBOn < 0) {
#           ATV_B.Switch3 = 0U;
#         } else {
#           ATV_B.Switch3 = (uint16_T)PumpBOn;
#         }
# 
#         /* End of Saturate: '<S45>/Saturation1' */
#       } else {
#         /* Gain: '<S44>/Gain2' */
#         tmp_1 = 1000U;
	.d2line		2610
.Llo638:
	diab.li		r4,1000		# RelationalOperator6=r4
.Llo916:
	stw		r4,68(r1)		# RelationalOperator6=r4
# 
#         /* Sum: '<S44>/Add' incorporates:
#          *  DataTypeConversion: '<S44>/Cast'
#          *  DataTypeConversion: '<S44>/Cast1'
#          */
#         PumpBOn = atvc_throttleNeutralPoint - atv_throttleX1000;
	.d2line		2616
	lhz		r0,0(r27)		# rtb_Compare=r0 PumpBOn=r27
.Llo665:
	subf		r3,r3,r0		# PumpBOn=r3 retval=r3 rtb_Compare=r0
# 
#         /* Saturate: '<S44>/Saturation' */
#         if (PumpBOn > 1000) {
	.d2line		2619
.Llo1042:
	cmpi		0,0,r3,1000		# PumpBOn=r3
	bc		0,1,.L4318	# le
#           /* Gain: '<S44>/Gain2' */
#           tmp_2 = 1000U;
	.d2line		2621
.Llo839:
	b		.L4319
.L4318:
	se_cmpi		r3,0		# PumpBOn=r3
	isel		r4,0,r3,0		# RelationalOperator6=r4 PumpBOn=r3
.L4319:
#         } else if (PumpBOn < 0) {
#           /* Gain: '<S44>/Gain2' */
#           tmp_2 = 0U;
#         } else {
#           /* Gain: '<S44>/Gain2' */
#           tmp_2 = (uint32_T)PumpBOn;
#         }
# 
#         /* End of Saturate: '<S44>/Saturation' */
# 
#         /* Gain: '<S44>/Gain2' */
#         sMultiWordMul(&tmp_1, 1, &tmp_2, 1, &tmp.chunks[0U], 2);
.Llo666:
	stw		r4,64(r1)		# RelationalOperator6=r4
	.d2line		2633
	diab.addi		r3,r1,68		# PumpBOn=r3
	diab.addi		r5,r1,64
	diab.addi		r7,r1,76
	diab.li		r8,2		# rtb_Compare=r8
	diab.li		r6,1		# PumpBOn=r6
	diab.li		r4,1		# RelationalOperator6=r4
.Llo917:
	bl		sMultiWordMul
# 
#         /* Product: '<S44>/Divide3' incorporates:
#          *  DataTypeConversion: '<S44>/Cast1'
#          */
#         if (atvc_throttleNeutralPoint == 0) {
	.d2line		2638
	lhz		r0,0(r27)		# rtb_Compare=r0 PumpBOn=r27
.Llo840:
	se_cmpi		r0,0		# rtb_Compare=r0
	bc		0,2,.L4322	# ne
#           tmp_5 = tmp_b;
	.d2line		2639
.Llo841:
	diab.li		r7,tmp_b.4174@sdarx
	.d2line		2640
	diab.addi		r3,r1,76		# PumpBOn=r3
	lwz		r4,0(r7)		# RelationalOperator6=r4
.Llo918:
	lwz		r5,4(r7)
	stw		r4,84(r1)		# RelationalOperator6=r4
#           if (sMultiWordGe(&tmp.chunks[0U], &tmp_5.chunks[0U], 2)) {
	stw		r5,88(r1)
	diab.addi		r4,r1,84		# RelationalOperator6=r4
.Llo919:
	diab.li		r5,2
	bl		sMultiWordGe
.Llo667:
	e_andi.		r3,r3,255		# PumpBOn=r3 PumpBOn=r3
.Llo668:
	bc		1,2,.L4782	# eq
.Llo639:
	b		.L4402
.L4322:
#             PumpBOn = MAX_int32_T;
#           } else {
#             PumpBOn = MIN_int32_T;
#           }
#         } else {
#           sLong2MultiWord(atvc_throttleNeutralPoint, &tmp_5.chunks[0U], 2);
	.d2line		2646
.Llo640:
	lhz		r3,0(r27)		# PumpBOn=r3 PumpBOn=r27
	diab.addi		r4,r1,84		# RelationalOperator6=r4
	diab.li		r5,2
	.d2line		2647
	diab.addi		r7,r1,100
#           sMultiWordDivFloor(&tmp.chunks[0U], 2, &tmp_5.chunks[0U], 2,
	bl		sLong2MultiWord
	diab.addi		r9,r1,92		# RelationalOperator8=r9
	stw		r7,8(r1)
	diab.addi		r0,r1,124		# rtb_Compare=r0
.Llo842:
	diab.li		r4,2		# RelationalOperator6=r4
.Llo920:
	stw		r0,16(r1)		# rtb_Compare=r0
	stw		r4,12(r1)		# RelationalOperator6=r4
	diab.li		r8,3		# rtb_Compare=r8
	stw		r4,20(r1)		# RelationalOperator6=r4
	diab.li		r6,2		# PumpBOn=r6
	diab.addi		r3,r1,76		# PumpBOn=r3
	diab.addi		r5,r1,84
	diab.addi		r7,r1,180
	mr		r10,r4		# RelationalOperator6=r10
	bl		sMultiWordDivFloor
	.d2line		323
.Llo843:
	lwz		r0,180(r1)		# rtb_Compare=r0
#                              &tmp_8.chunks[0U], 3, &tmp_6.chunks[0U], 2,
#                              &tmp_7.chunks[0U], 2, &tmp_9.chunks[0U], 2);
#           PumpBOn = MultiWord2sLong(&tmp_8.chunks[0U]);
#         }
# 
#         /* Saturate: '<S44>/Saturation1' incorporates:
#          *  Product: '<S44>/Divide3'
#          */
#         if (PumpBOn > 1000) {
	.d2line		2656
.Llo844:
	cmpi		0,0,r0,1000		# rtb_Compare=r0
	bc		0,1,.L4326	# le
.L4402:
#           ATV_B.Switch4 = 1000U;
	.d2line		2657
.Llo641:
	diab.li		r0,1000		# rtb_Compare=r0
	b		.L4327
.L4326:
#         } else if (PumpBOn < 0) {
	.d2line		2658
	se_cmpi		r0,0		# rtb_Compare=r0
	bc		0,0,.L4324	# ge
.L4782:
#           ATV_B.Switch4 = 0U;
	.d2line		2659
	diab.li		r0,0		# rtb_Compare=r0
	b		.L4327
.L4324:
#         } else {
#           ATV_B.Switch4 = (uint16_T)PumpBOn;
.L4327:
#         }
# 
#         /* End of Saturate: '<S44>/Saturation1' */
# 
#         /* Switch: '<S42>/Switch3' incorporates:
#          *  Constant: '<S44>/Constant'
#          */
#         ATV_B.Switch3 = 0U;
	.d2line		2657
	sth		r0,88(r28)		# rtb_Compare=r0
	.d2line		2669
	diab.li		r0,0		# rtb_Compare=r0
	sth		r0,90(r28)		# rtb_Compare=r0
	b		.L4333
.L4330:
#       }
# 
#       /* End of Switch: '<S42>/Switch4' */
#     } else {
#       ATV_B.Switch4 = 0U;
	.d2line		2674
.Llo642:
	diab.li		r0,0		# rtb_Compare=r0
.Llo845:
	stw		r0,88(r28)		# rtb_Compare=r0
	b		.L4333
.L4332:
#       ATV_B.Switch3 = 0U;
#     }
# 
#     /* End of Switch: '<S42>/Switch5' */
#   } else {
#     ATV_B.Switch4 = 0U;
	.d2line		2680
.Llo846:
	diab.li		r0,0		# rtb_Compare=r0
.Llo847:
	stw		r0,88(r28)		# rtb_Compare=r0
.L4333:
	.section	.text_vle
.L5642:
#     ATV_B.Switch3 = 0U;
#   }
# 
#   /* End of Switch: '<S31>/Switch4' */
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
	.d2line		2722
.Llo643:
	lha		r0,pcx_CANdb_TransmitMessage4_msg_handle@sdarx(r0)		# rtb_Compare=r0
.Llo848:
	e_cmph16i	r0,-1		# rtb_Compare=r0
	bc		1,2,.L4343	# eq
#       pcx_CANdb_TransmitMessage4_in_port_buffer[0] = ATV_B.Switch4;
	.d2line		2723
.Llo849:
	lhz		r3,88(r28)		# retval=r3
	.d2line		2724
.Llo1043:
	diab.addi		r0,r1,220		# rtb_Compare=r0
	.d2line		2727
.Llo850:
	diab.addi		r5,r1,224
#       pcx_CANdb_TransmitMessage4_in_port_ptr[0] =
	.d2line		2730
	diab.addi		r26,r1,228		# PumpBOn=r26
.Llo662:
	efscfui		r3,r3		# retval=r3 retval=r3
#         &pcx_CANdb_TransmitMessage4_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage4_in_port_buffer[1] = ATV_B.Switch3;
	stw		r0,252(r1)		# rtb_Compare=r0
	.d2line		2735
	lis		r11,pcx_CANdb_TransmitMessage4_field_eng_max.4340@ha
	lis		r12,pcx_CANdb_TransmitMessage4_field_scale.4341@ha
	.d2line		2723
	stw		r3,220(r1)		# retval=r3
#       pcx_CANdb_TransmitMessage4_in_port_ptr[1] =
	e_add16i		r11,r11,pcx_CANdb_TransmitMessage4_field_eng_max.4340@l
	lis		r27,pcx_CANdb_TransmitMessage4_field_offset.4342@ha		# PumpBOn=r27
.Llo644:
	diab.li		r24,0		# RelationalOperator6=r24
#         &pcx_CANdb_TransmitMessage4_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage4_in_port_buffer[2] = ATV_B.Cast2;
	.d2line		2726
.Llo921:
	lhz		r4,90(r28)		# u0_tmp=r4
.Llo602:
	diab.li		r23,1
	diab.li		r22,4
	.d2line		2733
	diab.addi		r0,r1,232		# rtb_Compare=r0
#       pcx_CANdb_TransmitMessage4_in_port_ptr[2] =
	efscfui		r6,r4		# PumpBOn=r6 u0_tmp=r4
	.d2line		2727
.Llo957:
	stw		r5,256(r1)
#         &pcx_CANdb_TransmitMessage4_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage4_in_port_buffer[3] = ATV_B.Cast1;
	.d2line		2735
	e_add16i		r12,r12,pcx_CANdb_TransmitMessage4_field_scale.4341@l
	e_add16i		r27,r27,pcx_CANdb_TransmitMessage4_field_offset.4342@l		# PumpBOn=r27 PumpBOn=r27
	stw		r6,224(r1)		# PumpBOn=r6
#       pcx_CANdb_TransmitMessage4_in_port_ptr[3] =
	lis		r7,pcx_CANdb_TransmitMessage4_field_is_signed.4336@ha
	lis		r8,pcx_CANdb_TransmitMessage4_field_valtype.4337@ha		# rtb_Compare=r8
.Llo887:
	lis		r9,pcx_CANdb_TransmitMessage4_field_order.4338@ha		# RelationalOperator8=r9
#         &pcx_CANdb_TransmitMessage4_in_port_buffer[3];
#       pcx_vdb_pack_msg((const F32 * const *)
	.d2line		2729
.Llo927:
	lhz		r25,84(r28)		# u0_tmp=r25
.Llo977:
	lis		r10,pcx_CANdb_TransmitMessage4_field_eng_min.4339@ha		# u0_tmp=r10
	lis		r5,pcx_CANdb_TransmitMessage4_field_start_pos.4334@ha
	lis		r6,pcx_CANdb_TransmitMessage4_field_width.4335@ha		# PumpBOn=r6
	.d2line		2730
	stw		r26,260(r1)		# PumpBOn=r26
	diab.addi		r3,r1,252		# retval=r3
.Llo1044:
	diab.addi		r4,r1,156		# u0_tmp=r4
.Llo603:
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage4_field_is_signed.4336@l
	efscfui		r26,r25		# PumpBOn=r26 u0_tmp=r25
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage4_field_valtype.4337@l		# rtb_Compare=r8 rtb_Compare=r8
.Llo888:
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage4_field_order.4338@l		# RelationalOperator8=r9 RelationalOperator8=r9
.Llo604:
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage4_field_eng_min.4339@l		# u0_tmp=r10 u0_tmp=r10
.Llo605:
	stw		r26,228(r1)		# PumpBOn=r26
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage4_field_start_pos.4334@l
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage4_field_width.4335@l		# PumpBOn=r6 PumpBOn=r6
	.d2line		2732
.Llo958:
	lhz		r26,86(r28)		# PumpBOn=r26
	stw		r11,8(r1)
	stw		r12,12(r1)
	efscfui		r11,r26		# PumpBOn=r26
	stw		r27,16(r1)		# PumpBOn=r27
	stw		r24,20(r1)		# RelationalOperator6=r24
	stw		r23,24(r1)
	stw		r22,28(r1)
	stw		r11,232(r1)
	.d2line		2733
	stw		r0,264(r1)		# rtb_Compare=r0
	.d2line		2735
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
	.d2line		2748
.Llo851:
	lha		r3,pcx_CANdb_TransmitMessage4_msg_handle@sdarx(r0)		# retval=r3
	diab.addi		r4,r1,156		# u0_tmp=r4
	bl		pcx_transmit
.Llo1045:
	b		.L4344
.L4343:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		2751
.Llo645:
	diab.li		r3,0		# retval=r3
.L4344:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage4 = !retval;
	.d2line		2754
.Llo1046:
	rlwinm		r0,r3,0,24,31		# rtb_Compare=r0 retval=r3
.Llo852:
	cntlzw		r0,r0		# rtb_Compare=r0 rtb_Compare=r0
	diab.srwi		r0,5		# rtb_Compare=r0
	stb		r0,127(r28)		# rtb_Compare=r0
	.section	.text_vle
.L5643:
	.section	.text_vle
.L5682:
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
	.d2line		2800
.Llo853:
	lha		r0,pcx_CANdb_TransmitMessage5_msg_handle@sdarx(r0)		# rtb_Compare=r0
.Llo854:
	e_cmph16i	r0,-1		# rtb_Compare=r0
	bc		1,2,.L4354	# eq
#       pcx_CANdb_TransmitMessage5_in_port_buffer[0] = atv_fs1_in;
	.d2line		2801
.Llo855:
	lbz		r3,atv_fs1_in@sdarx(r0)		# retval=r3
	.d2line		2802
.Llo1047:
	diab.addi		r0,r1,288		# rtb_Compare=r0
	.d2line		2804
.Llo856:
	lbz		r5,atv_rwd_mode_in@sdarx(r0)
#       pcx_CANdb_TransmitMessage5_in_port_ptr[0] =
	.d2line		2805
	diab.addi		r4,r1,292		# u0_tmp=r4
.Llo606:
	efscfui		r6,r3		# PumpBOn=r6 retval=r3
#         &pcx_CANdb_TransmitMessage5_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage5_in_port_buffer[1] = atv_rwd_mode_in;
.Llo959:
	stw		r0,328(r1)		# rtb_Compare=r0
	stw		r4,332(r1)		# u0_tmp=r4
	.d2line		2816
	lis		r11,pcx_CANdb_TransmitMessage5_field_eng_max.4351@ha
#       pcx_CANdb_TransmitMessage5_in_port_ptr[1] =
	efscfui		r5,r5
	.d2line		2807
	lbz		r3,atv_fwd_mode_in@sdarx(r0)		# retval=r3
#         &pcx_CANdb_TransmitMessage5_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage5_in_port_buffer[2] = atv_fwd_mode_in;
	.d2line		2808
	diab.addi		r0,r1,296		# rtb_Compare=r0
	.d2line		2801
	stw		r6,288(r1)		# PumpBOn=r6
	.d2line		2804
	stw		r5,292(r1)
#       pcx_CANdb_TransmitMessage5_in_port_ptr[2] =
	.d2line		2810
	lis		r4,atvc_maxRegenCurr@ha		# u0_tmp=r4
	stw		r0,336(r1)		# rtb_Compare=r0
#         &pcx_CANdb_TransmitMessage5_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage5_in_port_buffer[3] = atvc_maxRegenCurr;
	.d2line		2813
	lis		r6,atvc_maxDischCurr@ha		# PumpBOn=r6
	.d2line		2807
	efscfui		r5,r3		# retval=r3
	.d2line		2816
	e_add16i		r11,r11,pcx_CANdb_TransmitMessage5_field_eng_max.4351@l
	lis		r9,pcx_CANdb_TransmitMessage5_field_scale.4352@ha		# RelationalOperator8=r9
#       pcx_CANdb_TransmitMessage5_in_port_ptr[3] =
.Llo928:
	lis		r10,pcx_CANdb_TransmitMessage5_field_offset.4353@ha		# u0_tmp=r10
	stw		r5,296(r1)
	.d2line		2811
	diab.addi		r3,r1,300		# retval=r3
#         &pcx_CANdb_TransmitMessage5_in_port_buffer[3];
#       pcx_CANdb_TransmitMessage5_in_port_buffer[4] = atvc_maxDischCurr;
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage5_field_scale.4352@l		# RelationalOperator8=r9 RelationalOperator8=r9
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage5_field_offset.4353@l		# u0_tmp=r10 u0_tmp=r10
	.d2line		2810
.Llo607:
	lhz		r0,atvc_maxRegenCurr@l(r4)		# rtb_Compare=r0 u0_tmp=r4
	.d2line		2814
.Llo608:
	diab.addi		r26,r1,304		# PumpBOn=r26
.Llo663:
	diab.li		r25,0		# u0_tmp=r25
.Llo978:
	diab.li		r27,5		# PumpBOn=r27
#       pcx_CANdb_TransmitMessage5_in_port_ptr[4] =
.Llo646:
	stw		r3,340(r1)		# retval=r3
	lis		r7,pcx_CANdb_TransmitMessage5_field_is_signed.4347@ha
#         &pcx_CANdb_TransmitMessage5_in_port_buffer[4];
#       pcx_vdb_pack_msg((const F32 * const *)
	lis		r8,pcx_CANdb_TransmitMessage5_field_valtype.4348@ha		# rtb_Compare=r8
.Llo889:
	lis		r5,pcx_CANdb_TransmitMessage5_field_start_pos.4345@ha
	efscfui		r3,r0		# retval=r3 rtb_Compare=r0
	diab.addi		r4,r1,164		# u0_tmp=r4
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage5_field_is_signed.4347@l
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage5_field_valtype.4348@l		# rtb_Compare=r8 rtb_Compare=r8
.Llo890:
	stw		r3,300(r1)		# retval=r3
	diab.li		r0,1		# rtb_Compare=r0
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage5_field_start_pos.4345@l
	.d2line		2813
	lhz		r12,atvc_maxDischCurr@l(r6)		# PumpBOn=r6
	.d2line		2816
	diab.addi		r3,r1,328		# retval=r3
.Llo1048:
	stw		r11,8(r1)
	lis		r6,pcx_CANdb_TransmitMessage5_field_width.4346@ha		# PumpBOn=r6
	stw		r9,12(r1)		# RelationalOperator8=r9
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage5_field_width.4346@l		# PumpBOn=r6 PumpBOn=r6
.Llo960:
	stw		r10,16(r1)		# u0_tmp=r10
	efscfui		r11,r12
	stw		r25,20(r1)		# u0_tmp=r25
	lis		r9,pcx_CANdb_TransmitMessage5_field_order.4349@ha		# RelationalOperator8=r9
	stw		r0,24(r1)		# rtb_Compare=r0
	lis		r10,pcx_CANdb_TransmitMessage5_field_eng_min.4350@ha		# u0_tmp=r10
	stw		r27,28(r1)		# PumpBOn=r27
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage5_field_order.4349@l		# RelationalOperator8=r9 RelationalOperator8=r9
.Llo929:
	stw		r11,304(r1)
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage5_field_eng_min.4350@l		# u0_tmp=r10 u0_tmp=r10
.Llo609:
	stw		r26,344(r1)		# PumpBOn=r26
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
	.d2line		2829
.Llo857:
	lha		r3,pcx_CANdb_TransmitMessage5_msg_handle@sdarx(r0)		# retval=r3
	diab.addi		r4,r1,164		# u0_tmp=r4
	bl		pcx_transmit
.Llo1049:
	b		.L4355
.L4354:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		2832
.Llo647:
	diab.li		r3,0		# retval=r3
.L4355:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage5 = !retval;
	.d2line		2835
.Llo1050:
	rlwinm		r0,r3,0,24,31		# rtb_Compare=r0 retval=r3
.Llo858:
	cntlzw		r0,r0		# rtb_Compare=r0 rtb_Compare=r0
	diab.srwi		r0,5		# rtb_Compare=r0
	stb		r0,128(r28)		# rtb_Compare=r0
	.section	.text_vle
.L5683:
#   }
# 
#   /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
#   /* S-Function Block: <S5>/pdx_DigitalOutput
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)ATV_B.Switch,
	.d2line		2846
.Llo859:
	lbz		r3,120(r28)		# retval=r3
	diab.li		r4,0		# u0_tmp=r4
	diab.addi		r7,r1,33
	diab.li		r5,0
	diab.li		r6,0		# PumpBOn=r6
	.d2line		2968
	e_lis		r27,16256		# PumpBOn=r27
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YL4, state, FALSE);
.Llo648:
	bl		put_state_processing
	.d2line		2851
	lbz		r4,33(r1)		# u0_tmp=r4
	diab.li		r3,158		# retval=r3
	diab.li		r5,0
#   }
# 
#   /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput1' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
#   /* S-Function Block: <S5>/pdx_DigitalOutput1
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)atv_dbg_pumpB_out,
	bl		pdx_digital_output
	.d2line		2862
	lbz		r3,atv_dbg_pumpB_out@sdarx(r0)		# retval=r3
	diab.li		r4,0		# u0_tmp=r4
	diab.addi		r7,r1,34
	diab.li		r5,0
	diab.li		r6,0		# PumpBOn=r6
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YA1, state, FALSE);
	bl		put_state_processing
	.d2line		2867
	lbz		r4,34(r1)		# u0_tmp=r4
	diab.li		r3,61		# retval=r3
	diab.li		r5,0
#   }
# 
#   /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput3' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
#   /* S-Function Block: <S5>/pdx_DigitalOutput3
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)ATV_B.heater_ctrl_out,
	bl		pdx_digital_output
	.d2line		2878
	lbz		r3,153(r28)		# retval=r3
	diab.li		r4,0		# u0_tmp=r4
	diab.addi		r7,r1,35
	diab.li		r5,0
	diab.li		r6,0		# PumpBOn=r6
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_ZF2, state, FALSE);
	bl		put_state_processing
	.d2line		2883
	lbz		r4,35(r1)		# u0_tmp=r4
	diab.li		r3,212		# retval=r3
	diab.li		r5,0
#   }
# 
#   /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput4' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
#   /* S-Function Block: <S5>/pdx_DigitalOutput4
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)ATV_B.en_inv_rear_out,
	bl		pdx_digital_output
	.d2line		2894
	lbz		r3,154(r28)		# retval=r3
	diab.li		r4,0		# u0_tmp=r4
	diab.addi		r7,r1,36
	diab.li		r5,0
	diab.li		r6,0		# PumpBOn=r6
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YA2, state, FALSE);
	bl		put_state_processing
	.d2line		2899
	lbz		r4,36(r1)		# u0_tmp=r4
	diab.li		r3,65		# retval=r3
	diab.li		r5,0
#   }
# 
#   /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput5' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
#   /* S-Function Block: <S5>/pdx_DigitalOutput5
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)ATV_B.en_inv_front_out,
	bl		pdx_digital_output
	.d2line		2910
	lbz		r3,155(r28)		# retval=r3
	diab.li		r4,0		# u0_tmp=r4
	diab.addi		r7,r1,37
	diab.li		r5,0
	diab.li		r6,0		# PumpBOn=r6
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YA3, state, FALSE);
	bl		put_state_processing
	.d2line		2915
	lbz		r4,37(r1)		# u0_tmp=r4
	diab.li		r3,70		# retval=r3
	diab.li		r5,0
#   }
# 
#   /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput6' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
#   /* S-Function Block: <S5>/pdx_DigitalOutput6
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)ATV_B.en_inv_gen_out,
	bl		pdx_digital_output
	.d2line		2926
	lbz		r3,156(r28)		# retval=r3
	diab.li		r4,0		# u0_tmp=r4
	diab.addi		r7,r1,38
	diab.li		r5,0
	diab.li		r6,0		# PumpBOn=r6
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YA4, state, FALSE);
	bl		put_state_processing
	.d2line		2931
	lbz		r4,38(r1)		# u0_tmp=r4
	diab.li		r3,75		# retval=r3
	diab.li		r5,0
#   }
# 
#   /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput7' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
#   /* S-Function Block: <S5>/pdx_DigitalOutput7
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)atv_runLed_out,
	bl		pdx_digital_output
	.d2line		2942
	lbz		r3,atv_runLed_out@sdarx(r0)		# retval=r3
	diab.li		r4,0		# u0_tmp=r4
	diab.addi		r7,r1,39
	diab.li		r5,0
	diab.li		r6,0		# PumpBOn=r6
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_ZG2, state, FALSE);
	bl		put_state_processing
	.d2line		2947
	lbz		r4,39(r1)		# u0_tmp=r4
	diab.li		r3,217		# retval=r3
	diab.li		r5,0
#   }
# 
#   /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput8' */
#   /* S-Function Block: <S5>/pdx_DigitalOutput8
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)atv_wakelock_out,
	bl		pdx_digital_output
	.d2line		2956
	lbz		r3,atv_wakelock_out@sdarx(r0)		# retval=r3
	diab.li		r4,0		# u0_tmp=r4
	diab.addi		r7,r1,40
	diab.li		r5,0
	diab.li		r6,0		# PumpBOn=r6
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_XD1_ENABLE_PSU_HOLD, state, FALSE);
	bl		put_state_processing
	.d2line		2961
	lbz		r4,40(r1)		# u0_tmp=r4
	diab.li		r3,21		# retval=r3
	diab.li		r5,0
#   }
# 
#   /* Gain: '<S5>/Gain' */
#   ATV_B.Saturation = 0.01 * atv_dbg_FAN_out;
	bl		pdx_digital_output
	.d2line		2965
	lwz		r3,atv_dbg_FAN_out@sdarx(r0)		# retval=r3
.Llo1051:
	efsmul		r3,r3,r30		# retval=r3 retval=r3
# 
#   /* Saturate: '<S5>/Saturation' */
#   if (ATV_B.Saturation > 1.0) {
	stw		r3,8(r28)		# retval=r3
	.d2line		2968
	efscmpgt		1,r3,r27		# retval=r3 PumpBOn=r27
	bc		0,5,.L4357		# le
#     /* Gain: '<S5>/Gain' */
#     ATV_B.Saturation = 1.0;
	.d2line		2970
	stw		r27,8(r28)		# PumpBOn=r27
	mr		r3,r27		# PumpBOn=r3
	b		.L4358
.L4357:
#   } else {
#     if (ATV_B.Saturation < 0.0) {
	.d2line		2972
.Llo649:
	diab.li		r27,0		# PumpBOn=r27
.Llo650:
	efscmplt		1,r3,r27		# retval=r3 PumpBOn=r27
	bc		0,5,.L4358		# ge
#       /* Gain: '<S5>/Gain' */
#       ATV_B.Saturation = 0.0;
	.d2line		2974
	stw		r27,8(r28)		# PumpBOn=r27
	diab.li		r3,0		# retval=r3
.L4358:
#     }
#   }
# 
#   /* End of Saturate: '<S5>/Saturation' */
# 
#   /* S-Function (pdx_pwm_output): '<S5>/pdx_PWMOutput' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
#   /*
#    * S-Function Block: <S5>/pdx_PWMOutput
#    * [$Id: pdx_pwm_output.tlc 30730 2012-09-29 12:01:15Z jtough $]
#    */
#   {
#     F32 dc;
#     put_dutycycle_processing(ATV_B.Saturation,
	.d2line		2989
.Llo651:
	diab.li		r4,0		# u0_tmp=r4
	diab.addi		r9,r1,72		# RelationalOperator8=r9
	e_lis		r8,16256		# rtb_Compare=r8
	diab.li		r5,0
	diab.li		r6,0		# PumpBOn=r6
	diab.li		r7,0
	bl		put_dutycycle_processing
#       0,
#       (U8)false,
#       0.0,
#       (0.0),
#       (1.0),
#       &dc);
#     (void) pdx_pwm_output(PIO_FFPOT_YK3,
	.d2line		3009
.Llo1052:
	e_lis		r30,16544		# PumpBOn=r30
	.d2line		2996
.Llo652:
	lwz		r5,72(r1)
	diab.li		r6,0		# PumpBOn=r6
	diab.li		r3,150		# PumpBOn=r3
	e_lis		r4,17402		# u0_tmp=r4
	diab.li		r7,0
#                           500.0,
#                           dc,
#                           0.0,
#                           FALSE);
#   }
# 
#   /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput2' */
#   /* S-Function Block: <S6>/pai_BasicAnalogInput2
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XE3, &adc, FALSE);
	.d2line		3034
	e_lis		r27,17530		# PumpBOn=r27
	bl		pdx_pwm_output
	diab.addi		r4,r1,58		# u0_tmp=r4
	diab.li		r3,29		# PumpBOn=r3
	diab.li		r5,0
#     ATV_B.pai_BasicAnalogInput2 = (adc * 5.0) / 4096.0;
	bl		pax_adc_input
	.d2line		3010
	lha		r0,58(r1)		# rtb_Compare=r0
	.d2line		3019
.Llo860:
	diab.addi		r4,r1,60		# u0_tmp=r4
	diab.li		r3,28		# PumpBOn=r3
	diab.li		r5,0
#   }
# 
#   /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput7' */
#   /* S-Function Block: <S6>/pai_BasicAnalogInput7
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XE2, &adc, FALSE);
	efscfsi		r0,r0		# rtb_Compare=r0 rtb_Compare=r0
	efsmul		r0,r0,r30		# rtb_Compare=r0 rtb_Compare=r0 PumpBOn=r30
	efsmul		r0,r0,r29		# rtb_Compare=r0 rtb_Compare=r0
	stw		r0,56(r28)		# rtb_Compare=r0
#     atv_xe2_raw_ain = (adc * 5.0) / 4096.0;
	bl		pax_adc_input
	.d2line		3020
.Llo861:
	lha		r0,60(r1)		# rtb_Compare=r0
	.d2line		3029
.Llo862:
	diab.addi		r4,r1,62		# u0_tmp=r4
	diab.li		r3,26		# PumpBOn=r3
	diab.li		r5,0
#   }
# 
#   /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput3' */
#   /* S-Function Block: <S6>/pai_BasicAnalogInput3
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XD3, &adc, FALSE);
	efscfsi		r0,r0		# rtb_Compare=r0 rtb_Compare=r0
	efsmul		r0,r0,r30		# rtb_Compare=r0 rtb_Compare=r0 PumpBOn=r30
	efsmul		r0,r0,r29		# rtb_Compare=r0 rtb_Compare=r0
	stw		r0,atv_xe2_raw_ain@sdarx(r0)		# rtb_Compare=r0
#     atv_xd3_raw_ain = (adc * 5.0) / 4096.0;
	bl		pax_adc_input
	.d2line		3030
.Llo863:
	lha		r0,62(r1)		# rtb_Compare=r0
.Llo864:
	efscfsi		r0,r0		# rtb_Compare=r0 rtb_Compare=r0
	efsmul		r0,r0,r30		# rtb_Compare=r0 rtb_Compare=r0 PumpBOn=r30
	efsmul		r0,r0,r29		# rtb_Compare=r0 rtb_Compare=r0
#   }
# 
#   /* Gain: '<S6>/Gain2' */
#   rtb_Gain = floor(1000.0 * ATV_B.pai_BasicAnalogInput2);
	stw		r0,atv_xd3_raw_ain@sdarx(r0)		# rtb_Compare=r0
	.d2line		3034
	lwz		r3,56(r28)		# PumpBOn=r3
	efsmul		r3,r3,r27		# PumpBOn=r3 PumpBOn=r3 PumpBOn=r27
	bl		_f_ftod
.Llo865:
	bl		floor
	bl		_d_dtof
.Llo762:
	mr		r30,r3		# rtb_Gain=r30 rtb_Gain=r3
#   if (rtIsNaN(rtb_Gain) || rtIsInf(rtb_Gain)) {
	.d2line		3035
.Llo653:
	bl		rtIsNaN
.Llo654:
	e_andi.		r3,r3,255		# PumpBOn=r3 PumpBOn=r3
	bc		0,2,.L4399	# ne
.Llo655:
	mr		r3,r30		# rtb_Gain=r3 rtb_Gain=r30
	bl		rtIsInf
.Llo656:
	e_andi.		r3,r3,255		# PumpBOn=r3 PumpBOn=r3
.Llo657:
	bc		1,2,.L4359	# eq
.L4399:
#     rtb_Gain = 0.0;
	.d2line		3036
	diab.li		r3,0		# rtb_Gain=r3
.Llo763:
	b		.L4400
.L4359:
#   } else {
#     rtb_Gain = fmod(rtb_Gain, 4.294967296E+9);
	.d2line		3038
.Llo764:
	mr		r3,r30		# rtb_Gain=r3 rtb_Gain=r30
	bl		_f_ftod
	.d2line		3041
	diab.li		r30,0		# PumpBOn=r30
.Llo658:
	e_lis		r5,16880
	diab.li		r6,0		# PumpBOn=r6
	bl		fmod
	bl		_d_dtof
#   }
# 
#   atv_xe3_ain = rtb_Gain < 0.0 ? -(int32_T)(uint32_T)-rtb_Gain : (int32_T)
.Llo765:
	efscmplt		1,r3,r30		# rtb_Gain=r3 PumpBOn=r30
	bc		0,5,.L4400		# ge
.Llo659:
	efsneg		r0,r3		# rtb_Compare=r0 rtb_Gain=r3
.Llo866:
	efsctuiz		r0,r0		# rtb_Compare=r0 rtb_Compare=r0
	neg		r0,r0		# rtb_Compare=r0 rtb_Compare=r0
	b		.L4401
.L4400:
.Llo867:
	efsctuiz		r0,r3		# rtb_Compare=r0 rtb_Gain=r3
.L4401:
.Llo766:
	stw		r0,atv_xe3_ain@sdarx(r0)		# rtb_Compare=r0
	.d2line		3047
	lis		r3,atvc_an_in_sel_th@ha		# rtb_Gain=r3
#     (uint32_T)rtb_Gain;
# 
#   /* End of Gain: '<S6>/Gain2' */
# 
#   /* Relay: '<S6>/Relay4' */
#   if (atv_xe2_raw_ain >= atvc_an_in_sel_th + atvc_an_in_sel_his) {
.Llo767:
	lis		r4,atvc_an_in_sel_his@ha		# u0_tmp=r4
	.d2line		3041
.Llo610:
	lwz		r6,atv_xe2_raw_ain@sdarx(r0)		# PumpBOn=r6
.Llo961:
	lwz		r0,atvc_an_in_sel_th@l(r3)		# rtb_Compare=r0 rtb_Gain=r3
	lwz		r5,atvc_an_in_sel_his@l(r4)		# u0_tmp=r4
	efsadd		r0,r0,r5		# rtb_Compare=r0 rtb_Compare=r0
	efscmplt		1,r6,r0		# PumpBOn=r6 rtb_Compare=r0
	bc		1,5,.L4362		# lt
#     ATV_DW.Relay4_Mode = true;
	.d2line		3048
.Llo868:
	diab.li		r0,1		# rtb_Compare=r0
.Llo869:
	stb		r0,48(r31)		# rtb_Compare=r0
	b		.L4363
.L4362:
#   } else {
#     if (atv_xe2_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
	.d2line		3050
.Llo870:
	lwz		r0,atvc_an_in_sel_th@l(r3)		# rtb_Compare=r0 rtb_Gain=r3
.Llo871:
	lwz		r3,atvc_an_in_sel_his@l(r4)		# rtb_Gain=r3 u0_tmp=r4
	efssub		r0,r0,r3		# rtb_Compare=r0 rtb_Compare=r0 rtb_Gain=r3
	efscmpgt		1,r6,r0		# PumpBOn=r6 rtb_Compare=r0
	bc		1,5,.L4363		# gt
#       ATV_DW.Relay4_Mode = false;
	.d2line		3051
.Llo611:
	diab.li		r0,0		# rtb_Compare=r0
.Llo872:
	stb		r0,48(r31)		# rtb_Compare=r0
.L4363:
#     }
#   }
# 
#   atv_apu_req_in = !ATV_DW.Relay4_Mode;
	.d2line		3055
.Llo873:
	lbz		r0,48(r31)		# rtb_Compare=r0
	.d2line		3067
.Llo874:
	diab.li		r3,1		# rtb_Gain=r3
	diab.li		r4,0		# u0_tmp=r4
	diab.addi		r7,r1,41
# 
#   /* End of Relay: '<S6>/Relay4' */
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
	cntlzw		r0,r0		# rtb_Compare=r0 rtb_Compare=r0
	diab.li		r6,1		# PumpBOn=r6
	diab.srwi		r0,5		# rtb_Compare=r0
	diab.li		r5,0
	stb		r0,atv_apu_req_in@sdarx(r0)		# rtb_Compare=r0
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)(true),
#                          &state);
#     (void) pdx_digital_output
#       (PIO_DOT_XD4_YA1_YA4_YB1_YC2_YC3_YD1_YD2_YD3_YB4_YE1_YE2_YK3_ZA4_ZB4_ZE1_ZE2_ZF3_ENABLE,
	.d2line		3073
.Llo875:
	lbz		r4,41(r1)		# u0_tmp=r4
	diab.li		r3,31		# rtb_Gain=r3
	diab.li		r5,0
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
	.d2line		3085
	diab.li		r3,1		# rtb_Gain=r3
	diab.li		r4,0		# u0_tmp=r4
	diab.addi		r7,r1,42
	diab.li		r6,1		# PumpBOn=r6
	diab.li		r5,0
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)(true),
#                          &state);
#     (void) pdx_digital_output
#       (PIO_DOT_YA2_YA3_YC1_YE3_YL2_YL4_YM2_YM3_ZC1_ZD1_ZD2_ZE3_ZE4_ZG2_ENABLE,
	.d2line		3091
	lbz		r4,42(r1)		# u0_tmp=r4
	diab.li		r3,59		# rtb_Gain=r3
	diab.li		r5,0
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
	.d2line		3103
	diab.li		r3,1		# rtb_Gain=r3
	diab.li		r4,0		# u0_tmp=r4
	diab.addi		r7,r1,43
	diab.li		r6,1		# PumpBOn=r6
	diab.li		r5,0
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)1.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_INT_ENABLE_SECONDARY_MICRO, state, FALSE);
	.d2line		3108
	lbz		r4,43(r1)		# u0_tmp=r4
	diab.li		r3,2		# rtb_Gain=r3
	diab.li		r5,0
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
	.d2line		3119
	diab.li		r3,0		# rtb_Gain=r3
	diab.addi		r7,r1,44
	diab.li		r4,0		# u0_tmp=r4
	diab.li		r5,0
	diab.li		r6,0		# PumpBOn=r6
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YK2_DISABLE, state, FALSE);
	.d2line		3124
	lbz		r4,44(r1)		# u0_tmp=r4
	diab.li		r3,149		# rtb_Gain=r3
	diab.li		r5,0
	bl		pdx_digital_output
	lhz		r3,8(r31)		# rtb_Gain=r3
#   }
# 
#   /* Chart: '<S34>/VSMGestioneIbrido' incorporates:
#    *  Constant: '<S68>/ATVC_iCEShutOff'
#    *  RelationalOperator: '<S68>/Relational Operator'
#    */
#   if (ATV_DW.temporalCounter_i1 < 511U) {
	.d2line		3131
.Llo768:
	cmpli		0,0,r3,511		# rtb_Gain=r3
	bc		0,0,.L4364	# ge
#     ATV_DW.temporalCounter_i1++;
	.d2line		3132
	se_addi		r3,1		# rtb_Gain=r3 rtb_Gain=r3
	sth		r3,8(r31)		# rtb_Gain=r3
.L4364:
.Llo769:
	lhz		r3,10(r31)		# rtb_Gain=r3
#   }
# 
#   if (ATV_DW.temporalCounter_i2 < 2047U) {
	.d2line		3135
.Llo770:
	cmpli		0,0,r3,2047		# rtb_Gain=r3
	bc		0,0,.L4365	# ge
#     ATV_DW.temporalCounter_i2++;
	.d2line		3136
	se_addi		r3,1		# rtb_Gain=r3 rtb_Gain=r3
	sth		r3,10(r31)		# rtb_Gain=r3
.L4365:
#   }
# 
#   /* Gateway: loop_10ms/HYBRID MANAGEMENT/VSMGestioneIbrido */
#   ATV_DW.ReqGen_prev = ATV_DW.ReqGen_start;
	.d2line		3140
.Llo771:
	lbz		r3,55(r31)		# rtb_Gain=r3
	.d2line		3144
.Llo772:
	lbz		r0,31(r31)		# rtb_Compare=r0
.Llo876:
	stb		r3,54(r31)		# rtb_Gain=r3
#   ATV_DW.ReqGen_start = atv_apu_req_in;
	se_cmpi		r0,0		# rtb_Compare=r0
# 
#   /* During: loop_10ms/HYBRID MANAGEMENT/VSMGestioneIbrido */
#   if (ATV_DW.is_active_c2_ATV == 0U) {
	lbz		r0,atv_apu_req_in@sdarx(r0)		# rtb_Compare=r0
	.d2line		3141
	stb		r0,55(r31)		# rtb_Compare=r0
	bc		0,2,.L4385	# ne
#     ATV_DW.ReqGen_prev = atv_apu_req_in;
	.d2line		3145
	stb		r0,54(r31)		# rtb_Compare=r0
# 
#     /* Entry: loop_10ms/HYBRID MANAGEMENT/VSMGestioneIbrido */
#     ATV_DW.is_active_c2_ATV = 1U;
	.d2line		3148
	diab.li		r0,1		# rtb_Compare=r0
	stb		r0,31(r31)		# rtb_Compare=r0
# 
#     /* Entry Internal: loop_10ms/HYBRID MANAGEMENT/VSMGestioneIbrido */
#     ATV_DW.is_active_MonitoraggioStatoICE = 1U;
# 
#     /* Entry 'MonitoraggioStatoICE': '<S66>:168' */
#     /* Entry Internal 'MonitoraggioStatoICE': '<S66>:168' */
#     /* Transition: '<S66>:179' */
#     ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOff;
# 
#     /* Entry 'iCEOff': '<S66>:169' */
#     ATV_DW.IceOn = false;
#     ATV_DW.IceFault = false;
#     ATV_DW.ShutDownHybrid = false;
# 
#     /* Entry Internal 'GestioneIbrido': '<S66>:166' */
#     /* Transition: '<S66>:192' */
#     ATV_DW.is_GestioneIbrido = ATV_IN_ProceduraAvviamento;
	.d2line		3165
	diab.li		r0,258		# rtb_Compare=r0
	sth		r0,32(r31)		# rtb_Compare=r0
# 
#     /* Entry Internal 'ProceduraAvviamento': '<S66>:191' */
#     /* Transition: '<S66>:108' */
#     ATV_DW.is_ProceduraAvviamento = ATV_IN_StarterMode;
# 
#     /* Entry 'StarterMode': '<S66>:67' */
#     /* Entry Internal 'StarterMode': '<S66>:67' */
#     /* Transition: '<S66>:7' */
#     ATV_DW.is_StarterMode = ATV_IN_Inizializzazione;
	.d2line		3174
	diab.li		r0,2		# rtb_Compare=r0
	stb		r0,35(r31)		# rtb_Compare=r0
	.d2line		3156
	diab.li		r0,513		# rtb_Compare=r0
	sth		r0,36(r31)		# rtb_Compare=r0
	diab.li		r0,0		# rtb_Compare=r0
# 
#     /* Entry 'Inizializzazione': '<S66>:6' */
#     ATV_DW.IceStatus = false;
	.d2line		3177
	sth		r0,50(r31)		# rtb_Compare=r0
	.d2line		3159
	sth		r0,52(r31)		# rtb_Compare=r0
	b		.L4386
.L4385:
	lbz		r6,36(r31)		# PumpBOn=r6
#   } else {
#     /* During 'MonitoraggioStatoICE': '<S66>:168' */
#     guard1 = false;
#     switch (ATV_DW.is_MonitoraggioStatoICE) {
	.d2line		3181
.Llo962:
	se_cmpi		r6,1		# PumpBOn=r6
	bc		1,2,.L4367	# eq
	se_cmpi		r6,2		# PumpBOn=r6
	bc		1,2,.L4369	# eq
.Llo963:
	b		.L4372
.L4367:
#      case ATV_IN_IceFault:
#       /* During 'IceFault': '<S66>:171' */
#       if (ATV_DW.temporalCounter_i2 >= 2000U) {
	.d2line		3184
.Llo964:
	lhz		r4,10(r31)		# u0_tmp=r4
.Llo612:
	cmpli		0,0,r4,2000		# u0_tmp=r4
	bc		1,0,.L4381	# lt
.Llo613:
	diab.li		r5,2
	.d2line		3191
	diab.li		r4,0		# u0_tmp=r4
#         /* Transition: '<S66>:213' */
#         ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOff;
# 
#         /* Entry 'iCEOff': '<S66>:169' */
#         ATV_DW.IceOn = false;
#         ATV_DW.IceFault = false;
#         ATV_DW.ShutDownHybrid = false;
	.d2line		3184
.Llo614:
	stb		r5,36(r31)
	stb		r4,51(r31)		# u0_tmp=r4
	.d2line		3189
	sth		r4,52(r31)		# u0_tmp=r4
	.d2line		3193
	b		.L4381
.L4369:
#       }
#       break;
# 
#      case ATV_IN_iCEOff:
#       /* During 'iCEOff': '<S66>:169' */
#       if (ATV_DW.IceOn) {
	.d2line		3197
.Llo615:
	lbz		r5,52(r31)
	.d2line		3206
	diab.li		r4,0		# u0_tmp=r4
.Llo616:
	se_cmpi		r5,0
	bc		1,2,.L4370	# eq
#         /* Transition: '<S66>:178' */
#         ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOn;
#         ATV_DW.temporalCounter_i2 = 0U;
	.d2line		3200
	sth		r4,10(r31)		# u0_tmp=r4
	.d2line		3199
	diab.li		r4,3		# u0_tmp=r4
	stb		r4,36(r31)		# u0_tmp=r4
	b		.L4381
.L4370:
# 
#         /* Entry 'iCEOn': '<S66>:170' */
#       } else {
#         ATV_DW.IceOn = false;
#         ATV_DW.IceFault = false;
#         ATV_DW.ShutDownHybrid = false;
	.d2line		3206
	stb		r4,51(r31)		# u0_tmp=r4
	.d2line		3204
	sth		r4,52(r31)		# u0_tmp=r4
	.d2line		3208
	b		.L4381
.L4372:
	.d2line		3210
.Llo617:
	lbz		r4,53(r31)		# u0_tmp=r4
#       }
#       break;
# 
#      default:
#       /* During 'iCEOn': '<S66>:170' */
#       if (ATV_DW.IceFault) {
	.d2line		3212
.Llo618:
	e_andi.		r4,r4,255		# u0_tmp=r4 u0_tmp=r4
.Llo619:
	bc		1,2,.L4403	# eq
	lhz		r4,10(r31)		# u0_tmp=r4
#         /* Transition: '<S66>:177' */
#         if (!ATV_DW.IceFault) {
#           /* Transition: '<S66>:190' */
#           ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOn;
#           ATV_DW.temporalCounter_i2 = 0U;
# 
#           /* Entry 'iCEOn': '<S66>:170' */
#         } else if (ATV_DW.temporalCounter_i2 >= 100U) {
	.d2line		3220
.Llo620:
	cmpli		0,0,r4,100		# u0_tmp=r4
	bc		1,0,.L4403	# lt
.Llo621:
	diab.li		r5,0
	diab.li		r4,1		# u0_tmp=r4
.Llo622:
	sth		r5,10(r31)
#           /* Transition: '<S66>:176' */
#           ATV_DW.is_MonitoraggioStatoICE = ATV_IN_IceFault;
	.d2line		3222
	stb		r4,36(r31)		# u0_tmp=r4
#           ATV_DW.temporalCounter_i2 = 0U;
# 
#           /* Entry 'IceFault': '<S66>:171' */
#           ATV_DW.ShutDownHybrid = true;
	.d2line		3226
	stb		r4,51(r31)		# u0_tmp=r4
	b		.L4381
.L4403:
#         } else {
#           guard1 = true;
#         }
#       } else {
#         guard1 = true;
#       }
#       break;
#     }
# 
#     if (guard1) {
#       if (!atv_apu_req_in) {
	.d2line		3237
.Llo623:
	e_andi.		r4,r0,255		# u0_tmp=r4 rtb_Compare=r0
	bc		0,2,.L4379	# ne
#         /* Transition: '<S66>:214' */
#         ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOff;
	.d2line		3239
	diab.li		r5,2
	.d2line		3244
	diab.li		r4,0		# u0_tmp=r4
# 
#         /* Entry 'iCEOff': '<S66>:169' */
#         ATV_DW.IceOn = false;
#         ATV_DW.IceFault = false;
#         ATV_DW.ShutDownHybrid = false;
.Llo624:
	stb		r5,36(r31)
	stb		r4,51(r31)		# u0_tmp=r4
	.d2line		3242
	sth		r4,52(r31)		# u0_tmp=r4
	b		.L4381
.L4379:
#       } else {
#         /* Outputs for Function Call SubSystem: '<S66>/MonitoraggioStatoICE.IceCheck' */
#         /* Simulink Function 'IceCheck': '<S66>:174' */
#         ATV_DW.IceFault = true;
	.d2line		3248
.Llo625:
	diab.li		r4,1		# u0_tmp=r4
.Llo626:
	stb		r4,53(r31)		# u0_tmp=r4
.L4381:
# 
#         /* End of Outputs for SubSystem: '<S66>/MonitoraggioStatoICE.IceCheck' */
#       }
#     }
# 
#     /* During 'GestioneIbrido': '<S66>:166' */
#     if (ATV_DW.is_GestioneIbrido == ATV_IN_ProceduraAvviamento) {
	.d2line		3255
.Llo627:
	lbz		r4,32(r31)		# u0_tmp=r4
.Llo628:
	se_cmpi		r4,1		# u0_tmp=r4
	bc		0,2,.L4383	# ne
#       ATV_ProceduraAvviamento();
	.d2line		3256
.Llo629:
	bl		ATV_ProceduraAvviamento
	b		.L4386
.L4383:
#     } else {
#       /* During 'ProceduraSpegnimento': '<S66>:193' */
#       if ((ATV_DW.ReqGen_prev != ATV_DW.ReqGen_start) && ATV_DW.ReqGen_start &&
	.d2line		3259
.Llo773:
	se_cmp		r3,r0		# rtb_Gain=r3 rtb_Compare=r0
	bc		1,2,.L4386	# eq
.Llo774:
	e_andi.		r0,r0,255		# rtb_Compare=r0 rtb_Compare=r0
.Llo877:
	bc		1,2,.L4386	# eq
#           (!ATV_DW.ShutDownHybrid)) {
	.d2line		3260
	lbz		r0,51(r31)		# rtb_Compare=r0
.Llo878:
	se_cmpi		r0,0		# rtb_Compare=r0
	bc		0,2,.L4386	# ne
#         /* Transition: '<S66>:211' */
#         ATV_DW.is_GestioneIbrido = ATV_IN_ProceduraAvviamento;
	.d2line		3262
.Llo879:
	diab.li		r0,258		# rtb_Compare=r0
	.d2line		3271
.Llo880:
	diab.li		r3,2		# rtb_Gain=r3
# 
#         /* Entry Internal 'ProceduraAvviamento': '<S66>:191' */
#         /* Transition: '<S66>:108' */
#         ATV_DW.is_ProceduraAvviamento = ATV_IN_StarterMode;
# 
#         /* Entry 'StarterMode': '<S66>:67' */
#         /* Entry Internal 'StarterMode': '<S66>:67' */
#         /* Transition: '<S66>:7' */
#         ATV_DW.is_StarterMode = ATV_IN_Inizializzazione;
.Llo775:
	sth		r0,32(r31)		# rtb_Compare=r0
	stb		r3,35(r31)		# rtb_Gain=r3
# 
#         /* Entry 'Inizializzazione': '<S66>:6' */
#         ATV_DW.IceStatus = false;
	.d2line		3274
	diab.li		r0,0		# rtb_Compare=r0
	stb		r0,50(r31)		# rtb_Compare=r0
.L4386:
#       }
#     }
#   }
# 
#   /* End of Chart: '<S34>/VSMGestioneIbrido' */
# }
	.d2line		3280
	.d2epilogue_begin
.Llo776:
	diab.addi		r12,r1,408
	lwz		r0,452(r1)		# rtb_Compare=r0
	lmw		r22,0(r12)		# offset r1+408  0x198
	.d2_cfa_restore_list	2,10
	mtspr		lr,r0		# rtb_Compare=lr
	diab.addi		r1,r1,448		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5362:
	.type		ATV_output0,@function
	.size		ATV_output0,.-ATV_output0
# Number of nodes = 3925

# Allocations for ATV_output0
#	?a4		$$337
#	?a5		$$250
#	?a6		$$249
#	?a7		$$248
#	?a8		$$247
#	?a9		$$246
#	?a10		$$245
#	?a11		$$244
#	?a12		$$243
#	?a13		$$242
#	?a14		$$241
#	?a15		$$240
#	?a16		$$239
#	?a17		$$238
#	?a18		$$237
#	?a19		$$236
#	?a20		$$235
#	?a21		$$234
#	?a22		$$233
#	?a23		$$232
#	?a24		$$231
#	?a25		$$230
#	?a26		$$229
#	?a27		$$228
#	?a28		$$227
#	?a29		$$226
#	?a30		$$225
#	?a31		$$224
#	?a32		$$223
#	?a33		$$222
#	?a34		$$221
#	?a35		$$220
#	?a36		$$219
#	?a37		$$218
#	?a38		$$217
#	?a39		$$216
#	?a40		$$215
#	?a41		$$214
#	?a42		$$213
#	?a43		$$212
#	?a44		$$211
#	?a45		$$210
#	?a46		$$209
#	?a47		$$208
#	not allocated	$$207
#	?a48		$$206
#	?a49		$$205
#	not allocated	$$204
#	?a50		$$203
#	not allocated	$$202
#	not allocated	$$201
#	not allocated	$$200
#	not allocated	$$199
#	not allocated	$$198
#	not allocated	$$197
#	not allocated	$$196
#	?a51		$$195
#	?a52		$$194
#	not allocated	$$193
#	?a53		$$192
#	?a54		$$191
#	?a55		$$190
#	?a56		$$189
#	?a57		$$188
#	?a58		$$187
#	?a59		$$186
#	?a60		$$185
#	?a61		u0_tmp
#	?a62		PumpBOn
#	?a63		PumpBOn
#	?a64		PumpBOn
#	?a65		PumpBOn
#	?a66		PumpBOn
#	?a67		rtb_Gain
#	?a68		rtb_Gain
#	?a69		rtb_Gain
#	?a70		rtb_Gain
#	?a71		rtb_Gain
#	?a72		rtb_Gain
#	?a73		rtb_Gain
#	?a74		rtb_Gain
#	?a75		rtb_Gain
#	?a76		rtb_Gain
#	?a77		rtb_Gain
#	?a78		rtb_Gain_d
#	?a79		rtb_Compare
#	?a80		$$184
#	?a81		$$168
#	not allocated	$$167
#	?a82		$$166
#	?a83		$$165
#	not allocated	$$42
#	not allocated	$$41
#	?a84		$$40
#	not allocated	$$10
#	?a85		$$9
#	not allocated	$$8
#	?a87		$$7
#	?a88		rtb_Compare
#	?a89		rtb_Gain_d
#	?a90		rtb_Gain
#	?a91		RelationalOperator6
#	?a92		RelationalOperator8
#	?a93		PumpACtrl
#	?a94		PumpBOn
#	SP,76		tmp
#	SP,108		tmp_0
#	SP,68		tmp_1
#	SP,64		tmp_2
#	SP,192		tmp_3
#	SP,116		tmp_4
#	SP,84		tmp_5
#	SP,92		tmp_6
#	SP,100		tmp_7
#	SP,180		tmp_8
#	SP,124		tmp_9
#	SP,172		tmp_a
#	?a95		u0_tmp
#	not allocated	guard1
#	SP,46		adc
#	SP,32		state
#	SP,48		adc
#	SP,50		adc
#	SP,52		adc
#	SP,132		data
#	?a96		retval
#	SP,348		pcx_CANdb_TransmitMessage_in_port_buffer
#	SP,372		pcx_CANdb_TransmitMessage_in_port_ptr
#	SP,54		adc
#	not allocated	u
#	SP,140		data
#	?a97		retval
#	SP,204		pcx_CANdb_TransmitMessage2_in_port_buffer
#	SP,236		pcx_CANdb_TransmitMessage2_in_port_ptr
#	SP,148		data
#	?a98		retval
#	SP,268		pcx_CANdb_TransmitMessage3_in_port_buffer
#	SP,308		pcx_CANdb_TransmitMessage3_in_port_ptr
#	SP,56		adc
#	not allocated	u
#	not allocated	u
#	SP,156		data
#	?a99		retval
#	SP,220		pcx_CANdb_TransmitMessage4_in_port_buffer
#	SP,252		pcx_CANdb_TransmitMessage4_in_port_ptr
#	SP,164		data
#	?a100		retval
#	SP,288		pcx_CANdb_TransmitMessage5_in_port_buffer
#	SP,328		pcx_CANdb_TransmitMessage5_in_port_ptr
#	SP,33		state
#	SP,34		state
#	SP,35		state
#	SP,36		state
#	SP,37		state
#	SP,38		state
#	SP,39		state
#	SP,40		state
#	SP,72		dc
#	SP,58		adc
#	SP,60		adc
#	SP,62		adc
#	SP,41		state
#	SP,42		state
#	SP,43		state
#	SP,44		state
# static void ATV_update0(void)          /* Sample time: [0.01s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         3284
#$$ld
.L5724:

#$$bf	ATV_update0,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,cr0,spefscr
	.d2_cfa_start __cie
ATV_update0:
	.d2line		0
	.d2prologue_end
	.d2line		3294
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
	bc		0,2,.L4543	# ne
#     ++ATV_M->Timing.clockTickH0;
	.d2line		3295
	lwz		r4,396(r3)
	se_addi		r4,1
	stw		r4,396(r3)
.L4543:
	.d2line		3298
	lwz		r5,396(r3)
#   }
# 
#   ATV_M->Timing.t[0] = ATV_M->Timing.clockTick0 * ATV_M->Timing.stepSize0 +
	e_lis		r6,20352
	.d2line		3295
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
	.d2line		3300
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5725:
	.type		ATV_update0,@function
	.size		ATV_update0,.-ATV_update0
# Number of nodes = 45

# Allocations for ATV_update0
#	?a4		$$257
#	?a5		$$256
#	?a6		$$255
#	not allocated	$$253
#	?a7		$$252
#	not allocated	$$251
#	?a8		$$12
#	?a9		$$11
# static void ATV_output1(void)          /* Sample time: [0.1s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         3304
#$$ld
.L5729:

#$$bf	ATV_output1,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ATV_output1:
	diab.li		r0,-352
	stwux		r1,r1,r0		
	.d2_cfa_def_cfa_offset	352
	diab.addi		r12,r1,316
	mfspr		r0,lr
	stmw		r23,0(r12)		# offset r1+316  0x13c
	.d2_cfa_offset_list	23,31,1,1
	stw		r0,356(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
	.section	.text_vle
.L5821:
#   real_T tmp;
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
	.d2line		3347
	lha		r0,pcx_CANdb_TransmitMessage1_msg_handle@sdarx(r0)
	e_cmph16i	r0,-1
	bc		1,2,.L4555	# eq
	lis		r11,ATV_B@ha
	.d2line		3349
	diab.addi		r0,r1,144
#       pcx_CANdb_TransmitMessage1_in_port_buffer[0] = ATV_B.RateTransition4_b;
	.d2line		3347
	e_add16i		r11,r11,ATV_B@l
	.d2line		3352
	diab.addi		r4,r1,148
	.d2line		3348
	lbz		r3,113(r11)
#       pcx_CANdb_TransmitMessage1_in_port_ptr[0] =
	.d2line		3355
	diab.addi		r26,r1,152
	.d2line		3366
	lis		r12,pcx_CANdb_TransmitMessage1_field_eng_max.4552@ha
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage1_in_port_buffer[1] = ATV_B.RateTransition;
	lis		r31,pcx_CANdb_TransmitMessage1_field_scale.4553@ha
	.d2line		3349
	stw		r0,192(r1)
	lis		r30,pcx_CANdb_TransmitMessage1_field_offset.4554@ha
#       pcx_CANdb_TransmitMessage1_in_port_ptr[1] =
	.d2line		3358
	diab.addi		r27,r1,156
	.d2line		3361
	diab.addi		r28,r1,160
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage1_in_port_buffer[2] = ATV_B.RateTransition1;
	.d2line		3348
	efscfui		r0,r3
	.d2line		3363
	diab.li		r29,0
	.d2line		3366
	diab.li		r24,1
	diab.li		r23,6
	stw		r0,144(r1)
#       pcx_CANdb_TransmitMessage1_in_port_ptr[2] =
	e_add16i		r12,r12,pcx_CANdb_TransmitMessage1_field_eng_max.4552@l
	e_add16i		r31,r31,pcx_CANdb_TransmitMessage1_field_scale.4553@l
	e_add16i		r30,r30,pcx_CANdb_TransmitMessage1_field_offset.4554@l
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage1_in_port_buffer[3] = ATV_B.RateTransition2;
	.d2line		3351
	lbz		r3,114(r11)
	.d2line		3364
	diab.addi		r0,r1,164
	lis		r6,pcx_CANdb_TransmitMessage1_field_width.4547@ha
#       pcx_CANdb_TransmitMessage1_in_port_ptr[3] =
	lis		r7,pcx_CANdb_TransmitMessage1_field_is_signed.4548@ha
	efscfui		r5,r3
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[3];
#       pcx_CANdb_TransmitMessage1_in_port_buffer[4] = ATV_B.RateTransition2;
	.d2line		3352
	stw		r4,196(r1)
#       pcx_CANdb_TransmitMessage1_in_port_ptr[4] =
	lis		r8,pcx_CANdb_TransmitMessage1_field_valtype.4549@ha
	lis		r9,pcx_CANdb_TransmitMessage1_field_order.4550@ha
	stw		r5,148(r1)
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[4];
#       pcx_CANdb_TransmitMessage1_in_port_buffer[5] = 0.0;
	lis		r10,pcx_CANdb_TransmitMessage1_field_eng_min.4551@ha
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage1_field_width.4547@l
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage1_field_is_signed.4548@l
	.d2line		3354
	lbz		r25,115(r11)
#       pcx_CANdb_TransmitMessage1_in_port_ptr[5] =
	.d2line		3366
	lis		r5,pcx_CANdb_TransmitMessage1_field_start_pos.4546@ha
	diab.addi		r3,r1,192
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage1_field_valtype.4549@l
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[5];
#       pcx_vdb_pack_msg((const F32 * const *)
	.d2line		3355
	stw		r26,200(r1)
	diab.addi		r4,r1,48
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage1_field_order.4550@l
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage1_field_eng_min.4551@l
	efscfui		r26,r25
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage1_field_start_pos.4546@l
	stw		r26,152(r1)
	.d2line		3357
	lbz		r11,116(r11)
	efscfui		r11,r11
	stw		r12,8(r1)
	stw		r31,12(r1)
	stw		r30,16(r1)
	stw		r29,20(r1)
	stw		r24,24(r1)
	stw		r23,28(r1)
	stw		r11,156(r1)
	.d2line		3360
	stw		r11,160(r1)
	.d2line		3363
	stw		r29,164(r1)
	.d2line		3358
	stw		r27,204(r1)
	.d2line		3361
	stw		r28,208(r1)
	.d2line		3364
	stw		r0,212(r1)
	.d2line		3366
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
	.d2line		3379
	lha		r3,pcx_CANdb_TransmitMessage1_msg_handle@sdarx(r0)
	diab.addi		r4,r1,48
	bl		pcx_transmit
.Llo1139:
	b		.L4556
.L4555:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		3382
.Llo1140:
	diab.li		r3,0		# retval=r3
.L4556:
	.d2line		3385
.Llo1141:
	rlwinm		r0,r3,0,24,31		# retval=r3
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage1 = !retval;
	.d2line		3382
	lis		r31,ATV_B@ha
	cntlzw		r0,r0
	e_add16i		r31,r31,ATV_B@l
	diab.srwi		r0,5
	stb		r0,117(r31)
	.section	.text_vle
.L5822:
	.section	.text_vle
.L5861:
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
	.d2line		3424
.Llo1142:
	lha		r0,pcx_CANdb_TransmitMessage6_msg_handle@sdarx(r0)
	e_cmph16i	r0,-1
	bc		1,2,.L4566	# eq
#       pcx_CANdb_TransmitMessage6_in_port_buffer[0] = ATV_B.RateTransition3;
	.d2line		3425
	lbz		r3,121(r31)		# retval=r3
	.d2line		3426
.Llo1143:
	diab.addi		r0,r1,112
	.d2line		3429
	diab.addi		r5,r1,116
#       pcx_CANdb_TransmitMessage6_in_port_ptr[0] =
	.d2line		3432
	diab.addi		r28,r1,120
	stw		r0,128(r1)
#         &pcx_CANdb_TransmitMessage6_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage6_in_port_buffer[1] = ATV_B.RateTransition5_g;
	.d2line		3437
	lis		r11,pcx_CANdb_TransmitMessage6_field_eng_max.4563@ha
	e_add16i		r11,r11,pcx_CANdb_TransmitMessage6_field_eng_max.4563@l
	lis		r12,pcx_CANdb_TransmitMessage6_field_scale.4564@ha
	.d2line		3425
	efscfui		r0,r3		# retval=r3
#       pcx_CANdb_TransmitMessage6_in_port_ptr[1] =
	lis		r30,pcx_CANdb_TransmitMessage6_field_offset.4565@ha
	.d2line		3435
	diab.addi		r29,r1,124
	diab.li		r26,0
#         &pcx_CANdb_TransmitMessage6_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage6_in_port_buffer[2] = ATV_B.RateTransition6_p;
	stw		r0,112(r1)
	diab.li		r25,4
	e_add16i		r12,r12,pcx_CANdb_TransmitMessage6_field_scale.4564@l
	e_add16i		r30,r30,pcx_CANdb_TransmitMessage6_field_offset.4565@l
#       pcx_CANdb_TransmitMessage6_in_port_ptr[2] =
	.d2line		3428
	lbz		r4,122(r31)
	diab.li		r0,1
#         &pcx_CANdb_TransmitMessage6_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage6_in_port_buffer[3] = ATV_B.RateTransition7_p;
	lis		r7,pcx_CANdb_TransmitMessage6_field_is_signed.4559@ha
	lis		r8,pcx_CANdb_TransmitMessage6_field_valtype.4560@ha
	efscfui		r6,r4
#       pcx_CANdb_TransmitMessage6_in_port_ptr[3] =
	.d2line		3429
	stw		r5,132(r1)
	.d2line		3437
	lis		r9,pcx_CANdb_TransmitMessage6_field_order.4561@ha
	lis		r10,pcx_CANdb_TransmitMessage6_field_eng_min.4562@ha
#         &pcx_CANdb_TransmitMessage6_in_port_buffer[3];
#       pcx_vdb_pack_msg((const F32 * const *)
	stw		r6,116(r1)
	lis		r5,pcx_CANdb_TransmitMessage6_field_start_pos.4557@ha
	diab.addi		r3,r1,128		# retval=r3
.Llo1144:
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage6_field_is_signed.4559@l
	.d2line		3431
	lbz		r27,123(r31)
	lis		r6,pcx_CANdb_TransmitMessage6_field_width.4558@ha
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage6_field_valtype.4560@l
	diab.addi		r4,r1,56
	.d2line		3432
	stw		r28,136(r1)
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage6_field_order.4561@l
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage6_field_eng_min.4562@l
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage6_field_start_pos.4557@l
	efscfui		r28,r27
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage6_field_width.4558@l
	stw		r28,120(r1)
	.d2line		3434
	lbz		r28,101(r31)
	stw		r11,8(r1)
	stw		r12,12(r1)
	efscfui		r11,r28
	stw		r30,16(r1)
	stw		r26,20(r1)
	stw		r0,24(r1)
	stw		r25,28(r1)
	stw		r11,124(r1)
	.d2line		3435
	stw		r29,140(r1)
	.d2line		3437
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
	.d2line		3450
	lha		r3,pcx_CANdb_TransmitMessage6_msg_handle@sdarx(r0)		# retval=r3
	diab.addi		r4,r1,56
	bl		pcx_transmit
.Llo1145:
	b		.L4567
.L4566:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		3453
.Llo1146:
	diab.li		r3,0		# retval=r3
.L4567:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage6 = !retval;
	.d2line		3456
.Llo1147:
	rlwinm		r0,r3,0,24,31		# retval=r3
	cntlzw		r0,r0
	diab.srwi		r0,5
	stb		r0,124(r31)
	.section	.text_vle
.L5862:
	.section	.text_vle
.L5901:
.Llo1148:
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
	.d2line		3496
.Llo1149:
	e_cmph16i	r3,-1		# retval=r3
	bc		1,2,.L4579	# eq
#       pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_msg_handle,
	.d2line		3497
.Llo1150:
	diab.addi		r4,r1,64
	diab.addi		r5,r1,36
.Llo1151:
	bl		pcx_receive
#         data, &timestamp);
#       ATV_B.pcx_CANdb_ReceiveMessage_o1 = (0 != (pcxf_rx_receive_status &
	.d2line		3499
.Llo1152:
	rlwinm		r4,r3,0,29,29		# pcxf_rx_receive_status=r3
	.d2line		3501
	rlwinm		r5,r3,0,30,30		# pcxf_rx_receive_status=r3
	addic		r0,r4,-1
	subfe		r0,r0,r4
#         PCX_RX_ERROR));
#       ATV_B.pcx_CANdb_ReceiveMessage_o3 = (0 != (pcxf_rx_receive_status &
	stb		r0,137(r31)
	addic		r0,r5,-1
	subfe		r0,r0,r5
	stb		r0,139(r31)
#         PCX_RX_OVERRUN));
# 
#       /* decompose message into fields */
#       if (pcxf_rx_receive_status & PCX_RX_DATA) {
	.d2line		3505
	se_btsti		r3,31		# pcxf_rx_receive_status=r3
	bc		1,2,.L4577	# eq
#         ATV_B.pcx_CANdb_ReceiveMessage_o2 = 1;
	.d2line		3506
.Llo1155:
	diab.li		r7,1
	.d2line		3513
	lis		r3,pcx_CANdb_ReceiveMessage_field_eng_min.4573@ha		# pcxf_rx_receive_status=r3
#         pcx_CANdb_ReceiveMessage_out_port[0] = (F32*)
.Llo1156:
	stb		r7,138(r31)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_field_eng_min.4573@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
#           &pcx_CANdb_ReceiveMessage_out_port_buffer[0];
#         pcx_CANdb_ReceiveMessage_out_port[1] = (F32*)
	.d2line		3509
	diab.addi		r6,r1,92
	.d2line		3507
	diab.addi		r5,r1,88
	stw		r3,8(r1)		# pcxf_rx_receive_status=r3
#           &pcx_CANdb_ReceiveMessage_out_port_buffer[1];
#         pcx_CANdb_ReceiveMessage_out_port[2] = (F32*)
	.d2line		3511
	diab.addi		r0,r1,96
	stw		r7,28(r1)
	diab.li		r4,0
#           &pcx_CANdb_ReceiveMessage_out_port_buffer[2];
#         pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_out_port[0], NULL, &data[0],
	lis		r3,pcx_CANdb_ReceiveMessage_field_eng_max.4574@ha		# pcxf_rx_receive_status=r3
	stw		r6,104(r1)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_field_eng_max.4574@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	stw		r5,100(r1)
	stw		r3,12(r1)		# pcxf_rx_receive_status=r3
	lis		r8,pcx_CANdb_ReceiveMessage_field_is_signed.4570@ha
	stw		r4,24(r1)
	lis		r9,pcx_CANdb_ReceiveMessage_field_valtype.4571@ha
	lis		r3,pcx_CANdb_ReceiveMessage_field_scale.4575@ha		# pcxf_rx_receive_status=r3
	stw		r0,108(r1)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_field_scale.4575@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	lis		r10,pcx_CANdb_ReceiveMessage_field_order.4572@ha
	stw		r3,16(r1)		# pcxf_rx_receive_status=r3
	lis		r7,pcx_CANdb_ReceiveMessage_field_width.4569@ha
	lis		r6,pcx_CANdb_ReceiveMessage_field_start_pos.4568@ha
	diab.addi		r5,r1,64
	lis		r3,pcx_CANdb_ReceiveMessage_field_offset.4576@ha		# pcxf_rx_receive_status=r3
	e_add16i		r8,r8,pcx_CANdb_ReceiveMessage_field_is_signed.4570@l
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_field_offset.4576@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	e_add16i		r9,r9,pcx_CANdb_ReceiveMessage_field_valtype.4571@l
	stw		r3,20(r1)		# pcxf_rx_receive_status=r3
	e_add16i		r10,r10,pcx_CANdb_ReceiveMessage_field_order.4572@l
	e_add16i		r7,r7,pcx_CANdb_ReceiveMessage_field_width.4569@l
	e_add16i		r6,r6,pcx_CANdb_ReceiveMessage_field_start_pos.4568@l
	diab.li		r3,3		# pcxf_rx_receive_status=r3
	stw		r3,32(r1)		# pcxf_rx_receive_status=r3
	diab.addi		r3,r1,100		# pcxf_rx_receive_status=r3
.Llo1157:
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
	.d2line		3523
	lwz		r0,88(r1)
	stw		r0,16(r31)
#           pcx_CANdb_ReceiveMessage_out_port_buffer[0];
#         ATV_B.pcx_CANdb_ReceiveMessage_o5 =
	.d2line		3525
	lwz		r0,92(r1)
	stw		r0,20(r31)
#           pcx_CANdb_ReceiveMessage_out_port_buffer[1];
#         ATV_B.pcx_CANdb_ReceiveMessage_o6 =
	.d2line		3527
	lwz		r0,96(r1)
	stw		r0,24(r31)
	b		.L4580
.L4577:
#           pcx_CANdb_ReceiveMessage_out_port_buffer[2];
#       } else {
#         ATV_B.pcx_CANdb_ReceiveMessage_o2 = 0;
	.d2line		3530
	diab.li		r0,0
	stb		r0,138(r31)
	b		.L4580
.L4579:
#       }
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       ATV_B.pcx_CANdb_ReceiveMessage_o1 = 1;
	.d2line		3534
	diab.li		r3,1		# retval=r3
	.d2line		3535
.Llo1153:
	diab.li		r0,0
#       ATV_B.pcx_CANdb_ReceiveMessage_o2 = 0;
	stb		r3,137(r31)		# retval=r3
	sth		r0,138(r31)
.L4580:
	.section	.text_vle
.L5902:
.Llo1154:
	lis		r30,ATV_DW@ha
#       ATV_B.pcx_CANdb_ReceiveMessage_o3 = 0;
#     }
#   }
# 
#   /* Chart: '<S3>/Chart' */
#   ATV_Chart(ATV_B.pcx_CANdb_ReceiveMessage_o2, &ATV_B.sf_Chart, &ATV_DW.sf_Chart);
	.d2line		3541
	lbz		r3,138(r31)		# pcxf_rx_receive_status=r3
	.d2line		3535
	e_add16i		r30,r30,ATV_DW@l
	diab.addi		r4,r31,159
	diab.addi		r5,r30,59
	bl		ATV_Chart
# 
#   /* Switch: '<S3>/Switch1' */
#   atv_v_dbg_chg_req = (ATV_B.sf_Chart.out && (ATV_B.pcx_CANdb_ReceiveMessage_o5
	.d2line		3544
	lbz		r4,159(r31)
	se_cmpi		r4,0
	bc		1,2,.L4906	# eq
	lwz		r0,20(r31)
	diab.li		r3,0		# pcxf_rx_receive_status=r3
.Llo1158:
	efscmpeq		1,r0,r3		# pcxf_rx_receive_status=r3
	bc		0,5,.L4623		# ne
.L4906:
.Llo1159:
	diab.li		r0,0
	b		.L4624
.L4623:
	diab.li		r0,1
.L4624:
	stb		r0,atv_v_dbg_chg_req@sdarx(r0)
#     != 0.0));
# 
#   /* Switch: '<S3>/Switch2' */
#   atv_v_dbg_heater_req = (ATV_B.sf_Chart.out &&
	.d2line		3548
	se_cmpi		r4,0
	bc		1,2,.L4907	# eq
#     (ATV_B.pcx_CANdb_ReceiveMessage_o6 != 0.0));
	.d2line		3549
	lwz		r0,24(r31)
	diab.li		r3,0		# pcxf_rx_receive_status=r3
.Llo1160:
	efscmpeq		1,r0,r3		# pcxf_rx_receive_status=r3
	bc		0,5,.L4626		# ne
.L4907:
	.d2line		3548
.Llo1161:
	diab.li		r0,0
	b		.L4627
.L4626:
	diab.li		r0,1
.L4627:
	stb		r0,atv_v_dbg_heater_req@sdarx(r0)
	.section	.text_vle
.L5941:
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
	.d2line		3592
.Llo1162:
	e_cmph16i	r3,-1		# pcxf_rx_receive_status=r3
	bc		1,2,.L4592	# eq
#       pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_p_msg_handle,
	.d2line		3593
.Llo1163:
	diab.addi		r4,r1,72
	diab.addi		r5,r1,40
.Llo1164:
	bl		pcx_receive
#         data, &timestamp);
#       ATV_B.pcx_CANdb_ReceiveMessage_o1_k = (0 != (pcxf_rx_receive_status &
	.d2line		3595
.Llo1165:
	rlwinm		r4,r3,0,29,29		# pcxf_rx_receive_status=r3
	.d2line		3597
	rlwinm		r5,r3,0,30,30		# pcxf_rx_receive_status=r3
	addic		r0,r4,-1
	subfe		r0,r0,r4
#         PCX_RX_ERROR));
#       ATV_B.pcx_CANdb_ReceiveMessage_o3_b = (0 != (pcxf_rx_receive_status &
	stb		r0,140(r31)
	addic		r0,r5,-1
	subfe		r0,r0,r5
	stb		r0,142(r31)
#         PCX_RX_OVERRUN));
# 
#       /* decompose message into fields */
#       if (pcxf_rx_receive_status & PCX_RX_DATA) {
	.d2line		3601
	se_btsti		r3,31		# pcxf_rx_receive_status=r3
	bc		1,2,.L4590	# eq
#         ATV_B.pcx_CANdb_ReceiveMessage_o2_d = 1;
	.d2line		3602
.Llo1168:
	diab.li		r5,1
	.d2line		3607
	diab.addi		r3,r1,248		# pcxf_rx_receive_status=r3
#         pcx_CANdb_ReceiveMessage_p_out_port[0] = (F32*)
.Llo1169:
	stb		r5,141(r31)
	.d2line		3603
	diab.addi		r4,r1,240
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[0];
#         pcx_CANdb_ReceiveMessage_p_out_port[1] = (F32*)
	.d2line		3605
	diab.addi		r0,r1,244
	.d2line		3609
	diab.addi		r7,r1,252
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[1];
#         pcx_CANdb_ReceiveMessage_p_out_port[2] = (F32*)
	stw		r3,276(r1)		# pcxf_rx_receive_status=r3
	.d2line		3613
	diab.addi		r6,r1,260
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[2];
#         pcx_CANdb_ReceiveMessage_p_out_port[3] = (F32*)
	.d2line		3617
	stw		r5,28(r1)
	lis		r8,pcx_CANdb_ReceiveMessage_p_field_is_signed.4583@ha
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[3];
#         pcx_CANdb_ReceiveMessage_p_out_port[4] = (F32*)
	lis		r3,pcx_CANdb_ReceiveMessage_p_field_eng_min.4586@ha		# pcxf_rx_receive_status=r3
	.d2line		3603
	stw		r4,268(r1)
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[4];
#         pcx_CANdb_ReceiveMessage_p_out_port[5] = (F32*)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_p_field_eng_min.4586@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	.d2line		3605
	stw		r0,272(r1)
	stw		r3,8(r1)		# pcxf_rx_receive_status=r3
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[5];
#         pcx_CANdb_ReceiveMessage_p_out_port[6] = (F32*)
	.d2line		3611
	diab.addi		r5,r1,256
	.d2line		3609
	stw		r7,280(r1)
	.d2line		3617
	diab.li		r4,0
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[6];
#         pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_p_out_port[0], NULL, &data
	lis		r3,pcx_CANdb_ReceiveMessage_p_field_eng_max.4587@ha		# pcxf_rx_receive_status=r3
	.d2line		3613
	stw		r6,288(r1)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_p_field_eng_max.4587@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	stw		r5,284(r1)
	stw		r3,12(r1)		# pcxf_rx_receive_status=r3
	.d2line		3615
	diab.addi		r0,r1,264
	stw		r4,24(r1)
	lis		r9,pcx_CANdb_ReceiveMessage_p_field_valtype.4584@ha
	lis		r3,pcx_CANdb_ReceiveMessage_p_field_scale.4588@ha		# pcxf_rx_receive_status=r3
	stw		r0,292(r1)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_p_field_scale.4588@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	lis		r10,pcx_CANdb_ReceiveMessage_p_field_order.4585@ha
	stw		r3,16(r1)		# pcxf_rx_receive_status=r3
	lis		r7,pcx_CANdb_ReceiveMessage_p_field_width.4582@ha
	lis		r6,pcx_CANdb_ReceiveMessage_p_field_start_pos.4581@ha
	e_add16i		r8,r8,pcx_CANdb_ReceiveMessage_p_field_is_signed.4583@l
	lis		r3,pcx_CANdb_ReceiveMessage_p_field_offset.4589@ha		# pcxf_rx_receive_status=r3
	diab.addi		r5,r1,72
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_p_field_offset.4589@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	e_add16i		r9,r9,pcx_CANdb_ReceiveMessage_p_field_valtype.4584@l
	stw		r3,20(r1)		# pcxf_rx_receive_status=r3
	e_add16i		r10,r10,pcx_CANdb_ReceiveMessage_p_field_order.4585@l
	e_add16i		r7,r7,pcx_CANdb_ReceiveMessage_p_field_width.4582@l
	e_add16i		r6,r6,pcx_CANdb_ReceiveMessage_p_field_start_pos.4581@l
	diab.li		r3,7		# pcxf_rx_receive_status=r3
	stw		r3,32(r1)		# pcxf_rx_receive_status=r3
	diab.addi		r3,r1,268		# pcxf_rx_receive_status=r3
.Llo1170:
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
	.d2line		3627
	lwz		r0,240(r1)
	stw		r0,28(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[0];
#         ATV_B.pcx_CANdb_ReceiveMessage_o5_c =
	.d2line		3629
	lwz		r0,244(r1)
	stw		r0,32(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[1];
#         ATV_B.pcx_CANdb_ReceiveMessage_o6_o =
	.d2line		3631
	lwz		r0,248(r1)
	stw		r0,36(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[2];
#         ATV_B.pcx_CANdb_ReceiveMessage_o7 =
	.d2line		3633
	lwz		r0,252(r1)
	stw		r0,40(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[3];
#         ATV_B.pcx_CANdb_ReceiveMessage_o8 =
	.d2line		3635
	lwz		r0,256(r1)
	stw		r0,44(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[4];
#         ATV_B.pcx_CANdb_ReceiveMessage_o9 =
	.d2line		3637
	lwz		r0,260(r1)
	stw		r0,48(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[5];
#         ATV_B.pcx_CANdb_ReceiveMessage_o10 =
	.d2line		3639
	lwz		r0,264(r1)
	stw		r0,52(r31)
	b		.L4593
.L4590:
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[6];
#       } else {
#         ATV_B.pcx_CANdb_ReceiveMessage_o2_d = 0;
	.d2line		3642
	diab.li		r0,0
	stb		r0,141(r31)
	b		.L4593
.L4592:
#       }
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       ATV_B.pcx_CANdb_ReceiveMessage_o1_k = 1;
	.d2line		3646
	diab.li		r3,256		# pcxf_rx_receive_status=r3
	.d2line		3648
.Llo1166:
	diab.li		r0,0
#       ATV_B.pcx_CANdb_ReceiveMessage_o2_d = 0;
#       ATV_B.pcx_CANdb_ReceiveMessage_o3_b = 0;
	sth		r3,140(r31)		# pcxf_rx_receive_status=r3
	stb		r0,142(r31)
.L4593:
	.section	.text_vle
.L5942:
#     }
#   }
# 
#   /* Chart: '<S4>/Chart' */
#   ATV_Chart(ATV_B.pcx_CANdb_ReceiveMessage_o2_d, &ATV_B.sf_Chart_b,
	.d2line		3653
.Llo1167:
	lbz		r3,141(r31)		# pcxf_rx_receive_status=r3
	diab.addi		r4,r31,158
	diab.addi		r5,r30,56
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
	.d2line		3671
	lbz		r0,158(r31)
	se_cmpi		r0,0
	bc		1,2,.L4608	# eq
#     tmp = floor(ATV_B.pcx_CANdb_ReceiveMessage_o4_k);
	.d2line		3672
	lwz		r3,28(r31)		# pcxf_rx_receive_status=r3
	bl		_f_ftod
	bl		floor
	bl		_d_dtof
.Llo1135:
	mr		r30,r3		# tmp=r30 tmp=r3
#     if (rtIsNaN(tmp) || rtIsInf(tmp)) {
	.d2line		3673
	bl		rtIsNaN
.Llo1136:
	e_andi.		r3,r3,255		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
.Llo1171:
	bc		0,2,.L4629	# ne
.Llo1137:
	mr		r3,r30		# tmp=r3 tmp=r30
	bl		rtIsInf
.Llo1172:
	e_andi.		r3,r3,255		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
.Llo1173:
	bc		1,2,.L4594	# eq
.L4629:
#       tmp = 0.0;
	.d2line		3674
	diab.li		r3,0		# tmp=r3
.Llo1053:
	b		.L4630
.L4594:
#     } else {
#       tmp = fmod(tmp, 256.0);
	.d2line		3676
.Llo1054:
	mr		r3,r30		# tmp=r3 tmp=r30
	bl		_f_ftod
	.d2line		3679
	diab.li		r30,0		# pcxf_rx_receive_status=r30
.Llo1138:
	e_lis		r5,16496
	diab.li		r6,0
	bl		fmod
	bl		_d_dtof
#     }
# 
#     ATV_B.atv_v_dbg_T_FMot = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)
.Llo1055:
	efscmplt		1,r3,r30		# tmp=r3 pcxf_rx_receive_status=r30
	bc		0,5,.L4630		# ge
.Llo1174:
	efsneg		r0,r3		# tmp=r3
	efsctuiz		r0,r0
	neg		r0,r0
	b		.L4631
.L4630:
	efsctuiz		r0,r3		# tmp=r3
.L4631:
#       (uint8_T)-tmp : (int32_T)(uint8_T)tmp);
#     tmp = floor(ATV_B.pcx_CANdb_ReceiveMessage_o5_c);
	.d2line		3681
.Llo1056:
	lwz		r3,32(r31)		# tmp=r3
	.d2line		3679
	stb		r0,102(r31)
	bl		_f_ftod
	bl		floor
	bl		_d_dtof
.Llo1063:
	mr		r30,r3		# tmp=r30 tmp=r3
#     if (rtIsNaN(tmp) || rtIsInf(tmp)) {
	.d2line		3682
	bl		rtIsNaN
.Llo1057:
	e_andi.		r3,r3,255		# tmp=r3 tmp=r3
.Llo1058:
	bc		0,2,.L4632	# ne
.Llo1064:
	mr		r3,r30		# tmp=r3 tmp=r30
	bl		rtIsInf
.Llo1059:
	e_andi.		r3,r3,255		# tmp=r3 tmp=r3
.Llo1060:
	bc		1,2,.L4596	# eq
.L4632:
#       tmp = 0.0;
	.d2line		3683
	diab.li		r3,0		# tmp=r3
.Llo1065:
	b		.L4633
.L4596:
#     } else {
#       tmp = fmod(tmp, 256.0);
	.d2line		3685
.Llo1066:
	mr		r3,r30		# tmp=r3 tmp=r30
	bl		_f_ftod
	.d2line		3688
	diab.li		r30,0		# tmp=r30
.Llo1061:
	e_lis		r5,16496
	diab.li		r6,0
	bl		fmod
	bl		_d_dtof
#     }
# 
#     ATV_B.atv_v_dbg_T_FInv = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)
.Llo1067:
	efscmplt		1,r3,r30		# tmp=r3 tmp=r30
	bc		0,5,.L4633		# ge
.Llo1062:
	efsneg		r0,r3		# tmp=r3
	efsctuiz		r0,r0
	neg		r0,r0
	b		.L4634
.L4633:
	efsctuiz		r0,r3		# tmp=r3
.L4634:
#       (uint8_T)-tmp : (int32_T)(uint8_T)tmp);
#     tmp = floor(ATV_B.pcx_CANdb_ReceiveMessage_o7);
	.d2line		3690
.Llo1068:
	lwz		r3,40(r31)		# tmp=r3
	.d2line		3688
	stb		r0,103(r31)
	bl		_f_ftod
	bl		floor
	bl		_d_dtof
.Llo1075:
	mr		r30,r3		# tmp=r30 tmp=r3
#     if (rtIsNaN(tmp) || rtIsInf(tmp)) {
	.d2line		3691
	bl		rtIsNaN
.Llo1069:
	e_andi.		r3,r3,255		# tmp=r3 tmp=r3
.Llo1070:
	bc		0,2,.L4635	# ne
.Llo1076:
	mr		r3,r30		# tmp=r3 tmp=r30
	bl		rtIsInf
.Llo1071:
	e_andi.		r3,r3,255		# tmp=r3 tmp=r3
.Llo1072:
	bc		1,2,.L4598	# eq
.L4635:
#       tmp = 0.0;
	.d2line		3692
	diab.li		r3,0		# tmp=r3
.Llo1077:
	b		.L4636
.L4598:
#     } else {
#       tmp = fmod(tmp, 256.0);
	.d2line		3694
.Llo1078:
	mr		r3,r30		# tmp=r3 tmp=r30
	bl		_f_ftod
	.d2line		3697
	diab.li		r30,0		# tmp=r30
.Llo1073:
	e_lis		r5,16496
	diab.li		r6,0
	bl		fmod
	bl		_d_dtof
#     }
# 
#     ATV_B.atv_v_dbg_T_RMot = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)
.Llo1079:
	efscmplt		1,r3,r30		# tmp=r3 tmp=r30
	bc		0,5,.L4636		# ge
.Llo1074:
	efsneg		r0,r3		# tmp=r3
	efsctuiz		r0,r0
	neg		r0,r0
	b		.L4637
.L4636:
	efsctuiz		r0,r3		# tmp=r3
.L4637:
#       (uint8_T)-tmp : (int32_T)(uint8_T)tmp);
#     tmp = floor(ATV_B.pcx_CANdb_ReceiveMessage_o6_o);
	.d2line		3699
.Llo1080:
	lwz		r3,36(r31)		# tmp=r3
	.d2line		3697
	stb		r0,104(r31)
	bl		_f_ftod
	bl		floor
	bl		_d_dtof
.Llo1087:
	mr		r30,r3		# tmp=r30 tmp=r3
#     if (rtIsNaN(tmp) || rtIsInf(tmp)) {
	.d2line		3700
	bl		rtIsNaN
.Llo1081:
	e_andi.		r3,r3,255		# tmp=r3 tmp=r3
.Llo1082:
	bc		0,2,.L4638	# ne
.Llo1088:
	mr		r3,r30		# tmp=r3 tmp=r30
	bl		rtIsInf
.Llo1083:
	e_andi.		r3,r3,255		# tmp=r3 tmp=r3
.Llo1084:
	bc		1,2,.L4600	# eq
.L4638:
#       tmp = 0.0;
	.d2line		3701
	diab.li		r3,0		# tmp=r3
.Llo1089:
	b		.L4639
.L4600:
#     } else {
#       tmp = fmod(tmp, 256.0);
	.d2line		3703
.Llo1090:
	mr		r3,r30		# tmp=r3 tmp=r30
	bl		_f_ftod
	.d2line		3706
	diab.li		r30,0		# tmp=r30
.Llo1085:
	e_lis		r5,16496
	diab.li		r6,0
	bl		fmod
	bl		_d_dtof
#     }
# 
#     ATV_B.atv_v_dbg_T_RInv = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)
.Llo1091:
	efscmplt		1,r3,r30		# tmp=r3 tmp=r30
	bc		0,5,.L4639		# ge
.Llo1086:
	efsneg		r0,r3		# tmp=r3
	efsctuiz		r0,r0
	neg		r0,r0
	b		.L4640
.L4639:
	efsctuiz		r0,r3		# tmp=r3
.L4640:
#       (uint8_T)-tmp : (int32_T)(uint8_T)tmp);
#     tmp = floor(ATV_B.pcx_CANdb_ReceiveMessage_o8);
	.d2line		3708
.Llo1092:
	lwz		r3,44(r31)		# tmp=r3
	.d2line		3706
	stb		r0,105(r31)
	bl		_f_ftod
	bl		floor
	bl		_d_dtof
.Llo1099:
	mr		r30,r3		# tmp=r30 tmp=r3
#     if (rtIsNaN(tmp) || rtIsInf(tmp)) {
	.d2line		3709
	bl		rtIsNaN
.Llo1093:
	e_andi.		r3,r3,255		# tmp=r3 tmp=r3
.Llo1094:
	bc		0,2,.L4641	# ne
.Llo1100:
	mr		r3,r30		# tmp=r3 tmp=r30
	bl		rtIsInf
.Llo1095:
	e_andi.		r3,r3,255		# tmp=r3 tmp=r3
.Llo1096:
	bc		1,2,.L4602	# eq
.L4641:
#       tmp = 0.0;
	.d2line		3710
	diab.li		r3,0		# tmp=r3
.Llo1101:
	b		.L4642
.L4602:
#     } else {
#       tmp = fmod(tmp, 256.0);
	.d2line		3712
.Llo1102:
	mr		r3,r30		# tmp=r3 tmp=r30
	bl		_f_ftod
	.d2line		3715
	diab.li		r30,0		# tmp=r30
.Llo1097:
	e_lis		r5,16496
	diab.li		r6,0
	bl		fmod
	bl		_d_dtof
#     }
# 
#     ATV_B.atv_v_dbg_T_GMot = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)
.Llo1103:
	efscmplt		1,r3,r30		# tmp=r3 tmp=r30
	bc		0,5,.L4642		# ge
.Llo1098:
	efsneg		r0,r3		# tmp=r3
	efsctuiz		r0,r0
	neg		r0,r0
	b		.L4643
.L4642:
	efsctuiz		r0,r3		# tmp=r3
.L4643:
#       (uint8_T)-tmp : (int32_T)(uint8_T)tmp);
#     tmp = floor(ATV_B.pcx_CANdb_ReceiveMessage_o9);
	.d2line		3717
.Llo1104:
	lwz		r3,48(r31)		# tmp=r3
	.d2line		3715
	stb		r0,106(r31)
	bl		_f_ftod
	bl		floor
	bl		_d_dtof
.Llo1111:
	mr		r30,r3		# tmp=r30 tmp=r3
#     if (rtIsNaN(tmp) || rtIsInf(tmp)) {
	.d2line		3718
	bl		rtIsNaN
.Llo1105:
	e_andi.		r3,r3,255		# tmp=r3 tmp=r3
.Llo1106:
	bc		0,2,.L4644	# ne
.Llo1112:
	mr		r3,r30		# tmp=r3 tmp=r30
	bl		rtIsInf
.Llo1107:
	e_andi.		r3,r3,255		# tmp=r3 tmp=r3
.Llo1108:
	bc		1,2,.L4604	# eq
.L4644:
#       tmp = 0.0;
	.d2line		3719
	diab.li		r3,0		# tmp=r3
.Llo1113:
	b		.L4645
.L4604:
#     } else {
#       tmp = fmod(tmp, 256.0);
	.d2line		3721
.Llo1114:
	mr		r3,r30		# tmp=r3 tmp=r30
	bl		_f_ftod
	.d2line		3724
	diab.li		r30,0		# tmp=r30
.Llo1109:
	e_lis		r5,16496
	diab.li		r6,0
	bl		fmod
	bl		_d_dtof
#     }
# 
#     ATV_B.atv_v_dbg_T_GInv = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)
.Llo1115:
	efscmplt		1,r3,r30		# tmp=r3 tmp=r30
	bc		0,5,.L4645		# ge
.Llo1110:
	efsneg		r0,r3		# tmp=r3
	efsctuiz		r0,r0
	neg		r0,r0
	b		.L4646
.L4645:
	efsctuiz		r0,r3		# tmp=r3
.L4646:
#       (uint8_T)-tmp : (int32_T)(uint8_T)tmp);
#     tmp = floor(ATV_B.pcx_CANdb_ReceiveMessage_o10);
	.d2line		3726
.Llo1116:
	lwz		r3,52(r31)		# tmp=r3
	.d2line		3724
	stb		r0,107(r31)
	bl		_f_ftod
	bl		floor
	bl		_d_dtof
.Llo1123:
	mr		r30,r3		# tmp=r30 tmp=r3
#     if (rtIsNaN(tmp) || rtIsInf(tmp)) {
	.d2line		3727
	bl		rtIsNaN
.Llo1117:
	e_andi.		r3,r3,255		# tmp=r3 tmp=r3
.Llo1118:
	bc		0,2,.L4647	# ne
.Llo1124:
	mr		r3,r30		# tmp=r3 tmp=r30
	bl		rtIsInf
.Llo1119:
	e_andi.		r3,r3,255		# tmp=r3 tmp=r3
.Llo1120:
	bc		1,2,.L4606	# eq
.L4647:
#       tmp = 0.0;
	.d2line		3728
	diab.li		r3,0		# tmp=r3
.Llo1125:
	b		.L4648
.L4606:
#     } else {
#       tmp = fmod(tmp, 256.0);
	.d2line		3730
.Llo1126:
	mr		r3,r30		# tmp=r3 tmp=r30
	bl		_f_ftod
	.d2line		3733
	diab.li		r30,0		# tmp=r30
.Llo1121:
	e_lis		r5,16496
	diab.li		r6,0
	bl		fmod
	bl		_d_dtof
#     }
# 
#     ATV_B.atv_v_dbg_T_Rad = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)
.Llo1127:
	efscmplt		1,r3,r30		# tmp=r3 tmp=r30
	bc		0,5,.L4648		# ge
.Llo1122:
	efsneg		r0,r3		# tmp=r3
	efsctuiz		r0,r0
	neg		r0,r0
	b		.L4609
.L4648:
	efsctuiz		r0,r3		# tmp=r3
	b		.L4609
.L4608:
#       (uint8_T)-tmp : (int32_T)(uint8_T)tmp);
#   } else {
#     ATV_B.atv_v_dbg_T_FMot = 0U;
	.d2line		3736
.Llo1128:
	diab.li		r0,0
	sth		r0,102(r31)
#     ATV_B.atv_v_dbg_T_FInv = 0U;
#     ATV_B.atv_v_dbg_T_RMot = 0U;
	.d2line		3738
	stw		r0,104(r31)
#     ATV_B.atv_v_dbg_T_RInv = 0U;
#     ATV_B.atv_v_dbg_T_GMot = 0U;
#     ATV_B.atv_v_dbg_T_GInv = 0U;
#     ATV_B.atv_v_dbg_T_Rad = 0U;
.L4609:
	.section	.text_vle
.L5981:
	.d2line		3733
	stb		r0,108(r31)
	.d2line		3742
	lha		r3,pcx_CANdb_ReceiveMessage_e_msg_handle@sdarx(r0)		# tmp=r3
#   }
# 
#   /* End of Switch: '<S4>/Switch' */
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
	.d2line		3788
.Llo1129:
	e_cmph16i	r3,-1		# tmp=r3
	bc		1,2,.L4621	# eq
#       pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_e_msg_handle,
	.d2line		3789
.Llo1130:
	diab.addi		r4,r1,80
	diab.addi		r5,r1,44
.Llo1131:
	bl		pcx_receive
#         data, &timestamp);
#       ATV_B.pcx_CANdb_ReceiveMessage_o1_n = (0 != (pcxf_rx_receive_status &
	.d2line		3791
.Llo1132:
	rlwinm		r4,r3,0,29,29		# pcxf_rx_receive_status=r3
	.d2line		3793
	rlwinm		r5,r3,0,30,30		# pcxf_rx_receive_status=r3
	addic		r0,r4,-1
	subfe		r0,r0,r4
#         PCX_RX_ERROR));
#       ATV_B.pcx_CANdb_ReceiveMessage_o3_p = (0 != (pcxf_rx_receive_status &
	stb		r0,143(r31)
	addic		r0,r5,-1
	subfe		r0,r0,r5
	stb		r0,145(r31)
#         PCX_RX_OVERRUN));
# 
#       /* decompose message into fields */
#       if (pcxf_rx_receive_status & PCX_RX_DATA) {
	.d2line		3797
	se_btsti		r3,31		# pcxf_rx_receive_status=r3
	bc		1,2,.L4619	# eq
#         ATV_B.pcx_CANdb_ReceiveMessage_o2_l = 1;
	.d2line		3798
.Llo1175:
	diab.li		r4,1
	.d2line		3801
	diab.addi		r3,r1,172		# pcxf_rx_receive_status=r3
#         pcx_CANdb_ReceiveMessage_e_out_port[0] = (F32*)
.Llo1176:
	stb		r4,144(r31)
	.d2line		3799
	diab.addi		r0,r1,168
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[0];
#         pcx_CANdb_ReceiveMessage_e_out_port[1] = (F32*)
	.d2line		3803
	diab.addi		r7,r1,176
	.d2line		3807
	diab.addi		r6,r1,184
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[1];
#         pcx_CANdb_ReceiveMessage_e_out_port[2] = (F32*)
	stw		r3,220(r1)		# pcxf_rx_receive_status=r3
	.d2line		3805
	diab.addi		r5,r1,180
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[2];
#         pcx_CANdb_ReceiveMessage_e_out_port[3] = (F32*)
	.d2line		3811
	stw		r4,28(r1)
	lis		r8,pcx_CANdb_ReceiveMessage_e_field_is_signed.4612@ha
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[3];
#         pcx_CANdb_ReceiveMessage_e_out_port[4] = (F32*)
	lis		r3,pcx_CANdb_ReceiveMessage_e_field_eng_min.4615@ha		# pcxf_rx_receive_status=r3
	.d2line		3799
	stw		r0,216(r1)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_e_field_eng_min.4615@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[4];
#         pcx_CANdb_ReceiveMessage_e_out_port[5] = (F32*)
	.d2line		3803
	stw		r7,224(r1)
	stw		r3,8(r1)		# pcxf_rx_receive_status=r3
	diab.li		r4,0
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[5];
#         pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_e_out_port[0], NULL, &data
	.d2line		3807
	stw		r6,232(r1)
	.d2line		3809
	diab.addi		r0,r1,188
	.d2line		3811
	lis		r3,pcx_CANdb_ReceiveMessage_e_field_eng_max.4616@ha		# pcxf_rx_receive_status=r3
	.d2line		3805
	stw		r5,228(r1)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_e_field_eng_max.4616@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	stw		r4,24(r1)
	stw		r3,12(r1)		# pcxf_rx_receive_status=r3
	lis		r9,pcx_CANdb_ReceiveMessage_e_field_valtype.4613@ha
	stw		r0,236(r1)
	lis		r10,pcx_CANdb_ReceiveMessage_e_field_order.4614@ha
	lis		r3,pcx_CANdb_ReceiveMessage_e_field_scale.4617@ha		# pcxf_rx_receive_status=r3
	lis		r7,pcx_CANdb_ReceiveMessage_e_field_width.4611@ha
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_e_field_scale.4617@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	lis		r6,pcx_CANdb_ReceiveMessage_e_field_start_pos.4610@ha
	stw		r3,16(r1)		# pcxf_rx_receive_status=r3
	e_add16i		r8,r8,pcx_CANdb_ReceiveMessage_e_field_is_signed.4612@l
	diab.addi		r5,r1,80
	e_add16i		r9,r9,pcx_CANdb_ReceiveMessage_e_field_valtype.4613@l
	lis		r3,pcx_CANdb_ReceiveMessage_e_field_offset.4618@ha		# pcxf_rx_receive_status=r3
	e_add16i		r10,r10,pcx_CANdb_ReceiveMessage_e_field_order.4614@l
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_e_field_offset.4618@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	e_add16i		r7,r7,pcx_CANdb_ReceiveMessage_e_field_width.4611@l
	stw		r3,20(r1)		# pcxf_rx_receive_status=r3
	e_add16i		r6,r6,pcx_CANdb_ReceiveMessage_e_field_start_pos.4610@l
	diab.li		r3,6		# pcxf_rx_receive_status=r3
	stw		r3,32(r1)		# pcxf_rx_receive_status=r3
	diab.addi		r3,r1,216		# pcxf_rx_receive_status=r3
.Llo1177:
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
	.d2line		3821
	lwz		r0,168(r1)
	stw		r0,60(r31)
#           pcx_CANdb_ReceiveMessage_e_out_port_buffer[0];
#         ATV_B.pcx_CANdb_ReceiveMessage_o5_m =
	.d2line		3823
	lwz		r0,172(r1)
	stw		r0,64(r31)
#           pcx_CANdb_ReceiveMessage_e_out_port_buffer[1];
#         bms_pack_voltage = pcx_CANdb_ReceiveMessage_e_out_port_buffer[2];
	.d2line		3825
	lwz		r3,176(r1)		# pcxf_rx_receive_status=r3
	.d2line		3826
.Llo1178:
	lwz		r0,180(r1)
#         ATV_B.atv_bms_pack_current = pcx_CANdb_ReceiveMessage_e_out_port_buffer
	stw		r3,bms_pack_voltage@sdarx(r0)		# pcxf_rx_receive_status=r3
	stw		r0,68(r31)
#           [3];
#         ATV_B.atv_bms_pack_soh = pcx_CANdb_ReceiveMessage_e_out_port_buffer[4];
	.d2line		3828
	lwz		r0,184(r1)
	stw		r0,72(r31)
#         ATV_B.pcx_CANdb_ReceiveMessage_o9_c =
	.d2line		3829
	lwz		r0,188(r1)
	stw		r0,76(r31)
	b		.L4622
.L4619:
#           pcx_CANdb_ReceiveMessage_e_out_port_buffer[5];
#       } else {
#         ATV_B.pcx_CANdb_ReceiveMessage_o2_l = 0;
	.d2line		3832
.Llo1179:
	diab.li		r0,0
	stb		r0,144(r31)
	b		.L4622
.L4621:
#       }
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       ATV_B.pcx_CANdb_ReceiveMessage_o1_n = 1;
	.d2line		3836
	diab.li		r3,1		# tmp=r3
	.d2line		3837
.Llo1133:
	diab.li		r0,0
#       ATV_B.pcx_CANdb_ReceiveMessage_o2_l = 0;
	stb		r3,143(r31)		# tmp=r3
	sth		r0,144(r31)
.L4622:
	.section	.text_vle
.L5982:
#       ATV_B.pcx_CANdb_ReceiveMessage_o3_p = 0;
#     }
#   }
# }
	.d2line		3841
	.d2epilogue_begin
.Llo1134:
	diab.addi		r12,r1,316
	lwz		r0,356(r1)
	lmw		r23,0(r12)		# offset r1+316  0x13c
	.d2_cfa_restore_list	2,10
	mtspr		lr,r0
	diab.addi		r1,r1,352		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5730:
	.type		ATV_output1,@function
	.size		ATV_output1,.-ATV_output1
# Number of nodes = 1618

# Allocations for ATV_output1
#	?a4		$$266
#	?a5		$$265
#	?a6		$$264
#	?a7		$$263
#	?a8		$$262
#	?a9		$$261
#	?a10		$$260
#	?a11		$$259
#	?a12		tmp
#	?a13		tmp
#	?a14		tmp
#	?a15		tmp
#	?a16		tmp
#	?a17		tmp
#	?a18		tmp
#	?a19		tmp
#	?a20		tmp
#	?a21		tmp
#	?a22		tmp
#	?a23		tmp
#	?a24		tmp
#	?a25		$$258
#	not allocated	$$14
#	?a26		$$13
#	?a27		tmp
#	SP,48		data
#	?a28		retval
#	SP,144		pcx_CANdb_TransmitMessage1_in_port_buffer
#	SP,192		pcx_CANdb_TransmitMessage1_in_port_ptr
#	SP,56		data
#	?a29		retval
#	SP,112		pcx_CANdb_TransmitMessage6_in_port_buffer
#	SP,128		pcx_CANdb_TransmitMessage6_in_port_ptr
#	SP,64		data
#	SP,36		timestamp
#	?a30		pcxf_rx_receive_status
#	SP,88		pcx_CANdb_ReceiveMessage_out_port_buffer
#	SP,100		pcx_CANdb_ReceiveMessage_out_port
#	SP,72		data
#	SP,40		timestamp
#	?a31		pcxf_rx_receive_status
#	SP,240		pcx_CANdb_ReceiveMessage_p_out_port_buffer
#	SP,268		pcx_CANdb_ReceiveMessage_p_out_port
#	SP,80		data
#	SP,44		timestamp
#	?a32		pcxf_rx_receive_status
#	SP,168		pcx_CANdb_ReceiveMessage_e_out_port_buffer
#	SP,216		pcx_CANdb_ReceiveMessage_e_out_port
# static void ATV_update1(void)          /* Sample time: [0.1s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         3845
#$$ld
.L6023:

#$$bf	ATV_update1,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,cr0,spefscr
	.d2_cfa_start __cie
ATV_update1:
	.d2line		0
	.d2prologue_end
	.d2line		3847
	lbz		r0,atv_v_dbg_chg_req@sdarx(r0)
#   /* Update for RateTransition: '<Root>/Rate Transition4' */
#   ATV_DW.RateTransition4_Buffer0 = atv_v_dbg_chg_req;
	.d2line		3850
	lis		r3,ATV_DW@ha
	e_add16i		r3,r3,ATV_DW@l
	lis		r4,ATV_B@ha
	stb		r0,44(r3)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition5' */
#   ATV_DW.RateTransition5_Buffer0 = atv_v_dbg_heater_req;
	e_add16i		r4,r4,ATV_B@l
	.d2line		3871
	lis		r5,ATV_M@ha
	lbz		r0,atv_v_dbg_heater_req@sdarx(r0)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition6' */
#   ATV_DW.RateTransition6_Buffer0 = ATV_B.atv_v_dbg_T_FMot;
	stb		r0,45(r3)
	.d2line		3853
	lbz		r0,102(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition7' */
#   ATV_DW.RateTransition7_Buffer0 = ATV_B.atv_v_dbg_T_FInv;
	stb		r0,14(r3)
	.d2line		3856
	lbz		r0,103(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition10' */
#   ATV_DW.RateTransition10_Buffer0 = ATV_B.atv_v_dbg_T_GMot;
	stb		r0,15(r3)
	.d2line		3859
	lbz		r0,106(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition8' */
#   ATV_DW.RateTransition8_Buffer0 = ATV_B.atv_v_dbg_T_RMot;
	stb		r0,16(r3)
	.d2line		3862
	lbz		r0,104(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition9' */
#   ATV_DW.RateTransition9_Buffer0 = ATV_B.atv_v_dbg_T_RInv;
	stb		r0,17(r3)
	.d2line		3865
	lbz		r0,105(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition11' */
#   ATV_DW.RateTransition11_Buffer0 = ATV_B.atv_v_dbg_T_GInv;
	stb		r0,18(r3)
	.d2line		3868
	lbz		r0,107(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition12' */
#   ATV_DW.RateTransition12_Buffer0 = ATV_B.atv_v_dbg_T_Rad;
	stb		r0,19(r3)
	.d2line		3871
	lbz		r0,108(r4)
	stb		r0,20(r3)
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
	.d2line		3882
	lwz		r4,404(r3)
	diab.addi		r0,r4,1
	stw		r0,404(r3)
	se_cmpi		r0,0
	bc		0,2,.L4706	# ne
#     ++ATV_M->Timing.clockTickH1;
	.d2line		3883
	lwz		r4,408(r3)
	se_addi		r4,1
	stw		r4,408(r3)
.L4706:
	.d2line		3886
	lwz		r5,408(r3)
#   }
# 
#   ATV_M->Timing.t[1] = ATV_M->Timing.clockTick1 * ATV_M->Timing.stepSize1 +
	e_lis		r6,20352
	.d2line		3883
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
	.d2line		3888
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6024:
	.type		ATV_update1,@function
	.size		ATV_update1,.-ATV_update1
# Number of nodes = 138

# Allocations for ATV_update1
#	?a4		$$275
#	?a5		$$274
#	?a6		$$273
#	?a7		$$272
#	?a8		$$271
#	not allocated	$$269
#	?a9		$$268
#	not allocated	$$267
#	?a10		$$16
#	?a11		$$15
# static void ATV_output2(void)          /* Sample time: [1.0s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         3892
#$$ld
.L6028:

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
#   /* S-Function (psc_cpu_loading): '<S24>/psc_CpuLoading1' */
#   /* S-Function Block: <S24>/psc_CpuLoading1
#    * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   atv_cpu_loading = psc_get_cpu_loading();
	.d2line		3897
	bl		psc_get_cpu_loading
	.d2line		3910
	lis		r31,pkn_task_1000ms_task_hdl@ha
# 
#   /* S-Function (psc_stack_used): '<S24>/psc_StackUsed' */
#   /*
#    * S-Function Block: <S24>/psc_StackUsed
#    * [$Id: psc_stack_used.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   atv_stack_used = psc_get_used_stack_size();
	stb		r3,atv_cpu_loading@sdarx(r0)
	.d2line		3904
	bl		psc_get_used_stack_size
# 
#   /* S-Function (pkn_task_duration): '<S24>/pkn_TaskDuration1' */
#   /* S-Function Block: <S24>/pkn_TaskDuration1
#    * [$Id: pkn_task_duration.tlc 34330 2013-07-01 12:56:28Z sbhattacharya $]
#    */
#   atv_task_duration_1s = pkn_get_task_duration(pkn_task_1000ms_task_hdl);
	stw		r3,atv_stack_used@sdarx(r0)
	lwz		r3,pkn_task_1000ms_task_hdl@l(r31)
	bl		pkn_get_task_duration
	stw		r3,atv_task_duration_1s@sdarx(r0)
# 
#   /* S-Function (psc_cpu_loading): '<S24>/psc_CpuLoading2' */
#   /* S-Function Block: <S24>/psc_CpuLoading2
#    * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   atv_cpu_loading_max = psc_get_max_cpu_loading();
	.d2line		3916
	bl		psc_get_max_cpu_loading
	stb		r3,atv_cpu_loading_max@sdarx(r0)
# 
#   /* S-Function (pkn_task_duration): '<S24>/pkn_TaskDuration2' */
#   /* S-Function Block: <S24>/pkn_TaskDuration2
#    * [$Id: pkn_task_duration.tlc 34330 2013-07-01 12:56:28Z sbhattacharya $]
#    */
#   atv_task_duration_1s_max = pkn_get_max_task_duration(pkn_task_1000ms_task_hdl);
	.d2line		3922
	lwz		r3,pkn_task_1000ms_task_hdl@l(r31)
	bl		pkn_get_max_task_duration
	stw		r3,atv_task_duration_1s_max@sdarx(r0)
# }
	.d2line		3923
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
.L6029:
	.type		ATV_output2,@function
	.size		ATV_output2,.-ATV_output2
# Number of nodes = 24

# Allocations for ATV_output2
#	not allocated	$$276
# static void ATV_update2(void)          /* Sample time: [1.0s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         3927
#$$ld
.L6033:

#$$bf	ATV_update2,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,cr0,spefscr
	.d2_cfa_start __cie
ATV_update2:
	.d2line		0
	.d2prologue_end
	.d2line		3937
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
	bc		0,2,.L4710	# ne
#     ++ATV_M->Timing.clockTickH2;
	.d2line		3938
	lwz		r4,420(r3)
	se_addi		r4,1
	stw		r4,420(r3)
.L4710:
	.d2line		3941
	lwz		r5,420(r3)
#   }
# 
#   ATV_M->Timing.t[2] = ATV_M->Timing.clockTick2 * ATV_M->Timing.stepSize2 +
	e_lis		r6,20352
	.d2line		3938
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
	.d2line		3943
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6034:
	.type		ATV_update2,@function
	.size		ATV_update2,.-ATV_update2
# Number of nodes = 47

# Allocations for ATV_update2
#	?a4		$$283
#	?a5		$$282
#	?a6		$$281
#	not allocated	$$279
#	?a7		$$278
#	not allocated	$$277
#	?a8		$$18
#	?a9		$$17
# static void ATV_initialize(void)
# {
	.align		1
	.section	.text_vle
        .d2line         3989
#$$ld
.L6038:

#$$bf	ATV_initialize,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ATV_initialize:
	stwu		r1,-80(r1)		
	.d2_cfa_def_cfa_offset	80
	mfspr		r0,lr
	stmw		r28,64(r1)		# offset r1+64  0x40
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,84(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#   /* user code (Start function Body) */
# 
#   /*
#    * [$Id: put_identification.tlc 82546 2021-12-17 21:41:32Z csmith $]
#    */
#   /* S-Function Block: <S22>/pcfg_Config_M5xx
#    * [$Id: pcfg_config_m5xx.tlc 69984 2019-02-26 16:29:50Z jprewett $]
#    */
#   (void) pcfg_set_global_mios_prescaler_m5xx(PIO_CFG_MIOS_GLOBAL_FAST);
	.d2line		3998
	diab.li		r3,50
	.d2line		4036
	lis		r28,ATV_B@ha
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XH3,
	bl		pcfg_set_global_mios_prescaler_m5xx
	diab.li		r30,0
	.d2line		3999
	diab.li		r3,57
	diab.li		r4,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XH2,
	bl		pcfg_setup_pwm_clock_m5xx
	e_add16i		r28,r28,ATV_B@l
	.d2line		4001
	diab.li		r3,56
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XH1,
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		4067
	diab.li		r31,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XG1,
	.d2line		4003
	diab.li		r3,42
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_ZB4,
	.d2line		4005
	diab.li		r3,36
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_DIN_XF1,
	.d2line		4007
	diab.li		r3,178
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_DIN_XF4,
	.d2line		4009
	diab.li		r3,32
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_YB2,
	.d2line		4011
	diab.li		r3,35
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_YK3,
	.d2line		4013
	diab.li		r3,86
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_DIN_XD4_MONITOR_D,
	.d2line		4015
	diab.li		r3,150
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_0C,
	.d2line		4017
	diab.li		r3,27
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_0F,
	.d2line		4019
	diab.li		r3,13
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_1A,
	.d2line		4021
	diab.li		r3,14
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_ZG4,
	.d2line		4023
	diab.li		r3,18
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_1F,
	.d2line		4025
	diab.li		r3,15
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
# 
#   /* Start for S-Function (pdx_digital_input): '<S6>/pdx_DigitalInput' */
# 
#   /* S-Function Block: <S6>/pdx_DigitalInput
#    * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
#    */
#   (void) pdx_digital_input(PIO_DIN_ZA3, NULL, TRUE);
	.d2line		4027
	diab.li		r3,17
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		4035
	diab.li		r3,169
#   put_debounce_by_time_init(&pdx_DigitalInput_detm_wrk_data);
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_input
	.d2line		4036
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
	.d2line		4039
	sth		r30,110(r28)
	.d2line		4049
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
	.d2line		4060
	diab.li		r4,0
	diab.li		r6,8
	diab.li		r7,335
	diab.li		r5,0
	diab.li		r3,1
	bl		pcx_declare_message
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     335);
# 
#   /* Start for RateTransition: '<Root>/Rate Transition6' */
#   ATV_B.RateTransition6 = 0U;
	sth		r3,pcx_CANdb_TransmitMessage1_msg_handle@sdarx(r0)
	.d2line		4092
	diab.li		r4,0
# 
#   /* Start for RateTransition: '<Root>/Rate Transition7' */
#   ATV_B.RateTransition7 = 0U;
# 
#   /* Start for RateTransition: '<Root>/Rate Transition10' */
#   ATV_B.RateTransition10 = 0U;
	diab.li		r6,8
# 
#   /* Start for RateTransition: '<Root>/Rate Transition8' */
#   ATV_B.RateTransition8 = 0U;
# 
#   /* Start for RateTransition: '<Root>/Rate Transition9' */
#   ATV_B.RateTransition9 = 0U;
# 
#   /* Start for RateTransition: '<Root>/Rate Transition11' */
#   ATV_B.RateTransition11 = 0U;
# 
#   /* Start for RateTransition: '<Root>/Rate Transition12' */
#   ATV_B.RateTransition12 = 0U;
	diab.li		r7,498
# 
#   /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage6' */
# 
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage6
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_TransmitMessage6_msg_handle = pcx_declare_message(PCX_TX_MSG,
	.d2line		4067
	sth		r30,94(r28)
	diab.li		r5,0
	.d2line		4073
	stw		r31,96(r28)
	diab.li		r3,1
	.d2line		4085
	stb		r31,100(r28)
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
	.d2line		4103
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
	.d2line		4117
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
	.d2line		4128
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
	.d2line		4142
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
#   /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
# 
#   /* S-Function Block: <S5>/pdx_DigitalOutput
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_YL4,
	.d2line		4155
	diab.li		r4,0
	diab.li		r5,1
	diab.li		r3,158
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput1' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
# 
#   /* S-Function Block: <S5>/pdx_DigitalOutput1
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_YA1,
	.d2line		4166
	diab.li		r3,61
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput3' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
# 
#   /* S-Function Block: <S5>/pdx_DigitalOutput3
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_ZF2,
	.d2line		4177
	diab.li		r3,212
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput4' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
# 
#   /* S-Function Block: <S5>/pdx_DigitalOutput4
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_YA2,
	.d2line		4188
	diab.li		r3,65
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput5' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
# 
#   /* S-Function Block: <S5>/pdx_DigitalOutput5
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_YA3,
	.d2line		4199
	diab.li		r3,70
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput6' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
# 
#   /* S-Function Block: <S5>/pdx_DigitalOutput6
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_YA4,
	.d2line		4210
	diab.li		r3,75
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput7' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
# 
#   /* S-Function Block: <S5>/pdx_DigitalOutput7
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_ZG2,
	.d2line		4221
	diab.li		r3,217
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput8' */
# 
#   /* S-Function Block: <S5>/pdx_DigitalOutput8
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_XD1_ENABLE_PSU_HOLD,
	.d2line		4230
	diab.li		r3,21
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_pwm_output): '<S5>/pdx_PWMOutput' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
# 
#   /*
#    * S-Function Block: <S5>/pdx_PWMOutput
#    * [$Id: pdx_pwm_output.tlc 30730 2012-09-29 12:01:15Z jtough $]
#    */
#   (void) pdx_pwm_output(PIO_FFPOT_YK3,
	.d2line		4242
	diab.li		r5,0
	diab.li		r3,150
	e_lis		r4,17402
	diab.li		r7,1
	diab.li		r6,0
	bl		pdx_pwm_output
#                         500.0,
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
	.d2line		4253
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
	.d2line		4264
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
#   /* Start for S-Function (pcx_candb_receive_message): '<S2>/pcx_CANdb_ReceiveMessage' */
# 
#   /* S-Function Block: <S2>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_ReceiveMessage_e_msg_handle = pcx_declare_message(PCX_RX_MSG,
	.d2line		4275
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
	.d2line		4289
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
	.d2line		4301
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
	.d2line		4312
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
	.d2line		4323
	diab.li		r3,149
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pcx_can_config): '<S20>/pcx_CANConfiguration' */
# 
#   /* S-Function Block: <S20>/pcx_CANConfiguration
#    * [$Id: pcx_can_config.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   pcx_config(PIO_CAN_YE4_YF4_A, PIO_CBAUD_500_KBPS);
	.d2line		4332
	diab.li		r3,0
	diab.li		r4,500
	bl		pcx_config
# 
#   /* Start for S-Function (psc_app_build_date): '<S25>/psc_AppBuildDate' */
# 
#   /*
#    * S-Function Block: <S25>/psc_AppBuildDate
#    * [$Id: psc_app_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 year;
#     U16 month;
#     U16 day;
#     (void) psc_get_application_build_date(&year, &month, &day);
	.d2line		4344
	diab.addi		r3,r1,8
	diab.addi		r4,r1,10
	diab.addi		r5,r1,12
	bl		psc_get_application_build_date
#     atv_app_code_year = year;
	.d2line		4346
	lhz		r0,10(r1)
	.d2line		4360
	diab.addi		r3,r1,14
#     atv_app_code_month = month;
	.d2line		4345
	lhz		r5,8(r1)
	diab.addi		r4,r1,16
#     atv_app_code_day = day;
	sth		r0,atv_app_code_month@sdarx(r0)
	sth		r5,atv_app_code_year@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_app_version): '<S25>/psc_AppVersion' */
# 
#   /*
#    * S-Function Block: <S25>/psc_AppVersion
#    * [$Id: psc_app_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 major_ver;
#     U16 minor_ver;
#     U16 sub_minor_ver;
#     (void) psc_get_application_version(&major_ver, &minor_ver, &sub_minor_ver);
	.d2line		4347
	lhz		r0,12(r1)
	diab.addi		r5,r1,18
	sth		r0,atv_app_code_day@sdarx(r0)
	bl		psc_get_application_version
#     atv_app_code_major_ver = major_ver;
	.d2line		4362
	lhz		r0,16(r1)
	.d2line		4376
	diab.addi		r3,r1,20
#     atv_app_code_minor_ver = minor_ver;
	.d2line		4361
	lhz		r5,14(r1)
	diab.addi		r4,r1,22
#     atv_app_code_subminor_ver = sub_minor_ver;
	sth		r0,atv_app_code_minor_ver@sdarx(r0)
	sth		r5,atv_app_code_major_ver@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_boot_build_date): '<S26>/psc_BootBuildDate' */
# 
#   /*
#    * S-Function Block: <S26>/psc_BootBuildDate
#    * [$Id: psc_boot_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 year;
#     U16 month;
#     U16 day;
#     (void) psc_get_boot_build_date(&year, &month, &day);
	.d2line		4363
	lhz		r0,18(r1)
	diab.addi		r5,r1,24
	sth		r0,atv_app_code_subminor_ver@sdarx(r0)
	bl		psc_get_boot_build_date
#     atv_boot_code_year = year;
	.d2line		4378
	lhz		r0,22(r1)
	.d2line		4392
	diab.addi		r3,r1,26
#     atv_boot_code_month = month;
	.d2line		4377
	lhz		r5,20(r1)
	diab.addi		r4,r1,28
#     atv_boot_code_day = day;
	sth		r0,atv_boot_code_month@sdarx(r0)
	sth		r5,atv_boot_code_year@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_boot_version): '<S26>/psc_BootVersion' */
# 
#   /*
#    * S-Function Block: <S26>/psc_BootVersion
#    * [$Id: psc_boot_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 major_ver;
#     U16 minor_ver;
#     U16 sub_minor_ver;
#     (void) psc_get_boot_version(&major_ver, &minor_ver, &sub_minor_ver);
	.d2line		4379
	lhz		r0,24(r1)
	diab.addi		r5,r1,30
	sth		r0,atv_boot_code_day@sdarx(r0)
	bl		psc_get_boot_version
#     atv_boot_code_major_ver = major_ver;
	.d2line		4394
	lhz		r0,28(r1)
	.d2line		4408
	diab.addi		r3,r1,32
#     atv_boot_code_minor_ver = minor_ver;
	.d2line		4393
	lhz		r5,26(r1)
	diab.addi		r4,r1,34
#     atv_boot_code_subminor_ver = sub_minor_ver;
	sth		r0,atv_boot_code_minor_ver@sdarx(r0)
	sth		r5,atv_boot_code_major_ver@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_prg_build_date): '<S27>/psc_PrgBuildDate' */
# 
#   /*
#    * S-Function Block: <S27>/psc_PrgBuildDate
#    * [$Id: psc_prg_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 year;
#     U16 month;
#     U16 day;
#     (void) psc_get_prg_build_date(&year, &month, &day);
	.d2line		4395
	lhz		r0,30(r1)
	diab.addi		r5,r1,36
	sth		r0,atv_boot_code_subminor_ver@sdarx(r0)
	bl		psc_get_prg_build_date
#     atv_prg_code_year = year;
	.d2line		4410
	lhz		r0,34(r1)
	.d2line		4424
	diab.addi		r3,r1,38
#     atv_prg_code_month = month;
	.d2line		4409
	lhz		r5,32(r1)
	diab.addi		r4,r1,40
#     atv_prg_code_day = day;
	sth		r0,atv_prg_code_month@sdarx(r0)
	sth		r5,atv_prg_code_year@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_prg_version): '<S27>/psc_PrgVersion' */
# 
#   /*
#    * S-Function Block: <S27>/psc_PrgVersion
#    * [$Id: psc_prg_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 major_ver;
#     U16 minor_ver;
#     U16 sub_minor_ver;
#     (void) psc_get_prg_version(&major_ver, &minor_ver, &sub_minor_ver);
	.d2line		4411
	lhz		r0,36(r1)
	diab.addi		r5,r1,42
	sth		r0,atv_prg_code_day@sdarx(r0)
	bl		psc_get_prg_version
#     atv_prg_code_major_ver = major_ver;
	.d2line		4426
	lhz		r0,40(r1)
	.d2line		4440
	diab.addi		r3,r1,44
#     atv_prg_code_minor_ver = minor_ver;
	.d2line		4425
	lhz		r5,38(r1)
	diab.addi		r4,r1,46
#     atv_prg_code_subminor_ver = sub_minor_ver;
	sth		r0,atv_prg_code_minor_ver@sdarx(r0)
	sth		r5,atv_prg_code_major_ver@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_platform_build_date): '<S28>/psc_PlatformBuildDate' */
# 
#   /*
#    * S-Function Block: <S28>/psc_PlatformBuildDate
#    * [$Id: psc_platform_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 year;
#     U16 month;
#     U16 day;
#     (void) psc_get_platform_build_date(&year, &month, &day);
	.d2line		4427
	lhz		r0,42(r1)
	diab.addi		r5,r1,48
	sth		r0,atv_prg_code_subminor_ver@sdarx(r0)
	bl		psc_get_platform_build_date
#     atv_platform_code_year = year;
	.d2line		4441
	lhz		r4,44(r1)
	.d2line		4442
	lhz		r3,46(r1)
#     atv_platform_code_month = month;
	.d2line		4443
	lhz		r0,48(r1)
	sth		r4,atv_platform_code_year@sdarx(r0)
#     atv_platform_code_day = day;
	sth		r3,atv_platform_code_month@sdarx(r0)
	.d2line		4456
	diab.addi		r4,r1,52
#   }
# 
#   /* Start for S-Function (psc_platform_version): '<S28>/psc_PlatformVersion' */
# 
#   /*
#    * S-Function Block: <S28>/psc_PlatformVersion
#    * [$Id: psc_platform_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 major_ver;
#     U16 minor_ver;
#     U16 sub_minor_ver;
#     (void) psc_get_platform_version(&major_ver, &minor_ver, &sub_minor_ver);
	sth		r0,atv_platform_code_day@sdarx(r0)
	diab.addi		r5,r1,54
	diab.addi		r3,r1,50
	.d2line		4459
	lis		r29,ATV_DW@ha
	bl		psc_get_platform_version
#     atv_platform_code_major_ver = major_ver;
	e_add16i		r29,r29,ATV_DW@l
	.d2line		4458
	lhz		r0,52(r1)
#     atv_platform_code_minor_ver = minor_ver;
	.d2line		4463
	diab.li		r5,0
	.d2line		4457
	lhz		r4,50(r1)
#     atv_platform_code_subminor_ver = sub_minor_ver;
	.d2line		4542
	diab.addi		r3,r29,59
	sth		r0,atv_platform_code_minor_ver@sdarx(r0)
	sth		r4,atv_platform_code_major_ver@sdarx(r0)
#   }
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition4' */
#   ATV_DW.RateTransition4_Buffer0 = false;
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition5' */
#   ATV_DW.RateTransition5_Buffer0 = false;
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition6' */
#   ATV_DW.RateTransition6_Buffer0 = 0U;
	.d2line		4459
	lhz		r0,54(r1)
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition7' */
#   ATV_DW.RateTransition7_Buffer0 = 0U;
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition10' */
#   ATV_DW.RateTransition10_Buffer0 = 0U;
	sth		r0,atv_platform_code_subminor_ver@sdarx(r0)
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition8' */
#   ATV_DW.RateTransition8_Buffer0 = 0U;
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition9' */
#   ATV_DW.RateTransition9_Buffer0 = 0U;
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition11' */
#   ATV_DW.RateTransition11_Buffer0 = 0U;
# 
#   /* InitializeConditions for RateTransition: '<Root>/Rate Transition12' */
#   ATV_DW.RateTransition12_Buffer0 = 0U;
	.d2line		4469
	sth		r30,14(r29)
	.d2line		4475
	stw		r31,16(r29)
	.d2line		4487
	stb		r31,20(r29)
# 
#   /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S3>/pcx_CANdb_ReceiveMessage' */
# 
#   /* S-Function Block: <S3>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   ATV_B.pcx_CANdb_ReceiveMessage_o4 = 0;
	.d2line		4463
	sth		r30,44(r29)
#   ATV_B.pcx_CANdb_ReceiveMessage_o5 = 0;
	.d2line		4494
	stw		r5,16(r28)
#   ATV_B.pcx_CANdb_ReceiveMessage_o6 = 0;
	.d2line		4495
	stw		r5,20(r28)
# 
#   /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S4>/pcx_CANdb_ReceiveMessage' */
# 
#   /* S-Function Block: <S4>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   ATV_B.pcx_CANdb_ReceiveMessage_o4_k = 0;
	.d2line		4496
	stw		r5,24(r28)
#   ATV_B.pcx_CANdb_ReceiveMessage_o5_c = 0;
	.d2line		4503
	stw		r5,28(r28)
#   ATV_B.pcx_CANdb_ReceiveMessage_o6_o = 0;
	.d2line		4504
	stw		r5,32(r28)
#   ATV_B.pcx_CANdb_ReceiveMessage_o7 = 0;
	.d2line		4505
	stw		r5,36(r28)
#   ATV_B.pcx_CANdb_ReceiveMessage_o8 = 0;
	.d2line		4506
	stw		r5,40(r28)
#   ATV_B.pcx_CANdb_ReceiveMessage_o9 = 0;
	.d2line		4507
	stw		r5,44(r28)
#   ATV_B.pcx_CANdb_ReceiveMessage_o10 = 0;
	.d2line		4508
	stw		r5,48(r28)
# 
#   /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S2>/pcx_CANdb_ReceiveMessage' */
# 
#   /* S-Function Block: <S2>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   ATV_B.pcx_CANdb_ReceiveMessage_o4_n = 0;
	.d2line		4509
	stw		r5,52(r28)
#   ATV_B.pcx_CANdb_ReceiveMessage_o5_m = 0;
	.d2line		4516
	stw		r5,60(r28)
#   bms_pack_voltage = 0;
	.d2line		4517
	stw		r5,64(r28)
#   ATV_B.atv_bms_pack_current = 0;
	.d2line		4518
	stw		r5,bms_pack_voltage@sdarx(r0)
#   ATV_B.atv_bms_pack_soh = 0;
	.d2line		4519
	stw		r5,68(r28)
#   ATV_B.pcx_CANdb_ReceiveMessage_o9_c = 0;
	.d2line		4520
	stw		r5,72(r28)
# 
#   /* SystemInitialize for Chart: '<S8>/VSM' */
#   ATV_DW.is_CHG_CTRL = ATV_IN_NO_ACTIVE_CHILD_b;
#   ATV_DW.temporalCounter_i3 = 0U;
#   ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_b;
#   ATV_DW.is_HEATER_CTRL = ATV_IN_NO_ACTIVE_CHILD_b;
#   ATV_DW.is_HV_CTRL = ATV_IN_NO_ACTIVE_CHILD_b;
#   ATV_DW.temporalCounter_i2_j = 0U;
#   ATV_DW.is_STARTTRIGGER = ATV_IN_NO_ACTIVE_CHILD_b;
#   ATV_DW.temporalCounter_i1_ji = 0U;
#   ATV_DW.is_active_c3_ATV = 0U;
#   ATV_DW.is_c3_ATV = ATV_IN_NO_ACTIVE_CHILD_b;
# 
#   /* SystemInitialize for Chart: '<S38>/PUMP LOGIC' */
#   ATV_DW.is_PumpALogic = ATV_IN_NO_ACTIVE_CHILD_b;
#   ATV_DW.is_PumpBLogic = ATV_IN_NO_ACTIVE_CHILD_b;
#   ATV_DW.temporalCounter_i1_j = 0U;
	.d2line		4521
	stw		r5,76(r28)
	.d2line		4538
	sth		r30,12(r29)
	.d2line		4532
	stb		r31,21(r29)
	.d2line		4533
	sth		r30,22(r29)
	.d2line		4528
	stw		r31,24(r29)
	.d2line		4531
	sth		r30,28(r29)
#   ATV_DW.is_active_c6_ATV = 0U;
	.d2line		4525
	stb		r31,30(r29)
	.d2line		4539
	sth		r30,38(r29)
# 
#   /* SystemInitialize for Chart: '<S3>/Chart' */
#   ATV_Chart_Init(&ATV_DW.sf_Chart);
	.d2line		4537
	stb		r31,40(r29)
	.d2line		4542
	bl		ATV_Chart_Init
# 
#   /* SystemInitialize for Chart: '<S4>/Chart' */
#   ATV_Chart_Init(&ATV_DW.sf_Chart_b);
	.d2line		4545
	diab.addi		r3,r29,56
	bl		ATV_Chart_Init
# 
#   /* SystemInitialize for Chart: '<S34>/VSMGestioneIbrido' */
#   ATV_DW.is_GestioneIbrido = ATV_IN_NO_ACTIVE_CHILD_b;
#   ATV_DW.is_ProceduraAvviamento = ATV_IN_NO_ACTIVE_CHILD_b;
#   ATV_DW.is_RegenerativeMode = ATV_IN_NO_ACTIVE_CHILD_b;
#   ATV_DW.is_StarterMode = ATV_IN_NO_ACTIVE_CHILD_b;
#   ATV_DW.temporalCounter_i1 = 0U;
	.d2line		4552
	stw		r31,8(r29)
#   ATV_DW.is_active_MonitoraggioStatoICE = 0U;
#   ATV_DW.is_MonitoraggioStatoICE = ATV_IN_NO_ACTIVE_CHILD_b;
#   ATV_DW.temporalCounter_i2 = 0U;
#   ATV_DW.is_active_c2_ATV = 0U;
	.d2line		4556
	stb		r31,31(r29)
	.d2line		4548
	stw		r31,32(r29)
	.d2line		4554
	sth		r30,36(r29)
# }
	.d2line		4557
	.d2epilogue_begin
	lmw		r28,64(r1)		# offset r1+64  0x40
	.d2_cfa_restore_list	3,10
	lwz		r0,84(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,80		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6039:
	.type		ATV_initialize,@function
	.size		ATV_initialize,.-ATV_initialize
# Number of nodes = 930

# Allocations for ATV_initialize
#	?a4		$$289
#	?a5		$$288
#	?a6		$$287
#	?a7		$$286
#	?a8		$$285
#	?a9		$$284
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
        .d2line         4569
#$$ld
.L6068:

#$$bf	MdlOutputs,interprocedural,nostackparams
	.globl		MdlOutputs
	.d2_cfa_start __cie
MdlOutputs:
.Llo1180:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	.d2prologue_end
	.d2line		3948
	se_cmpi		r3,0
	bc		1,2,.L4748	# eq
	se_cmpi		r3,1
	bc		1,2,.L4749	# eq
	se_cmpi		r3,2
	bc		1,2,.L4750	# eq
	b		.L4751
.L4748:
	.d2line		3950
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_output0
.L4749:
	.d2line		3954
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_output1
.L4750:
	.d2line		3958
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_output2
.L4751:
#   ATV_output(tid);
# }
	.d2line		4571
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1181:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6069:
	.type		MdlOutputs,@function
	.size		MdlOutputs,.-MdlOutputs
# Number of nodes = 4

# Allocations for MdlOutputs
#	?a4		tid
#	not allocated	$$24
#	not allocated	tid
# void MdlUpdate(int_T tid)
# {
	.align		2
	.section	.text_vle
        .d2line         4574
#$$ld
.L6074:

#$$bf	MdlUpdate,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r12,cr0,lr,spefscr
	.globl		MdlUpdate
	.d2_cfa_start __cie
MdlUpdate:
.Llo1182:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	.d2prologue_end
	.d2line		3969
	se_cmpi		r3,0
	bc		1,2,.L4752	# eq
	se_cmpi		r3,1
	bc		1,2,.L4753	# eq
	se_cmpi		r3,2
	bc		1,2,.L4754	# eq
	b		.L4755
.L4752:
	.d2line		3971
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_update0
.L4753:
	.d2line		3975
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_update1
.L4754:
	.d2line		3979
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_update2
.L4755:
#   ATV_update(tid);
# }
	.d2line		4576
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1183:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6075:
	.type		MdlUpdate,@function
	.size		MdlUpdate,.-MdlUpdate
# Number of nodes = 4

# Allocations for MdlUpdate
#	?a4		tid
#	not allocated	$$26
#	not allocated	tid
# void MdlInitializeSizes(void)
# {
	.align		2
	.section	.text_vle
        .d2line         4579
#$$ld
.L6080:

#$$bf	MdlInitializeSizes,interprocedural,nostackparams

# Regs written: 
	.globl		MdlInitializeSizes
	.d2_cfa_start __cie
MdlInitializeSizes:
	.d2line		0
	.d2prologue_end
# }
	.d2line		4580
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6081:
	.type		MdlInitializeSizes,@function
	.size		MdlInitializeSizes,.-MdlInitializeSizes
# Number of nodes = 0

# Allocations for MdlInitializeSizes
# void MdlInitializeSampleTimes(void)
# {
	.align		2
	.section	.text_vle
        .d2line         4583
#$$ld
.L6085:

#$$bf	MdlInitializeSampleTimes,interprocedural,nostackparams

# Regs written: 
	.globl		MdlInitializeSampleTimes
	.d2_cfa_start __cie
MdlInitializeSampleTimes:
	.d2line		0
	.d2prologue_end
# }
	.d2line		4584
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6086:
	.type		MdlInitializeSampleTimes,@function
	.size		MdlInitializeSampleTimes,.-MdlInitializeSampleTimes
# Number of nodes = 0

# Allocations for MdlInitializeSampleTimes
# void MdlInitialize(void)
# {
	.align		2
	.section	.text_vle
        .d2line         4587
#$$ld
.L6090:

#$$bf	MdlInitialize,interprocedural,nostackparams

# Regs written: 
	.globl		MdlInitialize
	.d2_cfa_start __cie
MdlInitialize:
	.d2line		0
	.d2prologue_end
# }
	.d2line		4588
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6091:
	.type		MdlInitialize,@function
	.size		MdlInitialize,.-MdlInitialize
# Number of nodes = 0

# Allocations for MdlInitialize
# void MdlStart(void)
# {
	.align		2
	.section	.text_vle
        .d2line         4591
#$$ld
.L6095:

#$$bf	MdlStart,interprocedural,nostackparams
	.globl		MdlStart
	.d2_cfa_start __cie
MdlStart:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	.d2prologue_end
#   ATV_initialize();
	.d2line		4592
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_initialize
# }
	.d2line		4593
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6096:
	.type		MdlStart,@function
	.size		MdlStart,.-MdlStart
# Number of nodes = 2

# Allocations for MdlStart
# void MdlTerminate(void)
# {
	.align		2
	.section	.text_vle
        .d2line         4596
#$$ld
.L6100:

#$$bf	MdlTerminate,interprocedural,nostackparams

# Regs written: 
	.globl		MdlTerminate
	.d2_cfa_start __cie
MdlTerminate:
	.d2line		0
	.d2prologue_end
#   ATV_terminate();
# }
	.d2line		4598
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6101:
	.type		MdlTerminate,@function
	.size		MdlTerminate,.-MdlTerminate
# Number of nodes = 2

# Allocations for MdlTerminate
#	not allocated	$$19
# RT_MODEL_ATV_T *ATV(void)
# {
	.align		2
	.section	.text_vle
        .d2line         4602
#$$ld
.L6105:

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
	.d2line		4606
	diab.li		r3,4
	lis		r29,ATV_M@ha
	e_add16i		r29,r29,ATV_M@l
	bl		rt_InitInfAndNaN
# 
#   /* initialize real-time model */
#   (void) memset((void *)ATV_M, 0,
	.d2line		4614
	diab.li		r30,0
	.d2line		4609
	lwz		r3,0(r29)
	diab.li		r4,0		# mdlSampleHits=r4
	diab.li		r5,580
	.d2line		4615
	diab.li		r31,1
#                 sizeof(RT_MODEL_ATV_T));
# 
#   /* Initialize timing info */
#   {
#     int_T *mdlTsMap = ATV_M->Timing.sampleTimeTaskIDArray;
	bl		memset
	.d2line		4616
	diab.li		r7,2
#     mdlTsMap[0] = 0;
	lwz		r4,0(r29)		# mdlSampleHits=r4
	.d2line		4620
.Llo1184:
	e_lis		r6,15395
	.d2line		4623
	e_lis		r5,15820
#     mdlTsMap[1] = 1;
	e_or2i		r6,55050
	e_or2i		r5,52429
	.d2line		4624
	e_lis		r0,16256
#     mdlTsMap[2] = 2;
	.d2line		4650
	stw		r7,44(r4)		# mdlSampleHits=r4
#     ATV_M->Timing.sampleTimeTaskIDPtr = (&mdlTsMap[0]);
	.d2line		4643
	e_lis		r26,-16512		# mdlSampleHits=r26
#     ATV_M->Timing.sampleTimes = (&ATV_M->Timing.sampleTimesArray[0]);
	.d2line		4649
	stw		r6,64(r4)		# mdlSampleHits=r4
	lis		r3,ATV_B@ha
	.d2line		4648
	stw		r6,388(r4)		# mdlSampleHits=r4
#     ATV_M->Timing.offsetTimes = (&ATV_M->Timing.offsetTimesArray[0]);
	e_add16i		r3,r3,ATV_B@l
	.d2line		4614
	diab.addi		r27,r4,508		# mdlTsMap=r27 mdlSampleHits=r4
	.d2line		4653
	stw		r3,240(r4)		# mdlSampleHits=r4
# 
#     /* task periods */
#     ATV_M->Timing.sampleTimes[0] = (0.01);
	.d2line		4619
	diab.addi		r25,r4,484		# mdlSampleHits=r4
	.d2line		4644
	stw		r6,400(r4)		# mdlSampleHits=r4
#     ATV_M->Timing.sampleTimes[1] = (0.1);
	.d2line		4620
	diab.addi		r28,r4,496		# mdlSampleHits=r4
	.d2line		4654
	diab.addi		r3,r3,-4
#     ATV_M->Timing.sampleTimes[2] = (1.0);
	.d2line		4645
	stw		r5,412(r4)		# mdlSampleHits=r4
	.d2line		4646
	stw		r0,424(r4)		# mdlSampleHits=r4
# 
#     /* task offsets */
#     ATV_M->Timing.offsetTimes[0] = (0.0);
	.d2line		4633
	diab.addi		r24,r4,568		# mdlSampleHits=r4
#     ATV_M->Timing.offsetTimes[1] = (0.0);
	.d2line		4643
	stw		r26,436(r4)		# mdlSampleHits=r4 mdlSampleHits=r26
#     ATV_M->Timing.offsetTimes[2] = (0.0);
	.d2line		4625
	mr		r8,r30
#   }
# 
#   rtmSetTPtr(ATV_M, &ATV_M->Timing.tArray[0]);
	.d2line		4619
	stw		r25,460(r4)		# mdlSampleHits=r4
	.d2line		4654
	mr		r9,r8
# 
#   {
#     int_T *mdlSampleHits = ATV_M->Timing.sampleHitArray;
	.d2line		4636
	diab.addi		r26,r4,520		# mdlSampleHits=r26 mdlSampleHits=r4
#     int_T *mdlPerTaskSampleHits = ATV_M->Timing.perTaskSampleHitsArray;
#     ATV_M->Timing.perTaskSampleHits = (&mdlPerTaskSampleHits[0]);
	.d2line		4620
	stw		r28,464(r4)		# mdlSampleHits=r4
	.d2line		4638
	diab.addi		r25,r4,532		# mdlSampleHits=r4
#     mdlSampleHits[0] = 1;
	.d2line		4618
	stw		r27,468(r4)		# mdlSampleHits=r4 mdlTsMap=r27
#     ATV_M->Timing.sampleHits = (&mdlSampleHits[0]);
	.d2line		4647
	diab.addi		r28,r4,24		# mdlSampleHits=r4
#   }
# 
#   rtmSetTFinal(ATV_M, -1);
#   ATV_M->Timing.stepSize0 = 0.01;
	.d2line		4640
	stw		r26,472(r4)		# mdlSampleHits=r4 mdlSampleHits=r26
#   ATV_M->Timing.stepSize1 = 0.1;
	stw		r28,232(r4)		# mdlSampleHits=r4
#   ATV_M->Timing.stepSize2 = 1.0;
	stw		r25,476(r4)		# mdlSampleHits=r4
	.d2line		4654
	diab.li		r28,20
	.d2line		4633
	stw		r24,480(r4)		# mdlSampleHits=r4
#   ATV_M->solverInfoPtr = (&ATV_M->solverInfo);
	mtspr		ctr,r28
	.d2line		4623
	stw		r6,484(r4)		# mdlSampleHits=r4
#   ATV_M->Timing.stepSize = (0.01);
#   rtsiSetFixedStepSize(&ATV_M->solverInfo, 0.01);
	.d2line		4624
	stw		r5,488(r4)		# mdlSampleHits=r4
	.d2line		4625
	stw		r0,492(r4)		# mdlSampleHits=r4
#   rtsiSetSolverMode(&ATV_M->solverInfo, SOLVER_MODE_MULTITASKING);
	.d2line		4628
	stw		r30,496(r4)		# mdlSampleHits=r4
	.d2line		4629
	stw		r30,500(r4)		# mdlSampleHits=r4
# 
#   /* block I/O */
#   ATV_M->blockIO = ((void *) &ATV_B);
	.d2line		4630
	stw		r30,504(r4)		# mdlSampleHits=r4
#   (void) memset(((void *) &ATV_B), 0,
	.d2line		4615
	stw		r30,508(r4)		# mdlTsMap=r4
	.d2line		4616
	stw		r31,512(r4)		# mdlTsMap=r4
	.d2line		4617
	stw		r7,516(r4)		# mdlTsMap=r4
	.d2line		4639
	stw		r31,520(r4)		# mdlSampleHits=r4
.L6115:
	.d2line		4654
.Llo1185:
	stwu		r9,4(r3)
	stwu		r9,4(r3)
	bc		2,0,.L6115
#                 sizeof(B_ATV_T));
# 
#   /* exported global signals */
#   atv_xc1_raw_ain = 0.0;
	.d2line		4671
	diab.li		r5,0
#   atv_xc4_raw_ain = 0.0;
	.d2line		4666
	stw		r8,bms_pack_voltage@sdarx(r0)
#   atv_xa3_brake_pedal_raw_ain = 0.0;
	.d2line		4658
	stw		r8,atv_xc1_raw_ain@sdarx(r0)
#   atv_dbg_FAN_out = 0.0;
	.d2line		4715
	lis		r4,ATV_DW@ha		# mdlSampleHits=r4
	.d2line		4659
.Llo1186:
	stw		r8,atv_xc4_raw_ain@sdarx(r0)
#   atv_xa1_ain_throttle_raw = 0.0;
	e_add16i		r4,r4,ATV_DW@l		# mdlSampleHits=r4 mdlSampleHits=r4
#   atv_xe4_raw_ain = 0.0;
	.d2line		4660
	stw		r8,atv_xa3_brake_pedal_raw_ain@sdarx(r0)
#   atv_xe2_raw_ain = 0.0;
	.d2line		4719
	diab.li		r0,8
#   atv_xd3_raw_ain = 0.0;
	.d2line		4661
	stw		r8,atv_dbg_FAN_out@sdarx(r0)
#   bms_pack_voltage = 0.0;
	diab.addi		r3,r4,-4		# mdlSampleHits=r4
#   atv_stack_used = 0U;
	.d2line		4662
	stw		r8,atv_xa1_ain_throttle_raw@sdarx(r0)
#   atv_task_duration_1s = 0U;
	mtspr		ctr,r0
#   atv_task_duration_1s_max = 0U;
	.d2line		4663
	stw		r8,atv_xe4_raw_ain@sdarx(r0)
#   atv_xd1_key_ain = 0;
	.d2line		4664
	stw		r8,atv_xe2_raw_ain@sdarx(r0)
#   atv_xe3_ain = 0;
	.d2line		4665
	stw		r8,atv_xd3_raw_ain@sdarx(r0)
	.d2line		4667
	stw		r30,atv_stack_used@sdarx(r0)
#   atv_brake_pedalX1000 = 0U;
	.d2line		4668
	stw		r30,atv_task_duration_1s@sdarx(r0)
#   atv_throttleX1000 = 0U;
	.d2line		4669
	stw		r30,atv_task_duration_1s_max@sdarx(r0)
#   atv_app_code_year = 0U;
	.d2line		4670
	stw		r30,atv_xd1_key_ain@sdarx(r0)
#   atv_app_code_month = 0U;
	.d2line		4671
	stw		r30,atv_xe3_ain@sdarx(r0)
#   atv_app_code_day = 0U;
	.d2line		4672
	sth		r5,atv_brake_pedalX1000@sdarx(r0)
#   atv_app_code_major_ver = 0U;
	.d2line		4673
	sth		r5,atv_throttleX1000@sdarx(r0)
#   atv_app_code_minor_ver = 0U;
	.d2line		4674
	sth		r5,atv_app_code_year@sdarx(r0)
#   atv_app_code_subminor_ver = 0U;
	.d2line		4675
	sth		r5,atv_app_code_month@sdarx(r0)
#   atv_boot_code_year = 0U;
	.d2line		4676
	sth		r5,atv_app_code_day@sdarx(r0)
#   atv_boot_code_month = 0U;
	.d2line		4677
	sth		r5,atv_app_code_major_ver@sdarx(r0)
#   atv_boot_code_day = 0U;
	.d2line		4678
	sth		r5,atv_app_code_minor_ver@sdarx(r0)
#   atv_boot_code_major_ver = 0U;
	.d2line		4679
	sth		r5,atv_app_code_subminor_ver@sdarx(r0)
#   atv_boot_code_minor_ver = 0U;
	.d2line		4680
	sth		r5,atv_boot_code_year@sdarx(r0)
#   atv_boot_code_subminor_ver = 0U;
	.d2line		4681
	sth		r5,atv_boot_code_month@sdarx(r0)
#   atv_prg_code_year = 0U;
	.d2line		4682
	sth		r5,atv_boot_code_day@sdarx(r0)
#   atv_prg_code_month = 0U;
	.d2line		4683
	sth		r5,atv_boot_code_major_ver@sdarx(r0)
#   atv_prg_code_day = 0U;
	.d2line		4684
	sth		r5,atv_boot_code_minor_ver@sdarx(r0)
#   atv_prg_code_major_ver = 0U;
	.d2line		4685
	sth		r5,atv_boot_code_subminor_ver@sdarx(r0)
#   atv_prg_code_minor_ver = 0U;
	.d2line		4686
	sth		r5,atv_prg_code_year@sdarx(r0)
#   atv_prg_code_subminor_ver = 0U;
	.d2line		4687
	sth		r5,atv_prg_code_month@sdarx(r0)
#   atv_platform_code_year = 0U;
	.d2line		4688
	sth		r5,atv_prg_code_day@sdarx(r0)
#   atv_platform_code_month = 0U;
	.d2line		4689
	sth		r5,atv_prg_code_major_ver@sdarx(r0)
#   atv_platform_code_day = 0U;
	.d2line		4690
	sth		r5,atv_prg_code_minor_ver@sdarx(r0)
#   atv_platform_code_major_ver = 0U;
	.d2line		4691
	sth		r5,atv_prg_code_subminor_ver@sdarx(r0)
#   atv_platform_code_minor_ver = 0U;
	.d2line		4692
	sth		r5,atv_platform_code_year@sdarx(r0)
#   atv_platform_code_subminor_ver = 0U;
	.d2line		4693
	sth		r5,atv_platform_code_month@sdarx(r0)
#   atv_cpu_loading = 0U;
	.d2line		4694
	sth		r5,atv_platform_code_day@sdarx(r0)
#   atv_cpu_loading_max = 0U;
	.d2line		4695
	sth		r5,atv_platform_code_major_ver@sdarx(r0)
#   atv_state_out = 0U;
	.d2line		4696
	sth		r5,atv_platform_code_minor_ver@sdarx(r0)
#   atv_sub_state_out = 0U;
	.d2line		4697
	sth		r5,atv_platform_code_subminor_ver@sdarx(r0)
#   atv_key_signal = false;
	.d2line		4698
	stb		r5,atv_cpu_loading@sdarx(r0)
#   atv_za3_StartBtn_din = false;
	.d2line		4699
	stb		r5,atv_cpu_loading_max@sdarx(r0)
#   atv_fwd_mode_in = false;
	.d2line		4700
	stb		r5,atv_state_out@sdarx(r0)
#   atv_rwd_mode_in = false;
	.d2line		4701
	stb		r5,atv_sub_state_out@sdarx(r0)
#   atv_brake_pedal_digital_in = false;
	.d2line		4702
	stb		r5,atv_key_signal@sdarx(r0)
#   atv_fs1_in = false;
	.d2line		4703
	stb		r5,atv_za3_StartBtn_din@sdarx(r0)
#   atv_4wd_din = false;
	.d2line		4704
	stb		r5,atv_fwd_mode_in@sdarx(r0)
#   atv_v_dbg_chg_req = false;
	.d2line		4705
	stb		r5,atv_rwd_mode_in@sdarx(r0)
#   atv_v_dbg_heater_req = false;
	.d2line		4706
	stb		r5,atv_brake_pedal_digital_in@sdarx(r0)
#   atv_apu_req_in = false;
	.d2line		4707
	stb		r5,atv_fs1_in@sdarx(r0)
#   atv_wakelock_out = false;
	.d2line		4708
	stb		r5,atv_4wd_din@sdarx(r0)
#   atv_runLed_out = false;
	.d2line		4709
	stb		r5,atv_v_dbg_chg_req@sdarx(r0)
#   atv_en_dcdc_out = false;
	.d2line		4710
	stb		r5,atv_v_dbg_heater_req@sdarx(r0)
#   atv_dbg_pumpB_out = false;
	.d2line		4711
	stb		r5,atv_apu_req_in@sdarx(r0)
	.d2line		4712
	stb		r5,atv_wakelock_out@sdarx(r0)
# 
#   /* states (dwork) */
#   ATV_M->dwork = ((void *) &ATV_DW);
	.d2line		4713
	stb		r5,atv_runLed_out@sdarx(r0)
	.d2line		4714
	stb		r5,atv_en_dcdc_out@sdarx(r0)
#   (void) memset((void *)&ATV_DW, 0,
	.d2line		4715
	stb		r5,atv_dbg_pumpB_out@sdarx(r0)
	.d2line		4718
	lwz		r6,0(r29)
	stw		r4,292(r6)		# mdlSampleHits=r4
.L6116:
	.d2line		4719
.Llo1187:
	stwu		r5,4(r3)
	stwu		r5,4(r3)
	bc		2,0,.L6116
	lwz		r3,0(r29)
#                 sizeof(DW_ATV_T));
# 
#   /* Initialize Sizes */
#   ATV_M->Sizes.numContStates = (0);    /* Number of continuous states */
	.d2line		4727
	diab.li		r6,3
#   ATV_M->Sizes.numY = (0);             /* Number of model outputs */
#   ATV_M->Sizes.numU = (0);             /* Number of model inputs */
	.d2line		4728
	diab.li		r5,293
	.d2line		4729
	diab.li		r4,109		# mdlSampleHits=r4
#   ATV_M->Sizes.sysDirFeedThru = (0);   /* The model is not direct feedthrough */
#   ATV_M->Sizes.numSampTimes = (3);     /* Number of sample times */
	.d2line		4723
.Llo1188:
	stw		r30,316(r3)
	.d2line		4725
	stw		r30,324(r3)
#   ATV_M->Sizes.numBlocks = (293);      /* Number of blocks */
	.d2line		4724
	stw		r30,328(r3)
	.d2line		4727
	stw		r6,332(r3)
#   ATV_M->Sizes.numBlockIO = (109);     /* Number of block outputs */
	.d2line		4728
	stw		r5,336(r3)
	.d2line		4729
	stw		r4,340(r3)		# mdlSampleHits=r4
	.d2line		4726
	stw		r30,372(r3)
#   return ATV_M;
# }
	.d2line		4731
	.d2epilogue_begin
	lmw		r24,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1189:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6106:
	.type		ATV,@function
	.size		ATV,.-ATV
# Number of nodes = 439

# Allocations for ATV
#	?a4		$$309
#	?a5		$$308
#	?a6		$$307
#	?a7		$$306
#	?a8		$$305
#	?a9		$$304
#	?a10		$$303
#	?a11		$$302
#	?a12		$$301
#	?a13		$$300
#	?a14		$$299
#	?a15		$$298
#	?a16		$$297
#	?a17		$$296
#	?a18		$$294
#	not allocated	$$293
#	not allocated	$$292
#	not allocated	$$291
#	not allocated	$$290
#	?a19		mdlTsMap
#	?a20		mdlSampleHits
#	not allocated	mdlPerTaskSampleHits
# void psc_initialise_app(void)
# {
	.align		2
	.section	.text_vle
        .d2line         4745
#$$ld
.L6119:

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
	.d2line		4747
	diab.li		r3,4
	bl		rt_InitInfAndNaN
# 
#   /* Register the simulation. */
#   S = MODEL();
	.d2line		4750
	bl		ATV
	.d2line		4753
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
	.d2line		4592
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
	.d2line		4765
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6120:
	.type		psc_initialise_app,@function
	.size		psc_initialise_app,.-psc_initialise_app
# Number of nodes = 59

# Allocations for psc_initialise_app
#	?a4		$$310
#	not allocated	$$30
#	not allocated	$$29
#	not allocated	$$28
# void psc_background_app(void)
# {
	.align		2
	.section	.text_vle
        .d2line         4776
#$$ld
.L6124:

#$$bf	psc_background_app,interprocedural,nostackparams

# Regs written: 
	.globl		psc_background_app
	.d2_cfa_start __cie
psc_background_app:
	.d2line		0
	.d2prologue_end
#   /* Nothing to do for Simulink models. */
# }
	.d2line		4778
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6125:
	.type		psc_background_app,@function
	.size		psc_background_app,.-psc_background_app
# Number of nodes = 0

# Allocations for psc_background_app
# void pkn_angular_model_task(void)
# {
	.align		2
	.section	.text_vle
        .d2line         4789
#$$ld
.L6129:

#$$bf	pkn_angular_model_task,interprocedural,nostackparams

# Regs written: 
	.globl		pkn_angular_model_task
	.d2_cfa_start __cie
pkn_angular_model_task:
	.d2line		0
	.d2prologue_end
#   /* No angular functionality, task declared for linkage only. */
# }
	.d2line		4791
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6130:
	.type		pkn_angular_model_task,@function
	.size		pkn_angular_model_task,.-pkn_angular_model_task
# Number of nodes = 0

# Allocations for pkn_angular_model_task
# void pkn_10ms_model_task(void)
# {
	.align		2
	.section	.text_vle
        .d2line         4801
#$$ld
.L6134:

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
	.d2line		4802
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
	.d2line		4806
.Llo1190:
	lwz		r4,S@sdarx(r0)
	stw		r3,48(r4)		# tnext=r3
	.d2line		3950
	bl		ATV_output0
	.d2line		3971
.Llo1191:
	bl		ATV_update0
	lwz		r3,S@sdarx(r0)		# tnext=r3
#   MdlOutputs(0);
#   MdlUpdate(0);
#   rt_SimUpdateDiscreteTaskTime(rtmGetTPtr(S),
	.d2line		4809
.Llo1192:
	diab.li		r5,0
	lwz		r0,20(r1)
	lwz		r4,444(r3)		# tnext=r3
	mtspr		lr,r0
	lwz		r3,480(r3)		# tnext=r3 tnext=r3
	.d2line		4802
.Llo1193:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		rt_SimUpdateDiscreteTaskTime
#     rtmGetTimingData(S), 0);
# }
	.d2line		4811
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6135:
	.type		pkn_10ms_model_task,@function
	.size		pkn_10ms_model_task,.-pkn_10ms_model_task
# Number of nodes = 52

# Allocations for pkn_10ms_model_task
#	?a4		$$312
#	?a5		$$311
#	not allocated	$$36
#	not allocated	$$35
#	not allocated	$$27
#	not allocated	$$25
#	?a6		tnext
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid
# void pkn_100ms_model_task(void)
# {
	.align		2
	.section	.text_vle
        .d2line         4821
#$$ld
.L6141:

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
	.d2line		3954
	bl		ATV_output1
	.d2line		3975
	bl		ATV_update1
	lwz		r3,S@sdarx(r0)
#   MdlOutputs(1);
#   MdlUpdate(1);
#   rt_SimUpdateDiscreteTaskTime(rtmGetTPtr(S),
	.d2line		4824
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
	.d2line		4826
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6142:
	.type		pkn_100ms_model_task,@function
	.size		pkn_100ms_model_task,.-pkn_100ms_model_task
# Number of nodes = 22

# Allocations for pkn_100ms_model_task
#	?a4		$$313
#	not allocated	$$33
#	not allocated	$$31
#	not allocated	$$22
#	not allocated	$$20
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid
# void pkn_1000ms_model_task(void)
# {
	.align		2
	.section	.text_vle
        .d2line         4836
#$$ld
.L6146:

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
	.d2line		3958
	bl		ATV_output2
	.d2line		3979
	bl		ATV_update2
	lwz		r3,S@sdarx(r0)
#   MdlOutputs(2);
#   MdlUpdate(2);
#   rt_SimUpdateDiscreteTaskTime(rtmGetTPtr(S),
	.d2line		4839
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
	.d2line		4841
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L6147:
	.type		pkn_1000ms_model_task,@function
	.size		pkn_1000ms_model_task,.-pkn_1000ms_model_task
# Number of nodes = 22

# Allocations for pkn_1000ms_model_task
#	?a4		$$314
#	not allocated	$$34
#	not allocated	$$32
#	not allocated	$$23
#	not allocated	$$21
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid

# Allocations for module
	.section	.text_vle
	.0byte		.L6149
	.bss
	.0byte		.L6157
	.bss
	.type		ATV_B,@object
	.size		ATV_B,160
	.align		2
	.globl		ATV_B
ATV_B:
	.space		160
	.sbss
	.0byte		.L6161
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
	.type		atv_dbg_FAN_out,@object
	.size		atv_dbg_FAN_out,4
	.align		2
	.globl		atv_dbg_FAN_out
atv_dbg_FAN_out:
	.space		4
	.sbss
	.type		atv_xa1_ain_throttle_raw,@object
	.size		atv_xa1_ain_throttle_raw,4
	.align		2
	.globl		atv_xa1_ain_throttle_raw
atv_xa1_ain_throttle_raw:
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
	.type		atv_xd3_raw_ain,@object
	.size		atv_xd3_raw_ain,4
	.align		2
	.globl		atv_xd3_raw_ain
atv_xd3_raw_ain:
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
	.type		atv_fs1_in,@object
	.size		atv_fs1_in,1
	.align		0
	.globl		atv_fs1_in
atv_fs1_in:
	.space		1
	.sbss
	.type		atv_4wd_din,@object
	.size		atv_4wd_din,1
	.align		0
	.globl		atv_4wd_din
atv_4wd_din:
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
	.type		atv_apu_req_in,@object
	.size		atv_apu_req_in,1
	.align		0
	.globl		atv_apu_req_in
atv_apu_req_in:
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
	.type		atv_dbg_pumpB_out,@object
	.size		atv_dbg_pumpB_out,1
	.align		0
	.globl		atv_dbg_pumpB_out
atv_dbg_pumpB_out:
	.space		1
	.section	.cal_sec,,r
	.type		atvc_an_in_sel_his,@object
	.size		atvc_an_in_sel_his,4
	.align		2
	.globl		atvc_an_in_sel_his
atvc_an_in_sel_his:
	.float		+2.5000000000000000000e-1
	.section	.cal_sec,,r
	.type		atvc_an_in_sel_th,@object
	.size		atvc_an_in_sel_th,4
	.align		2
	.globl		atvc_an_in_sel_th
atvc_an_in_sel_th:
	.float		+2.5000000000000000000
	.section	.cal_sec,,r
	.type		atvc_brakePedalHis,@object
	.size		atvc_brakePedalHis,2
	.align		1
	.globl		atvc_brakePedalHis
atvc_brakePedalHis:
	.short		0
	.section	.cal_sec,,r
	.type		atvc_brakePedalOn,@object
	.size		atvc_brakePedalOn,2
	.align		1
	.globl		atvc_brakePedalOn
atvc_brakePedalOn:
	.short		100
	.section	.cal_sec,,r
	.type		atvc_maxDischCurr,@object
	.size		atvc_maxDischCurr,2
	.align		1
	.globl		atvc_maxDischCurr
atvc_maxDischCurr:
	.short		100
	.section	.cal_sec,,r
	.type		atvc_maxRegenCurr,@object
	.size		atvc_maxRegenCurr,2
	.align		1
	.globl		atvc_maxRegenCurr
atvc_maxRegenCurr:
	.short		50
	.section	.cal_sec,,r
	.type		atvc_throttleNeutralPoint,@object
	.size		atvc_throttleNeutralPoint,2
	.align		1
	.globl		atvc_throttleNeutralPoint
atvc_throttleNeutralPoint:
	.short		100
	.section	.cal_sec,,r
	.type		atvc_dcMinFan,@object
	.size		atvc_dcMinFan,1
	.align		0
	.globl		atvc_dcMinFan
atvc_dcMinFan:
	.byte		30
	.section	.cal_sec,,r
	.type		atvc_maxTempInv,@object
	.size		atvc_maxTempInv,1
	.align		0
	.globl		atvc_maxTempInv
atvc_maxTempInv:
	.byte		60
	.section	.cal_sec,,r
	.type		atvc_maxTempMotor,@object
	.size		atvc_maxTempMotor,1
	.align		0
	.globl		atvc_maxTempMotor
atvc_maxTempMotor:
	.byte		60
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
	.byte		80
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
	.type		pcx_CANdb_ReceiveMessage_e_msg_handle,@object
	.size		pcx_CANdb_ReceiveMessage_e_msg_handle,2
	.align		1
	.globl		pcx_CANdb_ReceiveMessage_e_msg_handle
pcx_CANdb_ReceiveMessage_e_msg_handle:
	.space		2
	.section	.cal_sec,,r
	.type		ATV_M,@object
	.size		ATV_M,4
	.align		2
	.globl		ATV_M
ATV_M:
	.long		ATV_M_
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
	.type		tmp_b.4174,@object
	.size		tmp_b.4174,8
	.align		2
tmp_b.4174:
	.space		8
	.section	.cal_sec,,r
	.type		pcx_CANdb_TransmitMessage_field_start_pos.4213,@object
	.size		pcx_CANdb_TransmitMessage_field_start_pos.4213,6
	.align		2
pcx_CANdb_TransmitMessage_field_start_pos.4213:
	.byte		0
	.byte		8
	.byte		16
	.byte		24
	.byte		25
	.byte		26
	.type		pcx_CANdb_TransmitMessage_field_width.4214,@object
	.size		pcx_CANdb_TransmitMessage_field_width.4214,6
	.align		2
pcx_CANdb_TransmitMessage_field_width.4214:
	.byte		8
	.byte		8
	.byte		8
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage_field_is_signed.4215,@object
	.size		pcx_CANdb_TransmitMessage_field_is_signed.4215,6
	.align		2
pcx_CANdb_TransmitMessage_field_is_signed.4215:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage_field_valtype.4216,@object
	.size		pcx_CANdb_TransmitMessage_field_valtype.4216,6
	.align		2
pcx_CANdb_TransmitMessage_field_valtype.4216:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage_field_order.4217,@object
	.size		pcx_CANdb_TransmitMessage_field_order.4217,6
	.align		2
pcx_CANdb_TransmitMessage_field_order.4217:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage_field_eng_min.4218,@object
	.size		pcx_CANdb_TransmitMessage_field_eng_min.4218,24
	.align		2
pcx_CANdb_TransmitMessage_field_eng_min.4218:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage_field_eng_max.4219,@object
	.size		pcx_CANdb_TransmitMessage_field_eng_max.4219,24
	.align		2
pcx_CANdb_TransmitMessage_field_eng_max.4219:
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage_field_scale.4220,@object
	.size		pcx_CANdb_TransmitMessage_field_scale.4220,24
	.align		2
pcx_CANdb_TransmitMessage_field_scale.4220:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage_field_offset.4221,@object
	.size		pcx_CANdb_TransmitMessage_field_offset.4221,24
	.align		2
pcx_CANdb_TransmitMessage_field_offset.4221:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage2_field_start_pos.4282,@object
	.size		pcx_CANdb_TransmitMessage2_field_start_pos.4282,4
	.align		2
pcx_CANdb_TransmitMessage2_field_start_pos.4282:
	.byte		48
	.byte		32
	.byte		16
	.byte		0
	.type		pcx_CANdb_TransmitMessage2_field_width.4283,@object
	.size		pcx_CANdb_TransmitMessage2_field_width.4283,4
	.align		2
pcx_CANdb_TransmitMessage2_field_width.4283:
	.byte		16
	.byte		16
	.byte		16
	.byte		16
	.type		pcx_CANdb_TransmitMessage2_field_is_signed.4284,@object
	.size		pcx_CANdb_TransmitMessage2_field_is_signed.4284,4
	.align		2
pcx_CANdb_TransmitMessage2_field_is_signed.4284:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage2_field_valtype.4285,@object
	.size		pcx_CANdb_TransmitMessage2_field_valtype.4285,4
	.align		2
pcx_CANdb_TransmitMessage2_field_valtype.4285:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage2_field_order.4286,@object
	.size		pcx_CANdb_TransmitMessage2_field_order.4286,4
	.align		2
pcx_CANdb_TransmitMessage2_field_order.4286:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage2_field_eng_min.4287,@object
	.size		pcx_CANdb_TransmitMessage2_field_eng_min.4287,16
	.align		2
pcx_CANdb_TransmitMessage2_field_eng_min.4287:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage2_field_eng_max.4288,@object
	.size		pcx_CANdb_TransmitMessage2_field_eng_max.4288,16
	.align		2
pcx_CANdb_TransmitMessage2_field_eng_max.4288:
	.float		+1.00000000000000000000e3
	.float		+1.00000000000000000000e3
	.float		+2.0000000000000000000e4
	.float		+2.0000000000000000000e4
	.type		pcx_CANdb_TransmitMessage2_field_scale.4289,@object
	.size		pcx_CANdb_TransmitMessage2_field_scale.4289,16
	.align		2
pcx_CANdb_TransmitMessage2_field_scale.4289:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage2_field_offset.4290,@object
	.size		pcx_CANdb_TransmitMessage2_field_offset.4290,16
	.align		2
pcx_CANdb_TransmitMessage2_field_offset.4290:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage3_field_start_pos.4293,@object
	.size		pcx_CANdb_TransmitMessage3_field_start_pos.4293,5
	.align		2
pcx_CANdb_TransmitMessage3_field_start_pos.4293:
	.byte		34
	.byte		33
	.byte		32
	.byte		16
	.byte		0
	.type		pcx_CANdb_TransmitMessage3_field_width.4294,@object
	.size		pcx_CANdb_TransmitMessage3_field_width.4294,5
	.align		2
pcx_CANdb_TransmitMessage3_field_width.4294:
	.byte		1
	.byte		1
	.byte		1
	.byte		16
	.byte		16
	.type		pcx_CANdb_TransmitMessage3_field_is_signed.4295,@object
	.size		pcx_CANdb_TransmitMessage3_field_is_signed.4295,5
	.align		2
pcx_CANdb_TransmitMessage3_field_is_signed.4295:
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage3_field_valtype.4296,@object
	.size		pcx_CANdb_TransmitMessage3_field_valtype.4296,5
	.align		2
pcx_CANdb_TransmitMessage3_field_valtype.4296:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage3_field_order.4297,@object
	.size		pcx_CANdb_TransmitMessage3_field_order.4297,5
	.align		2
pcx_CANdb_TransmitMessage3_field_order.4297:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage3_field_eng_min.4298,@object
	.size		pcx_CANdb_TransmitMessage3_field_eng_min.4298,20
	.align		2
pcx_CANdb_TransmitMessage3_field_eng_min.4298:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		-3.2768000000000000000e4
	.float		+0.
	.type		pcx_CANdb_TransmitMessage3_field_eng_max.4299,@object
	.size		pcx_CANdb_TransmitMessage3_field_eng_max.4299,20
	.align		2
pcx_CANdb_TransmitMessage3_field_eng_max.4299:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+0.
	.float		+3.2767000000000000000e4
	.type		pcx_CANdb_TransmitMessage3_field_scale.4300,@object
	.size		pcx_CANdb_TransmitMessage3_field_scale.4300,20
	.align		2
pcx_CANdb_TransmitMessage3_field_scale.4300:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage3_field_offset.4301,@object
	.size		pcx_CANdb_TransmitMessage3_field_offset.4301,20
	.align		2
pcx_CANdb_TransmitMessage3_field_offset.4301:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage4_field_start_pos.4334,@object
	.size		pcx_CANdb_TransmitMessage4_field_start_pos.4334,4
	.align		2
pcx_CANdb_TransmitMessage4_field_start_pos.4334:
	.byte		48
	.byte		32
	.byte		16
	.byte		0
	.type		pcx_CANdb_TransmitMessage4_field_width.4335,@object
	.size		pcx_CANdb_TransmitMessage4_field_width.4335,4
	.align		2
pcx_CANdb_TransmitMessage4_field_width.4335:
	.byte		16
	.byte		16
	.byte		16
	.byte		16
	.type		pcx_CANdb_TransmitMessage4_field_is_signed.4336,@object
	.size		pcx_CANdb_TransmitMessage4_field_is_signed.4336,4
	.align		2
pcx_CANdb_TransmitMessage4_field_is_signed.4336:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage4_field_valtype.4337,@object
	.size		pcx_CANdb_TransmitMessage4_field_valtype.4337,4
	.align		2
pcx_CANdb_TransmitMessage4_field_valtype.4337:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage4_field_order.4338,@object
	.size		pcx_CANdb_TransmitMessage4_field_order.4338,4
	.align		2
pcx_CANdb_TransmitMessage4_field_order.4338:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage4_field_eng_min.4339,@object
	.size		pcx_CANdb_TransmitMessage4_field_eng_min.4339,16
	.align		2
pcx_CANdb_TransmitMessage4_field_eng_min.4339:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage4_field_eng_max.4340,@object
	.size		pcx_CANdb_TransmitMessage4_field_eng_max.4340,16
	.align		2
pcx_CANdb_TransmitMessage4_field_eng_max.4340:
	.float		+1.00000000000000000000e3
	.float		+1.00000000000000000000e3
	.float		+2.0000000000000000000e4
	.float		+2.0000000000000000000e4
	.type		pcx_CANdb_TransmitMessage4_field_scale.4341,@object
	.size		pcx_CANdb_TransmitMessage4_field_scale.4341,16
	.align		2
pcx_CANdb_TransmitMessage4_field_scale.4341:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage4_field_offset.4342,@object
	.size		pcx_CANdb_TransmitMessage4_field_offset.4342,16
	.align		2
pcx_CANdb_TransmitMessage4_field_offset.4342:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage5_field_start_pos.4345,@object
	.size		pcx_CANdb_TransmitMessage5_field_start_pos.4345,5
	.align		2
pcx_CANdb_TransmitMessage5_field_start_pos.4345:
	.byte		34
	.byte		33
	.byte		32
	.byte		16
	.byte		0
	.type		pcx_CANdb_TransmitMessage5_field_width.4346,@object
	.size		pcx_CANdb_TransmitMessage5_field_width.4346,5
	.align		2
pcx_CANdb_TransmitMessage5_field_width.4346:
	.byte		1
	.byte		1
	.byte		1
	.byte		16
	.byte		16
	.type		pcx_CANdb_TransmitMessage5_field_is_signed.4347,@object
	.size		pcx_CANdb_TransmitMessage5_field_is_signed.4347,5
	.align		2
pcx_CANdb_TransmitMessage5_field_is_signed.4347:
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage5_field_valtype.4348,@object
	.size		pcx_CANdb_TransmitMessage5_field_valtype.4348,5
	.align		2
pcx_CANdb_TransmitMessage5_field_valtype.4348:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage5_field_order.4349,@object
	.size		pcx_CANdb_TransmitMessage5_field_order.4349,5
	.align		2
pcx_CANdb_TransmitMessage5_field_order.4349:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage5_field_eng_min.4350,@object
	.size		pcx_CANdb_TransmitMessage5_field_eng_min.4350,20
	.align		2
pcx_CANdb_TransmitMessage5_field_eng_min.4350:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		-3.2768000000000000000e4
	.float		+0.
	.type		pcx_CANdb_TransmitMessage5_field_eng_max.4351,@object
	.size		pcx_CANdb_TransmitMessage5_field_eng_max.4351,20
	.align		2
pcx_CANdb_TransmitMessage5_field_eng_max.4351:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+0.
	.float		+3.2767000000000000000e4
	.type		pcx_CANdb_TransmitMessage5_field_scale.4352,@object
	.size		pcx_CANdb_TransmitMessage5_field_scale.4352,20
	.align		2
pcx_CANdb_TransmitMessage5_field_scale.4352:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage5_field_offset.4353,@object
	.size		pcx_CANdb_TransmitMessage5_field_offset.4353,20
	.align		2
pcx_CANdb_TransmitMessage5_field_offset.4353:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage1_field_start_pos.4546,@object
	.size		pcx_CANdb_TransmitMessage1_field_start_pos.4546,6
	.align		2
pcx_CANdb_TransmitMessage1_field_start_pos.4546:
	.byte		16
	.byte		8
	.byte		0
	.byte		24
	.byte		32
	.byte		40
	.type		pcx_CANdb_TransmitMessage1_field_width.4547,@object
	.size		pcx_CANdb_TransmitMessage1_field_width.4547,6
	.align		2
pcx_CANdb_TransmitMessage1_field_width.4547:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage1_field_is_signed.4548,@object
	.size		pcx_CANdb_TransmitMessage1_field_is_signed.4548,6
	.align		2
pcx_CANdb_TransmitMessage1_field_is_signed.4548:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage1_field_valtype.4549,@object
	.size		pcx_CANdb_TransmitMessage1_field_valtype.4549,6
	.align		2
pcx_CANdb_TransmitMessage1_field_valtype.4549:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage1_field_order.4550,@object
	.size		pcx_CANdb_TransmitMessage1_field_order.4550,6
	.align		2
pcx_CANdb_TransmitMessage1_field_order.4550:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage1_field_eng_min.4551,@object
	.size		pcx_CANdb_TransmitMessage1_field_eng_min.4551,24
	.align		2
pcx_CANdb_TransmitMessage1_field_eng_min.4551:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage1_field_eng_max.4552,@object
	.size		pcx_CANdb_TransmitMessage1_field_eng_max.4552,24
	.align		2
pcx_CANdb_TransmitMessage1_field_eng_max.4552:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage1_field_scale.4553,@object
	.size		pcx_CANdb_TransmitMessage1_field_scale.4553,24
	.align		2
pcx_CANdb_TransmitMessage1_field_scale.4553:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage1_field_offset.4554,@object
	.size		pcx_CANdb_TransmitMessage1_field_offset.4554,24
	.align		2
pcx_CANdb_TransmitMessage1_field_offset.4554:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage6_field_start_pos.4557,@object
	.size		pcx_CANdb_TransmitMessage6_field_start_pos.4557,4
	.align		2
pcx_CANdb_TransmitMessage6_field_start_pos.4557:
	.byte		0
	.byte		8
	.byte		16
	.byte		24
	.type		pcx_CANdb_TransmitMessage6_field_width.4558,@object
	.size		pcx_CANdb_TransmitMessage6_field_width.4558,4
	.align		2
pcx_CANdb_TransmitMessage6_field_width.4558:
	.byte		1
	.byte		1
	.byte		1
	.byte		8
	.type		pcx_CANdb_TransmitMessage6_field_is_signed.4559,@object
	.size		pcx_CANdb_TransmitMessage6_field_is_signed.4559,4
	.align		2
pcx_CANdb_TransmitMessage6_field_is_signed.4559:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage6_field_valtype.4560,@object
	.size		pcx_CANdb_TransmitMessage6_field_valtype.4560,4
	.align		2
pcx_CANdb_TransmitMessage6_field_valtype.4560:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage6_field_order.4561,@object
	.size		pcx_CANdb_TransmitMessage6_field_order.4561,4
	.align		2
pcx_CANdb_TransmitMessage6_field_order.4561:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage6_field_eng_min.4562,@object
	.size		pcx_CANdb_TransmitMessage6_field_eng_min.4562,16
	.align		2
pcx_CANdb_TransmitMessage6_field_eng_min.4562:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage6_field_eng_max.4563,@object
	.size		pcx_CANdb_TransmitMessage6_field_eng_max.4563,16
	.align		2
pcx_CANdb_TransmitMessage6_field_eng_max.4563:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+2.5500000000000000000e2
	.type		pcx_CANdb_TransmitMessage6_field_scale.4564,@object
	.size		pcx_CANdb_TransmitMessage6_field_scale.4564,16
	.align		2
pcx_CANdb_TransmitMessage6_field_scale.4564:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage6_field_offset.4565,@object
	.size		pcx_CANdb_TransmitMessage6_field_offset.4565,16
	.align		2
pcx_CANdb_TransmitMessage6_field_offset.4565:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_field_start_pos.4568,@object
	.size		pcx_CANdb_ReceiveMessage_field_start_pos.4568,3
	.align		2
pcx_CANdb_ReceiveMessage_field_start_pos.4568:
	.byte		0
	.byte		8
	.byte		16
	.type		pcx_CANdb_ReceiveMessage_field_width.4569,@object
	.size		pcx_CANdb_ReceiveMessage_field_width.4569,3
	.align		2
pcx_CANdb_ReceiveMessage_field_width.4569:
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_ReceiveMessage_field_is_signed.4570,@object
	.size		pcx_CANdb_ReceiveMessage_field_is_signed.4570,3
	.align		2
pcx_CANdb_ReceiveMessage_field_is_signed.4570:
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_field_valtype.4571,@object
	.size		pcx_CANdb_ReceiveMessage_field_valtype.4571,3
	.align		2
pcx_CANdb_ReceiveMessage_field_valtype.4571:
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_field_order.4572,@object
	.size		pcx_CANdb_ReceiveMessage_field_order.4572,3
	.align		2
pcx_CANdb_ReceiveMessage_field_order.4572:
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_ReceiveMessage_field_eng_min.4573,@object
	.size		pcx_CANdb_ReceiveMessage_field_eng_min.4573,12
	.align		2
pcx_CANdb_ReceiveMessage_field_eng_min.4573:
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_field_eng_max.4574,@object
	.size		pcx_CANdb_ReceiveMessage_field_eng_max.4574,12
	.align		2
pcx_CANdb_ReceiveMessage_field_eng_max.4574:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_ReceiveMessage_field_scale.4575,@object
	.size		pcx_CANdb_ReceiveMessage_field_scale.4575,12
	.align		2
pcx_CANdb_ReceiveMessage_field_scale.4575:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_ReceiveMessage_field_offset.4576,@object
	.size		pcx_CANdb_ReceiveMessage_field_offset.4576,12
	.align		2
pcx_CANdb_ReceiveMessage_field_offset.4576:
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_p_field_start_pos.4581,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_start_pos.4581,7
	.align		2
pcx_CANdb_ReceiveMessage_p_field_start_pos.4581:
	.byte		0
	.byte		8
	.byte		24
	.byte		16
	.byte		32
	.byte		40
	.byte		48
	.type		pcx_CANdb_ReceiveMessage_p_field_width.4582,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_width.4582,7
	.align		2
pcx_CANdb_ReceiveMessage_p_field_width.4582:
	.byte		8
	.byte		8
	.byte		8
	.byte		8
	.byte		8
	.byte		8
	.byte		8
	.type		pcx_CANdb_ReceiveMessage_p_field_is_signed.4583,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_is_signed.4583,7
	.align		2
pcx_CANdb_ReceiveMessage_p_field_is_signed.4583:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_p_field_valtype.4584,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_valtype.4584,7
	.align		2
pcx_CANdb_ReceiveMessage_p_field_valtype.4584:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_p_field_order.4585,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_order.4585,7
	.align		2
pcx_CANdb_ReceiveMessage_p_field_order.4585:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_ReceiveMessage_p_field_eng_min.4586,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_eng_min.4586,28
	.align		2
pcx_CANdb_ReceiveMessage_p_field_eng_min.4586:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_p_field_eng_max.4587,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_eng_max.4587,28
	.align		2
pcx_CANdb_ReceiveMessage_p_field_eng_max.4587:
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.type		pcx_CANdb_ReceiveMessage_p_field_scale.4588,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_scale.4588,28
	.align		2
pcx_CANdb_ReceiveMessage_p_field_scale.4588:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_ReceiveMessage_p_field_offset.4589,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_offset.4589,28
	.align		2
pcx_CANdb_ReceiveMessage_p_field_offset.4589:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_e_field_start_pos.4610,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_start_pos.4610,6
	.align		2
pcx_CANdb_ReceiveMessage_e_field_start_pos.4610:
	.byte		7
	.byte		15
	.byte		16
	.byte		32
	.byte		55
	.byte		63
	.type		pcx_CANdb_ReceiveMessage_e_field_width.4611,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_width.4611,6
	.align		2
pcx_CANdb_ReceiveMessage_e_field_width.4611:
	.byte		8
	.byte		8
	.byte		16
	.byte		16
	.byte		8
	.byte		8
	.type		pcx_CANdb_ReceiveMessage_e_field_is_signed.4612,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_is_signed.4612,6
	.align		2
pcx_CANdb_ReceiveMessage_e_field_is_signed.4612:
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_e_field_valtype.4613,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_valtype.4613,6
	.align		2
pcx_CANdb_ReceiveMessage_e_field_valtype.4613:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_e_field_order.4614,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_order.4614,6
	.align		2
pcx_CANdb_ReceiveMessage_e_field_order.4614:
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_e_field_eng_min.4615,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_eng_min.4615,24
	.align		2
pcx_CANdb_ReceiveMessage_e_field_eng_min.4615:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		-3.2768000488281250000e3
	.float		+0.
	.float		+1.7200000000000000000e3
	.type		pcx_CANdb_ReceiveMessage_e_field_eng_max.4616,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_eng_max.4616,24
	.align		2
pcx_CANdb_ReceiveMessage_e_field_eng_max.4616:
	.float		+2.5500000000000000000e2
	.float		+1.2750000000000000000e2
	.float		+6.5535000000000000000e3
	.float		+3.2766999511718750000e3
	.float		+2.5500000000000000000e2
	.float		+1.9750000000000000000e3
	.type		pcx_CANdb_ReceiveMessage_e_field_scale.4617,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_scale.4617,24
	.align		2
pcx_CANdb_ReceiveMessage_e_field_scale.4617:
	.float		+1.0000000000000000000
	.float		+5.0000000000000000000e-1
	.float		+1.0000000149011611938e-1
	.float		+1.0000000149011611938e-1
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_ReceiveMessage_e_field_offset.4618,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_offset.4618,24
	.align		2
pcx_CANdb_ReceiveMessage_e_field_offset.4618:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+1.7200000000000000000e3
	.type		FLOAT_TEMP.4897,@object
	.size		FLOAT_TEMP.4897,8
	.align		3
FLOAT_TEMP.4897:
	.double		+4.2949672960000000000e9
	.type		FLOAT_TEMP.4898,@object
	.size		FLOAT_TEMP.4898,8
	.align		3
FLOAT_TEMP.4898:
	.double		+6.5536000000000000000e4
	.type		FLOAT_TEMP.4899,@object
	.size		FLOAT_TEMP.4899,8
	.align		3
FLOAT_TEMP.4899:
	.double		+2.5600000000000000000e2
	.bss
	.align		2
#	Begin local data area
#	LDA + 0
	.type		ATV_DW,@object
	.size		ATV_DW,64
	.align		2
	.globl		ATV_DW
ATV_DW:
	.space		64
	.section	.text_vle
#$$ld
.L5:
.L6964:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\rtw_matlogging.h"
.L6961:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\rtw_extmode.h"
.L6916:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\rtw_continuous.h"
.L6903:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\rtw_solver.h"
.L6895:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\simstruc_types.h"
.L6888:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\sl_common_types_def.h"
.L6351:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\simstruc_def.h"
.L6331:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\simstruc_compcond.h"
.L6262:	.d2filenum "ATV_types.h"
.L6158:	.d2filenum "ATV.h"
.L6150:	.d2filenum "ATV_api.h"
.L4928:	.d2filenum "no file"
.L4912:	.d2filenum "ATV.c"
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
.L4913:
	.sleb128	2
	.4byte		.L4909-.L2
	.byte		"sMultiWordMul"
	.byte		0
	.4byte		.L4912
	.uleb128	233
	.byte		0x1
	.byte		0x1
	.4byte		.L4910
	.4byte		.L4911
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L4912
	.uleb128	233
	.byte		"u1"
	.byte		0
	.4byte		.L4914
	.4byte		.L4918
	.sleb128	3
	.4byte		.L4912
	.uleb128	233
	.byte		"n1"
	.byte		0
	.4byte		.L4919
	.4byte		.L4921
	.sleb128	3
	.4byte		.L4912
	.uleb128	233
	.byte		"u2"
	.byte		0
	.4byte		.L4914
	.4byte		.L4922
	.sleb128	3
	.4byte		.L4912
	.uleb128	234
	.byte		"n2"
	.byte		0
	.4byte		.L4919
	.4byte		.L4923
	.sleb128	3
	.4byte		.L4912
	.uleb128	234
	.byte		"y"
	.byte		0
	.4byte		.L4924
	.4byte		.L4925
	.sleb128	3
	.4byte		.L4912
	.uleb128	234
	.byte		"n"
	.byte		0
	.4byte		.L4919
	.4byte		.L4926
	.section	.debug_info,,n
.L4927:
	.sleb128	4
	.4byte		.L4928
	.byte		"k"
	.byte		0
	.4byte		.L4919
	.4byte		.L4929
.L4930:
	.sleb128	4
	.4byte		.L4928
	.byte		"j"
	.byte		0
	.4byte		.L4919
	.4byte		.L4931
.L4932:
	.sleb128	4
	.4byte		.L4928
	.byte		"k"
	.byte		0
	.4byte		.L4919
	.4byte		.L4933
.L4934:
	.sleb128	4
	.4byte		.L4928
	.byte		"cb"
	.byte		0
	.4byte		.L4916
	.4byte		.L4935
.L4936:
	.sleb128	4
	.4byte		.L4928
	.byte		"cb"
	.byte		0
	.4byte		.L4916
	.4byte		.L4937
.L4938:
	.sleb128	4
	.4byte		.L4928
	.byte		"yk"
	.byte		0
	.4byte		.L4916
	.4byte		.L4939
.L4940:
	.sleb128	4
	.4byte		.L4928
	.byte		"u1i"
	.byte		0
	.4byte		.L4916
	.4byte		.L4941
.L4942:
	.sleb128	4
	.4byte		.L4928
	.byte		"u1i"
	.byte		0
	.4byte		.L4916
	.4byte		.L4943
.L4944:
	.sleb128	4
	.4byte		.L4928
	.byte		"u1i"
	.byte		0
	.4byte		.L4916
	.4byte		.L4945
.L4946:
	.sleb128	4
	.4byte		.L4928
	.byte		"k"
	.byte		0
	.4byte		.L4919
	.4byte		.L4947
	.section	.debug_info,,n
.L4948:
	.sleb128	5
	.4byte		.L4912
	.uleb128	236
	.byte		"i"
	.byte		0
	.4byte		.L4919
	.4byte		.L4949
.L4950:
	.sleb128	5
	.4byte		.L4912
	.uleb128	239
	.byte		"nj"
	.byte		0
	.4byte		.L4919
	.4byte		.L4951
.L4952:
	.sleb128	5
	.4byte		.L4912
	.uleb128	240
	.byte		"u1i"
	.byte		0
	.4byte		.L4916
	.4byte		.L4953
.L4954:
	.sleb128	5
	.4byte		.L4912
	.uleb128	241
	.byte		"yk"
	.byte		0
	.4byte		.L4916
	.4byte		.L4955
.L4956:
	.sleb128	5
	.4byte		.L4912
	.uleb128	242
	.byte		"a1"
	.byte		0
	.4byte		.L4916
	.4byte		.L4957
.L4958:
	.sleb128	5
	.4byte		.L4912
	.uleb128	243
	.byte		"a0"
	.byte		0
	.4byte		.L4916
	.4byte		.L4959
.L4960:
	.sleb128	5
	.4byte		.L4912
	.uleb128	244
	.byte		"b1"
	.byte		0
	.4byte		.L4916
	.4byte		.L4961
.L4962:
	.sleb128	5
	.4byte		.L4912
	.uleb128	245
	.byte		"w10"
	.byte		0
	.4byte		.L4916
	.4byte		.L4963
.L4964:
	.sleb128	5
	.4byte		.L4912
	.uleb128	246
	.byte		"w01"
	.byte		0
	.4byte		.L4916
	.4byte		.L4965
.L4966:
	.sleb128	5
	.4byte		.L4912
	.uleb128	247
	.byte		"cb"
	.byte		0
	.4byte		.L4916
	.4byte		.L4967
.L4968:
	.sleb128	5
	.4byte		.L4912
	.uleb128	248
	.byte		"isNegative1"
	.byte		0
	.4byte		.L4969
	.4byte		.L4971
.L4972:
	.sleb128	5
	.4byte		.L4912
	.uleb128	249
	.byte		"isNegative2"
	.byte		0
	.4byte		.L4969
	.4byte		.L4973
.L4974:
	.sleb128	5
	.4byte		.L4912
	.uleb128	250
	.byte		"cb1"
	.byte		0
	.4byte		.L4916
	.4byte		.L4975
.L4976:
	.sleb128	5
	.4byte		.L4912
	.uleb128	251
	.byte		"cb2"
	.byte		0
	.4byte		.L4916
	.4byte		.L4977
	.section	.debug_info,,n
	.sleb128	0
.L4909:
	.section	.debug_info,,n
.L4982:
	.sleb128	6
	.4byte		.L4979-.L2
	.byte		"MultiWord2sLong"
	.byte		0
	.4byte		.L4912
	.uleb128	321
	.4byte		.L4920
	.byte		0x1
	.byte		0x1
	.4byte		.L4980
	.4byte		.L4981
	.sleb128	3
	.4byte		.L4912
	.uleb128	321
	.byte		"u"
	.byte		0
	.4byte		.L4914
	.4byte		.L4983
	.section	.debug_info,,n
	.sleb128	0
.L4979:
	.section	.debug_info,,n
.L4988:
	.sleb128	2
	.4byte		.L4985-.L2
	.byte		"MultiWordNeg"
	.byte		0
	.4byte		.L4912
	.uleb128	363
	.byte		0x1
	.byte		0x1
	.4byte		.L4986
	.4byte		.L4987
	.sleb128	3
	.4byte		.L4912
	.uleb128	363
	.byte		"u1"
	.byte		0
	.4byte		.L4914
	.4byte		.L4989
	.sleb128	3
	.4byte		.L4912
	.uleb128	363
	.byte		"y"
	.byte		0
	.4byte		.L4924
	.4byte		.L4990
	.sleb128	3
	.4byte		.L4912
	.uleb128	363
	.byte		"n"
	.byte		0
	.4byte		.L4919
	.4byte		.L4991
.L4992:
	.sleb128	4
	.4byte		.L4928
	.byte		"i"
	.byte		0
	.4byte		.L4919
	.4byte		.L4993
.L4994:
	.sleb128	5
	.4byte		.L4912
	.uleb128	365
	.byte		"yi"
	.byte		0
	.4byte		.L4916
	.4byte		.L4995
.L4996:
	.sleb128	5
	.4byte		.L4912
	.uleb128	366
	.byte		"carry"
	.byte		0
	.4byte		.L4916
	.4byte		.L4997
	.section	.debug_info,,n
	.sleb128	0
.L4985:
	.section	.debug_info,,n
.L5002:
	.sleb128	2
	.4byte		.L4999-.L2
	.byte		"sMultiWord2MultiWord"
	.byte		0
	.4byte		.L4912
	.uleb128	375
	.byte		0x1
	.byte		0x1
	.4byte		.L5000
	.4byte		.L5001
	.sleb128	3
	.4byte		.L4912
	.uleb128	375
	.byte		"u1"
	.byte		0
	.4byte		.L4914
	.4byte		.L5003
	.sleb128	3
	.4byte		.L4912
	.uleb128	375
	.byte		"n1"
	.byte		0
	.4byte		.L4919
	.4byte		.L5004
	.sleb128	3
	.4byte		.L4912
	.uleb128	375
	.byte		"y"
	.byte		0
	.4byte		.L4924
	.4byte		.L5005
	.sleb128	3
	.4byte		.L4912
	.uleb128	376
	.byte		"n"
	.byte		0
	.4byte		.L4919
	.4byte		.L5006
.L5007:
	.sleb128	4
	.4byte		.L4928
	.byte		"i"
	.byte		0
	.4byte		.L4919
	.4byte		.L5008
.L5009:
	.sleb128	4
	.4byte		.L4928
	.byte		"i"
	.byte		0
	.4byte		.L4919
	.4byte		.L5010
.L5011:
	.sleb128	5
	.4byte		.L4912
	.uleb128	378
	.byte		"u1i"
	.byte		0
	.4byte		.L4916
	.4byte		.L5012
.L5013:
	.sleb128	5
	.4byte		.L4912
	.uleb128	379
	.byte		"nm"
	.byte		0
	.4byte		.L4919
	.4byte		.L5014
	.section	.debug_info,,n
	.sleb128	0
.L4999:
	.section	.debug_info,,n
.L5019:
	.sleb128	2
	.4byte		.L5016-.L2
	.byte		"MultiWordSetSignedMin"
	.byte		0
	.4byte		.L4912
	.uleb128	394
	.byte		0x1
	.byte		0x1
	.4byte		.L5017
	.4byte		.L5018
	.sleb128	3
	.4byte		.L4912
	.uleb128	394
	.byte		"y"
	.byte		0
	.4byte		.L4924
	.4byte		.L5020
	.sleb128	3
	.4byte		.L4912
	.uleb128	394
	.byte		"n"
	.byte		0
	.4byte		.L4919
	.4byte		.L5021
.L5022:
	.sleb128	4
	.4byte		.L4928
	.byte		"i"
	.byte		0
	.4byte		.L4919
	.4byte		.L5023
.L5024:
	.sleb128	5
	.4byte		.L4912
	.uleb128	397
	.byte		"n1"
	.byte		0
	.4byte		.L4919
	.4byte		.L5025
	.section	.debug_info,,n
	.sleb128	0
.L5016:
	.section	.debug_info,,n
.L5030:
	.sleb128	2
	.4byte		.L5027-.L2
	.byte		"MultiWordSetSignedMax"
	.byte		0
	.4byte		.L4912
	.uleb128	406
	.byte		0x1
	.byte		0x1
	.4byte		.L5028
	.4byte		.L5029
	.sleb128	3
	.4byte		.L4912
	.uleb128	406
	.byte		"y"
	.byte		0
	.4byte		.L4924
	.4byte		.L5031
	.sleb128	3
	.4byte		.L4912
	.uleb128	406
	.byte		"n"
	.byte		0
	.4byte		.L4919
	.4byte		.L5032
.L5033:
	.sleb128	4
	.4byte		.L4928
	.byte		"i"
	.byte		0
	.4byte		.L4919
	.4byte		.L5034
.L5035:
	.sleb128	5
	.4byte		.L4912
	.uleb128	409
	.byte		"n1"
	.byte		0
	.4byte		.L4919
	.4byte		.L5036
	.section	.debug_info,,n
	.sleb128	0
.L5027:
	.section	.debug_info,,n
.L5041:
	.sleb128	2
	.4byte		.L5038-.L2
	.byte		"uMultiWordInc"
	.byte		0
	.4byte		.L4912
	.uleb128	418
	.byte		0x1
	.byte		0x1
	.4byte		.L5039
	.4byte		.L5040
	.sleb128	3
	.4byte		.L4912
	.uleb128	418
	.byte		"y"
	.byte		0
	.4byte		.L4924
	.4byte		.L5042
	.sleb128	3
	.4byte		.L4912
	.uleb128	418
	.byte		"n"
	.byte		0
	.4byte		.L4919
	.4byte		.L5043
.L5044:
	.sleb128	4
	.4byte		.L4928
	.byte		"i"
	.byte		0
	.4byte		.L4919
	.4byte		.L5045
.L5046:
	.sleb128	5
	.4byte		.L4912
	.uleb128	420
	.byte		"yi"
	.byte		0
	.4byte		.L4916
	.4byte		.L5047
.L5048:
	.sleb128	5
	.4byte		.L4912
	.uleb128	421
	.byte		"carry"
	.byte		0
	.4byte		.L4916
	.4byte		.L5049
	.section	.debug_info,,n
	.sleb128	0
.L5038:
	.section	.debug_info,,n
.L5054:
	.sleb128	6
	.4byte		.L5051-.L2
	.byte		"MultiWord2Bool"
	.byte		0
	.4byte		.L4912
	.uleb128	430
	.4byte		.L4969
	.byte		0x1
	.byte		0x1
	.4byte		.L5052
	.4byte		.L5053
	.sleb128	3
	.4byte		.L4912
	.uleb128	430
	.byte		"u"
	.byte		0
	.4byte		.L4914
	.4byte		.L5055
	.sleb128	3
	.4byte		.L4912
	.uleb128	430
	.byte		"n"
	.byte		0
	.4byte		.L4919
	.4byte		.L5056
.L5057:
	.sleb128	5
	.4byte		.L4912
	.uleb128	432
	.byte		"y"
	.byte		0
	.4byte		.L4969
	.4byte		.L5058
.L5059:
	.sleb128	5
	.4byte		.L4912
	.uleb128	433
	.byte		"i"
	.byte		0
	.4byte		.L4919
	.4byte		.L5060
	.section	.debug_info,,n
	.sleb128	0
.L5051:
	.section	.debug_info,,n
.L5065:
	.sleb128	6
	.4byte		.L5062-.L2
	.byte		"uMultiWordDiv"
	.byte		0
	.4byte		.L4912
	.uleb128	447
	.4byte		.L4920
	.byte		0x1
	.byte		0x1
	.4byte		.L5063
	.4byte		.L5064
	.sleb128	3
	.4byte		.L4912
	.uleb128	447
	.byte		"a"
	.byte		0
	.4byte		.L4924
	.4byte		.L5066
	.sleb128	3
	.4byte		.L4912
	.uleb128	447
	.byte		"na"
	.byte		0
	.4byte		.L4919
	.4byte		.L5067
	.sleb128	3
	.4byte		.L4912
	.uleb128	447
	.byte		"b"
	.byte		0
	.4byte		.L4924
	.4byte		.L5068
	.sleb128	3
	.4byte		.L4912
	.uleb128	447
	.byte		"nb"
	.byte		0
	.4byte		.L4919
	.4byte		.L5069
	.sleb128	3
	.4byte		.L4912
	.uleb128	448
	.byte		"q"
	.byte		0
	.4byte		.L4924
	.4byte		.L5070
	.sleb128	3
	.4byte		.L4912
	.uleb128	448
	.byte		"nq"
	.byte		0
	.4byte		.L4919
	.4byte		.L5071
	.sleb128	3
	.4byte		.L4912
	.uleb128	448
	.byte		"r"
	.byte		0
	.4byte		.L4924
	.4byte		.L5072
	.sleb128	3
	.4byte		.L4912
	.uleb128	448
	.byte		"nr"
	.byte		0
	.4byte		.L4919
	.4byte		.L5073
.L5074:
	.sleb128	4
	.4byte		.L4928
	.byte		"tpi"
	.byte		0
	.4byte		.L4919
	.4byte		.L5075
.L5076:
	.sleb128	4
	.4byte		.L4928
	.byte		"kr"
	.byte		0
	.4byte		.L4919
	.4byte		.L5077
.L5078:
	.sleb128	4
	.4byte		.L4928
	.byte		"tpi"
	.byte		0
	.4byte		.L4919
	.4byte		.L5079
.L5080:
	.sleb128	4
	.4byte		.L4928
	.byte		"ka"
	.byte		0
	.4byte		.L4919
	.4byte		.L5081
.L5082:
	.sleb128	4
	.4byte		.L4928
	.byte		"tpi"
	.byte		0
	.4byte		.L4919
	.4byte		.L5083
.L5084:
	.sleb128	4
	.4byte		.L4928
	.byte		"ka"
	.byte		0
	.4byte		.L4919
	.4byte		.L5085
.L5086:
	.sleb128	4
	.4byte		.L4928
	.byte		"tpi"
	.byte		0
	.4byte		.L4919
	.4byte		.L5087
.L5088:
	.sleb128	4
	.4byte		.L4928
	.byte		"kr"
	.byte		0
	.4byte		.L4919
	.4byte		.L5089
.L5090:
	.sleb128	4
	.4byte		.L4928
	.byte		"tpi"
	.byte		0
	.4byte		.L4919
	.4byte		.L5091
.L5092:
	.sleb128	4
	.4byte		.L4928
	.byte		"kr"
	.byte		0
	.4byte		.L4919
	.4byte		.L5093
.L5094:
	.sleb128	4
	.4byte		.L4928
	.byte		"kr"
	.byte		0
	.4byte		.L4919
	.4byte		.L5095
.L5096:
	.sleb128	4
	.4byte		.L4928
	.byte		"kr"
	.byte		0
	.4byte		.L4919
	.4byte		.L5097
.L5098:
	.sleb128	4
	.4byte		.L4928
	.byte		"kr"
	.byte		0
	.4byte		.L4919
	.4byte		.L5099
.L5100:
	.sleb128	4
	.4byte		.L4928
	.byte		"ka"
	.byte		0
	.4byte		.L4919
	.4byte		.L5101
.L5102:
	.sleb128	4
	.4byte		.L4928
	.byte		"ka"
	.byte		0
	.4byte		.L4919
	.4byte		.L5103
.L5104:
	.sleb128	4
	.4byte		.L4928
	.byte		"ka"
	.byte		0
	.4byte		.L4919
	.4byte		.L5105
.L5106:
	.sleb128	4
	.4byte		.L4928
	.byte		"ka"
	.byte		0
	.4byte		.L4919
	.4byte		.L5107
.L5108:
	.sleb128	4
	.4byte		.L4928
	.byte		"ka"
	.byte		0
	.4byte		.L4919
	.4byte		.L5109
.L5110:
	.sleb128	4
	.4byte		.L4928
	.byte		"bk"
	.byte		0
	.4byte		.L4916
	.4byte		.L5111
.L5112:
	.sleb128	4
	.4byte		.L4928
	.byte		"bk"
	.byte		0
	.4byte		.L4916
	.4byte		.L5113
.L5114:
	.sleb128	4
	.4byte		.L4928
	.byte		"bk"
	.byte		0
	.4byte		.L4916
	.4byte		.L5115
.L5116:
	.sleb128	4
	.4byte		.L4928
	.byte		"bk"
	.byte		0
	.4byte		.L4916
	.4byte		.L5117
.L5118:
	.sleb128	4
	.4byte		.L4928
	.byte		"bk"
	.byte		0
	.4byte		.L4916
	.4byte		.L5119
.L5120:
	.sleb128	4
	.4byte		.L4928
	.byte		"ak"
	.byte		0
	.4byte		.L4916
	.4byte		.L5121
.L5122:
	.sleb128	4
	.4byte		.L4928
	.byte		"ak"
	.byte		0
	.4byte		.L4916
	.4byte		.L5123
.L5124:
	.sleb128	4
	.4byte		.L4928
	.byte		"ak"
	.byte		0
	.4byte		.L4916
	.4byte		.L5125
.L5126:
	.sleb128	4
	.4byte		.L4928
	.byte		"ak"
	.byte		0
	.4byte		.L4916
	.4byte		.L5127
.L5128:
	.sleb128	4
	.4byte		.L4928
	.byte		"ak"
	.byte		0
	.4byte		.L4916
	.4byte		.L5129
.L5130:
	.sleb128	4
	.4byte		.L4928
	.byte		"t"
	.byte		0
	.4byte		.L4916
	.4byte		.L5131
.L5132:
	.sleb128	4
	.4byte		.L4928
	.byte		"t"
	.byte		0
	.4byte		.L4916
	.4byte		.L5133
.L5134:
	.sleb128	4
	.4byte		.L4928
	.byte		"t"
	.byte		0
	.4byte		.L4916
	.4byte		.L5135
.L5136:
	.sleb128	4
	.4byte		.L4928
	.byte		"t"
	.byte		0
	.4byte		.L4916
	.4byte		.L5137
.L5138:
	.sleb128	4
	.4byte		.L4928
	.byte		"t"
	.byte		0
	.4byte		.L4916
	.4byte		.L5139
.L5140:
	.sleb128	4
	.4byte		.L4928
	.byte		"t"
	.byte		0
	.4byte		.L4916
	.4byte		.L5141
.L5142:
	.sleb128	4
	.4byte		.L4928
	.byte		"t"
	.byte		0
	.4byte		.L4916
	.4byte		.L5143
.L5144:
	.sleb128	4
	.4byte		.L4928
	.byte		"t"
	.byte		0
	.4byte		.L4916
	.4byte		.L5145
.L5146:
	.sleb128	4
	.4byte		.L4928
	.byte		"tpi"
	.byte		0
	.4byte		.L4919
	.4byte		.L5147
.L5148:
	.sleb128	4
	.4byte		.L4928
	.byte		"tpi"
	.byte		0
	.4byte		.L4919
	.4byte		.L5149
.L5150:
	.sleb128	4
	.4byte		.L4928
	.byte		"tpi"
	.byte		0
	.4byte		.L4919
	.4byte		.L5151
.L5152:
	.sleb128	4
	.4byte		.L4928
	.byte		"tpi"
	.byte		0
	.4byte		.L4919
	.4byte		.L5153
.L5154:
	.sleb128	4
	.4byte		.L4928
	.byte		"tpi"
	.byte		0
	.4byte		.L4919
	.4byte		.L5155
.L5156:
	.sleb128	4
	.4byte		.L4928
	.byte		"tpi"
	.byte		0
	.4byte		.L4919
	.4byte		.L5157
.L5158:
	.sleb128	4
	.4byte		.L4928
	.byte		"tpi"
	.byte		0
	.4byte		.L4919
	.4byte		.L5159
.L5160:
	.sleb128	4
	.4byte		.L4928
	.byte		"nbq"
	.byte		0
	.4byte		.L4916
	.4byte		.L5161
.L5162:
	.sleb128	4
	.4byte		.L4928
	.byte		"nbq"
	.byte		0
	.4byte		.L4916
	.4byte		.L5163
.L5164:
	.sleb128	4
	.4byte		.L4928
	.byte		"kbs"
	.byte		0
	.4byte		.L4916
	.4byte		.L5165
.L5166:
	.sleb128	4
	.4byte		.L4928
	.byte		"kbs"
	.byte		0
	.4byte		.L4916
	.4byte		.L5167
.L5168:
	.sleb128	4
	.4byte		.L4928
	.byte		"kbs"
	.byte		0
	.4byte		.L4916
	.4byte		.L5169
.L5170:
	.sleb128	4
	.4byte		.L4928
	.byte		"kbs"
	.byte		0
	.4byte		.L4916
	.4byte		.L5171
.L5172:
	.sleb128	5
	.4byte		.L4912
	.uleb128	450
	.byte		"y"
	.byte		0
	.4byte		.L4919
	.4byte		.L5173
.L5174:
	.sleb128	5
	.4byte		.L4912
	.uleb128	451
	.byte		"nza"
	.byte		0
	.4byte		.L4919
	.4byte		.L5175
.L5176:
	.sleb128	5
	.4byte		.L4912
	.uleb128	452
	.byte		"nzb"
	.byte		0
	.4byte		.L4919
	.4byte		.L5177
.L5178:
	.sleb128	5
	.4byte		.L4912
	.uleb128	453
	.byte		"na1"
	.byte		0
	.4byte		.L4919
	.4byte		.L5179
.L5180:
	.sleb128	5
	.4byte		.L4912
	.uleb128	454
	.byte		"nb1"
	.byte		0
	.4byte		.L4919
	.4byte		.L5181
.L5182:
	.sleb128	5
	.4byte		.L4912
	.uleb128	455
	.byte		"kba"
	.byte		0
	.4byte		.L4916
	.4byte		.L5183
.L5184:
	.sleb128	5
	.4byte		.L4912
	.uleb128	456
	.byte		"kbb"
	.byte		0
	.4byte		.L4916
	.4byte		.L5185
.L5186:
	.sleb128	5
	.4byte		.L4912
	.uleb128	457
	.byte		"nba"
	.byte		0
	.4byte		.L4916
	.4byte		.L5187
.L5188:
	.sleb128	5
	.4byte		.L4912
	.uleb128	458
	.byte		"nbb"
	.byte		0
	.4byte		.L4916
	.4byte		.L5189
.L5190:
	.sleb128	5
	.4byte		.L4912
	.uleb128	459
	.byte		"kbs"
	.byte		0
	.4byte		.L4916
	.4byte		.L5191
.L5192:
	.sleb128	5
	.4byte		.L4912
	.uleb128	460
	.byte		"nbq"
	.byte		0
	.4byte		.L4916
	.4byte		.L5193
.L5194:
	.sleb128	5
	.4byte		.L4912
	.uleb128	461
	.byte		"tnb"
	.byte		0
	.4byte		.L4916
	.4byte		.L5195
.L5196:
	.sleb128	5
	.4byte		.L4912
	.uleb128	462
	.byte		"tpi"
	.byte		0
	.4byte		.L4919
	.4byte		.L5197
.L5198:
	.sleb128	5
	.4byte		.L4912
	.uleb128	463
	.byte		"t"
	.byte		0
	.4byte		.L4916
	.4byte		.L5199
.L5200:
	.sleb128	5
	.4byte		.L4912
	.uleb128	464
	.byte		"mask"
	.byte		0
	.4byte		.L4916
	.4byte		.L5201
.L5202:
	.sleb128	5
	.4byte		.L4912
	.uleb128	465
	.byte		"ak"
	.byte		0
	.4byte		.L4916
	.4byte		.L5203
.L5204:
	.sleb128	5
	.4byte		.L4912
	.uleb128	466
	.byte		"bk"
	.byte		0
	.4byte		.L4916
	.4byte		.L5205
.L5206:
	.sleb128	5
	.4byte		.L4912
	.uleb128	467
	.byte		"ka"
	.byte		0
	.4byte		.L4919
	.4byte		.L5207
	.section	.debug_info,,n
	.sleb128	0
.L5062:
	.section	.debug_info,,n
.L5212:
	.sleb128	2
	.4byte		.L5209-.L2
	.byte		"sMultiWordDivFloor"
	.byte		0
	.4byte		.L4912
	.uleb128	326
	.byte		0x1
	.byte		0x1
	.4byte		.L5210
	.4byte		.L5211
	.sleb128	3
	.4byte		.L4912
	.uleb128	326
	.byte		"u1"
	.byte		0
	.4byte		.L4914
	.4byte		.L5213
	.sleb128	3
	.4byte		.L4912
	.uleb128	326
	.byte		"n1"
	.byte		0
	.4byte		.L4919
	.4byte		.L5214
	.sleb128	3
	.4byte		.L4912
	.uleb128	326
	.byte		"u2"
	.byte		0
	.4byte		.L4914
	.4byte		.L5215
	.sleb128	3
	.4byte		.L4912
	.uleb128	327
	.byte		"n2"
	.byte		0
	.4byte		.L4919
	.4byte		.L5216
	.sleb128	3
	.4byte		.L4912
	.uleb128	327
	.byte		"y1"
	.byte		0
	.4byte		.L4924
	.4byte		.L5217
	.sleb128	3
	.4byte		.L4912
	.uleb128	327
	.byte		"m1"
	.byte		0
	.4byte		.L4919
	.4byte		.L5218
	.sleb128	3
	.4byte		.L4912
	.uleb128	327
	.byte		"y2"
	.byte		0
	.4byte		.L4924
	.4byte		.L5219
	.sleb128	3
	.4byte		.L4912
	.uleb128	327
	.byte		"m2"
	.byte		0
	.4byte		.L4919
	.4byte		.L5220
	.sleb128	3
	.4byte		.L4912
	.uleb128	327
	.byte		"t1"
	.byte		0
	.4byte		.L4924
	.4byte		.L5221
	.sleb128	3
	.4byte		.L4912
	.uleb128	328
	.byte		"l1"
	.byte		0
	.4byte		.L4919
	.4byte		.L5222
	.sleb128	3
	.4byte		.L4912
	.uleb128	328
	.byte		"t2"
	.byte		0
	.4byte		.L4924
	.4byte		.L5223
	.sleb128	3
	.4byte		.L4912
	.uleb128	328
	.byte		"l2"
	.byte		0
	.4byte		.L4919
	.4byte		.L5224
.L5225:
	.sleb128	5
	.4byte		.L4912
	.uleb128	330
	.byte		"numNeg"
	.byte		0
	.4byte		.L4969
	.4byte		.L5226
.L5227:
	.sleb128	5
	.4byte		.L4912
	.uleb128	331
	.byte		"denNeg"
	.byte		0
	.4byte		.L4969
	.4byte		.L5228
	.section	.debug_info,,n
	.sleb128	0
.L5209:
	.section	.debug_info,,n
.L5233:
	.sleb128	2
	.4byte		.L5230-.L2
	.byte		"sLong2MultiWord"
	.byte		0
	.4byte		.L4912
	.uleb128	722
	.byte		0x1
	.byte		0x1
	.4byte		.L5231
	.4byte		.L5232
	.sleb128	3
	.4byte		.L4912
	.uleb128	722
	.byte		"u"
	.byte		0
	.4byte		.L4919
	.4byte		.L5234
	.sleb128	3
	.4byte		.L4912
	.uleb128	722
	.byte		"y"
	.byte		0
	.4byte		.L4924
	.4byte		.L5235
	.sleb128	3
	.4byte		.L4912
	.uleb128	722
	.byte		"n"
	.byte		0
	.4byte		.L4919
	.4byte		.L5236
.L5237:
	.sleb128	4
	.4byte		.L4928
	.byte		"i"
	.byte		0
	.4byte		.L4919
	.4byte		.L5238
.L5239:
	.sleb128	5
	.4byte		.L4912
	.uleb128	724
	.byte		"yi"
	.byte		0
	.4byte		.L4916
	.4byte		.L5240
	.section	.debug_info,,n
	.sleb128	0
.L5230:
	.section	.debug_info,,n
.L5245:
	.sleb128	6
	.4byte		.L5242-.L2
	.byte		"sMultiWordCmp"
	.byte		0
	.4byte		.L4912
	.uleb128	738
	.4byte		.L4920
	.byte		0x1
	.byte		0x1
	.4byte		.L5243
	.4byte		.L5244
	.sleb128	3
	.4byte		.L4912
	.uleb128	738
	.byte		"u1"
	.byte		0
	.4byte		.L4914
	.4byte		.L5246
	.sleb128	3
	.4byte		.L4912
	.uleb128	738
	.byte		"u2"
	.byte		0
	.4byte		.L4914
	.4byte		.L5247
	.sleb128	3
	.4byte		.L4912
	.uleb128	738
	.byte		"n"
	.byte		0
	.4byte		.L4919
	.4byte		.L5248
.L5249:
	.sleb128	4
	.4byte		.L4928
	.byte		"i"
	.byte		0
	.4byte		.L4919
	.4byte		.L5250
.L5251:
	.sleb128	4
	.4byte		.L4928
	.byte		"su2"
	.byte		0
	.4byte		.L4916
	.4byte		.L5252
.L5253:
	.sleb128	4
	.4byte		.L4928
	.byte		"su1"
	.byte		0
	.4byte		.L4916
	.4byte		.L5254
.L5255:
	.sleb128	5
	.4byte		.L4912
	.uleb128	740
	.byte		"y"
	.byte		0
	.4byte		.L4919
	.4byte		.L5256
.L5257:
	.sleb128	5
	.4byte		.L4912
	.uleb128	741
	.byte		"su1"
	.byte		0
	.4byte		.L4916
	.4byte		.L5258
.L5259:
	.sleb128	5
	.4byte		.L4912
	.uleb128	742
	.byte		"su2"
	.byte		0
	.4byte		.L4916
	.4byte		.L5260
	.section	.debug_info,,n
	.sleb128	0
.L5242:
	.section	.debug_info,,n
.L5265:
	.sleb128	6
	.4byte		.L5262-.L2
	.byte		"sMultiWordGe"
	.byte		0
	.4byte		.L4912
	.uleb128	733
	.4byte		.L4969
	.byte		0x1
	.byte		0x1
	.4byte		.L5263
	.4byte		.L5264
	.sleb128	3
	.4byte		.L4912
	.uleb128	733
	.byte		"u1"
	.byte		0
	.4byte		.L4914
	.4byte		.L5266
	.sleb128	3
	.4byte		.L4912
	.uleb128	733
	.byte		"u2"
	.byte		0
	.4byte		.L4914
	.4byte		.L5267
	.sleb128	3
	.4byte		.L4912
	.uleb128	733
	.byte		"n"
	.byte		0
	.4byte		.L4919
	.4byte		.L5268
	.section	.debug_info,,n
	.sleb128	0
.L5262:
	.section	.debug_info,,n
.L5276:
	.sleb128	6
	.4byte		.L5270-.L2
	.byte		"rt_SimUpdateDiscreteEvents"
	.byte		0
	.4byte		.L4912
	.uleb128	764
	.4byte		.L5273
	.byte		0x1
	.byte		0x1
	.4byte		.L5271
	.4byte		.L5272
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L4912
	.uleb128	765
	.byte		"rtmNumSampTimes"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	7
	.4byte		.L4912
	.uleb128	765
	.byte		"rtmTimingData"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	3
	.4byte		.L4912
	.uleb128	765
	.byte		"rtmSampleHitPtr"
	.byte		0
	.4byte		.L5281
	.4byte		.L5282
	.sleb128	7
	.4byte		.L4912
	.uleb128	766
	.byte		"rtmPerTaskSampleHits"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x90
	.uleb128	6
	.section	.debug_info,,n
	.sleb128	0
.L5270:
	.section	.debug_info,,n
.L5287:
	.sleb128	8
	.4byte		.L5284-.L2
	.byte		"rate_monotonic_scheduler"
	.byte		0
	.4byte		.L4912
	.uleb128	784
	.byte		0x1
	.4byte		.L5285
	.4byte		.L5286
	.section	.debug_info,,n
	.sleb128	0
.L5284:
	.section	.debug_info,,n
.L5292:
	.sleb128	2
	.4byte		.L5289-.L2
	.byte		"ATV_Chart_Init"
	.byte		0
	.4byte		.L4912
	.uleb128	819
	.byte		0x1
	.byte		0x1
	.4byte		.L5290
	.4byte		.L5291
	.sleb128	3
	.4byte		.L4912
	.uleb128	819
	.byte		"localDW"
	.byte		0
	.4byte		.L5293
	.4byte		.L5296
	.section	.debug_info,,n
	.sleb128	0
.L5289:
	.section	.debug_info,,n
.L5301:
	.sleb128	2
	.4byte		.L5298-.L2
	.byte		"ATV_Chart"
	.byte		0
	.4byte		.L4912
	.uleb128	831
	.byte		0x1
	.byte		0x1
	.4byte		.L5299
	.4byte		.L5300
	.sleb128	3
	.4byte		.L4912
	.uleb128	831
	.byte		"rtu_in"
	.byte		0
	.4byte		.L4969
	.4byte		.L5302
	.sleb128	3
	.4byte		.L4912
	.uleb128	831
	.byte		"localB"
	.byte		0
	.4byte		.L5303
	.4byte		.L5306
	.sleb128	3
	.4byte		.L4912
	.uleb128	831
	.byte		"localDW"
	.byte		0
	.4byte		.L5293
	.4byte		.L5307
	.section	.debug_info,,n
	.sleb128	0
.L5298:
	.section	.debug_info,,n
.L5312:
	.sleb128	2
	.4byte		.L5309-.L2
	.byte		"GestioneIbridoProceduraAvvi"
	.byte		0
	.4byte		.L4912
	.uleb128	879
	.byte		0x1
	.byte		0x1
	.4byte		.L5310
	.4byte		.L5311
	.sleb128	3
	.4byte		.L4912
	.uleb128	879
	.byte		"rtu_rPMG"
	.byte		0
	.4byte		.L5313
	.4byte		.L5315
	.sleb128	3
	.4byte		.L4912
	.uleb128	880
	.byte		"localB"
	.byte		0
	.4byte		.L5316
	.4byte		.L5319
	.section	.debug_info,,n
	.sleb128	0
.L5309:
	.section	.debug_info,,n
.L5324:
	.sleb128	8
	.4byte		.L5321-.L2
	.byte		"ATV_KEY_ON"
	.byte		0
	.4byte		.L4912
	.uleb128	890
	.byte		0x1
	.4byte		.L5322
	.4byte		.L5323
.L5325:
	.sleb128	5
	.4byte		.L4912
	.uleb128	892
	.byte		"tmp"
	.byte		0
	.4byte		.L4969
	.4byte		.L5326
	.section	.debug_info,,n
	.sleb128	0
.L5321:
	.section	.debug_info,,n
.L5332:
	.sleb128	9
	.4byte		.L5329-.L2
	.byte		"ATV_Off"
	.byte		0
	.4byte		.L4912
	.uleb128	1167
	.4byte		.L5274
	.byte		0x1
	.4byte		.L5330
	.4byte		.L5331
	.sleb128	3
	.4byte		.L4912
	.uleb128	1167
	.byte		"TInverterLow"
	.byte		0
	.4byte		.L4969
	.4byte		.L5333
	.sleb128	3
	.4byte		.L4912
	.uleb128	1167
	.byte		"TMotorLow"
	.byte		0
	.4byte		.L4969
	.4byte		.L5334
.L5335:
	.sleb128	5
	.4byte		.L4912
	.uleb128	1169
	.byte		"PumpSt"
	.byte		0
	.4byte		.L5274
	.4byte		.L5336
	.section	.debug_info,,n
	.sleb128	0
.L5329:
	.section	.debug_info,,n
.L5341:
	.sleb128	9
	.4byte		.L5338-.L2
	.byte		"ATV_On"
	.byte		0
	.4byte		.L4912
	.uleb128	1187
	.4byte		.L5274
	.byte		0x1
	.4byte		.L5339
	.4byte		.L5340
	.sleb128	3
	.4byte		.L4912
	.uleb128	1187
	.byte		"TInverterHi"
	.byte		0
	.4byte		.L4969
	.4byte		.L5342
	.sleb128	3
	.4byte		.L4912
	.uleb128	1187
	.byte		"TMotorHi"
	.byte		0
	.4byte		.L4969
	.4byte		.L5343
.L5344:
	.sleb128	5
	.4byte		.L4912
	.uleb128	1189
	.byte		"PumpSt"
	.byte		0
	.4byte		.L5274
	.4byte		.L5345
	.section	.debug_info,,n
	.sleb128	0
.L5338:
	.section	.debug_info,,n
.L5352:
	.sleb128	8
	.4byte		.L5349-.L2
	.byte		"ATV_ProceduraAvviamento"
	.byte		0
	.4byte		.L4912
	.uleb128	1213
	.byte		0x1
	.4byte		.L5350
	.4byte		.L5351
.L5353:
	.sleb128	5
	.4byte		.L4912
	.uleb128	880
	.byte		"localB"
	.byte		0
	.4byte		.L5316
	.4byte		.L5354
.L5355:
	.sleb128	5
	.4byte		.L4912
	.uleb128	880
	.byte		"localB"
	.byte		0
	.4byte		.L5316
	.4byte		.L5356
.L5357:
	.sleb128	5
	.4byte		.L4912
	.uleb128	880
	.byte		"localB"
	.byte		0
	.4byte		.L5316
	.4byte		.L5358
	.section	.debug_info,,n
	.sleb128	0
.L5349:
	.section	.debug_info,,n
.L5363:
	.sleb128	8
	.4byte		.L5360-.L2
	.byte		"ATV_output0"
	.byte		0
	.4byte		.L4912
	.uleb128	1400
	.byte		0x1
	.4byte		.L5361
	.4byte		.L5362
.L5364:
	.sleb128	4
	.4byte		.L4928
	.byte		"u0_tmp"
	.byte		0
	.4byte		.L4919
	.4byte		.L5365
.L5366:
	.sleb128	4
	.4byte		.L4928
	.byte		"PumpBOn"
	.byte		0
	.4byte		.L4919
	.4byte		.L5367
.L5368:
	.sleb128	4
	.4byte		.L4928
	.byte		"PumpBOn"
	.byte		0
	.4byte		.L4919
	.4byte		.L5369
.L5370:
	.sleb128	4
	.4byte		.L4928
	.byte		"PumpBOn"
	.byte		0
	.4byte		.L4919
	.4byte		.L5371
.L5372:
	.sleb128	4
	.4byte		.L4928
	.byte		"PumpBOn"
	.byte		0
	.4byte		.L4919
	.4byte		.L5373
.L5374:
	.sleb128	4
	.4byte		.L4928
	.byte		"PumpBOn"
	.byte		0
	.4byte		.L4919
	.4byte		.L5375
.L5376:
	.sleb128	4
	.4byte		.L4928
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L5274
	.4byte		.L5377
.L5378:
	.sleb128	4
	.4byte		.L4928
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L5274
	.4byte		.L5379
.L5380:
	.sleb128	4
	.4byte		.L4928
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L5274
	.4byte		.L5381
.L5382:
	.sleb128	4
	.4byte		.L4928
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L5274
	.4byte		.L5383
.L5384:
	.sleb128	4
	.4byte		.L4928
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L5274
	.4byte		.L5385
.L5386:
	.sleb128	4
	.4byte		.L4928
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L5274
	.4byte		.L5387
.L5388:
	.sleb128	4
	.4byte		.L4928
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L5274
	.4byte		.L5389
.L5390:
	.sleb128	4
	.4byte		.L4928
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L5274
	.4byte		.L5391
.L5392:
	.sleb128	4
	.4byte		.L4928
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L5274
	.4byte		.L5393
.L5394:
	.sleb128	4
	.4byte		.L4928
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L5274
	.4byte		.L5395
.L5396:
	.sleb128	4
	.4byte		.L4928
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L5274
	.4byte		.L5397
.L5398:
	.sleb128	4
	.4byte		.L4928
	.byte		"rtb_Gain_d"
	.byte		0
	.4byte		.L5399
	.4byte		.L5400
.L5401:
	.sleb128	4
	.4byte		.L4928
	.byte		"rtb_Compare"
	.byte		0
	.4byte		.L4969
	.4byte		.L5402
.L5403:
	.sleb128	5
	.4byte		.L4912
	.uleb128	1402
	.byte		"rtb_Compare"
	.byte		0
	.4byte		.L4969
	.4byte		.L5404
.L5405:
	.sleb128	5
	.4byte		.L4912
	.uleb128	1403
	.byte		"rtb_Gain_d"
	.byte		0
	.4byte		.L5399
	.4byte		.L5406
.L5407:
	.sleb128	5
	.4byte		.L4912
	.uleb128	1404
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L5274
	.4byte		.L5408
.L5409:
	.sleb128	5
	.4byte		.L4912
	.uleb128	1405
	.byte		"RelationalOperator6"
	.byte		0
	.4byte		.L4969
	.4byte		.L5410
.L5411:
	.sleb128	5
	.4byte		.L4912
	.uleb128	1406
	.byte		"RelationalOperator8"
	.byte		0
	.4byte		.L4969
	.4byte		.L5412
.L5413:
	.sleb128	5
	.4byte		.L4912
	.uleb128	1407
	.byte		"PumpACtrl"
	.byte		0
	.4byte		.L4969
	.4byte		.L5414
.L5415:
	.sleb128	5
	.4byte		.L4912
	.uleb128	1408
	.byte		"PumpBOn"
	.byte		0
	.4byte		.L4919
	.4byte		.L5416
	.section	.debug_info,,n
.L5417:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1409
	.byte		"tmp"
	.byte		0
	.4byte		.L5418
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	76
.L5420:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1410
	.byte		"tmp_0"
	.byte		0
	.4byte		.L5418
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	108
.L5421:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1411
	.byte		"tmp_1"
	.byte		0
	.4byte		.L4916
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	68
.L5422:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1412
	.byte		"tmp_2"
	.byte		0
	.4byte		.L4916
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	64
.L5423:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1413
	.byte		"tmp_3"
	.byte		0
	.4byte		.L5424
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	192
.L5426:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1414
	.byte		"tmp_4"
	.byte		0
	.4byte		.L5418
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	116
.L5427:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1415
	.byte		"tmp_5"
	.byte		0
	.4byte		.L5418
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	84
.L5428:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1416
	.byte		"tmp_6"
	.byte		0
	.4byte		.L5418
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	92
.L5429:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1417
	.byte		"tmp_7"
	.byte		0
	.4byte		.L5418
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	100
.L5430:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1418
	.byte		"tmp_8"
	.byte		0
	.4byte		.L5424
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	180
.L5431:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1419
	.byte		"tmp_9"
	.byte		0
	.4byte		.L5418
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	124
.L5432:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1420
	.byte		"tmp_a"
	.byte		0
	.4byte		.L5418
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	172
.L5433:
	.sleb128	5
	.4byte		.L4912
	.uleb128	1421
	.byte		"u0_tmp"
	.byte		0
	.4byte		.L4919
	.4byte		.L5434
.L5435:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1422
	.byte		"tmp_b"
	.byte		0
	.4byte		.L5418
	.sleb128	5
	.byte		0x3
	.4byte		tmp_b.4174
.L5436:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1436
	.byte		"adc"
	.byte		0
	.4byte		.L5437
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	46
.L5439:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1464
	.byte		"state"
	.byte		0
	.4byte		.L5399
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	32
.L5440:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1481
	.byte		"adc"
	.byte		0
	.4byte		.L5437
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	48
.L5441:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1507
	.byte		"adc"
	.byte		0
	.4byte		.L5437
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	50
.L5442:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1528
	.byte		"adc"
	.byte		0
	.4byte		.L5437
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	52
.L5443:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1769
	.byte		"data"
	.byte		0
	.4byte		.L5444
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	132
.L5447:
	.sleb128	5
	.4byte		.L4912
	.uleb128	1770
	.byte		"retval"
	.byte		0
	.4byte		.L5448
	.4byte		.L5449
.L5450:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1771
	.byte		"pcx_CANdb_TransmitMessage_in_port_buffer"
	.byte		0
	.4byte		.L5451
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	348
.L5454:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1772
	.byte		"pcx_CANdb_TransmitMessage_in_port_ptr"
	.byte		0
	.4byte		.L5455
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	372
.L5458:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2178
	.byte		"adc"
	.byte		0
	.4byte		.L5437
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	54
.L5459:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2336
	.byte		"data"
	.byte		0
	.4byte		.L5460
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	140
.L5462:
	.sleb128	5
	.4byte		.L4912
	.uleb128	2337
	.byte		"retval"
	.byte		0
	.4byte		.L5448
	.4byte		.L5463
.L5464:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2338
	.byte		"pcx_CANdb_TransmitMessage2_in_port_buffer"
	.byte		0
	.4byte		.L5465
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	204
.L5467:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2339
	.byte		"pcx_CANdb_TransmitMessage2_in_port_ptr"
	.byte		0
	.4byte		.L5468
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	236
.L5470:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2418
	.byte		"data"
	.byte		0
	.4byte		.L5471
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	148
.L5473:
	.sleb128	5
	.4byte		.L4912
	.uleb128	2419
	.byte		"retval"
	.byte		0
	.4byte		.L5448
	.4byte		.L5474
.L5475:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2420
	.byte		"pcx_CANdb_TransmitMessage3_in_port_buffer"
	.byte		0
	.4byte		.L5476
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	268
.L5478:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2421
	.byte		"pcx_CANdb_TransmitMessage3_in_port_ptr"
	.byte		0
	.4byte		.L5479
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	308
.L5481:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2496
	.byte		"adc"
	.byte		0
	.4byte		.L5437
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	56
.L5482:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2691
	.byte		"data"
	.byte		0
	.4byte		.L5483
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	156
.L5485:
	.sleb128	5
	.4byte		.L4912
	.uleb128	2692
	.byte		"retval"
	.byte		0
	.4byte		.L5448
	.4byte		.L5486
.L5487:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2693
	.byte		"pcx_CANdb_TransmitMessage4_in_port_buffer"
	.byte		0
	.4byte		.L5488
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	220
.L5490:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2694
	.byte		"pcx_CANdb_TransmitMessage4_in_port_ptr"
	.byte		0
	.4byte		.L5491
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	252
.L5493:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2765
	.byte		"data"
	.byte		0
	.4byte		.L5494
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	164
.L5496:
	.sleb128	5
	.4byte		.L4912
	.uleb128	2766
	.byte		"retval"
	.byte		0
	.4byte		.L5448
	.4byte		.L5497
.L5498:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2767
	.byte		"pcx_CANdb_TransmitMessage5_in_port_buffer"
	.byte		0
	.4byte		.L5499
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	288
.L5501:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2768
	.byte		"pcx_CANdb_TransmitMessage5_in_port_ptr"
	.byte		0
	.4byte		.L5502
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	328
.L5504:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2845
	.byte		"state"
	.byte		0
	.4byte		.L5399
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	33
.L5505:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2861
	.byte		"state"
	.byte		0
	.4byte		.L5399
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	34
.L5506:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2877
	.byte		"state"
	.byte		0
	.4byte		.L5399
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	35
.L5507:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2893
	.byte		"state"
	.byte		0
	.4byte		.L5399
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	36
.L5508:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2909
	.byte		"state"
	.byte		0
	.4byte		.L5399
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	37
.L5509:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2925
	.byte		"state"
	.byte		0
	.4byte		.L5399
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	38
.L5510:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2941
	.byte		"state"
	.byte		0
	.4byte		.L5399
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	39
.L5511:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2955
	.byte		"state"
	.byte		0
	.4byte		.L5399
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	40
.L5512:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2988
	.byte		"dc"
	.byte		0
	.4byte		.L5453
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	72
.L5513:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3008
	.byte		"adc"
	.byte		0
	.4byte		.L5437
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	58
.L5514:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3018
	.byte		"adc"
	.byte		0
	.4byte		.L5437
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	60
.L5515:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3028
	.byte		"adc"
	.byte		0
	.4byte		.L5437
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	62
.L5516:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3066
	.byte		"state"
	.byte		0
	.4byte		.L5399
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	41
.L5517:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3084
	.byte		"state"
	.byte		0
	.4byte		.L5399
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	42
.L5518:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3102
	.byte		"state"
	.byte		0
	.4byte		.L5399
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	43
.L5519:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3118
	.byte		"state"
	.byte		0
	.4byte		.L5399
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	44
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5523
	.4byte		.L5520
	.4byte		.L5521
.L5524:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1773
	.byte		"pcx_CANdb_TransmitMessage_field_start_pos"
	.byte		0
	.4byte		.L5525
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_start_pos.4213
.L5529:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1776
	.byte		"pcx_CANdb_TransmitMessage_field_width"
	.byte		0
	.4byte		.L5530
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_width.4214
.L5533:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1779
	.byte		"pcx_CANdb_TransmitMessage_field_is_signed"
	.byte		0
	.4byte		.L5534
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_is_signed.4215
.L5537:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1782
	.byte		"pcx_CANdb_TransmitMessage_field_valtype"
	.byte		0
	.4byte		.L5538
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_valtype.4216
.L5541:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1785
	.byte		"pcx_CANdb_TransmitMessage_field_order"
	.byte		0
	.4byte		.L5542
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_order.4217
.L5545:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1788
	.byte		"pcx_CANdb_TransmitMessage_field_eng_min"
	.byte		0
	.4byte		.L5546
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_eng_min.4218
.L5550:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1792
	.byte		"pcx_CANdb_TransmitMessage_field_eng_max"
	.byte		0
	.4byte		.L5551
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_eng_max.4219
.L5554:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1796
	.byte		"pcx_CANdb_TransmitMessage_field_scale"
	.byte		0
	.4byte		.L5555
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_scale.4220
.L5558:
	.sleb128	10
	.4byte		.L4912
	.uleb128	1800
	.byte		"pcx_CANdb_TransmitMessage_field_offset"
	.byte		0
	.4byte		.L5559
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_offset.4221
	.section	.debug_info,,n
	.sleb128	0
.L5523:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5565
	.4byte		.L5562
	.4byte		.L5563
.L5566:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2340
	.byte		"pcx_CANdb_TransmitMessage2_field_start_pos"
	.byte		0
	.4byte		.L5567
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_start_pos.4282
.L5570:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2343
	.byte		"pcx_CANdb_TransmitMessage2_field_width"
	.byte		0
	.4byte		.L5571
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_width.4283
.L5574:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2346
	.byte		"pcx_CANdb_TransmitMessage2_field_is_signed"
	.byte		0
	.4byte		.L5575
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_is_signed.4284
.L5578:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2349
	.byte		"pcx_CANdb_TransmitMessage2_field_valtype"
	.byte		0
	.4byte		.L5579
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_valtype.4285
.L5582:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2352
	.byte		"pcx_CANdb_TransmitMessage2_field_order"
	.byte		0
	.4byte		.L5583
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_order.4286
.L5586:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2355
	.byte		"pcx_CANdb_TransmitMessage2_field_eng_min"
	.byte		0
	.4byte		.L5587
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_eng_min.4287
.L5590:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2358
	.byte		"pcx_CANdb_TransmitMessage2_field_eng_max"
	.byte		0
	.4byte		.L5591
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_eng_max.4288
.L5594:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2361
	.byte		"pcx_CANdb_TransmitMessage2_field_scale"
	.byte		0
	.4byte		.L5595
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_scale.4289
.L5598:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2364
	.byte		"pcx_CANdb_TransmitMessage2_field_offset"
	.byte		0
	.4byte		.L5599
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_offset.4290
	.section	.debug_info,,n
	.sleb128	0
.L5565:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5605
	.4byte		.L5602
	.4byte		.L5603
.L5606:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2422
	.byte		"pcx_CANdb_TransmitMessage3_field_start_pos"
	.byte		0
	.4byte		.L5607
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_start_pos.4293
.L5610:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2425
	.byte		"pcx_CANdb_TransmitMessage3_field_width"
	.byte		0
	.4byte		.L5611
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_width.4294
.L5614:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2428
	.byte		"pcx_CANdb_TransmitMessage3_field_is_signed"
	.byte		0
	.4byte		.L5615
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_is_signed.4295
.L5618:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2431
	.byte		"pcx_CANdb_TransmitMessage3_field_valtype"
	.byte		0
	.4byte		.L5619
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_valtype.4296
.L5622:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2434
	.byte		"pcx_CANdb_TransmitMessage3_field_order"
	.byte		0
	.4byte		.L5623
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_order.4297
.L5626:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2437
	.byte		"pcx_CANdb_TransmitMessage3_field_eng_min"
	.byte		0
	.4byte		.L5627
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_eng_min.4298
.L5630:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2441
	.byte		"pcx_CANdb_TransmitMessage3_field_eng_max"
	.byte		0
	.4byte		.L5631
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_eng_max.4299
.L5634:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2445
	.byte		"pcx_CANdb_TransmitMessage3_field_scale"
	.byte		0
	.4byte		.L5635
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_scale.4300
.L5638:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2449
	.byte		"pcx_CANdb_TransmitMessage3_field_offset"
	.byte		0
	.4byte		.L5639
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_offset.4301
	.section	.debug_info,,n
	.sleb128	0
.L5605:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5645
	.4byte		.L5642
	.4byte		.L5643
.L5646:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2695
	.byte		"pcx_CANdb_TransmitMessage4_field_start_pos"
	.byte		0
	.4byte		.L5647
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_start_pos.4334
.L5650:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2698
	.byte		"pcx_CANdb_TransmitMessage4_field_width"
	.byte		0
	.4byte		.L5651
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_width.4335
.L5654:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2701
	.byte		"pcx_CANdb_TransmitMessage4_field_is_signed"
	.byte		0
	.4byte		.L5655
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_is_signed.4336
.L5658:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2704
	.byte		"pcx_CANdb_TransmitMessage4_field_valtype"
	.byte		0
	.4byte		.L5659
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_valtype.4337
.L5662:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2707
	.byte		"pcx_CANdb_TransmitMessage4_field_order"
	.byte		0
	.4byte		.L5663
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_order.4338
.L5666:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2710
	.byte		"pcx_CANdb_TransmitMessage4_field_eng_min"
	.byte		0
	.4byte		.L5667
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_eng_min.4339
.L5670:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2713
	.byte		"pcx_CANdb_TransmitMessage4_field_eng_max"
	.byte		0
	.4byte		.L5671
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_eng_max.4340
.L5674:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2716
	.byte		"pcx_CANdb_TransmitMessage4_field_scale"
	.byte		0
	.4byte		.L5675
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_scale.4341
.L5678:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2719
	.byte		"pcx_CANdb_TransmitMessage4_field_offset"
	.byte		0
	.4byte		.L5679
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_offset.4342
	.section	.debug_info,,n
	.sleb128	0
.L5645:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5685
	.4byte		.L5682
	.4byte		.L5683
.L5686:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2769
	.byte		"pcx_CANdb_TransmitMessage5_field_start_pos"
	.byte		0
	.4byte		.L5687
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_start_pos.4345
.L5690:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2772
	.byte		"pcx_CANdb_TransmitMessage5_field_width"
	.byte		0
	.4byte		.L5691
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_width.4346
.L5694:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2775
	.byte		"pcx_CANdb_TransmitMessage5_field_is_signed"
	.byte		0
	.4byte		.L5695
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_is_signed.4347
.L5698:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2778
	.byte		"pcx_CANdb_TransmitMessage5_field_valtype"
	.byte		0
	.4byte		.L5699
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_valtype.4348
.L5702:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2781
	.byte		"pcx_CANdb_TransmitMessage5_field_order"
	.byte		0
	.4byte		.L5703
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_order.4349
.L5706:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2784
	.byte		"pcx_CANdb_TransmitMessage5_field_eng_min"
	.byte		0
	.4byte		.L5707
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_eng_min.4350
.L5710:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2788
	.byte		"pcx_CANdb_TransmitMessage5_field_eng_max"
	.byte		0
	.4byte		.L5711
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_eng_max.4351
.L5714:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2792
	.byte		"pcx_CANdb_TransmitMessage5_field_scale"
	.byte		0
	.4byte		.L5715
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_scale.4352
.L5718:
	.sleb128	10
	.4byte		.L4912
	.uleb128	2796
	.byte		"pcx_CANdb_TransmitMessage5_field_offset"
	.byte		0
	.4byte		.L5719
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_offset.4353
	.section	.debug_info,,n
	.sleb128	0
.L5685:
	.section	.debug_info,,n
	.sleb128	0
.L5360:
	.section	.debug_info,,n
.L5726:
	.sleb128	8
	.4byte		.L5723-.L2
	.byte		"ATV_update0"
	.byte		0
	.4byte		.L4912
	.uleb128	3283
	.byte		0x1
	.4byte		.L5724
	.4byte		.L5725
	.section	.debug_info,,n
	.sleb128	0
.L5723:
	.section	.debug_info,,n
.L5731:
	.sleb128	8
	.4byte		.L5728-.L2
	.byte		"ATV_output1"
	.byte		0
	.4byte		.L4912
	.uleb128	3303
	.byte		0x1
	.4byte		.L5729
	.4byte		.L5730
.L5732:
	.sleb128	4
	.4byte		.L4928
	.byte		"tmp"
	.byte		0
	.4byte		.L5274
	.4byte		.L5733
.L5734:
	.sleb128	4
	.4byte		.L4928
	.byte		"tmp"
	.byte		0
	.4byte		.L5274
	.4byte		.L5735
.L5736:
	.sleb128	4
	.4byte		.L4928
	.byte		"tmp"
	.byte		0
	.4byte		.L5274
	.4byte		.L5737
.L5738:
	.sleb128	4
	.4byte		.L4928
	.byte		"tmp"
	.byte		0
	.4byte		.L5274
	.4byte		.L5739
.L5740:
	.sleb128	4
	.4byte		.L4928
	.byte		"tmp"
	.byte		0
	.4byte		.L5274
	.4byte		.L5741
.L5742:
	.sleb128	4
	.4byte		.L4928
	.byte		"tmp"
	.byte		0
	.4byte		.L5274
	.4byte		.L5743
.L5744:
	.sleb128	4
	.4byte		.L4928
	.byte		"tmp"
	.byte		0
	.4byte		.L5274
	.4byte		.L5745
.L5746:
	.sleb128	4
	.4byte		.L4928
	.byte		"tmp"
	.byte		0
	.4byte		.L5274
	.4byte		.L5747
.L5748:
	.sleb128	4
	.4byte		.L4928
	.byte		"tmp"
	.byte		0
	.4byte		.L5274
	.4byte		.L5749
.L5750:
	.sleb128	4
	.4byte		.L4928
	.byte		"tmp"
	.byte		0
	.4byte		.L5274
	.4byte		.L5751
.L5752:
	.sleb128	4
	.4byte		.L4928
	.byte		"tmp"
	.byte		0
	.4byte		.L5274
	.4byte		.L5753
.L5754:
	.sleb128	4
	.4byte		.L4928
	.byte		"tmp"
	.byte		0
	.4byte		.L5274
	.4byte		.L5755
.L5756:
	.sleb128	4
	.4byte		.L4928
	.byte		"tmp"
	.byte		0
	.4byte		.L5274
	.4byte		.L5757
.L5758:
	.sleb128	5
	.4byte		.L4912
	.uleb128	3305
	.byte		"tmp"
	.byte		0
	.4byte		.L5274
	.4byte		.L5759
.L5760:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3312
	.byte		"data"
	.byte		0
	.4byte		.L5761
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	48
.L5763:
	.sleb128	5
	.4byte		.L4912
	.uleb128	3313
	.byte		"retval"
	.byte		0
	.4byte		.L5448
	.4byte		.L5764
.L5765:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3314
	.byte		"pcx_CANdb_TransmitMessage1_in_port_buffer"
	.byte		0
	.4byte		.L5766
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	144
.L5768:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3315
	.byte		"pcx_CANdb_TransmitMessage1_in_port_ptr"
	.byte		0
	.4byte		.L5769
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	192
.L5771:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3393
	.byte		"data"
	.byte		0
	.4byte		.L5772
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	56
.L5774:
	.sleb128	5
	.4byte		.L4912
	.uleb128	3394
	.byte		"retval"
	.byte		0
	.4byte		.L5448
	.4byte		.L5775
.L5776:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3395
	.byte		"pcx_CANdb_TransmitMessage6_in_port_buffer"
	.byte		0
	.4byte		.L5777
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	112
.L5779:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3396
	.byte		"pcx_CANdb_TransmitMessage6_in_port_ptr"
	.byte		0
	.4byte		.L5780
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	128
.L5782:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3464
	.byte		"data"
	.byte		0
	.4byte		.L5783
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	64
.L5785:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3465
	.byte		"timestamp"
	.byte		0
	.4byte		.L5786
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	36
.L5787:
	.sleb128	5
	.4byte		.L4912
	.uleb128	3466
	.byte		"pcxf_rx_receive_status"
	.byte		0
	.4byte		.L5788
	.4byte		.L5790
.L5791:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3467
	.byte		"pcx_CANdb_ReceiveMessage_out_port_buffer"
	.byte		0
	.4byte		.L5792
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	88
.L5794:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3468
	.byte		"pcx_CANdb_ReceiveMessage_out_port"
	.byte		0
	.4byte		.L5795
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	100
.L5797:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3556
	.byte		"data"
	.byte		0
	.4byte		.L5798
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	72
.L5800:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3557
	.byte		"timestamp"
	.byte		0
	.4byte		.L5786
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	40
.L5801:
	.sleb128	5
	.4byte		.L4912
	.uleb128	3558
	.byte		"pcxf_rx_receive_status"
	.byte		0
	.4byte		.L5788
	.4byte		.L5802
.L5803:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3559
	.byte		"pcx_CANdb_ReceiveMessage_p_out_port_buffer"
	.byte		0
	.4byte		.L5804
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	240
.L5806:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3560
	.byte		"pcx_CANdb_ReceiveMessage_p_out_port"
	.byte		0
	.4byte		.L5807
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	268
.L5809:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3752
	.byte		"data"
	.byte		0
	.4byte		.L5810
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	80
.L5812:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3753
	.byte		"timestamp"
	.byte		0
	.4byte		.L5786
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	44
.L5813:
	.sleb128	5
	.4byte		.L4912
	.uleb128	3754
	.byte		"pcxf_rx_receive_status"
	.byte		0
	.4byte		.L5788
	.4byte		.L5814
.L5815:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3755
	.byte		"pcx_CANdb_ReceiveMessage_e_out_port_buffer"
	.byte		0
	.4byte		.L5816
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	168
.L5818:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3756
	.byte		"pcx_CANdb_ReceiveMessage_e_out_port"
	.byte		0
	.4byte		.L5819
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	216
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5824
	.4byte		.L5821
	.4byte		.L5822
.L5825:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3316
	.byte		"pcx_CANdb_TransmitMessage1_field_start_pos"
	.byte		0
	.4byte		.L5826
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_start_pos.4546
.L5829:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3319
	.byte		"pcx_CANdb_TransmitMessage1_field_width"
	.byte		0
	.4byte		.L5830
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_width.4547
.L5833:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3322
	.byte		"pcx_CANdb_TransmitMessage1_field_is_signed"
	.byte		0
	.4byte		.L5834
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_is_signed.4548
.L5837:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3325
	.byte		"pcx_CANdb_TransmitMessage1_field_valtype"
	.byte		0
	.4byte		.L5838
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_valtype.4549
.L5841:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3328
	.byte		"pcx_CANdb_TransmitMessage1_field_order"
	.byte		0
	.4byte		.L5842
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_order.4550
.L5845:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3331
	.byte		"pcx_CANdb_TransmitMessage1_field_eng_min"
	.byte		0
	.4byte		.L5846
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_eng_min.4551
.L5849:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3335
	.byte		"pcx_CANdb_TransmitMessage1_field_eng_max"
	.byte		0
	.4byte		.L5850
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_eng_max.4552
.L5853:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3339
	.byte		"pcx_CANdb_TransmitMessage1_field_scale"
	.byte		0
	.4byte		.L5854
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_scale.4553
.L5857:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3343
	.byte		"pcx_CANdb_TransmitMessage1_field_offset"
	.byte		0
	.4byte		.L5858
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_offset.4554
	.section	.debug_info,,n
	.sleb128	0
.L5824:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5864
	.4byte		.L5861
	.4byte		.L5862
.L5865:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3397
	.byte		"pcx_CANdb_TransmitMessage6_field_start_pos"
	.byte		0
	.4byte		.L5866
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_start_pos.4557
.L5869:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3400
	.byte		"pcx_CANdb_TransmitMessage6_field_width"
	.byte		0
	.4byte		.L5870
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_width.4558
.L5873:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3403
	.byte		"pcx_CANdb_TransmitMessage6_field_is_signed"
	.byte		0
	.4byte		.L5874
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_is_signed.4559
.L5877:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3406
	.byte		"pcx_CANdb_TransmitMessage6_field_valtype"
	.byte		0
	.4byte		.L5878
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_valtype.4560
.L5881:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3409
	.byte		"pcx_CANdb_TransmitMessage6_field_order"
	.byte		0
	.4byte		.L5882
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_order.4561
.L5885:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3412
	.byte		"pcx_CANdb_TransmitMessage6_field_eng_min"
	.byte		0
	.4byte		.L5886
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_eng_min.4562
.L5889:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3415
	.byte		"pcx_CANdb_TransmitMessage6_field_eng_max"
	.byte		0
	.4byte		.L5890
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_eng_max.4563
.L5893:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3418
	.byte		"pcx_CANdb_TransmitMessage6_field_scale"
	.byte		0
	.4byte		.L5894
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_scale.4564
.L5897:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3421
	.byte		"pcx_CANdb_TransmitMessage6_field_offset"
	.byte		0
	.4byte		.L5898
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_offset.4565
	.section	.debug_info,,n
	.sleb128	0
.L5864:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5904
	.4byte		.L5901
	.4byte		.L5902
.L5905:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3469
	.byte		"pcx_CANdb_ReceiveMessage_field_start_pos"
	.byte		0
	.4byte		.L5906
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_start_pos.4568
.L5909:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3472
	.byte		"pcx_CANdb_ReceiveMessage_field_width"
	.byte		0
	.4byte		.L5910
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_width.4569
.L5913:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3475
	.byte		"pcx_CANdb_ReceiveMessage_field_is_signed"
	.byte		0
	.4byte		.L5914
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_is_signed.4570
.L5917:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3478
	.byte		"pcx_CANdb_ReceiveMessage_field_valtype"
	.byte		0
	.4byte		.L5918
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_valtype.4571
.L5921:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3481
	.byte		"pcx_CANdb_ReceiveMessage_field_order"
	.byte		0
	.4byte		.L5922
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_order.4572
.L5925:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3484
	.byte		"pcx_CANdb_ReceiveMessage_field_eng_min"
	.byte		0
	.4byte		.L5926
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_eng_min.4573
.L5929:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3487
	.byte		"pcx_CANdb_ReceiveMessage_field_eng_max"
	.byte		0
	.4byte		.L5930
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_eng_max.4574
.L5933:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3490
	.byte		"pcx_CANdb_ReceiveMessage_field_scale"
	.byte		0
	.4byte		.L5934
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_scale.4575
.L5937:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3493
	.byte		"pcx_CANdb_ReceiveMessage_field_offset"
	.byte		0
	.4byte		.L5938
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_offset.4576
	.section	.debug_info,,n
	.sleb128	0
.L5904:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5944
	.4byte		.L5941
	.4byte		.L5942
.L5945:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3561
	.byte		"pcx_CANdb_ReceiveMessage_p_field_start_pos"
	.byte		0
	.4byte		.L5946
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_start_pos.4581
.L5949:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3564
	.byte		"pcx_CANdb_ReceiveMessage_p_field_width"
	.byte		0
	.4byte		.L5950
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_width.4582
.L5953:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3567
	.byte		"pcx_CANdb_ReceiveMessage_p_field_is_signed"
	.byte		0
	.4byte		.L5954
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_is_signed.4583
.L5957:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3570
	.byte		"pcx_CANdb_ReceiveMessage_p_field_valtype"
	.byte		0
	.4byte		.L5958
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_valtype.4584
.L5961:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3573
	.byte		"pcx_CANdb_ReceiveMessage_p_field_order"
	.byte		0
	.4byte		.L5962
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_order.4585
.L5965:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3576
	.byte		"pcx_CANdb_ReceiveMessage_p_field_eng_min"
	.byte		0
	.4byte		.L5966
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_eng_min.4586
.L5969:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3580
	.byte		"pcx_CANdb_ReceiveMessage_p_field_eng_max"
	.byte		0
	.4byte		.L5970
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_eng_max.4587
.L5973:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3584
	.byte		"pcx_CANdb_ReceiveMessage_p_field_scale"
	.byte		0
	.4byte		.L5974
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_scale.4588
.L5977:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3588
	.byte		"pcx_CANdb_ReceiveMessage_p_field_offset"
	.byte		0
	.4byte		.L5978
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_offset.4589
	.section	.debug_info,,n
	.sleb128	0
.L5944:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5984
	.4byte		.L5981
	.4byte		.L5982
.L5985:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3757
	.byte		"pcx_CANdb_ReceiveMessage_e_field_start_pos"
	.byte		0
	.4byte		.L5986
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_start_pos.4610
.L5989:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3760
	.byte		"pcx_CANdb_ReceiveMessage_e_field_width"
	.byte		0
	.4byte		.L5990
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_width.4611
.L5993:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3763
	.byte		"pcx_CANdb_ReceiveMessage_e_field_is_signed"
	.byte		0
	.4byte		.L5994
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_is_signed.4612
.L5997:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3766
	.byte		"pcx_CANdb_ReceiveMessage_e_field_valtype"
	.byte		0
	.4byte		.L5998
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_valtype.4613
.L6001:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3769
	.byte		"pcx_CANdb_ReceiveMessage_e_field_order"
	.byte		0
	.4byte		.L6002
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_order.4614
.L6005:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3772
	.byte		"pcx_CANdb_ReceiveMessage_e_field_eng_min"
	.byte		0
	.4byte		.L6006
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_eng_min.4615
.L6009:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3776
	.byte		"pcx_CANdb_ReceiveMessage_e_field_eng_max"
	.byte		0
	.4byte		.L6010
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_eng_max.4616
.L6013:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3780
	.byte		"pcx_CANdb_ReceiveMessage_e_field_scale"
	.byte		0
	.4byte		.L6014
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_scale.4617
.L6017:
	.sleb128	10
	.4byte		.L4912
	.uleb128	3784
	.byte		"pcx_CANdb_ReceiveMessage_e_field_offset"
	.byte		0
	.4byte		.L6018
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_offset.4618
	.section	.debug_info,,n
	.sleb128	0
.L5984:
	.section	.debug_info,,n
	.sleb128	0
.L5728:
	.section	.debug_info,,n
.L6025:
	.sleb128	8
	.4byte		.L6022-.L2
	.byte		"ATV_update1"
	.byte		0
	.4byte		.L4912
	.uleb128	3844
	.byte		0x1
	.4byte		.L6023
	.4byte		.L6024
	.section	.debug_info,,n
	.sleb128	0
.L6022:
	.section	.debug_info,,n
.L6030:
	.sleb128	8
	.4byte		.L6027-.L2
	.byte		"ATV_output2"
	.byte		0
	.4byte		.L4912
	.uleb128	3891
	.byte		0x1
	.4byte		.L6028
	.4byte		.L6029
	.section	.debug_info,,n
	.sleb128	0
.L6027:
	.section	.debug_info,,n
.L6035:
	.sleb128	8
	.4byte		.L6032-.L2
	.byte		"ATV_update2"
	.byte		0
	.4byte		.L4912
	.uleb128	3926
	.byte		0x1
	.4byte		.L6033
	.4byte		.L6034
	.section	.debug_info,,n
	.sleb128	0
.L6032:
	.section	.debug_info,,n
.L6040:
	.sleb128	8
	.4byte		.L6037-.L2
	.byte		"ATV_initialize"
	.byte		0
	.4byte		.L4912
	.uleb128	3988
	.byte		0x1
	.4byte		.L6038
	.4byte		.L6039
.L6041:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4341
	.byte		"year"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L6043:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4342
	.byte		"month"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	10
.L6044:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4343
	.byte		"day"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L6045:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4357
	.byte		"major_ver"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	14
.L6046:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4358
	.byte		"minor_ver"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	16
.L6047:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4359
	.byte		"sub_minor_ver"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	18
.L6048:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4373
	.byte		"year"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	20
.L6049:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4374
	.byte		"month"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	22
.L6050:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4375
	.byte		"day"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	24
.L6051:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4389
	.byte		"major_ver"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	26
.L6052:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4390
	.byte		"minor_ver"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	28
.L6053:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4391
	.byte		"sub_minor_ver"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	30
.L6054:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4405
	.byte		"year"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	32
.L6055:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4406
	.byte		"month"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	34
.L6056:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4407
	.byte		"day"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	36
.L6057:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4421
	.byte		"major_ver"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	38
.L6058:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4422
	.byte		"minor_ver"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	40
.L6059:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4423
	.byte		"sub_minor_ver"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	42
.L6060:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4437
	.byte		"year"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	44
.L6061:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4438
	.byte		"month"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	46
.L6062:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4439
	.byte		"day"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	48
.L6063:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4453
	.byte		"major_ver"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	50
.L6064:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4454
	.byte		"minor_ver"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	52
.L6065:
	.sleb128	10
	.4byte		.L4912
	.uleb128	4455
	.byte		"sub_minor_ver"
	.byte		0
	.4byte		.L6042
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	54
	.section	.debug_info,,n
	.sleb128	0
.L6037:
	.section	.debug_info,,n
.L6070:
	.sleb128	2
	.4byte		.L6067-.L2
	.byte		"MdlOutputs"
	.byte		0
	.4byte		.L4912
	.uleb128	4568
	.byte		0x1
	.byte		0x1
	.4byte		.L6068
	.4byte		.L6069
	.sleb128	3
	.4byte		.L4912
	.uleb128	4568
	.byte		"tid"
	.byte		0
	.4byte		.L5277
	.4byte		.L6071
	.section	.debug_info,,n
	.sleb128	0
.L6067:
	.section	.debug_info,,n
.L6076:
	.sleb128	2
	.4byte		.L6073-.L2
	.byte		"MdlUpdate"
	.byte		0
	.4byte		.L4912
	.uleb128	4573
	.byte		0x1
	.byte		0x1
	.4byte		.L6074
	.4byte		.L6075
	.sleb128	3
	.4byte		.L4912
	.uleb128	4573
	.byte		"tid"
	.byte		0
	.4byte		.L5277
	.4byte		.L6077
	.section	.debug_info,,n
	.sleb128	0
.L6073:
	.section	.debug_info,,n
.L6082:
	.sleb128	2
	.4byte		.L6079-.L2
	.byte		"MdlInitializeSizes"
	.byte		0
	.4byte		.L4912
	.uleb128	4578
	.byte		0x1
	.byte		0x1
	.4byte		.L6080
	.4byte		.L6081
	.section	.debug_info,,n
	.sleb128	0
.L6079:
	.section	.debug_info,,n
.L6087:
	.sleb128	2
	.4byte		.L6084-.L2
	.byte		"MdlInitializeSampleTimes"
	.byte		0
	.4byte		.L4912
	.uleb128	4582
	.byte		0x1
	.byte		0x1
	.4byte		.L6085
	.4byte		.L6086
	.section	.debug_info,,n
	.sleb128	0
.L6084:
	.section	.debug_info,,n
.L6092:
	.sleb128	2
	.4byte		.L6089-.L2
	.byte		"MdlInitialize"
	.byte		0
	.4byte		.L4912
	.uleb128	4586
	.byte		0x1
	.byte		0x1
	.4byte		.L6090
	.4byte		.L6091
	.section	.debug_info,,n
	.sleb128	0
.L6089:
	.section	.debug_info,,n
.L6097:
	.sleb128	2
	.4byte		.L6094-.L2
	.byte		"MdlStart"
	.byte		0
	.4byte		.L4912
	.uleb128	4590
	.byte		0x1
	.byte		0x1
	.4byte		.L6095
	.4byte		.L6096
	.section	.debug_info,,n
	.sleb128	0
.L6094:
	.section	.debug_info,,n
.L6102:
	.sleb128	2
	.4byte		.L6099-.L2
	.byte		"MdlTerminate"
	.byte		0
	.4byte		.L4912
	.uleb128	4595
	.byte		0x1
	.byte		0x1
	.4byte		.L6100
	.4byte		.L6101
	.section	.debug_info,,n
	.sleb128	0
.L6099:
	.section	.debug_info,,n
.L6110:
	.sleb128	6
	.4byte		.L6104-.L2
	.byte		"ATV"
	.byte		0
	.4byte		.L4912
	.uleb128	4601
	.4byte		.L6107
	.byte		0x1
	.byte		0x1
	.4byte		.L6105
	.4byte		.L6106
.L6111:
	.sleb128	5
	.4byte		.L4912
	.uleb128	4614
	.byte		"mdlTsMap"
	.byte		0
	.4byte		.L5281
	.4byte		.L6112
.L6113:
	.sleb128	5
	.4byte		.L4912
	.uleb128	4636
	.byte		"mdlSampleHits"
	.byte		0
	.4byte		.L5281
	.4byte		.L6114
	.section	.debug_info,,n
	.sleb128	0
.L6104:
	.section	.debug_info,,n
.L6121:
	.sleb128	2
	.4byte		.L6118-.L2
	.byte		"psc_initialise_app"
	.byte		0
	.4byte		.L4912
	.uleb128	4744
	.byte		0x1
	.byte		0x1
	.4byte		.L6119
	.4byte		.L6120
	.section	.debug_info,,n
	.sleb128	0
.L6118:
	.section	.debug_info,,n
.L6126:
	.sleb128	2
	.4byte		.L6123-.L2
	.byte		"psc_background_app"
	.byte		0
	.4byte		.L4912
	.uleb128	4775
	.byte		0x1
	.byte		0x1
	.4byte		.L6124
	.4byte		.L6125
	.section	.debug_info,,n
	.sleb128	0
.L6123:
	.section	.debug_info,,n
.L6131:
	.sleb128	2
	.4byte		.L6128-.L2
	.byte		"pkn_angular_model_task"
	.byte		0
	.4byte		.L4912
	.uleb128	4788
	.byte		0x1
	.byte		0x1
	.4byte		.L6129
	.4byte		.L6130
	.section	.debug_info,,n
	.sleb128	0
.L6128:
	.section	.debug_info,,n
.L6136:
	.sleb128	2
	.4byte		.L6133-.L2
	.byte		"pkn_10ms_model_task"
	.byte		0
	.4byte		.L4912
	.uleb128	4800
	.byte		0x1
	.byte		0x1
	.4byte		.L6134
	.4byte		.L6135
.L6137:
	.sleb128	5
	.4byte		.L4912
	.uleb128	4802
	.byte		"tnext"
	.byte		0
	.4byte		.L5274
	.4byte		.L6138
	.section	.debug_info,,n
	.sleb128	0
.L6133:
	.section	.debug_info,,n
.L6143:
	.sleb128	2
	.4byte		.L6140-.L2
	.byte		"pkn_100ms_model_task"
	.byte		0
	.4byte		.L4912
	.uleb128	4820
	.byte		0x1
	.byte		0x1
	.4byte		.L6141
	.4byte		.L6142
	.section	.debug_info,,n
	.sleb128	0
.L6140:
	.section	.debug_info,,n
.L6148:
	.sleb128	2
	.4byte		.L6145-.L2
	.byte		"pkn_1000ms_model_task"
	.byte		0
	.4byte		.L4912
	.uleb128	4835
	.byte		0x1
	.byte		0x1
	.4byte		.L6146
	.4byte		.L6147
	.section	.debug_info,,n
	.sleb128	0
.L6145:
	.section	.debug_info,,n
.L6149:
	.sleb128	12
	.byte		0x1
	.byte		0x1
	.4byte		.L6150
	.uleb128	83
	.byte		"pkn_task_1000ms_task_hdl"
	.byte		0
	.4byte		.L6151
	.section	.debug_info,,n
	.section	.debug_info,,n
.L6157:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1137
	.byte		"ATV_B"
	.byte		0
	.4byte		.L6159
	.sleb128	5
	.byte		0x3
	.4byte		ATV_B
	.section	.debug_info,,n
	.section	.debug_info,,n
.L6161:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1150
	.byte		"atv_xc1_raw_ain"
	.byte		0
	.4byte		.L5274
	.sleb128	5
	.byte		0x3
	.4byte		atv_xc1_raw_ain
	.section	.debug_info,,n
	.section	.debug_info,,n
.L6162:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1151
	.byte		"atv_xc4_raw_ain"
	.byte		0
	.4byte		.L5274
	.sleb128	5
	.byte		0x3
	.4byte		atv_xc4_raw_ain
	.section	.debug_info,,n
.L6163:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1152
	.byte		"atv_xa3_brake_pedal_raw_ain"
	.byte		0
	.4byte		.L5274
	.sleb128	5
	.byte		0x3
	.4byte		atv_xa3_brake_pedal_raw_ain
	.section	.debug_info,,n
.L6164:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1153
	.byte		"atv_dbg_FAN_out"
	.byte		0
	.4byte		.L5274
	.sleb128	5
	.byte		0x3
	.4byte		atv_dbg_FAN_out
	.section	.debug_info,,n
.L6165:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1154
	.byte		"atv_xa1_ain_throttle_raw"
	.byte		0
	.4byte		.L5274
	.sleb128	5
	.byte		0x3
	.4byte		atv_xa1_ain_throttle_raw
	.section	.debug_info,,n
.L6166:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1155
	.byte		"atv_xe4_raw_ain"
	.byte		0
	.4byte		.L5274
	.sleb128	5
	.byte		0x3
	.4byte		atv_xe4_raw_ain
	.section	.debug_info,,n
.L6167:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1156
	.byte		"atv_xe2_raw_ain"
	.byte		0
	.4byte		.L5274
	.sleb128	5
	.byte		0x3
	.4byte		atv_xe2_raw_ain
	.section	.debug_info,,n
.L6168:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1157
	.byte		"atv_xd3_raw_ain"
	.byte		0
	.4byte		.L5274
	.sleb128	5
	.byte		0x3
	.4byte		atv_xd3_raw_ain
	.section	.debug_info,,n
.L6169:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1158
	.byte		"bms_pack_voltage"
	.byte		0
	.4byte		.L5274
	.sleb128	5
	.byte		0x3
	.4byte		bms_pack_voltage
	.section	.debug_info,,n
.L6170:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1159
	.byte		"atv_stack_used"
	.byte		0
	.4byte		.L4916
	.sleb128	5
	.byte		0x3
	.4byte		atv_stack_used
	.section	.debug_info,,n
.L6171:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1160
	.byte		"atv_task_duration_1s"
	.byte		0
	.4byte		.L4916
	.sleb128	5
	.byte		0x3
	.4byte		atv_task_duration_1s
	.section	.debug_info,,n
.L6172:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1161
	.byte		"atv_task_duration_1s_max"
	.byte		0
	.4byte		.L4916
	.sleb128	5
	.byte		0x3
	.4byte		atv_task_duration_1s_max
	.section	.debug_info,,n
.L6173:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1162
	.byte		"atv_xd1_key_ain"
	.byte		0
	.4byte		.L4920
	.sleb128	5
	.byte		0x3
	.4byte		atv_xd1_key_ain
	.section	.debug_info,,n
.L6174:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1163
	.byte		"atv_xe3_ain"
	.byte		0
	.4byte		.L4920
	.sleb128	5
	.byte		0x3
	.4byte		atv_xe3_ain
	.section	.debug_info,,n
.L6175:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1164
	.byte		"atv_brake_pedalX1000"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_brake_pedalX1000
	.section	.debug_info,,n
.L6176:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1165
	.byte		"atv_throttleX1000"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_throttleX1000
	.section	.debug_info,,n
.L6177:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1166
	.byte		"atv_app_code_year"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_year
	.section	.debug_info,,n
.L6178:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1167
	.byte		"atv_app_code_month"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_month
	.section	.debug_info,,n
.L6179:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1168
	.byte		"atv_app_code_day"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_day
	.section	.debug_info,,n
.L6180:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1169
	.byte		"atv_app_code_major_ver"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_major_ver
	.section	.debug_info,,n
.L6181:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1170
	.byte		"atv_app_code_minor_ver"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_minor_ver
	.section	.debug_info,,n
.L6182:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1171
	.byte		"atv_app_code_subminor_ver"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_subminor_ver
	.section	.debug_info,,n
.L6183:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1172
	.byte		"atv_boot_code_year"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_year
	.section	.debug_info,,n
.L6184:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1173
	.byte		"atv_boot_code_month"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_month
	.section	.debug_info,,n
.L6185:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1174
	.byte		"atv_boot_code_day"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_day
	.section	.debug_info,,n
.L6186:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1175
	.byte		"atv_boot_code_major_ver"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_major_ver
	.section	.debug_info,,n
.L6187:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1176
	.byte		"atv_boot_code_minor_ver"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_minor_ver
	.section	.debug_info,,n
.L6188:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1177
	.byte		"atv_boot_code_subminor_ver"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_subminor_ver
	.section	.debug_info,,n
.L6189:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1178
	.byte		"atv_prg_code_year"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_year
	.section	.debug_info,,n
.L6190:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1179
	.byte		"atv_prg_code_month"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_month
	.section	.debug_info,,n
.L6191:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1180
	.byte		"atv_prg_code_day"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_day
	.section	.debug_info,,n
.L6192:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1181
	.byte		"atv_prg_code_major_ver"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_major_ver
	.section	.debug_info,,n
.L6193:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1182
	.byte		"atv_prg_code_minor_ver"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_minor_ver
	.section	.debug_info,,n
.L6194:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1183
	.byte		"atv_prg_code_subminor_ver"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_subminor_ver
	.section	.debug_info,,n
.L6195:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1184
	.byte		"atv_platform_code_year"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_year
	.section	.debug_info,,n
.L6196:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1185
	.byte		"atv_platform_code_month"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_month
	.section	.debug_info,,n
.L6197:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1186
	.byte		"atv_platform_code_day"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_day
	.section	.debug_info,,n
.L6198:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1187
	.byte		"atv_platform_code_major_ver"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_major_ver
	.section	.debug_info,,n
.L6199:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1188
	.byte		"atv_platform_code_minor_ver"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_minor_ver
	.section	.debug_info,,n
.L6200:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1189
	.byte		"atv_platform_code_subminor_ver"
	.byte		0
	.4byte		.L5313
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_subminor_ver
	.section	.debug_info,,n
.L6201:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1190
	.byte		"atv_cpu_loading"
	.byte		0
	.4byte		.L5399
	.sleb128	5
	.byte		0x3
	.4byte		atv_cpu_loading
	.section	.debug_info,,n
.L6202:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1191
	.byte		"atv_cpu_loading_max"
	.byte		0
	.4byte		.L5399
	.sleb128	5
	.byte		0x3
	.4byte		atv_cpu_loading_max
	.section	.debug_info,,n
.L6203:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1192
	.byte		"atv_state_out"
	.byte		0
	.4byte		.L5399
	.sleb128	5
	.byte		0x3
	.4byte		atv_state_out
	.section	.debug_info,,n
.L6204:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1193
	.byte		"atv_sub_state_out"
	.byte		0
	.4byte		.L5399
	.sleb128	5
	.byte		0x3
	.4byte		atv_sub_state_out
	.section	.debug_info,,n
.L6205:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1194
	.byte		"atv_key_signal"
	.byte		0
	.4byte		.L4969
	.sleb128	5
	.byte		0x3
	.4byte		atv_key_signal
	.section	.debug_info,,n
.L6206:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1195
	.byte		"atv_za3_StartBtn_din"
	.byte		0
	.4byte		.L4969
	.sleb128	5
	.byte		0x3
	.4byte		atv_za3_StartBtn_din
	.section	.debug_info,,n
.L6207:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1196
	.byte		"atv_fwd_mode_in"
	.byte		0
	.4byte		.L4969
	.sleb128	5
	.byte		0x3
	.4byte		atv_fwd_mode_in
	.section	.debug_info,,n
.L6208:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1197
	.byte		"atv_rwd_mode_in"
	.byte		0
	.4byte		.L4969
	.sleb128	5
	.byte		0x3
	.4byte		atv_rwd_mode_in
	.section	.debug_info,,n
.L6209:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1198
	.byte		"atv_brake_pedal_digital_in"
	.byte		0
	.4byte		.L4969
	.sleb128	5
	.byte		0x3
	.4byte		atv_brake_pedal_digital_in
	.section	.debug_info,,n
.L6210:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1199
	.byte		"atv_fs1_in"
	.byte		0
	.4byte		.L4969
	.sleb128	5
	.byte		0x3
	.4byte		atv_fs1_in
	.section	.debug_info,,n
.L6211:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1200
	.byte		"atv_4wd_din"
	.byte		0
	.4byte		.L4969
	.sleb128	5
	.byte		0x3
	.4byte		atv_4wd_din
	.section	.debug_info,,n
.L6212:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1201
	.byte		"atv_v_dbg_chg_req"
	.byte		0
	.4byte		.L4969
	.sleb128	5
	.byte		0x3
	.4byte		atv_v_dbg_chg_req
	.section	.debug_info,,n
.L6213:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1202
	.byte		"atv_v_dbg_heater_req"
	.byte		0
	.4byte		.L4969
	.sleb128	5
	.byte		0x3
	.4byte		atv_v_dbg_heater_req
	.section	.debug_info,,n
.L6214:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1203
	.byte		"atv_apu_req_in"
	.byte		0
	.4byte		.L4969
	.sleb128	5
	.byte		0x3
	.4byte		atv_apu_req_in
	.section	.debug_info,,n
.L6215:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1204
	.byte		"atv_wakelock_out"
	.byte		0
	.4byte		.L4969
	.sleb128	5
	.byte		0x3
	.4byte		atv_wakelock_out
	.section	.debug_info,,n
.L6216:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1205
	.byte		"atv_runLed_out"
	.byte		0
	.4byte		.L4969
	.sleb128	5
	.byte		0x3
	.4byte		atv_runLed_out
	.section	.debug_info,,n
.L6217:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1206
	.byte		"atv_en_dcdc_out"
	.byte		0
	.4byte		.L4969
	.sleb128	5
	.byte		0x3
	.4byte		atv_en_dcdc_out
	.section	.debug_info,,n
.L6218:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1207
	.byte		"atv_dbg_pumpB_out"
	.byte		0
	.4byte		.L4969
	.sleb128	5
	.byte		0x3
	.4byte		atv_dbg_pumpB_out
	.section	.debug_info,,n
.L6219:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1217
	.byte		"atvc_an_in_sel_his"
	.byte		0
	.4byte		.L6220
	.sleb128	5
	.byte		0x3
	.4byte		atvc_an_in_sel_his
	.section	.debug_info,,n
.L6222:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1224
	.byte		"atvc_an_in_sel_th"
	.byte		0
	.4byte		.L6220
	.sleb128	5
	.byte		0x3
	.4byte		atvc_an_in_sel_th
	.section	.debug_info,,n
.L6223:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1231
	.byte		"atvc_brakePedalHis"
	.byte		0
	.4byte		.L6224
	.sleb128	5
	.byte		0x3
	.4byte		atvc_brakePedalHis
	.section	.debug_info,,n
.L6226:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1234
	.byte		"atvc_brakePedalOn"
	.byte		0
	.4byte		.L6224
	.sleb128	5
	.byte		0x3
	.4byte		atvc_brakePedalOn
	.section	.debug_info,,n
.L6227:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1237
	.byte		"atvc_maxDischCurr"
	.byte		0
	.4byte		.L6224
	.sleb128	5
	.byte		0x3
	.4byte		atvc_maxDischCurr
	.section	.debug_info,,n
.L6228:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1240
	.byte		"atvc_maxRegenCurr"
	.byte		0
	.4byte		.L6224
	.sleb128	5
	.byte		0x3
	.4byte		atvc_maxRegenCurr
	.section	.debug_info,,n
.L6229:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1243
	.byte		"atvc_throttleNeutralPoint"
	.byte		0
	.4byte		.L6224
	.sleb128	5
	.byte		0x3
	.4byte		atvc_throttleNeutralPoint
	.section	.debug_info,,n
.L6230:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1248
	.byte		"atvc_dcMinFan"
	.byte		0
	.4byte		.L6231
	.sleb128	5
	.byte		0x3
	.4byte		atvc_dcMinFan
	.section	.debug_info,,n
.L6233:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1251
	.byte		"atvc_maxTempInv"
	.byte		0
	.4byte		.L6231
	.sleb128	5
	.byte		0x3
	.4byte		atvc_maxTempInv
	.section	.debug_info,,n
.L6234:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1254
	.byte		"atvc_maxTempMotor"
	.byte		0
	.4byte		.L6231
	.sleb128	5
	.byte		0x3
	.4byte		atvc_maxTempMotor
	.section	.debug_info,,n
.L6235:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1257
	.byte		"atvc_minTempInv"
	.byte		0
	.4byte		.L6231
	.sleb128	5
	.byte		0x3
	.4byte		atvc_minTempInv
	.section	.debug_info,,n
.L6236:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1260
	.byte		"atvc_minTempMotor"
	.byte		0
	.4byte		.L6231
	.sleb128	5
	.byte		0x3
	.4byte		atvc_minTempMotor
	.section	.debug_info,,n
.L6237:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1263
	.byte		"atvc_socLimitSave"
	.byte		0
	.4byte		.L6231
	.sleb128	5
	.byte		0x3
	.4byte		atvc_socLimitSave
	.section	.debug_info,,n
.L6238:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1266
	.byte		"atvc_tempSwitchOffFan"
	.byte		0
	.4byte		.L6231
	.sleb128	5
	.byte		0x3
	.4byte		atvc_tempSwitchOffFan
	.section	.debug_info,,n
.L6239:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1269
	.byte		"atvc_tempSwitchOnFan"
	.byte		0
	.4byte		.L6231
	.sleb128	5
	.byte		0x3
	.4byte		atvc_tempSwitchOnFan
	.section	.debug_info,,n
.L6240:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1274
	.byte		"atvc_velocityLimitFwd"
	.byte		0
	.4byte		.L6231
	.sleb128	5
	.byte		0x3
	.4byte		atvc_velocityLimitFwd
	.section	.debug_info,,n
.L6241:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1277
	.byte		"atvc_velocityLimitRwd"
	.byte		0
	.4byte		.L6231
	.sleb128	5
	.byte		0x3
	.4byte		atvc_velocityLimitRwd
	.section	.debug_info,,n
.L6242:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1298
	.byte		"pdx_DigitalInput_detm_wrk_data"
	.byte		0
	.4byte		.L6243
	.sleb128	5
	.byte		0x3
	.4byte		pdx_DigitalInput_detm_wrk_data
	.section	.debug_info,,n
.L6245:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1299
	.byte		"pcx_CANdb_TransmitMessage_msg_handle"
	.byte		0
	.4byte		.L5438
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_msg_handle
	.section	.debug_info,,n
.L6246:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1300
	.byte		"pcx_CANdb_TransmitMessage1_msg_handle"
	.byte		0
	.4byte		.L5438
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_msg_handle
	.section	.debug_info,,n
.L6247:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1301
	.byte		"pcx_CANdb_TransmitMessage6_msg_handle"
	.byte		0
	.4byte		.L5438
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_msg_handle
	.section	.debug_info,,n
.L6248:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1302
	.byte		"pcx_CANdb_TransmitMessage2_msg_handle"
	.byte		0
	.4byte		.L5438
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_msg_handle
	.section	.debug_info,,n
.L6249:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1303
	.byte		"pcx_CANdb_TransmitMessage3_msg_handle"
	.byte		0
	.4byte		.L5438
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_msg_handle
	.section	.debug_info,,n
.L6250:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1304
	.byte		"pcx_CANdb_TransmitMessage4_msg_handle"
	.byte		0
	.4byte		.L5438
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_msg_handle
	.section	.debug_info,,n
.L6251:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1305
	.byte		"pcx_CANdb_TransmitMessage5_msg_handle"
	.byte		0
	.4byte		.L5438
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_msg_handle
	.section	.debug_info,,n
.L6252:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1306
	.byte		"pcx_CANdb_ReceiveMessage_msg_handle"
	.byte		0
	.4byte		.L5438
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_msg_handle
	.section	.debug_info,,n
.L6253:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1307
	.byte		"pcx_CANdb_ReceiveMessage_p_msg_handle"
	.byte		0
	.4byte		.L5438
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_msg_handle
	.section	.debug_info,,n
.L6254:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1308
	.byte		"pcx_CANdb_ReceiveMessage_e_msg_handle"
	.byte		0
	.4byte		.L5438
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_msg_handle
	.section	.debug_info,,n
.L6255:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1311
	.byte		"ATV_M"
	.byte		0
	.4byte		.L6256
	.sleb128	5
	.byte		0x3
	.4byte		ATV_M
	.section	.debug_info,,n
.L6257:
	.sleb128	13
	.byte		0x1
	.4byte		.L4912
	.uleb128	202
	.byte		"ATV_M_"
	.byte		0
	.4byte		.L6108
	.sleb128	5
	.byte		0x3
	.4byte		ATV_M_
	.section	.debug_info,,n
.L6258:
	.sleb128	13
	.byte		0x1
	.4byte		.L4912
	.uleb128	229
	.byte		"S"
	.byte		0
	.4byte		.L6107
	.sleb128	5
	.byte		0x3
	.4byte		S
	.section	.debug_info,,n
.L6259:
	.sleb128	13
	.byte		0x1
	.4byte		.L6158
	.uleb128	1140
	.byte		"ATV_DW"
	.byte		0
	.4byte		.L6260
	.sleb128	5
	.byte		0x3
	.4byte		ATV_DW
	.section	.debug_info,,n
.L6109:
	.sleb128	14
	.4byte		.L6262
	.uleb128	21
	.4byte		.L6263-.L2
	.byte		"tag_RTM_ATV_T"
	.byte		0
	.uleb128	580
	.section	.debug_info,,n
.L3667:
	.sleb128	15
	.byte		"path"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3668:
	.sleb128	15
	.byte		"modelName"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L3669:
	.sleb128	15
	.byte		"childSfunctions"
	.byte		0
	.4byte		.L6267
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L3670:
	.sleb128	15
	.byte		"errorStatus"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L3671:
	.sleb128	15
	.byte		"simMode"
	.byte		0
	.4byte		.L6270
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L3672:
	.sleb128	15
	.byte		"extModeInfo"
	.byte		0
	.4byte		.L6272
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3673:
	.sleb128	15
	.byte		"solverInfo"
	.byte		0
	.4byte		.L6275
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3674:
	.sleb128	15
	.byte		"solverInfoPtr"
	.byte		0
	.4byte		.L6278
	.sleb128	3
	.byte		0x23
	.uleb128	232
.L3675:
	.sleb128	15
	.byte		"sfcnInfo"
	.byte		0
	.4byte		.L5279
	.sleb128	3
	.byte		0x23
	.uleb128	236
.L3676:
	.sleb128	15
	.byte		"blockIO"
	.byte		0
	.4byte		.L5279
	.sleb128	3
	.byte		0x23
	.uleb128	240
.L3677:
	.sleb128	15
	.byte		"constBlockIO"
	.byte		0
	.4byte		.L6279
	.sleb128	3
	.byte		0x23
	.uleb128	244
.L3678:
	.sleb128	15
	.byte		"defaultParam"
	.byte		0
	.4byte		.L5279
	.sleb128	3
	.byte		0x23
	.uleb128	248
.L3679:
	.sleb128	15
	.byte		"prevZCSigState"
	.byte		0
	.4byte		.L6281
	.sleb128	3
	.byte		0x23
	.uleb128	252
.L3680:
	.sleb128	15
	.byte		"contStates"
	.byte		0
	.4byte		.L6283
	.sleb128	3
	.byte		0x23
	.uleb128	256
.L3681:
	.sleb128	15
	.byte		"periodicContStateIndices"
	.byte		0
	.4byte		.L5281
	.sleb128	3
	.byte		0x23
	.uleb128	260
.L3682:
	.sleb128	15
	.byte		"periodicContStateRanges"
	.byte		0
	.4byte		.L6283
	.sleb128	3
	.byte		0x23
	.uleb128	264
.L3683:
	.sleb128	15
	.byte		"derivs"
	.byte		0
	.4byte		.L6283
	.sleb128	3
	.byte		0x23
	.uleb128	268
.L3684:
	.sleb128	15
	.byte		"zcSignalValues"
	.byte		0
	.4byte		.L5279
	.sleb128	3
	.byte		0x23
	.uleb128	272
.L3685:
	.sleb128	15
	.byte		"inputs"
	.byte		0
	.4byte		.L5279
	.sleb128	3
	.byte		0x23
	.uleb128	276
.L3686:
	.sleb128	15
	.byte		"outputs"
	.byte		0
	.4byte		.L5279
	.sleb128	3
	.byte		0x23
	.uleb128	280
.L3687:
	.sleb128	15
	.byte		"contStateDisabled"
	.byte		0
	.4byte		.L6284
	.sleb128	3
	.byte		0x23
	.uleb128	284
.L3688:
	.sleb128	15
	.byte		"zCCacheNeedsReset"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	288
.L3689:
	.sleb128	15
	.byte		"derivCacheNeedsReset"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	289
.L3690:
	.sleb128	15
	.byte		"CTOutputIncnstWithState"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	290
.L3691:
	.sleb128	15
	.byte		"dwork"
	.byte		0
	.4byte		.L5279
	.sleb128	3
	.byte		0x23
	.uleb128	292
.L3692:
	.sleb128	15
	.byte		"Sizes"
	.byte		0
	.4byte		.L6285
	.sleb128	3
	.byte		0x23
	.uleb128	296
.L3693:
	.sleb128	15
	.byte		"SpecialInfo"
	.byte		0
	.4byte		.L6286
	.sleb128	3
	.byte		0x23
	.uleb128	380
.L3694:
	.sleb128	15
	.byte		"Timing"
	.byte		0
	.4byte		.L6287
	.sleb128	3
	.byte		0x23
	.uleb128	388
	.sleb128	0
.L6263:
	.section	.debug_info,,n
.L6287:
	.sleb128	16
	.4byte		.L6288-.L2
	.uleb128	192
.L3636:
	.sleb128	15
	.byte		"stepSize"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3637:
	.sleb128	15
	.byte		"clockTick0"
	.byte		0
	.4byte		.L4916
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L3638:
	.sleb128	15
	.byte		"clockTickH0"
	.byte		0
	.4byte		.L4916
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L3639:
	.sleb128	15
	.byte		"stepSize0"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L3640:
	.sleb128	15
	.byte		"clockTick1"
	.byte		0
	.4byte		.L4916
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L3641:
	.sleb128	15
	.byte		"clockTickH1"
	.byte		0
	.4byte		.L4916
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3642:
	.sleb128	15
	.byte		"stepSize1"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3643:
	.sleb128	15
	.byte		"clockTick2"
	.byte		0
	.4byte		.L4916
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L3644:
	.sleb128	15
	.byte		"clockTickH2"
	.byte		0
	.4byte		.L4916
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L3645:
	.sleb128	15
	.byte		"stepSize2"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L3646:
	.sleb128	15
	.byte		"TaskCounters"
	.byte		0
	.4byte		.L6289
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L3647:
	.sleb128	15
	.byte		"RateInteraction"
	.byte		0
	.4byte		.L6290
	.sleb128	2
	.byte		0x23
	.uleb128	43
.L3648:
	.sleb128	15
	.byte		"tStart"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L3649:
	.sleb128	15
	.byte		"tFinal"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L3650:
	.sleb128	15
	.byte		"timeOfLastOutput"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L3651:
	.sleb128	15
	.byte		"timingData"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L3652:
	.sleb128	15
	.byte		"varNextHitTimesList"
	.byte		0
	.4byte		.L6283
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L3653:
	.sleb128	15
	.byte		"simTimeStep"
	.byte		0
	.4byte		.L6291
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L3654:
	.sleb128	15
	.byte		"stopRequestedFlag"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L3655:
	.sleb128	15
	.byte		"sampleTimes"
	.byte		0
	.4byte		.L6293
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L3656:
	.sleb128	15
	.byte		"offsetTimes"
	.byte		0
	.4byte		.L6293
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L3657:
	.sleb128	15
	.byte		"sampleTimeTaskIDPtr"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L3658:
	.sleb128	15
	.byte		"sampleHits"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L3659:
	.sleb128	15
	.byte		"perTaskSampleHits"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L3660:
	.sleb128	15
	.byte		"t"
	.byte		0
	.4byte		.L6293
	.sleb128	2
	.byte		0x23
	.uleb128	92
.L3661:
	.sleb128	15
	.byte		"sampleTimesArray"
	.byte		0
	.4byte		.L6294
	.sleb128	2
	.byte		0x23
	.uleb128	96
.L3662:
	.sleb128	15
	.byte		"offsetTimesArray"
	.byte		0
	.4byte		.L6296
	.sleb128	2
	.byte		0x23
	.uleb128	108
.L3663:
	.sleb128	15
	.byte		"sampleTimeTaskIDArray"
	.byte		0
	.4byte		.L6298
	.sleb128	2
	.byte		0x23
	.uleb128	120
.L3664:
	.sleb128	15
	.byte		"sampleHitArray"
	.byte		0
	.4byte		.L6300
	.sleb128	3
	.byte		0x23
	.uleb128	132
.L3665:
	.sleb128	15
	.byte		"perTaskSampleHitsArray"
	.byte		0
	.4byte		.L6302
	.sleb128	3
	.byte		0x23
	.uleb128	144
.L3666:
	.sleb128	15
	.byte		"tArray"
	.byte		0
	.4byte		.L6304
	.sleb128	3
	.byte		0x23
	.uleb128	180
	.sleb128	0
.L6288:
.L6290:
	.sleb128	16
	.4byte		.L6306-.L2
	.uleb128	1
.L3635:
	.sleb128	15
	.byte		"TID0_1"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6306:
.L6289:
	.sleb128	16
	.4byte		.L6307-.L2
	.uleb128	3
.L3634:
	.sleb128	15
	.byte		"TID"
	.byte		0
	.4byte		.L6308
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6307:
.L6286:
	.sleb128	16
	.4byte		.L6310-.L2
	.uleb128	8
.L3632:
	.sleb128	15
	.byte		"mappingInfo"
	.byte		0
	.4byte		.L6279
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3633:
	.sleb128	15
	.byte		"xpcData"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L6310:
.L6285:
	.sleb128	16
	.4byte		.L6311-.L2
	.uleb128	84
.L3614:
	.sleb128	15
	.byte		"checksums"
	.byte		0
	.4byte		.L6312
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3615:
	.sleb128	15
	.byte		"options"
	.byte		0
	.4byte		.L4916
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L3616:
	.sleb128	15
	.byte		"numContStates"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3617:
	.sleb128	15
	.byte		"numPeriodicContStates"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3618:
	.sleb128	15
	.byte		"numU"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L3619:
	.sleb128	15
	.byte		"numY"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L3620:
	.sleb128	15
	.byte		"numSampTimes"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L3621:
	.sleb128	15
	.byte		"numBlocks"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L3622:
	.sleb128	15
	.byte		"numBlockIO"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L3623:
	.sleb128	15
	.byte		"numBlockPrms"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L3624:
	.sleb128	15
	.byte		"numDwork"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L3625:
	.sleb128	15
	.byte		"numSFcnPrms"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L3626:
	.sleb128	15
	.byte		"numSFcns"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L3627:
	.sleb128	15
	.byte		"numIports"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L3628:
	.sleb128	15
	.byte		"numOports"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L3629:
	.sleb128	15
	.byte		"numNonSampZCs"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L3630:
	.sleb128	15
	.byte		"sysDirFeedThru"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L3631:
	.sleb128	15
	.byte		"rtwGenSfcn"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.sleb128	0
.L6311:
.L6261:
	.sleb128	16
	.4byte		.L6314-.L2
	.uleb128	64
.L3565:
	.sleb128	15
	.byte		"PumpStB"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3566:
	.sleb128	15
	.byte		"PumpStA"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L3567:
	.sleb128	15
	.byte		"temporalCounter_i1"
	.byte		0
	.4byte		.L5313
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L3568:
	.sleb128	15
	.byte		"temporalCounter_i2"
	.byte		0
	.4byte		.L5313
	.sleb128	2
	.byte		0x23
	.uleb128	10
.L3569:
	.sleb128	15
	.byte		"temporalCounter_i1_j"
	.byte		0
	.4byte		.L5313
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L3570:
	.sleb128	15
	.byte		"RateTransition6_Buffer0"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	14
.L3571:
	.sleb128	15
	.byte		"RateTransition7_Buffer0"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	15
.L3572:
	.sleb128	15
	.byte		"RateTransition10_Buffer0"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L3573:
	.sleb128	15
	.byte		"RateTransition8_Buffer0"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	17
.L3574:
	.sleb128	15
	.byte		"RateTransition9_Buffer0"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	18
.L3575:
	.sleb128	15
	.byte		"RateTransition11_Buffer0"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	19
.L3576:
	.sleb128	15
	.byte		"RateTransition12_Buffer0"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3577:
	.sleb128	15
	.byte		"is_active_c3_ATV"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	21
.L3578:
	.sleb128	15
	.byte		"is_c3_ATV"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	22
.L3579:
	.sleb128	15
	.byte		"is_DRIVE_ENABLE"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	23
.L3580:
	.sleb128	15
	.byte		"is_HV_CTRL"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3581:
	.sleb128	15
	.byte		"is_CHG_CTRL"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	25
.L3582:
	.sleb128	15
	.byte		"is_HEATER_CTRL"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	26
.L3583:
	.sleb128	15
	.byte		"is_STARTTRIGGER"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	27
.L3584:
	.sleb128	15
	.byte		"temporalCounter_i1_ji"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L3585:
	.sleb128	15
	.byte		"temporalCounter_i2_j"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	29
.L3586:
	.sleb128	15
	.byte		"temporalCounter_i3"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	30
.L3587:
	.sleb128	15
	.byte		"is_active_c2_ATV"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	31
.L3588:
	.sleb128	15
	.byte		"is_GestioneIbrido"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L3589:
	.sleb128	15
	.byte		"is_ProceduraAvviamento"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	33
.L3590:
	.sleb128	15
	.byte		"is_RegenerativeMode"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	34
.L3591:
	.sleb128	15
	.byte		"is_StarterMode"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	35
.L3592:
	.sleb128	15
	.byte		"is_MonitoraggioStatoICE"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L3593:
	.sleb128	15
	.byte		"is_active_MonitoraggioStatoICE"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	37
.L3594:
	.sleb128	15
	.byte		"is_active_c6_ATV"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	38
.L3595:
	.sleb128	15
	.byte		"is_PumpALogic"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	39
.L3596:
	.sleb128	15
	.byte		"is_PumpBLogic"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L3597:
	.sleb128	15
	.byte		"Relay2_Mode"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	41
.L3598:
	.sleb128	15
	.byte		"Relay3_Mode"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	42
.L3599:
	.sleb128	15
	.byte		"Relay1_Mode"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	43
.L3600:
	.sleb128	15
	.byte		"RateTransition4_Buffer0"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L3601:
	.sleb128	15
	.byte		"RateTransition5_Buffer0"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	45
.L3602:
	.sleb128	15
	.byte		"Relay1_Mode_e"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	46
.L3603:
	.sleb128	15
	.byte		"Relay5_Mode"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	47
.L3604:
	.sleb128	15
	.byte		"Relay4_Mode"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L3605:
	.sleb128	15
	.byte		"startBtnArmed"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	49
.L3606:
	.sleb128	15
	.byte		"IceStatus"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	50
.L3607:
	.sleb128	15
	.byte		"ShutDownHybrid"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	51
.L3608:
	.sleb128	15
	.byte		"IceOn"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L3609:
	.sleb128	15
	.byte		"IceFault"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	53
.L3610:
	.sleb128	15
	.byte		"ReqGen_prev"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	54
.L3611:
	.sleb128	15
	.byte		"ReqGen_start"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	55
.L3612:
	.sleb128	15
	.byte		"sf_Chart_b"
	.byte		0
	.4byte		.L5294
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L3613:
	.sleb128	15
	.byte		"sf_Chart"
	.byte		0
	.4byte		.L5294
	.sleb128	2
	.byte		0x23
	.uleb128	59
	.sleb128	0
.L6314:
.L6160:
	.sleb128	16
	.4byte		.L6315-.L2
	.uleb128	160
.L3472:
	.sleb128	15
	.byte		"pai_BasicAnalogInput"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3473:
	.sleb128	15
	.byte		"psc_CpuLoading"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L3474:
	.sleb128	15
	.byte		"Saturation"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L3475:
	.sleb128	15
	.byte		"pdx_PWMOutput"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L3476:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o4"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L3477:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o5"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3478:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o6"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3479:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o4_k"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L3480:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o5_c"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L3481:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o6_o"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L3482:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o7"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L3483:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o8"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L3484:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o9"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L3485:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o10"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L3486:
	.sleb128	15
	.byte		"pai_BasicAnalogInput2"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L3487:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o4_n"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L3488:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o5_m"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L3489:
	.sleb128	15
	.byte		"atv_bms_pack_current"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L3490:
	.sleb128	15
	.byte		"atv_bms_pack_soh"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L3491:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o9_c"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L3492:
	.sleb128	15
	.byte		"Switch5"
	.byte		0
	.4byte		.L5313
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L3493:
	.sleb128	15
	.byte		"Switch1"
	.byte		0
	.4byte		.L5313
	.sleb128	2
	.byte		0x23
	.uleb128	82
.L3494:
	.sleb128	15
	.byte		"Cast2"
	.byte		0
	.4byte		.L5313
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L3495:
	.sleb128	15
	.byte		"Cast1"
	.byte		0
	.4byte		.L5313
	.sleb128	2
	.byte		0x23
	.uleb128	86
.L3496:
	.sleb128	15
	.byte		"Switch4"
	.byte		0
	.4byte		.L5313
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L3497:
	.sleb128	15
	.byte		"Switch3"
	.byte		0
	.4byte		.L5313
	.sleb128	2
	.byte		0x23
	.uleb128	90
.L3498:
	.sleb128	15
	.byte		"rPMG"
	.byte		0
	.4byte		.L5313
	.sleb128	2
	.byte		0x23
	.uleb128	92
.L3499:
	.sleb128	15
	.byte		"RateTransition6"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	94
.L3500:
	.sleb128	15
	.byte		"RateTransition7"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	95
.L3501:
	.sleb128	15
	.byte		"RateTransition10"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	96
.L3502:
	.sleb128	15
	.byte		"RateTransition8"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	97
.L3503:
	.sleb128	15
	.byte		"RateTransition9"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	98
.L3504:
	.sleb128	15
	.byte		"RateTransition11"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	99
.L3505:
	.sleb128	15
	.byte		"RateTransition12"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	100
.L3506:
	.sleb128	15
	.byte		"RateTransition7_p"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	101
.L3507:
	.sleb128	15
	.byte		"atv_v_dbg_T_FMot"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	102
.L3508:
	.sleb128	15
	.byte		"atv_v_dbg_T_FInv"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	103
.L3509:
	.sleb128	15
	.byte		"atv_v_dbg_T_RMot"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	104
.L3510:
	.sleb128	15
	.byte		"atv_v_dbg_T_RInv"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	105
.L3511:
	.sleb128	15
	.byte		"atv_v_dbg_T_GMot"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	106
.L3512:
	.sleb128	15
	.byte		"atv_v_dbg_T_GInv"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	107
.L3513:
	.sleb128	15
	.byte		"atv_v_dbg_T_Rad"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	108
.L3514:
	.sleb128	15
	.byte		"LogicalOperator3"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	109
.L3515:
	.sleb128	15
	.byte		"RateTransition4"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	110
.L3516:
	.sleb128	15
	.byte		"RateTransition5"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	111
.L3517:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	112
.L3518:
	.sleb128	15
	.byte		"RateTransition4_b"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	113
.L3519:
	.sleb128	15
	.byte		"RateTransition"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	114
.L3520:
	.sleb128	15
	.byte		"RateTransition1"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	115
.L3521:
	.sleb128	15
	.byte		"RateTransition2"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	116
.L3522:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage1"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	117
.L3523:
	.sleb128	15
	.byte		"RelationalOperator4"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	118
.L3524:
	.sleb128	15
	.byte		"RelationalOperator5"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	119
.L3525:
	.sleb128	15
	.byte		"Switch"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	120
.L3526:
	.sleb128	15
	.byte		"RateTransition3"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	121
.L3527:
	.sleb128	15
	.byte		"RateTransition5_g"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	122
.L3528:
	.sleb128	15
	.byte		"RateTransition6_p"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	123
.L3529:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage6"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	124
.L3530:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage2"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	125
.L3531:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage3"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	126
.L3532:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage4"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	127
.L3533:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage5"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	128
.L3534:
	.sleb128	15
	.byte		"pdx_DigitalOutput"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	129
.L3535:
	.sleb128	15
	.byte		"pdx_DigitalOutput1"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	130
.L3536:
	.sleb128	15
	.byte		"pdx_DigitalOutput3"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	131
.L3537:
	.sleb128	15
	.byte		"pdx_DigitalOutput4"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	132
.L3538:
	.sleb128	15
	.byte		"pdx_DigitalOutput5"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	133
.L3539:
	.sleb128	15
	.byte		"pdx_DigitalOutput6"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	134
.L3540:
	.sleb128	15
	.byte		"pdx_DigitalOutput7"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	135
.L3541:
	.sleb128	15
	.byte		"pdx_DigitalOutput8"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	136
.L3542:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o1"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	137
.L3543:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o2"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	138
.L3544:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o3"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	139
.L3545:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o1_k"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	140
.L3546:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o2_d"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	141
.L3547:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o3_b"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	142
.L3548:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o1_n"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	143
.L3549:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o2_l"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	144
.L3550:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o3_p"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	145
.L3551:
	.sleb128	15
	.byte		"pdx_DigitalOutput_b"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	146
.L3552:
	.sleb128	15
	.byte		"pdx_DigitalOutput1_i"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	147
.L3553:
	.sleb128	15
	.byte		"pdx_DigitalOutput2"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	148
.L3554:
	.sleb128	15
	.byte		"pdx_DigitalOutput3_l"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	149
.L3555:
	.sleb128	15
	.byte		"hvp_ctrl_out"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	150
.L3556:
	.sleb128	15
	.byte		"hvm_ctrl_out"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	151
.L3557:
	.sleb128	15
	.byte		"chg_ctrl_out"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	152
.L3558:
	.sleb128	15
	.byte		"heater_ctrl_out"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	153
.L3559:
	.sleb128	15
	.byte		"en_inv_rear_out"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	154
.L3560:
	.sleb128	15
	.byte		"en_inv_front_out"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	155
.L3561:
	.sleb128	15
	.byte		"en_inv_gen_out"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	156
.L3562:
	.sleb128	15
	.byte		"GestioneIbridoProceduraAvviamen"
	.byte		0
	.4byte		.L5317
	.sleb128	3
	.byte		0x23
	.uleb128	157
.L3563:
	.sleb128	15
	.byte		"sf_Chart_b"
	.byte		0
	.4byte		.L5304
	.sleb128	3
	.byte		0x23
	.uleb128	158
.L3564:
	.sleb128	15
	.byte		"sf_Chart"
	.byte		0
	.4byte		.L5304
	.sleb128	3
	.byte		0x23
	.uleb128	159
	.sleb128	0
.L6315:
.L5318:
	.sleb128	16
	.4byte		.L6316-.L2
	.uleb128	1
.L3471:
	.sleb128	15
	.byte		"Switch"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6316:
.L5295:
	.sleb128	16
	.4byte		.L6317-.L2
	.uleb128	3
.L3468:
	.sleb128	15
	.byte		"is_active_c1_ATV"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3469:
	.sleb128	15
	.byte		"is_c1_ATV"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	1
.L3470:
	.sleb128	15
	.byte		"temporalCounter_i1"
	.byte		0
	.4byte		.L5399
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.sleb128	0
.L6317:
.L5305:
	.sleb128	16
	.4byte		.L6318-.L2
	.uleb128	1
.L3467:
	.sleb128	15
	.byte		"out"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6318:
.L6244:
	.sleb128	16
	.4byte		.L6319-.L2
	.uleb128	12
.L2605:
	.sleb128	15
	.byte		"set_sum"
	.byte		0
	.4byte		.L5453
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L2606:
	.sleb128	15
	.byte		"reset_sum"
	.byte		0
	.4byte		.L5453
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L2607:
	.sleb128	15
	.byte		"steady_state"
	.byte		0
	.4byte		.L5446
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.sleb128	0
.L6319:
.L6156:
	.sleb128	16
	.4byte		.L6320-.L2
	.uleb128	12
.L2358:
	.sleb128	15
	.byte		"dispatch_fn"
	.byte		0
	.4byte		.L6321
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L2359:
	.sleb128	15
	.byte		"ready_taskset"
	.byte		0
	.4byte		.L6324
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L2360:
	.sleb128	15
	.byte		"dispatch_ceiling"
	.byte		0
	.4byte		.L6324
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.sleb128	0
.L6320:
.L5425:
	.sleb128	16
	.4byte		.L6325-.L2
	.uleb128	12
.L1642:
	.sleb128	15
	.byte		"chunks"
	.byte		0
	.4byte		.L6326
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6325:
.L5419:
	.sleb128	16
	.4byte		.L6328-.L2
	.uleb128	8
.L1636:
	.sleb128	15
	.byte		"chunks"
	.byte		0
	.4byte		.L6329
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6328:
.L6269:
	.sleb128	14
	.4byte		.L6331
	.uleb128	101
	.4byte		.L6332-.L2
	.byte		"SimStruct_tag"
	.byte		0
	.uleb128	508
.L1323:
	.sleb128	15
	.byte		"modelName"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1324:
	.sleb128	15
	.byte		"path"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1325:
	.sleb128	15
	.byte		"parent"
	.byte		0
	.4byte		.L6333
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1326:
	.sleb128	15
	.byte		"root"
	.byte		0
	.4byte		.L6333
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1327:
	.sleb128	15
	.byte		"errorStatus"
	.byte		0
	.4byte		.L6335
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1328:
	.sleb128	15
	.byte		"sizes"
	.byte		0
	.4byte		.L6336
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1329:
	.sleb128	15
	.byte		"portInfo"
	.byte		0
	.4byte		.L6337
	.sleb128	3
	.byte		0x23
	.uleb128	172
.L1330:
	.sleb128	15
	.byte		"sfcnParams"
	.byte		0
	.4byte		.L6338
	.sleb128	3
	.byte		0x23
	.uleb128	196
.L1331:
	.sleb128	15
	.byte		"states"
	.byte		0
	.4byte		.L6339
	.sleb128	3
	.byte		0x23
	.uleb128	216
.L1332:
	.sleb128	15
	.byte		"work"
	.byte		0
	.4byte		.L6340
	.sleb128	3
	.byte		0x23
	.uleb128	272
.L1333:
	.sleb128	15
	.byte		"blkInfo"
	.byte		0
	.4byte		.L6341
	.sleb128	3
	.byte		0x23
	.uleb128	304
.L1334:
	.sleb128	15
	.byte		"mdlInfo"
	.byte		0
	.4byte		.L6342
	.sleb128	3
	.byte		0x23
	.uleb128	332
.L1335:
	.sleb128	15
	.byte		"callSys"
	.byte		0
	.4byte		.L6344
	.sleb128	3
	.byte		0x23
	.uleb128	336
.L1336:
	.sleb128	15
	.byte		"regDataType"
	.byte		0
	.4byte		.L6345
	.sleb128	3
	.byte		0x23
	.uleb128	352
.L1337:
	.sleb128	15
	.byte		"stInfo"
	.byte		0
	.4byte		.L6346
	.sleb128	3
	.byte		0x23
	.uleb128	388
.L1338:
	.sleb128	15
	.byte		"modelMethods"
	.byte		0
	.4byte		.L6347
	.sleb128	3
	.byte		0x23
	.uleb128	408
.L1339:
	.sleb128	15
	.byte		"sFunctions"
	.byte		0
	.4byte		.L6267
	.sleb128	3
	.byte		0x23
	.uleb128	504
	.sleb128	0
.L6332:
.L6347:
	.sleb128	16
	.4byte		.L6348-.L2
	.uleb128	96
.L1322:
	.sleb128	15
	.byte		"sFcn"
	.byte		0
	.4byte		.L6349
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6348:
	.section	.debug_info,,n
.L6335:
	.sleb128	17
	.4byte		.L6350-.L2
	.uleb128	4
.L1320:
	.sleb128	15
	.byte		"str"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1321:
	.sleb128	15
	.byte		"msg"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6350:
.L6339:
	.sleb128	14
	.4byte		.L6351
	.uleb128	1979
	.4byte		.L6352-.L2
	.byte		"_ssStates"
	.byte		0
	.uleb128	56
.L1306:
	.sleb128	15
	.byte		"U"
	.byte		0
	.4byte		.L6353
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1307:
	.sleb128	15
	.byte		"Y"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1308:
	.sleb128	15
	.byte		"contStates"
	.byte		0
	.4byte		.L6283
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1309:
	.sleb128	15
	.byte		"discStates"
	.byte		0
	.4byte		.L6283
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1310:
	.sleb128	15
	.byte		"flags"
	.byte		0
	.4byte		.L6354
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1311:
	.sleb128	15
	.byte		"reserved2"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1312:
	.sleb128	15
	.byte		"dX"
	.byte		0
	.4byte		.L6283
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1313:
	.sleb128	15
	.byte		"contStateDisabled"
	.byte		0
	.4byte		.L6284
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1314:
	.sleb128	15
	.byte		"statesInfo2"
	.byte		0
	.4byte		.L6355
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L1315:
	.sleb128	15
	.byte		"nonsampledZCs"
	.byte		0
	.4byte		.L6283
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L1316:
	.sleb128	15
	.byte		"nonsampledZCDirs"
	.byte		0
	.4byte		.L6357
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L1317:
	.sleb128	15
	.byte		"jacobian"
	.byte		0
	.4byte		.L6360
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L1318:
	.sleb128	15
	.byte		"modelMethods2"
	.byte		0
	.4byte		.L6363
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L1319:
	.sleb128	15
	.byte		"reservedSize"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.sleb128	0
.L6352:
.L6354:
	.sleb128	16
	.4byte		.L6365-.L2
	.uleb128	4
	.section	.debug_info,,n
.L1302:
	.sleb128	18
	.byte		"alreadyWarned"
	.byte		0
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
	.uleb128	4
	.byte		0x10
	.byte		0xf
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6365:
.L6353:
	.sleb128	17
	.4byte		.L6367-.L2
	.uleb128	4
.L1300:
	.sleb128	15
	.byte		"vect"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1301:
	.sleb128	15
	.byte		"uPtrs"
	.byte		0
	.4byte		.L6368
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6367:
.L6356:
	.sleb128	14
	.4byte		.L6351
	.uleb128	1970
	.4byte		.L6372-.L2
	.byte		"_ssStatesInfo2"
	.byte		0
	.uleb128	36
.L1295:
	.sleb128	15
	.byte		"prevZCSigState"
	.byte		0
	.4byte		.L6281
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1296:
	.sleb128	15
	.byte		"absTol"
	.byte		0
	.4byte		.L6283
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1297:
	.sleb128	15
	.byte		"absTolControl"
	.byte		0
	.4byte		.L6373
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1298:
	.sleb128	15
	.byte		"periodicStatesInfo"
	.byte		0
	.4byte		.L6374
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1299:
	.sleb128	15
	.byte		"reservedForFutureUse"
	.byte		0
	.4byte		.L6377
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L6372:
.L6376:
	.sleb128	14
	.4byte		.L6351
	.uleb128	1962
	.4byte		.L6379-.L2
	.byte		"ssPeriodicStatesInfo_T"
	.byte		0
	.uleb128	20
.L1290:
	.sleb128	15
	.byte		"globalContStateIndex"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1291:
	.sleb128	15
	.byte		"numPeriodicContStates"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1292:
	.sleb128	15
	.byte		"periodicContStateIndices"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1293:
	.sleb128	15
	.byte		"periodicContStateRanges"
	.byte		0
	.4byte		.L6283
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1294:
	.sleb128	15
	.byte		"periodicContStateCounters"
	.byte		0
	.4byte		.L4924
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L6379:
.L6364:
	.sleb128	14
	.4byte		.L6351
	.uleb128	1909
	.4byte		.L6380-.L2
	.byte		"_ssSFcnModelMethods2"
	.byte		0
	.uleb128	88
.L1269:
	.sleb128	15
	.byte		"mdlProjection"
	.byte		0
	.4byte		.L6381
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1270:
	.sleb128	15
	.byte		"mdlJacobian"
	.byte		0
	.4byte		.L6385
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1271:
	.sleb128	15
	.byte		"mdlSetInputPortFrameData"
	.byte		0
	.4byte		.L6389
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1272:
	.sleb128	15
	.byte		"strictBooleanCheckEnabledFcn"
	.byte		0
	.4byte		.L6395
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1273:
	.sleb128	15
	.byte		"mdlSetDefaultPortDimensions"
	.byte		0
	.4byte		.L6399
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1274:
	.sleb128	15
	.byte		"mdlSetDefaultPortDataTypes"
	.byte		0
	.4byte		.L6403
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1275:
	.sleb128	15
	.byte		"mdlSetDefaultPortComplexSignals"
	.byte		0
	.4byte		.L6407
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1276:
	.sleb128	15
	.byte		"ConvertBuiltInDType"
	.byte		0
	.4byte		.L6411
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1277:
	.sleb128	15
	.byte		"resolveCBK"
	.byte		0
	.4byte		.L6416
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L1278:
	.sleb128	15
	.byte		"extModeLogFcn"
	.byte		0
	.4byte		.L6417
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L1279:
	.sleb128	15
	.byte		"mdlExtModeExec"
	.byte		0
	.4byte		.L6426
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L1280:
	.sleb128	15
	.byte		"mdlRTWCG"
	.byte		0
	.4byte		.L6430
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L1281:
	.sleb128	15
	.byte		"mdlMassMatrix"
	.byte		0
	.4byte		.L6436
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L1282:
	.sleb128	15
	.byte		"modelMethods4"
	.byte		0
	.4byte		.L6440
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L1283:
	.sleb128	15
	.byte		"mdlForcingFunction"
	.byte		0
	.4byte		.L6442
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L1284:
	.sleb128	15
	.byte		"mdlEnable"
	.byte		0
	.4byte		.L6446
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L1285:
	.sleb128	15
	.byte		"mdlDisable"
	.byte		0
	.4byte		.L6450
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L1286:
	.sleb128	15
	.byte		"mdlSimStatusChange"
	.byte		0
	.4byte		.L6454
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L1287:
	.sleb128	15
	.byte		"mdlInitializePropagationPass"
	.byte		0
	.4byte		.L6460
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L1288:
	.sleb128	15
	.byte		"constraintsInfo"
	.byte		0
	.4byte		.L6466
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L1289:
	.sleb128	15
	.byte		"modelMethods3"
	.byte		0
	.4byte		.L6468
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.sleb128	0
.L6380:
.L6469:
	.sleb128	14
	.4byte		.L6351
	.uleb128	1896
	.4byte		.L6470-.L2
	.byte		"_ssSFcnModelMethods3"
	.byte		0
	.uleb128	48
.L1263:
	.sleb128	15
	.byte		"massMatrix"
	.byte		0
	.4byte		.L6471
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1264:
	.sleb128	15
	.byte		"mdlInitSystemMatrices"
	.byte		0
	.4byte		.L6472
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1265:
	.sleb128	15
	.byte		"numSlvrJacobianNzmax"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L1266:
	.sleb128	15
	.byte		"slvrJacobianMatrix"
	.byte		0
	.4byte		.L6360
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L1267:
	.sleb128	15
	.byte		"mdlJacobianIrJc"
	.byte		0
	.4byte		.L6476
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L1268:
	.sleb128	15
	.byte		"reservedForFutureUse"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.sleb128	0
.L6470:
.L6441:
	.sleb128	14
	.4byte		.L6351
	.uleb128	1883
	.4byte		.L6480-.L2
	.byte		"_ssSFcnModelMethods4"
	.byte		0
	.uleb128	60
.L1255:
	.sleb128	15
	.byte		"mdlSetInputPortSymbolicDimensions"
	.byte		0
	.4byte		.L6481
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1256:
	.sleb128	15
	.byte		"mdlSetOutputPortSymbolicDimensions"
	.byte		0
	.4byte		.L6486
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1257:
	.sleb128	15
	.byte		"mdlSetupRuntimeResources"
	.byte		0
	.4byte		.L6490
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1258:
	.sleb128	15
	.byte		"mdlCleanupRuntimeResources"
	.byte		0
	.4byte		.L6494
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1259:
	.sleb128	15
	.byte		"mdlDataTransferRead"
	.byte		0
	.4byte		.L6498
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1260:
	.sleb128	15
	.byte		"mdlDataTransferWrite"
	.byte		0
	.4byte		.L6502
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1261:
	.sleb128	15
	.byte		"mdlDataTransferInitBuffers"
	.byte		0
	.4byte		.L6506
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1262:
	.sleb128	15
	.byte		"reservedForFuture"
	.byte		0
	.4byte		.L6510
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.sleb128	0
.L6480:
.L6349:
	.sleb128	14
	.4byte		.L6351
	.uleb128	1806
	.4byte		.L6512-.L2
	.byte		"_ssSFcnModelMethods"
	.byte		0
	.uleb128	96
.L1231:
	.sleb128	15
	.byte		"mdlInitializeSizes"
	.byte		0
	.4byte		.L6513
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1232:
	.sleb128	15
	.byte		"mdlGetInputPortWidthLevel1"
	.byte		0
	.4byte		.L6517
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1233:
	.sleb128	15
	.byte		"mdlGetOutputPortWidthLevel1"
	.byte		0
	.4byte		.L6521
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1234:
	.sleb128	15
	.byte		"mdlSetInputPortDimensions"
	.byte		0
	.4byte		.L6525
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1235:
	.sleb128	15
	.byte		"mdlSetOutputPortDimensions"
	.byte		0
	.4byte		.L6526
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1236:
	.sleb128	15
	.byte		"mdlSetInputPortDataType"
	.byte		0
	.4byte		.L6527
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1237:
	.sleb128	15
	.byte		"mdlSetOutputPortDataType"
	.byte		0
	.4byte		.L6532
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1238:
	.sleb128	15
	.byte		"mdlInitializeSampleTimes"
	.byte		0
	.4byte		.L6536
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1239:
	.sleb128	15
	.byte		"mdlSetInputPortSampleTime"
	.byte		0
	.4byte		.L6540
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L1240:
	.sleb128	15
	.byte		"mdlSetOutputPortSampleTime"
	.byte		0
	.4byte		.L6544
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L1241:
	.sleb128	15
	.byte		"mdlSetWorkWidths"
	.byte		0
	.4byte		.L6548
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L1242:
	.sleb128	15
	.byte		"mdlRTW"
	.byte		0
	.4byte		.L6552
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L1243:
	.sleb128	15
	.byte		"mdlInitializeConditions"
	.byte		0
	.4byte		.L6556
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L1244:
	.sleb128	15
	.byte		"mdlStart"
	.byte		0
	.4byte		.L6557
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L1245:
	.sleb128	15
	.byte		"mdlCheckParameters"
	.byte		0
	.4byte		.L6561
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L1246:
	.sleb128	15
	.byte		"mdlProcessParameters"
	.byte		0
	.4byte		.L6565
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L1247:
	.sleb128	15
	.byte		"mdlGetTimeOfNextVarHit"
	.byte		0
	.4byte		.L6569
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L1248:
	.sleb128	15
	.byte		"mdlOutputs"
	.byte		0
	.4byte		.L6573
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L1249:
	.sleb128	15
	.byte		"mdlUpdate"
	.byte		0
	.4byte		.L6574
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L1250:
	.sleb128	15
	.byte		"mdlDerivatives"
	.byte		0
	.4byte		.L6575
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L1251:
	.sleb128	15
	.byte		"mdlZeroCrossings"
	.byte		0
	.4byte		.L6576
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L1252:
	.sleb128	15
	.byte		"mdlTerminate"
	.byte		0
	.4byte		.L6580
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L1253:
	.sleb128	15
	.byte		"fcnInEnable"
	.byte		0
	.4byte		.L6584
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L1254:
	.sleb128	15
	.byte		"fcnOutDisable"
	.byte		0
	.4byte		.L6585
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.sleb128	0
.L6512:
.L6585:
	.sleb128	17
	.4byte		.L6586-.L2
	.uleb128	4
.L1229:
	.sleb128	15
	.byte		"mdlSetOutputPortComplexSignal"
	.byte		0
	.4byte		.L6587
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1230:
	.sleb128	15
	.byte		"mdlDisable"
	.byte		0
	.4byte		.L6592
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6586:
.L6584:
	.sleb128	17
	.4byte		.L6596-.L2
	.uleb128	4
.L1227:
	.sleb128	15
	.byte		"mdlSetInputPortComplexSignal"
	.byte		0
	.4byte		.L6597
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1228:
	.sleb128	15
	.byte		"mdlEnable"
	.byte		0
	.4byte		.L6601
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6596:
.L6575:
	.sleb128	17
	.4byte		.L6605-.L2
	.uleb128	4
.L1225:
	.sleb128	15
	.byte		"level2"
	.byte		0
	.4byte		.L6606
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1226:
	.sleb128	15
	.byte		"level1"
	.byte		0
	.4byte		.L6610
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6605:
.L6574:
	.sleb128	17
	.4byte		.L6614-.L2
	.uleb128	4
.L1223:
	.sleb128	15
	.byte		"level2"
	.byte		0
	.4byte		.L6615
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1224:
	.sleb128	15
	.byte		"level1"
	.byte		0
	.4byte		.L6619
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6614:
.L6573:
	.sleb128	17
	.4byte		.L6623-.L2
	.uleb128	4
.L1221:
	.sleb128	15
	.byte		"level2"
	.byte		0
	.4byte		.L6624
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1222:
	.sleb128	15
	.byte		"level1"
	.byte		0
	.4byte		.L6628
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6623:
.L6556:
	.sleb128	17
	.4byte		.L6632-.L2
	.uleb128	4
.L1219:
	.sleb128	15
	.byte		"level2"
	.byte		0
	.4byte		.L6633
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1220:
	.sleb128	15
	.byte		"level1"
	.byte		0
	.4byte		.L6637
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6632:
.L6526:
	.sleb128	17
	.4byte		.L6641-.L2
	.uleb128	4
.L1217:
	.sleb128	15
	.byte		"mdlSetOutputPortWidth"
	.byte		0
	.4byte		.L6642
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1218:
	.sleb128	15
	.byte		"mdlSetOutputPortDims"
	.byte		0
	.4byte		.L6646
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6641:
.L6525:
	.sleb128	17
	.4byte		.L6654-.L2
	.uleb128	4
.L1215:
	.sleb128	15
	.byte		"mdlSetInputPortWidth"
	.byte		0
	.4byte		.L6655
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1216:
	.sleb128	15
	.byte		"mdlSetInputPortDims"
	.byte		0
	.4byte		.L6659
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6654:
.L6467:
	.sleb128	14
	.4byte		.L6351
	.uleb128	1798
	.4byte		.L6663-.L2
	.byte		"_ssConstraintsInfo"
	.byte		0
	.uleb128	12
.L1212:
	.sleb128	15
	.byte		"numConstraints"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1213:
	.sleb128	15
	.byte		"constraints"
	.byte		0
	.4byte		.L6283
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1214:
	.sleb128	15
	.byte		"mdlConstraints"
	.byte		0
	.4byte		.L6664
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.sleb128	0
.L6663:
.L6471:
	.sleb128	14
	.4byte		.L6351
	.uleb128	1789
	.4byte		.L6668-.L2
	.byte		"_ssMassMatrixInfo"
	.byte		0
	.uleb128	28
.L1210:
	.sleb128	15
	.byte		"type"
	.byte		0
	.4byte		.L6669
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1211:
	.sleb128	15
	.byte		"info"
	.byte		0
	.4byte		.L6671
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L6668:
.L6346:
	.sleb128	14
	.4byte		.L6351
	.uleb128	1585
	.4byte		.L6673-.L2
	.byte		"_ssStInfo"
	.byte		0
	.uleb128	20
.L1205:
	.sleb128	15
	.byte		"sampleTimes"
	.byte		0
	.4byte		.L6293
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1206:
	.sleb128	15
	.byte		"offsetTimes"
	.byte		0
	.4byte		.L6293
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1207:
	.sleb128	15
	.byte		"tNext"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1208:
	.sleb128	15
	.byte		"tNextTid"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1209:
	.sleb128	15
	.byte		"sampleTimeTaskIDs"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L6673:
.L6345:
	.sleb128	14
	.4byte		.L6351
	.uleb128	1554
	.4byte		.L6674-.L2
	.byte		"_ssRegDataType"
	.byte		0
	.uleb128	36
.L1196:
	.sleb128	15
	.byte		"arg1"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1197:
	.sleb128	15
	.byte		"registerFcn"
	.byte		0
	.4byte		.L6675
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1198:
	.sleb128	15
	.byte		"setSizeFcn"
	.byte		0
	.4byte		.L6679
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1199:
	.sleb128	15
	.byte		"getSizeFcn"
	.byte		0
	.4byte		.L6683
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1200:
	.sleb128	15
	.byte		"setZeroFcn"
	.byte		0
	.4byte		.L6687
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1201:
	.sleb128	15
	.byte		"getZeroFcn"
	.byte		0
	.4byte		.L6691
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1202:
	.sleb128	15
	.byte		"getNameFcn"
	.byte		0
	.4byte		.L6695
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1203:
	.sleb128	15
	.byte		"getIdFcn"
	.byte		0
	.4byte		.L6699
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1204:
	.sleb128	15
	.byte		"setNumDWorkFcn"
	.byte		0
	.4byte		.L6703
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.sleb128	0
.L6674:
.L6416:
	.sleb128	14
	.4byte		.L6351
	.uleb128	1525
	.4byte		.L6707-.L2
	.byte		"_ssResolveCBK"
	.byte		0
	.uleb128	8
.L1194:
	.sleb128	15
	.byte		"Resolver"
	.byte		0
	.4byte		.L6708
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1195:
	.sleb128	15
	.byte		"_slBlock"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L6707:
.L6344:
	.sleb128	14
	.4byte		.L6351
	.uleb128	1508
	.4byte		.L6717-.L2
	.byte		"_ssCallSys"
	.byte		0
	.uleb128	16
.L1190:
	.sleb128	15
	.byte		"outputs"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1191:
	.sleb128	15
	.byte		"args1"
	.byte		0
	.4byte		.L6718
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1192:
	.sleb128	15
	.byte		"args2"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1193:
	.sleb128	15
	.byte		"fcns"
	.byte		0
	.4byte		.L6719
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.sleb128	0
.L6717:
.L6343:
	.sleb128	14
	.4byte		.L6351
	.uleb128	1298
	.4byte		.L6725-.L2
	.byte		"_ssMdlInfo"
	.byte		0
	.uleb128	276
.L1124:
	.sleb128	15
	.byte		"simMode"
	.byte		0
	.4byte		.L6270
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1125:
	.sleb128	15
	.byte		"t"
	.byte		0
	.4byte		.L6293
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1126:
	.sleb128	15
	.byte		"sampleHits"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1127:
	.sleb128	15
	.byte		"tStart"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1128:
	.sleb128	15
	.byte		"tFinal"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1129:
	.sleb128	15
	.byte		"timeOfLastOutput"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1130:
	.sleb128	15
	.byte		"minStepSize"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1131:
	.sleb128	15
	.byte		"timingData"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1132:
	.sleb128	15
	.byte		"simTimeStep"
	.byte		0
	.4byte		.L6291
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L1133:
	.sleb128	15
	.byte		"stopRequested"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L1134:
	.sleb128	15
	.byte		"logOutput"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L1135:
	.sleb128	15
	.byte		"outputTimes"
	.byte		0
	.4byte		.L6293
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L1136:
	.sleb128	15
	.byte		"outputTimesIndex"
	.byte		0
	.4byte		.L6726
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L1137:
	.sleb128	15
	.byte		"numOutputTimes"
	.byte		0
	.4byte		.L6726
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L1138:
	.sleb128	15
	.byte		"outputTimesOnly"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L1139:
	.sleb128	15
	.byte		"obsoletedNeedOutputAtTPlusTol"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L1140:
	.sleb128	15
	.byte		"solverName"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L1141:
	.sleb128	15
	.byte		"variableStepSolver"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L1142:
	.sleb128	15
	.byte		"solverData"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L1143:
	.sleb128	15
	.byte		"solverStopTime"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L1144:
	.sleb128	15
	.byte		"stepSize"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L1145:
	.sleb128	15
	.byte		"solverNeedsReset"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L1146:
	.sleb128	15
	.byte		"mdlFlags"
	.byte		0
	.4byte		.L6727
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L1147:
	.sleb128	15
	.byte		"maxNumMinSteps"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	92
.L1148:
	.sleb128	15
	.byte		"solverRefineFactor"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	96
.L1149:
	.sleb128	15
	.byte		"solverRelTol"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	100
.L1150:
	.sleb128	15
	.byte		"solverAbsTol_Obsolete"
	.byte		0
	.4byte		.L6283
	.sleb128	2
	.byte		0x23
	.uleb128	104
.L1151:
	.sleb128	15
	.byte		"maxStepSize"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	108
.L1152:
	.sleb128	15
	.byte		"solverMaxOrder"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	112
.L1153:
	.sleb128	15
	.byte		"fixedStepSize"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	116
.L1154:
	.sleb128	15
	.byte		"numNonContDerivSigInfos"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	120
.L1155:
	.sleb128	15
	.byte		"nonContDerivSigInfos"
	.byte		0
	.4byte		.L6728
	.sleb128	2
	.byte		0x23
	.uleb128	124
.L1156:
	.sleb128	15
	.byte		"solverAbsTolControl_Obsolete"
	.byte		0
	.4byte		.L6373
	.sleb128	3
	.byte		0x23
	.uleb128	128
.L1157:
	.sleb128	15
	.byte		"timingBridge"
	.byte		0
	.4byte		.L6731
	.sleb128	3
	.byte		0x23
	.uleb128	132
.L1158:
	.sleb128	15
	.byte		"rtwLogInfo"
	.byte		0
	.4byte		.L6734
	.sleb128	3
	.byte		0x23
	.uleb128	136
.L1159:
	.sleb128	15
	.byte		"solverInfo"
	.byte		0
	.4byte		.L6737
	.sleb128	3
	.byte		0x23
	.uleb128	140
.L1160:
	.sleb128	15
	.byte		"errorStatusBuffer"
	.byte		0
	.4byte		.L6738
	.sleb128	3
	.byte		0x23
	.uleb128	144
.L1161:
	.sleb128	15
	.byte		"blkRTSGateway"
	.byte		0
	.4byte		.L6739
	.sleb128	3
	.byte		0x23
	.uleb128	148
.L1162:
	.sleb128	15
	.byte		"mexApiVoidPtr1"
	.byte		0
	.4byte		.L5279
	.sleb128	3
	.byte		0x23
	.uleb128	152
.L1163:
	.sleb128	15
	.byte		"solverExtrapolationOrder"
	.byte		0
	.4byte		.L5277
	.sleb128	3
	.byte		0x23
	.uleb128	156
.L1164:
	.sleb128	15
	.byte		"solverNumberNewtonIterations"
	.byte		0
	.4byte		.L5277
	.sleb128	3
	.byte		0x23
	.uleb128	160
.L1165:
	.sleb128	15
	.byte		"extModeInfo"
	.byte		0
	.4byte		.L6272
	.sleb128	3
	.byte		0x23
	.uleb128	164
.L1166:
	.sleb128	15
	.byte		"blockIO"
	.byte		0
	.4byte		.L5279
	.sleb128	3
	.byte		0x23
	.uleb128	168
.L1167:
	.sleb128	15
	.byte		"blockIOVarDims"
	.byte		0
	.4byte		.L6745
	.sleb128	3
	.byte		0x23
	.uleb128	172
.L1168:
	.sleb128	15
	.byte		"defaultParam"
	.byte		0
	.4byte		.L6283
	.sleb128	3
	.byte		0x23
	.uleb128	176
.L1169:
	.sleb128	15
	.byte		"mappingInfo"
	.byte		0
	.4byte		.L6279
	.sleb128	3
	.byte		0x23
	.uleb128	180
.L1170:
	.sleb128	15
	.byte		"mexApiInt2"
	.byte		0
	.4byte		.L5277
	.sleb128	3
	.byte		0x23
	.uleb128	184
.L1171:
	.sleb128	15
	.byte		"reservedString"
	.byte		0
	.4byte		.L6746
	.sleb128	3
	.byte		0x23
	.uleb128	188
.L1172:
	.sleb128	15
	.byte		"regInputPortDimsInfo"
	.byte		0
	.4byte		.L6748
	.sleb128	3
	.byte		0x23
	.uleb128	220
.L1173:
	.sleb128	15
	.byte		"regOutputPortDimsInfo"
	.byte		0
	.4byte		.L6752
	.sleb128	3
	.byte		0x23
	.uleb128	224
.L1174:
	.sleb128	15
	.byte		"reservedForXPC"
	.byte		0
	.4byte		.L5279
	.sleb128	3
	.byte		0x23
	.uleb128	228
.L1175:
	.sleb128	15
	.byte		"perTaskSampleHits"
	.byte		0
	.4byte		.L5281
	.sleb128	3
	.byte		0x23
	.uleb128	232
.L1176:
	.sleb128	15
	.byte		"solverMode"
	.byte		0
	.4byte		.L6756
	.sleb128	3
	.byte		0x23
	.uleb128	236
.L1177:
	.sleb128	15
	.byte		"rtwgenMode"
	.byte		0
	.4byte		.L6758
	.sleb128	3
	.byte		0x23
	.uleb128	240
.L1178:
	.sleb128	15
	.byte		"reservedForFutureInt"
	.byte		0
	.4byte		.L6760
	.sleb128	3
	.byte		0x23
	.uleb128	244
.L1179:
	.sleb128	15
	.byte		"mexApiReal1"
	.byte		0
	.4byte		.L5274
	.sleb128	3
	.byte		0x23
	.uleb128	252
.L1180:
	.sleb128	15
	.byte		"mexApiReal2"
	.byte		0
	.4byte		.L5274
	.sleb128	3
	.byte		0x23
	.uleb128	256
.L1181:
	.sleb128	15
	.byte		"timeOfNextSampleHit"
	.byte		0
	.4byte		.L6283
	.sleb128	3
	.byte		0x23
	.uleb128	260
.L1182:
	.sleb128	15
	.byte		"varNextHitTimesList"
	.byte		0
	.4byte		.L6283
	.sleb128	3
	.byte		0x23
	.uleb128	264
.L1183:
	.sleb128	15
	.byte		"tNextWasAdjusted"
	.byte		0
	.4byte		.L6284
	.sleb128	3
	.byte		0x23
	.uleb128	268
.L1184:
	.sleb128	15
	.byte		"reservedDoubleVect"
	.byte		0
	.4byte		.L6762
	.sleb128	3
	.byte		0x23
	.uleb128	272
	.sleb128	0
.L6725:
.L6727:
	.sleb128	16
	.4byte		.L6764-.L2
	.uleb128	4
.L1100:
	.sleb128	18
	.byte		"zcCacheNeedsReset"
	.byte		0
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
	.uleb128	4
	.byte		0x8
	.byte		0x18
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6764:
.L6730:
	.sleb128	16
	.4byte		.L6765-.L2
	.uleb128	12
.L1097:
	.sleb128	15
	.byte		"sizeInBytes"
	.byte		0
	.4byte		.L5278
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1098:
	.sleb128	15
	.byte		"pCurrVal"
	.byte		0
	.4byte		.L6766
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1099:
	.sleb128	15
	.byte		"pPrevVal"
	.byte		0
	.4byte		.L6766
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.sleb128	0
.L6765:
.L6341:
	.sleb128	14
	.4byte		.L6351
	.uleb128	728
	.4byte		.L6767-.L2
	.byte		"_ssBlkInfo"
	.byte		0
	.uleb128	28
.L724:
	.sleb128	15
	.byte		"inputConnected"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L725:
	.sleb128	15
	.byte		"outputConnected"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L726:
	.sleb128	15
	.byte		"placementGroup"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L727:
	.sleb128	15
	.byte		"block"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L728:
	.sleb128	15
	.byte		"blkInfo2"
	.byte		0
	.4byte		.L6768
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L729:
	.sleb128	15
	.byte		"absTolOffset_Obsolete"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L730:
	.sleb128	15
	.byte		"sfcnFlags"
	.byte		0
	.4byte		.L6770
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.sleb128	0
.L6767:
.L6770:
	.sleb128	16
	.4byte		.L6771-.L2
	.uleb128	4
.L718:
	.sleb128	18
	.byte		"okToCallStartTerminateOnSimRestart"
	.byte		0
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
	.uleb128	4
	.byte		0x10
	.byte		0x10
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6771:
.L6769:
	.sleb128	14
	.4byte		.L6351
	.uleb128	718
	.4byte		.L6772-.L2
	.byte		"_ssBlkInfo2"
	.byte		0
	.uleb128	132
.L711:
	.sleb128	15
	.byte		"rtwSfcnInfo"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L712:
	.sleb128	15
	.byte		"unused"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L713:
	.sleb128	15
	.byte		"portInfo2"
	.byte		0
	.4byte		.L6773
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L714:
	.sleb128	15
	.byte		"stInfo2"
	.byte		0
	.4byte		.L6775
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L715:
	.sleb128	15
	.byte		"reservedPtrs"
	.byte		0
	.4byte		.L6777
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L716:
	.sleb128	15
	.byte		"impulseResponseLength"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L717:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L6779
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.sleb128	0
.L6772:
.L6776:
	.sleb128	14
	.4byte		.L6351
	.uleb128	696
	.4byte		.L6781-.L2
	.byte		"_ssSTInfo2"
	.byte		0
	.uleb128	52
.L701:
	.sleb128	15
	.byte		"ctrlRateInstanceIndex"
	.byte		0
	.4byte		.L6782
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L702:
	.sleb128	15
	.byte		"isControlledByThisBlock"
	.byte		0
	.4byte		.L6284
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L703:
	.sleb128	15
	.byte		"nRateIndices"
	.byte		0
	.4byte		.L6783
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L704:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L6784
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.sleb128	0
.L6781:
.L6774:
	.sleb128	14
	.4byte		.L6351
	.uleb128	684
	.4byte		.L6786-.L2
	.byte		"_ssPortInfo2"
	.byte		0
	.uleb128	40
.L692:
	.sleb128	15
	.byte		"inputs"
	.byte		0
	.4byte		.L6787
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L693:
	.sleb128	15
	.byte		"outputs"
	.byte		0
	.4byte		.L6789
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L694:
	.sleb128	15
	.byte		"inputUnits"
	.byte		0
	.4byte		.L6791
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L695:
	.sleb128	15
	.byte		"outputUnits"
	.byte		0
	.4byte		.L6793
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L696:
	.sleb128	15
	.byte		"inputDimsConstraint"
	.byte		0
	.4byte		.L6795
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L697:
	.sleb128	15
	.byte		"outputDimsConstraint"
	.byte		0
	.4byte		.L6797
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L698:
	.sleb128	15
	.byte		"inputCoSimAttribute"
	.byte		0
	.4byte		.L6799
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L699:
	.sleb128	15
	.byte		"outputCoSimAttribute"
	.byte		0
	.4byte		.L6801
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L700:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L6803
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.sleb128	0
.L6786:
.L6802:
	.sleb128	14
	.4byte		.L6351
	.uleb128	676
	.4byte		.L6805-.L2
	.byte		"_ssOutPortCoSimAttribute"
	.byte		0
	.uleb128	1
.L691:
	.sleb128	15
	.byte		"isContinuousQuantity"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6805:
.L6800:
	.sleb128	14
	.4byte		.L6351
	.uleb128	669
	.4byte		.L6806-.L2
	.byte		"_ssInPortCoSimAttribute"
	.byte		0
	.uleb128	1
.L690:
	.sleb128	15
	.byte		"isContinuousQuantity"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6806:
.L6798:
	.sleb128	14
	.4byte		.L6351
	.uleb128	661
	.4byte		.L6807-.L2
	.byte		"_ssOutPortDimsConstraint"
	.byte		0
	.uleb128	8
.L688:
	.sleb128	15
	.byte		"type"
	.byte		0
	.4byte		.L6808
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L689:
	.sleb128	15
	.byte		"size"
	.byte		0
	.4byte		.L6726
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L6807:
.L6796:
	.sleb128	14
	.4byte		.L6351
	.uleb128	653
	.4byte		.L6810-.L2
	.byte		"_ssInPortDimsConstraint"
	.byte		0
	.uleb128	8
.L686:
	.sleb128	15
	.byte		"type"
	.byte		0
	.4byte		.L6808
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L687:
	.sleb128	15
	.byte		"size"
	.byte		0
	.4byte		.L6726
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L6810:
	.section	.debug_info,,n
.L6809:
	.sleb128	19
	.4byte		.L6811-.L2
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
.L6811:
.L6794:
	.sleb128	14
	.4byte		.L6351
	.uleb128	637
	.4byte		.L6812-.L2
	.byte		"_ssOutPortUnit"
	.byte		0
	.uleb128	4
.L679:
	.sleb128	15
	.byte		"unitId"
	.byte		0
	.4byte		.L6813
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6812:
.L6792:
	.sleb128	14
	.4byte		.L6351
	.uleb128	630
	.4byte		.L6814-.L2
	.byte		"_ssInPortUnit"
	.byte		0
	.uleb128	4
.L678:
	.sleb128	15
	.byte		"unitId"
	.byte		0
	.4byte		.L6813
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6814:
.L6790:
	.sleb128	14
	.4byte		.L6351
	.uleb128	622
	.4byte		.L6815-.L2
	.byte		"_ssOutPortVarDims"
	.byte		0
	.uleb128	36
.L676:
	.sleb128	15
	.byte		"portVarDims"
	.byte		0
	.4byte		.L6745
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L677:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L6816
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L6815:
.L6788:
	.sleb128	14
	.4byte		.L6351
	.uleb128	614
	.4byte		.L6818-.L2
	.byte		"_ssInPortVarDims"
	.byte		0
	.uleb128	36
.L674:
	.sleb128	15
	.byte		"portVarDims"
	.byte		0
	.4byte		.L6819
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L675:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L6820
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L6818:
.L6340:
	.sleb128	14
	.4byte		.L6351
	.uleb128	594
	.4byte		.L6822-.L2
	.byte		"_ssWork"
	.byte		0
	.uleb128	32
.L666:
	.sleb128	15
	.byte		"iWork"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L667:
	.sleb128	15
	.byte		"rWork"
	.byte		0
	.4byte		.L6283
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L668:
	.sleb128	15
	.byte		"pWork"
	.byte		0
	.4byte		.L6718
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L669:
	.sleb128	15
	.byte		"modeVector"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L670:
	.sleb128	15
	.byte		"userData"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L671:
	.sleb128	15
	.byte		"dWork"
	.byte		0
	.4byte		.L6823
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L672:
	.sleb128	15
	.byte		"dWorkAux"
	.byte		0
	.4byte		.L6824
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L673:
	.sleb128	15
	.byte		"localMdlInfo"
	.byte		0
	.4byte		.L6826
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.sleb128	0
.L6822:
.L6827:
	.sleb128	14
	.4byte		.L6351
	.uleb128	607
	.4byte		.L6828-.L2
	.byte		"_ssLocalMdlInfo"
	.byte		0
	.uleb128	128
.L1185:
	.sleb128	15
	.byte		"ownerBd"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1186:
	.sleb128	15
	.byte		"rtp"
	.byte		0
	.4byte		.L6283
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1187:
	.sleb128	15
	.byte		"blockIO"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1188:
	.sleb128	15
	.byte		"blockIOVarDims"
	.byte		0
	.4byte		.L6745
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1189:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L6829
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L6828:
.L6823:
	.sleb128	17
	.4byte		.L6831-.L2
	.uleb128	4
.L664:
	.sleb128	15
	.byte		"sfcn"
	.byte		0
	.4byte		.L6832
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L665:
	.sleb128	15
	.byte		"root"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6831:
.L6338:
	.sleb128	14
	.4byte		.L6351
	.uleb128	578
	.4byte		.L6834-.L2
	.byte		"_ssSFcnParams"
	.byte		0
	.uleb128	20
.L659:
	.sleb128	15
	.byte		"dlgNum"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L660:
	.sleb128	15
	.byte		"dlgParams"
	.byte		0
	.4byte		.L6714
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L661:
	.sleb128	15
	.byte		"dlgAttribs"
	.byte		0
	.4byte		.L6835
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L662:
	.sleb128	15
	.byte		"numRtp"
	.byte		0
	.4byte		.L6836
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L663:
	.sleb128	15
	.byte		"rtp"
	.byte		0
	.4byte		.L6837
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L6834:
.L6836:
	.sleb128	17
	.4byte		.L6841-.L2
	.uleb128	4
.L657:
	.sleb128	15
	.byte		"numRtp"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L658:
	.sleb128	15
	.byte		"placeholder"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6841:
.L6337:
	.sleb128	14
	.4byte		.L6351
	.uleb128	553
	.4byte		.L6842-.L2
	.byte		"_ssPortInfo"
	.byte		0
	.uleb128	24
.L649:
	.sleb128	15
	.byte		"regNumInputPortsFcn"
	.byte		0
	.4byte		.L6843
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L650:
	.sleb128	15
	.byte		"regNumInputPortsFcnArg"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L651:
	.sleb128	15
	.byte		"regNumOutputPortsFcn"
	.byte		0
	.4byte		.L6847
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L652:
	.sleb128	15
	.byte		"regNumOutputPortsFcnArg"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L653:
	.sleb128	15
	.byte		"inputs"
	.byte		0
	.4byte		.L6851
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L654:
	.sleb128	15
	.byte		"outputs"
	.byte		0
	.4byte		.L6853
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.sleb128	0
.L6842:
.L6854:
	.sleb128	14
	.4byte		.L6351
	.uleb128	515
	.4byte		.L6855-.L2
	.byte		"_ssPortOutputs"
	.byte		0
	.uleb128	48
.L637:
	.sleb128	15
	.byte		"width"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L638:
	.sleb128	15
	.byte		"dataTypeId"
	.byte		0
	.4byte		.L6531
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L639:
	.sleb128	15
	.byte		"complexSignal"
	.byte		0
	.4byte		.L6591
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L640:
	.sleb128	15
	.byte		"signalVect"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L641:
	.sleb128	15
	.byte		"connected"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L642:
	.sleb128	15
	.byte		"attributes"
	.byte		0
	.4byte		.L6856
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L643:
	.sleb128	15
	.byte		"sampleTime"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L644:
	.sleb128	15
	.byte		"offsetTime"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L645:
	.sleb128	15
	.byte		"dims"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L646:
	.sleb128	15
	.byte		"sampleTimeIndex"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L647:
	.sleb128	15
	.byte		"icPrmIdxPlus1"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L648:
	.sleb128	15
	.byte		"numDims"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.sleb128	0
.L6855:
.L6856:
	.sleb128	16
	.4byte		.L6857-.L2
	.uleb128	4
.L623:
	.sleb128	18
	.byte		"optimOpts"
	.byte		0
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
	.uleb128	4
	.byte		0xd
	.byte		0x13
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6857:
.L6852:
	.sleb128	14
	.4byte		.L6351
	.uleb128	475
	.4byte		.L6858-.L2
	.byte		"_ssPortInputs"
	.byte		0
	.uleb128	52
.L610:
	.sleb128	15
	.byte		"width"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L611:
	.sleb128	15
	.byte		"directFeedThrough"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L612:
	.sleb128	15
	.byte		"dataTypeId"
	.byte		0
	.4byte		.L6531
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L613:
	.sleb128	15
	.byte		"complexSignal"
	.byte		0
	.4byte		.L6591
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L614:
	.sleb128	15
	.byte		"signal"
	.byte		0
	.4byte		.L6859
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L615:
	.sleb128	15
	.byte		"connected"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L616:
	.sleb128	15
	.byte		"attributes"
	.byte		0
	.4byte		.L6860
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L617:
	.sleb128	15
	.byte		"sampleTime"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L618:
	.sleb128	15
	.byte		"offsetTime"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L619:
	.sleb128	15
	.byte		"dims"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L620:
	.sleb128	15
	.byte		"bufferDstPort"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L621:
	.sleb128	15
	.byte		"sampleTimeIndex"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L622:
	.sleb128	15
	.byte		"numDims"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.sleb128	0
.L6858:
.L6860:
	.sleb128	16
	.4byte		.L6861-.L2
	.uleb128	4
.L598:
	.sleb128	18
	.byte		"overWritable"
	.byte		0
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
	.uleb128	4
	.byte		0x10
	.byte		0x10
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6861:
.L6859:
	.sleb128	17
	.4byte		.L6862-.L2
	.uleb128	4
.L596:
	.sleb128	15
	.byte		"vect"
	.byte		0
	.4byte		.L6279
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L597:
	.sleb128	15
	.byte		"ptrs"
	.byte		0
	.4byte		.L6863
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6862:
.L6825:
	.sleb128	14
	.4byte		.L6351
	.uleb128	433
	.4byte		.L6866-.L2
	.byte		"_ssDWorkAuxRecord"
	.byte		0
	.uleb128	48
.L587:
	.sleb128	15
	.byte		"rtwIdentifier"
	.byte		0
	.4byte		.L6738
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L588:
	.sleb128	15
	.byte		"rtwStorageClass"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L589:
	.sleb128	15
	.byte		"rtwTypeQualifier"
	.byte		0
	.4byte		.L6738
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L590:
	.sleb128	15
	.byte		"flags"
	.byte		0
	.4byte		.L6867
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L591:
	.sleb128	15
	.byte		"icPrmIdxPlus1"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L592:
	.sleb128	15
	.byte		"bitFieldWidth"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L593:
	.sleb128	15
	.byte		"unusedInts"
	.byte		0
	.4byte		.L6868
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L594:
	.sleb128	15
	.byte		"resolvedSignalObject"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L595:
	.sleb128	15
	.byte		"unusedPtrs"
	.byte		0
	.4byte		.L6870
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.sleb128	0
.L6866:
.L6867:
	.sleb128	16
	.4byte		.L6872-.L2
	.uleb128	4
.L578:
	.sleb128	18
	.byte		"DisableBoundsChecking"
	.byte		0
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
	.uleb128	4
	.byte		0x10
	.byte		0x10
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6872:
.L6336:
	.sleb128	14
	.4byte		.L6351
	.uleb128	271
	.4byte		.L6873-.L2
	.byte		"_ssSizes"
	.byte		0
	.uleb128	152
.L545:
	.sleb128	15
	.byte		"numContStates"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L546:
	.sleb128	15
	.byte		"numDiscStates"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L547:
	.sleb128	15
	.byte		"out"
	.byte		0
	.4byte		.L6874
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L548:
	.sleb128	15
	.byte		"in"
	.byte		0
	.4byte		.L6875
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L549:
	.sleb128	15
	.byte		"mexApiInt1"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L550:
	.sleb128	15
	.byte		"sysDirFeedThrough"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L551:
	.sleb128	15
	.byte		"numSampleTimes"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L552:
	.sleb128	15
	.byte		"numSFcnParams"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L553:
	.sleb128	15
	.byte		"numIWork"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L554:
	.sleb128	15
	.byte		"numRWork"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L555:
	.sleb128	15
	.byte		"numPWork"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L556:
	.sleb128	15
	.byte		"numBlocks"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L557:
	.sleb128	15
	.byte		"numSFunctions"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L558:
	.sleb128	15
	.byte		"numBlockIO"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L559:
	.sleb128	15
	.byte		"numBlockParams"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L560:
	.sleb128	15
	.byte		"checksums"
	.byte		0
	.4byte		.L6876
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L561:
	.sleb128	15
	.byte		"simStructVer"
	.byte		0
	.4byte		.L4920
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L562:
	.sleb128	15
	.byte		"numNonsampledZCs"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L563:
	.sleb128	15
	.byte		"numZCEvents"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L564:
	.sleb128	15
	.byte		"numModes"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L565:
	.sleb128	15
	.byte		"options"
	.byte		0
	.4byte		.L4916
	.sleb128	2
	.byte		0x23
	.uleb128	92
.L566:
	.sleb128	15
	.byte		"sizeofY"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	96
.L567:
	.sleb128	15
	.byte		"sizeofU"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	100
.L568:
	.sleb128	15
	.byte		"sizeofBlockIO"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	104
.L569:
	.sleb128	15
	.byte		"sizeofGlobalBlockIO"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	108
.L570:
	.sleb128	15
	.byte		"numDWork"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	112
.L571:
	.sleb128	15
	.byte		"sizeofDWork"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	116
.L572:
	.sleb128	15
	.byte		"RTWGeneratedSFcn"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	120
.L573:
	.sleb128	15
	.byte		"flags"
	.byte		0
	.4byte		.L6878
	.sleb128	2
	.byte		0x23
	.uleb128	124
.L574:
	.sleb128	15
	.byte		"numJacobianNzMax"
	.byte		0
	.4byte		.L5277
	.sleb128	3
	.byte		0x23
	.uleb128	128
.L575:
	.sleb128	15
	.byte		"rtModel"
	.byte		0
	.4byte		.L5279
	.sleb128	3
	.byte		0x23
	.uleb128	132
.L576:
	.sleb128	15
	.byte		"constBlockIO"
	.byte		0
	.4byte		.L6279
	.sleb128	3
	.byte		0x23
	.uleb128	136
.L577:
	.sleb128	15
	.byte		"reservedForFuture"
	.byte		0
	.4byte		.L6879
	.sleb128	3
	.byte		0x23
	.uleb128	140
	.sleb128	0
.L6873:
.L6878:
	.sleb128	16
	.4byte		.L6881-.L2
	.uleb128	4
.L523:
	.sleb128	18
	.byte		"hasMdlDimensionsFcn"
	.byte		0
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
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
	.4byte		.L6366
	.uleb128	4
	.byte		0x3
	.byte		0x1d
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6881:
.L6875:
	.sleb128	17
	.4byte		.L6882-.L2
	.uleb128	4
.L521:
	.sleb128	15
	.byte		"numInputPorts"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L522:
	.sleb128	15
	.byte		"numU"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6882:
.L6874:
	.sleb128	17
	.4byte		.L6883-.L2
	.uleb128	4
.L519:
	.sleb128	15
	.byte		"numOutputPorts"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L520:
	.sleb128	15
	.byte		"numY"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6883:
.L6672:
	.sleb128	14
	.4byte		.L6351
	.uleb128	250
	.4byte		.L6884-.L2
	.byte		"ssSparseMatrixInfo_tag"
	.byte		0
	.uleb128	24
.L513:
	.sleb128	15
	.byte		"mRows"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L514:
	.sleb128	15
	.byte		"nCols"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L515:
	.sleb128	15
	.byte		"nzMax"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L516:
	.sleb128	15
	.byte		"Ir"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L517:
	.sleb128	15
	.byte		"Jc"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L518:
	.sleb128	15
	.byte		"Pr"
	.byte		0
	.4byte		.L6283
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.sleb128	0
.L6884:
.L6425:
	.sleb128	19
	.4byte		.L6885-.L2
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
.L6885:
.L6459:
	.sleb128	19
	.4byte		.L6886-.L2
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
.L6886:
.L6465:
	.sleb128	19
	.4byte		.L6887-.L2
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
.L6887:
.L6840:
	.sleb128	14
	.4byte		.L6888
	.uleb128	219
	.4byte		.L6889-.L2
	.byte		"ssParamRec_tag"
	.byte		0
	.uleb128	44
.L460:
	.sleb128	15
	.byte		"name"
	.byte		0
	.4byte		.L6421
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L461:
	.sleb128	15
	.byte		"nDimensions"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L462:
	.sleb128	15
	.byte		"dimensions"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L463:
	.sleb128	15
	.byte		"dataTypeId"
	.byte		0
	.4byte		.L6531
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L464:
	.sleb128	15
	.byte		"complexSignal"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L465:
	.sleb128	15
	.byte		"data"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L466:
	.sleb128	15
	.byte		"dataAttributes"
	.byte		0
	.4byte		.L6279
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L467:
	.sleb128	15
	.byte		"nDlgParamIndices"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L468:
	.sleb128	15
	.byte		"dlgParamIndices"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L469:
	.sleb128	15
	.byte		"transformed"
	.byte		0
	.4byte		.L6890
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L470:
	.sleb128	15
	.byte		"outputAsMatrix"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.sleb128	0
.L6889:
.L6891:
	.sleb128	19
	.4byte		.L6892-.L2
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
.L6892:
.L6394:
	.sleb128	19
	.4byte		.L6893-.L2
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
.L6893:
.L6744:
	.sleb128	19
	.4byte		.L6894-.L2
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
.L6894:
.L6362:
	.sleb128	14
	.4byte		.L6895
	.uleb128	284
	.4byte		.L6896-.L2
	.byte		"SparseHeader_Tag"
	.byte		0
	.uleb128	24
.L267:
	.sleb128	15
	.byte		"mRows"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L268:
	.sleb128	15
	.byte		"nCols"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L269:
	.sleb128	15
	.byte		"nzMax"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L270:
	.sleb128	15
	.byte		"Ir"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L271:
	.sleb128	15
	.byte		"Jc"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L272:
	.sleb128	15
	.byte		"Pr"
	.byte		0
	.4byte		.L6283
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.sleb128	0
.L6896:
.L6833:
	.sleb128	14
	.4byte		.L6895
	.uleb128	265
	.4byte		.L6897-.L2
	.byte		"_ssDWorkRecord"
	.byte		0
	.uleb128	24
.L256:
	.sleb128	15
	.byte		"width"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L257:
	.sleb128	15
	.byte		"dataTypeId"
	.byte		0
	.4byte		.L6531
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L258:
	.sleb128	15
	.byte		"complexSignal"
	.byte		0
	.4byte		.L6591
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L259:
	.sleb128	15
	.byte		"array"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L260:
	.sleb128	15
	.byte		"name"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L261:
	.sleb128	15
	.byte		"usedAs"
	.byte		0
	.4byte		.L6898
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.sleb128	0
.L6897:
.L6899:
	.sleb128	19
	.4byte		.L6900-.L2
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
.L6900:
.L6653:
	.sleb128	14
	.4byte		.L6895
	.uleb128	214
	.4byte		.L6901-.L2
	.byte		"DimsInfo_tag"
	.byte		0
	.uleb128	16
.L248:
	.sleb128	15
	.byte		"width"
	.byte		0
	.4byte		.L5278
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L249:
	.sleb128	15
	.byte		"numDims"
	.byte		0
	.4byte		.L5278
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L250:
	.sleb128	15
	.byte		"dims"
	.byte		0
	.4byte		.L6745
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L251:
	.sleb128	15
	.byte		"nextSigDims"
	.byte		0
	.4byte		.L6902
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.sleb128	0
.L6901:
.L6277:
	.sleb128	14
	.4byte		.L6903
	.uleb128	44
	.4byte		.L6904-.L2
	.byte		"_ssSolverInfo_tag"
	.byte		0
	.uleb128	208
.L183:
	.sleb128	15
	.byte		"rtModelPtr"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L184:
	.sleb128	15
	.byte		"simTimeStepPtr"
	.byte		0
	.4byte		.L6905
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L185:
	.sleb128	15
	.byte		"solverData"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L186:
	.sleb128	15
	.byte		"solverName"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L187:
	.sleb128	15
	.byte		"isVariableStepSolver"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L188:
	.sleb128	15
	.byte		"solverNeedsReset"
	.byte		0
	.4byte		.L4969
	.sleb128	2
	.byte		0x23
	.uleb128	17
.L189:
	.sleb128	15
	.byte		"solverMode"
	.byte		0
	.4byte		.L6756
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L190:
	.sleb128	15
	.byte		"solverStopTime"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L191:
	.sleb128	15
	.byte		"stepSizePtr"
	.byte		0
	.4byte		.L6293
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L192:
	.sleb128	15
	.byte		"minStepSize"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L193:
	.sleb128	15
	.byte		"maxStepSize"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L194:
	.sleb128	15
	.byte		"fixedStepSize"
	.byte		0
	.4byte		.L5273
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L195:
	.sleb128	15
	.byte		"solverShapePreserveControl"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L196:
	.sleb128	15
	.byte		"solverMaxConsecutiveMinStep"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L197:
	.sleb128	15
	.byte		"maxNumMinSteps"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L198:
	.sleb128	15
	.byte		"solverMaxOrder"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L199:
	.sleb128	15
	.byte		"solverConsecutiveZCsStepRelTol"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L200:
	.sleb128	15
	.byte		"solverMaxConsecutiveZCs"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L201:
	.sleb128	15
	.byte		"solverExtrapolationOrder"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L202:
	.sleb128	15
	.byte		"solverNumberNewtonIterations"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L203:
	.sleb128	15
	.byte		"solverRefineFactor"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L204:
	.sleb128	15
	.byte		"solverRelTol"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L205:
	.sleb128	15
	.byte		"unused_real_T_1"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L206:
	.sleb128	15
	.byte		"dXPtr"
	.byte		0
	.4byte		.L6906
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L207:
	.sleb128	15
	.byte		"tPtr"
	.byte		0
	.4byte		.L6907
	.sleb128	2
	.byte		0x23
	.uleb128	92
.L208:
	.sleb128	15
	.byte		"numContStatesPtr"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	96
.L209:
	.sleb128	15
	.byte		"contStatesPtr"
	.byte		0
	.4byte		.L6906
	.sleb128	2
	.byte		0x23
	.uleb128	100
.L210:
	.sleb128	15
	.byte		"numPeriodicContStatesPtr"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	104
.L211:
	.sleb128	15
	.byte		"periodicContStateIndicesPtr"
	.byte		0
	.4byte		.L6908
	.sleb128	2
	.byte		0x23
	.uleb128	108
.L212:
	.sleb128	15
	.byte		"periodicContStateRangesPtr"
	.byte		0
	.4byte		.L6906
	.sleb128	2
	.byte		0x23
	.uleb128	112
.L213:
	.sleb128	15
	.byte		"zcSignalVector"
	.byte		0
	.4byte		.L6283
	.sleb128	2
	.byte		0x23
	.uleb128	116
.L214:
	.sleb128	15
	.byte		"zcEventsVector"
	.byte		0
	.4byte		.L6373
	.sleb128	2
	.byte		0x23
	.uleb128	120
.L215:
	.sleb128	15
	.byte		"zcSignalAttrib"
	.byte		0
	.4byte		.L6373
	.sleb128	2
	.byte		0x23
	.uleb128	124
.L216:
	.sleb128	15
	.byte		"zcSignalVectorLength"
	.byte		0
	.4byte		.L5277
	.sleb128	3
	.byte		0x23
	.uleb128	128
.L217:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L6373
	.sleb128	3
	.byte		0x23
	.uleb128	132
.L218:
	.sleb128	15
	.byte		"foundContZcEvents"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	136
.L219:
	.sleb128	15
	.byte		"isAtLeftPostOfContZcEvent"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	137
.L220:
	.sleb128	15
	.byte		"isAtRightPostOfContZcEvent"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	138
.L221:
	.sleb128	15
	.byte		"adaptiveZcDetection"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	139
.L222:
	.sleb128	15
	.byte		"numZcSignals"
	.byte		0
	.4byte		.L5277
	.sleb128	3
	.byte		0x23
	.uleb128	140
.L223:
	.sleb128	15
	.byte		"stateProjection"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	144
.L224:
	.sleb128	15
	.byte		"robustResetMethod"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	145
.L225:
	.sleb128	15
	.byte		"updateJacobianAtReset"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	146
.L226:
	.sleb128	15
	.byte		"consistencyChecking"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	147
.L227:
	.sleb128	15
	.byte		"massMatrixType"
	.byte		0
	.4byte		.L6669
	.sleb128	3
	.byte		0x23
	.uleb128	148
.L228:
	.sleb128	15
	.byte		"massMatrixNzMax"
	.byte		0
	.4byte		.L5277
	.sleb128	3
	.byte		0x23
	.uleb128	152
.L229:
	.sleb128	15
	.byte		"massMatrixIr"
	.byte		0
	.4byte		.L5281
	.sleb128	3
	.byte		0x23
	.uleb128	156
.L230:
	.sleb128	15
	.byte		"massMatrixJc"
	.byte		0
	.4byte		.L5281
	.sleb128	3
	.byte		0x23
	.uleb128	160
.L231:
	.sleb128	15
	.byte		"massMatrixPr"
	.byte		0
	.4byte		.L6283
	.sleb128	3
	.byte		0x23
	.uleb128	164
.L232:
	.sleb128	15
	.byte		"errStatusPtr"
	.byte		0
	.4byte		.L6909
	.sleb128	3
	.byte		0x23
	.uleb128	168
.L233:
	.sleb128	15
	.byte		"modelMethodsPtr"
	.byte		0
	.4byte		.L6910
	.sleb128	3
	.byte		0x23
	.uleb128	172
.L234:
	.sleb128	15
	.byte		"zcThreshold"
	.byte		0
	.4byte		.L5274
	.sleb128	3
	.byte		0x23
	.uleb128	176
.L235:
	.sleb128	15
	.byte		"zeroCrossAlgorithm"
	.byte		0
	.4byte		.L5277
	.sleb128	3
	.byte		0x23
	.uleb128	180
.L236:
	.sleb128	15
	.byte		"consecutiveZCsError"
	.byte		0
	.4byte		.L5277
	.sleb128	3
	.byte		0x23
	.uleb128	184
.L237:
	.sleb128	15
	.byte		"CTOutputIncnstWithState"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	188
.L238:
	.sleb128	15
	.byte		"isComputingJacobian"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	189
.L239:
	.sleb128	15
	.byte		"solverJacobianMethodControl"
	.byte		0
	.4byte		.L6913
	.sleb128	3
	.byte		0x23
	.uleb128	192
.L240:
	.sleb128	15
	.byte		"ignoredZcDiagnostic"
	.byte		0
	.4byte		.L5277
	.sleb128	3
	.byte		0x23
	.uleb128	196
.L241:
	.sleb128	15
	.byte		"maskedZcDiagnostic"
	.byte		0
	.4byte		.L5277
	.sleb128	3
	.byte		0x23
	.uleb128	200
.L242:
	.sleb128	15
	.byte		"isOutputMethodComputed"
	.byte		0
	.4byte		.L4969
	.sleb128	3
	.byte		0x23
	.uleb128	204
	.sleb128	0
.L6904:
.L6914:
	.sleb128	19
	.4byte		.L6915-.L2
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
.L6915:
.L6912:
	.sleb128	14
	.4byte		.L6916
	.uleb128	62
	.4byte		.L6917-.L2
	.byte		"_RTWRTModelMethodsInfo_tag"
	.byte		0
	.uleb128	44
.L163:
	.sleb128	15
	.byte		"rtModelPtr"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L164:
	.sleb128	15
	.byte		"rtmInitSizesFcn"
	.byte		0
	.4byte		.L6918
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L165:
	.sleb128	15
	.byte		"rtmInitSampTimesFcn"
	.byte		0
	.4byte		.L6922
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L166:
	.sleb128	15
	.byte		"rtmStartFcn"
	.byte		0
	.4byte		.L6926
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L167:
	.sleb128	15
	.byte		"rtmOutputsFcn"
	.byte		0
	.4byte		.L6930
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L168:
	.sleb128	15
	.byte		"rtmUpdateFcn"
	.byte		0
	.4byte		.L6934
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L169:
	.sleb128	15
	.byte		"rtmDervisFcn"
	.byte		0
	.4byte		.L6938
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L170:
	.sleb128	15
	.byte		"rtmProjectionFcn"
	.byte		0
	.4byte		.L6942
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L171:
	.sleb128	15
	.byte		"rtmMassMatrixFcn"
	.byte		0
	.4byte		.L6946
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L172:
	.sleb128	15
	.byte		"rtmForcingFunctionFcn"
	.byte		0
	.4byte		.L6950
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L173:
	.sleb128	15
	.byte		"rtmTerminateFcn"
	.byte		0
	.4byte		.L6954
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.sleb128	0
.L6917:
.L6292:
	.sleb128	19
	.4byte		.L6958-.L2
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
.L6958:
.L6757:
	.sleb128	19
	.4byte		.L6959-.L2
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
.L6959:
.L6670:
	.sleb128	19
	.4byte		.L6960-.L2
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
.L6960:
.L6274:
	.sleb128	14
	.4byte		.L6961
	.uleb128	15
	.4byte		.L6962-.L2
	.byte		"_RTWExtModeInfo_tag"
	.byte		0
	.uleb128	20
.L149:
	.sleb128	15
	.byte		"subSysActiveVectorAddr"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L150:
	.sleb128	15
	.byte		"checksumsPtr"
	.byte		0
	.4byte		.L4924
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L151:
	.sleb128	15
	.byte		"mdlMappingInfoPtr"
	.byte		0
	.4byte		.L6963
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L152:
	.sleb128	15
	.byte		"tPtr"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L153:
	.sleb128	15
	.byte		"tFinalTicks"
	.byte		0
	.4byte		.L4920
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L6962:
.L6736:
	.sleb128	14
	.4byte		.L6964
	.uleb128	81
	.4byte		.L6965-.L2
	.byte		"_RTWLogInfo_tag"
	.byte		0
	.uleb128	72
.L131:
	.sleb128	15
	.byte		"logInfo"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L132:
	.sleb128	15
	.byte		"logXSignalPtrs"
	.byte		0
	.4byte		.L6966
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L133:
	.sleb128	15
	.byte		"logYSignalPtrs"
	.byte		0
	.4byte		.L6967
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L134:
	.sleb128	15
	.byte		"logFormat"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L135:
	.sleb128	15
	.byte		"logMaxRows"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L136:
	.sleb128	15
	.byte		"logDecimation"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L137:
	.sleb128	15
	.byte		"logVarNameModifier"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L138:
	.sleb128	15
	.byte		"logT"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L139:
	.sleb128	15
	.byte		"logX"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L140:
	.sleb128	15
	.byte		"logXFinal"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L141:
	.sleb128	15
	.byte		"logY"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L142:
	.sleb128	15
	.byte		"logSL"
	.byte		0
	.4byte		.L6264
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L143:
	.sleb128	15
	.byte		"logXSignalInfo"
	.byte		0
	.4byte		.L6968
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L144:
	.sleb128	15
	.byte		"logYSignalInfo"
	.byte		0
	.4byte		.L6969
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L145:
	.sleb128	15
	.byte		"mdlLogData"
	.byte		0
	.4byte		.L6970
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L146:
	.sleb128	15
	.byte		"mdlLogDataIfInInterval"
	.byte		0
	.4byte		.L6973
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L147:
	.sleb128	15
	.byte		"mmi"
	.byte		0
	.4byte		.L6279
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L148:
	.sleb128	15
	.byte		"loggingInterval"
	.byte		0
	.4byte		.L5279
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.sleb128	0
.L6965:
.L6969:
	.sleb128	17
	.4byte		.L6976-.L2
	.uleb128	4
.L129:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L6977
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L130:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L6981
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6976:
.L6968:
	.sleb128	17
	.4byte		.L6982-.L2
	.uleb128	4
.L127:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L6977
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L128:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L6981
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6982:
.L6967:
	.sleb128	17
	.4byte		.L6983-.L2
	.uleb128	4
.L125:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L6984
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L126:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L6989
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6983:
.L6966:
	.sleb128	17
	.4byte		.L6991-.L2
	.uleb128	4
.L123:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L6984
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L124:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L6989
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6991:
.L6980:
	.sleb128	14
	.4byte		.L6964
	.uleb128	39
	.4byte		.L6992-.L2
	.byte		"RTWLogSignalInfo_tag"
	.byte		0
	.uleb128	76
.L104:
	.sleb128	15
	.byte		"numSignals"
	.byte		0
	.4byte		.L5277
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L105:
	.sleb128	15
	.byte		"numCols"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L106:
	.sleb128	15
	.byte		"numDims"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L107:
	.sleb128	15
	.byte		"dims"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L108:
	.sleb128	15
	.byte		"isVarDims"
	.byte		0
	.4byte		.L6284
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L109:
	.sleb128	15
	.byte		"currSigDims"
	.byte		0
	.4byte		.L6718
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L110:
	.sleb128	15
	.byte		"currSigDimsSize"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L111:
	.sleb128	15
	.byte		"dataTypes"
	.byte		0
	.4byte		.L6993
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L112:
	.sleb128	15
	.byte		"complexSignals"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L113:
	.sleb128	15
	.byte		"frameData"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L114:
	.sleb128	15
	.byte		"preprocessingPtrs"
	.byte		0
	.4byte		.L6996
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L115:
	.sleb128	15
	.byte		"labels"
	.byte		0
	.4byte		.L7001
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L116:
	.sleb128	15
	.byte		"titles"
	.byte		0
	.4byte		.L6738
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L117:
	.sleb128	15
	.byte		"titleLengths"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L118:
	.sleb128	15
	.byte		"plotStyles"
	.byte		0
	.4byte		.L5281
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L119:
	.sleb128	15
	.byte		"blockNames"
	.byte		0
	.4byte		.L7002
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L120:
	.sleb128	15
	.byte		"stateNames"
	.byte		0
	.4byte		.L7003
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L121:
	.sleb128	15
	.byte		"crossMdlRef"
	.byte		0
	.4byte		.L6284
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L122:
	.sleb128	15
	.byte		"dataTypeConvert"
	.byte		0
	.4byte		.L7004
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.sleb128	0
.L6992:
.L7003:
	.sleb128	17
	.4byte		.L7007-.L2
	.uleb128	4
.L102:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L6909
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L103:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L7008
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7007:
.L7002:
	.sleb128	17
	.4byte		.L7009-.L2
	.uleb128	4
.L100:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L6909
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L101:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L7008
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7009:
.L7001:
	.sleb128	17
	.4byte		.L7010-.L2
	.uleb128	4
.L98:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L6909
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L99:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L7008
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L7010:
.L7006:
	.sleb128	14
	.4byte		.L6964
	.uleb128	23
	.4byte		.L7011-.L2
	.byte		"RTWLogDataTypeConvert_tag"
	.byte		0
	.uleb128	36
.L89:
	.sleb128	15
	.byte		"conversionNeeded"
	.byte		0
	.4byte		.L5278
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L90:
	.sleb128	15
	.byte		"dataTypeIdLoggingTo"
	.byte		0
	.4byte		.L6994
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L91:
	.sleb128	15
	.byte		"dataTypeIdOriginal"
	.byte		0
	.4byte		.L6531
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L92:
	.sleb128	15
	.byte		"bitsPerChunk"
	.byte		0
	.4byte		.L5278
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L93:
	.sleb128	15
	.byte		"numOfChunk"
	.byte		0
	.4byte		.L5278
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L94:
	.sleb128	15
	.byte		"isSigned"
	.byte		0
	.4byte		.L6366
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L95:
	.sleb128	15
	.byte		"fracSlope"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L96:
	.sleb128	15
	.byte		"fixedExp"
	.byte		0
	.4byte		.L5278
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L97:
	.sleb128	15
	.byte		"bias"
	.byte		0
	.4byte		.L5274
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.sleb128	0
.L7011:
.L6359:
	.sleb128	19
	.4byte		.L7012-.L2
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
.L7012:
.L6733:
	.sleb128	14
	.4byte		.L6895
	.uleb128	124
	.4byte		.L7013-.L2
	.byte		"_rtTimingBridge_tag"
	.byte		0
	.uleb128	28
.L74:
	.sleb128	15
	.byte		"nTasks"
	.byte		0
	.4byte		.L4916
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L75:
	.sleb128	15
	.byte		"clockTick"
	.byte		0
	.4byte		.L7014
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L76:
	.sleb128	15
	.byte		"clockTickH"
	.byte		0
	.4byte		.L7014
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L77:
	.sleb128	15
	.byte		"taskCounter"
	.byte		0
	.4byte		.L4924
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L78:
	.sleb128	15
	.byte		"taskTime"
	.byte		0
	.4byte		.L6906
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L79:
	.sleb128	15
	.byte		"rateTransition"
	.byte		0
	.4byte		.L7015
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L80:
	.sleb128	15
	.byte		"firstInitCond"
	.byte		0
	.4byte		.L6284
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.sleb128	0
.L7013:
.L6759:
	.sleb128	19
	.4byte		.L7016-.L2
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
.L7016:
.L6271:
	.sleb128	19
	.4byte		.L7017-.L2
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
.L7017:
.L6995:
	.sleb128	19
	.4byte		.L7018-.L2
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
.L7018:
	.section	.debug_info,,n
.L4917:
	.sleb128	21
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L4916:
	.sleb128	22
	.byte		"uint32_T"
	.byte		0
	.4byte		.L4917
	.section	.debug_info,,n
.L4915:
	.sleb128	23
	.4byte		.L4916
	.section	.debug_info,,n
.L4914:
	.sleb128	24
	.4byte		.L4915
.L4920:
	.sleb128	21
	.byte		"long"
	.byte		0
	.byte		0x5
	.byte		0x4
.L4919:
	.sleb128	22
	.byte		"int32_T"
	.byte		0
	.4byte		.L4920
.L4924:
	.sleb128	24
	.4byte		.L4916
.L4970:
	.sleb128	21
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L4969:
	.sleb128	22
	.byte		"boolean_T"
	.byte		0
	.4byte		.L4970
.L5275:
	.sleb128	21
	.byte		"float"
	.byte		0
	.byte		0x4
	.byte		0x4
.L5274:
	.sleb128	22
	.byte		"real_T"
	.byte		0
	.4byte		.L5275
.L5273:
	.sleb128	22
	.byte		"time_T"
	.byte		0
	.4byte		.L5274
.L5278:
	.sleb128	21
	.byte		"int"
	.byte		0
	.byte		0x5
	.byte		0x4
.L5277:
	.sleb128	22
	.byte		"int_T"
	.byte		0
	.4byte		.L5278
	.section	.debug_info,,n
.L5280:
	.sleb128	25
	.byte		"void"
	.byte		0
	.byte		0x0
.L5279:
	.sleb128	24
	.4byte		.L5280
.L5281:
	.sleb128	24
	.4byte		.L5277
.L5294:
	.sleb128	22
	.byte		"DW_Chart_ATV_T"
	.byte		0
	.4byte		.L5295
.L5293:
	.sleb128	24
	.4byte		.L5294
.L5304:
	.sleb128	22
	.byte		"B_Chart_ATV_T"
	.byte		0
	.4byte		.L5305
.L5303:
	.sleb128	24
	.4byte		.L5304
.L5314:
	.sleb128	21
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L5313:
	.sleb128	22
	.byte		"uint16_T"
	.byte		0
	.4byte		.L5314
.L5317:
	.sleb128	22
	.byte		"B_GestioneIbridoProceduraAvvi_T"
	.byte		0
	.4byte		.L5318
.L5316:
	.sleb128	24
	.4byte		.L5317
.L5399:
	.sleb128	22
	.byte		"uint8_T"
	.byte		0
	.4byte		.L4970
.L5418:
	.sleb128	22
	.byte		"int64m_T"
	.byte		0
	.4byte		.L5419
.L5424:
	.sleb128	22
	.byte		"int96m_T"
	.byte		0
	.4byte		.L5425
.L5438:
	.sleb128	21
	.byte		"short"
	.byte		0
	.byte		0x5
	.byte		0x2
.L5437:
	.sleb128	22
	.byte		"int16_T"
	.byte		0
	.4byte		.L5438
.L5446:
	.sleb128	22
	.byte		"U8"
	.byte		0
	.4byte		.L4970
	.section	.debug_info,,n
.L5444:
	.sleb128	26
	.4byte		.L5445-.L2
	.4byte		.L5446
	.section	.debug_info,,n
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5445:
.L5448:
	.sleb128	22
	.byte		"BOOL"
	.byte		0
	.4byte		.L4970
.L5453:
	.sleb128	22
	.byte		"F32"
	.byte		0
	.4byte		.L5275
.L5451:
	.sleb128	26
	.4byte		.L5452-.L2
	.4byte		.L5453
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5452:
.L5457:
	.sleb128	24
	.4byte		.L5453
.L5455:
	.sleb128	26
	.4byte		.L5456-.L2
	.4byte		.L5457
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5456:
.L5460:
	.sleb128	26
	.4byte		.L5461-.L2
	.4byte		.L5446
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5461:
.L5465:
	.sleb128	26
	.4byte		.L5466-.L2
	.4byte		.L5453
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5466:
.L5468:
	.sleb128	26
	.4byte		.L5469-.L2
	.4byte		.L5457
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5469:
.L5471:
	.sleb128	26
	.4byte		.L5472-.L2
	.4byte		.L5446
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5472:
.L5476:
	.sleb128	26
	.4byte		.L5477-.L2
	.4byte		.L5453
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5477:
.L5479:
	.sleb128	26
	.4byte		.L5480-.L2
	.4byte		.L5457
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5480:
.L5483:
	.sleb128	26
	.4byte		.L5484-.L2
	.4byte		.L5446
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5484:
.L5488:
	.sleb128	26
	.4byte		.L5489-.L2
	.4byte		.L5453
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5489:
.L5491:
	.sleb128	26
	.4byte		.L5492-.L2
	.4byte		.L5457
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5492:
.L5494:
	.sleb128	26
	.4byte		.L5495-.L2
	.4byte		.L5446
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5495:
.L5499:
	.sleb128	26
	.4byte		.L5500-.L2
	.4byte		.L5453
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5500:
.L5502:
	.sleb128	26
	.4byte		.L5503-.L2
	.4byte		.L5457
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5503:
.L5528:
	.sleb128	23
	.4byte		.L5446
.L5526:
	.sleb128	26
	.4byte		.L5527-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5527:
.L5525:
	.sleb128	23
	.4byte		.L5526
.L5531:
	.sleb128	26
	.4byte		.L5532-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5532:
.L5530:
	.sleb128	23
	.4byte		.L5531
.L5535:
	.sleb128	26
	.4byte		.L5536-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5536:
.L5534:
	.sleb128	23
	.4byte		.L5535
.L5539:
	.sleb128	26
	.4byte		.L5540-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5540:
.L5538:
	.sleb128	23
	.4byte		.L5539
.L5543:
	.sleb128	26
	.4byte		.L5544-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5544:
.L5542:
	.sleb128	23
	.4byte		.L5543
.L5549:
	.sleb128	23
	.4byte		.L5453
.L5547:
	.sleb128	26
	.4byte		.L5548-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5548:
.L5546:
	.sleb128	23
	.4byte		.L5547
.L5552:
	.sleb128	26
	.4byte		.L5553-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5553:
.L5551:
	.sleb128	23
	.4byte		.L5552
.L5556:
	.sleb128	26
	.4byte		.L5557-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5557:
.L5555:
	.sleb128	23
	.4byte		.L5556
.L5560:
	.sleb128	26
	.4byte		.L5561-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5561:
.L5559:
	.sleb128	23
	.4byte		.L5560
.L5568:
	.sleb128	26
	.4byte		.L5569-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5569:
.L5567:
	.sleb128	23
	.4byte		.L5568
.L5572:
	.sleb128	26
	.4byte		.L5573-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5573:
.L5571:
	.sleb128	23
	.4byte		.L5572
.L5576:
	.sleb128	26
	.4byte		.L5577-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5577:
.L5575:
	.sleb128	23
	.4byte		.L5576
.L5580:
	.sleb128	26
	.4byte		.L5581-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5581:
.L5579:
	.sleb128	23
	.4byte		.L5580
.L5584:
	.sleb128	26
	.4byte		.L5585-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5585:
.L5583:
	.sleb128	23
	.4byte		.L5584
.L5588:
	.sleb128	26
	.4byte		.L5589-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5589:
.L5587:
	.sleb128	23
	.4byte		.L5588
.L5592:
	.sleb128	26
	.4byte		.L5593-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5593:
.L5591:
	.sleb128	23
	.4byte		.L5592
.L5596:
	.sleb128	26
	.4byte		.L5597-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5597:
.L5595:
	.sleb128	23
	.4byte		.L5596
.L5600:
	.sleb128	26
	.4byte		.L5601-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5601:
.L5599:
	.sleb128	23
	.4byte		.L5600
.L5608:
	.sleb128	26
	.4byte		.L5609-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5609:
.L5607:
	.sleb128	23
	.4byte		.L5608
.L5612:
	.sleb128	26
	.4byte		.L5613-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5613:
.L5611:
	.sleb128	23
	.4byte		.L5612
.L5616:
	.sleb128	26
	.4byte		.L5617-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5617:
.L5615:
	.sleb128	23
	.4byte		.L5616
.L5620:
	.sleb128	26
	.4byte		.L5621-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5621:
.L5619:
	.sleb128	23
	.4byte		.L5620
.L5624:
	.sleb128	26
	.4byte		.L5625-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5625:
.L5623:
	.sleb128	23
	.4byte		.L5624
.L5628:
	.sleb128	26
	.4byte		.L5629-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5629:
.L5627:
	.sleb128	23
	.4byte		.L5628
.L5632:
	.sleb128	26
	.4byte		.L5633-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5633:
.L5631:
	.sleb128	23
	.4byte		.L5632
.L5636:
	.sleb128	26
	.4byte		.L5637-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5637:
.L5635:
	.sleb128	23
	.4byte		.L5636
.L5640:
	.sleb128	26
	.4byte		.L5641-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5641:
.L5639:
	.sleb128	23
	.4byte		.L5640
.L5648:
	.sleb128	26
	.4byte		.L5649-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5649:
.L5647:
	.sleb128	23
	.4byte		.L5648
.L5652:
	.sleb128	26
	.4byte		.L5653-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5653:
.L5651:
	.sleb128	23
	.4byte		.L5652
.L5656:
	.sleb128	26
	.4byte		.L5657-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5657:
.L5655:
	.sleb128	23
	.4byte		.L5656
.L5660:
	.sleb128	26
	.4byte		.L5661-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5661:
.L5659:
	.sleb128	23
	.4byte		.L5660
.L5664:
	.sleb128	26
	.4byte		.L5665-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5665:
.L5663:
	.sleb128	23
	.4byte		.L5664
.L5668:
	.sleb128	26
	.4byte		.L5669-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5669:
.L5667:
	.sleb128	23
	.4byte		.L5668
.L5672:
	.sleb128	26
	.4byte		.L5673-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5673:
.L5671:
	.sleb128	23
	.4byte		.L5672
.L5676:
	.sleb128	26
	.4byte		.L5677-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5677:
.L5675:
	.sleb128	23
	.4byte		.L5676
.L5680:
	.sleb128	26
	.4byte		.L5681-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5681:
.L5679:
	.sleb128	23
	.4byte		.L5680
.L5688:
	.sleb128	26
	.4byte		.L5689-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5689:
.L5687:
	.sleb128	23
	.4byte		.L5688
.L5692:
	.sleb128	26
	.4byte		.L5693-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5693:
.L5691:
	.sleb128	23
	.4byte		.L5692
.L5696:
	.sleb128	26
	.4byte		.L5697-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5697:
.L5695:
	.sleb128	23
	.4byte		.L5696
.L5700:
	.sleb128	26
	.4byte		.L5701-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5701:
.L5699:
	.sleb128	23
	.4byte		.L5700
.L5704:
	.sleb128	26
	.4byte		.L5705-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5705:
.L5703:
	.sleb128	23
	.4byte		.L5704
.L5708:
	.sleb128	26
	.4byte		.L5709-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5709:
.L5707:
	.sleb128	23
	.4byte		.L5708
.L5712:
	.sleb128	26
	.4byte		.L5713-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5713:
.L5711:
	.sleb128	23
	.4byte		.L5712
.L5716:
	.sleb128	26
	.4byte		.L5717-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5717:
.L5715:
	.sleb128	23
	.4byte		.L5716
.L5720:
	.sleb128	26
	.4byte		.L5721-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5721:
.L5719:
	.sleb128	23
	.4byte		.L5720
.L5761:
	.sleb128	26
	.4byte		.L5762-.L2
	.4byte		.L5446
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5762:
.L5766:
	.sleb128	26
	.4byte		.L5767-.L2
	.4byte		.L5453
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5767:
.L5769:
	.sleb128	26
	.4byte		.L5770-.L2
	.4byte		.L5457
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5770:
.L5772:
	.sleb128	26
	.4byte		.L5773-.L2
	.4byte		.L5446
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5773:
.L5777:
	.sleb128	26
	.4byte		.L5778-.L2
	.4byte		.L5453
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5778:
.L5780:
	.sleb128	26
	.4byte		.L5781-.L2
	.4byte		.L5457
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5781:
.L5783:
	.sleb128	26
	.4byte		.L5784-.L2
	.4byte		.L5446
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5784:
.L5786:
	.sleb128	22
	.byte		"U32"
	.byte		0
	.4byte		.L4917
.L5789:
	.sleb128	21
	.byte		"signed char"
	.byte		0
	.byte		0x6
	.byte		0x1
.L5788:
	.sleb128	22
	.byte		"S8"
	.byte		0
	.4byte		.L5789
.L5792:
	.sleb128	26
	.4byte		.L5793-.L2
	.4byte		.L5453
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5793:
.L5795:
	.sleb128	26
	.4byte		.L5796-.L2
	.4byte		.L5457
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5796:
.L5798:
	.sleb128	26
	.4byte		.L5799-.L2
	.4byte		.L5446
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5799:
.L5804:
	.sleb128	26
	.4byte		.L5805-.L2
	.4byte		.L5453
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5805:
.L5807:
	.sleb128	26
	.4byte		.L5808-.L2
	.4byte		.L5457
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5808:
.L5810:
	.sleb128	26
	.4byte		.L5811-.L2
	.4byte		.L5446
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5811:
.L5816:
	.sleb128	26
	.4byte		.L5817-.L2
	.4byte		.L5453
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5817:
.L5819:
	.sleb128	26
	.4byte		.L5820-.L2
	.4byte		.L5457
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5820:
.L5827:
	.sleb128	26
	.4byte		.L5828-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5828:
.L5826:
	.sleb128	23
	.4byte		.L5827
.L5831:
	.sleb128	26
	.4byte		.L5832-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5832:
.L5830:
	.sleb128	23
	.4byte		.L5831
.L5835:
	.sleb128	26
	.4byte		.L5836-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5836:
.L5834:
	.sleb128	23
	.4byte		.L5835
.L5839:
	.sleb128	26
	.4byte		.L5840-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5840:
.L5838:
	.sleb128	23
	.4byte		.L5839
.L5843:
	.sleb128	26
	.4byte		.L5844-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5844:
.L5842:
	.sleb128	23
	.4byte		.L5843
.L5847:
	.sleb128	26
	.4byte		.L5848-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5848:
.L5846:
	.sleb128	23
	.4byte		.L5847
.L5851:
	.sleb128	26
	.4byte		.L5852-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5852:
.L5850:
	.sleb128	23
	.4byte		.L5851
.L5855:
	.sleb128	26
	.4byte		.L5856-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5856:
.L5854:
	.sleb128	23
	.4byte		.L5855
.L5859:
	.sleb128	26
	.4byte		.L5860-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5860:
.L5858:
	.sleb128	23
	.4byte		.L5859
.L5867:
	.sleb128	26
	.4byte		.L5868-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5868:
.L5866:
	.sleb128	23
	.4byte		.L5867
.L5871:
	.sleb128	26
	.4byte		.L5872-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5872:
.L5870:
	.sleb128	23
	.4byte		.L5871
.L5875:
	.sleb128	26
	.4byte		.L5876-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5876:
.L5874:
	.sleb128	23
	.4byte		.L5875
.L5879:
	.sleb128	26
	.4byte		.L5880-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5880:
.L5878:
	.sleb128	23
	.4byte		.L5879
.L5883:
	.sleb128	26
	.4byte		.L5884-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5884:
.L5882:
	.sleb128	23
	.4byte		.L5883
.L5887:
	.sleb128	26
	.4byte		.L5888-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5888:
.L5886:
	.sleb128	23
	.4byte		.L5887
.L5891:
	.sleb128	26
	.4byte		.L5892-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5892:
.L5890:
	.sleb128	23
	.4byte		.L5891
.L5895:
	.sleb128	26
	.4byte		.L5896-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5896:
.L5894:
	.sleb128	23
	.4byte		.L5895
.L5899:
	.sleb128	26
	.4byte		.L5900-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5900:
.L5898:
	.sleb128	23
	.4byte		.L5899
.L5907:
	.sleb128	26
	.4byte		.L5908-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5908:
.L5906:
	.sleb128	23
	.4byte		.L5907
.L5911:
	.sleb128	26
	.4byte		.L5912-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5912:
.L5910:
	.sleb128	23
	.4byte		.L5911
.L5915:
	.sleb128	26
	.4byte		.L5916-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5916:
.L5914:
	.sleb128	23
	.4byte		.L5915
.L5919:
	.sleb128	26
	.4byte		.L5920-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5920:
.L5918:
	.sleb128	23
	.4byte		.L5919
.L5923:
	.sleb128	26
	.4byte		.L5924-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5924:
.L5922:
	.sleb128	23
	.4byte		.L5923
.L5927:
	.sleb128	26
	.4byte		.L5928-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5928:
.L5926:
	.sleb128	23
	.4byte		.L5927
.L5931:
	.sleb128	26
	.4byte		.L5932-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5932:
.L5930:
	.sleb128	23
	.4byte		.L5931
.L5935:
	.sleb128	26
	.4byte		.L5936-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5936:
.L5934:
	.sleb128	23
	.4byte		.L5935
.L5939:
	.sleb128	26
	.4byte		.L5940-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5940:
.L5938:
	.sleb128	23
	.4byte		.L5939
.L5947:
	.sleb128	26
	.4byte		.L5948-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5948:
.L5946:
	.sleb128	23
	.4byte		.L5947
.L5951:
	.sleb128	26
	.4byte		.L5952-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5952:
.L5950:
	.sleb128	23
	.4byte		.L5951
.L5955:
	.sleb128	26
	.4byte		.L5956-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5956:
.L5954:
	.sleb128	23
	.4byte		.L5955
.L5959:
	.sleb128	26
	.4byte		.L5960-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5960:
.L5958:
	.sleb128	23
	.4byte		.L5959
.L5963:
	.sleb128	26
	.4byte		.L5964-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5964:
.L5962:
	.sleb128	23
	.4byte		.L5963
.L5967:
	.sleb128	26
	.4byte		.L5968-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5968:
.L5966:
	.sleb128	23
	.4byte		.L5967
.L5971:
	.sleb128	26
	.4byte		.L5972-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5972:
.L5970:
	.sleb128	23
	.4byte		.L5971
.L5975:
	.sleb128	26
	.4byte		.L5976-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5976:
.L5974:
	.sleb128	23
	.4byte		.L5975
.L5979:
	.sleb128	26
	.4byte		.L5980-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5980:
.L5978:
	.sleb128	23
	.4byte		.L5979
.L5987:
	.sleb128	26
	.4byte		.L5988-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5988:
.L5986:
	.sleb128	23
	.4byte		.L5987
.L5991:
	.sleb128	26
	.4byte		.L5992-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5992:
.L5990:
	.sleb128	23
	.4byte		.L5991
.L5995:
	.sleb128	26
	.4byte		.L5996-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5996:
.L5994:
	.sleb128	23
	.4byte		.L5995
.L5999:
	.sleb128	26
	.4byte		.L6000-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6000:
.L5998:
	.sleb128	23
	.4byte		.L5999
.L6003:
	.sleb128	26
	.4byte		.L6004-.L2
	.4byte		.L5528
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6004:
.L6002:
	.sleb128	23
	.4byte		.L6003
.L6007:
	.sleb128	26
	.4byte		.L6008-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6008:
.L6006:
	.sleb128	23
	.4byte		.L6007
.L6011:
	.sleb128	26
	.4byte		.L6012-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6012:
.L6010:
	.sleb128	23
	.4byte		.L6011
.L6015:
	.sleb128	26
	.4byte		.L6016-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6016:
.L6014:
	.sleb128	23
	.4byte		.L6015
.L6019:
	.sleb128	26
	.4byte		.L6020-.L2
	.4byte		.L5549
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L6020:
.L6018:
	.sleb128	23
	.4byte		.L6019
.L6042:
	.sleb128	22
	.byte		"U16"
	.byte		0
	.4byte		.L5314
.L6108:
	.sleb128	22
	.byte		"RT_MODEL_ATV_T"
	.byte		0
	.4byte		.L6109
.L6107:
	.sleb128	24
	.4byte		.L6108
.L6155:
	.sleb128	22
	.byte		"PKN_TASK_T"
	.byte		0
	.4byte		.L6156
.L6154:
	.sleb128	23
	.4byte		.L6155
.L6153:
	.sleb128	24
	.4byte		.L6154
.L6152:
	.sleb128	23
	.4byte		.L6153
.L6151:
	.sleb128	22
	.byte		"PKN_TASK_HANDLE_T"
	.byte		0
	.4byte		.L6152
.L6159:
	.sleb128	22
	.byte		"B_ATV_T"
	.byte		0
	.4byte		.L6160
.L6221:
	.sleb128	23
	.4byte		.L5274
	.section	.debug_info,,n
.L6220:
	.sleb128	28
	.4byte		.L6221
.L6225:
	.sleb128	23
	.4byte		.L5313
.L6224:
	.sleb128	28
	.4byte		.L6225
.L6232:
	.sleb128	23
	.4byte		.L5399
.L6231:
	.sleb128	28
	.4byte		.L6232
.L6243:
	.sleb128	22
	.byte		"PUT_DEBOUNCE_TIME_T"
	.byte		0
	.4byte		.L6244
.L6256:
	.sleb128	23
	.4byte		.L6107
.L6260:
	.sleb128	22
	.byte		"DW_ATV_T"
	.byte		0
	.4byte		.L6261
.L6266:
	.sleb128	22
	.byte		"char_T"
	.byte		0
	.4byte		.L4970
.L6265:
	.sleb128	23
	.4byte		.L6266
.L6264:
	.sleb128	24
	.4byte		.L6265
.L6268:
	.sleb128	24
	.4byte		.L6269
.L6267:
	.sleb128	24
	.4byte		.L6268
.L6270:
	.sleb128	22
	.byte		"SS_SimMode"
	.byte		0
	.4byte		.L6271
.L6273:
	.sleb128	22
	.byte		"RTWExtModeInfo"
	.byte		0
	.4byte		.L6274
.L6272:
	.sleb128	24
	.4byte		.L6273
.L6276:
	.sleb128	22
	.byte		"ssSolverInfo"
	.byte		0
	.4byte		.L6277
.L6275:
	.sleb128	22
	.byte		"RTWSolverInfo"
	.byte		0
	.4byte		.L6276
.L6278:
	.sleb128	24
	.4byte		.L6275
.L6280:
	.sleb128	23
	.4byte		.L5280
.L6279:
	.sleb128	24
	.4byte		.L6280
.L6282:
	.sleb128	22
	.byte		"ZCSigState"
	.byte		0
	.4byte		.L5399
.L6281:
	.sleb128	24
	.4byte		.L6282
.L6283:
	.sleb128	24
	.4byte		.L5274
.L6284:
	.sleb128	24
	.4byte		.L4969
.L6291:
	.sleb128	22
	.byte		"SimTimeStep"
	.byte		0
	.4byte		.L6292
.L6293:
	.sleb128	24
	.4byte		.L5273
.L6294:
	.sleb128	26
	.4byte		.L6295-.L2
	.4byte		.L5273
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6295:
.L6296:
	.sleb128	26
	.4byte		.L6297-.L2
	.4byte		.L5273
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6297:
.L6298:
	.sleb128	26
	.4byte		.L6299-.L2
	.4byte		.L5277
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6299:
.L6300:
	.sleb128	26
	.4byte		.L6301-.L2
	.4byte		.L5277
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6301:
.L6302:
	.sleb128	26
	.4byte		.L6303-.L2
	.4byte		.L5277
	.sleb128	27
	.uleb128	8
	.sleb128	0
.L6303:
.L6304:
	.sleb128	26
	.4byte		.L6305-.L2
	.4byte		.L5273
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6305:
.L6308:
	.sleb128	26
	.4byte		.L6309-.L2
	.4byte		.L5399
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6309:
.L6312:
	.sleb128	26
	.4byte		.L6313-.L2
	.4byte		.L4916
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6313:
	.section	.debug_info,,n
.L6322:
	.sleb128	29
	.4byte		.L6323-.L2
	.byte		0x1
	.sleb128	0
.L6323:
.L6321:
	.sleb128	24
	.4byte		.L6322
.L6324:
	.sleb128	22
	.byte		"PKN_TASKSET_T"
	.byte		0
	.4byte		.L5786
.L6326:
	.sleb128	26
	.4byte		.L6327-.L2
	.4byte		.L4916
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6327:
.L6329:
	.sleb128	26
	.4byte		.L6330-.L2
	.4byte		.L4916
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L6330:
.L6334:
	.sleb128	22
	.byte		"SimStruct"
	.byte		0
	.4byte		.L6269
.L6333:
	.sleb128	24
	.4byte		.L6334
.L6342:
	.sleb128	24
	.4byte		.L6343
.L6355:
	.sleb128	24
	.4byte		.L6356
.L6358:
	.sleb128	22
	.byte		"ZCDirection"
	.byte		0
	.4byte		.L6359
.L6357:
	.sleb128	24
	.4byte		.L6358
.L6361:
	.sleb128	22
	.byte		"SparseHeader"
	.byte		0
	.4byte		.L6362
.L6360:
	.sleb128	24
	.4byte		.L6361
.L6363:
	.sleb128	24
	.4byte		.L6364
.L6366:
	.sleb128	21
	.byte		"unsigned int"
	.byte		0
	.byte		0x7
	.byte		0x4
.L6371:
	.sleb128	24
	.4byte		.L6221
.L6370:
	.sleb128	23
	.4byte		.L6371
.L6369:
	.sleb128	24
	.4byte		.L6370
.L6368:
	.sleb128	22
	.byte		"UPtrsType"
	.byte		0
	.4byte		.L6369
.L6373:
	.sleb128	24
	.4byte		.L5399
.L6375:
	.sleb128	22
	.byte		"ssPeriodicStatesInfo"
	.byte		0
	.4byte		.L6376
.L6374:
	.sleb128	24
	.4byte		.L6375
.L6377:
	.sleb128	26
	.4byte		.L6378-.L2
	.4byte		.L5279
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L6378:
.L6383:
	.sleb128	29
	.4byte		.L6384-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6384:
.L6382:
	.sleb128	24
	.4byte		.L6383
.L6381:
	.sleb128	22
	.byte		"mdlProjectionFcn"
	.byte		0
	.4byte		.L6382
.L6387:
	.sleb128	29
	.4byte		.L6388-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6388:
.L6386:
	.sleb128	24
	.4byte		.L6387
.L6385:
	.sleb128	22
	.byte		"mdlJacobianFcn"
	.byte		0
	.4byte		.L6386
.L6391:
	.sleb128	29
	.4byte		.L6392-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
.L6393:
	.sleb128	22
	.byte		"Frame_T"
	.byte		0
	.4byte		.L6394
	.sleb128	30
	.4byte		.L6393
	.sleb128	0
.L6392:
.L6390:
	.sleb128	24
	.4byte		.L6391
.L6389:
	.sleb128	22
	.byte		"mdlSetInputPortFrameDataFcn"
	.byte		0
	.4byte		.L6390
	.section	.debug_info,,n
.L6397:
	.sleb128	31
	.4byte		.L6398-.L2
	.4byte		.L4969
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6398:
.L6396:
	.sleb128	24
	.4byte		.L6397
.L6395:
	.sleb128	22
	.byte		"StrictBooleanCheckEnabled"
	.byte		0
	.4byte		.L6396
.L6401:
	.sleb128	29
	.4byte		.L6402-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6402:
.L6400:
	.sleb128	24
	.4byte		.L6401
.L6399:
	.sleb128	22
	.byte		"mdlSetDefaultPortDimensionsFcn"
	.byte		0
	.4byte		.L6400
.L6405:
	.sleb128	29
	.4byte		.L6406-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6406:
.L6404:
	.sleb128	24
	.4byte		.L6405
.L6403:
	.sleb128	22
	.byte		"mdlSetDefaultPortDataTypesFcn"
	.byte		0
	.4byte		.L6404
.L6409:
	.sleb128	29
	.4byte		.L6410-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6410:
.L6408:
	.sleb128	24
	.4byte		.L6409
.L6407:
	.sleb128	22
	.byte		"mdlSetDefaultPortComplexSignalsFcn"
	.byte		0
	.4byte		.L6408
.L6413:
	.sleb128	31
	.4byte		.L6414-.L2
	.4byte		.L4969
	.byte		0x1
	.sleb128	30
	.4byte		.L5278
	.sleb128	30
	.4byte		.L4969
	.sleb128	30
	.4byte		.L4969
.L6415:
	.sleb128	23
	.4byte		.L5278
	.sleb128	30
	.4byte		.L6415
	.sleb128	30
	.4byte		.L6279
	.sleb128	30
	.4byte		.L6415
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6414:
.L6412:
	.sleb128	24
	.4byte		.L6413
.L6411:
	.sleb128	22
	.byte		"ConvertBuiltInDTypeFcn"
	.byte		0
	.4byte		.L6412
.L6422:
	.sleb128	23
	.4byte		.L4970
.L6421:
	.sleb128	24
	.4byte		.L6422
.L6419:
	.sleb128	31
	.4byte		.L6420-.L2
	.4byte		.L6421
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
.L6424:
	.sleb128	22
	.byte		"ExtModeLogBlockMeth"
	.byte		0
	.4byte		.L6425
.L6423:
	.sleb128	23
	.4byte		.L6424
	.sleb128	30
	.4byte		.L6423
	.sleb128	0
.L6420:
.L6418:
	.sleb128	24
	.4byte		.L6419
.L6417:
	.sleb128	22
	.byte		"SFunExtModeFcn"
	.byte		0
	.4byte		.L6418
.L6428:
	.sleb128	29
	.4byte		.L6429-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6429:
.L6427:
	.sleb128	24
	.4byte		.L6428
.L6426:
	.sleb128	22
	.byte		"mdlExtModeExecFcn"
	.byte		0
	.4byte		.L6427
.L6432:
	.sleb128	29
	.4byte		.L6433-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
.L6435:
	.sleb128	22
	.byte		"RTWCGInterface"
	.byte		0
	.4byte		.L5280
.L6434:
	.sleb128	24
	.4byte		.L6435
	.sleb128	30
	.4byte		.L6434
	.sleb128	0
.L6433:
.L6431:
	.sleb128	24
	.4byte		.L6432
.L6430:
	.sleb128	22
	.byte		"mdlRTWCGFcn"
	.byte		0
	.4byte		.L6431
.L6438:
	.sleb128	29
	.4byte		.L6439-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6439:
.L6437:
	.sleb128	24
	.4byte		.L6438
.L6436:
	.sleb128	22
	.byte		"mdlMassMatrixFcn"
	.byte		0
	.4byte		.L6437
.L6440:
	.sleb128	24
	.4byte		.L6441
.L6444:
	.sleb128	29
	.4byte		.L6445-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6445:
.L6443:
	.sleb128	24
	.4byte		.L6444
.L6442:
	.sleb128	22
	.byte		"mdlForcingFunctionFcn"
	.byte		0
	.4byte		.L6443
.L6448:
	.sleb128	29
	.4byte		.L6449-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6449:
.L6447:
	.sleb128	24
	.4byte		.L6448
.L6446:
	.sleb128	22
	.byte		"mdlEnableFcn"
	.byte		0
	.4byte		.L6447
.L6452:
	.sleb128	29
	.4byte		.L6453-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6453:
.L6451:
	.sleb128	24
	.4byte		.L6452
.L6450:
	.sleb128	22
	.byte		"mdlDisableFcn"
	.byte		0
	.4byte		.L6451
.L6456:
	.sleb128	29
	.4byte		.L6457-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
.L6458:
	.sleb128	22
	.byte		"ssSimStatusChangeType"
	.byte		0
	.4byte		.L6459
	.sleb128	30
	.4byte		.L6458
	.sleb128	0
.L6457:
.L6455:
	.sleb128	24
	.4byte		.L6456
.L6454:
	.sleb128	22
	.byte		"mdlSimStatusChangeFcn"
	.byte		0
	.4byte		.L6455
.L6462:
	.sleb128	29
	.4byte		.L6463-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
.L6464:
	.sleb128	22
	.byte		"PropagationPassType"
	.byte		0
	.4byte		.L6465
	.sleb128	30
	.4byte		.L6464
	.sleb128	0
.L6463:
.L6461:
	.sleb128	24
	.4byte		.L6462
.L6460:
	.sleb128	22
	.byte		"mdlInitializePropagationPassFcn"
	.byte		0
	.4byte		.L6461
.L6466:
	.sleb128	24
	.4byte		.L6467
.L6468:
	.sleb128	24
	.4byte		.L6469
.L6474:
	.sleb128	29
	.4byte		.L6475-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6475:
.L6473:
	.sleb128	24
	.4byte		.L6474
.L6472:
	.sleb128	22
	.byte		"mdlInitSystemMatricesFcn"
	.byte		0
	.4byte		.L6473
.L6478:
	.sleb128	29
	.4byte		.L6479-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6479:
.L6477:
	.sleb128	24
	.4byte		.L6478
.L6476:
	.sleb128	22
	.byte		"mdlJacobianIrJcFcn"
	.byte		0
	.4byte		.L6477
.L6483:
	.sleb128	29
	.4byte		.L6484-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
.L6485:
	.sleb128	22
	.byte		"SymbDimsId"
	.byte		0
	.4byte		.L5277
	.sleb128	30
	.4byte		.L6485
	.sleb128	0
.L6484:
.L6482:
	.sleb128	24
	.4byte		.L6483
.L6481:
	.sleb128	22
	.byte		"mdlSetInputPortSymbolicDimensionsFcn"
	.byte		0
	.4byte		.L6482
.L6488:
	.sleb128	29
	.4byte		.L6489-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	30
	.4byte		.L6485
	.sleb128	0
.L6489:
.L6487:
	.sleb128	24
	.4byte		.L6488
.L6486:
	.sleb128	22
	.byte		"mdlSetOutputPortSymbolicDimensionsFcn"
	.byte		0
	.4byte		.L6487
.L6492:
	.sleb128	29
	.4byte		.L6493-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6493:
.L6491:
	.sleb128	24
	.4byte		.L6492
.L6490:
	.sleb128	22
	.byte		"mdlSetupRuntimeResourcesFcn"
	.byte		0
	.4byte		.L6491
.L6496:
	.sleb128	29
	.4byte		.L6497-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6497:
.L6495:
	.sleb128	24
	.4byte		.L6496
.L6494:
	.sleb128	22
	.byte		"mdlCleanupRuntimeResourcesFcn"
	.byte		0
	.4byte		.L6495
.L6500:
	.sleb128	29
	.4byte		.L6501-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L4916
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6501:
.L6499:
	.sleb128	24
	.4byte		.L6500
.L6498:
	.sleb128	22
	.byte		"mdlDataTransferReadFcn"
	.byte		0
	.4byte		.L6499
.L6504:
	.sleb128	29
	.4byte		.L6505-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L4916
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6505:
.L6503:
	.sleb128	24
	.4byte		.L6504
.L6502:
	.sleb128	22
	.byte		"mdlDataTransferWriteFcn"
	.byte		0
	.4byte		.L6503
.L6508:
	.sleb128	29
	.4byte		.L6509-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L4916
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6509:
.L6507:
	.sleb128	24
	.4byte		.L6508
.L6506:
	.sleb128	22
	.byte		"mdlDataTransferInitBuffersFcn"
	.byte		0
	.4byte		.L6507
.L6510:
	.sleb128	26
	.4byte		.L6511-.L2
	.4byte		.L5279
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L6511:
.L6515:
	.sleb128	29
	.4byte		.L6516-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6516:
.L6514:
	.sleb128	24
	.4byte		.L6515
.L6513:
	.sleb128	22
	.byte		"mdlInitializeSizesFcn"
	.byte		0
	.4byte		.L6514
.L6519:
	.sleb128	31
	.4byte		.L6520-.L2
	.4byte		.L5277
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6520:
.L6518:
	.sleb128	24
	.4byte		.L6519
.L6517:
	.sleb128	22
	.byte		"mdlGetInputPortWidthLevel1Fcn"
	.byte		0
	.4byte		.L6518
.L6523:
	.sleb128	31
	.4byte		.L6524-.L2
	.4byte		.L5277
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6524:
.L6522:
	.sleb128	24
	.4byte		.L6523
.L6521:
	.sleb128	22
	.byte		"mdlGetOutputPortWidthLevel1Fcn"
	.byte		0
	.4byte		.L6522
.L6529:
	.sleb128	29
	.4byte		.L6530-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
.L6531:
	.sleb128	22
	.byte		"DTypeId"
	.byte		0
	.4byte		.L5277
	.sleb128	30
	.4byte		.L6531
	.sleb128	0
.L6530:
.L6528:
	.sleb128	24
	.4byte		.L6529
.L6527:
	.sleb128	22
	.byte		"mdlSetInputPortDataTypeFcn"
	.byte		0
	.4byte		.L6528
.L6534:
	.sleb128	29
	.4byte		.L6535-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	30
	.4byte		.L6531
	.sleb128	0
.L6535:
.L6533:
	.sleb128	24
	.4byte		.L6534
.L6532:
	.sleb128	22
	.byte		"mdlSetOutputPortDataTypeFcn"
	.byte		0
	.4byte		.L6533
.L6538:
	.sleb128	29
	.4byte		.L6539-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6539:
.L6537:
	.sleb128	24
	.4byte		.L6538
.L6536:
	.sleb128	22
	.byte		"mdlInitializeSampleTimesFcn"
	.byte		0
	.4byte		.L6537
.L6542:
	.sleb128	29
	.4byte		.L6543-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5278
	.sleb128	30
	.4byte		.L5274
	.sleb128	30
	.4byte		.L5274
	.sleb128	0
.L6543:
.L6541:
	.sleb128	24
	.4byte		.L6542
.L6540:
	.sleb128	22
	.byte		"mdlSetInputPortSampleTimeFcn"
	.byte		0
	.4byte		.L6541
.L6546:
	.sleb128	29
	.4byte		.L6547-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5278
	.sleb128	30
	.4byte		.L5274
	.sleb128	30
	.4byte		.L5274
	.sleb128	0
.L6547:
.L6545:
	.sleb128	24
	.4byte		.L6546
.L6544:
	.sleb128	22
	.byte		"mdlSetOutputPortSampleTimeFcn"
	.byte		0
	.4byte		.L6545
.L6550:
	.sleb128	29
	.4byte		.L6551-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6551:
.L6549:
	.sleb128	24
	.4byte		.L6550
.L6548:
	.sleb128	22
	.byte		"mdlSetWorkWidthsFcn"
	.byte		0
	.4byte		.L6549
.L6554:
	.sleb128	29
	.4byte		.L6555-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6555:
.L6553:
	.sleb128	24
	.4byte		.L6554
.L6552:
	.sleb128	22
	.byte		"mdlRTWFcn"
	.byte		0
	.4byte		.L6553
.L6559:
	.sleb128	29
	.4byte		.L6560-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6560:
.L6558:
	.sleb128	24
	.4byte		.L6559
.L6557:
	.sleb128	22
	.byte		"mdlStartFcn"
	.byte		0
	.4byte		.L6558
.L6563:
	.sleb128	29
	.4byte		.L6564-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6564:
.L6562:
	.sleb128	24
	.4byte		.L6563
.L6561:
	.sleb128	22
	.byte		"mdlCheckParametersFcn"
	.byte		0
	.4byte		.L6562
.L6567:
	.sleb128	29
	.4byte		.L6568-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6568:
.L6566:
	.sleb128	24
	.4byte		.L6567
.L6565:
	.sleb128	22
	.byte		"mdlProcessParametersFcn"
	.byte		0
	.4byte		.L6566
.L6571:
	.sleb128	29
	.4byte		.L6572-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6572:
.L6570:
	.sleb128	24
	.4byte		.L6571
.L6569:
	.sleb128	22
	.byte		"mdlGetTimeOfNextVarHitFcn"
	.byte		0
	.4byte		.L6570
.L6578:
	.sleb128	29
	.4byte		.L6579-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6579:
.L6577:
	.sleb128	24
	.4byte		.L6578
.L6576:
	.sleb128	22
	.byte		"mdlZeroCrossingsFcn"
	.byte		0
	.4byte		.L6577
.L6582:
	.sleb128	29
	.4byte		.L6583-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6583:
.L6581:
	.sleb128	24
	.4byte		.L6582
.L6580:
	.sleb128	22
	.byte		"mdlTerminateFcn"
	.byte		0
	.4byte		.L6581
.L6589:
	.sleb128	29
	.4byte		.L6590-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
.L6591:
	.sleb128	22
	.byte		"CSignal_T"
	.byte		0
	.4byte		.L5277
	.sleb128	30
	.4byte		.L6591
	.sleb128	0
.L6590:
.L6588:
	.sleb128	24
	.4byte		.L6589
.L6587:
	.sleb128	22
	.byte		"mdlSetOutputPortComplexSignalFcn"
	.byte		0
	.4byte		.L6588
.L6594:
	.sleb128	29
	.4byte		.L6595-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6595:
.L6593:
	.sleb128	24
	.4byte		.L6594
.L6592:
	.sleb128	22
	.byte		"RTWGeneratedDisableFcn"
	.byte		0
	.4byte		.L6593
.L6599:
	.sleb128	29
	.4byte		.L6600-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	30
	.4byte		.L6591
	.sleb128	0
.L6600:
.L6598:
	.sleb128	24
	.4byte		.L6599
.L6597:
	.sleb128	22
	.byte		"mdlSetInputPortComplexSignalFcn"
	.byte		0
	.4byte		.L6598
.L6603:
	.sleb128	29
	.4byte		.L6604-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6604:
.L6602:
	.sleb128	24
	.4byte		.L6603
.L6601:
	.sleb128	22
	.byte		"RTWGeneratedEnableFcn"
	.byte		0
	.4byte		.L6602
.L6608:
	.sleb128	29
	.4byte		.L6609-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6609:
.L6607:
	.sleb128	24
	.4byte		.L6608
.L6606:
	.sleb128	22
	.byte		"mdlDerivativesFcn"
	.byte		0
	.4byte		.L6607
.L6612:
	.sleb128	29
	.4byte		.L6613-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6283
	.sleb128	30
	.4byte		.L6371
	.sleb128	30
	.4byte		.L6371
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6613:
.L6611:
	.sleb128	24
	.4byte		.L6612
.L6610:
	.sleb128	22
	.byte		"mdlDerivativesLevel1Fcn"
	.byte		0
	.4byte		.L6611
.L6617:
	.sleb128	29
	.4byte		.L6618-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6618:
.L6616:
	.sleb128	24
	.4byte		.L6617
.L6615:
	.sleb128	22
	.byte		"mdlUpdateFcn"
	.byte		0
	.4byte		.L6616
.L6621:
	.sleb128	29
	.4byte		.L6622-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6283
	.sleb128	30
	.4byte		.L6371
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6622:
.L6620:
	.sleb128	24
	.4byte		.L6621
.L6619:
	.sleb128	22
	.byte		"mdlUpdateLevel1Fcn"
	.byte		0
	.4byte		.L6620
.L6626:
	.sleb128	29
	.4byte		.L6627-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6627:
.L6625:
	.sleb128	24
	.4byte		.L6626
.L6624:
	.sleb128	22
	.byte		"mdlOutputsFcn"
	.byte		0
	.4byte		.L6625
.L6630:
	.sleb128	29
	.4byte		.L6631-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6283
	.sleb128	30
	.4byte		.L6371
	.sleb128	30
	.4byte		.L6371
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6631:
.L6629:
	.sleb128	24
	.4byte		.L6630
.L6628:
	.sleb128	22
	.byte		"mdlOutputsLevel1Fcn"
	.byte		0
	.4byte		.L6629
.L6635:
	.sleb128	29
	.4byte		.L6636-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6636:
.L6634:
	.sleb128	24
	.4byte		.L6635
.L6633:
	.sleb128	22
	.byte		"mdlInitializeConditionsFcn"
	.byte		0
	.4byte		.L6634
.L6639:
	.sleb128	29
	.4byte		.L6640-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6283
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6640:
.L6638:
	.sleb128	24
	.4byte		.L6639
.L6637:
	.sleb128	22
	.byte		"mdlInitializeConditionsLevel1Fcn"
	.byte		0
	.4byte		.L6638
.L6644:
	.sleb128	29
	.4byte		.L6645-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6645:
.L6643:
	.sleb128	24
	.4byte		.L6644
.L6642:
	.sleb128	22
	.byte		"mdlSetOutputPortWidthFcn"
	.byte		0
	.4byte		.L6643
.L6648:
	.sleb128	29
	.4byte		.L6649-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
.L6652:
	.sleb128	22
	.byte		"DimsInfo_T"
	.byte		0
	.4byte		.L6653
.L6651:
	.sleb128	23
	.4byte		.L6652
.L6650:
	.sleb128	24
	.4byte		.L6651
	.sleb128	30
	.4byte		.L6650
	.sleb128	0
.L6649:
.L6647:
	.sleb128	24
	.4byte		.L6648
.L6646:
	.sleb128	22
	.byte		"mdlSetOutputPortDimensionsFcn"
	.byte		0
	.4byte		.L6647
.L6657:
	.sleb128	29
	.4byte		.L6658-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6658:
.L6656:
	.sleb128	24
	.4byte		.L6657
.L6655:
	.sleb128	22
	.byte		"mdlSetInputPortWidthFcn"
	.byte		0
	.4byte		.L6656
.L6661:
	.sleb128	29
	.4byte		.L6662-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	30
	.4byte		.L6650
	.sleb128	0
.L6662:
.L6660:
	.sleb128	24
	.4byte		.L6661
.L6659:
	.sleb128	22
	.byte		"mdlSetInputPortDimensionsFcn"
	.byte		0
	.4byte		.L6660
.L6666:
	.sleb128	29
	.4byte		.L6667-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	0
.L6667:
.L6665:
	.sleb128	24
	.4byte		.L6666
.L6664:
	.sleb128	22
	.byte		"mdlConstraintsFcn"
	.byte		0
	.4byte		.L6665
.L6669:
	.sleb128	22
	.byte		"ssMatrixType"
	.byte		0
	.4byte		.L6670
.L6671:
	.sleb128	22
	.byte		"ssSparseMatrixInfo"
	.byte		0
	.4byte		.L6672
.L6677:
	.sleb128	31
	.4byte		.L6678-.L2
	.4byte		.L6531
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L6264
	.sleb128	0
.L6678:
.L6676:
	.sleb128	24
	.4byte		.L6677
.L6675:
	.sleb128	22
	.byte		"OldRegisterDataType"
	.byte		0
	.4byte		.L6676
.L6681:
	.sleb128	31
	.4byte		.L6682-.L2
	.4byte		.L5277
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L6531
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6682:
.L6680:
	.sleb128	24
	.4byte		.L6681
.L6679:
	.sleb128	22
	.byte		"SetDataTypeSize"
	.byte		0
	.4byte		.L6680
.L6685:
	.sleb128	31
	.4byte		.L6686-.L2
	.4byte		.L5277
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L6531
	.sleb128	0
.L6686:
.L6684:
	.sleb128	24
	.4byte		.L6685
.L6683:
	.sleb128	22
	.byte		"GetDataTypeSize"
	.byte		0
	.4byte		.L6684
.L6689:
	.sleb128	31
	.4byte		.L6690-.L2
	.4byte		.L5277
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L6531
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6690:
.L6688:
	.sleb128	24
	.4byte		.L6689
.L6687:
	.sleb128	22
	.byte		"SetDataTypeZero"
	.byte		0
	.4byte		.L6688
.L6693:
	.sleb128	31
	.4byte		.L6694-.L2
	.4byte		.L6279
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L6531
	.sleb128	0
.L6694:
.L6692:
	.sleb128	24
	.4byte		.L6693
.L6691:
	.sleb128	22
	.byte		"GetDataTypeZero"
	.byte		0
	.4byte		.L6692
.L6697:
	.sleb128	31
	.4byte		.L6698-.L2
	.4byte		.L6264
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L6531
	.sleb128	0
.L6698:
.L6696:
	.sleb128	24
	.4byte		.L6697
.L6695:
	.sleb128	22
	.byte		"GetDataTypeName"
	.byte		0
	.4byte		.L6696
.L6701:
	.sleb128	31
	.4byte		.L6702-.L2
	.4byte		.L6531
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L6264
	.sleb128	0
.L6702:
.L6700:
	.sleb128	24
	.4byte		.L6701
.L6699:
	.sleb128	22
	.byte		"GetDataTypeId"
	.byte		0
	.4byte		.L6700
.L6705:
	.sleb128	31
	.4byte		.L6706-.L2
	.4byte		.L5277
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6706:
.L6704:
	.sleb128	24
	.4byte		.L6705
.L6703:
	.sleb128	22
	.byte		"SetNumDWork"
	.byte		0
	.4byte		.L6704
.L6710:
	.sleb128	31
	.4byte		.L6711-.L2
	.4byte		.L5277
	.byte		0x1
.L6713:
	.sleb128	23
	.4byte		.L6334
.L6712:
	.sleb128	24
	.4byte		.L6713
	.sleb128	30
	.4byte		.L6712
	.sleb128	30
	.4byte		.L6421
.L6716:
	.sleb128	22
	.byte		"mxArray"
	.byte		0
	.4byte		.L5274
.L6715:
	.sleb128	24
	.4byte		.L6716
.L6714:
	.sleb128	24
	.4byte		.L6715
	.sleb128	30
	.4byte		.L6714
	.sleb128	0
.L6711:
.L6709:
	.sleb128	24
	.4byte		.L6710
.L6708:
	.sleb128	22
	.byte		"_ResolveVarFcn"
	.byte		0
	.4byte		.L6709
.L6718:
	.sleb128	24
	.4byte		.L5279
.L6724:
	.sleb128	22
	.byte		"ssFcnCallErr_T"
	.byte		0
	.4byte		.L5277
.L6722:
	.sleb128	31
	.4byte		.L6723-.L2
	.4byte		.L6724
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L5277
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6723:
.L6721:
	.sleb128	24
	.4byte		.L6722
.L6720:
	.sleb128	22
	.byte		"SysOutputFcn"
	.byte		0
	.4byte		.L6721
.L6719:
	.sleb128	24
	.4byte		.L6720
.L6726:
	.sleb128	22
	.byte		"uint_T"
	.byte		0
	.4byte		.L6366
.L6729:
	.sleb128	22
	.byte		"ssNonContDerivSigInfo"
	.byte		0
	.4byte		.L6730
.L6728:
	.sleb128	24
	.4byte		.L6729
.L6732:
	.sleb128	22
	.byte		"rtTimingBridge"
	.byte		0
	.4byte		.L6733
.L6731:
	.sleb128	24
	.4byte		.L6732
.L6735:
	.sleb128	22
	.byte		"RTWLogInfo"
	.byte		0
	.4byte		.L6736
.L6734:
	.sleb128	24
	.4byte		.L6735
.L6737:
	.sleb128	24
	.4byte		.L6276
.L6738:
	.sleb128	24
	.4byte		.L6266
.L6741:
	.sleb128	31
	.4byte		.L6742-.L2
	.4byte		.L5277
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
.L6743:
	.sleb128	22
	.byte		"_slexecBlkRTSType"
	.byte		0
	.4byte		.L6744
	.sleb128	30
	.4byte		.L6743
	.sleb128	30
	.4byte		.L5277
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6742:
.L6740:
	.sleb128	24
	.4byte		.L6741
.L6739:
	.sleb128	22
	.byte		"_slexecBlkRTSGateway"
	.byte		0
	.4byte		.L6740
.L6745:
	.sleb128	24
	.4byte		.L5278
.L6746:
	.sleb128	26
	.4byte		.L6747-.L2
	.4byte		.L6266
	.sleb128	27
	.uleb128	31
	.sleb128	0
.L6747:
.L6750:
	.sleb128	31
	.4byte		.L6751-.L2
	.4byte		.L5277
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	30
	.4byte		.L6650
	.sleb128	0
.L6751:
.L6749:
	.sleb128	24
	.4byte		.L6750
.L6748:
	.sleb128	22
	.byte		"_ssSetInputPortDimensionInfoFcn"
	.byte		0
	.4byte		.L6749
.L6754:
	.sleb128	31
	.4byte		.L6755-.L2
	.4byte		.L5277
	.byte		0x1
	.sleb128	30
	.4byte		.L6333
	.sleb128	30
	.4byte		.L5277
	.sleb128	30
	.4byte		.L6650
	.sleb128	0
.L6755:
.L6753:
	.sleb128	24
	.4byte		.L6754
.L6752:
	.sleb128	22
	.byte		"_ssSetOutputPortDimensionInfoFcn"
	.byte		0
	.4byte		.L6753
.L6756:
	.sleb128	22
	.byte		"SolverMode"
	.byte		0
	.4byte		.L6757
.L6758:
	.sleb128	22
	.byte		"RTWGenMode"
	.byte		0
	.4byte		.L6759
.L6760:
	.sleb128	26
	.4byte		.L6761-.L2
	.4byte		.L5277
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L6761:
.L6762:
	.sleb128	26
	.4byte		.L6763-.L2
	.4byte		.L6283
	.sleb128	27
	.uleb128	0
	.sleb128	0
.L6763:
.L6766:
	.sleb128	24
	.4byte		.L4970
.L6768:
	.sleb128	24
	.4byte		.L6769
.L6773:
	.sleb128	24
	.4byte		.L6774
.L6775:
	.sleb128	24
	.4byte		.L6776
.L6777:
	.sleb128	26
	.4byte		.L6778-.L2
	.4byte		.L5279
	.sleb128	27
	.uleb128	12
	.sleb128	0
.L6778:
.L6779:
	.sleb128	26
	.4byte		.L6780-.L2
	.4byte		.L5277
	.sleb128	27
	.uleb128	14
	.sleb128	0
.L6780:
.L6783:
	.sleb128	22
	.byte		"size_t"
	.byte		0
	.4byte		.L6366
.L6782:
	.sleb128	24
	.4byte		.L6783
.L6784:
	.sleb128	26
	.4byte		.L6785-.L2
	.4byte		.L5279
	.sleb128	27
	.uleb128	9
	.sleb128	0
.L6785:
.L6787:
	.sleb128	24
	.4byte		.L6788
.L6789:
	.sleb128	24
	.4byte		.L6790
.L6791:
	.sleb128	24
	.4byte		.L6792
.L6793:
	.sleb128	24
	.4byte		.L6794
.L6795:
	.sleb128	24
	.4byte		.L6796
.L6797:
	.sleb128	24
	.4byte		.L6798
.L6799:
	.sleb128	24
	.4byte		.L6800
.L6801:
	.sleb128	24
	.4byte		.L6802
.L6803:
	.sleb128	26
	.4byte		.L6804-.L2
	.4byte		.L5279
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L6804:
.L6808:
	.sleb128	22
	.byte		"SS_DimsConstraintType"
	.byte		0
	.4byte		.L6809
.L6813:
	.sleb128	22
	.byte		"UnitId"
	.byte		0
	.4byte		.L5277
.L6816:
	.sleb128	26
	.4byte		.L6817-.L2
	.4byte		.L5279
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L6817:
.L6819:
	.sleb128	24
	.4byte		.L6415
.L6820:
	.sleb128	26
	.4byte		.L6821-.L2
	.4byte		.L5279
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L6821:
.L6824:
	.sleb128	24
	.4byte		.L6825
.L6826:
	.sleb128	24
	.4byte		.L6827
.L6829:
	.sleb128	26
	.4byte		.L6830-.L2
	.4byte		.L5279
	.sleb128	27
	.uleb128	27
	.sleb128	0
.L6830:
.L6832:
	.sleb128	24
	.4byte		.L6833
.L6835:
	.sleb128	24
	.4byte		.L6726
.L6839:
	.sleb128	22
	.byte		"ssParamRec"
	.byte		0
	.4byte		.L6840
.L6838:
	.sleb128	24
	.4byte		.L6839
.L6837:
	.sleb128	24
	.4byte		.L6838
.L6845:
	.sleb128	31
	.4byte		.L6846-.L2
	.4byte		.L5277
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6846:
.L6844:
	.sleb128	24
	.4byte		.L6845
.L6843:
	.sleb128	22
	.byte		"_ssRegNumInputPortsFcn"
	.byte		0
	.4byte		.L6844
.L6849:
	.sleb128	31
	.4byte		.L6850-.L2
	.4byte		.L5277
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6850:
.L6848:
	.sleb128	24
	.4byte		.L6849
.L6847:
	.sleb128	22
	.byte		"_ssRegNumOutputPortsFcn"
	.byte		0
	.4byte		.L6848
.L6851:
	.sleb128	24
	.4byte		.L6852
.L6853:
	.sleb128	24
	.4byte		.L6854
.L6865:
	.sleb128	23
	.4byte		.L6279
.L6864:
	.sleb128	24
	.4byte		.L6865
.L6863:
	.sleb128	22
	.byte		"InputPtrsType"
	.byte		0
	.4byte		.L6864
.L6868:
	.sleb128	26
	.4byte		.L6869-.L2
	.4byte		.L5277
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L6869:
.L6870:
	.sleb128	26
	.4byte		.L6871-.L2
	.4byte		.L5279
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6871:
.L6876:
	.sleb128	26
	.4byte		.L6877-.L2
	.4byte		.L4916
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6877:
.L6879:
	.sleb128	26
	.4byte		.L6880-.L2
	.4byte		.L5278
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6880:
.L6890:
	.sleb128	22
	.byte		"TransformedFlag"
	.byte		0
	.4byte		.L6891
.L6898:
	.sleb128	22
	.byte		"ssDWorkUsageType"
	.byte		0
	.4byte		.L6899
.L6902:
	.sleb128	24
	.4byte		.L6653
.L6905:
	.sleb128	24
	.4byte		.L6291
.L6906:
	.sleb128	24
	.4byte		.L6283
.L6907:
	.sleb128	24
	.4byte		.L6293
.L6908:
	.sleb128	24
	.4byte		.L5281
.L6909:
	.sleb128	24
	.4byte		.L6264
.L6911:
	.sleb128	22
	.byte		"RTWRTModelMethodsInfo"
	.byte		0
	.4byte		.L6912
.L6910:
	.sleb128	24
	.4byte		.L6911
.L6913:
	.sleb128	22
	.byte		"slJmBdControl"
	.byte		0
	.4byte		.L6914
.L6920:
	.sleb128	29
	.4byte		.L6921-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6921:
.L6919:
	.sleb128	24
	.4byte		.L6920
.L6918:
	.sleb128	22
	.byte		"rtMdlInitializeSizesFcn"
	.byte		0
	.4byte		.L6919
.L6924:
	.sleb128	29
	.4byte		.L6925-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6925:
.L6923:
	.sleb128	24
	.4byte		.L6924
.L6922:
	.sleb128	22
	.byte		"rtMdlInitializeSampleTimesFcn"
	.byte		0
	.4byte		.L6923
.L6928:
	.sleb128	29
	.4byte		.L6929-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6929:
.L6927:
	.sleb128	24
	.4byte		.L6928
.L6926:
	.sleb128	22
	.byte		"rtMdlStartFcn"
	.byte		0
	.4byte		.L6927
.L6932:
	.sleb128	29
	.4byte		.L6933-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6933:
.L6931:
	.sleb128	24
	.4byte		.L6932
.L6930:
	.sleb128	22
	.byte		"rtMdlOutputsFcn"
	.byte		0
	.4byte		.L6931
.L6936:
	.sleb128	29
	.4byte		.L6937-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L5277
	.sleb128	0
.L6937:
.L6935:
	.sleb128	24
	.4byte		.L6936
.L6934:
	.sleb128	22
	.byte		"rtMdlUpdateFcn"
	.byte		0
	.4byte		.L6935
.L6940:
	.sleb128	29
	.4byte		.L6941-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6941:
.L6939:
	.sleb128	24
	.4byte		.L6940
.L6938:
	.sleb128	22
	.byte		"rtMdlDerivativesFcn"
	.byte		0
	.4byte		.L6939
.L6944:
	.sleb128	29
	.4byte		.L6945-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6945:
.L6943:
	.sleb128	24
	.4byte		.L6944
.L6942:
	.sleb128	22
	.byte		"rtMdlProjectionFcn"
	.byte		0
	.4byte		.L6943
.L6948:
	.sleb128	29
	.4byte		.L6949-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6949:
.L6947:
	.sleb128	24
	.4byte		.L6948
.L6946:
	.sleb128	22
	.byte		"rtMdlMassMatrixFcn"
	.byte		0
	.4byte		.L6947
.L6952:
	.sleb128	29
	.4byte		.L6953-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6953:
.L6951:
	.sleb128	24
	.4byte		.L6952
.L6950:
	.sleb128	22
	.byte		"rtMdlForcingFunctionFcn"
	.byte		0
	.4byte		.L6951
.L6956:
	.sleb128	29
	.4byte		.L6957-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6957:
.L6955:
	.sleb128	24
	.4byte		.L6956
.L6954:
	.sleb128	22
	.byte		"rtMdlTerminateFcn"
	.byte		0
	.4byte		.L6955
.L6963:
	.sleb128	24
	.4byte		.L6279
.L6971:
	.sleb128	29
	.4byte		.L6972-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L5279
	.sleb128	0
.L6972:
.L6970:
	.sleb128	24
	.4byte		.L6971
.L6974:
	.sleb128	29
	.4byte		.L6975-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L4969
	.sleb128	0
.L6975:
.L6973:
	.sleb128	24
	.4byte		.L6974
.L6979:
	.sleb128	22
	.byte		"RTWLogSignalInfo"
	.byte		0
	.4byte		.L6980
.L6978:
	.sleb128	23
	.4byte		.L6979
.L6977:
	.sleb128	24
	.4byte		.L6978
.L6981:
	.sleb128	24
	.4byte		.L6979
.L6988:
	.sleb128	23
	.4byte		.L5789
.L6987:
	.sleb128	24
	.4byte		.L6988
.L6986:
	.sleb128	23
	.4byte		.L6987
.L6985:
	.sleb128	24
	.4byte		.L6986
.L6984:
	.sleb128	22
	.byte		"LogSignalPtrsType"
	.byte		0
	.4byte		.L6985
.L6990:
	.sleb128	24
	.4byte		.L5789
.L6989:
	.sleb128	24
	.4byte		.L6990
.L6994:
	.sleb128	22
	.byte		"BuiltInDTypeId"
	.byte		0
	.4byte		.L6995
.L6993:
	.sleb128	24
	.4byte		.L6994
.L6999:
	.sleb128	29
	.4byte		.L7000-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5279
	.sleb128	30
	.4byte		.L6279
	.sleb128	0
.L7000:
.L6998:
	.sleb128	24
	.4byte		.L6999
.L6997:
	.sleb128	22
	.byte		"RTWPreprocessingFcnPtr"
	.byte		0
	.4byte		.L6998
.L6996:
	.sleb128	24
	.4byte		.L6997
.L7005:
	.sleb128	22
	.byte		"RTWLogDataTypeConvert"
	.byte		0
	.4byte		.L7006
.L7004:
	.sleb128	24
	.4byte		.L7005
.L7008:
	.sleb128	24
	.4byte		.L6738
.L7014:
	.sleb128	24
	.4byte		.L4924
.L7015:
	.sleb128	24
	.4byte		.L6284
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L4918:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L4921:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo4),4
	.d2locend
.L4922:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),5
	.d2locend
.L4923:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),6
	.d2locend
.L4925:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),7
	.d2locend
.L4926:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),8
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),30
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),8
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),30
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),8
	.d2locend
.L4929:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo7),8
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),30
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),8
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),30
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),8
	.d2locend
.L4931:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),25
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),25
	.d2locend
.L4933:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo15),8
	.d2locend
.L4935:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),18
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),20
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo19),19
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),0
	.d2locend
.L4937:
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo3),3
	.d2locend
.L4939:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo5),0
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo3),0
	.d2locend
.L4941:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),22
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),24
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),21
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),25
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),25
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo47),24
	.d2locend
.L4943:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),0
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),24
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),0
	.d2locend
.L4945:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo54),24
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),25
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo55),24
	.d2locend
.L4947:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo56),12
	.d2locend
.L4949:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo56),12
	.d2locend
.L4951:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),25
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),25
	.d2locend
.L4953:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),30
	.d2locend
.L4955:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),0
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo48),0
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),23
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),20
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),20
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo68),24
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),23
	.d2locend
.L4957:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo20),31
	.d2locend
.L4959:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo20),30
	.d2locend
.L4961:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo20),31
	.d2locend
.L4963:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo26),21
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo72),22
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo19),22
	.d2locend
.L4965:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo26),20
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo72),21
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo19),21
	.d2locend
.L4967:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),23
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo52),0
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo78),23
	.d2locend
.L4971:
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo56),29
	.d2locend
.L4973:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo56),28
	.d2locend
.L4975:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo56),27
	.d2locend
.L4977:
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo20),26
	.d2locend
.L4983:
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),3
	.d2locend
.L4989:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),3
	.d2locend
.L4990:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),4
	.d2locend
.L4991:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo87),5
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),0
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),0
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),0
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo86),5
	.d2locend
.L4993:
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo89),0
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),7
	.d2locend
.L4995:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo98),0
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo94),0
	.d2locend
.L4997:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo94),5
	.d2locend
.L5003:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),0
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),3
	.d2locend
.L5004:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo103),4
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),4
	.d2locend
.L5005:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo105),5
	.d2locend
.L5006:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo105),6
	.d2locend
.L5008:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),11
	.d2locend
.L5010:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),11
	.d2locend
.L5012:
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo104),3
	.d2locend
.L5014:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),11
	.d2locend
.L5020:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),3
	.d2locend
.L5021:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo110),4
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo109),4
	.d2locend
.L5023:
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo111),7
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),7
	.d2locend
.L5025:
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo111),7
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),7
	.d2locend
.L5031:
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),3
	.d2locend
.L5032:
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo117),4
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo116),4
	.d2locend
.L5034:
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo118),7
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),7
	.d2locend
.L5036:
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo118),7
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),7
	.d2locend
.L5042:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),3
	.d2locend
.L5043:
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo126),4
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),0
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),4
	.d2locend
.L5045:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo128),0
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo131),3
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),3
	.d2locend
.L5047:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo134),5
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo124),0
	.d2locend
.L5049:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo124),4
	.d2locend
.L5055:
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),3
	.d2locend
.L5056:
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo139),4
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),0
	.d2locend
.L5058:
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo142),4
	.d2locend
.L5060:
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo141),5
	.d2locend
.L5066:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),3
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),3
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),3
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo151),3
	.d2locend
.L5067:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo152),4
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo154),30
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo156),30
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),30
	.d2locend
.L5068:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo159),5
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo161),6
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo163),5
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo165),6
	.d2locreg	%offsetof(.Llo166), %offsetof(.Llo167),5
	.d2locend
.L5069:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo168),6
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo170),6
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo167),6
	.d2locend
.L5070:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo171),7
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo173),7
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo167),7
	.d2locend
.L5071:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo174),8
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo176),8
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo178),8
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo180),8
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),8
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo167),8
	.d2locend
.L5072:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo167),9
	.d2locend
.L5073:
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
.L5075:
	.d2locreg	%offsetof(.Llo203), %offsetof(.Llo176),8
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo154),8
	.d2locend
.L5077:
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo183),10
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo186),28
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo189),28
	.d2locend
.L5079:
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),29
	.d2locend
.L5081:
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),30
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo210),30
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo212),30
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo214),30
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo172),30
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),30
	.d2locend
.L5083:
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),29
	.d2locend
.L5085:
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),30
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo210),30
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo212),30
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo214),30
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo172),30
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),30
	.d2locend
.L5087:
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo189),4
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo216),4
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo218),30
	.d2locreg	%offsetof(.Llo219), %offsetof(.Llo220),4
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),4
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),4
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),4
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),4
	.d2locend
.L5089:
	.d2locreg	%offsetof(.Llo225), %offsetof(.Llo226),4
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo227),4
	.d2locend
.L5091:
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),29
	.d2locend
.L5093:
	.d2locreg	%offsetof(.Llo228), %offsetof(.Llo197),10
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo223),10
	.d2locend
.L5095:
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo201),10
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo157),10
	.d2locend
.L5097:
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
.L5099:
	.d2locreg	%offsetof(.Llo245), %offsetof(.Llo214),4
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo246),4
	.d2locreg	%offsetof(.Llo247), %offsetof(.Llo248),4
	.d2locend
.L5101:
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),30
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo210),30
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo212),30
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo214),30
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo172),30
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),30
	.d2locend
.L5103:
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),30
	.d2locreg	%offsetof(.Llo249), %offsetof(.Llo209),10
	.d2locreg	%offsetof(.Llo250), %offsetof(.Llo210),30
	.d2locreg	%offsetof(.Llo251), %offsetof(.Llo252),10
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo212),30
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo214),30
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo172),30
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),30
	.d2locend
.L5105:
	.d2locreg	%offsetof(.Llo253), %offsetof(.Llo254),22
	.d2locreg	%offsetof(.Llo255), %offsetof(.Llo256),22
	.d2locend
.L5107:
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo252),11
	.d2locend
.L5109:
	.d2locreg	%offsetof(.Llo258), %offsetof(.Llo172),24
	.d2locend
.L5111:
	.d2locreg	%offsetof(.Llo259), %offsetof(.Llo260),0
	.d2locreg	%offsetof(.Llo261), %offsetof(.Llo262),10
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo179),10
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo264),10
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),0
	.d2locend
.L5113:
	.d2locreg	%offsetof(.Llo265), %offsetof(.Llo264),11
	.d2locreg	%offsetof(.Llo237), %offsetof(.Llo266),11
	.d2locend
.L5115:
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo267),18
	.d2locreg	%offsetof(.Llo268), %offsetof(.Llo235),18
	.d2locend
.L5117:
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo269),0
	.d2locreg	%offsetof(.Llo270), %offsetof(.Llo271),0
	.d2locreg	%offsetof(.Llo272), %offsetof(.Llo273),0
	.d2locreg	%offsetof(.Llo274), %offsetof(.Llo275),0
	.d2locreg	%offsetof(.Llo276), %offsetof(.Llo277),0
	.d2locreg	%offsetof(.Llo278), %offsetof(.Llo279),0
	.d2locreg	%offsetof(.Llo280), %offsetof(.Llo281),0
	.d2locreg	%offsetof(.Llo282), %offsetof(.Llo283),0
	.d2locend
.L5119:
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo150),7
	.d2locend
.L5121:
	.d2locreg	%offsetof(.Llo284), %offsetof(.Llo193),11
	.d2locend
.L5123:
	.d2locreg	%offsetof(.Llo285), %offsetof(.Llo286),20
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo267),20
	.d2locreg	%offsetof(.Llo287), %offsetof(.Llo235),20
	.d2locend
.L5125:
	.d2locreg	%offsetof(.Llo288), %offsetof(.Llo208),0
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo289),0
	.d2locreg	%offsetof(.Llo290), %offsetof(.Llo291),10
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo210),0
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo244),0
	.d2locend
.L5127:
	.d2locreg	%offsetof(.Llo292), %offsetof(.Llo269),20
	.d2locreg	%offsetof(.Llo270), %offsetof(.Llo293),22
	.d2locreg	%offsetof(.Llo294), %offsetof(.Llo279),20
	.d2locreg	%offsetof(.Llo280), %offsetof(.Llo295),30
	.d2locreg	%offsetof(.Llo296), %offsetof(.Llo252),20
	.d2locend
.L5129:
	.d2locreg	%offsetof(.Llo297), %offsetof(.Llo172),0
	.d2locend
.L5131:
	.d2locreg	%offsetof(.Llo298), %offsetof(.Llo299),25
	.d2locreg	%offsetof(.Llo300), %offsetof(.Llo301),25
	.d2locend
.L5133:
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
.L5135:
	.d2locreg	%offsetof(.Llo322), %offsetof(.Llo307),21
	.d2locreg	%offsetof(.Llo323), %offsetof(.Llo286),22
	.d2locend
.L5137:
	.d2locreg	%offsetof(.Llo324), %offsetof(.Llo310),11
	.d2locreg	%offsetof(.Llo325), %offsetof(.Llo243),11
	.d2locend
.L5139:
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
.L5141:
	.d2locreg	%offsetof(.Llo316), %offsetof(.Llo333),0
	.d2locreg	%offsetof(.Llo334), %offsetof(.Llo335),0
	.d2locend
.L5143:
	.d2locreg	%offsetof(.Llo336), %offsetof(.Llo337),28
	.d2locreg	%offsetof(.Llo338), %offsetof(.Llo246),26
	.d2locend
.L5145:
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo166),7
	.d2locend
.L5147:
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
.L5149:
	.d2locreg	%offsetof(.Llo348), %offsetof(.Llo349),11
	.d2locreg	%offsetof(.Llo262), %offsetof(.Llo350),11
	.d2locend
.L5151:
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),29
	.d2locend
.L5153:
	.d2locreg	%offsetof(.Llo351), %offsetof(.Llo352),11
	.d2locreg	%offsetof(.Llo353), %offsetof(.Llo209),11
	.d2locend
.L5155:
	.d2locreg	%offsetof(.Llo296), %offsetof(.Llo252),26
	.d2locreg	%offsetof(.Llo354), %offsetof(.Llo355),26
	.d2locend
.L5157:
	.d2locreg	%offsetof(.Llo356), %offsetof(.Llo357),28
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo358),28
	.d2locreg	%offsetof(.Llo359), %offsetof(.Llo360),28
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo227),28
	.d2locend
.L5159:
	.d2locreg	%offsetof(.Llo361), %offsetof(.Llo362),4
	.d2locreg	%offsetof(.Llo363), %offsetof(.Llo162),4
	.d2locreg	%offsetof(.Llo364), %offsetof(.Llo365),4
	.d2locend
.L5161:
	.d2locreg	%offsetof(.Llo366), %offsetof(.Llo252),28
	.d2locend
.L5163:
	.d2locreg	%offsetof(.Llo367), %offsetof(.Llo214),7
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo172),7
	.d2locend
.L5165:
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo193),10
	.d2locend
.L5167:
	.d2locreg	%offsetof(.Llo292), %offsetof(.Llo269),20
	.d2locreg	%offsetof(.Llo368), %offsetof(.Llo271),20
	.d2locreg	%offsetof(.Llo369), %offsetof(.Llo370),20
	.d2locreg	%offsetof(.Llo371), %offsetof(.Llo277),30
	.d2locreg	%offsetof(.Llo372), %offsetof(.Llo373),30
	.d2locreg	%offsetof(.Llo374), %offsetof(.Llo281),20
	.d2locreg	%offsetof(.Llo375), %offsetof(.Llo252),20
	.d2locend
.L5169:
	.d2locreg	%offsetof(.Llo376), %offsetof(.Llo172),31
	.d2locend
.L5171:
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),3
	.d2locend
.L5173:
	.d2locreg	%offsetof(.Llo377), %offsetof(.Llo146),12
	.d2locreg	%offsetof(.Llo378), %offsetof(.Llo379),24
	.d2locreg	%offsetof(.Llo380), %offsetof(.Llo150),12
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo223),12
	.d2locreg	%offsetof(.Llo382), %offsetof(.Llo157),12
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo167),12
	.d2locend
.L5175:
	.d2locreg	%offsetof(.Llo383), %offsetof(.Llo384),30
	.d2locreg	%offsetof(.Llo385), %offsetof(.Llo222),31
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),31
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),31
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),30
	.d2locend
.L5177:
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo189),4
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo220),4
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),4
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),4
	.d2locreg	%offsetof(.Llo386), %offsetof(.Llo387),4
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),4
	.d2locreg	%offsetof(.Llo388), %offsetof(.Llo389),4
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),4
	.d2locend
.L5179:
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
.L5181:
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),29
	.d2locend
.L5183:
	.d2locreg	%offsetof(.Llo394), %offsetof(.Llo395),28
	.d2locreg	%offsetof(.Llo396), %offsetof(.Llo212),28
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),28
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo206),28
	.d2locend
.L5185:
	.d2locreg	%offsetof(.Llo397), %offsetof(.Llo206),27
	.d2locend
.L5187:
	.d2locreg	%offsetof(.Llo398), %offsetof(.Llo241),26
	.d2locreg	%offsetof(.Llo399), %offsetof(.Llo353),26
	.d2locreg	%offsetof(.Llo400), %offsetof(.Llo295),26
	.d2locreg	%offsetof(.Llo401), %offsetof(.Llo212),26
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),26
	.d2locend
.L5189:
	.d2locreg	%offsetof(.Llo300), %offsetof(.Llo220),25
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),25
	.d2locend
.L5191:
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
.L5193:
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),3
	.d2locend
.L5195:
	.d2locreg	%offsetof(.Llo378), %offsetof(.Llo379),24
	.d2locreg	%offsetof(.Llo412), %offsetof(.Llo258),24
	.d2locend
.L5197:
	.d2locreg	%offsetof(.Llo413), %offsetof(.Llo414),31
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),31
	.d2locend
.L5199:
	.d2locreg	%offsetof(.Llo415), %offsetof(.Llo416),28
	.d2locend
.L5201:
	.d2locreg	%offsetof(.Llo417), %offsetof(.Llo179),23
	.d2locreg	%offsetof(.Llo418), %offsetof(.Llo220),23
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),23
	.d2locend
.L5203:
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo146),0
	.d2locend
.L5205:
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo419),3
	.d2locreg	%offsetof(.Llo420), %offsetof(.Llo146),4
	.d2locend
.L5207:
	.d2locreg	%offsetof(.Llo421), %offsetof(.Llo403),22
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo422),22
	.d2locreg	%offsetof(.Llo423), %offsetof(.Llo424),22
	.d2locend
.L5213:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo426),3
	.d2locreg	%offsetof(.Llo427), %offsetof(.Llo428),3
	.d2locend
.L5214:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo429),4
	.d2locreg	%offsetof(.Llo427), %offsetof(.Llo428),4
	.d2locend
.L5215:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo430),5
	.d2locreg	%offsetof(.Llo431), %offsetof(.Llo432),25
	.d2locend
.L5216:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo433),6
	.d2locreg	%offsetof(.Llo434), %offsetof(.Llo435),24
	.d2locend
.L5217:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo436),7
	.d2locreg	%offsetof(.Llo437), %offsetof(.Llo438),31
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo440),31
	.d2locend
.L5218:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo436),8
	.d2locreg	%offsetof(.Llo437), %offsetof(.Llo438),30
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo440),30
	.d2locend
.L5219:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo436),9
	.d2locreg	%offsetof(.Llo437), %offsetof(.Llo438),29
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo441),29
	.d2locend
.L5220:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo436),10
	.d2locreg	%offsetof(.Llo437), %offsetof(.Llo438),28
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo441),28
	.d2locend
.L5221:
	.d2locreg	%offsetof(.Llo442), %offsetof(.Llo443),12
	.d2locreg	%offsetof(.Llo444), %offsetof(.Llo445),3
	.d2locreg	%offsetof(.Llo446), %offsetof(.Llo447),3
	.d2locend
.L5222:
	.d2locreg	%offsetof(.Llo431), %offsetof(.Llo445),23
	.d2locend
.L5223:
	.d2locreg	%offsetof(.Llo434), %offsetof(.Llo445),22
	.d2locend
.L5224:
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo445),21
	.d2locend
.L5226:
	.d2locreg	%offsetof(.Llo448), %offsetof(.Llo438),27
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo449),27
	.d2locend
.L5228:
	.d2locreg	%offsetof(.Llo450), %offsetof(.Llo438),26
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo449),26
	.d2locend
.L5234:
	.d2locreg	%offsetof(.Llo451), %offsetof(.Llo452),3
	.d2locend
.L5235:
	.d2locreg	%offsetof(.Llo451), %offsetof(.Llo453),4
	.d2locend
.L5236:
	.d2locreg	%offsetof(.Llo451), %offsetof(.Llo454),5
	.d2locreg	%offsetof(.Llo455), %offsetof(.Llo453),5
	.d2locend
.L5238:
	.d2locreg	%offsetof(.Llo456), %offsetof(.Llo457),5
	.d2locend
.L5240:
	.d2locreg	%offsetof(.Llo452), %offsetof(.Llo455),3
	.d2locend
.L5246:
	.d2locreg	%offsetof(.Llo458), %offsetof(.Llo459),3
	.d2locreg	%offsetof(.Llo460), %offsetof(.Llo461),3
	.d2locreg	%offsetof(.Llo462), %offsetof(.Llo463),3
	.d2locreg	%offsetof(.Llo464), %offsetof(.Llo465),3
	.d2locend
.L5247:
	.d2locreg	%offsetof(.Llo458), %offsetof(.Llo461),4
	.d2locreg	%offsetof(.Llo464), %offsetof(.Llo465),4
	.d2locend
.L5248:
	.d2locreg	%offsetof(.Llo458), %offsetof(.Llo466),5
	.d2locreg	%offsetof(.Llo465), %offsetof(.Llo467),5
	.d2locend
.L5250:
	.d2locreg	%offsetof(.Llo468), %offsetof(.Llo461),5
	.d2locreg	%offsetof(.Llo464), %offsetof(.Llo465),5
	.d2locend
.L5252:
	.d2locreg	%offsetof(.Llo469), %offsetof(.Llo461),6
	.d2locend
.L5254:
	.d2locreg	%offsetof(.Llo470), %offsetof(.Llo461),7
	.d2locend
.L5256:
	.d2locreg	%offsetof(.Llo471), %offsetof(.Llo472),0
	.d2locreg	%offsetof(.Llo473), %offsetof(.Llo463),0
	.d2locreg	%offsetof(.Llo474), %offsetof(.Llo464),3
	.d2locreg	%offsetof(.Llo475), %offsetof(.Llo467),0
	.d2locend
.L5258:
	.d2locreg	%offsetof(.Llo476), %offsetof(.Llo477),0
	.d2locreg	%offsetof(.Llo459), %offsetof(.Llo468),6
	.d2locend
.L5260:
	.d2locreg	%offsetof(.Llo478), %offsetof(.Llo468),6
	.d2locend
.L5266:
	.d2locreg	%offsetof(.Llo479), %offsetof(.Llo480),3
	.d2locend
.L5267:
	.d2locreg	%offsetof(.Llo479), %offsetof(.Llo480),4
	.d2locend
.L5268:
	.d2locreg	%offsetof(.Llo479), %offsetof(.Llo480),5
	.d2locend
.L5282:
	.d2locreg	%offsetof(.Llo481), %offsetof(.Llo482),5
	.d2locend
.L5296:
	.d2locreg	%offsetof(.Llo483), %offsetof(.Llo484),3
	.d2locend
.L5302:
	.d2locreg	%offsetof(.Llo485), %offsetof(.Llo486),3
	.d2locreg	%offsetof(.Llo487), %offsetof(.Llo488),3
	.d2locend
.L5306:
	.d2locreg	%offsetof(.Llo485), %offsetof(.Llo488),4
	.d2locend
.L5307:
	.d2locreg	%offsetof(.Llo485), %offsetof(.Llo488),5
	.d2locend
.L5315:
	.d2locreg	%offsetof(.Llo489), %offsetof(.Llo490),3
	.d2locend
.L5319:
	.d2locreg	%offsetof(.Llo489), %offsetof(.Llo490),4
	.d2locend
.L5326:
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
	.d2locreg	%offsetof(.Llo577), %offsetof(.Llo578),0
	.d2locend
.L5333:
	.d2locreg	%offsetof(.Llo579), %offsetof(.Llo580),3
	.d2locreg	%offsetof(.Llo581), %offsetof(.Llo582),3
	.d2locend
.L5334:
	.d2locreg	%offsetof(.Llo579), %offsetof(.Llo583),4
	.d2locend
.L5336:
	.d2locreg	%offsetof(.Llo580), %offsetof(.Llo584),3
	.d2locend
.L5342:
	.d2locreg	%offsetof(.Llo585), %offsetof(.Llo586),3
	.d2locreg	%offsetof(.Llo587), %offsetof(.Llo588),3
	.d2locreg	%offsetof(.Llo589), %offsetof(.Llo590),3
	.d2locend
.L5343:
	.d2locreg	%offsetof(.Llo585), %offsetof(.Llo591),4
	.d2locend
.L5345:
	.d2locend
.L5354:
	.d2locreg	%offsetof(.Llo592), %offsetof(.Llo593),4
	.d2locend
.L5356:
	.d2locreg	%offsetof(.Llo594), %offsetof(.Llo595),4
	.d2locend
.L5358:
	.d2locreg	%offsetof(.Llo596), %offsetof(.Llo597),4
	.d2locend
.L5365:
	.d2locreg	%offsetof(.Llo598), %offsetof(.Llo599),4
	.d2locreg	%offsetof(.Llo600), %offsetof(.Llo601),4
	.d2locreg	%offsetof(.Llo602), %offsetof(.Llo603),4
	.d2locreg	%offsetof(.Llo604), %offsetof(.Llo605),10
	.d2locreg	%offsetof(.Llo606), %offsetof(.Llo607),4
	.d2locreg	%offsetof(.Llo608), %offsetof(.Llo609),10
	.d2locreg	%offsetof(.Llo610), %offsetof(.Llo611),4
	.d2locreg	%offsetof(.Llo612), %offsetof(.Llo613),4
	.d2locreg	%offsetof(.Llo614), %offsetof(.Llo615),4
	.d2locreg	%offsetof(.Llo616), %offsetof(.Llo617),4
	.d2locreg	%offsetof(.Llo618), %offsetof(.Llo619),4
	.d2locreg	%offsetof(.Llo620), %offsetof(.Llo621),4
	.d2locreg	%offsetof(.Llo622), %offsetof(.Llo623),4
	.d2locreg	%offsetof(.Llo624), %offsetof(.Llo625),4
	.d2locreg	%offsetof(.Llo626), %offsetof(.Llo627),4
	.d2locreg	%offsetof(.Llo628), %offsetof(.Llo629),4
	.d2locend
.L5367:
	.d2locreg	%offsetof(.Llo630), %offsetof(.Llo631),27
	.d2locreg	%offsetof(.Llo632), %offsetof(.Llo633),27
	.d2locreg	%offsetof(.Llo634), %offsetof(.Llo635),27
	.d2locreg	%offsetof(.Llo636), %offsetof(.Llo637),27
	.d2locreg	%offsetof(.Llo638), %offsetof(.Llo639),27
	.d2locreg	%offsetof(.Llo640), %offsetof(.Llo641),27
	.d2locreg	%offsetof(.Llo642), %offsetof(.Llo643),27
	.d2locreg	%offsetof(.Llo644), %offsetof(.Llo645),27
	.d2locreg	%offsetof(.Llo646), %offsetof(.Llo647),27
	.d2locreg	%offsetof(.Llo648), %offsetof(.Llo649),27
	.d2locreg	%offsetof(.Llo650), %offsetof(.Llo651),27
	.d2locreg	%offsetof(.Llo652), %offsetof(.Llo653),30
	.d2locreg	%offsetof(.Llo654), %offsetof(.Llo655),27
	.d2locreg	%offsetof(.Llo656), %offsetof(.Llo657),3
	.d2locreg	%offsetof(.Llo658), %offsetof(.Llo659),30
	.d2locend
.L5371:
	.d2locreg	%offsetof(.Llo660), %offsetof(.Llo661),26
	.d2locreg	%offsetof(.Llo662), %offsetof(.Llo645),26
	.d2locreg	%offsetof(.Llo663), %offsetof(.Llo647),26
	.d2locend
.L5375:
	.d2locreg	%offsetof(.Llo664), %offsetof(.Llo637),3
	.d2locreg	%offsetof(.Llo665), %offsetof(.Llo666),3
	.d2locreg	%offsetof(.Llo667), %offsetof(.Llo668),3
	.d2locend
.L5377:
	.d2locreg	%offsetof(.Llo669), %offsetof(.Llo670),3
	.d2locreg	%offsetof(.Llo671), %offsetof(.Llo672),3
	.d2locreg	%offsetof(.Llo673), %offsetof(.Llo674),3
	.d2locreg	%offsetof(.Llo675), %offsetof(.Llo676),3
	.d2locreg	%offsetof(.Llo677), %offsetof(.Llo678),3
	.d2locreg	%offsetof(.Llo679), %offsetof(.Llo680),3
	.d2locend
.L5379:
	.d2locreg	%offsetof(.Llo681), %offsetof(.Llo682),26
	.d2locreg	%offsetof(.Llo683), %offsetof(.Llo684),26
	.d2locend
.L5381:
	.d2locreg	%offsetof(.Llo685), %offsetof(.Llo686),0
	.d2locreg	%offsetof(.Llo687), %offsetof(.Llo688),3
	.d2locreg	%offsetof(.Llo689), %offsetof(.Llo690),3
	.d2locreg	%offsetof(.Llo691), %offsetof(.Llo692),3
	.d2locreg	%offsetof(.Llo693), %offsetof(.Llo694),3
	.d2locreg	%offsetof(.Llo695), %offsetof(.Llo696),3
	.d2locreg	%offsetof(.Llo697), %offsetof(.Llo698),3
	.d2locreg	%offsetof(.Llo699), %offsetof(.Llo700),3
	.d2locreg	%offsetof(.Llo701), %offsetof(.Llo702),3
	.d2locreg	%offsetof(.Llo703), %offsetof(.Llo704),3
	.d2locreg	%offsetof(.Llo705), %offsetof(.Llo706),3
	.d2locreg	%offsetof(.Llo707), %offsetof(.Llo708),3
	.d2locreg	%offsetof(.Llo709), %offsetof(.Llo710),3
	.d2locreg	%offsetof(.Llo711), %offsetof(.Llo712),3
	.d2locreg	%offsetof(.Llo713), %offsetof(.Llo714),3
	.d2locreg	%offsetof(.Llo715), %offsetof(.Llo716),3
	.d2locreg	%offsetof(.Llo717), %offsetof(.Llo718),3
	.d2locreg	%offsetof(.Llo719), %offsetof(.Llo720),3
	.d2locreg	%offsetof(.Llo721), %offsetof(.Llo722),3
	.d2locreg	%offsetof(.Llo723), %offsetof(.Llo724),3
	.d2locreg	%offsetof(.Llo725), %offsetof(.Llo726),3
	.d2locreg	%offsetof(.Llo727), %offsetof(.Llo728),3
	.d2locreg	%offsetof(.Llo729), %offsetof(.Llo730),26
	.d2locreg	%offsetof(.Llo731), %offsetof(.Llo732),26
	.d2locend
.L5383:
	.d2locreg	%offsetof(.Llo733), %offsetof(.Llo689),3
	.d2locreg	%offsetof(.Llo734), %offsetof(.Llo692),26
	.d2locend
.L5385:
	.d2locreg	%offsetof(.Llo735), %offsetof(.Llo736),3
	.d2locend
.L5387:
	.d2locreg	%offsetof(.Llo737), %offsetof(.Llo738),3
	.d2locreg	%offsetof(.Llo739), %offsetof(.Llo740),26
	.d2locend
.L5389:
	.d2locreg	%offsetof(.Llo741), %offsetof(.Llo742),3
	.d2locreg	%offsetof(.Llo743), %offsetof(.Llo744),3
	.d2locreg	%offsetof(.Llo745), %offsetof(.Llo746),3
	.d2locend
.L5391:
	.d2locreg	%offsetof(.Llo747), %offsetof(.Llo748),3
	.d2locreg	%offsetof(.Llo749), %offsetof(.Llo750),3
	.d2locreg	%offsetof(.Llo751), %offsetof(.Llo752),3
	.d2locreg	%offsetof(.Llo753), %offsetof(.Llo754),3
	.d2locreg	%offsetof(.Llo755), %offsetof(.Llo756),3
	.d2locreg	%offsetof(.Llo757), %offsetof(.Llo758),3
	.d2locend
.L5393:
	.d2locreg	%offsetof(.Llo759), %offsetof(.Llo751),3
	.d2locreg	%offsetof(.Llo760), %offsetof(.Llo761),27
	.d2locend
.L5395:
	.d2locreg	%offsetof(.Llo762), %offsetof(.Llo654),3
	.d2locreg	%offsetof(.Llo655), %offsetof(.Llo658),30
	.d2locend
.L5397:
	.d2locreg	%offsetof(.Llo763), %offsetof(.Llo764),3
	.d2locreg	%offsetof(.Llo765), %offsetof(.Llo766),3
	.d2locreg	%offsetof(.Llo767), %offsetof(.Llo611),3
	.d2locreg	%offsetof(.Llo768), %offsetof(.Llo769),3
	.d2locreg	%offsetof(.Llo770), %offsetof(.Llo771),3
	.d2locreg	%offsetof(.Llo772), %offsetof(.Llo629),3
	.d2locreg	%offsetof(.Llo773), %offsetof(.Llo774),3
	.d2locreg	%offsetof(.Llo775), %offsetof(.Llo776),3
	.d2locend
.L5400:
	.d2locreg	%offsetof(.Llo741), %offsetof(.Llo742),3
	.d2locreg	%offsetof(.Llo743), %offsetof(.Llo777),3
	.d2locreg	%offsetof(.Llo747), %offsetof(.Llo748),3
	.d2locreg	%offsetof(.Llo749), %offsetof(.Llo778),3
	.d2locreg	%offsetof(.Llo761), %offsetof(.Llo754),3
	.d2locend
.L5402:
	.d2locreg	%offsetof(.Llo779), %offsetof(.Llo777),0
	.d2locreg	%offsetof(.Llo780), %offsetof(.Llo781),0
	.d2locreg	%offsetof(.Llo782), %offsetof(.Llo783),0
	.d2locreg	%offsetof(.Llo784), %offsetof(.Llo785),0
	.d2locreg	%offsetof(.Llo786), %offsetof(.Llo748),0
	.d2locreg	%offsetof(.Llo749), %offsetof(.Llo787),0
	.d2locreg	%offsetof(.Llo788), %offsetof(.Llo789),0
	.d2locreg	%offsetof(.Llo790), %offsetof(.Llo754),0
	.d2locreg	%offsetof(.Llo791), %offsetof(.Llo792),0
	.d2locreg	%offsetof(.Llo793), %offsetof(.Llo794),0
	.d2locreg	%offsetof(.Llo795), %offsetof(.Llo796),0
	.d2locreg	%offsetof(.Llo797), %offsetof(.Llo798),0
	.d2locreg	%offsetof(.Llo799), %offsetof(.Llo800),0
	.d2locreg	%offsetof(.Llo801), %offsetof(.Llo802),0
	.d2locreg	%offsetof(.Llo803), %offsetof(.Llo804),0
	.d2locreg	%offsetof(.Llo805), %offsetof(.Llo806),0
	.d2locreg	%offsetof(.Llo807), %offsetof(.Llo808),0
	.d2locreg	%offsetof(.Llo809), %offsetof(.Llo810),0
	.d2locreg	%offsetof(.Llo811), %offsetof(.Llo812),0
	.d2locreg	%offsetof(.Llo813), %offsetof(.Llo814),0
	.d2locreg	%offsetof(.Llo815), %offsetof(.Llo816),0
	.d2locreg	%offsetof(.Llo817), %offsetof(.Llo818),0
	.d2locreg	%offsetof(.Llo819), %offsetof(.Llo820),0
	.d2locreg	%offsetof(.Llo821), %offsetof(.Llo822),0
	.d2locreg	%offsetof(.Llo823), %offsetof(.Llo824),0
	.d2locreg	%offsetof(.Llo825), %offsetof(.Llo826),0
	.d2locreg	%offsetof(.Llo827), %offsetof(.Llo828),0
	.d2locreg	%offsetof(.Llo829), %offsetof(.Llo830),0
	.d2locreg	%offsetof(.Llo831), %offsetof(.Llo832),0
	.d2locreg	%offsetof(.Llo833), %offsetof(.Llo834),0
	.d2locreg	%offsetof(.Llo835), %offsetof(.Llo601),0
	.d2locreg	%offsetof(.Llo836), %offsetof(.Llo837),0
	.d2locreg	%offsetof(.Llo838), %offsetof(.Llo638),0
	.d2locreg	%offsetof(.Llo665), %offsetof(.Llo839),0
	.d2locreg	%offsetof(.Llo840), %offsetof(.Llo841),0
	.d2locreg	%offsetof(.Llo842), %offsetof(.Llo843),0
	.d2locreg	%offsetof(.Llo844), %offsetof(.Llo642),0
	.d2locreg	%offsetof(.Llo845), %offsetof(.Llo846),0
	.d2locreg	%offsetof(.Llo847), %offsetof(.Llo643),0
	.d2locreg	%offsetof(.Llo848), %offsetof(.Llo849),0
	.d2locreg	%offsetof(.Llo850), %offsetof(.Llo851),0
	.d2locreg	%offsetof(.Llo852), %offsetof(.Llo853),0
	.d2locreg	%offsetof(.Llo854), %offsetof(.Llo855),0
	.d2locreg	%offsetof(.Llo856), %offsetof(.Llo857),0
	.d2locreg	%offsetof(.Llo858), %offsetof(.Llo859),0
	.d2locreg	%offsetof(.Llo860), %offsetof(.Llo861),0
	.d2locreg	%offsetof(.Llo862), %offsetof(.Llo863),0
	.d2locreg	%offsetof(.Llo864), %offsetof(.Llo865),0
	.d2locreg	%offsetof(.Llo866), %offsetof(.Llo867),0
	.d2locreg	%offsetof(.Llo766), %offsetof(.Llo868),0
	.d2locreg	%offsetof(.Llo869), %offsetof(.Llo870),0
	.d2locreg	%offsetof(.Llo871), %offsetof(.Llo611),0
	.d2locreg	%offsetof(.Llo872), %offsetof(.Llo873),0
	.d2locreg	%offsetof(.Llo874), %offsetof(.Llo875),0
	.d2locreg	%offsetof(.Llo876), %offsetof(.Llo629),0
	.d2locreg	%offsetof(.Llo773), %offsetof(.Llo877),0
	.d2locreg	%offsetof(.Llo878), %offsetof(.Llo879),0
	.d2locreg	%offsetof(.Llo880), %offsetof(.Llo776),0
	.d2locend
.L5404:
	.d2locreg	%offsetof(.Llo881), %offsetof(.Llo882),8
	.d2locreg	%offsetof(.Llo883), %offsetof(.Llo884),8
	.d2locreg	%offsetof(.Llo885), %offsetof(.Llo886),8
	.d2locreg	%offsetof(.Llo887), %offsetof(.Llo888),8
	.d2locreg	%offsetof(.Llo889), %offsetof(.Llo890),8
	.d2locend
.L5406:
	.d2locreg	%offsetof(.Llo891), %offsetof(.Llo892),4
	.d2locend
.L5408:
	.d2locreg	%offsetof(.Llo893), %offsetof(.Llo894),3
	.d2locreg	%offsetof(.Llo895), %offsetof(.Llo896),31
	.d2locend
.L5410:
	.d2locreg	%offsetof(.Llo897), %offsetof(.Llo898),24
	.d2locreg	%offsetof(.Llo732), %offsetof(.Llo899),24
	.d2locreg	%offsetof(.Llo891), %offsetof(.Llo900),4
	.d2locreg	%offsetof(.Llo901), %offsetof(.Llo902),4
	.d2locreg	%offsetof(.Llo903), %offsetof(.Llo787),4
	.d2locreg	%offsetof(.Llo904), %offsetof(.Llo905),4
	.d2locreg	%offsetof(.Llo906), %offsetof(.Llo796),4
	.d2locreg	%offsetof(.Llo907), %offsetof(.Llo908),4
	.d2locreg	%offsetof(.Llo909), %offsetof(.Llo910),4
	.d2locreg	%offsetof(.Llo911), %offsetof(.Llo912),10
	.d2locreg	%offsetof(.Llo913), %offsetof(.Llo822),4
	.d2locreg	%offsetof(.Llo914), %offsetof(.Llo915),4
	.d2locreg	%offsetof(.Llo916), %offsetof(.Llo917),4
	.d2locreg	%offsetof(.Llo918), %offsetof(.Llo919),4
	.d2locreg	%offsetof(.Llo920), %offsetof(.Llo843),4
	.d2locreg	%offsetof(.Llo921), %offsetof(.Llo645),24
	.d2locend
.L5412:
	.d2locreg	%offsetof(.Llo922), %offsetof(.Llo898),9
	.d2locreg	%offsetof(.Llo732), %offsetof(.Llo899),9
	.d2locreg	%offsetof(.Llo923), %offsetof(.Llo924),9
	.d2locreg	%offsetof(.Llo925), %offsetof(.Llo926),9
	.d2locreg	%offsetof(.Llo927), %offsetof(.Llo604),9
	.d2locreg	%offsetof(.Llo928), %offsetof(.Llo929),9
	.d2locend
.L5414:
	.d2locreg	%offsetof(.Llo930), %offsetof(.Llo931),6
	.d2locreg	%offsetof(.Llo932), %offsetof(.Llo933),10
	.d2locreg	%offsetof(.Llo934), %offsetof(.Llo935),10
	.d2locreg	%offsetof(.Llo936), %offsetof(.Llo937),10
	.d2locreg	%offsetof(.Llo938), %offsetof(.Llo939),6
	.d2locend
.L5416:
	.d2locreg	%offsetof(.Llo930), %offsetof(.Llo931),6
	.d2locreg	%offsetof(.Llo940), %offsetof(.Llo731),6
	.d2locreg	%offsetof(.Llo941), %offsetof(.Llo732),6
	.d2locreg	%offsetof(.Llo942), %offsetof(.Llo939),6
	.d2locreg	%offsetof(.Llo943), %offsetof(.Llo944),0
	.d2locreg	%offsetof(.Llo900), %offsetof(.Llo892),6
	.d2locreg	%offsetof(.Llo945), %offsetof(.Llo946),0
	.d2locreg	%offsetof(.Llo947), %offsetof(.Llo948),0
	.d2locreg	%offsetof(.Llo949), %offsetof(.Llo745),0
	.d2locreg	%offsetof(.Llo950), %offsetof(.Llo951),0
	.d2locreg	%offsetof(.Llo952), %offsetof(.Llo953),6
	.d2locreg	%offsetof(.Llo954), %offsetof(.Llo955),6
	.d2locreg	%offsetof(.Llo956), %offsetof(.Llo822),6
	.d2locreg	%offsetof(.Llo957), %offsetof(.Llo958),6
	.d2locreg	%offsetof(.Llo959), %offsetof(.Llo960),6
	.d2locreg	%offsetof(.Llo961), %offsetof(.Llo611),6
	.d2locreg	%offsetof(.Llo962), %offsetof(.Llo963),6
	.d2locreg	%offsetof(.Llo964), %offsetof(.Llo613),6
	.d2locend
.L5434:
	.d2locreg	%offsetof(.Llo965), %offsetof(.Llo966),3
	.d2locreg	%offsetof(.Llo967), %offsetof(.Llo968),3
	.d2locreg	%offsetof(.Llo969), %offsetof(.Llo970),3
	.d2locreg	%offsetof(.Llo971), %offsetof(.Llo972),3
	.d2locreg	%offsetof(.Llo973), %offsetof(.Llo633),3
	.d2locreg	%offsetof(.Llo805), %offsetof(.Llo806),25
	.d2locreg	%offsetof(.Llo907), %offsetof(.Llo974),3
	.d2locreg	%offsetof(.Llo635), %offsetof(.Llo975),25
	.d2locreg	%offsetof(.Llo976), %offsetof(.Llo813),25
	.d2locreg	%offsetof(.Llo977), %offsetof(.Llo645),25
	.d2locreg	%offsetof(.Llo978), %offsetof(.Llo647),25
	.d2locend
.L5449:
	.d2locreg	%offsetof(.Llo979), %offsetof(.Llo980),3
	.d2locreg	%offsetof(.Llo981), %offsetof(.Llo982),3
	.d2locreg	%offsetof(.Llo983), %offsetof(.Llo984),3
	.d2locreg	%offsetof(.Llo985), %offsetof(.Llo986),3
	.d2locreg	%offsetof(.Llo987), %offsetof(.Llo988),3
	.d2locreg	%offsetof(.Llo989), %offsetof(.Llo990),3
	.d2locreg	%offsetof(.Llo991), %offsetof(.Llo992),3
	.d2locreg	%offsetof(.Llo993), %offsetof(.Llo994),3
	.d2locreg	%offsetof(.Llo995), %offsetof(.Llo996),3
	.d2locreg	%offsetof(.Llo997), %offsetof(.Llo998),3
	.d2locreg	%offsetof(.Llo999), %offsetof(.Llo1000),3
	.d2locreg	%offsetof(.Llo1001), %offsetof(.Llo730),3
	.d2locreg	%offsetof(.Llo1002), %offsetof(.Llo898),3
	.d2locreg	%offsetof(.Llo1003), %offsetof(.Llo1004),3
	.d2locreg	%offsetof(.Llo1005), %offsetof(.Llo732),3
	.d2locreg	%offsetof(.Llo1006), %offsetof(.Llo1007),3
	.d2locreg	%offsetof(.Llo1008), %offsetof(.Llo1009),3
	.d2locreg	%offsetof(.Llo1010), %offsetof(.Llo1011),3
	.d2locreg	%offsetof(.Llo1012), %offsetof(.Llo1013),3
	.d2locreg	%offsetof(.Llo1014), %offsetof(.Llo1015),3
	.d2locreg	%offsetof(.Llo1016), %offsetof(.Llo1017),3
	.d2locreg	%offsetof(.Llo943), %offsetof(.Llo1018),3
	.d2locreg	%offsetof(.Llo1019), %offsetof(.Llo1020),3
	.d2locreg	%offsetof(.Llo1021), %offsetof(.Llo1022),3
	.d2locreg	%offsetof(.Llo738), %offsetof(.Llo1023),3
	.d2locreg	%offsetof(.Llo1024), %offsetof(.Llo1025),3
	.d2locreg	%offsetof(.Llo740), %offsetof(.Llo1026),26
	.d2locreg	%offsetof(.Llo1027), %offsetof(.Llo781),26
	.d2locreg	%offsetof(.Llo1028), %offsetof(.Llo633),26
	.d2locreg	%offsetof(.Llo1029), %offsetof(.Llo635),26
	.d2locreg	%offsetof(.Llo911), %offsetof(.Llo813),26
	.d2locreg	%offsetof(.Llo1030), %offsetof(.Llo818),26
	.d2locreg	%offsetof(.Llo660), %offsetof(.Llo1031),26
	.d2locend
.L5463:
	.d2locreg	%offsetof(.Llo1032), %offsetof(.Llo635),3
	.d2locreg	%offsetof(.Llo975), %offsetof(.Llo810),3
	.d2locreg	%offsetof(.Llo1033), %offsetof(.Llo1034),3
	.d2locreg	%offsetof(.Llo1035), %offsetof(.Llo1036),3
	.d2locreg	%offsetof(.Llo1037), %offsetof(.Llo1038),3
	.d2locend
.L5474:
	.d2locreg	%offsetof(.Llo1039), %offsetof(.Llo813),3
	.d2locreg	%offsetof(.Llo814), %offsetof(.Llo816),3
	.d2locreg	%offsetof(.Llo1040), %offsetof(.Llo822),3
	.d2locreg	%offsetof(.Llo664), %offsetof(.Llo637),3
	.d2locreg	%offsetof(.Llo1041), %offsetof(.Llo638),3
	.d2locreg	%offsetof(.Llo665), %offsetof(.Llo1042),3
	.d2locreg	%offsetof(.Llo1043), %offsetof(.Llo1044),3
	.d2locend
.L5486:
	.d2locreg	%offsetof(.Llo1045), %offsetof(.Llo645),3
	.d2locreg	%offsetof(.Llo1046), %offsetof(.Llo853),3
	.d2locreg	%offsetof(.Llo1047), %offsetof(.Llo1048),3
	.d2locend
.L5497:
	.d2locreg	%offsetof(.Llo1049), %offsetof(.Llo647),3
	.d2locreg	%offsetof(.Llo1050), %offsetof(.Llo859),3
	.d2locreg	%offsetof(.Llo1051), %offsetof(.Llo1052),3
	.d2locend
.L5369:
.L5373:
	.d2locend
.L5733:
	.d2locreg	%offsetof(.Llo1053), %offsetof(.Llo1054),3
	.d2locreg	%offsetof(.Llo1055), %offsetof(.Llo1056),3
	.d2locreg	%offsetof(.Llo1057), %offsetof(.Llo1058),3
	.d2locreg	%offsetof(.Llo1059), %offsetof(.Llo1060),3
	.d2locreg	%offsetof(.Llo1061), %offsetof(.Llo1062),30
	.d2locend
.L5735:
	.d2locreg	%offsetof(.Llo1063), %offsetof(.Llo1057),3
	.d2locreg	%offsetof(.Llo1064), %offsetof(.Llo1061),30
	.d2locend
.L5737:
	.d2locreg	%offsetof(.Llo1065), %offsetof(.Llo1066),3
	.d2locreg	%offsetof(.Llo1067), %offsetof(.Llo1068),3
	.d2locreg	%offsetof(.Llo1069), %offsetof(.Llo1070),3
	.d2locreg	%offsetof(.Llo1071), %offsetof(.Llo1072),3
	.d2locreg	%offsetof(.Llo1073), %offsetof(.Llo1074),30
	.d2locend
.L5739:
	.d2locreg	%offsetof(.Llo1075), %offsetof(.Llo1069),3
	.d2locreg	%offsetof(.Llo1076), %offsetof(.Llo1073),30
	.d2locend
.L5741:
	.d2locreg	%offsetof(.Llo1077), %offsetof(.Llo1078),3
	.d2locreg	%offsetof(.Llo1079), %offsetof(.Llo1080),3
	.d2locreg	%offsetof(.Llo1081), %offsetof(.Llo1082),3
	.d2locreg	%offsetof(.Llo1083), %offsetof(.Llo1084),3
	.d2locreg	%offsetof(.Llo1085), %offsetof(.Llo1086),30
	.d2locend
.L5743:
	.d2locreg	%offsetof(.Llo1087), %offsetof(.Llo1081),3
	.d2locreg	%offsetof(.Llo1088), %offsetof(.Llo1085),30
	.d2locend
.L5745:
	.d2locreg	%offsetof(.Llo1089), %offsetof(.Llo1090),3
	.d2locreg	%offsetof(.Llo1091), %offsetof(.Llo1092),3
	.d2locreg	%offsetof(.Llo1093), %offsetof(.Llo1094),3
	.d2locreg	%offsetof(.Llo1095), %offsetof(.Llo1096),3
	.d2locreg	%offsetof(.Llo1097), %offsetof(.Llo1098),30
	.d2locend
.L5747:
	.d2locreg	%offsetof(.Llo1099), %offsetof(.Llo1093),3
	.d2locreg	%offsetof(.Llo1100), %offsetof(.Llo1097),30
	.d2locend
.L5749:
	.d2locreg	%offsetof(.Llo1101), %offsetof(.Llo1102),3
	.d2locreg	%offsetof(.Llo1103), %offsetof(.Llo1104),3
	.d2locreg	%offsetof(.Llo1105), %offsetof(.Llo1106),3
	.d2locreg	%offsetof(.Llo1107), %offsetof(.Llo1108),3
	.d2locreg	%offsetof(.Llo1109), %offsetof(.Llo1110),30
	.d2locend
.L5751:
	.d2locreg	%offsetof(.Llo1111), %offsetof(.Llo1105),3
	.d2locreg	%offsetof(.Llo1112), %offsetof(.Llo1109),30
	.d2locend
.L5753:
	.d2locreg	%offsetof(.Llo1113), %offsetof(.Llo1114),3
	.d2locreg	%offsetof(.Llo1115), %offsetof(.Llo1116),3
	.d2locreg	%offsetof(.Llo1117), %offsetof(.Llo1118),3
	.d2locreg	%offsetof(.Llo1119), %offsetof(.Llo1120),3
	.d2locreg	%offsetof(.Llo1121), %offsetof(.Llo1122),30
	.d2locend
.L5755:
	.d2locreg	%offsetof(.Llo1123), %offsetof(.Llo1117),3
	.d2locreg	%offsetof(.Llo1124), %offsetof(.Llo1121),30
	.d2locend
.L5757:
	.d2locreg	%offsetof(.Llo1125), %offsetof(.Llo1126),3
	.d2locreg	%offsetof(.Llo1127), %offsetof(.Llo1128),3
	.d2locreg	%offsetof(.Llo1129), %offsetof(.Llo1130),3
	.d2locreg	%offsetof(.Llo1131), %offsetof(.Llo1132),3
	.d2locreg	%offsetof(.Llo1133), %offsetof(.Llo1134),3
	.d2locend
.L5759:
	.d2locreg	%offsetof(.Llo1135), %offsetof(.Llo1136),3
	.d2locreg	%offsetof(.Llo1137), %offsetof(.Llo1138),30
	.d2locend
.L5764:
	.d2locreg	%offsetof(.Llo1139), %offsetof(.Llo1140),3
	.d2locreg	%offsetof(.Llo1141), %offsetof(.Llo1142),3
	.d2locreg	%offsetof(.Llo1143), %offsetof(.Llo1144),3
	.d2locend
.L5775:
	.d2locreg	%offsetof(.Llo1145), %offsetof(.Llo1146),3
	.d2locreg	%offsetof(.Llo1147), %offsetof(.Llo1148),3
	.d2locreg	%offsetof(.Llo1149), %offsetof(.Llo1150),3
	.d2locreg	%offsetof(.Llo1151), %offsetof(.Llo1152),3
	.d2locreg	%offsetof(.Llo1153), %offsetof(.Llo1154),3
	.d2locend
.L5790:
	.d2locreg	%offsetof(.Llo1152), %offsetof(.Llo1155),3
	.d2locreg	%offsetof(.Llo1156), %offsetof(.Llo1157),3
	.d2locreg	%offsetof(.Llo1158), %offsetof(.Llo1159),3
	.d2locreg	%offsetof(.Llo1160), %offsetof(.Llo1161),3
	.d2locreg	%offsetof(.Llo1162), %offsetof(.Llo1163),3
	.d2locreg	%offsetof(.Llo1164), %offsetof(.Llo1165),3
	.d2locreg	%offsetof(.Llo1166), %offsetof(.Llo1167),3
	.d2locend
.L5802:
	.d2locreg	%offsetof(.Llo1165), %offsetof(.Llo1168),3
	.d2locreg	%offsetof(.Llo1169), %offsetof(.Llo1170),3
	.d2locreg	%offsetof(.Llo1136), %offsetof(.Llo1171),3
	.d2locreg	%offsetof(.Llo1172), %offsetof(.Llo1173),3
	.d2locreg	%offsetof(.Llo1138), %offsetof(.Llo1174),30
	.d2locend
.L5814:
	.d2locreg	%offsetof(.Llo1132), %offsetof(.Llo1175),3
	.d2locreg	%offsetof(.Llo1176), %offsetof(.Llo1177),3
	.d2locreg	%offsetof(.Llo1178), %offsetof(.Llo1179),3
	.d2locend
.L6071:
	.d2locreg	%offsetof(.Llo1180), %offsetof(.Llo1181),3
	.d2locend
.L6077:
	.d2locreg	%offsetof(.Llo1182), %offsetof(.Llo1183),3
	.d2locend
.L6112:
	.d2locreg	%offsetof(.Llo1184), %offsetof(.Llo1185),4
	.d2locend
.L6114:
	.d2locreg	%offsetof(.Llo1184), %offsetof(.Llo1185),4
	.d2locreg	%offsetof(.Llo1186), %offsetof(.Llo1187),4
	.d2locreg	%offsetof(.Llo1188), %offsetof(.Llo1189),4
	.d2locend
.L6138:
	.d2locreg	%offsetof(.Llo1190), %offsetof(.Llo1191),3
	.d2locreg	%offsetof(.Llo1192), %offsetof(.Llo1193),3
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
	.wrcm.nint32 "frameSize", 80
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
	.wrcm.nstrlist "calls", "ATV_Chart","_d_dtof","_f_ftod","floor","fmod","pcx_receive","pcx_transmit","pcx_vdb_pack_msg","pcx_vdb_unpack_msg","rtIsInf","rtIsNaN"
	.wrcm.nint32 "frameSize", 352
	.wrcm.end
	.wrcm.nelem "ATV_update0"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "ATV_output0"
	.wrcm.nint32 "local", 1
	.wrcm.nlist "calls"
	.wrcm.str "ATV_KEY_ON"
	.wrcm.str "ATV_Off"
	.wrcm.str "ATV_On"
	.wrcm.str "ATV_ProceduraAvviamento"
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
	.wrcm.str "rtIsNaN"
	.wrcm.str "sLong2MultiWord"
	.wrcm.str "sMultiWordDivFloor"
	.wrcm.str "sMultiWordGe"
	.wrcm.str "sMultiWordMul"
	.wrcm.end
	.wrcm.nint32 "frameSize", 448
	.wrcm.end
	.wrcm.nelem "ATV_ProceduraAvviamento"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "ATV_On"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "ATV_Off"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "ATV_KEY_ON"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "GestioneIbridoProceduraAvvi"
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
