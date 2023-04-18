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
# uint32_T MultiWord2uLong(const uint32_T u[])
# {
	.align		2
	.section	.text_vle
	.d2file		"ATV.c"
        .d2line         152
#$$ld
.L4356:

#$$bf	MultiWord2uLong,interprocedural,nostackparams

# Regs written: r3
	.globl		MultiWord2uLong
	.d2_cfa_start __cie
MultiWord2uLong:
	.d2line		0
	.d2prologue_end
#   return u[0];
	.d2line		153
.Llo1:
	lwz		r3,0(r3)		# u=r3 u=r3
# }
	.d2line		154
	.d2epilogue_begin
.Llo2:
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4357:
	.type		MultiWord2uLong,@function
	.size		MultiWord2uLong,.-MultiWord2uLong
# Number of nodes = 3

# Allocations for MultiWord2uLong
#	?a4		u
# void sMultiWordShr(const uint32_T u1[], int32_T n1, uint32_T n2, uint32_T y[],
#                    int32_T n)
# {
	.align		2
	.section	.text_vle
        .d2line         158
#$$ld
.L4367:

#$$bf	sMultiWordShr,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r8,r9,r10,r11,r12,r28,r29,r30,r31,cr0,xer,ctr
	.globl		sMultiWordShr
	.d2_cfa_start __cie
sMultiWordShr:
.Llo3:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	.d2prologue_end
#   int32_T nb;
#   int32_T i;
#   uint32_T ys;
#   uint32_T yi;
#   uint32_T u1i;
#   int32_T nc;
#   uint32_T nr;
#   uint32_T nl;
#   int32_T i1;
#   nb = (int32_T)(n2 >> 5);
	.d2line		168
	rlwinm		r30,r4,2,0,29		# n1=r4
	diab.li		r31,-1
	se_add		r30,r3		# u1=r3
	rlwinm		r11,r5,27,5,31		# nb=r11 n2=r5
.Llo12:
	lwz		r0,-4(r30)
	.d2line		169
	diab.li		r8,0		# i=r8
.Llo16:
	se_btsti		r0,0
#   i = 0;
	isel		r9,0,r31,2		# ys=r9
#   ys = (u1[n1 - 1] & 2147483648U) != 0U ? MAX_uint32_T : 0U;
#   if (nb < n1) {
	.d2line		171
.Llo18:
	cmp		0,0,r11,r4		# nb=r11 n1=r4
	bc		0,0,.L3702	# ge
	add		r0,r7,r11		# nc=r0 n=r7 nb=r11
	.d2line		177
.Llo24:
	rlwinm		r30,r11,5,0,26		# nr=r30 nb=r11
	.d2line		171
.Llo30:
	se_cmp		r0,r4		# nc=r0 n1=r4
#     nc = n + nb;
#     if (nc > n1) {
#       nc = n1;
#     }
# 
#     nr = n2 - ((uint32_T)nb << 5);
	isel		r0,r4,r0,1		# nc=r0 n1=r4 nc=r0
	.d2line		178
	subf.		r30,r30,r5		# nr=?a26 n2=?a6
#     if (nr > 0U) {
	bc		1,2,.L3698	# eq
#       nl = 32U - nr;
	.d2line		180
	rlwinm		r5,r11,2,0,29		# n2=r5 nb=r11
#       u1i = u1[nb];
	.d2line		179
	subfic		r28,r30,32		# nl=r28 nr=r30
.Llo32:
	lwzux		r31,r5,r3		# u1i=r31 n2=r5
#       for (i1 = nb + 1; i1 < nc; i1++) {
	.d2line		181
.Llo20:
	diab.addi		r11,r11,1		# i1=r11 nb=r11
.Llo13:
	cmp		0,0,r11,r0		# i1=r11 nc=r0
	bc		0,0,.L3692	# ge
.Llo7:
	rlwinm		r5,r11,2,0,29		# n2=r5 i1=r11
.Llo8:
	diab.addi		r10,r6,-4		# y=r6
	se_add		r5,r3		# n2=r5 n2=r5 u1=r3
	diab.addi		r5,r5,-4		# n2=r5 n2=r5
.L4312:
#         yi = u1i >> nr;
	.d2line		182
	srw		r12,r31,r30		# yi=r12 u1i=r31 nr=r30
#         u1i = u1[i1];
	.d2line		181
.Llo21:
	diab.addi		r11,r11,1		# i1=r11 i1=r11
#         y[i] = u1i << nl | yi;
	.d2line		183
	lwzu		r31,4(r5)		# u1i=r31 n2=r5
	.d2line		185
	diab.addi		r8,r8,1		# i=r8 i=r8
	cmp		0,0,r11,r0		# i1=r11 nc=r0
#         i++;
	.d2line		184
	slw		r29,r31,r28		# u1i=r31 nl=r28
	or		r29,r29,r12		# yi=r12
	stwu		r29,4(r10)
	bc		1,0,.L4312	# lt
.L3692:
#       }
# 
#       yi = u1i >> nr;
	.d2line		188
.Llo22:
	srw		r31,r31,r30		# yi=r31 u1i=r31 nr=r30
#       u1i = nc < n1 ? u1[nc] : ys;
	.d2line		189
.Llo23:
	se_cmp		r0,r4		# nc=r0 n1=r4
	bc		0,0,.L3705	# ge
.Llo9:
	rlwinm		r4,r0,2,0,29		# n1=r4 nc=r0
	lwzx		r0,r4,r3		# u1i=r0 n1=r4 u1=r3
.Llo25:
	b		.L3706
.L3705:
	mr		r0,r9		# u1i=r0 u1i=r9
.L3706:
#       y[i] = u1i << nl | yi;
	.d2line		190
	slw		r0,r0,r28		# u1i=r0 u1i=r0 nl=r28
	rlwinm		r3,r8,2,0,29		# u1=r3 i=r8
.Llo4:
	or		r0,r0,r31		# u1i=r0 u1i=r0 yi=r31
	.d2line		191
	diab.addi		r8,r8,1		# i=r8 i=r8
#       i++;
	stwx		r0,r6,r3		# y=r6 u1i=r0
	b		.L3702
.L3698:
#     } else {
#       for (i1 = nb; i1 < nc; i1++) {
	.d2line		193
.Llo5:
	cmp		0,0,r11,r0		# nb=r11 nc=r0
	bc		0,0,.L3702	# ge
.Llo31:
	rlwinm		r5,r11,2,0,29		# n2=r5 nb=r11
	diab.addi		r4,r6,-4		# n1=r4 y=r6
	subf		r11,r11,r0		# i1=r11 nb=r11 nc=r0
	se_add		r3,r5		# u1=r3 u1=r3 n2=r5
	e_andi.		r0,r11,1		# nc=r0 i1=r11
.Llo26:
	diab.addi		r3,r3,-4		# u1=r3 u1=r3
	bc		1,2,.L4317	# eq
.L4318:
#         y[i] = u1[i1];
	.d2line		194
.Llo10:
	lwzu		r0,4(r3)		# nc=r0 u1=r3
	.d2line		193
.Llo27:
	diab.addi		r11,r11,-1		# i1=r11 i1=r11
#         i++;
	.d2line		195
	diab.addi		r8,r8,1		# i=r8 i=r8
	stwu		r0,4(r4)		# n1=r4 nc=r0
	e_andi.		r0,r11,1		# nc=r0 i1=r11
.Llo28:
	bc		0,2,.L4318	# ne
	.d2line		193
	cmpi		0,0,r11,0		# i1=r11
	bc		1,2,.L3702	# eq
.L4317:
	rlwinm		r11,r11,31,1,31		# i1=r11 i1=r11
.Llo14:
	mtspr		ctr,r11		# i1=ctr
.L4311:
	.d2line		194
	lwzu		r0,4(r3)		# nc=r0 u1=r3
	.d2line		195
.Llo29:
	diab.addi		r8,r8,2		# i=r8 i=r8
	stwu		r0,4(r4)		# n1=r4 nc=r0
	lwzu		r0,4(r3)		# nc=r0 u1=r3
	stwu		r0,4(r4)		# n1=r4 nc=r0
	bc		2,0,.L4311
.L3702:
#       }
#     }
#   }
# 
#   while (i < n) {
	.d2line		200
.Llo11:
	cmp		0,0,r8,r7		# i=r8 n=r7
	bc		0,0,.L3701	# ge
.Llo15:
	rlwinm		r3,r8,2,0,29		# u1=r3 i=r8
	subf		r8,r8,r7		# i=r8 i=r8 n=r7
	se_add		r3,r6		# u1=r3 u1=r3 y=r6
	.d2line		202
	e_andi.		r0,r8,1		# u1i=r0 i=r8
#     y[i] = ys;
#     i++;
	.d2line		200
	diab.addi		r3,r3,-4		# u1=r3 u1=r3
	bc		1,2,.L4314	# eq
.L4315:
	.d2line		201
	stwu		r9,4(r3)		# u1=r3 ys=r9
	.d2line		202
	diab.addi		r8,r8,-1		# i=r8 i=r8
	e_andi.		r0,r8,1		# u1i=r0 i=r8
	bc		0,2,.L4315	# ne
	.d2line		200
	cmpi		0,0,r8,0		# i=r8
	bc		1,2,.L3701	# eq
.L4314:
	.d2line		202
	rlwinm		r8,r8,31,1,31		# i=r8 i=r8
.Llo17:
	mtspr		ctr,r8		# i=ctr
.L4313:
	.d2line		201
	stwu		r9,4(r3)		# u1=r3 ys=r9
	stwu		r9,4(r3)		# u1=r3 ys=r9
	bc		2,0,.L4313
.L3701:
#   }
# }
	.d2line		204
	.d2epilogue_begin
.Llo19:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo6:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4368:
	.type		sMultiWordShr,@function
	.size		sMultiWordShr,.-sMultiWordShr
# Number of nodes = 181

# Allocations for sMultiWordShr
#	?a4		u1
#	?a5		n1
#	?a6		n2
#	?a7		y
#	?a8		n
#	?a9		$$199
#	?a10		$$198
#	?a11		$$36
#	?a12		$$35
#	?a13		i1
#	?a14		$$34
#	?a15		$$33
#	?a16		i
#	?a17		$$32
#	not allocated	i1
#	?a18		u1i
#	?a19		yi
#	not allocated	$$31
#	?a20		nb
#	?a21		i
#	?a22		ys
#	?a23		yi
#	?a24		u1i
#	?a25		nc
#	?a26		nr
#	?a27		nl
#	?a28		i1
# void MultiWordAdd(const uint32_T u1[], const uint32_T u2[], uint32_T y[],
#                   int32_T n)
# {
	.align		2
	.section	.text_vle
        .d2line         208
#$$ld
.L4407:

#$$bf	MultiWordAdd,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,r7,r8,cr0,xer,ctr
	.globl		MultiWordAdd
	.d2_cfa_start __cie
MultiWordAdd:
.Llo33:
	mr.		r0,r6		# n=?a7 n=r6
	.d2prologue_end
#   uint32_T yi;
#   uint32_T u1i;
#   uint32_T carry = 0U;
#   int32_T i;
#   for (i = 0; i < n; i++) {
	.d2line		213
.Llo51:
	bc		0,1,.L3721	# le
	.d2line		211
.Llo35:
	diab.li		r6,0		# carry=r6
.Llo36:
	diab.addi		r3,r3,-4		# u1=r3 u1=r3
	diab.addi		r4,r4,-4		# u2=r4 u2=r4
	diab.addi		r5,r5,-4		# y=r5 y=r5
	mr		r7,r0		# i=r7 i=r0
	.d2line		213
	se_btsti		r0,31		# n=r0
	bc		1,2,.L4321	# eq
.L4324:
#     u1i = u1[i];
	.d2line		214
.Llo37:
	lwzu		r8,4(r3)		# u1i=r8 u1=r3
#     yi = (u1i + u2[i]) + carry;
	.d2line		217
.Llo52:
	se_cmpi		r6,0		# carry=r6
	.d2line		215
	lwzu		r0,4(r4)		# n=r0 u2=r4
.Llo38:
	add		r6,r6,r8		# carry=r6 carry=r6 u1i=r8
#     y[i] = yi;
.Llo54:
	se_add		r6,r0		# yi=r6 carry=r6 n=r0
#     carry = carry != 0U ? (uint32_T)(yi <= u1i) : (uint32_T)(yi < u1i);
	.d2line		216
.Llo65:
	stwu		r6,4(r5)		# y=r5 yi=r6
	bc		1,2,.L4322	# eq
	.d2line		217
.Llo39:
	diab.li		r0,-1		# n=r0
.Llo40:
	subfc		r6,r6,r8		# yi=r6 yi=r6 u1i=r8
.Llo55:
	subfze		r6,r0		# carry=r6 n=r0
.Llo66:
	b		.L4323
.L4322:
.Llo41:
	subfc		r6,r8,r6		# yi=r6 u1i=r8 yi=r6
	subfe		r6,r6,r6		# yi=r6 yi=r6 yi=r6
.Llo67:
	neg		r6,r6		# carry=r6 yi=r6
.L4323:
	.d2line		213
.Llo56:
	diab.addi		r7,r7,-1		# i=r7 i=r7
	se_btsti		r7,31		# i=r7
	bc		0,2,.L4324	# ne
	se_cmpi		r7,0		# i=r7
	bc		1,2,.L3721	# eq
.L4321:
	se_srwi		r7,1		# i=r7 i=r7
.Llo53:
	mtspr		ctr,r7		# i=ctr
.L4320:
	.d2line		214
	lwzu		r7,4(r3)		# u1i=r7 u1=r3
	.d2line		217
.Llo63:
	se_cmpi		r6,0		# carry=r6
	.d2line		215
	lwzu		r0,4(r4)		# n=r0 u2=r4
.Llo42:
	se_add		r6,r7		# carry=r6 carry=r6 u1i=r7
.Llo57:
	se_add		r6,r0		# yi=r6 carry=r6 n=r0
	.d2line		216
.Llo68:
	stwu		r6,4(r5)		# y=r5 yi=r6
	bc		1,2,.L4326	# eq
	.d2line		217
.Llo43:
	diab.li		r0,-1		# n=r0
.Llo44:
	subfc		r6,r6,r7		# yi=r6 yi=r6 u1i=r7
.Llo58:
	subfze		r6,r0		# carry=r6 n=r0
.Llo69:
	b		.L4327
.L4326:
.Llo45:
	subfc		r6,r7,r6		# yi=r6 u1i=r7 yi=r6
	subfe		r6,r6,r6		# yi=r6 yi=r6 yi=r6
.Llo70:
	neg		r6,r6		# carry=r6 yi=r6
.L4327:
	.d2line		214
.Llo59:
	lwzu		r7,4(r3)		# u1i=r7 u1=r3
	.d2line		217
.Llo64:
	se_cmpi		r6,0		# carry=r6
	.d2line		215
	lwzu		r0,4(r4)		# n=r0 u2=r4
.Llo46:
	se_add		r6,r7		# carry=r6 carry=r6 u1i=r7
.Llo60:
	se_add		r6,r0		# yi=r6 carry=r6 n=r0
	.d2line		216
.Llo71:
	stwu		r6,4(r5)		# y=r5 yi=r6
	bc		1,2,.L3724	# eq
	.d2line		217
.Llo47:
	diab.li		r0,-1		# n=r0
.Llo48:
	subfc		r6,r6,r7		# yi=r6 yi=r6 u1i=r7
.Llo61:
	subfze		r6,r0		# carry=r6 n=r0
.Llo72:
	b		.L3725
.L3724:
.Llo49:
	subfc		r6,r7,r6		# yi=r6 u1i=r7 yi=r6
	subfe		r6,r6,r6		# yi=r6 yi=r6 yi=r6
.Llo73:
	neg		r6,r6		# carry=r6 yi=r6
.L3725:
.Llo62:
	bc		2,0,.L4320
.L3721:
#   }
# }
	.d2line		219
	.d2epilogue_begin
.Llo50:
	blr
.Llo34:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4408:
	.type		MultiWordAdd,@function
	.size		MultiWordAdd,.-MultiWordAdd
# Number of nodes = 56

# Allocations for MultiWordAdd
#	?a4		u1
#	?a5		u2
#	?a6		y
#	?a7		n
#	?a8		$$200
#	?a9		i
#	?a10		$$39
#	?a11		$$38
#	?a12		$$37
#	?a13		yi
#	?a14		u1i
#	?a15		carry
#	not allocated	i
# void sMultiWordMul(const uint32_T u1[], int32_T n1, const uint32_T u2[], int32_T
#                    n2, uint32_T y[], int32_T n)
# {
	.align		2
	.section	.text_vle
        .d2line         223
#$$ld
.L4424:

#$$bf	sMultiWordMul,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r7,r8,r9,r10,r11,r12,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,cr0,xer,ctr
	.globl		sMultiWordMul
	.d2_cfa_start __cie
sMultiWordMul:
.Llo74:
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
	.d2line		240
.Llo89:
	rlwinm		r30,r4,2,0,29		# n1=r4
	.d2line		241
	rlwinm		r31,r6,2,0,29		# n2=r6
	.d2line		245
	se_add		r30,r3		# u1=r3
	se_add		r31,r5		# u2=r5
#   isNegative2 = ((u2[n2 - 1] & 2147483648U) != 0U);
	lwz		r29,-4(r30)		# isNegative1=r29
	.d2line		242
.Llo152:
	diab.li		r27,1		# cb1=r27
.Llo154:
	lwz		r28,-4(r31)		# isNegative2=r28
.Llo153:
	se_srwi		r29,31		# isNegative1=r29 isNegative1=r29
#   cb1 = 1U;
	se_srwi		r28,31		# isNegative2=r28 isNegative2=r28
# 
#   /* Initialize output to zero */
#   for (k = 0; k < n; k++) {
	bc		0,1,.L3731	# le
	.d2line		245
	mr		r30,r8		# k=r30 k=r8
	diab.addi		r10,r7,-4		# y=r7
	diab.li		r31,0
	se_btsti		r30,31		# n=r30
	bc		1,2,.L4340	# eq
.L4341:
#     y[k] = 0U;
	.d2line		246
.Llo80:
	stwu		r31,4(r10)
	.d2line		245
.Llo81:
	diab.addi		r30,r30,-1		# k=r30 k=r30
	se_btsti		r30,31		# k=r30
	bc		0,2,.L4341	# ne
	se_cmpi		r30,0		# k=r30
	bc		1,2,.L3731	# eq
.L4340:
.Llo82:
	se_srwi		r30,1		# k=r30 k=r30
.Llo83:
	mtspr		ctr,r30		# k=ctr
.L4328:
	.d2line		246
	stwu		r31,4(r10)
	stwu		r31,4(r10)
	bc		2,0,.L4328
.L3731:
#   }
# 
#   for (i = 0; i < n1; i++) {
	.d2line		249
.Llo84:
	se_cmpi		r4,0		# n1=r4
.Llo85:
	bc		0,1,.L3734	# le
.Llo86:
	diab.li		r12,0		# i=r12
.L4330:
.Llo87:
	rlwinm		r10,r12,2,0,29		# i=r12
#     cb = 0U;
#     u1i = u1[i];
	.d2line		250
	diab.li		r23,0		# cb=r23
	.d2line		251
.Llo148:
	lwzx		r30,r3,r10		# u1i=r30 u1=r3
#     if (isNegative1) {
	.d2line		252
.Llo130:
	se_cmpi		r29,0		# isNegative1=r29
	bc		1,2,.L3736	# eq
#       u1i = ~u1i + cb1;
	.d2line		253
	nor		r30,r30,r30		# u1i=r30 u1i=r30 u1i=r30
	se_add		r30,r27		# u1i=r30 u1i=r30 cb1=r27
#       cb1 = (uint32_T)(u1i < cb1);
	.d2line		254
	subfc		r27,r27,r30		# cb1=r27 cb1=r27 u1i=r30
	subfe		r27,r27,r27		# cb1=r27 cb1=r27 cb1=r27
	neg		r27,r27		# cb1=r27 cb1=r27
.L3736:
#     }
# 
#     a1 = u1i >> 16U;
	.d2line		258
	subf		r0,r12,r8		# cb=r0 i=r12 n=r8
#     a0 = u1i & 65535U;
	.d2line		257
.Llo94:
	rlwinm		r31,r30,16,16,31		# a1=r31 u1i=r30
.Llo144:
	se_cmp		r0,r6		# cb=r0 n2=r6
	.d2line		262
	mr		r11,r12		# k=r11 k=r12
	isel		r25,r6,r0,1		# nj=r25 n2=r6 cb=r0
#     cb2 = 1U;
#     k = n - i;
#     nj = n2 <= k ? n2 : k;
#     k = i;
.Llo90:
	rlwinm		r30,r30,0,16,31		# a0=r30 u1i=r30
#     for (j = 0; j < nj; j++) {
	.d2line		263
.Llo131:
	se_cmpi		r25,0		# nj=r25
	bc		0,1,.L3737	# le
	.d2line		259
.Llo95:
	add		r10,r7,r10		# y=r7
	diab.li		r26,1		# cb2=r26
.Llo155:
	diab.addi		r9,r5,-4		# u2=r5
	.d2line		263
	se_btsti		r25,31		# nj=r25
	diab.addi		r10,r10,-4
	bc		1,2,.L4335	# eq
.L4337:
#       yk = y[k];
	.d2line		264
	lwzu		r0,4(r10)		# yk=r0
#       u1i = u2[j];
	.d2line		266
.Llo132:
	se_cmpi		r28,0		# isNegative2=r28
#       if (isNegative2) {
	.d2line		265
	lwzu		r22,4(r9)		# u1i=r22
.Llo110:
	bc		1,2,.L4336	# eq
#         u1i = ~u1i + cb2;
	.d2line		267
	nor		r22,r22,r22		# u1i=r22 u1i=r22 u1i=r22
	add		r22,r22,r26		# u1i=r22 u1i=r22 cb2=r26
#         cb2 = (uint32_T)(u1i < cb2);
	.d2line		268
	subfc		r26,r26,r22		# cb2=r26 cb2=r26 u1i=r22
	subfe		r26,r26,r26		# cb2=r26 cb2=r26 cb2=r26
	neg		r26,r26		# cb2=r26 cb2=r26
.L4336:
#       }
# 
#       b1 = u1i >> 16U;
	.d2line		272
.Llo133:
	rlwinm		r21,r22,0,16,31		# u1i=r21 u1i=r22
#       u1i &= 65535U;
	.d2line		275
.Llo134:
	add		r0,r0,r23		# yk=r0 yk=r0 cb=r23
#       w10 = a1 * u1i;
	.d2line		277
	mullw		r24,r21,r30		# u1i=r24 u1i=r21 a0=r30
#       w01 = a0 * b1;
	.d2line		276
.Llo111:
	subfc		r20,r23,r0		# w01=r20 cb=r23 yk=r0
#       yk += cb;
	.d2line		271
.Llo112:
	rlwinm		r22,r22,16,16,31		# b1=r22 u1i=r22
#       cb = (uint32_T)(yk < cb);
	subfe		r18,r20,r20		# cb=r18 w01=r20 w01=r20
	.d2line		273
.Llo96:
	mullw		r21,r31,r21		# w10=r21 a1=r31 u1i=r21
	.d2line		278
	add		r23,r0,r24		# yk=r23 yk=r0 u1i=r24
#       u1i *= a0;
	.d2line		274
	mullw		r20,r30,r22		# w01=r20 a0=r30 b1=r22
#       yk += u1i;
	.d2line		279
	subfc		r24,r24,r23		# u1i=r24 u1i=r24 yk=r23
#       cb += (yk < u1i);
	.d2line		280
	rlwinm		r0,r21,16,0,15		# u1i=r0 w10=r21
.Llo121:
	subfe		r19,r24,r24		# cb=r19 u1i=r24 u1i=r24
	.d2line		281
.Llo135:
	add		r23,r23,r0		# yk=r23 yk=r23 u1i=r0
	.d2line		283
	rlwinm		r24,r20,16,0,15		# u1i=r24 w01=r20
#       u1i = w10 << 16U;
	.d2line		282
.Llo113:
	subfc		r0,r0,r23		# u1i=r0 u1i=r0 yk=r23
#       yk += u1i;
	.d2line		276
	neg		r18,r18		# cb=r18 cb=r18
#       cb += (yk < u1i);
	.d2line		284
	add		r23,r23,r24		# yk=r23 yk=r23 u1i=r24
	subfe		r0,r0,r0		# u1i=r0 u1i=r0 u1i=r0
	.d2line		279
	neg		r19,r19		# cb=r19 cb=r19
	.d2line		285
	subfc		r24,r24,r23		# u1i=r24 u1i=r24 yk=r23
#       u1i = w01 << 16U;
	.d2line		282
	neg		r0,r0		# u1i=r0 u1i=r0
#       yk += u1i;
.Llo122:
	add		r18,r18,r19		# cb=r18 cb=r18 cb=r19
#       cb += (yk < u1i);
.Llo97:
	subfe		r24,r24,r24		# u1i=r24 u1i=r24 u1i=r24
	.d2line		286
.Llo98:
	stw		r23,0(r10)		# yk=r23
	add		r0,r18,r0		# cb=r0 cb=r18 cb=r0
	neg		r24,r24		# u1i=r24 u1i=r24
#       y[k] = yk;
	.d2line		287
.Llo127:
	rlwinm		r21,r21,16,16,31		# w10=r21 w10=r21
#       cb += w10 >> 16U;
	se_add		r0,r24		# cb=r0 cb=r0 cb=r24
	mullw		r23,r31,r22		# yk=r23 a1=r31 b1=r22
	rlwinm		r20,r20,16,16,31		# w01=r20 w01=r20
	add		r0,r21,r0		# cb=r0 w10=r21 cb=r0
	.d2line		263
	diab.addi		r25,r25,-1		# j=r25 j=r25
	add		r20,r0,r20		# w01=r20 cb=r0 w01=r20
#       cb += w01 >> 16U;
#       cb += a1 * b1;
#       k++;
	.d2line		290
	diab.addi		r11,r11,1		# k=r11 k=r11
	se_btsti		r25,31		# j=r25
	add		r23,r23,r20		# cb=r23 yk=r23 w01=r20
.Llo136:
	bc		0,2,.L4337	# ne
	.d2line		263
.Llo99:
	se_cmpi		r25,0		# j=r25
	bc		1,2,.L3737	# eq
.L4335:
	se_srwi		r25,1		# j=r25 j=r25
.Llo91:
	mtspr		ctr,r25		# j=ctr
.L4329:
	.d2line		264
	lwzu		r20,4(r10)		# yk=r20
	.d2line		266
.Llo137:
	se_cmpi		r28,0		# isNegative2=r28
	.d2line		265
	lwzu		r21,4(r9)		# u1i=r21
.Llo114:
	bc		1,2,.L4339	# eq
	.d2line		267
	nor		r21,r21,r21		# u1i=r21 u1i=r21 u1i=r21
	add		r21,r21,r26		# u1i=r21 u1i=r21 cb2=r26
	.d2line		268
	subfc		r26,r26,r21		# cb2=r26 cb2=r26 u1i=r21
	subfe		r26,r26,r26		# cb2=r26 cb2=r26 cb2=r26
	neg		r26,r26		# cb2=r26 cb2=r26
.L4339:
	.d2line		272
.Llo138:
	rlwinm		r22,r21,0,16,31		# u1i=r22 u1i=r21
	.d2line		275
.Llo139:
	add		r20,r20,r23		# yk=r20 yk=r20 cb=r23
	.d2line		277
	mullw		r25,r22,r30		# u1i=r25 u1i=r22 a0=r30
	.d2line		276
	subfc		r0,r23,r20		# cb=r0 cb=r23 yk=r20
	.d2line		271
.Llo100:
	rlwinm		r23,r21,16,16,31		# b1=r23 u1i=r21
.Llo149:
	subfe		r0,r0,r0		# cb=r0 cb=r0 cb=r0
	.d2line		273
	mullw		r22,r31,r22		# w10=r22 a1=r31 u1i=r22
	.d2line		278
	add		r20,r20,r25		# yk=r20 yk=r20 u1i=r25
	.d2line		274
	mullw		r21,r30,r23		# w01=r21 a0=r30 b1=r23
	.d2line		279
.Llo115:
	subfc		r25,r25,r20		# u1i=r25 u1i=r25 yk=r20
	.d2line		280
.Llo116:
	rlwinm		r24,r22,16,0,15		# u1i=r24 w10=r22
.Llo123:
	subfe		r18,r25,r25		# cb=r18 u1i=r25 u1i=r25
	.d2line		281
	add		r20,r20,r24		# yk=r20 yk=r20 u1i=r24
	.d2line		283
	rlwinm		r25,r21,16,0,15		# u1i=r25 w01=r21
	.d2line		282
.Llo117:
	subfc		r24,r24,r20		# u1i=r24 u1i=r24 yk=r20
	.d2line		276
	neg		r0,r0		# cb=r0 cb=r0
	.d2line		284
	add		r20,r20,r25		# yk=r20 yk=r20 u1i=r25
	subfe		r19,r24,r24		# cb=r19 u1i=r24 u1i=r24
	.d2line		286
	stw		r20,0(r10)		# yk=r20
	.d2line		279
	neg		r18,r18		# cb=r18 cb=r18
	.d2line		282
	neg		r19,r19		# cb=r19 cb=r19
	add		r0,r0,r18		# cb=r0 cb=r0 cb=r18
	.d2line		285
	subfc		r20,r25,r20		# yk=r20 u1i=r25 yk=r20
	add		r0,r0,r19		# cb=r0 cb=r0 cb=r19
	subfe		r20,r20,r20		# yk=r20 yk=r20 yk=r20
	.d2line		287
	rlwinm		r22,r22,16,16,31		# w10=r22 w10=r22
	neg		r20,r20		# yk=r20 yk=r20
.Llo140:
	mullw		r23,r31,r23		# b1=r23 a1=r31 b1=r23
	add		r0,r0,r20		# cb=r0 cb=r0 cb=r20
	rlwinm		r21,r21,16,16,31		# w01=r21 w01=r21
	add		r0,r22,r0		# cb=r0 w10=r22 cb=r0
	.d2line		264
	lwzu		r24,4(r10)		# yk=r24
	.d2line		265
.Llo124:
	lwzu		r25,4(r9)		# u1i=r25
.Llo118:
	add		r0,r0,r21		# cb=r0 cb=r0 w01=r21
	.d2line		266
.Llo150:
	se_cmpi		r28,0		# isNegative2=r28
	add		r0,r0,r23		# cb=r0 cb=r0 b1=r23
.Llo101:
	bc		1,2,.L3739	# eq
	.d2line		267
.Llo145:
	nor		r25,r25,r25		# u1i=r25 u1i=r25 u1i=r25
	se_add		r25,r26		# u1i=r25 u1i=r25 cb2=r26
	.d2line		268
	subfc		r26,r26,r25		# cb2=r26 cb2=r26 u1i=r25
	subfe		r26,r26,r26		# cb2=r26 cb2=r26 cb2=r26
	neg		r26,r26		# cb2=r26 cb2=r26
.L3739:
	.d2line		272
	rlwinm		r22,r25,0,16,31		# u1i=r22 u1i=r25
	.d2line		275
.Llo146:
	add		r23,r24,r0		# yk=r23 yk=r24 cb=r0
	.d2line		277
	mullw		r24,r22,r30		# u1i=r24 u1i=r22 a0=r30
	.d2line		276
.Llo141:
	subfc		r0,r0,r23		# cb=r0 cb=r0 yk=r23
	.d2line		271
.Llo142:
	se_srwi		r25,16		# b1=r25 u1i=r25
.Llo119:
	subfe		r20,r0,r0		# cb=r20 cb=r0 cb=r0
	.d2line		273
.Llo102:
	mullw		r22,r31,r22		# w10=r22 a1=r31 u1i=r22
	.d2line		278
	add		r23,r23,r24		# yk=r23 yk=r23 u1i=r24
	.d2line		274
	mullw		r21,r30,r25		# w01=r21 a0=r30 b1=r25
	.d2line		279
.Llo147:
	subfc		r24,r24,r23		# u1i=r24 u1i=r24 yk=r23
	.d2line		280
	rlwinm		r0,r22,16,0,15		# u1i=r0 w10=r22
.Llo125:
	subfe		r19,r24,r24		# cb=r19 u1i=r24 u1i=r24
	.d2line		281
	add		r23,r23,r0		# yk=r23 yk=r23 u1i=r0
	.d2line		283
	rlwinm		r24,r21,16,0,15		# u1i=r24 w01=r21
	.d2line		282
.Llo120:
	subfc		r0,r0,r23		# u1i=r0 u1i=r0 yk=r23
	.d2line		276
	neg		r20,r20		# cb=r20 cb=r20
	.d2line		284
.Llo103:
	add		r23,r23,r24		# yk=r23 yk=r23 u1i=r24
.Llo104:
	subfe		r0,r0,r0		# u1i=r0 u1i=r0 u1i=r0
	.d2line		279
	neg		r19,r19		# cb=r19 cb=r19
	.d2line		285
	subfc		r24,r24,r23		# u1i=r24 u1i=r24 yk=r23
	.d2line		282
	neg		r0,r0		# u1i=r0 u1i=r0
.Llo126:
	add		r20,r20,r19		# cb=r20 cb=r20 cb=r19
	subfe		r24,r24,r24		# u1i=r24 u1i=r24 u1i=r24
	add		r0,r20,r0		# cb=r0 cb=r20 cb=r0
	neg		r24,r24		# u1i=r24 u1i=r24
	.d2line		287
.Llo128:
	rlwinm		r22,r22,16,16,31		# w10=r22 w10=r22
	se_add		r0,r24		# cb=r0 cb=r0 cb=r24
	mullw		r25,r25,r31		# a1=r25 a1=r25 b1=r31
	.d2line		286
	stw		r23,0(r10)		# yk=r23
	rlwinm		r21,r21,16,16,31		# w01=r21 w01=r21
	add		r0,r22,r0		# cb=r0 w10=r22 cb=r0
	.d2line		290
	diab.addi		r11,r11,2		# k=r11 k=r11
	add		r0,r0,r21		# cb=r0 cb=r0 w01=r21
	add		r23,r0,r25		# cb=r23 cb=r0 a1=r25
.Llo143:
	bc		2,0,.L4329
.L3737:
#     }
# 
#     if (k < n) {
	.d2line		293
.Llo92:
	cmp		0,0,r11,r8		# k=r11 n=r8
	bc		0,0,.L3741	# ge
#       y[k] = cb;
	.d2line		294
.Llo93:
	rlwinm		r11,r11,2,0,29		# k=r11 k=r11
	stwux		r23,r11,r7		# k=r11 cb=r23
.L3741:
	.d2line		249
	diab.addi		r12,r12,1		# i=r12 i=r12
	cmp		0,0,r12,r4		# i=r12 n1=r4
	bc		1,0,.L4330	# lt
.L3734:
#     }
#   }
# 
#   /* Apply sign */
#   if (isNegative1 != isNegative2) {
	.d2line		299
.Llo151:
	se_cmp		r29,r28		# isNegative1=r29 isNegative2=r28
	bc		1,2,.L3746	# eq
#     cb = 1U;
#     for (k = 0; k < n; k++) {
	.d2line		301
.Llo129:
	cmpi		0,0,r8,0		# n=r8
	bc		0,1,.L3746	# le
	.d2line		300
	diab.li		r3,1		# cb=r3
.Llo75:
	diab.addi		r7,r7,-4		# y=r7 y=r7
	.d2line		301
	e_andi.		r0,r8,1		# cb=r0 n=r8
	bc		1,2,.L4332	# eq
.L4333:
#       yk = ~y[k] + cb;
	.d2line		302
	lwzu		r4,4(r7)		# n1=r4 y=r7
	.d2line		301
	diab.addi		r8,r8,-1		# k=r8 k=r8
	e_andi.		r0,r8,1		# cb=r0 k=r8
#       y[k] = yk;
	nor		r0,r4,r4		# cb=r0 n1=r4 n1=r4
#       cb = (uint32_T)(yk < cb);
.Llo105:
	se_add		r0,r3		# yk=r0 cb=r0 cb=r3
	.d2line		304
.Llo106:
	subfc		r3,r3,r0		# cb=r3 cb=r3 yk=r0
	.d2line		303
	stw		r0,0(r7)		# y=r7 yk=r0
	subfe		r3,r3,r3		# cb=r3 cb=r3 cb=r3
	neg		r3,r3		# cb=r3 cb=r3
	bc		0,2,.L4333	# ne
	.d2line		301
.Llo78:
	cmpi		0,0,r8,0		# k=r8
	bc		1,2,.L3746	# eq
.L4332:
.Llo79:
	rlwinm		r8,r8,31,1,31		# k=r8 k=r8
.Llo88:
	mtspr		ctr,r8		# k=ctr
.L4331:
	.d2line		302
	lwzu		r0,4(r7)		# cb=r0 y=r7
.Llo107:
	nor		r0,r0,r0		# cb=r0 cb=r0 cb=r0
.Llo109:
	se_add		r0,r3		# yk=r0 cb=r0 cb=r3
	.d2line		303
.Llo108:
	stw		r0,0(r7)		# y=r7 yk=r0
	.d2line		304
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
	bc		2,0,.L4331
.L3746:
#     }
#   }
# }
	.d2line		307
	.d2epilogue_begin
.Llo76:
	lmw		r18,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	diab.addi		r1,r1,80		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo77:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4425:
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
#	?a10		$$203
#	?a11		$$202
#	?a12		$$201
#	?a13		$$47
#	?a14		$$46
#	?a15		k
#	?a16		$$45
#	?a17		j
#	?a18		$$44
#	?a19		$$43
#	?a20		k
#	?a21		$$42
#	?a22		cb
#	?a23		cb
#	?a24		yk
#	?a25		u1i
#	?a26		u1i
#	?a27		u1i
#	?a28		k
#	not allocated	k
#	?a29		$$41
#	not allocated	$$40
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
# time_T rt_SimUpdateDiscreteEvents(
#   int_T rtmNumSampTimes, void *rtmTimingData, int_T *rtmSampleHitPtr, int_T
#   *rtmPerTaskSampleHits )
# {
	.align		2
	.section	.text_vle
        .d2line         312
#$$ld
.L4485:

#$$bf	rt_SimUpdateDiscreteEvents,interprocedural,nostackparams

# Regs written: r0,r3,r6
	.globl		rt_SimUpdateDiscreteEvents
	.d2_cfa_start __cie
rt_SimUpdateDiscreteEvents:
	.d2line		0
	.d2prologue_end
#   rtmSampleHitPtr[1] = rtmStepTask(ATV_M, 1);
	.d2line		313
.Llo156:
	lis		r6,ATV_M@ha
	.d2line		318
	e_lis		r3,-16512
	lwz		r6,ATV_M@l(r6)
	lbz		r0,429(r6)
	cntlzw		r0,r0
	diab.srwi		r0,5
#   rtmSampleHitPtr[2] = rtmStepTask(ATV_M, 2);
	stw		r0,4(r5)		# rtmSampleHitPtr=r5
	.d2line		314
	lbz		r0,430(r6)
	cntlzw		r0,r0
	diab.srwi		r0,5
#   UNUSED_PARAMETER(rtmNumSampTimes);
#   UNUSED_PARAMETER(rtmTimingData);
#   UNUSED_PARAMETER(rtmPerTaskSampleHits);
#   return(-1);
	stw		r0,8(r5)		# rtmSampleHitPtr=r5
# }
	.d2line		319
	.d2epilogue_begin
	blr
.Llo157:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4486:
	.type		rt_SimUpdateDiscreteEvents,@function
	.size		rt_SimUpdateDiscreteEvents,.-rt_SimUpdateDiscreteEvents
# Number of nodes = 26

# Allocations for rt_SimUpdateDiscreteEvents
#	not allocated	rtmNumSampTimes
#	not allocated	rtmTimingData
#	?a4		rtmSampleHitPtr
#	not allocated	rtmPerTaskSampleHits
#	?a5		$$48
# static void rate_monotonic_scheduler(void)
# {
	.align		1
	.section	.text_vle
        .d2line         330
#$$ld
.L4499:

#$$bf	rate_monotonic_scheduler,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,cr0
	.d2_cfa_start __cie
rate_monotonic_scheduler:
	.d2line		0
	.d2prologue_end
	.d2line		339
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
	.d2line		342
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
	.d2line		348
	lbz		r4,429(r3)
	se_addi		r4,1
	stb		r4,429(r3)
	lwz		r3,ATV_M@l(r5)
#   if ((ATV_M->Timing.TaskCounters.TID[1]) > 9) {/* Sample time: [0.1s, 0.0s] */
	.d2line		349
	lbz		r0,429(r3)
	se_cmpi		r0,9
	bc		0,1,.L3764	# le
#     ATV_M->Timing.TaskCounters.TID[1] = 0;
	.d2line		350
	diab.li		r0,0
	stb		r0,429(r3)
.L3764:
#   }
# 
#   (ATV_M->Timing.TaskCounters.TID[2])++;
	.d2line		353
	lbz		r4,430(r3)
	lis		r5,ATV_M@ha
	se_addi		r4,1
	stb		r4,430(r3)
	lwz		r3,ATV_M@l(r5)
	lbz		r0,430(r3)
#   if ((ATV_M->Timing.TaskCounters.TID[2]) > 99) {/* Sample time: [1.0s, 0.0s] */
	.d2line		354
	cmpi		0,0,r0,99
	bc		0,1,.L3765	# le
	diab.li		r0,0
	stb		r0,430(r3)
.L3765:
#     ATV_M->Timing.TaskCounters.TID[2] = 0;
#   }
# }
	.d2line		357
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4500:
	.type		rate_monotonic_scheduler,@function
	.size		rate_monotonic_scheduler,.-rate_monotonic_scheduler
# Number of nodes = 61

# Allocations for rate_monotonic_scheduler
#	not allocated	$$56
#	?a4		$$55
#	?a5		$$54
#	?a6		$$53
#	?a7		$$49
#	?a8		$$2
#	?a9		$$1
# void ATV_Chart_Init(DW_Chart_ATV_T *localDW)
# {
	.align		2
	.section	.text_vle
        .d2line         365
#$$ld
.L4504:

#$$bf	ATV_Chart_Init,interprocedural,nostackparams

# Regs written: r0
	.globl		ATV_Chart_Init
	.d2_cfa_start __cie
ATV_Chart_Init:
	.d2line		0
	.d2prologue_end
	.d2line		367
.Llo158:
	diab.li		r0,0
#   localDW->temporalCounter_i1 = 0U;
#   localDW->is_active_c1_ATV = 0U;
	stb		r0,0(r3)		# localDW=r3
#   localDW->is_c1_ATV = ATV_IN_NO_ACTIVE_CHILD;
	.d2line		368
	stb		r0,1(r3)		# localDW=r3
	.d2line		366
	stb		r0,2(r3)		# localDW=r3
# }
	.d2line		369
	.d2epilogue_begin
	blr
.Llo159:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4505:
	.type		ATV_Chart_Init,@function
	.size		ATV_Chart_Init,.-ATV_Chart_Init
# Number of nodes = 16

# Allocations for ATV_Chart_Init
#	?a4		localDW
#	?a5		$$57
# void ATV_Chart(boolean_T rtu_in, B_Chart_ATV_T *localB, DW_Chart_ATV_T *localDW)
# {
	.align		2
	.section	.text_vle
        .d2line         377
#$$ld
.L4513:

#$$bf	ATV_Chart,interprocedural,nostackparams

# Regs written: r0,r3,r6,cr0
	.globl		ATV_Chart
	.d2_cfa_start __cie
ATV_Chart:
	.d2line		0
	.d2prologue_end
	.d2line		379
.Llo160:
	lbz		r6,2(r5)		# localDW=r5
#   /* Chart: '<S3>/Chart' */
#   if (localDW->temporalCounter_i1 < 7U) {
	se_cmpli	r6,7
	bc		0,0,.L3770	# ge
#     localDW->temporalCounter_i1++;
	.d2line		380
	se_addi		r6,1
	stb		r6,2(r5)		# localDW=r5
.L3770:
#   }
# 
#   /* Gateway: CANBUS_Reception_V_DBG_CTRL/Chart */
#   /* During: CANBUS_Reception_V_DBG_CTRL/Chart */
#   if (localDW->is_active_c1_ATV == 0U) {
	.d2line		385
	lbz		r0,0(r5)		# localDW=r5
	se_cmpi		r0,0
	bc		0,2,.L3775	# ne
	diab.li		r0,1
	.d2line		394
	diab.li		r3,0
#     /* Entry: CANBUS_Reception_V_DBG_CTRL/Chart */
#     localDW->is_active_c1_ATV = 1U;
# 
#     /* Entry Internal: CANBUS_Reception_V_DBG_CTRL/Chart */
#     /* Transition: '<S10>:4' */
#     localDW->is_c1_ATV = ATV_IN_NO_RX;
	.d2line		385
.Llo161:
	stb		r0,0(r5)		# localDW=r5
# 
#     /* Entry 'NO_RX': '<S10>:5' */
#     localB->out = false;
	.d2line		391
	stb		r0,1(r5)		# localDW=r5
	stb		r3,0(r4)		# localB=r4
	.d2line		421
	blr
.L3775:
#   } else if (localDW->is_c1_ATV == ATV_IN_NO_RX) {
	.d2line		395
.Llo162:
	lbz		r0,1(r5)		# localDW=r5
	se_cmpi		r0,1
	bc		0,2,.L3773	# ne
#     localB->out = false;
	.d2line		396
	diab.li		r0,0
	.d2line		399
	se_cmpi		r3,0		# rtu_in=r3
# 
#     /* During 'NO_RX': '<S10>:5' */
#     if (rtu_in) {
	stb		r0,0(r4)		# localB=r4
	bc		1,2,.L3776	# eq
#       /* Transition: '<S10>:6' */
#       localDW->is_c1_ATV = ATV_IN_RX;
	.d2line		402
	stb		r0,2(r5)		# localDW=r5
	.d2line		401
	diab.li		r0,2
#       localDW->temporalCounter_i1 = 0U;
	stb		r0,1(r5)		# localDW=r5
# 
#       /* Entry 'RX': '<S10>:3' */
#       localB->out = true;
	.d2line		405
	diab.li		r0,1
	stb		r0,0(r4)		# localB=r4
	.d2line		421
	blr
.L3773:
#     }
#   } else {
#     localB->out = true;
	.d2line		411
	se_cmpi		r3,0		# rtu_in=r3
	.d2line		408
	diab.li		r3,1		# rtu_in=r3
# 
#     /* During 'RX': '<S10>:3' */
#     if ((!rtu_in) && (localDW->temporalCounter_i1 >= 5U)) {
	stb		r3,0(r4)		# localB=r4 rtu_in=r3
	bc		0,2,.L3776	# ne
	.d2line		411
	lbz		r0,2(r5)		# localDW=r5
	se_cmpli	r0,5
	bc		1,0,.L3776	# lt
#       /* Transition: '<S10>:7' */
#       localDW->is_c1_ATV = ATV_IN_NO_RX;
	.d2line		413
	stb		r3,1(r5)		# localDW=r5 rtu_in=r3
# 
#       /* Entry 'NO_RX': '<S10>:5' */
#       localB->out = false;
	.d2line		416
	diab.li		r0,0
	stb		r0,0(r4)		# localB=r4
.L3776:
#     }
#   }
# 
#   /* End of Chart: '<S3>/Chart' */
# }
	.d2line		421
	.d2epilogue_begin
	blr
.Llo163:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4514:
	.type		ATV_Chart,@function
	.size		ATV_Chart,.-ATV_Chart
# Number of nodes = 89

# Allocations for ATV_Chart
#	?a4		rtu_in
#	?a5		localB
#	?a6		localDW
#	?a7		$$60
#	?a8		$$58
# void ATV_DBWREVERSE(boolean_T rtu_FS1, uint16_T rtu_throttleX1000,
#                     B_DBWREVERSE_ATV_T *localB)
# {
	.align		2
	.section	.text_vle
        .d2line         430
#$$ld
.L4524:

#$$bf	ATV_DBWREVERSE,interprocedural,rasave,nostackparams
	.globl		ATV_DBWREVERSE
	.d2_cfa_start __cie
ATV_DBWREVERSE:
.Llo164:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	se_cmpi		r3,0		# rtu_FS1=r3
	mr		r31,r5		# localB=r31 localB=r5
	.d2prologue_end
#   int32_T rtb_Switch1_e;
# 
#   /* Switch: '<S35>/Switch1' incorporates:
#    *  Constant: '<S35>/Constant10'
#    *  RelationalOperator: '<S38>/Compare'
#    */
#   if (!rtu_FS1) {
#     /* Switch: '<S39>/Switch2' incorporates:
#      *  Constant: '<S35>/ATVC_upperLimitPedalREV'
#      *  RelationalOperator: '<S39>/LowerRelop1'
#      *  Switch: '<S39>/Switch'
#      */
#     if (rtu_throttleX1000 > 1000) {
#       rtb_Switch1_e = 1000;
#     } else {
#       rtb_Switch1_e = rtu_throttleX1000;
#     }
# 
#     /* End of Switch: '<S39>/Switch2' */
#   } else {
#     rtb_Switch1_e = 0;
	.d2line		451
	diab.li		r3,0		# rtb_Switch1_e=r3
	.d2line		437
.Llo165:
	bc		0,2,.L3785	# ne
.Llo167:
	rlwinm		r4,r4,0,16,31		# rtu_throttleX1000=r4 rtu_throttleX1000=r4
.Llo168:
	diab.li		r3,1000		# rtb_Switch1_e=r3
.Llo170:
	cmpi		0,0,r4,1000		# rtu_throttleX1000=r4
	isel		r3,r3,r4,1		# rtb_Switch1_e=r3 rtb_Switch1_e=r3 rtu_throttleX1000=r4
.L3785:
#   }
# 
#   /* End of Switch: '<S35>/Switch1' */
# 
#   /* DataTypeConversion: '<S35>/Cast' */
#   localB->Cast = (uint16_T)(int32_T)fmod(rtb_Switch1_e, 65536.0);
	.d2line		457
.Llo171:
	bl		_d_itod
.Llo166:
	e_lis		r5,16624
	diab.li		r6,0
	bl		fmod
	bl		_d_dtoi
.Llo172:
	sth		r3,0(r31)		# localB=r31 rtb_Switch1_e=r3
# }
	.d2line		458
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo169:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo173:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4525:
	.type		ATV_DBWREVERSE,@function
	.size		ATV_DBWREVERSE,.-ATV_DBWREVERSE
# Number of nodes = 32

# Allocations for ATV_DBWREVERSE
#	?a4		rtu_FS1
#	?a5		rtu_throttleX1000
#	?a6		localB
#	?a7		rtb_Switch1_e
# void ATV_DBWREG_BRAKEFORWARD(boolean_T rtu_FS1, uint16_T rtu_throttleX1000,
#   B_DBWREG_BRAKEFORWARD_ATV_T *localB)
# {
	.align		2
	.section	.text_vle
        .d2line         467
#$$ld
.L4539:

#$$bf	ATV_DBWREG_BRAKEFORWARD,interprocedural,rasave,nostackparams
	.globl		ATV_DBWREG_BRAKEFORWARD
	.d2_cfa_start __cie
ATV_DBWREG_BRAKEFORWARD:
.Llo174:
	stwu		r1,-80(r1)		
	.d2_cfa_def_cfa_offset	80
	mfspr		r0,lr
	stmw		r29,68(r1)		# offset r1+68  0x44
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,84(r1)
	.d2_cfa_offset    108,-1
	rlwinm		r4,r4,0,16,31		# rtu_throttleX1000=r4 rtu_throttleX1000=r4
	mr		r29,r5		# localB=r29 localB=r5
	.d2prologue_end
	.d2line		495
	diab.li		r31,1000		# rtb_Switch2_i=r31
.Llo189:
	cmpli		0,0,r4,1000		# rtu_throttleX1000=r4
	isel		r31,r31,r4,1		# rtb_Switch2_i=r31 rtb_Switch2_i=r31 rtu_throttleX1000=r4
#   uint16_T rtb_Switch2_i;
#   boolean_T rtb_RelationalOperator1;
#   int32_T rtb_Switch2_n;
#   int96m_T tmp;
#   int96m_T tmp_0;
#   int96m_T tmp_1;
#   int64m_T tmp_2;
#   uint32_T tmp_3;
#   uint32_T tmp_4;
#   real_T rtb_RelationalOperator1_0;
#   static int96m_T tmp_5 = { { 0U, 500U, 0U }/* chunks */
#   };
# 
#   /* Switch: '<S43>/Switch2' incorporates:
#    *  Constant: '<S42>/ATVC_upperLimitPedalF'
#    *  RelationalOperator: '<S43>/LowerRelop1'
#    *  Switch: '<S43>/Switch'
#    */
#   if (rtu_throttleX1000 > 1000) {
#     rtb_Switch2_i = 1000U;
#   } else {
#     rtb_Switch2_i = rtu_throttleX1000;
#   }
# 
#   /* End of Switch: '<S43>/Switch2' */
# 
#   /* RelationalOperator: '<S42>/Relational Operator1' */
#   rtb_RelationalOperator1 = (rtb_Switch2_i >= 100);
	rlwinm		r0,r31,0,16,31		# rtb_Switch2_i=r31
	cmpi		0,0,r0,100
	mfcr		r4		# rtu_throttleX1000=r4
	rlwinm		r30,r4,1,31,31		# rtb_RelationalOperator1=r30 rtu_throttleX1000=r4
	.d2line		504
.Llo193:
	se_cmpi		r3,0		# rtu_FS1=r3
# 
#   /* Switch: '<S36>/Switch' incorporates:
#    *  Constant: '<S36>/Constant'
#    *  DataTypeConversion: '<S42>/Cast'
#    *  DataTypeConversion: '<S42>/Cast1'
#    *  Switch: '<S36>/Switch2'
#    *  Switch: '<S42>/Switch1'
#    */
#   if (rtu_FS1) {
	xori		r30,r30,1		# rtb_RelationalOperator1=r30 rtb_RelationalOperator1=r30
	bc		1,2,.L3797	# eq
.Llo180:
	diab.li		r0,0
#     localB->Switch = 0U;
	.d2line		505
.Llo186:
	sth		r0,0(r29)		# localB=r29
#     localB->Switch2 = 0U;
	.d2line		506
	sth		r0,2(r29)		# localB=r29
	b		.L3798
.L3797:
#   } else {
#     if (rtb_RelationalOperator1) {
	.d2line		508
	se_cmpi		r30,0		# rtb_RelationalOperator1=r30
	bc		1,2,.L3793	# eq
#       /* Switch: '<S42>/Switch1' incorporates:
#        *  Constant: '<S42>/ATVC_throttleNeutralPoint'
#        *  Product: '<S45>/throttle positive'
#        *  Sum: '<S45>/ '
#        */
#       rtb_RelationalOperator1_0 = ((real_T)rtb_Switch2_i - 100.0) *
	.d2line		514
	efscfui		r0,r0
	e_lis		r3,17096		# rtu_FS1=r3
	e_lis		r4,16270		# rtu_throttleX1000=r4
.Llo181:
	efssub		r0,r0,r3		# rtu_FS1=r3
	e_or2i		r4,14564		# rtu_throttleX1000=r4
	efsmul		r3,r0,r4		# rtb_RelationalOperator1_0=r3 rtu_throttleX1000=r4
.Llo175:
	b		.L3794
.L3793:
#         1.1111111111111112;
#     } else {
#       /* Switch: '<S42>/Switch1' incorporates:
#        *  Constant: '<S44>/Constant'
#        */
#       rtb_RelationalOperator1_0 = 0.0;
	.d2line		520
.Llo176:
	diab.li		r3,0		# rtb_RelationalOperator1_0=r3
.L3794:
#     }
# 
#     /* DataTypeConversion: '<S42>/Cast' */
#     rtb_Switch2_n = (int32_T)fmod((int32_T)floor(rtb_RelationalOperator1_0),
	.d2line		524
.Llo177:
	bl		_f_ftod
	bl		floor
	bl		_d_dtoi
	bl		_d_itod
	e_lis		r5,16624
	diab.li		r6,0
	bl		fmod
	bl		_d_dtoi
.Llo194:
	efscfsi		r0,r3		# rtb_Switch2_n=r3
	rlwinm		r4,r3,0,16,31		# rtu_throttleX1000=r4 rtb_RelationalOperator1_0=r3
.Llo182:
	se_cmpi		r3,0		# rtb_Switch2_n=r3
	efsneg		r0,r0
	efsctuiz		r3,r0		# rtb_Switch2_n=r3
.Llo195:
	neg		r3,r3		# rtb_Switch2_n=r3 rtb_Switch2_n=r3
	rlwinm		r3,r3,0,16,31		# rtb_Switch2_n=r3 rtb_Switch2_n=r3
# 4284
	isel		r0,r3,r4,0		# rtb_Switch2_n=r3 rtu_throttleX1000=r4
	sth		r0,0(r29)		# localB=r29
#       65536.0);
#     localB->Switch = (uint16_T)(rtb_Switch2_n < 0 ? (int32_T)(uint16_T)-(int16_T)
#       (uint16_T)-(real_T)rtb_Switch2_n : (int32_T)(uint16_T)rtb_Switch2_n);
# 
#     /* Switch: '<S42>/Switch2' incorporates:
#      *  Constant: '<S45>/Constant1'
#      *  DataTypeConversion: '<S42>/Cast'
#      *  DataTypeConversion: '<S44>/Data Type Conversion3'
#      */
#     if (rtb_RelationalOperator1) {
	.d2line		534
	se_cmpi		r30,0		# rtb_RelationalOperator1=r30
	bc		1,2,.L3795	# eq
#       rtb_Switch2_n = 0;
	.d2line		535
.Llo183:
	diab.li		r3,0		# rtb_Switch2_n=r3
	b		.L3796
.L3795:
#     } else {
#       /* Gain: '<S44>/Gain' incorporates:
#        *  DataTypeConversion: '<S44>/Data Type Conversion'
#        */
#       tmp_3 = 2147483648U;
	.d2line		540
.Llo190:
	e_lis		r0,-32768
	.d2line		541
.Llo191:
	rlwinm		r31,r31,0,16,31		# rtb_Switch2_i=r31 rtb_Switch2_i=r31
#       tmp_4 = rtb_Switch2_i;
	stw		r0,8(r1)
	.d2line		542
	diab.li		r4,1		# rtu_throttleX1000=r4
#       sMultiWordMul(&tmp_3, 1, &tmp_4, 1, &tmp_2.chunks[0U], 2);
	stw		r31,12(r1)		# rtb_Switch2_i=r31
	diab.addi		r3,r1,8		# rtb_Switch2_n=r3
	diab.addi		r5,r1,12
	diab.addi		r7,r1,16
	diab.li		r8,2
	diab.li		r6,1
	.d2line		545
	diab.li		r31,10		# rtb_Switch2_i=r31
# 
#       /* Product: '<S44>/throttle negative' */
#       tmp_3 = 10U;
	bl		sMultiWordMul
	stw		r31,8(r1)		# rtb_Switch2_i=r31
#       sMultiWordMul(&tmp_2.chunks[0U], 2, &tmp_3, 1, &tmp_1.chunks[0U], 3);
	.d2line		546
	diab.addi		r3,r1,16		# rtb_Switch2_n=r3
	diab.addi		r5,r1,8
	diab.addi		r7,r1,48
	diab.li		r4,2		# rtu_throttleX1000=r4
	diab.li		r8,3
	bl		sMultiWordMul
# 
#       /* Sum: '<S44>/Subtract1' */
#       MultiWordAdd(&tmp_1.chunks[0U], &tmp_5.chunks[0U], &tmp_0.chunks[0U], 3);
	.d2line		549
	lis		r4,tmp_5.3790@ha		# rtu_throttleX1000=r4
.Llo184:
	diab.addi		r3,r1,48		# rtb_Switch2_n=r3
	diab.addi		r5,r1,36
	diab.li		r6,3
	e_add16i		r4,r4,tmp_5.3790@l		# rtu_throttleX1000=r4 rtu_throttleX1000=r4
.Llo185:
	bl		MultiWordAdd
# 
#       /* DataTypeConversion: '<S44>/Data Type Conversion3' */
#       sMultiWordShr(&tmp_0.chunks[0U], 3, 31U, &tmp.chunks[0U], 3);
	.d2line		552
	diab.li		r4,3		# rtu_throttleX1000=r4
	diab.addi		r3,r1,36		# rtb_Switch2_n=r3
	diab.addi		r6,r1,24
	diab.li		r5,31
	diab.li		r7,3
	bl		sMultiWordShr
	.d2line		153
	lhz		r3,26(r1)		# rtb_Switch2_n=r3
#       rtb_Switch2_n = (uint16_T)MultiWord2uLong(&tmp.chunks[0U]);
.L3796:
#     }
# 
#     /* End of Switch: '<S42>/Switch2' */
#     localB->Switch2 = (uint16_T)(int32_T)fmod(rtb_Switch2_n, 65536.0);
	.d2line		557
.Llo192:
	bl		_d_itod
	e_lis		r5,16624
	diab.li		r6,0
	bl		fmod
	bl		_d_dtoi
.Llo188:
	sth		r3,2(r29)		# localB=r29 rtb_Switch2_n=r3
.L3798:
#   }
# 
#   /* End of Switch: '<S36>/Switch' */
# }
	.d2line		561
	.d2epilogue_begin
.Llo178:
	lmw		r29,68(r1)		# offset r1+68  0x44
	.d2_cfa_restore_list	3,10
.Llo187:
	lwz		r0,84(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,80		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo179:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4540:
	.type		ATV_DBWREG_BRAKEFORWARD,@function
	.size		ATV_DBWREG_BRAKEFORWARD,.-ATV_DBWREG_BRAKEFORWARD
# Number of nodes = 186

# Allocations for ATV_DBWREG_BRAKEFORWARD
#	?a4		rtu_FS1
#	?a5		rtu_throttleX1000
#	?a6		localB
#	?a7		$$62
#	?a8		rtb_Switch2_n
#	?a9		$$61
#	?a10		$$30
#	?a11		$$3
#	?a13		rtb_Switch2_i
#	?a14		rtb_RelationalOperator1
#	?a15		rtb_Switch2_n
#	SP,24		tmp
#	SP,36		tmp_0
#	SP,48		tmp_1
#	SP,16		tmp_2
#	SP,8		tmp_3
#	SP,12		tmp_4
#	?a16		rtb_RelationalOperator1_0
#	not allocated	u
# static void ATV_KEY_ON(void)
# {
	.align		1
	.section	.text_vle
        .d2line         565
#$$ld
.L4571:

#$$bf	ATV_KEY_ON,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,cr0
	.d2_cfa_start __cie
ATV_KEY_ON:
	.d2line		0
	.d2prologue_end
	.d2line		569
	lbz		r0,atv_key_signal@sdarx(r0)		# tmp=r0
#   boolean_T tmp;
# 
#   /* During 'KEY_ON': '<S30>:20' */
#   tmp = !atv_key_signal;
.Llo196:
	lis		r3,ATV_DW@ha
	e_add16i		r3,r3,ATV_DW@l
	cntlzw		r0,r0		# tmp=r0 tmp=r0
	diab.srwi		r0,5		# tmp=r0
#   if (tmp && (ATV_DW.is_HV_CTRL != ATV_IN_HVM_ON) && (ATV_DW.is_HV_CTRL !=
	.d2line		570
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L3854	# eq
	lbz		r4,19(r3)
	se_cmpi		r4,1
	bc		1,2,.L3854	# eq
	se_cmpi		r4,4
	bc		1,2,.L3854	# eq
#        ATV_IN_HV_ON) && (ATV_DW.is_HV_CTRL != ATV_IN_HV_WAIT_INV_OFF)) {
	.d2line		571
	se_cmpi		r4,5
	bc		1,2,.L3854	# eq
#     /* Transition: '<S30>:23' */
#     /* Transition: '<S30>:25' */
#     /* Exit Internal 'KEY_ON': '<S30>:20' */
#     /* Exit Internal 'STARTTRIGGER': '<S30>:119' */
#     ATV_DW.is_STARTTRIGGER = ATV_IN_NO_ACTIVE_CHILD_m;
	.d2line		579
.Llo197:
	lbz		r0,22(r3)		# tmp=r0
	.d2line		576
.Llo198:
	diab.li		r4,0
# 
#     /* Exit Internal 'DRIVE_ENABLE': '<S30>:85' */
#     if (ATV_DW.is_DRIVE_ENABLE == ATV_IN_DRIVE_ENABLED) {
	stb		r4,23(r3)
	se_cmpi		r0,1		# tmp=r0
	bc		0,2,.L4576	# ne
	.d2line		579
.Llo199:
	stb		r4,atv_runLed_out@sdarx(r0)
.L4576:
#       /* Exit 'DRIVE_ENABLED': '<S30>:88' */
#       atv_runLed_out = false;
#       ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_m;
#     } else {
#       ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_m;
#     }
# 
#     /* Exit Internal 'HEATER_CTRL': '<S30>:72' */
#     ATV_DW.is_HEATER_CTRL = ATV_IN_NO_ACTIVE_CHILD_m;
# 
#     /* Exit Internal 'CHG_CTRL': '<S30>:68' */
#     ATV_DW.is_CHG_CTRL = ATV_IN_NO_ACTIVE_CHILD_m;
# 
#     /* Exit Internal 'HV_CTRL': '<S30>:34' */
#     ATV_DW.is_HV_CTRL = ATV_IN_NO_ACTIVE_CHILD_m;
#     ATV_DW.is_c3_ATV = ATV_IN_PRE_SLEEP;
	.d2line		595
	diab.li		r0,768		# tmp=r0
	.d2line		591
.Llo200:
	sth		r4,20(r3)
	sth		r0,18(r3)		# tmp=r0
	stb		r4,22(r3)
#     ATV_DW.temporalCounter_i1_m = 0U;
	.d2line		596
	stb		r4,24(r3)
# 
#     /* Entry 'PRE_SLEEP': '<S30>:3' */
#     atv_state_out = 2U;
	.d2line		599
	diab.li		r0,2		# tmp=r0
	stb		r0,atv_state_out@sdarx(r0)		# tmp=r0
#     atv_sub_state_out = 0U;
	.d2line		600
	stb		r4,atv_sub_state_out@sdarx(r0)
	.d2line		833
	blr
.L3854:
	.d2line		600
	lbz		r6,19(r3)
#   } else {
#     /* During 'HV_CTRL': '<S30>:34' */
#     switch (ATV_DW.is_HV_CTRL) {
	.d2line		603
	se_cmpi		r6,1
	bc		1,2,.L3815	# eq
	se_cmpi		r6,2
	bc		1,2,.L3817	# eq
	se_cmpi		r6,3
	bc		1,2,.L3819	# eq
	se_cmpi		r6,4
	bc		1,2,.L3822	# eq
	b		.L3824
.L3815:
#      case ATV_IN_HVM_ON:
#       /* During 'HVM_ON': '<S30>:54' */
#       if (ATV_DW.temporalCounter_i1_m >= 50U) {
	.d2line		606
.Llo201:
	lbz		r0,24(r3)		# tmp=r0
.Llo202:
	cmpli		0,0,r0,50		# tmp=r0
	bc		1,0,.L3814	# lt
.Llo203:
	diab.li		r0,4		# tmp=r0
	.d2line		611
.Llo204:
	diab.li		r5,3
#         /* Transition: '<S30>:56' */
#         ATV_DW.is_HV_CTRL = ATV_IN_HV_ON;
# 
#         /* Entry 'HV_ON': '<S30>:53' */
#         atv_sub_state_out = 3U;
	.d2line		606
	stb		r0,19(r3)		# tmp=r0
	.d2line		612
	lis		r4,(ATV_B+142)@ha
#         ATV_B.hvp_ctrl_out = true;
	diab.li		r0,257		# tmp=r0
	stb		r5,atv_sub_state_out@sdarx(r0)
	sth		r0,(ATV_B+142)@l(r4)		# tmp=r0
	.d2line		615
	b		.L3814
.L3817:
	.d2line		617
.Llo205:
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
#         ATV_B.hvm_ctrl_out = true;
#       }
#       break;
# 
#      case ATV_IN_HV_ARMED:
#       /* During 'HV_ARMED': '<S30>:83' */
#       if (ATV_B.atv_StartBtn_din && (!ATV_B.RateTransition4)) {
	.d2line		619
	lbz		r0,99(r4)		# tmp=r0
.Llo206:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L3814	# eq
.Llo207:
	lbz		r0,100(r4)		# tmp=r0
.Llo208:
	se_cmpi		r0,0		# tmp=r0
	bc		0,2,.L3814	# ne
.Llo209:
	diab.li		r6,1
	diab.li		r0,0		# tmp=r0
.Llo210:
	stb		r6,19(r3)
#         /* Transition: '<S30>:51' */
#         ATV_DW.is_HV_CTRL = ATV_IN_HVM_ON;
#         ATV_DW.temporalCounter_i1_m = 0U;
	.d2line		626
	diab.li		r5,2
# 
#         /* Entry 'HVM_ON': '<S30>:54' */
#         ATV_DW.startBtnArmed = false;
	.d2line		622
	stb		r0,24(r3)		# tmp=r0
#         atv_sub_state_out = 2U;
	.d2line		625
	stb		r0,34(r3)		# tmp=r0
	stb		r5,atv_sub_state_out@sdarx(r0)
#         ATV_B.hvp_ctrl_out = false;
	.d2line		627
	sth		r6,142(r4)
	.d2line		630
	b		.L3814
.L3819:
	.d2line		632
.Llo211:
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
#         ATV_B.hvm_ctrl_out = true;
#       }
#       break;
# 
#      case ATV_IN_HV_OFF:
#       /* During 'HV_OFF': '<S30>:52' */
#       if ((!ATV_B.atv_StartBtn_din) && (!ATV_B.RateTransition4)) {
	.d2line		634
	lbz		r0,99(r4)		# tmp=r0
.Llo212:
	se_cmpi		r0,0		# tmp=r0
	bc		0,2,.L3820	# ne
.Llo213:
	lbz		r0,100(r4)		# tmp=r0
.Llo214:
	se_cmpi		r0,0		# tmp=r0
	bc		0,2,.L3820	# ne
.Llo215:
	diab.li		r0,2		# tmp=r0
	.d2line		639
.Llo216:
	diab.li		r5,1
#         /* Transition: '<S30>:84' */
#         ATV_DW.is_HV_CTRL = ATV_IN_HV_ARMED;
# 
#         /* Entry 'HV_ARMED': '<S30>:83' */
#         atv_sub_state_out = 1U;
	.d2line		634
	stb		r0,19(r3)		# tmp=r0
	stb		r5,atv_sub_state_out@sdarx(r0)
#         ATV_B.hvp_ctrl_out = false;
	.d2line		640
	diab.li		r0,0		# tmp=r0
	sth		r0,142(r4)		# tmp=r0
	b		.L3814
.L3820:
#         ATV_B.hvm_ctrl_out = false;
#       } else {
#         atv_sub_state_out = 0U;
	.d2line		643
.Llo217:
	diab.li		r0,0		# tmp=r0
.Llo218:
	stb		r0,atv_sub_state_out@sdarx(r0)		# tmp=r0
#         ATV_B.hvp_ctrl_out = false;
	.d2line		644
	sth		r0,142(r4)		# tmp=r0
	.d2line		647
	b		.L3814
.L3822:
#         ATV_B.hvm_ctrl_out = false;
#       }
#       break;
# 
#      case ATV_IN_HV_ON:
#       /* During 'HV_ON': '<S30>:53' */
#       if ((ATV_DW.startBtnArmed && ATV_B.atv_StartBtn_din) ||
	.d2line		651
	lbz		r4,34(r3)
	se_cmpi		r4,0
	bc		1,2,.L3857	# eq
	lis		r4,(ATV_B+99)@ha
	lbz		r4,(ATV_B+99)@l(r4)
	se_cmpi		r4,0
	bc		0,2,.L3856	# ne
.L3857:
#           ATV_B.RateTransition4 || tmp) {
	.d2line		652
	lis		r4,(ATV_B+100)@ha
	lbz		r4,(ATV_B+100)@l(r4)
	se_cmpi		r4,0
	bc		0,2,.L3856	# ne
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L3814	# eq
.L3856:
.Llo219:
	diab.li		r4,5
	.d2line		655
	diab.li		r0,0		# tmp=r0
#         /* Transition: '<S30>:48' */
#         ATV_DW.is_HV_CTRL = ATV_IN_HV_WAIT_INV_OFF;
#         ATV_DW.temporalCounter_i1_m = 0U;
	.d2line		652
.Llo220:
	stb		r4,19(r3)
	.d2line		658
	diab.li		r5,4
# 
#         /* Entry 'HV_WAIT_INV_OFF': '<S30>:98' */
#         atv_sub_state_out = 4U;
	stb		r0,24(r3)		# tmp=r0
	.d2line		659
	lis		r4,(ATV_B+142)@ha
#         ATV_B.hvp_ctrl_out = true;
	diab.li		r0,257		# tmp=r0
	stb		r5,atv_sub_state_out@sdarx(r0)
	sth		r0,(ATV_B+142)@l(r4)		# tmp=r0
	.d2line		662
	b		.L3814
.L3824:
#         ATV_B.hvm_ctrl_out = true;
#       }
#       break;
# 
#      default:
#       /* During 'HV_WAIT_INV_OFF': '<S30>:98' */
#       if (ATV_DW.temporalCounter_i1_m >= 50U) {
	.d2line		666
.Llo221:
	lbz		r0,24(r3)		# tmp=r0
.Llo222:
	cmpli		0,0,r0,50		# tmp=r0
	bc		1,0,.L3814	# lt
.Llo223:
	diab.li		r0,3		# tmp=r0
.Llo224:
	stb		r0,19(r3)		# tmp=r0
.L3814:
.Llo225:
	lbz		r6,20(r3)
#         /* Transition: '<S30>:99' */
#         /* Transition: '<S30>:47' */
#         ATV_DW.is_HV_CTRL = ATV_IN_HV_OFF;
# 
#         /* Entry 'HV_OFF': '<S30>:52' */
#       }
#       break;
#     }
# 
#     /* During 'CHG_CTRL': '<S30>:68' */
#     switch (ATV_DW.is_CHG_CTRL) {
	.d2line		677
	se_cmpi		r6,1
	bc		1,2,.L3827	# eq
	se_cmpi		r6,2
	bc		1,2,.L3829	# eq
	b		.L3834
.L3827:
	.d2line		678
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
#      case ATV_IN_CHG_OFF:
#       /* During 'CHG_OFF': '<S30>:62' */
#       if (ATV_B.RateTransition4 && ((!ATV_B.hvp_ctrl_out) ||
	.d2line		680
	lbz		r0,100(r4)		# tmp=r0
.Llo226:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L3826	# eq
.Llo227:
	lbz		r0,142(r4)		# tmp=r0
.Llo228:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L3858	# eq
#            (ATV_DW.temporalCounter_i2 < 100U))) {
	.d2line		681
.Llo229:
	lbz		r0,25(r3)		# tmp=r0
.Llo230:
	cmpli		0,0,r0,100		# tmp=r0
	bc		0,0,.L3826	# ge
.L3858:
#         /* Transition: '<S30>:64' */
#         ATV_DW.is_CHG_CTRL = ATV_IN_HVM_ON_n;
	.d2line		683
.Llo231:
	diab.li		r4,2
	.d2line		684
	diab.li		r0,0		# tmp=r0
#         ATV_DW.temporalCounter_i2 = 0U;
.Llo232:
	stb		r4,20(r3)
	stb		r0,25(r3)		# tmp=r0
	.d2line		688
	b		.L3826
.L3829:
	.d2line		690
.Llo233:
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
# 
#         /* Entry 'HVM_ON': '<S30>:66' */
#       }
#       break;
# 
#      case ATV_IN_HVM_ON_n:
#       /* During 'HVM_ON': '<S30>:66' */
#       if ((!ATV_B.RateTransition4) || ATV_B.hvp_ctrl_out) {
	.d2line		692
	lbz		r0,100(r4)		# tmp=r0
.Llo234:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L3859	# eq
.Llo235:
	lbz		r0,142(r4)		# tmp=r0
.Llo236:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L3832	# eq
.L3859:
#         /* Transition: '<S30>:61' */
#         ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
	.d2line		694
.Llo237:
	diab.li		r5,1
	diab.li		r0,0		# tmp=r0
.Llo238:
	stb		r5,20(r3)
#         ATV_DW.temporalCounter_i2 = 0U;
	.d2line		695
	stb		r0,25(r3)		# tmp=r0
# 
#         /* Entry 'CHG_OFF': '<S30>:62' */
#         ATV_B.chg_ctrl_out = false;
#         ATV_B.hvm_ctrl_out = false;
	.d2line		699
	stb		r0,143(r4)		# tmp=r0
	.d2line		698
	stb		r0,144(r4)		# tmp=r0
	b		.L3826
.L3832:
#       } else if (ATV_DW.temporalCounter_i2 >= 150U) {
	.d2line		700
.Llo239:
	lbz		r0,25(r3)		# tmp=r0
.Llo240:
	cmpli		0,0,r0,150		# tmp=r0
	bc		1,0,.L3830	# lt
.Llo241:
	diab.li		r0,3		# tmp=r0
.Llo242:
	stb		r0,20(r3)		# tmp=r0
	b		.L3826
.L3830:
#         /* Transition: '<S30>:63' */
#         ATV_DW.is_CHG_CTRL = ATV_IN_HV_ON_p;
# 
#         /* Entry 'HV_ON': '<S30>:65' */
#       } else {
#         ATV_B.chg_ctrl_out = false;
	.d2line		706
.Llo243:
	diab.li		r0,0		# tmp=r0
	.d2line		709
.Llo244:
	b		.L3861
.L3834:
	.d2line		711
.Llo245:
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
#         ATV_B.hvm_ctrl_out = true;
#       }
#       break;
# 
#      default:
#       /* During 'HV_ON': '<S30>:65' */
#       if ((!ATV_B.RateTransition4) || ATV_B.hvp_ctrl_out) {
	.d2line		713
	lbz		r0,100(r4)		# tmp=r0
.Llo246:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L3860	# eq
.Llo247:
	lbz		r0,142(r4)		# tmp=r0
.Llo248:
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L3835	# eq
.L3860:
#         /* Transition: '<S30>:59' */
#         /* Transition: '<S30>:60' */
#         ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
	.d2line		716
.Llo249:
	diab.li		r5,1
	diab.li		r0,0		# tmp=r0
.Llo250:
	stb		r5,20(r3)
#         ATV_DW.temporalCounter_i2 = 0U;
	.d2line		717
	stb		r0,25(r3)		# tmp=r0
# 
#         /* Entry 'CHG_OFF': '<S30>:62' */
#         ATV_B.chg_ctrl_out = false;
#         ATV_B.hvm_ctrl_out = false;
	.d2line		721
	stb		r0,143(r4)		# tmp=r0
	.d2line		720
	stb		r0,144(r4)		# tmp=r0
	b		.L3826
.L3835:
#       } else {
#         ATV_B.chg_ctrl_out = true;
	.d2line		723
.Llo251:
	diab.li		r0,1		# tmp=r0
.L3861:
#         ATV_B.hvm_ctrl_out = true;
	.d2line		706
.Llo252:
	stb		r0,144(r4)		# tmp=r0
	.d2line		724
	diab.li		r0,1		# tmp=r0
	lis		r4,(ATV_B+143)@ha
	stb		r0,(ATV_B+143)@l(r4)		# tmp=r0
.L3826:
#       }
#       break;
#     }
# 
#     /* During 'HEATER_CTRL': '<S30>:72' */
#     if (ATV_DW.is_HEATER_CTRL == ATV_IN_HEATER_OFF) {
	.d2line		730
.Llo253:
	lbz		r0,21(r3)		# tmp=r0
	.d2line		739
.Llo254:
	lis		r4,ATV_B@ha
	e_add16i		r4,r4,ATV_B@l
	se_cmpi		r0,1		# tmp=r0
	bc		0,2,.L3839	# ne
#       ATV_B.heater_ctrl_out = false;
	.d2line		731
.Llo255:
	diab.li		r0,0		# tmp=r0
.Llo256:
	stb		r0,145(r4)		# tmp=r0
# 
#       /* During 'HEATER_OFF': '<S30>:69' */
#       if (ATV_B.RateTransition5) {
	.d2line		734
	lbz		r0,101(r4)		# tmp=r0
	se_cmpi		r0,0		# tmp=r0
	bc		1,2,.L3840	# eq
#         /* Transition: '<S30>:78' */
#         ATV_DW.is_HEATER_CTRL = ATV_IN_HVM_ON_n;
	.d2line		736
.Llo257:
	diab.li		r5,2
	.d2line		739
	diab.li		r0,1		# tmp=r0
# 
#         /* Entry 'HVM_ON': '<S30>:73' */
#         ATV_B.heater_ctrl_out = true;
.Llo258:
	stb		r5,21(r3)
	stb		r0,145(r4)		# tmp=r0
	b		.L3840
.L3839:
#       }
#     } else {
#       ATV_B.heater_ctrl_out = true;
	.d2line		745
.Llo259:
	lbz		r0,101(r4)		# tmp=r0
	.d2line		742
.Llo260:
	diab.li		r5,1
# 
#       /* During 'HVM_ON': '<S30>:73' */
#       if (!ATV_B.RateTransition5) {
	stb		r5,145(r4)
	se_cmpi		r0,0		# tmp=r0
	bc		0,2,.L3840	# ne
#         /* Transition: '<S30>:77' */
#         ATV_DW.is_HEATER_CTRL = ATV_IN_HEATER_OFF;
	.d2line		747
.Llo261:
	stb		r5,21(r3)
# 
#         /* Entry 'HEATER_OFF': '<S30>:69' */
#         ATV_B.heater_ctrl_out = false;
	.d2line		750
	diab.li		r0,0		# tmp=r0
.Llo262:
	stb		r0,145(r4)		# tmp=r0
.L3840:
.Llo263:
	lbz		r6,22(r3)
#       }
#     }
# 
#     /* During 'DRIVE_ENABLE': '<S30>:85' */
#     switch (ATV_DW.is_DRIVE_ENABLE) {
	.d2line		755
	se_cmpi		r6,1
	bc		1,2,.L3842	# eq
	se_cmpi		r6,2
	bc		1,2,.L3844	# eq
	b		.L3848
.L3842:
#      case ATV_IN_DRIVE_ENABLED:
#       atv_state_out = 5U;
	.d2line		757
	diab.li		r0,5		# tmp=r0
.Llo264:
	lis		r4,ATV_B@ha
	stb		r0,atv_state_out@sdarx(r0)		# tmp=r0
	e_add16i		r4,r4,ATV_B@l
#       ATV_B.en_inv_rear_out = true;
	.d2line		758
	diab.li		r0,257		# tmp=r0
	sth		r0,146(r4)		# tmp=r0
#       ATV_B.en_inv_front_out = true;
# 
#       /* During 'DRIVE_ENABLED': '<S30>:88' */
#       if (ATV_DW.is_HV_CTRL != ATV_IN_HV_ON) {
	.d2line		762
	lbz		r0,19(r3)		# tmp=r0
	se_cmpi		r0,4		# tmp=r0
	bc		1,2,.L3841	# eq
#         /* Transition: '<S30>:92' */
#         /* Transition: '<S30>:93' */
#         /* Transition: '<S30>:94' */
#         /* Exit 'DRIVE_ENABLED': '<S30>:88' */
#         atv_runLed_out = false;
	.d2line		767
.Llo265:
	diab.li		r6,0
	.d2line		768
	diab.li		r5,3
#         ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;
	stb		r6,atv_runLed_out@sdarx(r0)
	.d2line		771
	diab.li		r0,4		# tmp=r0
# 
#         /* Entry 'IDLE': '<S30>:87' */
#         atv_state_out = 4U;
.Llo266:
	stb		r5,22(r3)
	stb		r0,atv_state_out@sdarx(r0)		# tmp=r0
#         ATV_B.en_inv_rear_out = false;
	.d2line		772
	sth		r6,146(r4)
	.d2line		775
	b		.L3841
.L3844:
#         ATV_B.en_inv_front_out = false;
#       }
#       break;
# 
#      case ATV_IN_HV_DEL:
#       /* During 'HV_DEL': '<S30>:96' */
#       if (ATV_DW.temporalCounter_i3 >= 50U) {
	.d2line		779
.Llo267:
	lbz		r0,26(r3)		# tmp=r0
.Llo268:
	cmpli		0,0,r0,50		# tmp=r0
	bc		1,0,.L3846	# lt
.Llo269:
	diab.li		r0,1		# tmp=r0
	.d2line		784
.Llo270:
	diab.li		r6,5
#         /* Transition: '<S30>:97' */
#         ATV_DW.is_DRIVE_ENABLE = ATV_IN_DRIVE_ENABLED;
# 
#         /* Entry 'DRIVE_ENABLED': '<S30>:88' */
#         atv_state_out = 5U;
	.d2line		779
	stb		r0,22(r3)		# tmp=r0
	.d2line		785
	diab.li		r5,257
#         ATV_B.en_inv_rear_out = true;
	lis		r4,(ATV_B+146)@ha
	stb		r6,atv_state_out@sdarx(r0)
	.d2line		787
	stb		r0,atv_runLed_out@sdarx(r0)		# tmp=r0
#         ATV_B.en_inv_front_out = true;
#         atv_runLed_out = true;
	sth		r5,(ATV_B+146)@l(r4)
	b		.L3841
.L3846:
#       } else {
#         if (ATV_DW.is_HV_CTRL != ATV_IN_HV_ON) {
	.d2line		789
.Llo271:
	lbz		r0,19(r3)		# tmp=r0
.Llo272:
	se_cmpi		r0,4		# tmp=r0
	bc		1,2,.L3841	# eq
.Llo273:
	diab.li		r0,3		# tmp=r0
	.d2line		794
.Llo274:
	diab.li		r5,4
#           /* Transition: '<S30>:86' */
#           ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;
# 
#           /* Entry 'IDLE': '<S30>:87' */
#           atv_state_out = 4U;
	.d2line		789
	stb		r0,22(r3)		# tmp=r0
	.d2line		795
	lis		r4,(ATV_B+146)@ha
#           ATV_B.en_inv_rear_out = false;
	diab.li		r0,0		# tmp=r0
	stb		r5,atv_state_out@sdarx(r0)
	sth		r0,(ATV_B+146)@l(r4)		# tmp=r0
	.d2line		799
	b		.L3841
.L3848:
#           ATV_B.en_inv_front_out = false;
#         }
#       }
#       break;
# 
#      default:
#       atv_state_out = 4U;
	.d2line		802
.Llo275:
	diab.li		r4,4
	.d2line		803
	diab.li		r0,0		# tmp=r0
#       ATV_B.en_inv_rear_out = false;
.Llo276:
	stb		r4,atv_state_out@sdarx(r0)
	lis		r4,(ATV_B+146)@ha
	sth		r0,(ATV_B+146)@l(r4)		# tmp=r0
#       ATV_B.en_inv_front_out = false;
# 
#       /* During 'IDLE': '<S30>:87' */
#       if (ATV_DW.is_HV_CTRL == ATV_IN_HV_ON) {
	.d2line		807
	lbz		r4,19(r3)
	se_cmpi		r4,4
	bc		0,2,.L3841	# ne
#         /* Transition: '<S30>:95' */
#         ATV_DW.is_DRIVE_ENABLE = ATV_IN_HV_DEL;
	.d2line		810
	stb		r0,26(r3)		# tmp=r0
	.d2line		809
	diab.li		r0,2		# tmp=r0
#         ATV_DW.temporalCounter_i3 = 0U;
	stb		r0,22(r3)		# tmp=r0
.L3841:
	.d2line		810
.Llo277:
	lbz		r0,23(r3)		# tmp=r0
.Llo278:
	lis		r4,(ATV_B+99)@ha
	lbz		r4,(ATV_B+99)@l(r4)
#       }
#       break;
#     }
# 
#     /* During 'STARTTRIGGER': '<S30>:119' */
#     if (ATV_DW.is_STARTTRIGGER == ATV_IN_STARTTRIGGER_OFF) {
	.d2line		816
	se_cmpi		r0,1		# tmp=r0
	bc		0,2,.L3852	# ne
#       /* During 'STARTTRIGGER_OFF': '<S30>:117' */
#       if (!ATV_B.atv_StartBtn_din) {
	.d2line		818
.Llo279:
	se_cmpi		r4,0
	bc		0,2,.L3855	# ne
	diab.li		r4,2
	.d2line		823
	diab.li		r0,1		# tmp=r0
#         /* Transition: '<S30>:114' */
#         ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_ON;
# 
#         /* Entry 'STARTTRIGGER_ON': '<S30>:118' */
#         ATV_DW.startBtnArmed = true;
	.d2line		818
.Llo280:
	stb		r4,23(r3)
	stb		r0,34(r3)		# tmp=r0
	.d2line		833
	blr
.L3852:
#       }
#     } else {
#       /* During 'STARTTRIGGER_ON': '<S30>:118' */
#       if (ATV_B.atv_StartBtn_din) {
	.d2line		827
.Llo281:
	se_cmpi		r4,0
	bc		1,2,.L3855	# eq
	diab.li		r0,1		# tmp=r0
.Llo282:
	stb		r0,23(r3)		# tmp=r0
.L3855:
#         /* Transition: '<S30>:116' */
#         ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_OFF;
#       }
#     }
#   }
# }
	.d2line		833
	.d2epilogue_begin
.Llo283:
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4572:
	.type		ATV_KEY_ON,@function
	.size		ATV_KEY_ON,.-ATV_KEY_ON
# Number of nodes = 793

# Allocations for ATV_KEY_ON
#	?a4		$$204
#	?a5		$$83
#	?a6		$$82
#	?a7		$$81
#	?a8		$$80
#	?a9		$$79
#	?a10		$$78
#	?a11		$$77
#	?a12		$$76
#	?a13		$$75
#	?a14		$$74
#	?a15		$$73
#	?a16		$$72
#	?a17		$$71
#	?a18		$$70
#	?a19		$$69
#	?a20		$$68
#	?a21		$$63
#	?a22		tmp
# static real_T ATV_Off(boolean_T TInverterLow, boolean_T TMotorLow)
# {
	.align		1
	.section	.text_vle
        .d2line         837
#$$ld
.L4579:

#$$bf	ATV_Off,interprocedural,nostackparams

# Regs written: r0,r3,cr0
	.d2_cfa_start __cie
ATV_Off:
.Llo284:
	se_cmpi		r3,0		# TInverterLow=r3
	.d2prologue_end
#   real_T PumpSt;
# 
#   /* Truth Table Function 'Off': '<S33>:77' */
#   if (TInverterLow && TMotorLow && ATV_B.RelationalOperator5) {
	.d2line		841
	bc		1,2,.L3895	# eq
	se_cmpi		r4,0		# TMotorLow=r4
	bc		1,2,.L3895	# eq
	lis		r3,(ATV_B+114)@ha		# TInverterLow=r3
	lbz		r0,(ATV_B+114)@l(r3)		# TInverterLow=r3
	se_cmpi		r0,0
	bc		1,2,.L3895	# eq
#     /* Condition '#1': '<S33>:77:10' */
#     /* Condition '#2': '<S33>:77:14' */
#     /* Condition '#3': '<S33>:77:18' */
#     /* Action '1': '<S33>:77:30' */
#     PumpSt = 0.0;
	.d2line		846
.Llo285:
	diab.li		r3,0		# PumpSt=r3
	.d2line		853
.Llo289:
	blr
.L3895:
#   } else {
#     /* Action '2': '<S33>:77:36' */
#     PumpSt = 1.0;
	.d2line		849
.Llo286:
	e_lis		r3,16256		# TInverterLow=r3
.L3896:
#   }
# 
#   return PumpSt;
# }
	.d2line		853
	.d2epilogue_begin
.Llo287:
	blr
.Llo288:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4580:
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
        .d2line         857
#$$ld
.L4588:

#$$bf	ATV_On,interprocedural,nostackparams

# Regs written: r0,r3,cr0
	.d2_cfa_start __cie
ATV_On:
.Llo290:
	se_cmpi		r3,0		# TInverterHi=r3
	.d2prologue_end
#   real_T PumpSt;
# 
#   /* Truth Table Function 'On': '<S33>:92' */
#   if (TInverterHi) {
	.d2line		861
	bc		1,2,.L3904	# eq
#     /* Condition '#1': '<S33>:92:10' */
#     /* Action '1': '<S33>:92:34' */
#     PumpSt = 1.0;
	.d2line		864
	e_lis		r3,16256		# TInverterHi=r3
	.d2line		879
.Llo291:
	blr
.L3904:
#   } else if (TMotorHi) {
	.d2line		865
.Llo292:
	se_cmpi		r4,0		# TMotorHi=r4
	bc		1,2,.L3902	# eq
#     /* Condition '#2': '<S33>:92:14' */
#     /* Action '1': '<S33>:92:34' */
#     PumpSt = 1.0;
	.d2line		868
	e_lis		r3,16256		# TInverterHi=r3
	.d2line		879
.Llo293:
	blr
.L3902:
	.d2line		868
.Llo294:
	lis		r3,(ATV_B+113)@ha		# TInverterHi=r3
	lbz		r0,(ATV_B+113)@l(r3)		# TInverterHi=r3
	se_cmpi		r0,0
	isel		r3,0,r0,2		# TInverterHi=r3
.L4595:
	e_lis		r0,16256
	isel		r3,r3,r0,2		# TInverterHi=r3 TInverterHi=r3
.L4596:
.L3905:
#   } else if (ATV_B.RelationalOperator4) {
#     /* Condition '#3': '<S33>:92:18' */
#     /* Action '1': '<S33>:92:34' */
#     PumpSt = 1.0;
#   } else {
#     /* Action '2': '<S33>:92:40' */
#     PumpSt = 0.0;
#   }
# 
#   return PumpSt;
# }
	.d2line		879
	.d2epilogue_begin
.Llo295:
	blr
.Llo296:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4589:
	.type		ATV_On,@function
	.size		ATV_On,.-ATV_On
# Number of nodes = 33

# Allocations for ATV_On
#	?a4		TInverterHi
#	?a5		TMotorHi
#	?a6		PumpSt
# static void ATV_output0(void)          /* Sample time: [0.01s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         883
#$$ld
.L4599:

#$$bf	ATV_output0,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ATV_output0:
	diab.li		r0,-304
	stwux		r1,r1,r0		
	.d2_cfa_def_cfa_offset	304
	diab.addi		r12,r1,272
	mfspr		r0,lr
	stmw		r24,0(r12)		# offset r1+272  0x110
	.d2_cfa_offset_list	24,31,1,1
	stw		r0,308(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#   int32_T rtb_Add;
#   uint8_T rtb_Gain_d;
#   real_T rtb_Gain;
#   boolean_T RelationalOperator6;
#   boolean_T RelationalOperator8;
# 
#   {                                    /* Sample time: [0.01s, 0.0s] */
#     rate_monotonic_scheduler();
	.d2line		891
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
	.d2line		901
	e_lis		r31,16544
	.d2line		900
	diab.addi		r4,r1,46
	diab.li		r3,24
	diab.li		r5,0
	e_lis		r30,14720
#     ATV_B.pai_BasicAnalogInput = (adc * 5.0) / 4096.0;
	bl		pax_adc_input
	lis		r27,ATV_B@ha
	lha		r0,46(r1)
	.d2line		905
	e_lis		r3,17530
	e_add16i		r27,r27,ATV_B@l
	efscfsi		r0,r0
	efsmul		r0,r0,r31
	efsmul		r0,r0,r30
#   }
# 
#   /* Gain: '<S6>/Gain' */
#   rtb_Gain = floor(1000.0 * ATV_B.pai_BasicAnalogInput);
	stw		r0,0(r27)
	efsmul		r3,r0,r3
	bl		_f_ftod
	bl		floor
	bl		_d_dtof
.Llo432:
	mr		r31,r3		# rtb_Gain=r31 rtb_Gain=r3
#   if (rtIsNaN(rtb_Gain) || rtIsInf(rtb_Gain)) {
	.d2line		906
	bl		rtIsNaN
.Llo433:
	e_andi.		r3,r3,255
	bc		0,2,.L4051	# ne
.Llo434:
	mr		r3,r31		# rtb_Gain=r3 rtb_Gain=r31
	bl		rtIsInf
	e_andi.		r3,r3,255
	bc		1,2,.L3911	# eq
.L4051:
#     rtb_Gain = 0.0;
	.d2line		907
	diab.li		r3,0		# rtb_Gain=r3
.Llo305:
	b		.L4052
.L3911:
#   } else {
#     rtb_Gain = fmod(rtb_Gain, 4.294967296E+9);
	.d2line		909
.Llo306:
	mr		r3,r31		# rtb_Gain=r3 rtb_Gain=r31
	bl		_f_ftod
	.d2line		912
	diab.li		r31,0
.Llo435:
	e_lis		r5,16880
	diab.li		r6,0
	bl		fmod
	bl		_d_dtof
#   }
# 
#   atv_xd1_key_ain = rtb_Gain < 0.0 ? -(int32_T)(uint32_T)-rtb_Gain : (int32_T)
.Llo307:
	efscmplt		1,r3,r31		# rtb_Gain=r3
	bc		0,5,.L4052		# ge
	efsneg		r0,r3		# rtb_Gain=r3
	efsctuiz		r0,r0
	neg		r0,r0
	b		.L4053
.L4052:
	efsctuiz		r0,r3		# rtb_Gain=r3
.L4053:
#     (uint32_T)rtb_Gain;
# 
#   /* End of Gain: '<S6>/Gain' */
# 
#   /* RelationalOperator: '<S26>/Compare' incorporates:
#    *  Constant: '<S26>/Constant'
#    */
#   atv_key_signal = (atv_xd1_key_ain > 500);
.Llo308:
	stw		r0,atv_xd1_key_ain@sdarx(r0)
	.d2line		928
	diab.addi		r4,r1,32
	diab.li		r3,169		# rtb_Gain=r3
	diab.li		r5,0
	.d2line		920
	lwz		r0,atv_xd1_key_ain@sdarx(r0)
	e_lis		r31,15395
# 
#   /* S-Function (pdx_digital_input): '<S6>/pdx_DigitalInput' */
#   /* S-Function Block: <S6>/pdx_DigitalInput
#    * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
#    */
#   {
#     uint8_T state;
#     (void) pdx_digital_input(PIO_DIN_ZA3, &state, FALSE);
	lis		r29,ATV_DW@ha
	e_or2i		r31,55050
	cmpi		0,0,r0,500
	e_add16i		r29,r29,ATV_DW@l
	mfcr		r0
	.d2line		940
	lis		r28,ATV_M@ha
	rlwinm		r0,r0,2,31,31
	e_add16i		r28,r28,ATV_M@l
	stb		r0,atv_key_signal@sdarx(r0)
#     put_debounce_by_time(state,
	bl		pdx_digital_input
	.d2line		929
	lbz		r3,32(r1)		# rtb_Gain=r3
	e_lis		r6,15692
	e_lis		r7,15820
	diab.addi		r8,r1,32
	diab.addi		r9,r29,44
	mr		r4,r31
	diab.li		r5,0
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
	.d2line		936
	lbz		r0,32(r1)
#   }
# 
#   /* Logic: '<S6>/Logical Operator' */
#   ATV_B.atv_StartBtn_din = !atv_za3_StartBtn_din;
	stb		r0,atv_za3_StartBtn_din@sdarx(r0)
	cntlzw		r0,r0
	diab.srwi		r0,5
	stb		r0,99(r27)
# 
#   /* RateTransition: '<Root>/Rate Transition4' */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		943
	lwz		r3,0(r28)		# rtb_Gain=r3
.Llo309:
	lbz		r0,431(r3)		# rtb_Gain=r3
	se_cmpi		r0,0
	bc		1,2,.L3913	# eq
#     ATV_B.RateTransition4 = ATV_DW.RateTransition4_Buffer0;
	.d2line		944
.Llo310:
	lbz		r0,30(r29)
	stb		r0,100(r27)
# 
#     /* RateTransition: '<Root>/Rate Transition5' */
#     ATV_B.RateTransition5 = ATV_DW.RateTransition5_Buffer0;
	.d2line		947
	lbz		r0,31(r29)
	stb		r0,101(r27)
.L3913:
	lbz		r3,24(r29)		# rtb_Gain=r3
#   }
# 
#   /* End of RateTransition: '<Root>/Rate Transition4' */
# 
#   /* Chart: '<S8>/VSM' */
#   if (ATV_DW.temporalCounter_i1_m < 127U) {
	.d2line		953
.Llo311:
	cmpli		0,0,r3,127		# rtb_Gain=r3
	bc		0,0,.L3914	# ge
#     ATV_DW.temporalCounter_i1_m++;
	.d2line		954
	se_addi		r3,1		# rtb_Gain=r3 rtb_Gain=r3
	stb		r3,24(r29)		# rtb_Gain=r3
.L3914:
.Llo312:
	lbz		r3,25(r29)		# rtb_Gain=r3
#   }
# 
#   if (ATV_DW.temporalCounter_i2 < 255U) {
	.d2line		957
.Llo313:
	cmpli		0,0,r3,255		# rtb_Gain=r3
	bc		0,0,.L3915	# ge
#     ATV_DW.temporalCounter_i2++;
	.d2line		958
	se_addi		r3,1		# rtb_Gain=r3 rtb_Gain=r3
	stb		r3,25(r29)		# rtb_Gain=r3
.L3915:
.Llo314:
	lbz		r3,26(r29)		# rtb_Gain=r3
#   }
# 
#   if (ATV_DW.temporalCounter_i3 < 63U) {
	.d2line		961
.Llo315:
	cmpli		0,0,r3,63		# rtb_Gain=r3
	bc		0,0,.L3916	# ge
#     ATV_DW.temporalCounter_i3++;
	.d2line		962
	se_addi		r3,1		# rtb_Gain=r3 rtb_Gain=r3
	stb		r3,26(r29)		# rtb_Gain=r3
.L3916:
	lbz		r0,17(r29)
#   }
# 
#   /* Gateway: loop_10ms/VSM */
#   /* During: loop_10ms/VSM */
#   if (ATV_DW.is_active_c3_ATV == 0U) {
	.d2line		967
	e_andi.		r0,r0,255
	bc		0,2,.L3929	# ne
	.d2line		973
.Llo316:
	diab.li		r0,4
	.d2line		967
	diab.li		r3,1		# rtb_Gain=r3
#     /* Entry: loop_10ms/VSM */
#     ATV_DW.is_active_c3_ATV = 1U;
# 
#     /* Entry Internal: loop_10ms/VSM */
#     /* Transition: '<S30>:4' */
#     ATV_DW.is_c3_ATV = ATV_IN_SLEEP;
.Llo317:
	stb		r0,18(r29)
	stb		r3,17(r29)		# rtb_Gain=r3
# 
#     /* Entry 'SLEEP': '<S30>:9' */
#     atv_state_out = 1U;
	.d2line		976
	diab.li		r0,0
	stb		r3,atv_state_out@sdarx(r0)		# rtb_Gain=r3
#     atv_sub_state_out = 0U;
	.d2line		977
	stb		r0,atv_sub_state_out@sdarx(r0)
#     atv_wakelock_out = false;
	.d2line		978
	stb		r0,atv_wakelock_out@sdarx(r0)
#     ATV_B.en_inv_gen_out = false;
	.d2line		979
	stb		r0,148(r27)
#     atv_en_dcdc_out = false;
	.d2line		980
	stb		r0,atv_en_dcdc_out@sdarx(r0)
	b		.L3930
.L3929:
#   } else {
#     switch (ATV_DW.is_c3_ATV) {
	.d2line		982
.Llo318:
	lbz		r6,18(r29)
	se_cmpi		r6,1
	bc		1,2,.L3918	# eq
	se_cmpi		r6,2
	bc		1,2,.L3922	# eq
	se_cmpi		r6,3
	bc		1,2,.L3923	# eq
	b		.L3927
.L3918:
#      case ATV_IN_INIT:
#       atv_state_out = 3U;
	.d2line		989
	lbz		r3,atv_key_signal@sdarx(r0)		# rtb_Gain=r3
	.d2line		984
.Llo319:
	diab.li		r5,3
	diab.li		r0,1
#       atv_wakelock_out = true;
	stb		r5,atv_state_out@sdarx(r0)
#       atv_en_dcdc_out = true;
	.d2line		985
	stb		r0,atv_wakelock_out@sdarx(r0)
# 
#       /* During 'INIT': '<S30>:5' */
#       if (!atv_key_signal) {
	se_cmpi		r3,0		# rtb_Gain=r3
	.d2line		986
	stb		r0,atv_en_dcdc_out@sdarx(r0)
	bc		0,2,.L3920	# ne
#         /* Transition: '<S30>:17' */
#         ATV_DW.is_c3_ATV = ATV_IN_PRE_SLEEP;
	.d2line		991
.Llo320:
	diab.li		r0,0
	stb		r5,18(r29)
#         ATV_DW.temporalCounter_i1_m = 0U;
	.d2line		992
	stb		r0,24(r29)
# 
#         /* Entry 'PRE_SLEEP': '<S30>:3' */
#         atv_state_out = 2U;
	.d2line		995
	diab.li		r3,2		# rtb_Gain=r3
.Llo321:
	stb		r3,atv_state_out@sdarx(r0)		# rtb_Gain=r3
#         atv_sub_state_out = 0U;
	.d2line		996
	stb		r0,atv_sub_state_out@sdarx(r0)
	b		.L3930
.L3920:
#       } else {
#         if (ATV_DW.temporalCounter_i1_m >= 100U) {
	.d2line		998
.Llo322:
	lbz		r3,24(r29)		# rtb_Gain=r3
.Llo323:
	cmpli		0,0,r3,100		# rtb_Gain=r3
	bc		1,0,.L3930	# lt
#           /* Transition: '<S30>:22' */
#           ATV_DW.is_c3_ATV = ATV_IN_KEY_ON;
	.d2line		1011
.Llo324:
	diab.li		r3,0		# rtb_Gain=r3
.Llo325:
	stb		r0,20(r29)
# 
#           /* Entry 'KEY_ON': '<S30>:20' */
#           /* Entry Internal 'KEY_ON': '<S30>:20' */
#           /* Entry Internal 'HV_CTRL': '<S30>:34' */
#           /* Transition: '<S30>:82' */
#           ATV_DW.is_HV_CTRL = ATV_IN_HV_OFF;
# 
#           /* Entry 'HV_OFF': '<S30>:52' */
#           /* Entry Internal 'CHG_CTRL': '<S30>:68' */
#           /* Transition: '<S30>:67' */
#           ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
	.d2line		1012
	stb		r3,25(r29)		# rtb_Gain=r3
	.d2line		1000
	diab.li		r4,515
#           ATV_DW.temporalCounter_i2 = 0U;
	sth		r4,18(r29)
# 
#           /* Entry 'CHG_OFF': '<S30>:62' */
#           ATV_B.chg_ctrl_out = false;
#           ATV_B.hvm_ctrl_out = false;
	.d2line		1016
	stb		r3,143(r27)		# rtb_Gain=r3
	.d2line		1030
	diab.li		r4,4
# 
#           /* Entry Internal 'HEATER_CTRL': '<S30>:72' */
#           /* Transition: '<S30>:74' */
#           ATV_DW.is_HEATER_CTRL = ATV_IN_HEATER_OFF;
	.d2line		1015
	stb		r3,144(r27)		# rtb_Gain=r3
# 
#           /* Entry 'HEATER_OFF': '<S30>:69' */
#           ATV_B.heater_ctrl_out = false;
	.d2line		1020
	stb		r0,21(r29)
# 
#           /* Entry Internal 'DRIVE_ENABLE': '<S30>:85' */
#           /* Transition: '<S30>:91' */
#           ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;
	.d2line		1023
	stb		r3,145(r27)		# rtb_Gain=r3
# 
#           /* Entry 'IDLE': '<S30>:87' */
#           atv_state_out = 4U;
	.d2line		1027
	stb		r5,22(r29)
	.d2line		1030
	stb		r4,atv_state_out@sdarx(r0)
#           ATV_B.en_inv_rear_out = false;
	.d2line		1031
	sth		r3,146(r27)		# rtb_Gain=r3
#           ATV_B.en_inv_front_out = false;
# 
#           /* Entry Internal 'STARTTRIGGER': '<S30>:119' */
#           /* Transition: '<S30>:115' */
#           ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_OFF;
	.d2line		1036
	stb		r0,23(r29)
	.d2line		1039
	b		.L3930
.L3922:
#         }
#       }
#       break;
# 
#      case ATV_IN_KEY_ON:
#       ATV_KEY_ON();
	.d2line		1042
.Llo326:
	bl		ATV_KEY_ON
	.d2line		1043
	b		.L3930
.L3923:
#       break;
# 
#      case ATV_IN_PRE_SLEEP:
#       atv_state_out = 2U;
	.d2line		1049
	lbz		r0,atv_key_signal@sdarx(r0)
	.d2line		1046
	diab.li		r3,2		# rtb_Gain=r3
# 
#       /* During 'PRE_SLEEP': '<S30>:3' */
#       if (atv_key_signal) {
.Llo327:
	stb		r3,atv_state_out@sdarx(r0)		# rtb_Gain=r3
	se_cmpi		r0,0
	bc		1,2,.L3925	# eq
	.d2line		1049
.Llo328:
	diab.li		r0,1
#         /* Transition: '<S30>:19' */
#         ATV_DW.is_c3_ATV = ATV_IN_INIT;
	.d2line		1051
	diab.li		r3,0		# rtb_Gain=r3
.Llo329:
	stb		r0,18(r29)
#         ATV_DW.temporalCounter_i1_m = 0U;
	.d2line		1055
	diab.li		r4,3
# 
#         /* Entry 'INIT': '<S30>:5' */
#         atv_state_out = 3U;
	.d2line		1052
	stb		r3,24(r29)		# rtb_Gain=r3
	stb		r4,atv_state_out@sdarx(r0)
#         atv_sub_state_out = 0U;
	.d2line		1056
	stb		r3,atv_sub_state_out@sdarx(r0)		# rtb_Gain=r3
#         atv_wakelock_out = true;
	.d2line		1057
	stb		r0,atv_wakelock_out@sdarx(r0)
#         atv_en_dcdc_out = true;
	.d2line		1058
	stb		r0,atv_en_dcdc_out@sdarx(r0)
	b		.L3930
.L3925:
#       } else {
#         if (ATV_DW.temporalCounter_i1_m >= 25U) {
	.d2line		1060
.Llo330:
	lbz		r0,24(r29)
	se_cmpli	r0,25
	bc		1,0,.L3930	# lt
#           /* Transition: '<S30>:16' */
#           ATV_DW.is_c3_ATV = ATV_IN_SLEEP;
	.d2line		1062
	diab.li		r0,4
	.d2line		1065
	diab.li		r3,1		# rtb_Gain=r3
# 
#           /* Entry 'SLEEP': '<S30>:9' */
#           atv_state_out = 1U;
.Llo331:
	stb		r0,18(r29)
	diab.li		r0,0
	stb		r3,atv_state_out@sdarx(r0)		# rtb_Gain=r3
#           atv_sub_state_out = 0U;
	.d2line		1066
	stb		r0,atv_sub_state_out@sdarx(r0)
#           atv_wakelock_out = false;
	.d2line		1067
	stb		r0,atv_wakelock_out@sdarx(r0)
#           ATV_B.en_inv_gen_out = false;
	.d2line		1068
	stb		r0,148(r27)
#           atv_en_dcdc_out = false;
	.d2line		1069
	stb		r0,atv_en_dcdc_out@sdarx(r0)
	.d2line		1072
	b		.L3930
.L3927:
#         }
#       }
#       break;
# 
#      default:
#       atv_state_out = 1U;
	.d2line		1075
.Llo332:
	diab.li		r4,1
	diab.li		r0,0
	stb		r4,atv_state_out@sdarx(r0)
#       atv_wakelock_out = false;
	.d2line		1076
	stb		r0,atv_wakelock_out@sdarx(r0)
#       ATV_B.en_inv_gen_out = false;
	.d2line		1077
	stb		r0,148(r27)
#       atv_en_dcdc_out = false;
	.d2line		1081
	lbz		r3,atv_key_signal@sdarx(r0)		# rtb_Gain=r3
# 
#       /* During 'SLEEP': '<S30>:9' */
#       if (atv_key_signal) {
	.d2line		1078
.Llo333:
	stb		r0,atv_en_dcdc_out@sdarx(r0)
	se_cmpi		r3,0		# rtb_Gain=r3
	bc		1,2,.L3930	# eq
#         /* Transition: '<S30>:12' */
#         ATV_DW.is_c3_ATV = ATV_IN_INIT;
	.d2line		1083
.Llo334:
	stb		r4,18(r29)
#         ATV_DW.temporalCounter_i1_m = 0U;
	.d2line		1087
	diab.li		r3,3		# rtb_Gain=r3
# 
#         /* Entry 'INIT': '<S30>:5' */
#         atv_state_out = 3U;
	.d2line		1084
.Llo335:
	stb		r0,24(r29)
	stb		r3,atv_state_out@sdarx(r0)		# rtb_Gain=r3
#         atv_sub_state_out = 0U;
	.d2line		1088
	stb		r0,atv_sub_state_out@sdarx(r0)
#         atv_wakelock_out = true;
	.d2line		1089
	stb		r4,atv_wakelock_out@sdarx(r0)
#         atv_en_dcdc_out = true;
	.d2line		1090
	stb		r4,atv_en_dcdc_out@sdarx(r0)
.L3930:
	.section	.text_vle
.L4717:
#       }
#       break;
#     }
#   }
# 
#   /* End of Chart: '<S8>/VSM' */
# 
#   /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage' */
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   {
#     U8 data[8];
#     BOOL retval;
#     F32 pcx_CANdb_TransmitMessage_in_port_buffer[3];
#     F32 * pcx_CANdb_TransmitMessage_in_port_ptr[3];
#     static const U8 pcx_CANdb_TransmitMessage_field_start_pos[3] = {
#       0, 8, 16, };
# 
#     static const U8 pcx_CANdb_TransmitMessage_field_width[3] = {
#       8, 8, 8, };
# 
#     static const U8 pcx_CANdb_TransmitMessage_field_is_signed[3] = {
#       0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage_field_valtype[3] = {
#       0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage_field_order[3] = {
#       1, 1, 1, };
# 
#     static const F32 pcx_CANdb_TransmitMessage_field_eng_min[3] = {
#       0.0, 0.0, 0.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage_field_eng_max[3] = {
#       255.0, 255.0, 255.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage_field_scale[3] = {
#       1.0, 1.0, 1.0, };
# 
#     static const F32 pcx_CANdb_TransmitMessage_field_offset[3] = {
#       0.0, 0.0, 0.0, };
# 
#     if (pcx_CANdb_TransmitMessage_msg_handle != PCX_CONFIG_ERROR) {
	.d2line		1134
.Llo336:
	lha		r0,pcx_CANdb_TransmitMessage_msg_handle@sdarx(r0)
	e_cmph16i	r0,-1
	bc		1,2,.L3940	# eq
#       pcx_CANdb_TransmitMessage_in_port_buffer[0] = atv_state_out;
	.d2line		1135
	lbz		r4,atv_state_out@sdarx(r0)
	.d2line		1139
	diab.addi		r0,r1,104
	.d2line		1138
	lbz		r3,atv_sub_state_out@sdarx(r0)		# rtb_Gain=r3
#       pcx_CANdb_TransmitMessage_in_port_ptr[0] =
	.d2line		1136
.Llo337:
	diab.addi		r5,r1,100
	efscfui		r4,r4
#         &pcx_CANdb_TransmitMessage_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage_in_port_buffer[1] = atv_sub_state_out;
	stw		r0,116(r1)
	stw		r5,112(r1)
	.d2line		1144
	lis		r6,pcx_CANdb_TransmitMessage_field_width.3932@ha
#       pcx_CANdb_TransmitMessage_in_port_ptr[1] =
	efscfui		r3,r3		# rtb_Gain=r3 rtb_Gain=r3
	.d2line		1135
	stw		r4,100(r1)
#         &pcx_CANdb_TransmitMessage_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage_in_port_buffer[2] = 0.0;
	.d2line		1141
	diab.li		r0,0
	lis		r7,pcx_CANdb_TransmitMessage_field_is_signed.3933@ha
#       pcx_CANdb_TransmitMessage_in_port_ptr[2] =
	.d2line		1138
	stw		r3,104(r1)		# rtb_Gain=r3
	.d2line		1142
	diab.addi		r4,r1,108
	stw		r4,120(r1)
#         &pcx_CANdb_TransmitMessage_in_port_buffer[2];
#       pcx_vdb_pack_msg((const F32 * const *)
	.d2line		1144
	lis		r8,pcx_CANdb_TransmitMessage_field_valtype.3934@ha
	lis		r3,pcx_CANdb_TransmitMessage_field_eng_max.3937@ha		# rtb_Gain=r3
	stw		r0,20(r1)
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage_field_eng_max.3937@l		# rtb_Gain=r3 rtb_Gain=r3
	stw		r0,108(r1)
	stw		r3,8(r1)		# rtb_Gain=r3
	lis		r9,pcx_CANdb_TransmitMessage_field_order.3935@ha
	lis		r10,pcx_CANdb_TransmitMessage_field_eng_min.3936@ha
	lis		r5,pcx_CANdb_TransmitMessage_field_start_pos.3931@ha
	lis		r3,pcx_CANdb_TransmitMessage_field_scale.3938@ha		# rtb_Gain=r3
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage_field_width.3932@l
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage_field_scale.3938@l		# rtb_Gain=r3 rtb_Gain=r3
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage_field_is_signed.3933@l
	stw		r3,12(r1)		# rtb_Gain=r3
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage_field_valtype.3934@l
	diab.addi		r4,r1,60
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage_field_order.3935@l
	lis		r3,pcx_CANdb_TransmitMessage_field_offset.3939@ha		# rtb_Gain=r3
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage_field_eng_min.3936@l
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage_field_offset.3939@l		# rtb_Gain=r3 rtb_Gain=r3
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage_field_start_pos.3931@l
	stw		r3,16(r1)		# rtb_Gain=r3
	diab.li		r3,1		# rtb_Gain=r3
	stw		r3,24(r1)		# rtb_Gain=r3
	diab.li		r3,3		# rtb_Gain=r3
	stw		r3,28(r1)		# rtb_Gain=r3
	diab.addi		r3,r1,112		# rtb_Gain=r3
.Llo338:
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
#                        pcx_CANdb_TransmitMessage_field_offset, 0, 1, 3);
# 
#       /* Do a transmit every time we are called, (CT2) */
#       retval = pcx_transmit(pcx_CANdb_TransmitMessage_msg_handle, data);
	.d2line		1157
	lha		r3,pcx_CANdb_TransmitMessage_msg_handle@sdarx(r0)		# rtb_Gain=r3
	diab.addi		r4,r1,60
	bl		pcx_transmit
.Llo440:
	b		.L3941
.L3940:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		1160
.Llo441:
	diab.li		r3,0		# retval=r3
.L3941:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage = !retval;
	.d2line		1163
.Llo442:
	rlwinm		r0,r3,0,24,31		# retval=r3
	cntlzw		r0,r0
	diab.srwi		r0,5
	stb		r0,102(r27)
	.section	.text_vle
.L4718:
#   }
# 
#   /* RateTransition: '<S1>/Rate Transition4' */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		1167
.Llo443:
	lwz		r3,0(r28)		# retval=r3
.Llo444:
	lbz		r0,431(r3)		# retval=r3
	se_cmpi		r0,0
	bc		1,2,.L3942	# eq
#     ATV_B.RateTransition4_b = ATV_B.hvm_ctrl_out;
	.d2line		1171
.Llo445:
	lbz		r0,142(r27)
	.d2line		1168
	lbz		r3,143(r27)		# retval=r3
# 
#     /* RateTransition: '<S1>/Rate Transition' */
#     ATV_B.RateTransition = ATV_B.hvp_ctrl_out;
.Llo446:
	stb		r0,104(r27)
	stb		r3,103(r27)		# retval=r3
# 
#     /* RateTransition: '<S1>/Rate Transition1' */
#     ATV_B.RateTransition1 = ATV_B.chg_ctrl_out;
	.d2line		1177
	lbz		r0,145(r27)
	.d2line		1174
	lbz		r3,144(r27)		# retval=r3
# 
#     /* RateTransition: '<S1>/Rate Transition2' */
#     ATV_B.RateTransition2 = ATV_B.heater_ctrl_out;
	stb		r0,106(r27)
	stb		r3,105(r27)		# retval=r3
.L3942:
	.d2line		1177
.Llo447:
	lbz		r26,146(r27)		# rtb_Add=r26
.Llo419:
	diab.li		r5,0
	diab.li		r25,3		# rtb_Add=r25
	.d2line		1206
	diab.addi		r4,r1,48
# 4284
	e_andi.		r0,r26,255		# rtb_Add=r26
#   }
# 
#   /* End of RateTransition: '<S1>/Rate Transition4' */
# 
#   /* Switch: '<S50>/Switch7' incorporates:
#    *  Constant: '<S50>/Constant10'
#    *  Constant: '<S50>/Constant9'
#    *  Logic: '<S50>/Logical Operator6'
#    */
#   if (!ATV_B.en_inv_rear_out) {
#     rtb_Add = 3;
#   } else {
#     rtb_Add = 0;
#   }
# 
#   /* End of Switch: '<S50>/Switch7' */
# 
#   /* Sum: '<S50>/Add' incorporates:
#    *  Logic: '<S50>/Logical Operator2'
#    */
#   rtb_Add += ATV_B.en_inv_rear_out;
	diab.li		r3,26		# retval=r3
# 
#   /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput3' */
#   /* S-Function Block: <S6>/pai_BasicAnalogInput3
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XD3, &adc, FALSE);
	isel		r25,r25,r5,2		# rtb_Add=r25 rtb_Add=r25
	.d2line		1207
	e_lis		r24,16544
	bl		pax_adc_input
#     atv_xd3_raw_ain = (adc * 5.0) / 4096.0;
	.d2line		1198
	se_add		r25,r26		# rtb_Add=r25 rtb_Add=r25 rtb_Add=r26
	lha		r3,48(r1)		# retval=r3
	.d2line		1211
.Llo448:
	e_lis		r0,16448
	efscfsi		r3,r3		# retval=r3 retval=r3
	efsmul		r3,r3,r24		# retval=r3 retval=r3
	efsmul		r3,r3,r30		# retval=r3 retval=r3
#   }
# 
#   /* Relay: '<S6>/Relay' */
#   if (atv_xd3_raw_ain >= 3.0) {
	stw		r3,atv_xd3_raw_ain@sdarx(r0)		# retval=r3
	efscmplt		1,r3,r0		# retval=r3
	bc		1,5,.L3946		# lt
#     ATV_DW.Relay_Mode = true;
	.d2line		1212
.Llo420:
	diab.li		r0,1
.Llo421:
	stb		r0,32(r29)
	b		.L3947
.L3946:
#   } else {
#     if (atv_xd3_raw_ain <= 2.0) {
	.d2line		1214
	diab.li		r0,1073741824
	efscmpgt		1,r3,r0		# retval=r3
	bc		1,5,.L3947		# gt
#       ATV_DW.Relay_Mode = false;
	.d2line		1215
.Llo449:
	diab.li		r0,0
	stb		r0,32(r29)
.L3947:
#     }
#   }
# 
#   atv_fs1_in = ATV_DW.Relay_Mode;
	.d2line		1219
	lbz		r0,32(r29)
	.d2line		1229
	diab.addi		r4,r1,50
# 
#   /* End of Relay: '<S6>/Relay' */
# 
#   /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput1' */
#   /* S-Function Block: <S6>/pai_BasicAnalogInput1
#    * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   {
#     int16_T adc;
#     (void) pax_adc_input(PIO_AIN_XA1, &adc, FALSE);
	diab.li		r3,12		# retval=r3
	diab.li		r5,0
	stb		r0,atv_fs1_in@sdarx(r0)
	.d2line		1241
	e_lis		r26,16102		# rtb_Add=r26
	e_or2i		r26,26214		# rtb_Add=r26
#     atv_xa1_ain_throttle_raw = (adc * 5.0) / 4096.0;
	bl		pax_adc_input
	.d2line		1230
	lha		r0,50(r1)
	efscfsi		r0,r0
	efsmul		r0,r0,r24
	efsmul		r3,r0,r30		# retval=r3
#   }
# 
#   /* Switch: '<S12>/Switch' incorporates:
#    *  Constant: '<S12>/Constant'
#    *  Constant: '<S13>/Lower Limit'
#    *  Constant: '<S13>/Upper Limit'
#    *  Logic: '<S13>/AND'
#    *  RelationalOperator: '<S13>/Lower Test'
#    *  RelationalOperator: '<S13>/Upper Test'
#    */
#   if ((0.45 <= atv_xa1_ain_throttle_raw) && (atv_xa1_ain_throttle_raw <= 4.55))
.Llo339:
	stw		r3,atv_xa1_ain_throttle_raw@sdarx(r0)		# retval=r3
	efscmpgt		1,r26,r3		# rtb_Add=r26 retval=r3
	bc		1,5,.L3954		# gt
	.d2line		1241
	e_lis		r0,16529
	e_or2i		r0,39322
	efscmpgt		1,r3,r0		# retval=r3
	bc		1,5,.L3954		# gt
	e_lis		r0,16528
#   {
#     /* Saturate: '<S12>/Saturation' */
#     if (atv_xa1_ain_throttle_raw > 4.5) {
	.d2line		1244
	efscmpgt		1,r3,r0		# retval=r3
	bc		0,5,.L3950		# le
#       rtb_Gain = 4.5;
	.d2line		1245
	mr		r3,r0		# rtb_Gain=r3 rtb_Gain=r0
	b		.L3951
.L3950:
#     } else if (atv_xa1_ain_throttle_raw < 0.5) {
	.d2line		1246
	e_lis		r0,16128
	efscmplt		1,r3,r0		# retval=r3
	bc		0,5,.L3948		# ge
#       rtb_Gain = 0.5;
	.d2line		1247
	mr		r3,r0		# rtb_Gain=r3 rtb_Gain=r0
	b		.L3951
.L3948:
#     } else {
#       rtb_Gain = atv_xa1_ain_throttle_raw;
.L3951:
#     }
# 
#     /* End of Saturate: '<S12>/Saturation' */
# 
#     /* Gain: '<S12>/Gain' incorporates:
#      *  Constant: '<S12>/Constant1'
#      *  Sum: '<S12>/Add'
#      */
#     rtb_Gain = floor((rtb_Gain - 0.5) * 250.0);
	.d2line		1258
.Llo340:
	e_lis		r4,16128
	e_lis		r0,17274
.Llo341:
	efssub		r3,r3,r4		# rtb_Gain=r3 rtb_Gain=r3
.Llo450:
	efsmul		r3,r3,r0		# rtb_Gain=r3 rtb_Gain=r3
.Llo342:
	bl		_f_ftod
	bl		floor
	bl		_d_dtof
.Llo355:
	mr		r26,r3		# rtb_Gain=r26 rtb_Gain=r3
#     if (rtIsNaN(rtb_Gain)) {
	.d2line		1259
	bl		rtIsNaN
.Llo343:
	e_andi.		r3,r3,255		# rtb_Gain=r3 rtb_Gain=r3
.Llo344:
	bc		1,2,.L3952	# eq
#       atv_throttleX1000 = 0U;
	.d2line		1260
.Llo356:
	diab.li		r0,0
	sth		r0,atv_throttleX1000@sdarx(r0)
	b		.L3955
.L3952:
#     } else {
#       atv_throttleX1000 = (uint16_T)fmod(rtb_Gain, 65536.0);
	.d2line		1262
	mr		r3,r26		# rtb_Gain=r3 rtb_Gain=r26
	bl		_f_ftod
	e_lis		r5,16624
	diab.li		r6,0
	bl		fmod
	bl		_d_dtou
.Llo345:
	sth		r3,atv_throttleX1000@sdarx(r0)		# rtb_Gain=r3
	b		.L3955
.L3954:
#     }
# 
#     /* End of Gain: '<S12>/Gain' */
#   } else {
#     atv_throttleX1000 = 0U;
	.d2line		1267
.Llo357:
	diab.li		r0,0
	sth		r0,atv_throttleX1000@sdarx(r0)
.L3955:
#   }
# 
#   /* End of Switch: '<S12>/Switch' */
# 
#   /* Outputs for Atomic SubSystem: '<S29>/DBW + REG_BRAKE FORWARD' */
#   /* Constant: '<S8>/atvc_mtadd' incorporates:
#    *  Constant: '<S8>/atvc_mtawnb'
#    */
#   ATV_DBWREG_BRAKEFORWARD(atv_fs1_in, atv_throttleX1000,
	.d2line		1276
.Llo346:
	lbz		r3,atv_fs1_in@sdarx(r0)		# rtb_Gain=r3
	diab.addi		r5,r27,150
	lhz		r4,atv_throttleX1000@sdarx(r0)
	bl		ATV_DBWREG_BRAKEFORWARD
#     &ATV_B.DBWREG_BRAKEFORWARD_d);
# 
#   /* End of Outputs for SubSystem: '<S29>/DBW + REG_BRAKE FORWARD' */
# 
#   /* Outputs for Atomic SubSystem: '<S29>/DBW REVERSE' */
#   ATV_DBWREVERSE(atv_fs1_in, atv_throttleX1000, &ATV_B.DBWREVERSE_b);
	.d2line		1282
	lbz		r3,atv_fs1_in@sdarx(r0)		# rtb_Gain=r3
	diab.addi		r5,r27,154
	lhz		r4,atv_throttleX1000@sdarx(r0)
	bl		ATV_DBWREVERSE
# 
#   /* End of Outputs for SubSystem: '<S29>/DBW REVERSE' */
# 
#   /* MultiPortSwitch: '<S29>/Multiport Switch3' incorporates:
#    *  Constant: '<S29>/Constant4'
#    */
#   switch (rtb_Add) {
	.d2line		1289
	se_cmpi		r25,1		# rtb_Add=r25
	bc		1,2,.L3957	# eq
	se_cmpi		r25,2		# rtb_Add=r25
	bc		1,2,.L3958	# eq
.Llo422:
	b		.L3959
.L3957:
#    case 1:
#     ATV_B.MultiportSwitch3 = ATV_B.DBWREG_BRAKEFORWARD_d.Switch2;
	.d2line		1294
.Llo423:
	lhz		r0,150(r27)
	.d2line		1291
	lhz		r3,152(r27)		# rtb_Gain=r3
# 
#     /* MultiPortSwitch: '<S29>/Multiport Switch1' */
#     ATV_B.MultiportSwitch1 = ATV_B.DBWREG_BRAKEFORWARD_d.Switch;
.Llo347:
	sth		r0,78(r27)
	sth		r3,76(r27)		# rtb_Gain=r3
	.d2line		1295
	b		.L3956
.L3958:
#     break;
# 
#    case 2:
#     ATV_B.MultiportSwitch3 = ATV_ConstB.DBWREVERSE_b.Constant2;
	.d2line		1298
.Llo348:
	lis		r3,(ATV_ConstB+20)@ha		# rtb_Gain=r3
	.d2line		1301
.Llo349:
	lhz		r0,154(r27)
	lhz		r3,(ATV_ConstB+20)@l(r3)		# rtb_Gain=r3 rtb_Gain=r3
# 
#     /* MultiPortSwitch: '<S29>/Multiport Switch1' */
#     ATV_B.MultiportSwitch1 = ATV_B.DBWREVERSE_b.Cast;
	sth		r3,76(r27)		# rtb_Gain=r3
	sth		r0,78(r27)
	.d2line		1302
	b		.L3956
.L3959:
#     break;
# 
#    default:
#     ATV_B.MultiportSwitch3 = 0U;
	.d2line		1305
.Llo350:
	diab.li		r0,0
	stw		r0,76(r27)
.L3956:
	.section	.text_vle
.L4759:
# 
#     /* MultiPortSwitch: '<S29>/Multiport Switch1' incorporates:
#      *  Constant: '<S29>/Constant2'
#      *  Constant: '<S29>/Constant4'
#      */
#     ATV_B.MultiportSwitch1 = 0U;
#     break;
#   }
# 
#   /* End of MultiPortSwitch: '<S29>/Multiport Switch3' */
# 
#   /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage2' incorporates:
#    *  Constant: '<S29>/Constant5'
#    *  Constant: '<S29>/Constant6'
#    */
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
	.d2line		1356
	lha		r0,pcx_CANdb_TransmitMessage2_msg_handle@sdarx(r0)
	e_cmph16i	r0,-1
	bc		1,2,.L3969	# eq
#       pcx_CANdb_TransmitMessage2_in_port_buffer[0] = ATV_B.MultiportSwitch3;
	.d2line		1357
	lhz		r4,76(r27)
	.d2line		1358
	diab.addi		r3,r1,124		# rtb_Gain=r3
	.d2line		1369
.Llo351:
	lis		r8,pcx_CANdb_TransmitMessage2_field_eng_max.3966@ha
#       pcx_CANdb_TransmitMessage2_in_port_ptr[0] =
	diab.li		r5,0
	stw		r3,156(r1)		# rtb_Gain=r3
#         &pcx_CANdb_TransmitMessage2_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage2_in_port_buffer[1] = ATV_B.MultiportSwitch1;
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage2_field_eng_max.3966@l
	diab.li		r6,1
	diab.li		r7,4
#       pcx_CANdb_TransmitMessage2_in_port_ptr[1] =
	efscfui		r3,r4		# rtb_Gain=r3
	.d2line		1361
	diab.addi		r24,r1,128
	e_lis		r0,17530
	.d2line		1364
	diab.addi		r25,r1,132		# rtb_Add=r25
	.d2line		1357
.Llo424:
	stw		r3,124(r1)		# rtb_Gain=r3
#         &pcx_CANdb_TransmitMessage2_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage2_in_port_buffer[2] = ((uint16_T)1000U);
	lis		r4,pcx_CANdb_TransmitMessage2_field_offset.3968@ha
	e_add16i		r4,r4,pcx_CANdb_TransmitMessage2_field_offset.3968@l
#       pcx_CANdb_TransmitMessage2_in_port_ptr[2] =
	.d2line		1367
	diab.addi		r26,r1,136		# rtb_Gain=r26
	.d2line		1360
	lhz		r9,78(r27)
#         &pcx_CANdb_TransmitMessage2_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage2_in_port_buffer[3] = ((uint16_T)1000U);
	.d2line		1369
	lis		r3,pcx_CANdb_TransmitMessage2_field_scale.3967@ha		# rtb_Gain=r3
#       pcx_CANdb_TransmitMessage2_in_port_ptr[3] =
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage2_field_scale.3967@l		# rtb_Gain=r3 rtb_Gain=r3
	lis		r10,pcx_CANdb_TransmitMessage2_field_eng_min.3965@ha
#         &pcx_CANdb_TransmitMessage2_in_port_buffer[3];
#       pcx_vdb_pack_msg((const F32 * const *)
	stw		r8,8(r1)
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage2_field_eng_min.3965@l
	stw		r5,20(r1)
	efscfui		r8,r9
	stw		r6,24(r1)
	stw		r7,28(r1)
	lis		r5,pcx_CANdb_TransmitMessage2_field_start_pos.3960@ha
	stw		r8,128(r1)
	lis		r9,pcx_CANdb_TransmitMessage2_field_order.3964@ha
	stw		r3,12(r1)		# rtb_Gain=r3
	lis		r6,pcx_CANdb_TransmitMessage2_field_width.3961@ha
	stw		r4,16(r1)
	lis		r7,pcx_CANdb_TransmitMessage2_field_is_signed.3962@ha
	.d2line		1363
	stw		r0,132(r1)
	lis		r8,pcx_CANdb_TransmitMessage2_field_valtype.3963@ha
	.d2line		1366
	stw		r0,136(r1)
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage2_field_start_pos.3960@l
	.d2line		1361
	stw		r24,160(r1)
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage2_field_order.3964@l
	.d2line		1364
	stw		r25,164(r1)		# rtb_Add=r25
	.d2line		1369
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage2_field_width.3961@l
	.d2line		1367
	stw		r26,168(r1)		# rtb_Gain=r26
	diab.addi		r3,r1,156		# rtb_Gain=r3
.Llo352:
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage2_field_is_signed.3962@l
	diab.addi		r4,r1,68
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage2_field_valtype.3963@l
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
	.d2line		1382
	lha		r3,pcx_CANdb_TransmitMessage2_msg_handle@sdarx(r0)		# rtb_Gain=r3
	diab.addi		r4,r1,68
	bl		pcx_transmit
.Llo451:
	b		.L3970
.L3969:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		1385
.Llo425:
	diab.li		r3,0		# retval=r3
.L3970:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage2 = !retval;
	.d2line		1388
.Llo452:
	rlwinm		r0,r3,0,24,31		# retval=r3
	cntlzw		r0,r0
	diab.srwi		r0,5
	stb		r0,108(r27)
	.section	.text_vle
.L4760:
#   }
# 
#   /* Logic: '<S29>/Logical Operator' */
#   ATV_B.LogicalOperator = !atv_fs1_in;
	.d2line		1392
.Llo453:
	lbz		r3,atv_fs1_in@sdarx(r0)		# retval=r3
.Llo454:
	cntlzw		r3,r3		# retval=r3 retval=r3
	diab.srwi		r3,5		# retval=r3
	stb		r3,109(r27)		# retval=r3
	.section	.text_vle
.L4799:
# 
#   /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage3' incorporates:
#    *  Constant: '<S1>/Constant'
#    *  Constant: '<S1>/Constant1'
#    *  Constant: '<S8>/fwd'
#    *  Constant: '<S8>/rwd'
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
	.d2line		1439
	lha		r0,pcx_CANdb_TransmitMessage3_msg_handle@sdarx(r0)
	e_cmph16i	r0,-1
	bc		1,2,.L3980	# eq
#       pcx_CANdb_TransmitMessage3_in_port_buffer[0] = ATV_B.LogicalOperator;
	.d2line		1440
	rlwinm		r3,r3,0,24,31		# retval=r3 retval=r3
	.d2line		1441
	diab.addi		r0,r1,188
	efscfui		r3,r3		# retval=r3 retval=r3
#       pcx_CANdb_TransmitMessage3_in_port_ptr[0] =
	stw		r0,228(r1)
	.d2line		1444
	diab.addi		r5,r1,192
#         &pcx_CANdb_TransmitMessage3_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage3_in_port_buffer[1] = false;
	.d2line		1443
	diab.li		r6,0
	stw		r3,188(r1)		# retval=r3
#       pcx_CANdb_TransmitMessage3_in_port_ptr[1] =
	.d2line		1446
	e_lis		r0,16256
	stw		r5,232(r1)
#         &pcx_CANdb_TransmitMessage3_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage3_in_port_buffer[2] = true;
	.d2line		1450
	diab.addi		r4,r1,200
	.d2line		1447
	diab.addi		r3,r1,196		# retval=r3
#       pcx_CANdb_TransmitMessage3_in_port_ptr[2] =
	stw		r0,196(r1)
	stw		r3,236(r1)		# retval=r3
	.d2line		1453
	diab.addi		r5,r1,204
#         &pcx_CANdb_TransmitMessage3_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage3_in_port_buffer[3] = ((uint16_T)30U);
	.d2line		1455
	stw		r6,20(r1)
#       pcx_CANdb_TransmitMessage3_in_port_ptr[3] =
	e_lis		r0,16880
	lis		r3,pcx_CANdb_TransmitMessage3_field_eng_max.3977@ha		# retval=r3
#         &pcx_CANdb_TransmitMessage3_in_port_buffer[3];
#       pcx_CANdb_TransmitMessage3_in_port_buffer[4] = ((uint16_T)30U);
	.d2line		1443
	stw		r6,192(r1)
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage3_field_eng_max.3977@l		# retval=r3 retval=r3
#       pcx_CANdb_TransmitMessage3_in_port_ptr[4] =
	stw		r5,244(r1)
	stw		r3,8(r1)		# retval=r3
	lis		r7,pcx_CANdb_TransmitMessage3_field_is_signed.3973@ha
#         &pcx_CANdb_TransmitMessage3_in_port_buffer[4];
#       pcx_vdb_pack_msg((const F32 * const *)
	.d2line		1450
	stw		r4,240(r1)
	lis		r8,pcx_CANdb_TransmitMessage3_field_valtype.3974@ha
	lis		r3,pcx_CANdb_TransmitMessage3_field_scale.3978@ha		# retval=r3
	.d2line		1449
	stw		r0,200(r1)
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage3_field_scale.3978@l		# retval=r3 retval=r3
	.d2line		1452
	stw		r0,204(r1)
	.d2line		1455
	stw		r3,12(r1)		# retval=r3
	lis		r9,pcx_CANdb_TransmitMessage3_field_order.3975@ha
	lis		r10,pcx_CANdb_TransmitMessage3_field_eng_min.3976@ha
	lis		r6,pcx_CANdb_TransmitMessage3_field_width.3972@ha
	lis		r3,pcx_CANdb_TransmitMessage3_field_offset.3979@ha		# retval=r3
	lis		r5,pcx_CANdb_TransmitMessage3_field_start_pos.3971@ha
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage3_field_offset.3979@l		# retval=r3 retval=r3
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage3_field_is_signed.3973@l
	stw		r3,16(r1)		# retval=r3
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage3_field_valtype.3974@l
	diab.addi		r4,r1,76
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage3_field_order.3975@l
	diab.li		r3,1		# retval=r3
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage3_field_eng_min.3976@l
	stw		r3,24(r1)		# retval=r3
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage3_field_width.3972@l
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage3_field_start_pos.3971@l
	diab.li		r3,5		# retval=r3
	stw		r3,28(r1)		# retval=r3
	diab.addi		r3,r1,228		# retval=r3
.Llo455:
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
	.d2line		1468
	lha		r3,pcx_CANdb_TransmitMessage3_msg_handle@sdarx(r0)		# retval=r3
	diab.addi		r4,r1,76
	bl		pcx_transmit
.Llo456:
	b		.L3981
.L3980:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		1471
.Llo457:
	diab.li		r3,0		# retval=r3
.L3981:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage3 = !retval;
	.d2line		1474
.Llo458:
	rlwinm		r0,r3,0,24,31		# retval=r3
	cntlzw		r0,r0
	diab.srwi		r0,5
	stb		r0,110(r27)
	.section	.text_vle
.L4800:
.Llo459:
	lbz		r25,147(r27)		# rtb_Add=r25
.Llo394:
	diab.li		r0,0
	.d2line		1499
	lbz		r3,atv_fs1_in@sdarx(r0)		# retval=r3
	.d2line		1474
	diab.li		r26,3		# rtb_Gain=r26
# 4284
.Llo353:
	lhz		r4,atv_throttleX1000@sdarx(r0)
#   }
# 
#   /* Switch: '<S37>/Switch7' incorporates:
#    *  Constant: '<S37>/Constant10'
#    *  Constant: '<S37>/Constant9'
#    *  Logic: '<S37>/Logical Operator6'
#    */
#   if (!ATV_B.en_inv_front_out) {
#     rtb_Add = 3;
#   } else {
#     rtb_Add = 0;
#   }
# 
#   /* End of Switch: '<S37>/Switch7' */
# 
#   /* Sum: '<S37>/Add' incorporates:
#    *  Logic: '<S37>/Logical Operator2'
#    */
#   rtb_Add += ATV_B.en_inv_front_out;
	e_andi.		r5,r25,255		# rtb_Add=r25
# 
#   /* Outputs for Atomic SubSystem: '<S28>/DBW + REG_BRAKE FORWARD' */
#   /* Constant: '<S8>/atvc_mtadd' incorporates:
#    *  Constant: '<S8>/atvc_mtawnb'
#    */
#   ATV_DBWREG_BRAKEFORWARD(atv_fs1_in, atv_throttleX1000,
	diab.addi		r5,r27,156
	isel		r26,r26,r0,2		# rtb_Add=r26 rtb_Gain=r26
.Llo354:
	bl		ATV_DBWREG_BRAKEFORWARD
	.d2line		1493
	se_add		r26,r25		# rtb_Add=r26 rtb_Add=r26 rtb_Add=r25
#     &ATV_B.DBWREG_BRAKEFORWARD);
# 
#   /* End of Outputs for SubSystem: '<S28>/DBW + REG_BRAKE FORWARD' */
# 
#   /* Outputs for Atomic SubSystem: '<S28>/DBW REVERSE' */
#   ATV_DBWREVERSE(atv_fs1_in, atv_throttleX1000, &ATV_B.DBWREVERSE);
	.d2line		1505
	lbz		r3,atv_fs1_in@sdarx(r0)		# retval=r3
	diab.addi		r5,r27,160
	lhz		r4,atv_throttleX1000@sdarx(r0)
	bl		ATV_DBWREVERSE
# 
#   /* End of Outputs for SubSystem: '<S28>/DBW REVERSE' */
# 
#   /* MultiPortSwitch: '<S28>/Multiport Switch3' incorporates:
#    *  Constant: '<S28>/Constant4'
#    */
#   switch (rtb_Add) {
	.d2line		1512
	se_cmpi		r26,1		# rtb_Add=r26
	bc		1,2,.L3985	# eq
.Llo395:
	se_cmpi		r26,2		# rtb_Add=r26
.Llo396:
	bc		1,2,.L3986	# eq
.Llo397:
	b		.L3987
.L3985:
#    case 1:
#     ATV_B.MultiportSwitch3_n = ATV_B.DBWREG_BRAKEFORWARD.Switch2;
	.d2line		1517
.Llo398:
	lhz		r0,156(r27)
	.d2line		1514
	lhz		r3,158(r27)		# retval=r3
# 
#     /* MultiPortSwitch: '<S28>/Multiport Switch1' */
#     ATV_B.MultiportSwitch1_h = ATV_B.DBWREG_BRAKEFORWARD.Switch;
.Llo460:
	sth		r0,82(r27)
	sth		r3,80(r27)		# retval=r3
	.d2line		1518
	b		.L3984
.L3986:
#     break;
# 
#    case 2:
#     ATV_B.MultiportSwitch3_n = 0U;
	.d2line		1524
.Llo399:
	lhz		r0,160(r27)
	.d2line		1521
	diab.li		r3,0		# retval=r3
# 
#     /* MultiPortSwitch: '<S28>/Multiport Switch1' */
#     ATV_B.MultiportSwitch1_h = ATV_B.DBWREVERSE.Cast;
.Llo461:
	sth		r3,80(r27)		# retval=r3
	sth		r0,82(r27)
	.d2line		1525
	b		.L3984
.L3987:
#     break;
# 
#    default:
#     ATV_B.MultiportSwitch3_n = 0U;
	.d2line		1528
.Llo462:
	diab.li		r0,0
	stw		r0,80(r27)
.L3984:
	.section	.text_vle
.L4839:
# 
#     /* MultiPortSwitch: '<S28>/Multiport Switch1' incorporates:
#      *  Constant: '<S28>/Constant2'
#      *  Constant: '<S28>/Constant4'
#      */
#     ATV_B.MultiportSwitch1_h = 0U;
#     break;
#   }
# 
#   /* End of MultiPortSwitch: '<S28>/Multiport Switch3' */
# 
#   /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage4' incorporates:
#    *  Constant: '<S28>/Constant5'
#    *  Constant: '<S28>/Constant6'
#    */
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
	.d2line		1579
	lha		r0,pcx_CANdb_TransmitMessage4_msg_handle@sdarx(r0)
	e_cmph16i	r0,-1
	bc		1,2,.L3997	# eq
#       pcx_CANdb_TransmitMessage4_in_port_buffer[0] = ATV_B.MultiportSwitch3_n;
	.d2line		1580
	lhz		r4,80(r27)
	.d2line		1581
	diab.addi		r3,r1,140		# retval=r3
	.d2line		1592
.Llo463:
	lis		r8,pcx_CANdb_TransmitMessage4_field_eng_max.3994@ha
#       pcx_CANdb_TransmitMessage4_in_port_ptr[0] =
	diab.li		r5,0
	stw		r3,172(r1)		# retval=r3
#         &pcx_CANdb_TransmitMessage4_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage4_in_port_buffer[1] = ATV_B.MultiportSwitch1_h;
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage4_field_eng_max.3994@l
	diab.li		r6,1
	diab.li		r7,4
#       pcx_CANdb_TransmitMessage4_in_port_ptr[1] =
	efscfui		r3,r4		# retval=r3
	.d2line		1584
	diab.addi		r24,r1,144
	e_lis		r0,17530
	.d2line		1587
	diab.addi		r25,r1,148		# rtb_Add=r25
	.d2line		1580
.Llo400:
	stw		r3,140(r1)		# retval=r3
#         &pcx_CANdb_TransmitMessage4_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage4_in_port_buffer[2] = ((uint16_T)1000U);
	lis		r4,pcx_CANdb_TransmitMessage4_field_offset.3996@ha
	e_add16i		r4,r4,pcx_CANdb_TransmitMessage4_field_offset.3996@l
#       pcx_CANdb_TransmitMessage4_in_port_ptr[2] =
	.d2line		1590
	diab.addi		r26,r1,152		# rtb_Add=r26
	.d2line		1583
	lhz		r9,82(r27)
#         &pcx_CANdb_TransmitMessage4_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage4_in_port_buffer[3] = ((uint16_T)1000U);
	.d2line		1592
	lis		r3,pcx_CANdb_TransmitMessage4_field_scale.3995@ha		# retval=r3
#       pcx_CANdb_TransmitMessage4_in_port_ptr[3] =
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage4_field_scale.3995@l		# retval=r3 retval=r3
	lis		r10,pcx_CANdb_TransmitMessage4_field_eng_min.3993@ha
#         &pcx_CANdb_TransmitMessage4_in_port_buffer[3];
#       pcx_vdb_pack_msg((const F32 * const *)
	stw		r8,8(r1)
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage4_field_eng_min.3993@l
	stw		r5,20(r1)
	efscfui		r8,r9
	stw		r6,24(r1)
	stw		r7,28(r1)
	lis		r5,pcx_CANdb_TransmitMessage4_field_start_pos.3988@ha
	stw		r8,144(r1)
	lis		r9,pcx_CANdb_TransmitMessage4_field_order.3992@ha
	stw		r3,12(r1)		# retval=r3
	lis		r6,pcx_CANdb_TransmitMessage4_field_width.3989@ha
	stw		r4,16(r1)
	lis		r7,pcx_CANdb_TransmitMessage4_field_is_signed.3990@ha
	.d2line		1586
	stw		r0,148(r1)
	lis		r8,pcx_CANdb_TransmitMessage4_field_valtype.3991@ha
	.d2line		1589
	stw		r0,152(r1)
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage4_field_start_pos.3988@l
	.d2line		1584
	stw		r24,176(r1)
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage4_field_order.3992@l
	.d2line		1587
	stw		r25,180(r1)		# rtb_Add=r25
	.d2line		1592
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage4_field_width.3989@l
	.d2line		1590
	stw		r26,184(r1)		# rtb_Add=r26
	diab.addi		r3,r1,172		# retval=r3
.Llo464:
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage4_field_is_signed.3990@l
	diab.addi		r4,r1,84
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage4_field_valtype.3991@l
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
	.d2line		1605
	lha		r3,pcx_CANdb_TransmitMessage4_msg_handle@sdarx(r0)		# retval=r3
	diab.addi		r4,r1,84
	bl		pcx_transmit
.Llo465:
	b		.L3998
.L3997:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		1608
.Llo401:
	diab.li		r3,0		# retval=r3
.L3998:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage4 = !retval;
	.d2line		1611
.Llo466:
	rlwinm		r0,r3,0,24,31		# retval=r3
	cntlzw		r0,r0
	diab.srwi		r0,5
	stb		r0,111(r27)
	.section	.text_vle
.L4840:
	.section	.text_vle
.L4879:
#   }
# 
#   /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage5' incorporates:
#    *  Constant: '<S1>/Constant'
#    *  Constant: '<S1>/Constant1'
#    *  Constant: '<S8>/fwd'
#    *  Constant: '<S8>/rwd'
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
	.d2line		1659
.Llo467:
	lha		r0,pcx_CANdb_TransmitMessage5_msg_handle@sdarx(r0)
	e_cmph16i	r0,-1
	bc		1,2,.L4008	# eq
#       pcx_CANdb_TransmitMessage5_in_port_buffer[0] = ATV_B.LogicalOperator;
	.d2line		1660
	lbz		r3,109(r27)		# retval=r3
	.d2line		1661
.Llo468:
	diab.addi		r0,r1,208
	.d2line		1664
	diab.addi		r5,r1,212
#       pcx_CANdb_TransmitMessage5_in_port_ptr[0] =
	.d2line		1663
	diab.li		r6,0
	efscfui		r3,r3		# retval=r3 retval=r3
#         &pcx_CANdb_TransmitMessage5_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage5_in_port_buffer[1] = false;
	stw		r0,248(r1)
	stw		r5,252(r1)
#       pcx_CANdb_TransmitMessage5_in_port_ptr[1] =
	.d2line		1670
	diab.addi		r4,r1,220
	.d2line		1660
	stw		r3,208(r1)		# retval=r3
#         &pcx_CANdb_TransmitMessage5_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage5_in_port_buffer[2] = true;
	.d2line		1666
	e_lis		r0,16256
	stw		r0,216(r1)
#       pcx_CANdb_TransmitMessage5_in_port_ptr[2] =
	.d2line		1673
	diab.addi		r5,r1,224
	.d2line		1667
	diab.addi		r3,r1,216		# retval=r3
	.d2line		1675
	stw		r6,20(r1)
#         &pcx_CANdb_TransmitMessage5_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage5_in_port_buffer[3] = ((uint16_T)30U);
	stw		r3,256(r1)		# retval=r3
#       pcx_CANdb_TransmitMessage5_in_port_ptr[3] =
	e_lis		r0,16880
	.d2line		1663
	stw		r6,212(r1)
#         &pcx_CANdb_TransmitMessage5_in_port_buffer[3];
#       pcx_CANdb_TransmitMessage5_in_port_buffer[4] = ((uint16_T)30U);
	lis		r7,pcx_CANdb_TransmitMessage5_field_is_signed.4001@ha
	lis		r3,pcx_CANdb_TransmitMessage5_field_eng_max.4005@ha		# retval=r3
#       pcx_CANdb_TransmitMessage5_in_port_ptr[4] =
	stw		r5,264(r1)
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage5_field_eng_max.4005@l		# retval=r3 retval=r3
	.d2line		1670
	stw		r4,260(r1)
#         &pcx_CANdb_TransmitMessage5_in_port_buffer[4];
#       pcx_vdb_pack_msg((const F32 * const *)
	stw		r3,8(r1)		# retval=r3
	lis		r8,pcx_CANdb_TransmitMessage5_field_valtype.4002@ha
	.d2line		1669
	stw		r0,220(r1)
	lis		r9,pcx_CANdb_TransmitMessage5_field_order.4003@ha
	lis		r3,pcx_CANdb_TransmitMessage5_field_scale.4006@ha		# retval=r3
	.d2line		1672
	stw		r0,224(r1)
	.d2line		1675
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage5_field_scale.4006@l		# retval=r3 retval=r3
	lis		r10,pcx_CANdb_TransmitMessage5_field_eng_min.4004@ha
	stw		r3,12(r1)		# retval=r3
	lis		r6,pcx_CANdb_TransmitMessage5_field_width.4000@ha
	lis		r5,pcx_CANdb_TransmitMessage5_field_start_pos.3999@ha
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage5_field_is_signed.4001@l
	lis		r3,pcx_CANdb_TransmitMessage5_field_offset.4007@ha		# retval=r3
	diab.addi		r4,r1,92
	e_add16i		r3,r3,pcx_CANdb_TransmitMessage5_field_offset.4007@l		# retval=r3 retval=r3
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage5_field_valtype.4002@l
	stw		r3,16(r1)		# retval=r3
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage5_field_order.4003@l
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage5_field_eng_min.4004@l
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage5_field_width.4000@l
	diab.li		r3,1		# retval=r3
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage5_field_start_pos.3999@l
	stw		r3,24(r1)		# retval=r3
	diab.li		r3,5		# retval=r3
	stw		r3,28(r1)		# retval=r3
	diab.addi		r3,r1,248		# retval=r3
.Llo469:
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
	.d2line		1688
	lha		r3,pcx_CANdb_TransmitMessage5_msg_handle@sdarx(r0)		# retval=r3
	diab.addi		r4,r1,92
	bl		pcx_transmit
.Llo470:
	b		.L4009
.L4008:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		1691
.Llo471:
	diab.li		r3,0		# retval=r3
.L4009:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage5 = !retval;
	.d2line		1694
.Llo472:
	rlwinm		r0,r3,0,24,31		# retval=r3
	cntlzw		r0,r0
	diab.srwi		r0,5
	stb		r0,112(r27)
	.section	.text_vle
.L4880:
.Llo473:
	lwz		r5,0(r28)
#   }
# 
#   /* RateTransition: '<Root>/Rate Transition6' incorporates:
#    *  RateTransition: '<Root>/Rate Transition10'
#    *  RateTransition: '<Root>/Rate Transition7'
#    *  RateTransition: '<Root>/Rate Transition8'
#    */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		1702
	lbz		r0,431(r5)
	se_cmpi		r0,0
	bc		1,2,.L4010	# eq
#     ATV_B.RateTransition6 = ATV_DW.RateTransition6_Buffer0;
	.d2line		1703
	lbz		r0,10(r29)
	stb		r0,84(r27)
#     ATV_B.RateTransition7 = ATV_DW.RateTransition7_Buffer0;
	.d2line		1704
	lbz		r0,11(r29)
	stb		r0,85(r27)
#     ATV_B.RateTransition10 = ATV_DW.RateTransition10_Buffer0;
	.d2line		1705
	lbz		r0,12(r29)
	stb		r0,86(r27)
#     ATV_B.RateTransition8 = ATV_DW.RateTransition8_Buffer0;
	.d2line		1706
	lbz		r0,13(r29)
	stb		r0,87(r27)
.L4010:
	lbz		r0,86(r27)
#   }
# 
#   /* End of RateTransition: '<Root>/Rate Transition6' */
# 
#   /* RelationalOperator: '<S27>/Relational Operator4' */
#   ATV_B.RelationalOperator4 = (ATV_B.RateTransition10 > 70);
	.d2line		1715
	lbz		r26,87(r27)		# rtb_Add=r26
	.d2line		1712
.Llo402:
	cmpi		0,0,r0,70
	mfcr		r3		# retval=r3
.Llo474:
	cmpi		0,0,r0,60
# 
#   /* RelationalOperator: '<S27>/Relational Operator5' */
#   ATV_B.RelationalOperator5 = (ATV_B.RateTransition10 < 60);
	rlwinm		r3,r3,2,31,31		# retval=r3 retval=r3
	mfcr		r0
	stb		r3,113(r27)		# retval=r3
	se_srwi		r0,31
	.d2line		1718
	cmpi		0,0,r26,70		# rtb_Add=r26
# 
#   /* RelationalOperator: '<S27>/Relational Operator6' */
#   RelationalOperator6 = (ATV_B.RateTransition8 > 70);
	stb		r0,114(r27)
	mfcr		r25		# rtb_Add=r25
.Llo436:
	rlwinm		r25,r25,2,31,31		# RelationalOperator6=r25 rtb_Add=r25
# 
#   /* RateTransition: '<Root>/Rate Transition9' incorporates:
#    *  RateTransition: '<Root>/Rate Transition11'
#    */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		1723
	lbz		r0,431(r5)
	se_cmpi		r0,0
	bc		1,2,.L4011	# eq
#     ATV_B.RateTransition9 = ATV_DW.RateTransition9_Buffer0;
	.d2line		1724
.Llo475:
	lbz		r0,14(r29)
	stb		r0,88(r27)
#     ATV_B.RateTransition11 = ATV_DW.RateTransition11_Buffer0;
	.d2line		1725
	lbz		r0,15(r29)
	stb		r0,89(r27)
.L4011:
	lbz		r7,88(r27)
#   }
# 
#   /* End of RateTransition: '<Root>/Rate Transition9' */
# 
#   /* RelationalOperator: '<S27>/Relational Operator8' */
#   RelationalOperator8 = (ATV_B.RateTransition9 > 40);
	.d2line		1731
	lhz		r3,8(r29)		# retval=r3
.Llo476:
	cmpi		0,0,r7,40
	mfcr		r24		# RelationalOperator8=r24
.Llo439:
	rlwinm		r24,r24,2,31,31		# RelationalOperator8=r24 RelationalOperator8=r24
# 
#   /* Chart: '<S31>/PUMP LOGIC' incorporates:
#    *  RelationalOperator: '<S27>/Relational Operator'
#    *  RelationalOperator: '<S27>/Relational Operator1'
#    *  RelationalOperator: '<S27>/Relational Operator2'
#    *  RelationalOperator: '<S27>/Relational Operator3'
#    *  RelationalOperator: '<S27>/Relational Operator7'
#    *  RelationalOperator: '<S27>/Relational Operator9'
#    */
#   if (ATV_DW.temporalCounter_i1 < 65535U) {
	.d2line		1741
	cmpli		0,0,r3,65535		# retval=r3
	bc		0,0,.L4012	# ge
#     ATV_DW.temporalCounter_i1++;
	.d2line		1742
	se_addi		r3,1		# retval=r3 retval=r3
	sth		r3,8(r29)		# retval=r3
.L4012:
#   }
# 
#   /* Gateway: loop_10ms/Cooling System1/GestioneImpiantoRaffreddamento/PUMP LOGIC */
#   /* During: loop_10ms/Cooling System1/GestioneImpiantoRaffreddamento/PUMP LOGIC */
#   if (ATV_DW.is_active_c6_ATV == 0U) {
	.d2line		1747
	lbz		r0,27(r29)
	se_cmpi		r0,0
	bc		0,2,.L4033	# ne
.Llo477:
	diab.li		r6,0		# rtb_Add=r6
#     /* Entry: loop_10ms/Cooling System1/GestioneImpiantoRaffreddamento/PUMP LOGIC */
#     ATV_DW.is_active_c6_ATV = 1U;
# 
#     /* Entry Internal: loop_10ms/Cooling System1/GestioneImpiantoRaffreddamento/PUMP LOGIC */
#     /* Entry 'PumpALogic': '<S33>:47' */
#     ATV_DW.PumpStA = 0.0;
	.d2line		1753
.Llo410:
	diab.li		r0,1
	stw		r6,4(r29)		# rtb_Add=r6
	.d2line		1749
	stb		r0,27(r29)
# 
#     /* Entry Internal 'PumpALogic': '<S33>:47' */
#     /* Transition: '<S33>:56' */
#     ATV_DW.is_PumpALogic = ATV_IN_Off;
	.d2line		1757
	stb		r0,28(r29)
# 
#     /* Switch: '<S31>/Switch' */
#     /* Entry 'Off': '<S33>:63' */
#     ATV_B.Switch = false;
	.d2line		1761
	stb		r6,115(r27)		# rtb_Add=r6
# 
#     /* Entry 'PumpBLogic': '<S33>:14' */
#     ATV_DW.PumpStB = 0.0;
	.d2line		1764
	stw		r6,0(r29)		# rtb_Add=r6
# 
#     /* Entry Internal 'PumpBLogic': '<S33>:14' */
#     /* Transition: '<S33>:27' */
#     ATV_DW.is_PumpBLogic = ATV_IN_Off;
#     ATV_DW.temporalCounter_i1 = 0U;
	.d2line		1769
	sth		r6,8(r29)		# rtb_Add=r6
	.d2line		1768
	stb		r0,29(r29)
# 
#     /* Entry 'Off': '<S33>:24' */
#     atv_dbg_pumpB_out = false;
	.d2line		1772
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)		# rtb_Add=r6
#     rtb_Add = 0;
	.d2line		1773
	b		.L4034
.L4033:
#   } else {
#     /* During 'PumpALogic': '<S33>:47' */
#     if (ATV_DW.is_PumpALogic == ATV_IN_Off) {
	.d2line		1776
.Llo411:
	lbz		r0,28(r29)
	se_cmpi		r0,1
	bc		0,2,.L4017	# ne
#       /* Switch: '<S31>/Switch' */
#       ATV_B.Switch = false;
	.d2line		1778
	diab.li		r0,0
	.d2line		1781
	e_lis		r3,16256		# retval=r3
# 
#       /* During 'Off': '<S33>:63' */
#       if (ATV_DW.PumpStA == 1.0) {
.Llo478:
	stb		r0,115(r27)
	lwz		r0,4(r29)
	efscmpeq		1,r0,r3		# retval=r3
	bc		0,5,.L4013		# ne
#         /* Transition: '<S33>:116' */
#         ATV_DW.is_PumpALogic = ATV_IN_Run;
	.d2line		1783
.Llo479:
	diab.li		r3,2		# retval=r3
	.d2line		1787
.Llo480:
	diab.li		r0,1
# 
#         /* Switch: '<S31>/Switch' */
#         /* Entry 'Run': '<S33>:54' */
#         ATV_B.Switch = true;
	stb		r3,28(r29)		# retval=r3
	stb		r0,115(r27)
	b		.L4018
.L4013:
#       } else {
#         ATV_DW.PumpStA = ATV_On(ATV_B.RateTransition7 > 40,
	.d2line		1789
.Llo481:
	lbz		r3,85(r27)		# retval=r3
.Llo482:
	lbz		r0,84(r27)
	cmpi		0,0,r3,40		# retval=r3
	mfcr		r3		# retval=r3
	cmpi		0,0,r0,70
	rlwinm		r3,r3,2,31,31		# retval=r3 retval=r3
.Llo483:
	mfcr		r4
	rlwinm		r4,r4,2,31,31
	bl		ATV_On
.Llo484:
	stw		r3,4(r29)		# retval=r3
	b		.L4018
.L4017:
#           ATV_B.RateTransition6 > 70);
#       }
#     } else {
#       /* Switch: '<S31>/Switch' */
#       ATV_B.Switch = true;
	.d2line		1794
.Llo485:
	diab.li		r3,1		# retval=r3
	.d2line		1797
.Llo486:
	diab.li		r4,0
# 
#       /* During 'Run': '<S33>:54' */
#       if (ATV_DW.PumpStA == 0.0) {
	stb		r3,115(r27)		# retval=r3
	lwz		r0,4(r29)
	efscmpeq		1,r0,r4
	bc		0,5,.L4015		# ne
#         /* Transition: '<S33>:62' */
#         ATV_DW.is_PumpALogic = ATV_IN_Off;
	.d2line		1799
	stb		r3,28(r29)		# retval=r3
# 
#         /* Switch: '<S31>/Switch' */
#         /* Entry 'Off': '<S33>:63' */
#         ATV_B.Switch = false;
	.d2line		1803
	stb		r4,115(r27)
	b		.L4018
.L4015:
#       } else {
#         ATV_DW.PumpStA = ATV_Off(ATV_B.RateTransition7 < 30,
	.d2line		1805
.Llo487:
	lbz		r3,85(r27)		# retval=r3
.Llo488:
	lbz		r0,84(r27)
	se_cmpi		r3,30		# retval=r3
	mfcr		r3		# retval=r3
	cmpi		0,0,r0,60
	se_srwi		r3,31		# retval=r3 retval=r3
.Llo489:
	mfcr		r4
	se_srwi		r4,31
	bl		ATV_Off
.Llo490:
	stw		r3,4(r29)		# retval=r3
.L4018:
#           ATV_B.RateTransition6 < 60);
#       }
#     }
# 
#     /* During 'PumpBLogic': '<S33>:14' */
#     switch (ATV_DW.is_PumpBLogic) {
	.d2line		1811
.Llo491:
	lbz		r6,29(r29)		# rtb_Add=r6
	se_cmpi		r6,1		# rtb_Add=r6
	bc		1,2,.L4020	# eq
	se_cmpi		r6,2		# rtb_Add=r6
	bc		1,2,.L4025	# eq
	b		.L4028
.L4020:
#      case ATV_IN_Off:
#       atv_dbg_pumpB_out = false;
	.d2line		1813
	diab.li		r6,0		# rtb_Add=r6
	.d2line		1817
.Llo412:
	e_lis		r3,16256		# retval=r3
#       rtb_Add = 0;
# 
#       /* During 'Off': '<S33>:24' */
#       if (ATV_DW.PumpStB == 1.0) {
.Llo492:
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)		# rtb_Add=r6
	lwz		r0,0(r29)
	efscmpeq		1,r0,r3		# retval=r3
	bc		0,5,.L4023		# ne
#         /* Transition: '<S33>:29' */
#         ATV_DW.is_PumpBLogic = ATV_IN_Run;
	.d2line		1819
.Llo403:
	diab.li		r0,2
	.d2line		1822
.Llo404:
	diab.li		r6,1		# rtb_Add=r6
# 
#         /* Entry 'Run': '<S33>:28' */
#         atv_dbg_pumpB_out = true;
	stb		r0,29(r29)
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)		# rtb_Add=r6
#         rtb_Add = 1;
	.d2line		1823
	b		.L4034
.L4023:
	lhz		r0,8(r29)
#       } else if (ATV_DW.temporalCounter_i1 >= 50000U) {
	.d2line		1824
	cmpli		0,0,r0,50000
	bc		1,0,.L4021	# lt
	sth		r6,8(r29)		# rtb_Add=r6
#         /* Transition: '<S33>:32' */
#         ATV_DW.is_PumpBLogic = ATV_IN_Run60sec;
	.d2line		1826
	diab.li		r0,3
	stb		r0,29(r29)
#         ATV_DW.temporalCounter_i1 = 0U;
# 
#         /* Entry 'Run60sec': '<S33>:22' */
#         atv_dbg_pumpB_out = true;
	.d2line		1830
	diab.li		r6,1		# rtb_Add=r6
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)		# rtb_Add=r6
#         rtb_Add = 1;
	.d2line		1831
	b		.L4034
.L4021:
#       } else {
#         ATV_DW.PumpStB = ATV_On(RelationalOperator8, RelationalOperator6);
	.d2line		1833
	rlwinm		r4,r25,0,24,31		# RelationalOperator6=r25
	mr		r3,r24		# RelationalOperator8=r3 RelationalOperator8=r24
	bl		ATV_On
	stw		r3,0(r29)		# RelationalOperator8=r3
	.d2line		1835
	b		.L4034
.L4025:
#       }
#       break;
# 
#      case ATV_IN_Run:
#       atv_dbg_pumpB_out = true;
	.d2line		1838
.Llo405:
	diab.li		r6,1		# rtb_Add=r6
	.d2line		1842
.Llo406:
	diab.li		r0,0
#       rtb_Add = 1;
# 
#       /* During 'Run': '<S33>:28' */
#       if (ATV_DW.PumpStB == 0.0) {
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)		# rtb_Add=r6
	lwz		r3,0(r29)		# retval=r3
.Llo493:
	efscmpeq		1,r3,r0		# retval=r3
	bc		0,5,.L4026		# ne
#         /* Transition: '<S33>:25' */
#         ATV_DW.is_PumpBLogic = ATV_IN_Off;
#         ATV_DW.temporalCounter_i1 = 0U;
	.d2line		1845
.Llo437:
	sth		r0,8(r29)		# rtb_Add=r0
	.d2line		1844
	stb		r6,29(r29)		# rtb_Add=r6
# 
#         /* Entry 'Off': '<S33>:24' */
#         atv_dbg_pumpB_out = false;
	.d2line		1848
	stb		r0,atv_dbg_pumpB_out@sdarx(r0)		# rtb_Add=r0
	diab.li		r6,0		# rtb_Add=r6
#         rtb_Add = 0;
	.d2line		1849
	b		.L4034
.L4026:
#       } else {
#         ATV_DW.PumpStB = ATV_Off(ATV_B.RateTransition9 < 30,
	.d2line		1851
	se_cmpi		r7,30
	mfcr		r3		# retval=r3
.Llo494:
	cmpi		0,0,r26,60		# rtb_Add=r26
	se_srwi		r3,31		# retval=r3 retval=r3
.Llo495:
	mfcr		r4
	se_srwi		r4,31
	bl		ATV_Off
.Llo496:
	stw		r3,0(r29)		# retval=r3
	.d2line		1854
	b		.L4034
.L4028:
#           ATV_B.RateTransition8 < 60);
#       }
#       break;
# 
#      default:
#       atv_dbg_pumpB_out = true;
	.d2line		1857
.Llo407:
	diab.li		r6,1		# rtb_Add=r6
	.d2line		1861
.Llo408:
	e_lis		r3,16256		# retval=r3
#       rtb_Add = 1;
# 
#       /* During 'Run60sec': '<S33>:22' */
#       if (ATV_DW.PumpStB == 1.0) {
.Llo497:
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)		# rtb_Add=r6
	lwz		r0,0(r29)
	efscmpeq		1,r0,r3		# retval=r3
	bc		0,5,.L4031		# ne
#         /* Transition: '<S33>:31' */
#         /* Transition: '<S33>:34' */
#         ATV_DW.is_PumpBLogic = ATV_IN_Run;
	.d2line		1864
.Llo498:
	diab.li		r0,2
	stb		r0,29(r29)
# 
#         /* Entry 'Run': '<S33>:28' */
#         atv_dbg_pumpB_out = true;
	.d2line		1867
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)		# rtb_Add=r6
	b		.L4034
.L4031:
	lhz		r0,8(r29)
#       } else if (ATV_DW.temporalCounter_i1 >= 9000U) {
	.d2line		1868
	cmpli		0,0,r0,9000
	bc		1,0,.L4029	# lt
	.d2line		1870
	stb		r6,29(r29)		# rtb_Add=r6
	.d2line		1868
	diab.li		r6,0		# rtb_Add=r6
#         /* Transition: '<S33>:26' */
#         ATV_DW.is_PumpBLogic = ATV_IN_Off;
	sth		r6,8(r29)		# rtb_Add=r6
#         ATV_DW.temporalCounter_i1 = 0U;
# 
#         /* Entry 'Off': '<S33>:24' */
#         atv_dbg_pumpB_out = false;
	.d2line		1874
	stb		r6,atv_dbg_pumpB_out@sdarx(r0)		# rtb_Add=r6
#         rtb_Add = 0;
	.d2line		1875
	b		.L4034
.L4029:
#       } else {
#         ATV_DW.PumpStB = ATV_On(RelationalOperator8, RelationalOperator6);
	.d2line		1877
	rlwinm		r4,r25,0,24,31		# RelationalOperator6=r25
	mr		r3,r24		# RelationalOperator8=r3 RelationalOperator8=r24
	bl		ATV_On
	stw		r3,0(r29)		# RelationalOperator8=r3
.L4034:
#       }
#       break;
#     }
#   }
# 
#   /* End of Chart: '<S31>/PUMP LOGIC' */
# 
#   /* RateTransition: '<S1>/Rate Transition3' */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	.d2line		1886
.Llo438:
	lbz		r0,431(r5)		# rtb_Add=r0
	se_cmpi		r0,0		# rtb_Add=r0
	bc		1,2,.L4035	# eq
#     ATV_B.RateTransition3 = ATV_B.Switch;
	.d2line		1887
	lbz		r0,115(r27)		# rtb_Add=r0
	stb		r0,116(r27)		# rtb_Add=r0
# 
#     /* RateTransition: '<S1>/Rate Transition5' */
#     ATV_B.RateTransition5_g = atv_dbg_pumpB_out;
	.d2line		1890
	lbz		r0,atv_dbg_pumpB_out@sdarx(r0)		# rtb_Add=r0
	stb		r0,117(r27)		# rtb_Add=r0
# 
#     /* RateTransition: '<Root>/Rate Transition12' */
#     ATV_B.RateTransition12 = ATV_DW.RateTransition12_Buffer0;
	.d2line		1893
	lbz		r0,16(r29)		# rtb_Add=r0
	stb		r0,90(r27)		# rtb_Add=r0
.L4035:
	lbz		r0,90(r27)		# rtb_Add=r0
#   }
# 
#   /* End of RateTransition: '<S1>/Rate Transition3' */
# 
#   /* Relay: '<S32>/Relay1' */
#   if (ATV_B.RateTransition12 >= 50) {
	.d2line		1899
	cmpi		0,0,r0,50		# rtb_Add=r0
	bc		1,0,.L4037	# lt
#     ATV_DW.Relay1_Mode = true;
	.d2line		1900
	diab.li		r3,1		# retval=r3
.Llo499:
	stb		r3,33(r29)		# retval=r3
	b		.L4038
.L4037:
#   } else {
#     if (ATV_B.RateTransition12 <= 48) {
	.d2line		1902
.Llo500:
	cmpi		0,0,r0,48		# rtb_Add=r0
	bc		1,1,.L4038	# gt
#       ATV_DW.Relay1_Mode = false;
	.d2line		1903
	diab.li		r3,0		# retval=r3
.Llo501:
	stb		r3,33(r29)		# retval=r3
.L4038:
#     }
#   }
# 
#   /* Switch: '<S32>/Switch1' incorporates:
#    *  Constant: '<S32>/Ventola spenta'
#    *  Logic: '<S32>/Logical Operator'
#    *  Relay: '<S32>/Relay1'
#    *  Switch: '<S31>/Switch1'
#    */
#   if ((rtb_Add != 0) && ATV_DW.Relay1_Mode) {
	.d2line		1913
.Llo502:
	se_cmpi		r6,0		# rtb_Add=r6
	bc		1,2,.L4041	# eq
.Llo409:
	lbz		r3,33(r29)		# retval=r3
.Llo413:
	se_cmpi		r3,0		# retval=r3
	bc		1,2,.L4041	# eq
#     /* Sum: '<S32>/Add1' incorporates:
#      *  Constant: '<S31>/atvc_tempSwitchOnFan'
#      */
#     rtb_Gain_d = (uint8_T)(ATV_B.RateTransition12 - atvc_tempSwitchOnFan);
	.d2line		1917
.Llo503:
	lis		r3,atvc_tempSwitchOnFan@ha		# retval=r3
	.d2line		1920
.Llo504:
	diab.li		r5,20
	lbz		r4,atvc_tempSwitchOnFan@l(r3)		# rtb_Gain_d=r4 retval=r3
# 
#     /* Saturate: '<S32>/Saturation' */
#     if (rtb_Gain_d >= 20) {
	.d2line		1929
.Llo426:
	e_lis		r6,16800		# rtb_Add=r6
.Llo414:
	subf		r4,r4,r0		# rtb_Gain_d=r4 rtb_Gain_d=r4 rtb_Add=r0
	.d2line		1936
.Llo415:
	lis		r3,atvc_dcMinFan@ha		# retval=r3
	rlwinm		r0,r4,0,24,31		# rtb_Add=r0 rtb_Gain_d=r4
#       rtb_Gain_d = 20U;
#     }
# 
#     /* End of Saturate: '<S32>/Saturation' */
# 
#     /* Product: '<S32>/Product' incorporates:
#      *  Constant: '<S32>/Constant'
#      */
#     atv_dbg_FAN_out = (real_T)rtb_Gain_d / 20.0;
	se_cmpi		r0,20		# rtb_Add=r0
	isel		r0,r4,r5,0		# rtb_Gain_d=r0 rtb_Gain_d=r4
	rlwinm		r0,r0,0,24,31		# rtb_Gain_d=r0 rtb_Gain_d=r0
	efscfui		r0,r0		# rtb_Gain_d=r0 rtb_Gain_d=r0
	efsdiv		r0,r0,r6		# rtb_Gain_d=r0 rtb_Gain_d=r0 rtb_Add=r6
# 
#     /* Gain: '<S32>/Gain' incorporates:
#      *  Constant: '<S32>/Constant1'
#      *  DataTypeConversion: '<S32>/Data Type Conversion'
#      *  Switch: '<S34>/Switch2'
#      */
#     rtb_Gain = 0.01 * (real_T)atvc_dcMinFan;
	stw		r0,atv_dbg_FAN_out@sdarx(r0)		# rtb_Gain_d=r0
	lbz		r3,atvc_dcMinFan@l(r3)		# retval=r3 retval=r3
	efscfui		r3,r3		# retval=r3 retval=r3
.Llo358:
	efsmul		r3,r3,r31		# rtb_Gain=r3 retval=r3
# 
#     /* Switch: '<S34>/Switch' incorporates:
#      *  RelationalOperator: '<S34>/UpperRelop'
#      *  Switch: '<S34>/Switch2'
#      */
#     if (atv_dbg_FAN_out < rtb_Gain) {
	.d2line		1942
.Llo505:
	efscmplt		1,r0,r3		# rtb_Gain_d=r0 rtb_Gain=r3
	bc		0,5,.L4042		# ge
#       atv_dbg_FAN_out = rtb_Gain;
	.d2line		1943
.Llo416:
	stw		r3,atv_dbg_FAN_out@sdarx(r0)		# rtb_Gain=r3
	b		.L4042
.L4041:
#     }
# 
#     /* End of Switch: '<S34>/Switch' */
#   } else {
#     atv_dbg_FAN_out = 0.0;
	.d2line		1948
.Llo359:
	diab.li		r0,0		# rtb_Add=r0
.Llo417:
	stw		r0,atv_dbg_FAN_out@sdarx(r0)		# rtb_Add=r0
.L4042:
#   }
# 
#   /* End of Switch: '<S32>/Switch1' */
# 
#   /* Gain: '<S1>/Gain' */
#   rtb_Gain = floor(100.0 * atv_dbg_FAN_out);
	.d2line		1954
.Llo418:
	lwz		r3,atv_dbg_FAN_out@sdarx(r0)		# rtb_Gain=r3
.Llo360:
	e_lis		r0,17096		# rtb_Gain_d=r0
.Llo427:
	efsmul		r3,r3,r0		# rtb_Gain=r3 rtb_Gain=r3 rtb_Gain_d=r0
.Llo361:
	bl		_f_ftod
.Llo428:
	bl		floor
	bl		_d_dtof
.Llo380:
	mr		r29,r3		# rtb_Gain=r29 rtb_Gain=r3
#   if (rtIsNaN(rtb_Gain) || rtIsInf(rtb_Gain)) {
	.d2line		1955
	bl		rtIsNaN
.Llo362:
	e_andi.		r3,r3,255		# rtb_Gain=r3 rtb_Gain=r3
.Llo363:
	bc		0,2,.L4054	# ne
.Llo381:
	mr		r3,r29		# rtb_Gain=r3 rtb_Gain=r29
	bl		rtIsInf
.Llo364:
	e_andi.		r3,r3,255		# rtb_Gain=r3 rtb_Gain=r3
.Llo365:
	bc		1,2,.L4043	# eq
.L4054:
#     rtb_Gain = 0.0;
	.d2line		1956
	diab.li		r3,0		# rtb_Gain=r3
.Llo382:
	b		.L4055
.L4043:
#   } else {
#     rtb_Gain = fmod(rtb_Gain, 256.0);
	.d2line		1958
.Llo383:
	mr		r3,r29		# rtb_Gain=r3 rtb_Gain=r29
	bl		_f_ftod
	.d2line		1961
	diab.li		r29,0		# rtb_Gain=r29
.Llo366:
	e_lis		r5,16496
	diab.li		r6,0		# rtb_Add=r6
	bl		fmod
	bl		_d_dtof
#   }
# 
#   rtb_Gain_d = (uint8_T)(rtb_Gain < 0.0 ? (int32_T)(uint8_T)-(int8_T)(uint8_T)
.Llo384:
	efscmplt		1,r3,r29		# rtb_Gain=r3 rtb_Gain=r29
	bc		0,5,.L4055		# ge
.Llo367:
	efsneg		r0,r3		# rtb_Gain_d=r0 rtb_Gain=r3
.Llo429:
	efsctuiz		r3,r0		# rtb_Gain=r3 rtb_Gain_d=r0
	neg		r3,r3		# rtb_Gain_d=r3 rtb_Gain=r3
.Llo385:
	b		.L4056
.L4055:
.Llo386:
	efsctuiz		r3,r3		# rtb_Gain_d=r3 rtb_Gain=r3
.L4056:
#     -rtb_Gain : (int32_T)(uint8_T)rtb_Gain);
# 
#   /* End of Gain: '<S1>/Gain' */
# 
#   /* RelationalOperator: '<S9>/Compare' incorporates:
#    *  Constant: '<S9>/Constant'
#    */
#   RelationalOperator6 = (rtb_Gain_d > 0);
	.d2line		1972
.Llo387:
	lwz		r4,0(r28)		# rtb_Gain_d=r4
	.d2line		1969
.Llo430:
	rlwinm		r5,r3,0,24,31		# rtb_Gain_d=r3
	neg		r0,r5		# rtb_Gain_d=r0
	lbz		r4,431(r4)		# rtb_Gain_d=r4 rtb_Gain_d=r4
# 
#   /* RateTransition: '<S1>/Rate Transition6' */
#   if (ATV_M->Timing.RateInteraction.TID0_1) {
	andc		r0,r0,r5		# rtb_Gain_d=r0 rtb_Gain_d=r0
.Llo297:
	se_srwi		r0,31		# RelationalOperator6=r0 rtb_Gain_d=r0
	se_cmpi		r4,0		# rtb_Gain_d=r4
	bc		1,2,.L4045	# eq
#     ATV_B.RateTransition6_p = RelationalOperator6;
# 
#     /* RateTransition: '<S1>/Rate Transition7' */
#     ATV_B.RateTransition7_p = rtb_Gain_d;
	.d2line		1976
.Llo431:
	stb		r3,91(r27)		# rtb_Gain_d=r3
	.d2line		1973
	stb		r0,118(r27)		# RelationalOperator6=r0
.L4045:
#   }
# 
#   /* End of RateTransition: '<S1>/Rate Transition6' */
# 
#   /* S-Function (pdx_digital_output): '<S1>/pdx_DigitalOutput' */
#   /* S-Function Block: <S1>/pdx_DigitalOutput
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)atv_wakelock_out,
	.d2line		1987
.Llo298:
	lbz		r3,atv_wakelock_out@sdarx(r0)		# rtb_Gain_d=r3
	diab.li		r4,0		# rtb_Gain_d=r4
	diab.addi		r7,r1,33
	diab.li		r5,0
	diab.li		r6,0		# rtb_Add=r6
	.d2line		2127
	e_lis		r29,16256		# rtb_Gain=r29
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_XD1_ENABLE_PSU_HOLD, state, FALSE);
.Llo368:
	bl		put_state_processing
	.d2line		1992
	lbz		r4,33(r1)		# rtb_Gain_d=r4
	diab.li		r3,21		# rtb_Gain_d=r3
	diab.li		r5,0
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
	bl		pdx_digital_output
	.d2line		2003
	lbz		r3,115(r27)		# rtb_Gain_d=r3
	diab.li		r4,0		# rtb_Gain_d=r4
	diab.addi		r7,r1,34
	diab.li		r5,0
	diab.li		r6,0		# rtb_Add=r6
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YL4, state, FALSE);
	bl		put_state_processing
	.d2line		2008
	lbz		r4,34(r1)		# rtb_Gain_d=r4
	diab.li		r3,158		# rtb_Gain_d=r3
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
	.d2line		2019
	lbz		r3,atv_dbg_pumpB_out@sdarx(r0)		# rtb_Gain_d=r3
	diab.li		r4,0		# rtb_Gain_d=r4
	diab.addi		r7,r1,35
	diab.li		r5,0
	diab.li		r6,0		# rtb_Add=r6
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YA1, state, FALSE);
	bl		put_state_processing
	.d2line		2024
	lbz		r4,35(r1)		# rtb_Gain_d=r4
	diab.li		r3,61		# rtb_Gain_d=r3
	diab.li		r5,0
#   }
# 
#   /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput2' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
#   /* S-Function Block: <S5>/pdx_DigitalOutput2
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   {
#     uint8_T state;
#     put_state_processing((U8)ATV_B.Switch,
	bl		pdx_digital_output
	.d2line		2035
	lbz		r3,115(r27)		# rtb_Gain_d=r3
	diab.li		r4,0		# rtb_Gain_d=r4
	diab.addi		r7,r1,36
	diab.li		r5,0
	diab.li		r6,0		# rtb_Add=r6
#                          (U8)0,
#                          (U8)false,
#                          (U8)(false),
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_XD4, state, FALSE);
	bl		put_state_processing
	.d2line		2040
	lbz		r4,36(r1)		# rtb_Gain_d=r4
	diab.li		r3,22		# rtb_Gain_d=r3
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
	.d2line		2051
	lbz		r3,145(r27)		# rtb_Gain_d=r3
	diab.li		r4,0		# rtb_Gain_d=r4
	diab.addi		r7,r1,37
	diab.li		r5,0
	diab.li		r6,0		# rtb_Add=r6
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_ZF2, state, FALSE);
	bl		put_state_processing
	.d2line		2056
	lbz		r4,37(r1)		# rtb_Gain_d=r4
	diab.li		r3,212		# rtb_Gain_d=r3
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
	.d2line		2067
	lbz		r3,146(r27)		# rtb_Gain_d=r3
	diab.li		r4,0		# rtb_Gain_d=r4
	diab.addi		r7,r1,38
	diab.li		r5,0
	diab.li		r6,0		# rtb_Add=r6
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YA2, state, FALSE);
	bl		put_state_processing
	.d2line		2072
	lbz		r4,38(r1)		# rtb_Gain_d=r4
	diab.li		r3,65		# rtb_Gain_d=r3
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
	.d2line		2083
	lbz		r3,147(r27)		# rtb_Gain_d=r3
	diab.li		r4,0		# rtb_Gain_d=r4
	diab.addi		r7,r1,39
	diab.li		r5,0
	diab.li		r6,0		# rtb_Add=r6
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YA3, state, FALSE);
	bl		put_state_processing
	.d2line		2088
	lbz		r4,39(r1)		# rtb_Gain_d=r4
	diab.li		r3,70		# rtb_Gain_d=r3
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
	.d2line		2099
	lbz		r3,148(r27)		# rtb_Gain_d=r3
	diab.li		r4,0		# rtb_Gain_d=r4
	diab.addi		r7,r1,40
	diab.li		r5,0
	diab.li		r6,0		# rtb_Add=r6
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YA4, state, FALSE);
	bl		put_state_processing
	.d2line		2104
	lbz		r4,40(r1)		# rtb_Gain_d=r4
	diab.li		r3,75		# rtb_Gain_d=r3
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
	.d2line		2115
	lbz		r3,atv_runLed_out@sdarx(r0)		# rtb_Gain_d=r3
	diab.li		r4,0		# rtb_Gain_d=r4
	diab.addi		r7,r1,41
	diab.li		r5,0
	diab.li		r6,0		# rtb_Add=r6
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_ZG2, state, FALSE);
	bl		put_state_processing
	.d2line		2120
	lbz		r4,41(r1)		# rtb_Gain_d=r4
	diab.li		r3,217		# rtb_Gain_d=r3
	diab.li		r5,0
#   }
# 
#   /* Gain: '<S5>/Gain' */
#   ATV_B.Saturation = 0.01 * atv_dbg_FAN_out;
	bl		pdx_digital_output
	.d2line		2124
	lwz		r3,atv_dbg_FAN_out@sdarx(r0)		# rtb_Gain_d=r3
.Llo392:
	efsmul		r3,r3,r31		# rtb_Gain_d=r3 rtb_Gain_d=r3
# 
#   /* Saturate: '<S5>/Saturation' */
#   if (ATV_B.Saturation > 1.0) {
	stw		r3,4(r27)		# rtb_Gain_d=r3
	.d2line		2127
	efscmpgt		1,r3,r29		# rtb_Gain_d=r3 rtb_Gain=r29
	bc		0,5,.L4047		# le
#     /* Gain: '<S5>/Gain' */
#     ATV_B.Saturation = 1.0;
	.d2line		2129
	stw		r29,4(r27)		# rtb_Gain=r29
	mr		r3,r29		# rtb_Gain=r3
	b		.L4048
.L4047:
#   } else {
#     if (ATV_B.Saturation < 0.0) {
	.d2line		2131
.Llo369:
	diab.li		r29,0		# rtb_Gain=r29
.Llo370:
	efscmplt		1,r3,r29		# rtb_Gain_d=r3 rtb_Gain=r29
	bc		0,5,.L4048		# ge
#       /* Gain: '<S5>/Gain' */
#       ATV_B.Saturation = 0.0;
	.d2line		2133
	stw		r29,4(r27)		# rtb_Gain=r29
	diab.li		r3,0		# rtb_Gain_d=r3
.L4048:
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
	.d2line		2148
.Llo371:
	diab.li		r4,0		# rtb_Gain_d=r4
	diab.addi		r9,r1,56
	e_lis		r8,16256
	diab.li		r5,0
	diab.li		r6,0		# rtb_Add=r6
	diab.li		r7,0
	bl		put_dutycycle_processing
#       0,
#       (U8)false,
#       0.0,
#       (0.0),
#       (1.0),
#       &dc);
#     (void) pdx_pwm_output(PIO_FFPOT_YK3,
	.d2line		2169
.Llo393:
	e_lis		r31,16544		# rtb_Gain=r31
	.d2line		2155
.Llo372:
	lwz		r5,56(r1)
	diab.li		r6,0		# rtb_Add=r6
	diab.li		r3,150		# rtb_Gain=r3
	e_lis		r4,17402		# rtb_Gain_d=r4
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
	.d2line		2173
	e_lis		r29,17530		# rtb_Gain=r29
	bl		pdx_pwm_output
	.d2line		2168
	diab.addi		r4,r1,52		# rtb_Gain_d=r4
	diab.li		r3,29		# rtb_Gain=r3
#     ATV_B.pai_BasicAnalogInput2 = (adc * 5.0) / 4096.0;
	diab.li		r5,0
	bl		pax_adc_input
	lha		r0,52(r1)		# RelationalOperator6=r0
.Llo299:
	efscfsi		r0,r0		# RelationalOperator6=r0 RelationalOperator6=r0
	efsmul		r0,r0,r31		# RelationalOperator6=r0 RelationalOperator6=r0 rtb_Gain=r31
	efsmul		r0,r0,r30		# RelationalOperator6=r0 RelationalOperator6=r0
#   }
# 
#   /* Gain: '<S6>/Gain2' */
#   rtb_Gain = floor(1000.0 * ATV_B.pai_BasicAnalogInput2);
	stw		r0,52(r27)		# RelationalOperator6=r0
	efsmul		r3,r0,r29		# rtb_Gain=r3 RelationalOperator6=r0 rtb_Gain=r29
	bl		_f_ftod
.Llo300:
	bl		floor
	bl		_d_dtof
.Llo388:
	mr		r31,r3		# rtb_Gain=r31 rtb_Gain=r3
#   if (rtIsNaN(rtb_Gain) || rtIsInf(rtb_Gain)) {
	.d2line		2174
.Llo373:
	bl		rtIsNaN
.Llo374:
	e_andi.		r3,r3,255		# rtb_Gain=r3 rtb_Gain=r3
	bc		0,2,.L4057	# ne
.Llo375:
	mr		r3,r31		# rtb_Gain=r3 rtb_Gain=r31
	bl		rtIsInf
.Llo376:
	e_andi.		r3,r3,255		# rtb_Gain=r3 rtb_Gain=r3
.Llo377:
	bc		1,2,.L4049	# eq
.L4057:
#     rtb_Gain = 0.0;
	.d2line		2175
	diab.li		r3,0		# rtb_Gain=r3
.Llo389:
	b		.L4058
.L4049:
#   } else {
#     rtb_Gain = fmod(rtb_Gain, 4.294967296E+9);
	.d2line		2177
.Llo390:
	mr		r3,r31		# rtb_Gain=r3 rtb_Gain=r31
	bl		_f_ftod
	.d2line		2180
	diab.li		r31,0		# rtb_Gain=r31
.Llo378:
	e_lis		r5,16880
	diab.li		r6,0		# rtb_Add=r6
	bl		fmod
	bl		_d_dtof
#   }
# 
#   atv_xe3_ain = rtb_Gain < 0.0 ? -(int32_T)(uint32_T)-rtb_Gain : (int32_T)
.Llo391:
	efscmplt		1,r3,r31		# rtb_Gain=r3 rtb_Gain=r31
	bc		0,5,.L4058		# ge
.Llo379:
	efsneg		r0,r3		# RelationalOperator6=r0 rtb_Gain=r3
.Llo301:
	efsctuiz		r0,r0		# RelationalOperator6=r0 RelationalOperator6=r0
	neg		r0,r0		# RelationalOperator6=r0 RelationalOperator6=r0
	b		.L4059
.L4058:
.Llo302:
	efsctuiz		r0,r3		# RelationalOperator6=r0 rtb_Gain=r3
.L4059:
#     (uint32_T)rtb_Gain;
# 
#   /* End of Gain: '<S6>/Gain2' */
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
.Llo303:
	stw		r0,atv_xe3_ain@sdarx(r0)		# RelationalOperator6=r0
	.d2line		2193
	diab.li		r3,1		# rtb_Gain=r3
	diab.li		r4,0		# rtb_Gain_d=r4
	diab.addi		r7,r1,42
	diab.li		r6,1		# rtb_Add=r6
	diab.li		r5,0
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)(true),
#                          &state);
#     (void) pdx_digital_output
#       (PIO_DOT_XD4_YA1_YA4_YB1_YC2_YC3_YD1_YD2_YD3_YB4_YE1_YE2_YK3_ZA4_ZB4_ZE1_ZE2_ZF3_ENABLE,
	.d2line		2199
.Llo304:
	lbz		r4,42(r1)		# rtb_Gain_d=r4
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
	.d2line		2211
	diab.li		r3,1		# rtb_Gain=r3
	diab.li		r4,0		# rtb_Gain_d=r4
	diab.addi		r7,r1,43
	diab.li		r6,1		# rtb_Add=r6
	diab.li		r5,0
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)(true),
#                          &state);
#     (void) pdx_digital_output
#       (PIO_DOT_YA2_YA3_YC1_YE3_YL2_YL4_YM2_YM3_ZC1_ZD1_ZD2_ZE3_ZE4_ZG2_ENABLE,
	.d2line		2217
	lbz		r4,43(r1)		# rtb_Gain_d=r4
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
	.d2line		2229
	diab.li		r3,1		# rtb_Gain=r3
	diab.li		r4,0		# rtb_Gain_d=r4
	diab.addi		r7,r1,44
	diab.li		r6,1		# rtb_Add=r6
	diab.li		r5,0
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)1.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_INT_ENABLE_SECONDARY_MICRO, state, FALSE);
	.d2line		2234
	lbz		r4,44(r1)		# rtb_Gain_d=r4
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
	.d2line		2245
	diab.li		r3,0		# rtb_Gain=r3
	diab.addi		r7,r1,45
	diab.li		r4,0		# rtb_Gain_d=r4
	diab.li		r5,0
	diab.li		r6,0		# rtb_Add=r6
	bl		put_state_processing
#                          (U8)0,
#                          (U8)false,
#                          (U8)0.0,
#                          &state);
#     (void) pdx_digital_output(PIO_DOT_YK2_DISABLE, state, FALSE);
	.d2line		2250
	lbz		r4,45(r1)		# rtb_Gain_d=r4
	diab.li		r3,149		# rtb_Gain=r3
	diab.li		r5,0
	bl		pdx_digital_output
#   }
# }
	.d2line		2252
	.d2epilogue_begin
	diab.addi		r12,r1,272
	lwz		r0,308(r1)		# RelationalOperator6=r0
	lmw		r24,0(r12)		# offset r1+272  0x110
	.d2_cfa_restore_list	2,10
	mtspr		lr,r0		# RelationalOperator6=lr
	diab.addi		r1,r1,304		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4600:
	.type		ATV_output0,@function
	.size		ATV_output0,.-ATV_output0
# Number of nodes = 2777

# Allocations for ATV_output0
#	?a4		$$205
#	?a5		$$133
#	?a6		$$132
#	?a7		$$131
#	?a8		$$130
#	?a9		$$129
#	?a10		$$128
#	?a11		$$127
#	?a12		$$126
#	?a13		$$125
#	?a14		$$124
#	?a15		$$123
#	?a16		$$122
#	?a17		$$121
#	?a18		$$120
#	?a19		$$119
#	?a20		$$118
#	?a21		$$117
#	?a22		$$116
#	?a23		$$115
#	?a24		$$114
#	?a25		$$113
#	?a26		$$112
#	?a27		$$111
#	?a28		$$110
#	?a29		$$109
#	?a30		$$108
#	?a31		$$107
#	?a32		$$106
#	?a33		$$105
#	?a34		$$104
#	?a35		$$103
#	?a36		$$102
#	?a37		$$101
#	?a38		$$100
#	?a39		$$99
#	?a40		$$98
#	?a41		$$97
#	?a42		$$96
#	?a43		$$95
#	?a44		RelationalOperator6
#	?a45		rtb_Gain
#	?a46		rtb_Gain
#	?a47		rtb_Gain
#	?a48		rtb_Gain
#	?a49		rtb_Gain
#	?a50		rtb_Gain
#	?a51		rtb_Gain
#	?a52		rtb_Gain
#	?a53		rtb_Gain_d
#	?a54		rtb_Add
#	?a55		rtb_Add
#	?a56		$$90
#	?a57		$$85
#	?a58		$$84
#	?a59		rtb_Add
#	?a60		rtb_Gain_d
#	?a61		rtb_Gain
#	?a62		RelationalOperator6
#	?a63		RelationalOperator8
#	SP,46		adc
#	SP,32		state
#	SP,60		data
#	?a64		retval
#	SP,100		pcx_CANdb_TransmitMessage_in_port_buffer
#	SP,112		pcx_CANdb_TransmitMessage_in_port_ptr
#	SP,48		adc
#	SP,50		adc
#	SP,68		data
#	?a65		retval
#	SP,124		pcx_CANdb_TransmitMessage2_in_port_buffer
#	SP,156		pcx_CANdb_TransmitMessage2_in_port_ptr
#	SP,76		data
#	?a66		retval
#	SP,188		pcx_CANdb_TransmitMessage3_in_port_buffer
#	SP,228		pcx_CANdb_TransmitMessage3_in_port_ptr
#	SP,84		data
#	?a67		retval
#	SP,140		pcx_CANdb_TransmitMessage4_in_port_buffer
#	SP,172		pcx_CANdb_TransmitMessage4_in_port_ptr
#	SP,92		data
#	?a68		retval
#	SP,208		pcx_CANdb_TransmitMessage5_in_port_buffer
#	SP,248		pcx_CANdb_TransmitMessage5_in_port_ptr
#	SP,33		state
#	SP,34		state
#	SP,35		state
#	SP,36		state
#	SP,37		state
#	SP,38		state
#	SP,39		state
#	SP,40		state
#	SP,41		state
#	SP,56		dc
#	SP,52		adc
#	SP,42		state
#	SP,43		state
#	SP,44		state
#	SP,45		state
# static void ATV_update0(void)          /* Sample time: [0.01s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         2256
#$$ld
.L4921:

#$$bf	ATV_update0,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,cr0,spefscr
	.d2_cfa_start __cie
ATV_update0:
	.d2line		0
	.d2prologue_end
	.d2line		2266
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
	bc		0,2,.L4145	# ne
#     ++ATV_M->Timing.clockTickH0;
	.d2line		2267
	lwz		r4,396(r3)
	se_addi		r4,1
	stw		r4,396(r3)
.L4145:
	.d2line		2270
	lwz		r5,396(r3)
#   }
# 
#   ATV_M->Timing.t[0] = ATV_M->Timing.clockTick0 * ATV_M->Timing.stepSize0 +
	e_lis		r6,20352
	.d2line		2267
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
	.d2line		2272
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4922:
	.type		ATV_update0,@function
	.size		ATV_update0,.-ATV_update0
# Number of nodes = 45

# Allocations for ATV_update0
#	?a4		$$140
#	?a5		$$139
#	?a6		$$138
#	not allocated	$$136
#	?a7		$$135
#	not allocated	$$134
#	?a8		$$5
#	?a9		$$4
# static void ATV_output1(void)          /* Sample time: [0.1s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         2276
#$$ld
.L4926:

#$$bf	ATV_output1,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ATV_output1:
	diab.li		r0,-320
	stwux		r1,r1,r0		
	.d2_cfa_def_cfa_offset	320
	diab.addi		r12,r1,288
	mfspr		r0,lr
	stmw		r24,0(r12)		# offset r1+288  0x120
	.d2_cfa_offset_list	24,31,1,1
	stw		r0,324(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
	.section	.text_vle
.L4990:
#   /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage1' */
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage1
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   {
#     U8 data[8];
#     BOOL retval;
#     F32 pcx_CANdb_TransmitMessage1_in_port_buffer[5];
#     F32 * pcx_CANdb_TransmitMessage1_in_port_ptr[5];
#     static const U8 pcx_CANdb_TransmitMessage1_field_start_pos[5] = {
#       16, 8, 0, 24, 32, };
# 
#     static const U8 pcx_CANdb_TransmitMessage1_field_width[5] = {
#       1, 1, 1, 1, 1, };
# 
#     static const U8 pcx_CANdb_TransmitMessage1_field_is_signed[5] = {
#       0, 0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage1_field_valtype[5] = {
#       0, 0, 0, 0, 0, };
# 
#     static const U8 pcx_CANdb_TransmitMessage1_field_order[5] = {
#       1, 1, 1, 1, 1, };
# 
#     static const F32 pcx_CANdb_TransmitMessage1_field_eng_min[5] = {
#       0.0, 0.0, 0.0, 0.0, 0.0,
#     };
# 
#     static const F32 pcx_CANdb_TransmitMessage1_field_eng_max[5] = {
#       1.0, 1.0, 1.0, 1.0, 1.0,
#     };
# 
#     static const F32 pcx_CANdb_TransmitMessage1_field_scale[5] = {
#       1.0, 1.0, 1.0, 1.0, 1.0,
#     };
# 
#     static const F32 pcx_CANdb_TransmitMessage1_field_offset[5] = {
#       0.0, 0.0, 0.0, 0.0, 0.0,
#     };
# 
#     if (pcx_CANdb_TransmitMessage1_msg_handle != PCX_CONFIG_ERROR) {
	.d2line		2317
	lha		r0,pcx_CANdb_TransmitMessage1_msg_handle@sdarx(r0)
	e_cmph16i	r0,-1
	bc		1,2,.L4157	# eq
	lis		r11,ATV_B@ha
	.d2line		2319
	diab.addi		r0,r1,144
#       pcx_CANdb_TransmitMessage1_in_port_buffer[0] = ATV_B.RateTransition4_b;
	.d2line		2317
	e_add16i		r11,r11,ATV_B@l
	.d2line		2322
	diab.addi		r5,r1,148
	.d2line		2318
	lbz		r3,103(r11)
#       pcx_CANdb_TransmitMessage1_in_port_ptr[0] =
	.d2line		2325
	diab.addi		r28,r1,152
	.d2line		2333
	lis		r12,pcx_CANdb_TransmitMessage1_field_eng_max.4154@ha
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage1_in_port_buffer[1] = ATV_B.RateTransition;
	lis		r31,pcx_CANdb_TransmitMessage1_field_scale.4155@ha
	efscfui		r3,r3
	.d2line		2319
	stw		r0,164(r1)
#       pcx_CANdb_TransmitMessage1_in_port_ptr[1] =
	lis		r30,pcx_CANdb_TransmitMessage1_field_offset.4156@ha
	.d2line		2328
	diab.addi		r29,r1,156
	.d2line		2318
	stw		r3,144(r1)
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage1_in_port_buffer[2] = ATV_B.RateTransition1;
	diab.li		r26,0
	diab.li		r25,1
	diab.li		r24,5
	.d2line		2321
	lbz		r4,104(r11)
	.d2line		2333
	e_add16i		r12,r12,pcx_CANdb_TransmitMessage1_field_eng_max.4154@l
#       pcx_CANdb_TransmitMessage1_in_port_ptr[2] =
	e_add16i		r31,r31,pcx_CANdb_TransmitMessage1_field_scale.4155@l
	e_add16i		r30,r30,pcx_CANdb_TransmitMessage1_field_offset.4156@l
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage1_in_port_buffer[3] = ATV_B.RateTransition2;
	efscfui		r6,r4
	.d2line		2322
	stw		r5,168(r1)
	.d2line		2331
	diab.addi		r0,r1,160
#       pcx_CANdb_TransmitMessage1_in_port_ptr[3] =
	lis		r7,pcx_CANdb_TransmitMessage1_field_is_signed.4150@ha
	stw		r6,148(r1)
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[3];
#       pcx_CANdb_TransmitMessage1_in_port_buffer[4] = ATV_B.RateTransition2;
	lis		r8,pcx_CANdb_TransmitMessage1_field_valtype.4151@ha
	lis		r9,pcx_CANdb_TransmitMessage1_field_order.4152@ha
#       pcx_CANdb_TransmitMessage1_in_port_ptr[4] =
	lis		r10,pcx_CANdb_TransmitMessage1_field_eng_min.4153@ha
	.d2line		2324
	lbz		r27,105(r11)
	lis		r5,pcx_CANdb_TransmitMessage1_field_start_pos.4148@ha
#         &pcx_CANdb_TransmitMessage1_in_port_buffer[4];
#       pcx_vdb_pack_msg((const F32 * const *)
	lis		r6,pcx_CANdb_TransmitMessage1_field_width.4149@ha
	diab.addi		r3,r1,164
	.d2line		2325
	stw		r28,172(r1)
	.d2line		2333
	diab.addi		r4,r1,48
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage1_field_is_signed.4150@l
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage1_field_valtype.4151@l
	efscfui		r28,r27
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage1_field_order.4152@l
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage1_field_eng_min.4153@l
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage1_field_start_pos.4148@l
	stw		r28,152(r1)
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage1_field_width.4149@l
	.d2line		2327
	lbz		r11,106(r11)
	efscfui		r11,r11
	stw		r12,8(r1)
	stw		r31,12(r1)
	stw		r30,16(r1)
	stw		r26,20(r1)
	stw		r25,24(r1)
	stw		r24,28(r1)
	stw		r11,156(r1)
	.d2line		2330
	stw		r11,160(r1)
	.d2line		2328
	stw		r29,176(r1)
	.d2line		2331
	stw		r0,180(r1)
	.d2line		2333
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
#                        pcx_CANdb_TransmitMessage1_field_offset, 0, 1, 5);
# 
#       /* Do a transmit every time we are called, (CT2) */
#       retval = pcx_transmit(pcx_CANdb_TransmitMessage1_msg_handle, data);
	.d2line		2346
	lha		r3,pcx_CANdb_TransmitMessage1_msg_handle@sdarx(r0)
	diab.addi		r4,r1,48
	bl		pcx_transmit
.Llo506:
	b		.L4158
.L4157:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		2349
.Llo507:
	diab.li		r3,0		# retval=r3
.L4158:
	.d2line		2352
.Llo508:
	rlwinm		r0,r3,0,24,31		# retval=r3
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage1 = !retval;
	.d2line		2349
	lis		r31,ATV_B@ha
	cntlzw		r0,r0
	e_add16i		r31,r31,ATV_B@l
	diab.srwi		r0,5
	stb		r0,107(r31)
	.section	.text_vle
.L4991:
	.section	.text_vle
.L5030:
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
	.d2line		2391
.Llo509:
	lha		r0,pcx_CANdb_TransmitMessage6_msg_handle@sdarx(r0)
	e_cmph16i	r0,-1
	bc		1,2,.L4168	# eq
#       pcx_CANdb_TransmitMessage6_in_port_buffer[0] = ATV_B.RateTransition3;
	.d2line		2392
	lbz		r3,116(r31)		# retval=r3
	.d2line		2393
.Llo510:
	diab.addi		r0,r1,112
	.d2line		2396
	diab.addi		r5,r1,116
#       pcx_CANdb_TransmitMessage6_in_port_ptr[0] =
	.d2line		2399
	diab.addi		r28,r1,120
	stw		r0,128(r1)
#         &pcx_CANdb_TransmitMessage6_in_port_buffer[0];
#       pcx_CANdb_TransmitMessage6_in_port_buffer[1] = ATV_B.RateTransition5_g;
	.d2line		2404
	lis		r11,pcx_CANdb_TransmitMessage6_field_eng_max.4165@ha
	e_add16i		r11,r11,pcx_CANdb_TransmitMessage6_field_eng_max.4165@l
	lis		r12,pcx_CANdb_TransmitMessage6_field_scale.4166@ha
	.d2line		2392
	efscfui		r0,r3		# retval=r3
#       pcx_CANdb_TransmitMessage6_in_port_ptr[1] =
	lis		r30,pcx_CANdb_TransmitMessage6_field_offset.4167@ha
	.d2line		2402
	diab.addi		r29,r1,124
	diab.li		r26,0
#         &pcx_CANdb_TransmitMessage6_in_port_buffer[1];
#       pcx_CANdb_TransmitMessage6_in_port_buffer[2] = ATV_B.RateTransition6_p;
	stw		r0,112(r1)
	diab.li		r25,4
	e_add16i		r12,r12,pcx_CANdb_TransmitMessage6_field_scale.4166@l
	e_add16i		r30,r30,pcx_CANdb_TransmitMessage6_field_offset.4167@l
#       pcx_CANdb_TransmitMessage6_in_port_ptr[2] =
	.d2line		2395
	lbz		r4,117(r31)
	diab.li		r0,1
#         &pcx_CANdb_TransmitMessage6_in_port_buffer[2];
#       pcx_CANdb_TransmitMessage6_in_port_buffer[3] = ATV_B.RateTransition7_p;
	lis		r7,pcx_CANdb_TransmitMessage6_field_is_signed.4161@ha
	lis		r8,pcx_CANdb_TransmitMessage6_field_valtype.4162@ha
	efscfui		r6,r4
#       pcx_CANdb_TransmitMessage6_in_port_ptr[3] =
	.d2line		2396
	stw		r5,132(r1)
	.d2line		2404
	lis		r9,pcx_CANdb_TransmitMessage6_field_order.4163@ha
	lis		r10,pcx_CANdb_TransmitMessage6_field_eng_min.4164@ha
#         &pcx_CANdb_TransmitMessage6_in_port_buffer[3];
#       pcx_vdb_pack_msg((const F32 * const *)
	stw		r6,116(r1)
	lis		r5,pcx_CANdb_TransmitMessage6_field_start_pos.4159@ha
	diab.addi		r3,r1,128		# retval=r3
.Llo511:
	e_add16i		r7,r7,pcx_CANdb_TransmitMessage6_field_is_signed.4161@l
	.d2line		2398
	lbz		r27,118(r31)
	lis		r6,pcx_CANdb_TransmitMessage6_field_width.4160@ha
	e_add16i		r8,r8,pcx_CANdb_TransmitMessage6_field_valtype.4162@l
	diab.addi		r4,r1,56
	.d2line		2399
	stw		r28,136(r1)
	e_add16i		r9,r9,pcx_CANdb_TransmitMessage6_field_order.4163@l
	e_add16i		r10,r10,pcx_CANdb_TransmitMessage6_field_eng_min.4164@l
	e_add16i		r5,r5,pcx_CANdb_TransmitMessage6_field_start_pos.4159@l
	efscfui		r28,r27
	e_add16i		r6,r6,pcx_CANdb_TransmitMessage6_field_width.4160@l
	stw		r28,120(r1)
	.d2line		2401
	lbz		r28,91(r31)
	stw		r11,8(r1)
	stw		r12,12(r1)
	efscfui		r11,r28
	stw		r30,16(r1)
	stw		r26,20(r1)
	stw		r0,24(r1)
	stw		r25,28(r1)
	stw		r11,124(r1)
	.d2line		2402
	stw		r29,140(r1)
	.d2line		2404
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
	.d2line		2417
	lha		r3,pcx_CANdb_TransmitMessage6_msg_handle@sdarx(r0)		# retval=r3
	diab.addi		r4,r1,56
	bl		pcx_transmit
.Llo512:
	b		.L4169
.L4168:
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       retval = FALSE;
	.d2line		2420
.Llo513:
	diab.li		r3,0		# retval=r3
.L4169:
#     }
# 
#     ATV_B.pcx_CANdb_TransmitMessage6 = !retval;
	.d2line		2423
.Llo514:
	rlwinm		r0,r3,0,24,31		# retval=r3
	cntlzw		r0,r0
	diab.srwi		r0,5
	stb		r0,119(r31)
	.section	.text_vle
.L5031:
	.section	.text_vle
.L5070:
.Llo515:
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
	.d2line		2463
.Llo516:
	e_cmph16i	r3,-1		# retval=r3
	bc		1,2,.L4181	# eq
#       pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_msg_handle,
	.d2line		2464
.Llo517:
	diab.addi		r4,r1,64
	diab.addi		r5,r1,36
.Llo518:
	bl		pcx_receive
#         data, &timestamp);
#       ATV_B.pcx_CANdb_ReceiveMessage_o1 = (0 != (pcxf_rx_receive_status &
	.d2line		2466
.Llo519:
	rlwinm		r4,r3,0,29,29		# pcxf_rx_receive_status=r3
	.d2line		2468
	rlwinm		r5,r3,0,30,30		# pcxf_rx_receive_status=r3
	addic		r0,r4,-1
	subfe		r0,r0,r4
#         PCX_RX_ERROR));
#       ATV_B.pcx_CANdb_ReceiveMessage_o3 = (0 != (pcxf_rx_receive_status &
	stb		r0,129(r31)
	addic		r0,r5,-1
	subfe		r0,r0,r5
	stb		r0,131(r31)
#         PCX_RX_OVERRUN));
# 
#       /* decompose message into fields */
#       if (pcxf_rx_receive_status & PCX_RX_DATA) {
	.d2line		2472
	se_btsti		r3,31		# pcxf_rx_receive_status=r3
	bc		1,2,.L4179	# eq
#         ATV_B.pcx_CANdb_ReceiveMessage_o2 = 1;
	.d2line		2473
.Llo522:
	diab.li		r7,1
	.d2line		2480
	lis		r3,pcx_CANdb_ReceiveMessage_field_eng_min.4175@ha		# pcxf_rx_receive_status=r3
#         pcx_CANdb_ReceiveMessage_out_port[0] = (F32*)
.Llo523:
	stb		r7,130(r31)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_field_eng_min.4175@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
#           &pcx_CANdb_ReceiveMessage_out_port_buffer[0];
#         pcx_CANdb_ReceiveMessage_out_port[1] = (F32*)
	.d2line		2476
	diab.addi		r6,r1,92
	.d2line		2474
	diab.addi		r5,r1,88
	stw		r3,8(r1)		# pcxf_rx_receive_status=r3
#           &pcx_CANdb_ReceiveMessage_out_port_buffer[1];
#         pcx_CANdb_ReceiveMessage_out_port[2] = (F32*)
	.d2line		2478
	diab.addi		r0,r1,96
	stw		r7,28(r1)
	diab.li		r4,0
#           &pcx_CANdb_ReceiveMessage_out_port_buffer[2];
#         pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_out_port[0], NULL, &data[0],
	lis		r3,pcx_CANdb_ReceiveMessage_field_eng_max.4176@ha		# pcxf_rx_receive_status=r3
	stw		r6,104(r1)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_field_eng_max.4176@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	stw		r5,100(r1)
	stw		r3,12(r1)		# pcxf_rx_receive_status=r3
	lis		r8,pcx_CANdb_ReceiveMessage_field_is_signed.4172@ha
	stw		r4,24(r1)
	lis		r9,pcx_CANdb_ReceiveMessage_field_valtype.4173@ha
	lis		r3,pcx_CANdb_ReceiveMessage_field_scale.4177@ha		# pcxf_rx_receive_status=r3
	stw		r0,108(r1)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_field_scale.4177@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	lis		r10,pcx_CANdb_ReceiveMessage_field_order.4174@ha
	stw		r3,16(r1)		# pcxf_rx_receive_status=r3
	lis		r7,pcx_CANdb_ReceiveMessage_field_width.4171@ha
	lis		r6,pcx_CANdb_ReceiveMessage_field_start_pos.4170@ha
	diab.addi		r5,r1,64
	lis		r3,pcx_CANdb_ReceiveMessage_field_offset.4178@ha		# pcxf_rx_receive_status=r3
	e_add16i		r8,r8,pcx_CANdb_ReceiveMessage_field_is_signed.4172@l
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_field_offset.4178@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	e_add16i		r9,r9,pcx_CANdb_ReceiveMessage_field_valtype.4173@l
	stw		r3,20(r1)		# pcxf_rx_receive_status=r3
	e_add16i		r10,r10,pcx_CANdb_ReceiveMessage_field_order.4174@l
	e_add16i		r7,r7,pcx_CANdb_ReceiveMessage_field_width.4171@l
	e_add16i		r6,r6,pcx_CANdb_ReceiveMessage_field_start_pos.4170@l
	diab.li		r3,3		# pcxf_rx_receive_status=r3
	stw		r3,32(r1)		# pcxf_rx_receive_status=r3
	diab.addi		r3,r1,100		# pcxf_rx_receive_status=r3
.Llo524:
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
	.d2line		2490
	lwz		r0,88(r1)
	stw		r0,12(r31)
#           pcx_CANdb_ReceiveMessage_out_port_buffer[0];
#         ATV_B.pcx_CANdb_ReceiveMessage_o5 =
	.d2line		2492
	lwz		r0,92(r1)
	stw		r0,16(r31)
#           pcx_CANdb_ReceiveMessage_out_port_buffer[1];
#         ATV_B.pcx_CANdb_ReceiveMessage_o6 =
	.d2line		2494
	lwz		r0,96(r1)
	stw		r0,20(r31)
	b		.L4182
.L4179:
#           pcx_CANdb_ReceiveMessage_out_port_buffer[2];
#       } else {
#         ATV_B.pcx_CANdb_ReceiveMessage_o2 = 0;
	.d2line		2497
	diab.li		r0,0
	stb		r0,130(r31)
	b		.L4182
.L4181:
#       }
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       ATV_B.pcx_CANdb_ReceiveMessage_o1 = 1;
	.d2line		2501
	diab.li		r3,1		# retval=r3
	.d2line		2502
.Llo520:
	diab.li		r0,0
#       ATV_B.pcx_CANdb_ReceiveMessage_o2 = 0;
	stb		r3,129(r31)		# retval=r3
	sth		r0,130(r31)
.L4182:
	.section	.text_vle
.L5071:
.Llo521:
	lis		r30,ATV_DW@ha
#       ATV_B.pcx_CANdb_ReceiveMessage_o3 = 0;
#     }
#   }
# 
#   /* Chart: '<S3>/Chart' */
#   ATV_Chart(ATV_B.pcx_CANdb_ReceiveMessage_o2, &ATV_B.sf_Chart, &ATV_DW.sf_Chart);
	.d2line		2508
	lbz		r3,130(r31)		# pcxf_rx_receive_status=r3
	.d2line		2502
	e_add16i		r30,r30,ATV_DW@l
	diab.addi		r4,r31,163
	diab.addi		r5,r30,38
	bl		ATV_Chart
# 
#   /* Switch: '<S3>/Switch1' */
#   atv_v_dbg_chg_req = (ATV_B.sf_Chart.out && (ATV_B.pcx_CANdb_ReceiveMessage_o5
	.d2line		2511
	lbz		r4,163(r31)
	se_cmpi		r4,0
	bc		1,2,.L4352	# eq
	lwz		r0,16(r31)
	diab.li		r3,0		# pcxf_rx_receive_status=r3
.Llo525:
	efscmpeq		1,r0,r3		# pcxf_rx_receive_status=r3
	bc		0,5,.L4209		# ne
.L4352:
.Llo526:
	diab.li		r0,0
	b		.L4210
.L4209:
	diab.li		r0,1
.L4210:
	stb		r0,atv_v_dbg_chg_req@sdarx(r0)
#     != 0.0));
# 
#   /* Switch: '<S3>/Switch2' */
#   atv_v_dbg_heater_req = (ATV_B.sf_Chart.out &&
	.d2line		2515
	se_cmpi		r4,0
	bc		1,2,.L4353	# eq
#     (ATV_B.pcx_CANdb_ReceiveMessage_o6 != 0.0));
	.d2line		2516
	lwz		r0,20(r31)
	diab.li		r3,0		# pcxf_rx_receive_status=r3
.Llo527:
	efscmpeq		1,r0,r3		# pcxf_rx_receive_status=r3
	bc		0,5,.L4212		# ne
.L4353:
	.d2line		2515
.Llo528:
	diab.li		r0,0
	b		.L4213
.L4212:
	diab.li		r0,1
.L4213:
	stb		r0,atv_v_dbg_heater_req@sdarx(r0)
	.section	.text_vle
.L5110:
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
	.d2line		2559
.Llo529:
	e_cmph16i	r3,-1		# pcxf_rx_receive_status=r3
	bc		1,2,.L4194	# eq
#       pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_p_msg_handle,
	.d2line		2560
.Llo530:
	diab.addi		r4,r1,72
	diab.addi		r5,r1,40
.Llo531:
	bl		pcx_receive
#         data, &timestamp);
#       ATV_B.pcx_CANdb_ReceiveMessage_o1_k = (0 != (pcxf_rx_receive_status &
	.d2line		2562
.Llo532:
	rlwinm		r4,r3,0,29,29		# pcxf_rx_receive_status=r3
	.d2line		2564
	rlwinm		r5,r3,0,30,30		# pcxf_rx_receive_status=r3
	addic		r0,r4,-1
	subfe		r0,r0,r4
#         PCX_RX_ERROR));
#       ATV_B.pcx_CANdb_ReceiveMessage_o3_b = (0 != (pcxf_rx_receive_status &
	stb		r0,132(r31)
	addic		r0,r5,-1
	subfe		r0,r0,r5
	stb		r0,134(r31)
#         PCX_RX_OVERRUN));
# 
#       /* decompose message into fields */
#       if (pcxf_rx_receive_status & PCX_RX_DATA) {
	.d2line		2568
	se_btsti		r3,31		# pcxf_rx_receive_status=r3
	bc		1,2,.L4192	# eq
#         ATV_B.pcx_CANdb_ReceiveMessage_o2_d = 1;
	.d2line		2569
.Llo535:
	diab.li		r5,1
	.d2line		2574
	diab.addi		r3,r1,240		# pcxf_rx_receive_status=r3
#         pcx_CANdb_ReceiveMessage_p_out_port[0] = (F32*)
.Llo536:
	stb		r5,133(r31)
	.d2line		2570
	diab.addi		r4,r1,232
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[0];
#         pcx_CANdb_ReceiveMessage_p_out_port[1] = (F32*)
	.d2line		2572
	diab.addi		r0,r1,236
	.d2line		2576
	diab.addi		r7,r1,244
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[1];
#         pcx_CANdb_ReceiveMessage_p_out_port[2] = (F32*)
	stw		r3,268(r1)		# pcxf_rx_receive_status=r3
	.d2line		2580
	diab.addi		r6,r1,252
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[2];
#         pcx_CANdb_ReceiveMessage_p_out_port[3] = (F32*)
	.d2line		2584
	stw		r5,28(r1)
	lis		r8,pcx_CANdb_ReceiveMessage_p_field_is_signed.4185@ha
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[3];
#         pcx_CANdb_ReceiveMessage_p_out_port[4] = (F32*)
	lis		r3,pcx_CANdb_ReceiveMessage_p_field_eng_min.4188@ha		# pcxf_rx_receive_status=r3
	.d2line		2570
	stw		r4,260(r1)
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[4];
#         pcx_CANdb_ReceiveMessage_p_out_port[5] = (F32*)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_p_field_eng_min.4188@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	.d2line		2572
	stw		r0,264(r1)
	stw		r3,8(r1)		# pcxf_rx_receive_status=r3
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[5];
#         pcx_CANdb_ReceiveMessage_p_out_port[6] = (F32*)
	.d2line		2578
	diab.addi		r5,r1,248
	.d2line		2576
	stw		r7,272(r1)
	.d2line		2584
	diab.li		r4,0
#           &pcx_CANdb_ReceiveMessage_p_out_port_buffer[6];
#         pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_p_out_port[0], NULL, &data
	lis		r3,pcx_CANdb_ReceiveMessage_p_field_eng_max.4189@ha		# pcxf_rx_receive_status=r3
	.d2line		2580
	stw		r6,280(r1)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_p_field_eng_max.4189@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	stw		r5,276(r1)
	stw		r3,12(r1)		# pcxf_rx_receive_status=r3
	.d2line		2582
	diab.addi		r0,r1,256
	stw		r4,24(r1)
	lis		r9,pcx_CANdb_ReceiveMessage_p_field_valtype.4186@ha
	lis		r3,pcx_CANdb_ReceiveMessage_p_field_scale.4190@ha		# pcxf_rx_receive_status=r3
	stw		r0,284(r1)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_p_field_scale.4190@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	lis		r10,pcx_CANdb_ReceiveMessage_p_field_order.4187@ha
	stw		r3,16(r1)		# pcxf_rx_receive_status=r3
	lis		r7,pcx_CANdb_ReceiveMessage_p_field_width.4184@ha
	lis		r6,pcx_CANdb_ReceiveMessage_p_field_start_pos.4183@ha
	e_add16i		r8,r8,pcx_CANdb_ReceiveMessage_p_field_is_signed.4185@l
	lis		r3,pcx_CANdb_ReceiveMessage_p_field_offset.4191@ha		# pcxf_rx_receive_status=r3
	diab.addi		r5,r1,72
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_p_field_offset.4191@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	e_add16i		r9,r9,pcx_CANdb_ReceiveMessage_p_field_valtype.4186@l
	stw		r3,20(r1)		# pcxf_rx_receive_status=r3
	e_add16i		r10,r10,pcx_CANdb_ReceiveMessage_p_field_order.4187@l
	e_add16i		r7,r7,pcx_CANdb_ReceiveMessage_p_field_width.4184@l
	e_add16i		r6,r6,pcx_CANdb_ReceiveMessage_p_field_start_pos.4183@l
	diab.li		r3,7		# pcxf_rx_receive_status=r3
	stw		r3,32(r1)		# pcxf_rx_receive_status=r3
	diab.addi		r3,r1,260		# pcxf_rx_receive_status=r3
.Llo537:
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
	.d2line		2594
	lwz		r0,232(r1)
	stw		r0,24(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[0];
#         ATV_B.pcx_CANdb_ReceiveMessage_o5_c =
	.d2line		2596
	lwz		r0,236(r1)
	stw		r0,28(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[1];
#         ATV_B.pcx_CANdb_ReceiveMessage_o6_o =
	.d2line		2598
	lwz		r0,240(r1)
	stw		r0,32(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[2];
#         ATV_B.pcx_CANdb_ReceiveMessage_o7 =
	.d2line		2600
	lwz		r0,244(r1)
	stw		r0,36(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[3];
#         ATV_B.pcx_CANdb_ReceiveMessage_o8 =
	.d2line		2602
	lwz		r0,248(r1)
	stw		r0,40(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[4];
#         ATV_B.pcx_CANdb_ReceiveMessage_o9 =
	.d2line		2604
	lwz		r0,252(r1)
	stw		r0,44(r31)
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[5];
#         ATV_B.pcx_CANdb_ReceiveMessage_o10 =
	.d2line		2606
	lwz		r0,256(r1)
	stw		r0,48(r31)
	b		.L4195
.L4192:
#           pcx_CANdb_ReceiveMessage_p_out_port_buffer[6];
#       } else {
#         ATV_B.pcx_CANdb_ReceiveMessage_o2_d = 0;
	.d2line		2609
	diab.li		r0,0
	stb		r0,133(r31)
	b		.L4195
.L4194:
#       }
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       ATV_B.pcx_CANdb_ReceiveMessage_o1_k = 1;
	.d2line		2613
	diab.li		r3,256		# pcxf_rx_receive_status=r3
	.d2line		2615
.Llo533:
	diab.li		r0,0
#       ATV_B.pcx_CANdb_ReceiveMessage_o2_d = 0;
#       ATV_B.pcx_CANdb_ReceiveMessage_o3_b = 0;
	sth		r3,132(r31)		# pcxf_rx_receive_status=r3
	stb		r0,134(r31)
.L4195:
	.section	.text_vle
.L5111:
#     }
#   }
# 
#   /* Chart: '<S4>/Chart' */
#   ATV_Chart(ATV_B.pcx_CANdb_ReceiveMessage_o2_d, &ATV_B.sf_Chart_b,
	.d2line		2620
.Llo534:
	lbz		r3,133(r31)		# pcxf_rx_receive_status=r3
	diab.addi		r4,r31,162
	diab.addi		r5,r30,35
	bl		ATV_Chart
	.section	.text_vle
.L5150:
#             &ATV_DW.sf_Chart_b);
# 
#   /* Switch: '<S4>/Switch' */
#   ATV_B.atv_v_dbg_T_FMot = 0U;
	.d2line		2624
	diab.li		r0,0
	stw		r0,92(r31)
# 
#   /* Switch: '<S4>/Switch1' */
#   ATV_B.atv_v_dbg_T_FInv = 0U;
# 
#   /* Switch: '<S4>/Switch2' */
#   ATV_B.atv_v_dbg_T_RMot = 0U;
# 
#   /* Switch: '<S4>/Switch3' */
#   ATV_B.atv_v_dbg_T_RInv = 0U;
# 
#   /* Switch: '<S4>/Switch4' */
#   ATV_B.atv_v_dbg_T_GMot = 0U;
	.d2line		2636
	sth		r0,96(r31)
# 
#   /* Switch: '<S4>/Switch5' */
#   ATV_B.atv_v_dbg_T_GInv = 0U;
# 
#   /* Switch: '<S4>/Switch6' */
#   ATV_B.atv_v_dbg_T_Rad = 0U;
	.d2line		2642
	stb		r0,98(r31)
	lha		r3,pcx_CANdb_ReceiveMessage_e_msg_handle@sdarx(r0)		# pcxf_rx_receive_status=r3
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
	.d2line		2685
.Llo538:
	e_cmph16i	r3,-1		# pcxf_rx_receive_status=r3
	bc		1,2,.L4207	# eq
#       pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_e_msg_handle,
	.d2line		2686
.Llo539:
	diab.addi		r4,r1,80
	diab.addi		r5,r1,44
.Llo540:
	bl		pcx_receive
#         data, &timestamp);
#       ATV_B.pcx_CANdb_ReceiveMessage_o1_n = (0 != (pcxf_rx_receive_status &
	.d2line		2688
.Llo541:
	rlwinm		r4,r3,0,29,29		# pcxf_rx_receive_status=r3
	.d2line		2690
	rlwinm		r5,r3,0,30,30		# pcxf_rx_receive_status=r3
	addic		r0,r4,-1
	subfe		r0,r0,r4
#         PCX_RX_ERROR));
#       ATV_B.pcx_CANdb_ReceiveMessage_o3_p = (0 != (pcxf_rx_receive_status &
	stb		r0,135(r31)
	addic		r0,r5,-1
	subfe		r0,r0,r5
	stb		r0,137(r31)
#         PCX_RX_OVERRUN));
# 
#       /* decompose message into fields */
#       if (pcxf_rx_receive_status & PCX_RX_DATA) {
	.d2line		2694
	se_btsti		r3,31		# pcxf_rx_receive_status=r3
	bc		1,2,.L4205	# eq
#         ATV_B.pcx_CANdb_ReceiveMessage_o2_l = 1;
	.d2line		2695
.Llo544:
	diab.li		r4,1
	.d2line		2698
	diab.addi		r3,r1,188		# pcxf_rx_receive_status=r3
#         pcx_CANdb_ReceiveMessage_e_out_port[0] = (F32*)
.Llo545:
	stb		r4,136(r31)
	.d2line		2696
	diab.addi		r0,r1,184
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[0];
#         pcx_CANdb_ReceiveMessage_e_out_port[1] = (F32*)
	.d2line		2700
	diab.addi		r7,r1,192
	.d2line		2704
	diab.addi		r6,r1,200
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[1];
#         pcx_CANdb_ReceiveMessage_e_out_port[2] = (F32*)
	stw		r3,212(r1)		# pcxf_rx_receive_status=r3
	.d2line		2702
	diab.addi		r5,r1,196
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[2];
#         pcx_CANdb_ReceiveMessage_e_out_port[3] = (F32*)
	.d2line		2708
	stw		r4,28(r1)
	lis		r8,pcx_CANdb_ReceiveMessage_e_field_is_signed.4198@ha
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[3];
#         pcx_CANdb_ReceiveMessage_e_out_port[4] = (F32*)
	lis		r3,pcx_CANdb_ReceiveMessage_e_field_eng_min.4201@ha		# pcxf_rx_receive_status=r3
	.d2line		2696
	stw		r0,208(r1)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_e_field_eng_min.4201@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[4];
#         pcx_CANdb_ReceiveMessage_e_out_port[5] = (F32*)
	.d2line		2700
	stw		r7,216(r1)
	stw		r3,8(r1)		# pcxf_rx_receive_status=r3
	diab.li		r4,0
#           &pcx_CANdb_ReceiveMessage_e_out_port_buffer[5];
#         pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_e_out_port[0], NULL, &data
	.d2line		2704
	stw		r6,224(r1)
	.d2line		2706
	diab.addi		r0,r1,204
	.d2line		2708
	lis		r3,pcx_CANdb_ReceiveMessage_e_field_eng_max.4202@ha		# pcxf_rx_receive_status=r3
	.d2line		2702
	stw		r5,220(r1)
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_e_field_eng_max.4202@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	stw		r4,24(r1)
	stw		r3,12(r1)		# pcxf_rx_receive_status=r3
	lis		r9,pcx_CANdb_ReceiveMessage_e_field_valtype.4199@ha
	stw		r0,228(r1)
	lis		r10,pcx_CANdb_ReceiveMessage_e_field_order.4200@ha
	lis		r3,pcx_CANdb_ReceiveMessage_e_field_scale.4203@ha		# pcxf_rx_receive_status=r3
	lis		r7,pcx_CANdb_ReceiveMessage_e_field_width.4197@ha
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_e_field_scale.4203@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	lis		r6,pcx_CANdb_ReceiveMessage_e_field_start_pos.4196@ha
	stw		r3,16(r1)		# pcxf_rx_receive_status=r3
	e_add16i		r8,r8,pcx_CANdb_ReceiveMessage_e_field_is_signed.4198@l
	diab.addi		r5,r1,80
	e_add16i		r9,r9,pcx_CANdb_ReceiveMessage_e_field_valtype.4199@l
	lis		r3,pcx_CANdb_ReceiveMessage_e_field_offset.4204@ha		# pcxf_rx_receive_status=r3
	e_add16i		r10,r10,pcx_CANdb_ReceiveMessage_e_field_order.4200@l
	e_add16i		r3,r3,pcx_CANdb_ReceiveMessage_e_field_offset.4204@l		# pcxf_rx_receive_status=r3 pcxf_rx_receive_status=r3
	e_add16i		r7,r7,pcx_CANdb_ReceiveMessage_e_field_width.4197@l
	stw		r3,20(r1)		# pcxf_rx_receive_status=r3
	e_add16i		r6,r6,pcx_CANdb_ReceiveMessage_e_field_start_pos.4196@l
	diab.li		r3,6		# pcxf_rx_receive_status=r3
	stw		r3,32(r1)		# pcxf_rx_receive_status=r3
	diab.addi		r3,r1,208		# pcxf_rx_receive_status=r3
.Llo546:
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
	.d2line		2718
	lwz		r0,184(r1)
	stw		r0,56(r31)
#           pcx_CANdb_ReceiveMessage_e_out_port_buffer[0];
#         ATV_B.pcx_CANdb_ReceiveMessage_o5_m =
	.d2line		2720
	lwz		r0,188(r1)
	stw		r0,60(r31)
#           pcx_CANdb_ReceiveMessage_e_out_port_buffer[1];
#         bms_pack_voltage = pcx_CANdb_ReceiveMessage_e_out_port_buffer[2];
	.d2line		2722
	lwz		r3,192(r1)		# pcxf_rx_receive_status=r3
	.d2line		2723
.Llo547:
	lwz		r0,196(r1)
#         ATV_B.atv_bms_pack_current = pcx_CANdb_ReceiveMessage_e_out_port_buffer
	stw		r3,bms_pack_voltage@sdarx(r0)		# pcxf_rx_receive_status=r3
	stw		r0,64(r31)
#           [3];
#         ATV_B.atv_bms_pack_soh = pcx_CANdb_ReceiveMessage_e_out_port_buffer[4];
	.d2line		2725
	lwz		r0,200(r1)
	stw		r0,68(r31)
#         ATV_B.pcx_CANdb_ReceiveMessage_o9_c =
	.d2line		2726
	lwz		r0,204(r1)
	stw		r0,72(r31)
	b		.L4208
.L4205:
#           pcx_CANdb_ReceiveMessage_e_out_port_buffer[5];
#       } else {
#         ATV_B.pcx_CANdb_ReceiveMessage_o2_l = 0;
	.d2line		2729
.Llo548:
	diab.li		r0,0
	stb		r0,136(r31)
	b		.L4208
.L4207:
#       }
#     } else {
#       /* error: pcx_declare_message was unsuccessful */
#       ATV_B.pcx_CANdb_ReceiveMessage_o1_n = 1;
	.d2line		2734
.Llo542:
	sth		r0,136(r31)
	.d2line		2733
	diab.li		r0,1
#       ATV_B.pcx_CANdb_ReceiveMessage_o2_l = 0;
	stb		r0,135(r31)
.L4208:
	.section	.text_vle
.L5151:
#       ATV_B.pcx_CANdb_ReceiveMessage_o3_p = 0;
#     }
#   }
# }
	.d2line		2738
	.d2epilogue_begin
.Llo543:
	diab.addi		r12,r1,288
	lwz		r0,324(r1)
	lmw		r24,0(r12)		# offset r1+288  0x120
	.d2_cfa_restore_list	2,10
	mtspr		lr,r0
	diab.addi		r1,r1,320		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4927:
	.type		ATV_output1,@function
	.size		ATV_output1,.-ATV_output1
# Number of nodes = 1158

# Allocations for ATV_output1
#	?a4		$$149
#	?a5		$$148
#	?a6		$$147
#	?a7		$$146
#	?a8		$$145
#	?a9		$$144
#	?a10		$$143
#	?a11		$$142
#	?a12		$$141
#	not allocated	$$7
#	?a13		$$6
#	SP,48		data
#	?a14		retval
#	SP,144		pcx_CANdb_TransmitMessage1_in_port_buffer
#	SP,164		pcx_CANdb_TransmitMessage1_in_port_ptr
#	SP,56		data
#	?a15		retval
#	SP,112		pcx_CANdb_TransmitMessage6_in_port_buffer
#	SP,128		pcx_CANdb_TransmitMessage6_in_port_ptr
#	SP,64		data
#	SP,36		timestamp
#	?a16		pcxf_rx_receive_status
#	SP,88		pcx_CANdb_ReceiveMessage_out_port_buffer
#	SP,100		pcx_CANdb_ReceiveMessage_out_port
#	SP,72		data
#	SP,40		timestamp
#	?a17		pcxf_rx_receive_status
#	SP,232		pcx_CANdb_ReceiveMessage_p_out_port_buffer
#	SP,260		pcx_CANdb_ReceiveMessage_p_out_port
#	SP,80		data
#	SP,44		timestamp
#	?a18		pcxf_rx_receive_status
#	SP,184		pcx_CANdb_ReceiveMessage_e_out_port_buffer
#	SP,208		pcx_CANdb_ReceiveMessage_e_out_port
# static void ATV_update1(void)          /* Sample time: [0.1s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         2742
#$$ld
.L5192:

#$$bf	ATV_update1,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,cr0,spefscr
	.d2_cfa_start __cie
ATV_update1:
	.d2line		0
	.d2prologue_end
	.d2line		2744
	lbz		r0,atv_v_dbg_chg_req@sdarx(r0)
#   /* Update for RateTransition: '<Root>/Rate Transition4' */
#   ATV_DW.RateTransition4_Buffer0 = atv_v_dbg_chg_req;
	.d2line		2747
	lis		r3,ATV_DW@ha
	e_add16i		r3,r3,ATV_DW@l
	lis		r4,ATV_B@ha
	stb		r0,30(r3)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition5' */
#   ATV_DW.RateTransition5_Buffer0 = atv_v_dbg_heater_req;
	e_add16i		r4,r4,ATV_B@l
	.d2line		2768
	lis		r5,ATV_M@ha
	lbz		r0,atv_v_dbg_heater_req@sdarx(r0)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition6' */
#   ATV_DW.RateTransition6_Buffer0 = ATV_B.atv_v_dbg_T_FMot;
	stb		r0,31(r3)
	.d2line		2750
	lbz		r0,92(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition7' */
#   ATV_DW.RateTransition7_Buffer0 = ATV_B.atv_v_dbg_T_FInv;
	stb		r0,10(r3)
	.d2line		2753
	lbz		r0,93(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition10' */
#   ATV_DW.RateTransition10_Buffer0 = ATV_B.atv_v_dbg_T_GMot;
	stb		r0,11(r3)
	.d2line		2756
	lbz		r0,96(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition8' */
#   ATV_DW.RateTransition8_Buffer0 = ATV_B.atv_v_dbg_T_RMot;
	stb		r0,12(r3)
	.d2line		2759
	lbz		r0,94(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition9' */
#   ATV_DW.RateTransition9_Buffer0 = ATV_B.atv_v_dbg_T_RInv;
	stb		r0,13(r3)
	.d2line		2762
	lbz		r0,95(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition11' */
#   ATV_DW.RateTransition11_Buffer0 = ATV_B.atv_v_dbg_T_GInv;
	stb		r0,14(r3)
	.d2line		2765
	lbz		r0,97(r4)
# 
#   /* Update for RateTransition: '<Root>/Rate Transition12' */
#   ATV_DW.RateTransition12_Buffer0 = ATV_B.atv_v_dbg_T_Rad;
	stb		r0,15(r3)
	.d2line		2768
	lbz		r0,98(r4)
	stb		r0,16(r3)
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
	.d2line		2779
	lwz		r4,404(r3)
	diab.addi		r0,r4,1
	stw		r0,404(r3)
	se_cmpi		r0,0
	bc		0,2,.L4235	# ne
#     ++ATV_M->Timing.clockTickH1;
	.d2line		2780
	lwz		r4,408(r3)
	se_addi		r4,1
	stw		r4,408(r3)
.L4235:
	.d2line		2783
	lwz		r5,408(r3)
#   }
# 
#   ATV_M->Timing.t[1] = ATV_M->Timing.clockTick1 * ATV_M->Timing.stepSize1 +
	e_lis		r6,20352
	.d2line		2780
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
	.d2line		2785
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5193:
	.type		ATV_update1,@function
	.size		ATV_update1,.-ATV_update1
# Number of nodes = 138

# Allocations for ATV_update1
#	?a4		$$158
#	?a5		$$157
#	?a6		$$156
#	?a7		$$155
#	?a8		$$154
#	not allocated	$$152
#	?a9		$$151
#	not allocated	$$150
#	?a10		$$9
#	?a11		$$8
# static void ATV_output2(void)          /* Sample time: [1.0s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         2789
#$$ld
.L5197:

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
#   /* S-Function (psc_cpu_loading): '<S21>/psc_CpuLoading1' */
#   /* S-Function Block: <S21>/psc_CpuLoading1
#    * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   atv_cpu_loading = psc_get_cpu_loading();
	.d2line		2794
	bl		psc_get_cpu_loading
	.d2line		2807
	lis		r31,pkn_task_1000ms_task_hdl@ha
# 
#   /* S-Function (psc_stack_used): '<S21>/psc_StackUsed' */
#   /*
#    * S-Function Block: <S21>/psc_StackUsed
#    * [$Id: psc_stack_used.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   atv_stack_used = psc_get_used_stack_size();
	stb		r3,atv_cpu_loading@sdarx(r0)
	.d2line		2801
	bl		psc_get_used_stack_size
# 
#   /* S-Function (pkn_task_duration): '<S21>/pkn_TaskDuration1' */
#   /* S-Function Block: <S21>/pkn_TaskDuration1
#    * [$Id: pkn_task_duration.tlc 34330 2013-07-01 12:56:28Z sbhattacharya $]
#    */
#   atv_task_duration_1s = pkn_get_task_duration(pkn_task_1000ms_task_hdl);
	stw		r3,atv_stack_used@sdarx(r0)
	lwz		r3,pkn_task_1000ms_task_hdl@l(r31)
	bl		pkn_get_task_duration
	stw		r3,atv_task_duration_1s@sdarx(r0)
# 
#   /* S-Function (psc_cpu_loading): '<S21>/psc_CpuLoading2' */
#   /* S-Function Block: <S21>/psc_CpuLoading2
#    * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   atv_cpu_loading_max = psc_get_max_cpu_loading();
	.d2line		2813
	bl		psc_get_max_cpu_loading
	stb		r3,atv_cpu_loading_max@sdarx(r0)
# 
#   /* S-Function (pkn_task_duration): '<S21>/pkn_TaskDuration2' */
#   /* S-Function Block: <S21>/pkn_TaskDuration2
#    * [$Id: pkn_task_duration.tlc 34330 2013-07-01 12:56:28Z sbhattacharya $]
#    */
#   atv_task_duration_1s_max = pkn_get_max_task_duration(pkn_task_1000ms_task_hdl);
	.d2line		2819
	lwz		r3,pkn_task_1000ms_task_hdl@l(r31)
	bl		pkn_get_max_task_duration
	stw		r3,atv_task_duration_1s_max@sdarx(r0)
# }
	.d2line		2820
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
.L5198:
	.type		ATV_output2,@function
	.size		ATV_output2,.-ATV_output2
# Number of nodes = 24

# Allocations for ATV_output2
#	not allocated	$$159
# static void ATV_update2(void)          /* Sample time: [1.0s, 0.0s] */
# {
	.align		1
	.section	.text_vle
        .d2line         2824
#$$ld
.L5202:

#$$bf	ATV_update2,interprocedural,nostackparams

# Regs written: r0,r3,r4,r5,r6,cr0,spefscr
	.d2_cfa_start __cie
ATV_update2:
	.d2line		0
	.d2prologue_end
	.d2line		2834
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
	bc		0,2,.L4239	# ne
#     ++ATV_M->Timing.clockTickH2;
	.d2line		2835
	lwz		r4,420(r3)
	se_addi		r4,1
	stw		r4,420(r3)
.L4239:
	.d2line		2838
	lwz		r5,420(r3)
#   }
# 
#   ATV_M->Timing.t[2] = ATV_M->Timing.clockTick2 * ATV_M->Timing.stepSize2 +
	e_lis		r6,20352
	.d2line		2835
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
	.d2line		2840
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5203:
	.type		ATV_update2,@function
	.size		ATV_update2,.-ATV_update2
# Number of nodes = 47

# Allocations for ATV_update2
#	?a4		$$166
#	?a5		$$165
#	?a6		$$164
#	not allocated	$$162
#	?a7		$$161
#	not allocated	$$160
#	?a8		$$11
#	?a9		$$10
# static void ATV_initialize(void)
# {
	.align		1
	.section	.text_vle
        .d2line         2886
#$$ld
.L5207:

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
#   /* S-Function Block: <S19>/pcfg_Config_M5xx
#    * [$Id: pcfg_config_m5xx.tlc 69984 2019-02-26 16:29:50Z jprewett $]
#    */
#   (void) pcfg_set_global_mios_prescaler_m5xx(PIO_CFG_MIOS_GLOBAL_FAST);
	.d2line		2895
	diab.li		r3,50
	.d2line		2932
	lis		r31,ATV_DW@ha
	bl		pcfg_set_global_mios_prescaler_m5xx
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XH3,
	e_add16i		r31,r31,ATV_DW@l
	.d2line		2896
	diab.li		r3,57
	diab.li		r4,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XH2,
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		2933
	lis		r27,ATV_B@ha
	.d2line		2898
	diab.li		r3,56
	diab.li		r4,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XH1,
	bl		pcfg_setup_pwm_clock_m5xx
	diab.li		r28,0
	.d2line		2900
	diab.li		r3,42
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XG1,
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
	e_add16i		r27,r27,ATV_B@l
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_ZB4,
	.d2line		2902
	diab.li		r3,36
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_DIN_XF1,
	.d2line		3017
	diab.li		r29,0
	.d2line		2904
	diab.li		r3,178
	diab.li		r4,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_DIN_XF4,
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		2906
	diab.li		r3,32
	diab.li		r4,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_YB2,
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		2908
	diab.li		r3,35
	diab.li		r4,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_YK3,
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		2910
	diab.li		r3,86
	diab.li		r4,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_DIN_XD4_MONITOR_D,
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		2912
	diab.li		r3,150
	diab.li		r4,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_0C,
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		2914
	diab.li		r3,27
	diab.li		r4,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_0F,
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		2916
	diab.li		r3,13
	diab.li		r4,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_1A,
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		2918
	diab.li		r3,14
	diab.li		r4,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_ZG4,
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		2920
	diab.li		r3,18
	diab.li		r4,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
#   (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_1F,
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		2922
	diab.li		r3,15
	diab.li		r4,0
#     PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
# 
#   /* Start for S-Function (pdx_digital_input): '<S6>/pdx_DigitalInput' */
# 
#   /* S-Function Block: <S6>/pdx_DigitalInput
#    * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
#    */
#   (void) pdx_digital_input(PIO_DIN_ZA3, NULL, TRUE);
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		2924
	diab.li		r3,17
	diab.li		r4,0
	bl		pcfg_setup_pwm_clock_m5xx
	.d2line		2932
	diab.li		r3,169
#   put_debounce_by_time_init(&pdx_DigitalInput_detm_wrk_data);
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_input
	.d2line		2933
	diab.addi		r3,r31,44
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
	.d2line		2936
	sth		r28,100(r27)
	.d2line		2946
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
	.d2line		2957
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
#   /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage2' incorporates:
#    *  Constant: '<S29>/Constant5'
#    *  Constant: '<S29>/Constant6'
#    */
# 
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage2
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_TransmitMessage2_msg_handle = pcx_declare_message(PCX_TX_MSG,
	sth		r3,pcx_CANdb_TransmitMessage1_msg_handle@sdarx(r0)
	.d2line		2971
	diab.li		r4,0
	diab.li		r6,8
	diab.li		r7,817
	diab.li		r5,0
	diab.li		r3,1
	bl		pcx_declare_message
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     817);
# 
#   /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage3' incorporates:
#    *  Constant: '<S1>/Constant'
#    *  Constant: '<S1>/Constant1'
#    *  Constant: '<S8>/fwd'
#    *  Constant: '<S8>/rwd'
#    */
# 
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage3
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_TransmitMessage3_msg_handle = pcx_declare_message(PCX_TX_MSG,
	sth		r3,pcx_CANdb_TransmitMessage2_msg_handle@sdarx(r0)
	.d2line		2987
	diab.li		r4,0
	diab.li		r6,8
	diab.li		r7,818
	diab.li		r5,0
	diab.li		r3,1
	bl		pcx_declare_message
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     818);
# 
#   /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage4' incorporates:
#    *  Constant: '<S28>/Constant5'
#    *  Constant: '<S28>/Constant6'
#    */
# 
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage4
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_TransmitMessage4_msg_handle = pcx_declare_message(PCX_TX_MSG,
	sth		r3,pcx_CANdb_TransmitMessage3_msg_handle@sdarx(r0)
	.d2line		3001
	diab.li		r4,0
	diab.li		r6,8
	diab.li		r7,785
	diab.li		r5,0
	diab.li		r3,1
	bl		pcx_declare_message
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     785);
# 
#   /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage5' incorporates:
#    *  Constant: '<S1>/Constant'
#    *  Constant: '<S1>/Constant1'
#    *  Constant: '<S8>/fwd'
#    *  Constant: '<S8>/rwd'
#    */
# 
#   /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage5
#    * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   pcx_CANdb_TransmitMessage5_msg_handle = pcx_declare_message(PCX_TX_MSG,
	sth		r3,pcx_CANdb_TransmitMessage4_msg_handle@sdarx(r0)
	.d2line		3017
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
#   /* Start for RateTransition: '<Root>/Rate Transition6' */
#   ATV_B.RateTransition6 = 0U;
	.d2line		3049
	diab.li		r4,0
# 
#   /* Start for RateTransition: '<Root>/Rate Transition7' */
#   ATV_B.RateTransition7 = 0U;
# 
#   /* Start for RateTransition: '<Root>/Rate Transition10' */
#   ATV_B.RateTransition10 = 0U;
# 
#   /* Start for RateTransition: '<Root>/Rate Transition8' */
#   ATV_B.RateTransition8 = 0U;
# 
#   /* Start for RateTransition: '<Root>/Rate Transition9' */
#   ATV_B.RateTransition9 = 0U;
	diab.li		r6,8
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
	.d2line		3024
	stw		r29,84(r27)
	diab.li		r5,0
	.d2line		3036
	sth		r28,88(r27)
	diab.li		r3,1
	.d2line		3042
	stb		r29,90(r27)
	bl		pcx_declare_message
	sth		r3,pcx_CANdb_TransmitMessage6_msg_handle@sdarx(r0)
#     PIO_CAN_YE4_YF4_A,
#     0,
#     8,
#     498);
# 
#   /* Start for S-Function (pdx_digital_output): '<S1>/pdx_DigitalOutput' */
# 
#   /* S-Function Block: <S1>/pdx_DigitalOutput
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_XD1_ENABLE_PSU_HOLD,
	.d2line		3060
	diab.li		r4,0
	diab.li		r5,1
	diab.li		r3,21
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
# 
#   /* S-Function Block: <S5>/pdx_DigitalOutput
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_YL4,
	.d2line		3071
	diab.li		r3,158
	diab.li		r4,0
	diab.li		r5,1
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
	.d2line		3082
	diab.li		r3,61
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput2' incorporates:
#    *  Constant: '<S5>/Constant1'
#    */
# 
#   /* S-Function Block: <S5>/pdx_DigitalOutput2
#    * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
#    */
#   (void) pdx_digital_output(PIO_DOT_XD4,
	.d2line		3093
	diab.li		r3,22
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)(false),
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
	.d2line		3104
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
	.d2line		3115
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
	.d2line		3126
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
	.d2line		3137
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
	.d2line		3148
	diab.li		r3,217
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
	.d2line		3160
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
	.d2line		3171
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
	.d2line		3182
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
	.d2line		3193
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
	.d2line		3207
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
	.d2line		3219
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
	.d2line		3230
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
	.d2line		3241
	diab.li		r3,149
	diab.li		r4,0
	diab.li		r5,1
	bl		pdx_digital_output
#     (U8)0.0,
#     TRUE);
# 
#   /* Start for S-Function (pcx_can_config): '<S17>/pcx_CANConfiguration' */
# 
#   /* S-Function Block: <S17>/pcx_CANConfiguration
#    * [$Id: pcx_can_config.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
#    */
#   pcx_config(PIO_CAN_YE4_YF4_A, PIO_CBAUD_500_KBPS);
	.d2line		3250
	diab.li		r3,0
	diab.li		r4,500
	bl		pcx_config
# 
#   /* Start for S-Function (psc_app_build_date): '<S22>/psc_AppBuildDate' */
# 
#   /*
#    * S-Function Block: <S22>/psc_AppBuildDate
#    * [$Id: psc_app_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 year;
#     U16 month;
#     U16 day;
#     (void) psc_get_application_build_date(&year, &month, &day);
	.d2line		3262
	diab.addi		r3,r1,8
	diab.addi		r4,r1,10
	diab.addi		r5,r1,12
	bl		psc_get_application_build_date
#     atv_app_code_year = year;
	.d2line		3264
	lhz		r0,10(r1)
	.d2line		3278
	diab.addi		r3,r1,14
#     atv_app_code_month = month;
	.d2line		3263
	lhz		r5,8(r1)
	diab.addi		r4,r1,16
#     atv_app_code_day = day;
	sth		r0,atv_app_code_month@sdarx(r0)
	sth		r5,atv_app_code_year@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_app_version): '<S22>/psc_AppVersion' */
# 
#   /*
#    * S-Function Block: <S22>/psc_AppVersion
#    * [$Id: psc_app_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 major_ver;
#     U16 minor_ver;
#     U16 sub_minor_ver;
#     (void) psc_get_application_version(&major_ver, &minor_ver, &sub_minor_ver);
	.d2line		3265
	lhz		r0,12(r1)
	diab.addi		r5,r1,18
	sth		r0,atv_app_code_day@sdarx(r0)
	bl		psc_get_application_version
#     atv_app_code_major_ver = major_ver;
	.d2line		3280
	lhz		r0,16(r1)
	.d2line		3294
	diab.addi		r3,r1,20
#     atv_app_code_minor_ver = minor_ver;
	.d2line		3279
	lhz		r5,14(r1)
	diab.addi		r4,r1,22
#     atv_app_code_subminor_ver = sub_minor_ver;
	sth		r0,atv_app_code_minor_ver@sdarx(r0)
	sth		r5,atv_app_code_major_ver@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_boot_build_date): '<S23>/psc_BootBuildDate' */
# 
#   /*
#    * S-Function Block: <S23>/psc_BootBuildDate
#    * [$Id: psc_boot_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 year;
#     U16 month;
#     U16 day;
#     (void) psc_get_boot_build_date(&year, &month, &day);
	.d2line		3281
	lhz		r0,18(r1)
	diab.addi		r5,r1,24
	sth		r0,atv_app_code_subminor_ver@sdarx(r0)
	bl		psc_get_boot_build_date
#     atv_boot_code_year = year;
	.d2line		3296
	lhz		r0,22(r1)
	.d2line		3310
	diab.addi		r3,r1,26
#     atv_boot_code_month = month;
	.d2line		3295
	lhz		r5,20(r1)
	diab.addi		r4,r1,28
#     atv_boot_code_day = day;
	sth		r0,atv_boot_code_month@sdarx(r0)
	sth		r5,atv_boot_code_year@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_boot_version): '<S23>/psc_BootVersion' */
# 
#   /*
#    * S-Function Block: <S23>/psc_BootVersion
#    * [$Id: psc_boot_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 major_ver;
#     U16 minor_ver;
#     U16 sub_minor_ver;
#     (void) psc_get_boot_version(&major_ver, &minor_ver, &sub_minor_ver);
	.d2line		3297
	lhz		r0,24(r1)
	diab.addi		r5,r1,30
	sth		r0,atv_boot_code_day@sdarx(r0)
	bl		psc_get_boot_version
#     atv_boot_code_major_ver = major_ver;
	.d2line		3312
	lhz		r0,28(r1)
	.d2line		3326
	diab.addi		r3,r1,32
#     atv_boot_code_minor_ver = minor_ver;
	.d2line		3311
	lhz		r5,26(r1)
	diab.addi		r4,r1,34
#     atv_boot_code_subminor_ver = sub_minor_ver;
	sth		r0,atv_boot_code_minor_ver@sdarx(r0)
	sth		r5,atv_boot_code_major_ver@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_prg_build_date): '<S24>/psc_PrgBuildDate' */
# 
#   /*
#    * S-Function Block: <S24>/psc_PrgBuildDate
#    * [$Id: psc_prg_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 year;
#     U16 month;
#     U16 day;
#     (void) psc_get_prg_build_date(&year, &month, &day);
	.d2line		3313
	lhz		r0,30(r1)
	diab.addi		r5,r1,36
	sth		r0,atv_boot_code_subminor_ver@sdarx(r0)
	bl		psc_get_prg_build_date
#     atv_prg_code_year = year;
	.d2line		3328
	lhz		r0,34(r1)
	.d2line		3342
	diab.addi		r3,r1,38
#     atv_prg_code_month = month;
	.d2line		3327
	lhz		r5,32(r1)
	diab.addi		r4,r1,40
#     atv_prg_code_day = day;
	sth		r0,atv_prg_code_month@sdarx(r0)
	sth		r5,atv_prg_code_year@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_prg_version): '<S24>/psc_PrgVersion' */
# 
#   /*
#    * S-Function Block: <S24>/psc_PrgVersion
#    * [$Id: psc_prg_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 major_ver;
#     U16 minor_ver;
#     U16 sub_minor_ver;
#     (void) psc_get_prg_version(&major_ver, &minor_ver, &sub_minor_ver);
	.d2line		3329
	lhz		r0,36(r1)
	diab.addi		r5,r1,42
	sth		r0,atv_prg_code_day@sdarx(r0)
	bl		psc_get_prg_version
#     atv_prg_code_major_ver = major_ver;
	.d2line		3344
	lhz		r0,40(r1)
	.d2line		3358
	diab.addi		r3,r1,44
#     atv_prg_code_minor_ver = minor_ver;
	.d2line		3343
	lhz		r5,38(r1)
	diab.addi		r4,r1,46
#     atv_prg_code_subminor_ver = sub_minor_ver;
	sth		r0,atv_prg_code_minor_ver@sdarx(r0)
	sth		r5,atv_prg_code_major_ver@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_platform_build_date): '<S25>/psc_PlatformBuildDate' */
# 
#   /*
#    * S-Function Block: <S25>/psc_PlatformBuildDate
#    * [$Id: psc_platform_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 year;
#     U16 month;
#     U16 day;
#     (void) psc_get_platform_build_date(&year, &month, &day);
	.d2line		3345
	lhz		r0,42(r1)
	diab.addi		r5,r1,48
	sth		r0,atv_prg_code_subminor_ver@sdarx(r0)
	bl		psc_get_platform_build_date
#     atv_platform_code_year = year;
	.d2line		3381
	diab.li		r30,0
	.d2line		3359
	lhz		r0,44(r1)
#     atv_platform_code_month = month;
	.d2line		3374
	diab.addi		r3,r1,50
	.d2line		3360
	lhz		r6,46(r1)
#     atv_platform_code_day = day;
	diab.addi		r4,r1,52
	sth		r0,atv_platform_code_year@sdarx(r0)
#   }
# 
#   /* Start for S-Function (psc_platform_version): '<S25>/psc_PlatformVersion' */
# 
#   /*
#    * S-Function Block: <S25>/psc_PlatformVersion
#    * [$Id: psc_platform_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
#    */
#   {
#     U16 major_ver;
#     U16 minor_ver;
#     U16 sub_minor_ver;
#     (void) psc_get_platform_version(&major_ver, &minor_ver, &sub_minor_ver);
	diab.addi		r5,r1,54
	sth		r6,atv_platform_code_month@sdarx(r0)
	.d2line		3361
	lhz		r0,48(r1)
	sth		r0,atv_platform_code_day@sdarx(r0)
#     atv_platform_code_major_ver = major_ver;
	bl		psc_get_platform_version
	.d2line		3376
	lhz		r0,52(r1)
#     atv_platform_code_minor_ver = minor_ver;
	.d2line		3460
	diab.addi		r3,r31,38
	.d2line		3375
	lhz		r4,50(r1)
#     atv_platform_code_subminor_ver = sub_minor_ver;
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
	.d2line		3377
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
	.d2line		3387
	sth		r28,10(r31)
	.d2line		3393
	stw		r29,12(r31)
	.d2line		3405
	stb		r29,16(r31)
# 
#   /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S3>/pcx_CANdb_ReceiveMessage' */
# 
#   /* S-Function Block: <S3>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   ATV_B.pcx_CANdb_ReceiveMessage_o4 = 0;
	.d2line		3381
	sth		r28,30(r31)
#   ATV_B.pcx_CANdb_ReceiveMessage_o5 = 0;
	.d2line		3412
	stw		r30,12(r27)
#   ATV_B.pcx_CANdb_ReceiveMessage_o6 = 0;
	.d2line		3413
	stw		r30,16(r27)
# 
#   /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S4>/pcx_CANdb_ReceiveMessage' */
# 
#   /* S-Function Block: <S4>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   ATV_B.pcx_CANdb_ReceiveMessage_o4_k = 0;
	.d2line		3414
	stw		r30,20(r27)
#   ATV_B.pcx_CANdb_ReceiveMessage_o5_c = 0;
	.d2line		3421
	stw		r30,24(r27)
#   ATV_B.pcx_CANdb_ReceiveMessage_o6_o = 0;
	.d2line		3422
	stw		r30,28(r27)
#   ATV_B.pcx_CANdb_ReceiveMessage_o7 = 0;
	.d2line		3423
	stw		r30,32(r27)
#   ATV_B.pcx_CANdb_ReceiveMessage_o8 = 0;
	.d2line		3424
	stw		r30,36(r27)
#   ATV_B.pcx_CANdb_ReceiveMessage_o9 = 0;
	.d2line		3425
	stw		r30,40(r27)
#   ATV_B.pcx_CANdb_ReceiveMessage_o10 = 0;
	.d2line		3426
	stw		r30,44(r27)
# 
#   /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S2>/pcx_CANdb_ReceiveMessage' */
# 
#   /* S-Function Block: <S2>/pcx_CANdb_ReceiveMessage
#    * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
#    */
#   ATV_B.pcx_CANdb_ReceiveMessage_o4_n = 0;
	.d2line		3427
	stw		r30,48(r27)
#   ATV_B.pcx_CANdb_ReceiveMessage_o5_m = 0;
	.d2line		3434
	stw		r30,56(r27)
#   bms_pack_voltage = 0;
	.d2line		3435
	stw		r30,60(r27)
#   ATV_B.atv_bms_pack_current = 0;
	.d2line		3436
	stw		r30,bms_pack_voltage@sdarx(r0)
#   ATV_B.atv_bms_pack_soh = 0;
	.d2line		3437
	stw		r30,64(r27)
#   ATV_B.pcx_CANdb_ReceiveMessage_o9_c = 0;
	.d2line		3438
	stw		r30,68(r27)
# 
#   /* SystemInitialize for Chart: '<S8>/VSM' */
#   ATV_DW.is_CHG_CTRL = ATV_IN_NO_ACTIVE_CHILD_m;
#   ATV_DW.temporalCounter_i2 = 0U;
#   ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_m;
#   ATV_DW.temporalCounter_i3 = 0U;
#   ATV_DW.is_HEATER_CTRL = ATV_IN_NO_ACTIVE_CHILD_m;
#   ATV_DW.is_HV_CTRL = ATV_IN_NO_ACTIVE_CHILD_m;
#   ATV_DW.is_STARTTRIGGER = ATV_IN_NO_ACTIVE_CHILD_m;
#   ATV_DW.temporalCounter_i1_m = 0U;
#   ATV_DW.is_active_c3_ATV = 0U;
#   ATV_DW.is_c3_ATV = ATV_IN_NO_ACTIVE_CHILD_m;
# 
#   /* SystemInitialize for Chart: '<S31>/PUMP LOGIC' */
#   ATV_DW.is_PumpALogic = ATV_IN_NO_ACTIVE_CHILD_m;
#   ATV_DW.is_PumpBLogic = ATV_IN_NO_ACTIVE_CHILD_m;
#   ATV_DW.temporalCounter_i1 = 0U;
	.d2line		3439
	stw		r30,72(r27)
	.d2line		3456
	sth		r28,8(r31)
	.d2line		3450
	stb		r29,17(r31)
	.d2line		3451
	sth		r28,18(r31)
	.d2line		3442
	stw		r29,20(r31)
	.d2line		3449
	stw		r29,24(r31)
#   ATV_DW.is_active_c6_ATV = 0U;
# 
#   /* SystemInitialize for Chart: '<S3>/Chart' */
#   ATV_Chart_Init(&ATV_DW.sf_Chart);
	.d2line		3454
	sth		r28,28(r31)
	.d2line		3460
	bl		ATV_Chart_Init
# 
#   /* SystemInitialize for Chart: '<S4>/Chart' */
#   ATV_Chart_Init(&ATV_DW.sf_Chart_b);
	.d2line		3463
	diab.addi		r3,r31,35
	bl		ATV_Chart_Init
# }
	.d2line		3464
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
.L5208:
	.type		ATV_initialize,@function
	.size		ATV_initialize,.-ATV_initialize
# Number of nodes = 875

# Allocations for ATV_initialize
#	?a4		$$206
#	?a5		$$172
#	?a6		$$171
#	?a7		$$170
#	?a8		$$169
#	?a9		$$168
#	?a10		$$167
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
        .d2line         3476
#$$ld
.L5237:

#$$bf	MdlOutputs,interprocedural,nostackparams
	.globl		MdlOutputs
	.d2_cfa_start __cie
MdlOutputs:
.Llo549:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	.d2prologue_end
	.d2line		2845
	se_cmpi		r3,0
	bc		1,2,.L4277	# eq
	se_cmpi		r3,1
	bc		1,2,.L4278	# eq
	se_cmpi		r3,2
	bc		1,2,.L4279	# eq
	b		.L4280
.L4277:
	.d2line		2847
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_output0
.L4278:
	.d2line		2851
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_output1
.L4279:
	.d2line		2855
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_output2
.L4280:
#   ATV_output(tid);
# }
	.d2line		3478
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo550:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5238:
	.type		MdlOutputs,@function
	.size		MdlOutputs,.-MdlOutputs
# Number of nodes = 4

# Allocations for MdlOutputs
#	?a4		tid
#	not allocated	$$17
#	not allocated	tid
# void MdlUpdate(int_T tid)
# {
	.align		2
	.section	.text_vle
        .d2line         3481
#$$ld
.L5243:

#$$bf	MdlUpdate,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r12,cr0,lr,spefscr
	.globl		MdlUpdate
	.d2_cfa_start __cie
MdlUpdate:
.Llo551:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	.d2prologue_end
	.d2line		2866
	se_cmpi		r3,0
	bc		1,2,.L4281	# eq
	se_cmpi		r3,1
	bc		1,2,.L4282	# eq
	se_cmpi		r3,2
	bc		1,2,.L4283	# eq
	b		.L4284
.L4281:
	.d2line		2868
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_update0
.L4282:
	.d2line		2872
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_update1
.L4283:
	.d2line		2876
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_update2
.L4284:
#   ATV_update(tid);
# }
	.d2line		3483
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo552:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5244:
	.type		MdlUpdate,@function
	.size		MdlUpdate,.-MdlUpdate
# Number of nodes = 4

# Allocations for MdlUpdate
#	?a4		tid
#	not allocated	$$18
#	not allocated	tid
# void MdlInitializeSizes(void)
# {
	.align		2
	.section	.text_vle
        .d2line         3486
#$$ld
.L5249:

#$$bf	MdlInitializeSizes,interprocedural,nostackparams

# Regs written: 
	.globl		MdlInitializeSizes
	.d2_cfa_start __cie
MdlInitializeSizes:
	.d2line		0
	.d2prologue_end
# }
	.d2line		3487
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5250:
	.type		MdlInitializeSizes,@function
	.size		MdlInitializeSizes,.-MdlInitializeSizes
# Number of nodes = 0

# Allocations for MdlInitializeSizes
# void MdlInitializeSampleTimes(void)
# {
	.align		2
	.section	.text_vle
        .d2line         3490
#$$ld
.L5254:

#$$bf	MdlInitializeSampleTimes,interprocedural,nostackparams

# Regs written: 
	.globl		MdlInitializeSampleTimes
	.d2_cfa_start __cie
MdlInitializeSampleTimes:
	.d2line		0
	.d2prologue_end
# }
	.d2line		3491
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5255:
	.type		MdlInitializeSampleTimes,@function
	.size		MdlInitializeSampleTimes,.-MdlInitializeSampleTimes
# Number of nodes = 0

# Allocations for MdlInitializeSampleTimes
# void MdlInitialize(void)
# {
	.align		2
	.section	.text_vle
        .d2line         3494
#$$ld
.L5259:

#$$bf	MdlInitialize,interprocedural,nostackparams

# Regs written: 
	.globl		MdlInitialize
	.d2_cfa_start __cie
MdlInitialize:
	.d2line		0
	.d2prologue_end
# }
	.d2line		3495
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5260:
	.type		MdlInitialize,@function
	.size		MdlInitialize,.-MdlInitialize
# Number of nodes = 0

# Allocations for MdlInitialize
# void MdlStart(void)
# {
	.align		2
	.section	.text_vle
        .d2line         3498
#$$ld
.L5264:

#$$bf	MdlStart,interprocedural,nostackparams
	.globl		MdlStart
	.d2_cfa_start __cie
MdlStart:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	.d2prologue_end
#   ATV_initialize();
	.d2line		3499
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		ATV_initialize
# }
	.d2line		3500
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5265:
	.type		MdlStart,@function
	.size		MdlStart,.-MdlStart
# Number of nodes = 2

# Allocations for MdlStart
# void MdlTerminate(void)
# {
	.align		2
	.section	.text_vle
        .d2line         3503
#$$ld
.L5269:

#$$bf	MdlTerminate,interprocedural,nostackparams

# Regs written: 
	.globl		MdlTerminate
	.d2_cfa_start __cie
MdlTerminate:
	.d2line		0
	.d2prologue_end
#   ATV_terminate();
# }
	.d2line		3505
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5270:
	.type		MdlTerminate,@function
	.size		MdlTerminate,.-MdlTerminate
# Number of nodes = 2

# Allocations for MdlTerminate
#	not allocated	$$12
# RT_MODEL_ATV_T *ATV(void)
# {
	.align		2
	.section	.text_vle
        .d2line         3509
#$$ld
.L5274:

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
	.d2line		3513
	diab.li		r3,4
	lis		r29,ATV_M@ha
	e_add16i		r29,r29,ATV_M@l
	bl		rt_InitInfAndNaN
# 
#   /* initialize real-time model */
#   (void) memset((void *)ATV_M, 0,
	.d2line		3521
	diab.li		r30,0
	.d2line		3516
	lwz		r3,0(r29)
	diab.li		r4,0		# mdlSampleHits=r4
	diab.li		r5,580
	.d2line		3522
	diab.li		r31,1
#                 sizeof(RT_MODEL_ATV_T));
# 
#   /* Initialize timing info */
#   {
#     int_T *mdlTsMap = ATV_M->Timing.sampleTimeTaskIDArray;
	bl		memset
	.d2line		3523
	diab.li		r7,2
#     mdlTsMap[0] = 0;
	lwz		r4,0(r29)		# mdlSampleHits=r4
	.d2line		3527
.Llo553:
	e_lis		r6,15395
	.d2line		3530
	e_lis		r5,15820
#     mdlTsMap[1] = 1;
	e_or2i		r6,55050
	e_or2i		r5,52429
	.d2line		3531
	e_lis		r0,16256
#     mdlTsMap[2] = 2;
	.d2line		3557
	stw		r7,44(r4)		# mdlSampleHits=r4
#     ATV_M->Timing.sampleTimeTaskIDPtr = (&mdlTsMap[0]);
	.d2line		3550
	e_lis		r26,-16512		# mdlSampleHits=r26
#     ATV_M->Timing.sampleTimes = (&ATV_M->Timing.sampleTimesArray[0]);
	.d2line		3556
	stw		r6,64(r4)		# mdlSampleHits=r4
	lis		r3,ATV_B@ha
	.d2line		3555
	stw		r6,388(r4)		# mdlSampleHits=r4
#     ATV_M->Timing.offsetTimes = (&ATV_M->Timing.offsetTimesArray[0]);
	e_add16i		r3,r3,ATV_B@l
	.d2line		3521
	diab.addi		r27,r4,508		# mdlTsMap=r27 mdlSampleHits=r4
	.d2line		3560
	stw		r3,240(r4)		# mdlSampleHits=r4
# 
#     /* task periods */
#     ATV_M->Timing.sampleTimes[0] = (0.01);
	.d2line		3526
	diab.addi		r25,r4,484		# mdlSampleHits=r4
	.d2line		3551
	stw		r6,400(r4)		# mdlSampleHits=r4
#     ATV_M->Timing.sampleTimes[1] = (0.1);
	.d2line		3527
	diab.addi		r28,r4,496		# mdlSampleHits=r4
	.d2line		3561
	diab.addi		r3,r3,-4
#     ATV_M->Timing.sampleTimes[2] = (1.0);
	.d2line		3552
	stw		r5,412(r4)		# mdlSampleHits=r4
	.d2line		3553
	stw		r0,424(r4)		# mdlSampleHits=r4
# 
#     /* task offsets */
#     ATV_M->Timing.offsetTimes[0] = (0.0);
	.d2line		3540
	diab.addi		r24,r4,568		# mdlSampleHits=r4
#     ATV_M->Timing.offsetTimes[1] = (0.0);
	.d2line		3550
	stw		r26,436(r4)		# mdlSampleHits=r4 mdlSampleHits=r26
#     ATV_M->Timing.offsetTimes[2] = (0.0);
	.d2line		3532
	mr		r8,r30
#   }
# 
#   rtmSetTPtr(ATV_M, &ATV_M->Timing.tArray[0]);
	.d2line		3526
	stw		r25,460(r4)		# mdlSampleHits=r4
	.d2line		3543
	diab.addi		r26,r4,520		# mdlSampleHits=r26 mdlSampleHits=r4
# 
#   {
#     int_T *mdlSampleHits = ATV_M->Timing.sampleHitArray;
	.d2line		3527
	stw		r28,464(r4)		# mdlSampleHits=r4
#     int_T *mdlPerTaskSampleHits = ATV_M->Timing.perTaskSampleHitsArray;
#     ATV_M->Timing.perTaskSampleHits = (&mdlPerTaskSampleHits[0]);
	.d2line		3545
	diab.addi		r25,r4,532		# mdlSampleHits=r4
	.d2line		3525
	stw		r27,468(r4)		# mdlSampleHits=r4 mdlTsMap=r27
#     mdlSampleHits[0] = 1;
	.d2line		3554
	diab.addi		r28,r4,24		# mdlSampleHits=r4
#     ATV_M->Timing.sampleHits = (&mdlSampleHits[0]);
	.d2line		3547
	stw		r26,472(r4)		# mdlSampleHits=r4 mdlSampleHits=r26
#   }
# 
#   rtmSetTFinal(ATV_M, -1);
#   ATV_M->Timing.stepSize0 = 0.01;
	stw		r28,232(r4)		# mdlSampleHits=r4
#   ATV_M->Timing.stepSize1 = 0.1;
	stw		r25,476(r4)		# mdlSampleHits=r4
#   ATV_M->Timing.stepSize2 = 1.0;
	.d2line		3561
	diab.li		r28,20
	.d2line		3540
	stw		r24,480(r4)		# mdlSampleHits=r4
	mtspr		ctr,r28
#   ATV_M->solverInfoPtr = (&ATV_M->solverInfo);
	.d2line		3530
	stw		r6,484(r4)		# mdlSampleHits=r4
	diab.li		r28,0
#   ATV_M->Timing.stepSize = (0.01);
#   rtsiSetFixedStepSize(&ATV_M->solverInfo, 0.01);
	.d2line		3531
	stw		r5,488(r4)		# mdlSampleHits=r4
	.d2line		3532
	stw		r0,492(r4)		# mdlSampleHits=r4
#   rtsiSetSolverMode(&ATV_M->solverInfo, SOLVER_MODE_MULTITASKING);
	.d2line		3535
	stw		r30,496(r4)		# mdlSampleHits=r4
	.d2line		3536
	stw		r30,500(r4)		# mdlSampleHits=r4
# 
#   /* block I/O */
#   ATV_M->blockIO = ((void *) &ATV_B);
	.d2line		3537
	stw		r30,504(r4)		# mdlSampleHits=r4
#   (void) memset(((void *) &ATV_B), 0,
	.d2line		3522
	stw		r30,508(r4)		# mdlTsMap=r4
	.d2line		3523
	stw		r31,512(r4)		# mdlTsMap=r4
	.d2line		3524
	stw		r7,516(r4)		# mdlTsMap=r4
	.d2line		3546
	stw		r31,520(r4)		# mdlSampleHits=r4
.L5284:
	.d2line		3561
.Llo554:
	stwu		r28,4(r3)
	stwu		r28,4(r3)
	bc		2,0,.L5284
	stw		r28,4(r3)
#                 sizeof(B_ATV_T));
# 
#   /* exported global signals */
#   atv_xd3_raw_ain = 0.0;
	.d2line		3573
	diab.li		r5,0
#   atv_xa1_ain_throttle_raw = 0.0;
	.d2line		3611
	lis		r4,ATV_DW@ha		# mdlSampleHits=r4
	.d2line		3615
.Llo555:
	diab.li		r0,5
#   atv_dbg_FAN_out = 0.0;
	.d2line		3568
	stw		r8,bms_pack_voltage@sdarx(r0)
#   bms_pack_voltage = 0.0;
	e_add16i		r4,r4,ATV_DW@l		# mdlSampleHits=r4 mdlSampleHits=r4
#   atv_stack_used = 0U;
	.d2line		3565
	stw		r8,atv_xd3_raw_ain@sdarx(r0)
#   atv_task_duration_1s = 0U;
	mtspr		ctr,r0
#   atv_task_duration_1s_max = 0U;
	.d2line		3566
	stw		r8,atv_xa1_ain_throttle_raw@sdarx(r0)
#   atv_xd1_key_ain = 0;
	diab.addi		r3,r4,-4		# mdlSampleHits=r4
#   atv_xe3_ain = 0;
	.d2line		3567
	stw		r8,atv_dbg_FAN_out@sdarx(r0)
	.d2line		3569
	stw		r30,atv_stack_used@sdarx(r0)
#   atv_throttleX1000 = 0U;
	.d2line		3570
	stw		r30,atv_task_duration_1s@sdarx(r0)
#   atv_app_code_year = 0U;
	.d2line		3571
	stw		r30,atv_task_duration_1s_max@sdarx(r0)
#   atv_app_code_month = 0U;
	.d2line		3572
	stw		r30,atv_xd1_key_ain@sdarx(r0)
#   atv_app_code_day = 0U;
	.d2line		3573
	stw		r30,atv_xe3_ain@sdarx(r0)
#   atv_app_code_major_ver = 0U;
	.d2line		3574
	sth		r5,atv_throttleX1000@sdarx(r0)
#   atv_app_code_minor_ver = 0U;
	.d2line		3575
	sth		r5,atv_app_code_year@sdarx(r0)
#   atv_app_code_subminor_ver = 0U;
	.d2line		3576
	sth		r5,atv_app_code_month@sdarx(r0)
#   atv_boot_code_year = 0U;
	.d2line		3577
	sth		r5,atv_app_code_day@sdarx(r0)
#   atv_boot_code_month = 0U;
	.d2line		3578
	sth		r5,atv_app_code_major_ver@sdarx(r0)
#   atv_boot_code_day = 0U;
	.d2line		3579
	sth		r5,atv_app_code_minor_ver@sdarx(r0)
#   atv_boot_code_major_ver = 0U;
	.d2line		3580
	sth		r5,atv_app_code_subminor_ver@sdarx(r0)
#   atv_boot_code_minor_ver = 0U;
	.d2line		3581
	sth		r5,atv_boot_code_year@sdarx(r0)
#   atv_boot_code_subminor_ver = 0U;
	.d2line		3582
	sth		r5,atv_boot_code_month@sdarx(r0)
#   atv_prg_code_year = 0U;
	.d2line		3583
	sth		r5,atv_boot_code_day@sdarx(r0)
#   atv_prg_code_month = 0U;
	.d2line		3584
	sth		r5,atv_boot_code_major_ver@sdarx(r0)
#   atv_prg_code_day = 0U;
	.d2line		3585
	sth		r5,atv_boot_code_minor_ver@sdarx(r0)
#   atv_prg_code_major_ver = 0U;
	.d2line		3586
	sth		r5,atv_boot_code_subminor_ver@sdarx(r0)
#   atv_prg_code_minor_ver = 0U;
	.d2line		3587
	sth		r5,atv_prg_code_year@sdarx(r0)
#   atv_prg_code_subminor_ver = 0U;
	.d2line		3588
	sth		r5,atv_prg_code_month@sdarx(r0)
#   atv_platform_code_year = 0U;
	.d2line		3589
	sth		r5,atv_prg_code_day@sdarx(r0)
#   atv_platform_code_month = 0U;
	.d2line		3590
	sth		r5,atv_prg_code_major_ver@sdarx(r0)
#   atv_platform_code_day = 0U;
	.d2line		3591
	sth		r5,atv_prg_code_minor_ver@sdarx(r0)
#   atv_platform_code_major_ver = 0U;
	.d2line		3592
	sth		r5,atv_prg_code_subminor_ver@sdarx(r0)
#   atv_platform_code_minor_ver = 0U;
	.d2line		3593
	sth		r5,atv_platform_code_year@sdarx(r0)
#   atv_platform_code_subminor_ver = 0U;
	.d2line		3594
	sth		r5,atv_platform_code_month@sdarx(r0)
#   atv_cpu_loading = 0U;
	.d2line		3595
	sth		r5,atv_platform_code_day@sdarx(r0)
#   atv_cpu_loading_max = 0U;
	.d2line		3596
	sth		r5,atv_platform_code_major_ver@sdarx(r0)
#   atv_state_out = 0U;
	.d2line		3597
	sth		r5,atv_platform_code_minor_ver@sdarx(r0)
#   atv_sub_state_out = 0U;
	.d2line		3598
	sth		r5,atv_platform_code_subminor_ver@sdarx(r0)
#   atv_key_signal = false;
	.d2line		3599
	stb		r5,atv_cpu_loading@sdarx(r0)
#   atv_za3_StartBtn_din = false;
	.d2line		3600
	stb		r5,atv_cpu_loading_max@sdarx(r0)
#   atv_fs1_in = false;
	.d2line		3601
	stb		r5,atv_state_out@sdarx(r0)
#   atv_v_dbg_chg_req = false;
	.d2line		3602
	stb		r5,atv_sub_state_out@sdarx(r0)
#   atv_v_dbg_heater_req = false;
	.d2line		3603
	stb		r5,atv_key_signal@sdarx(r0)
#   atv_wakelock_out = false;
	.d2line		3604
	stb		r5,atv_za3_StartBtn_din@sdarx(r0)
#   atv_runLed_out = false;
	.d2line		3605
	stb		r5,atv_fs1_in@sdarx(r0)
#   atv_en_dcdc_out = false;
	.d2line		3606
	stb		r5,atv_v_dbg_chg_req@sdarx(r0)
#   atv_dbg_pumpB_out = false;
	.d2line		3607
	stb		r5,atv_v_dbg_heater_req@sdarx(r0)
	.d2line		3608
	stb		r5,atv_wakelock_out@sdarx(r0)
# 
#   /* states (dwork) */
#   ATV_M->dwork = ((void *) &ATV_DW);
	.d2line		3609
	stb		r5,atv_runLed_out@sdarx(r0)
	.d2line		3610
	stb		r5,atv_en_dcdc_out@sdarx(r0)
#   (void) memset((void *)&ATV_DW, 0,
	.d2line		3611
	stb		r5,atv_dbg_pumpB_out@sdarx(r0)
	.d2line		3614
	lwz		r6,0(r29)
	stw		r4,292(r6)		# mdlSampleHits=r4
.L5285:
	.d2line		3615
.Llo556:
	stwu		r5,4(r3)
	stwu		r5,4(r3)
	bc		2,0,.L5285
	stw		r5,4(r3)
	.d2line		3623
	diab.li		r6,3
#                 sizeof(DW_ATV_T));
# 
#   /* Initialize Sizes */
#   ATV_M->Sizes.numContStates = (0);    /* Number of continuous states */
	.d2line		3625
	diab.li		r4,108		# mdlSampleHits=r4
#   ATV_M->Sizes.numY = (0);             /* Number of model outputs */
#   ATV_M->Sizes.numU = (0);             /* Number of model inputs */
	.d2line		3615
.Llo557:
	lwz		r3,0(r29)
	.d2line		3624
	diab.li		r5,285
#   ATV_M->Sizes.sysDirFeedThru = (0);   /* The model is not direct feedthrough */
#   ATV_M->Sizes.numSampTimes = (3);     /* Number of sample times */
	.d2line		3619
	stw		r30,316(r3)
	.d2line		3621
	stw		r30,324(r3)
#   ATV_M->Sizes.numBlocks = (285);      /* Number of blocks */
	.d2line		3620
	stw		r30,328(r3)
	.d2line		3623
	stw		r6,332(r3)
#   ATV_M->Sizes.numBlockIO = (108);     /* Number of block outputs */
	.d2line		3624
	stw		r5,336(r3)
	.d2line		3625
	stw		r4,340(r3)		# mdlSampleHits=r4
	.d2line		3622
	stw		r30,372(r3)
#   return ATV_M;
# }
	.d2line		3627
	.d2epilogue_begin
	lmw		r24,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo558:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5275:
	.type		ATV,@function
	.size		ATV,.-ATV
# Number of nodes = 406

# Allocations for ATV
#	?a4		$$192
#	?a5		$$191
#	?a6		$$190
#	?a7		$$189
#	?a8		$$188
#	?a9		$$187
#	?a10		$$186
#	?a11		$$185
#	?a12		$$184
#	?a13		$$183
#	?a14		$$182
#	?a15		$$181
#	?a16		$$180
#	?a17		$$179
#	?a18		$$177
#	not allocated	$$176
#	not allocated	$$175
#	not allocated	$$174
#	not allocated	$$173
#	?a19		mdlTsMap
#	?a20		mdlSampleHits
#	not allocated	mdlPerTaskSampleHits
# void psc_initialise_app(void)
# {
	.align		2
	.section	.text_vle
        .d2line         3641
#$$ld
.L5288:

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
	.d2line		3643
	diab.li		r3,4
	bl		rt_InitInfAndNaN
# 
#   /* Register the simulation. */
#   S = MODEL();
	.d2line		3646
	bl		ATV
	.d2line		3649
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
	.d2line		3499
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
	.d2line		3661
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5289:
	.type		psc_initialise_app,@function
	.size		psc_initialise_app,.-psc_initialise_app
# Number of nodes = 59

# Allocations for psc_initialise_app
#	?a4		$$193
#	not allocated	$$23
#	not allocated	$$22
#	not allocated	$$21
# void psc_background_app(void)
# {
	.align		2
	.section	.text_vle
        .d2line         3672
#$$ld
.L5293:

#$$bf	psc_background_app,interprocedural,nostackparams

# Regs written: 
	.globl		psc_background_app
	.d2_cfa_start __cie
psc_background_app:
	.d2line		0
	.d2prologue_end
#   /* Nothing to do for Simulink models. */
# }
	.d2line		3674
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5294:
	.type		psc_background_app,@function
	.size		psc_background_app,.-psc_background_app
# Number of nodes = 0

# Allocations for psc_background_app
# void pkn_angular_model_task(void)
# {
	.align		2
	.section	.text_vle
        .d2line         3685
#$$ld
.L5298:

#$$bf	pkn_angular_model_task,interprocedural,nostackparams

# Regs written: 
	.globl		pkn_angular_model_task
	.d2_cfa_start __cie
pkn_angular_model_task:
	.d2line		0
	.d2prologue_end
#   /* No angular functionality, task declared for linkage only. */
# }
	.d2line		3687
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5299:
	.type		pkn_angular_model_task,@function
	.size		pkn_angular_model_task,.-pkn_angular_model_task
# Number of nodes = 0

# Allocations for pkn_angular_model_task
# void pkn_10ms_model_task(void)
# {
	.align		2
	.section	.text_vle
        .d2line         3697
#$$ld
.L5303:

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
	.d2line		3698
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
	.d2line		3702
.Llo559:
	lwz		r4,S@sdarx(r0)
	stw		r3,48(r4)		# tnext=r3
	.d2line		2847
	bl		ATV_output0
	.d2line		2868
.Llo560:
	bl		ATV_update0
	lwz		r3,S@sdarx(r0)		# tnext=r3
#   MdlOutputs(0);
#   MdlUpdate(0);
#   rt_SimUpdateDiscreteTaskTime(rtmGetTPtr(S),
	.d2line		3705
.Llo561:
	diab.li		r5,0
	lwz		r0,20(r1)
	lwz		r4,444(r3)		# tnext=r3
	mtspr		lr,r0
	lwz		r3,480(r3)		# tnext=r3 tnext=r3
	.d2line		3698
.Llo562:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	b		rt_SimUpdateDiscreteTaskTime
#     rtmGetTimingData(S), 0);
# }
	.d2line		3707
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5304:
	.type		pkn_10ms_model_task,@function
	.size		pkn_10ms_model_task,.-pkn_10ms_model_task
# Number of nodes = 52

# Allocations for pkn_10ms_model_task
#	?a4		$$195
#	?a5		$$194
#	not allocated	$$29
#	not allocated	$$28
#	not allocated	$$20
#	not allocated	$$19
#	?a6		tnext
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid
# void pkn_100ms_model_task(void)
# {
	.align		2
	.section	.text_vle
        .d2line         3717
#$$ld
.L5310:

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
	.d2line		2851
	bl		ATV_output1
	.d2line		2872
	bl		ATV_update1
	lwz		r3,S@sdarx(r0)
#   MdlOutputs(1);
#   MdlUpdate(1);
#   rt_SimUpdateDiscreteTaskTime(rtmGetTPtr(S),
	.d2line		3720
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
	.d2line		3722
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5311:
	.type		pkn_100ms_model_task,@function
	.size		pkn_100ms_model_task,.-pkn_100ms_model_task
# Number of nodes = 22

# Allocations for pkn_100ms_model_task
#	?a4		$$196
#	not allocated	$$26
#	not allocated	$$24
#	not allocated	$$15
#	not allocated	$$13
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid
# void pkn_1000ms_model_task(void)
# {
	.align		2
	.section	.text_vle
        .d2line         3732
#$$ld
.L5315:

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
	.d2line		2855
	bl		ATV_output2
	.d2line		2876
	bl		ATV_update2
	lwz		r3,S@sdarx(r0)
#   MdlOutputs(2);
#   MdlUpdate(2);
#   rt_SimUpdateDiscreteTaskTime(rtmGetTPtr(S),
	.d2line		3735
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
	.d2line		3737
	.d2epilogue_begin
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5316:
	.type		pkn_1000ms_model_task,@function
	.size		pkn_1000ms_model_task,.-pkn_1000ms_model_task
# Number of nodes = 22

# Allocations for pkn_1000ms_model_task
#	?a4		$$197
#	not allocated	$$27
#	not allocated	$$25
#	not allocated	$$16
#	not allocated	$$14
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid
#	not allocated	tid

# Allocations for module
	.section	.text_vle
	.0byte		.L5318
	.bss
	.0byte		.L5326
	.bss
	.type		ATV_B,@object
	.size		ATV_B,164
	.align		2
	.globl		ATV_B
ATV_B:
	.space		164
	.sbss
	.0byte		.L5334
	.sbss
	.type		atv_xd3_raw_ain,@object
	.size		atv_xd3_raw_ain,4
	.align		2
	.globl		atv_xd3_raw_ain
atv_xd3_raw_ain:
	.space		4
	.sbss
	.type		atv_xa1_ain_throttle_raw,@object
	.size		atv_xa1_ain_throttle_raw,4
	.align		2
	.globl		atv_xa1_ain_throttle_raw
atv_xa1_ain_throttle_raw:
	.space		4
	.sbss
	.type		atv_dbg_FAN_out,@object
	.size		atv_dbg_FAN_out,4
	.align		2
	.globl		atv_dbg_FAN_out
atv_dbg_FAN_out:
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
	.type		atv_fs1_in,@object
	.size		atv_fs1_in,1
	.align		0
	.globl		atv_fs1_in
atv_fs1_in:
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
	.type		atv_dbg_pumpB_out,@object
	.size		atv_dbg_pumpB_out,1
	.align		0
	.globl		atv_dbg_pumpB_out
atv_dbg_pumpB_out:
	.space		1
	.section	.cal_sec,,r
	.type		atvc_dcMinFan,@object
	.size		atvc_dcMinFan,1
	.align		0
	.globl		atvc_dcMinFan
atvc_dcMinFan:
	.byte		30
	.section	.cal_sec,,r
	.type		atvc_mtadd,@object
	.size		atvc_mtadd,1
	.align		0
	.globl		atvc_mtadd
atvc_mtadd:
	.byte		100
	.section	.cal_sec,,r
	.type		atvc_mtawnb,@object
	.size		atvc_mtawnb,1
	.align		0
	.globl		atvc_mtawnb
atvc_mtawnb:
	.byte		100
	.section	.cal_sec,,r
	.type		atvc_tempSwitchOnFan,@object
	.size		atvc_tempSwitchOnFan,1
	.align		0
	.globl		atvc_tempSwitchOnFan
atvc_tempSwitchOnFan:
	.byte		50
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
	.type		pcx_CANdb_TransmitMessage6_msg_handle,@object
	.size		pcx_CANdb_TransmitMessage6_msg_handle,2
	.align		1
	.globl		pcx_CANdb_TransmitMessage6_msg_handle
pcx_CANdb_TransmitMessage6_msg_handle:
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
	.data
	.type		tmp_5.3790,@object
	.size		tmp_5.3790,12
	.align		2
tmp_5.3790:
	.long		0
	.long		500
	.long		0
	.section	.cal_sec,,r
	.type		pcx_CANdb_TransmitMessage_field_start_pos.3931,@object
	.size		pcx_CANdb_TransmitMessage_field_start_pos.3931,3
	.align		2
pcx_CANdb_TransmitMessage_field_start_pos.3931:
	.byte		0
	.byte		8
	.byte		16
	.type		pcx_CANdb_TransmitMessage_field_width.3932,@object
	.size		pcx_CANdb_TransmitMessage_field_width.3932,3
	.align		2
pcx_CANdb_TransmitMessage_field_width.3932:
	.byte		8
	.byte		8
	.byte		8
	.type		pcx_CANdb_TransmitMessage_field_is_signed.3933,@object
	.size		pcx_CANdb_TransmitMessage_field_is_signed.3933,3
	.align		2
pcx_CANdb_TransmitMessage_field_is_signed.3933:
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage_field_valtype.3934,@object
	.size		pcx_CANdb_TransmitMessage_field_valtype.3934,3
	.align		2
pcx_CANdb_TransmitMessage_field_valtype.3934:
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage_field_order.3935,@object
	.size		pcx_CANdb_TransmitMessage_field_order.3935,3
	.align		2
pcx_CANdb_TransmitMessage_field_order.3935:
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage_field_eng_min.3936,@object
	.size		pcx_CANdb_TransmitMessage_field_eng_min.3936,12
	.align		2
pcx_CANdb_TransmitMessage_field_eng_min.3936:
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage_field_eng_max.3937,@object
	.size		pcx_CANdb_TransmitMessage_field_eng_max.3937,12
	.align		2
pcx_CANdb_TransmitMessage_field_eng_max.3937:
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.type		pcx_CANdb_TransmitMessage_field_scale.3938,@object
	.size		pcx_CANdb_TransmitMessage_field_scale.3938,12
	.align		2
pcx_CANdb_TransmitMessage_field_scale.3938:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage_field_offset.3939,@object
	.size		pcx_CANdb_TransmitMessage_field_offset.3939,12
	.align		2
pcx_CANdb_TransmitMessage_field_offset.3939:
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage2_field_start_pos.3960,@object
	.size		pcx_CANdb_TransmitMessage2_field_start_pos.3960,4
	.align		2
pcx_CANdb_TransmitMessage2_field_start_pos.3960:
	.byte		48
	.byte		32
	.byte		16
	.byte		0
	.type		pcx_CANdb_TransmitMessage2_field_width.3961,@object
	.size		pcx_CANdb_TransmitMessage2_field_width.3961,4
	.align		2
pcx_CANdb_TransmitMessage2_field_width.3961:
	.byte		16
	.byte		16
	.byte		16
	.byte		16
	.type		pcx_CANdb_TransmitMessage2_field_is_signed.3962,@object
	.size		pcx_CANdb_TransmitMessage2_field_is_signed.3962,4
	.align		2
pcx_CANdb_TransmitMessage2_field_is_signed.3962:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage2_field_valtype.3963,@object
	.size		pcx_CANdb_TransmitMessage2_field_valtype.3963,4
	.align		2
pcx_CANdb_TransmitMessage2_field_valtype.3963:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage2_field_order.3964,@object
	.size		pcx_CANdb_TransmitMessage2_field_order.3964,4
	.align		2
pcx_CANdb_TransmitMessage2_field_order.3964:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage2_field_eng_min.3965,@object
	.size		pcx_CANdb_TransmitMessage2_field_eng_min.3965,16
	.align		2
pcx_CANdb_TransmitMessage2_field_eng_min.3965:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage2_field_eng_max.3966,@object
	.size		pcx_CANdb_TransmitMessage2_field_eng_max.3966,16
	.align		2
pcx_CANdb_TransmitMessage2_field_eng_max.3966:
	.float		+1.00000000000000000000e3
	.float		+1.00000000000000000000e3
	.float		+2.0000000000000000000e4
	.float		+2.0000000000000000000e4
	.type		pcx_CANdb_TransmitMessage2_field_scale.3967,@object
	.size		pcx_CANdb_TransmitMessage2_field_scale.3967,16
	.align		2
pcx_CANdb_TransmitMessage2_field_scale.3967:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage2_field_offset.3968,@object
	.size		pcx_CANdb_TransmitMessage2_field_offset.3968,16
	.align		2
pcx_CANdb_TransmitMessage2_field_offset.3968:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage3_field_start_pos.3971,@object
	.size		pcx_CANdb_TransmitMessage3_field_start_pos.3971,5
	.align		2
pcx_CANdb_TransmitMessage3_field_start_pos.3971:
	.byte		34
	.byte		33
	.byte		32
	.byte		16
	.byte		0
	.type		pcx_CANdb_TransmitMessage3_field_width.3972,@object
	.size		pcx_CANdb_TransmitMessage3_field_width.3972,5
	.align		2
pcx_CANdb_TransmitMessage3_field_width.3972:
	.byte		1
	.byte		1
	.byte		1
	.byte		16
	.byte		16
	.type		pcx_CANdb_TransmitMessage3_field_is_signed.3973,@object
	.size		pcx_CANdb_TransmitMessage3_field_is_signed.3973,5
	.align		2
pcx_CANdb_TransmitMessage3_field_is_signed.3973:
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage3_field_valtype.3974,@object
	.size		pcx_CANdb_TransmitMessage3_field_valtype.3974,5
	.align		2
pcx_CANdb_TransmitMessage3_field_valtype.3974:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage3_field_order.3975,@object
	.size		pcx_CANdb_TransmitMessage3_field_order.3975,5
	.align		2
pcx_CANdb_TransmitMessage3_field_order.3975:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage3_field_eng_min.3976,@object
	.size		pcx_CANdb_TransmitMessage3_field_eng_min.3976,20
	.align		2
pcx_CANdb_TransmitMessage3_field_eng_min.3976:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		-3.2768000000000000000e4
	.float		+0.
	.type		pcx_CANdb_TransmitMessage3_field_eng_max.3977,@object
	.size		pcx_CANdb_TransmitMessage3_field_eng_max.3977,20
	.align		2
pcx_CANdb_TransmitMessage3_field_eng_max.3977:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+0.
	.float		+3.2767000000000000000e4
	.type		pcx_CANdb_TransmitMessage3_field_scale.3978,@object
	.size		pcx_CANdb_TransmitMessage3_field_scale.3978,20
	.align		2
pcx_CANdb_TransmitMessage3_field_scale.3978:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage3_field_offset.3979,@object
	.size		pcx_CANdb_TransmitMessage3_field_offset.3979,20
	.align		2
pcx_CANdb_TransmitMessage3_field_offset.3979:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage4_field_start_pos.3988,@object
	.size		pcx_CANdb_TransmitMessage4_field_start_pos.3988,4
	.align		2
pcx_CANdb_TransmitMessage4_field_start_pos.3988:
	.byte		48
	.byte		32
	.byte		16
	.byte		0
	.type		pcx_CANdb_TransmitMessage4_field_width.3989,@object
	.size		pcx_CANdb_TransmitMessage4_field_width.3989,4
	.align		2
pcx_CANdb_TransmitMessage4_field_width.3989:
	.byte		16
	.byte		16
	.byte		16
	.byte		16
	.type		pcx_CANdb_TransmitMessage4_field_is_signed.3990,@object
	.size		pcx_CANdb_TransmitMessage4_field_is_signed.3990,4
	.align		2
pcx_CANdb_TransmitMessage4_field_is_signed.3990:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage4_field_valtype.3991,@object
	.size		pcx_CANdb_TransmitMessage4_field_valtype.3991,4
	.align		2
pcx_CANdb_TransmitMessage4_field_valtype.3991:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage4_field_order.3992,@object
	.size		pcx_CANdb_TransmitMessage4_field_order.3992,4
	.align		2
pcx_CANdb_TransmitMessage4_field_order.3992:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage4_field_eng_min.3993,@object
	.size		pcx_CANdb_TransmitMessage4_field_eng_min.3993,16
	.align		2
pcx_CANdb_TransmitMessage4_field_eng_min.3993:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage4_field_eng_max.3994,@object
	.size		pcx_CANdb_TransmitMessage4_field_eng_max.3994,16
	.align		2
pcx_CANdb_TransmitMessage4_field_eng_max.3994:
	.float		+1.00000000000000000000e3
	.float		+1.00000000000000000000e3
	.float		+2.0000000000000000000e4
	.float		+2.0000000000000000000e4
	.type		pcx_CANdb_TransmitMessage4_field_scale.3995,@object
	.size		pcx_CANdb_TransmitMessage4_field_scale.3995,16
	.align		2
pcx_CANdb_TransmitMessage4_field_scale.3995:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage4_field_offset.3996,@object
	.size		pcx_CANdb_TransmitMessage4_field_offset.3996,16
	.align		2
pcx_CANdb_TransmitMessage4_field_offset.3996:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage5_field_start_pos.3999,@object
	.size		pcx_CANdb_TransmitMessage5_field_start_pos.3999,5
	.align		2
pcx_CANdb_TransmitMessage5_field_start_pos.3999:
	.byte		34
	.byte		33
	.byte		32
	.byte		16
	.byte		0
	.type		pcx_CANdb_TransmitMessage5_field_width.4000,@object
	.size		pcx_CANdb_TransmitMessage5_field_width.4000,5
	.align		2
pcx_CANdb_TransmitMessage5_field_width.4000:
	.byte		1
	.byte		1
	.byte		1
	.byte		16
	.byte		16
	.type		pcx_CANdb_TransmitMessage5_field_is_signed.4001,@object
	.size		pcx_CANdb_TransmitMessage5_field_is_signed.4001,5
	.align		2
pcx_CANdb_TransmitMessage5_field_is_signed.4001:
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage5_field_valtype.4002,@object
	.size		pcx_CANdb_TransmitMessage5_field_valtype.4002,5
	.align		2
pcx_CANdb_TransmitMessage5_field_valtype.4002:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage5_field_order.4003,@object
	.size		pcx_CANdb_TransmitMessage5_field_order.4003,5
	.align		2
pcx_CANdb_TransmitMessage5_field_order.4003:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage5_field_eng_min.4004,@object
	.size		pcx_CANdb_TransmitMessage5_field_eng_min.4004,20
	.align		2
pcx_CANdb_TransmitMessage5_field_eng_min.4004:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		-3.2768000000000000000e4
	.float		+0.
	.type		pcx_CANdb_TransmitMessage5_field_eng_max.4005,@object
	.size		pcx_CANdb_TransmitMessage5_field_eng_max.4005,20
	.align		2
pcx_CANdb_TransmitMessage5_field_eng_max.4005:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+0.
	.float		+3.2767000000000000000e4
	.type		pcx_CANdb_TransmitMessage5_field_scale.4006,@object
	.size		pcx_CANdb_TransmitMessage5_field_scale.4006,20
	.align		2
pcx_CANdb_TransmitMessage5_field_scale.4006:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage5_field_offset.4007,@object
	.size		pcx_CANdb_TransmitMessage5_field_offset.4007,20
	.align		2
pcx_CANdb_TransmitMessage5_field_offset.4007:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage1_field_start_pos.4148,@object
	.size		pcx_CANdb_TransmitMessage1_field_start_pos.4148,5
	.align		2
pcx_CANdb_TransmitMessage1_field_start_pos.4148:
	.byte		16
	.byte		8
	.byte		0
	.byte		24
	.byte		32
	.type		pcx_CANdb_TransmitMessage1_field_width.4149,@object
	.size		pcx_CANdb_TransmitMessage1_field_width.4149,5
	.align		2
pcx_CANdb_TransmitMessage1_field_width.4149:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage1_field_is_signed.4150,@object
	.size		pcx_CANdb_TransmitMessage1_field_is_signed.4150,5
	.align		2
pcx_CANdb_TransmitMessage1_field_is_signed.4150:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage1_field_valtype.4151,@object
	.size		pcx_CANdb_TransmitMessage1_field_valtype.4151,5
	.align		2
pcx_CANdb_TransmitMessage1_field_valtype.4151:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage1_field_order.4152,@object
	.size		pcx_CANdb_TransmitMessage1_field_order.4152,5
	.align		2
pcx_CANdb_TransmitMessage1_field_order.4152:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage1_field_eng_min.4153,@object
	.size		pcx_CANdb_TransmitMessage1_field_eng_min.4153,20
	.align		2
pcx_CANdb_TransmitMessage1_field_eng_min.4153:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage1_field_eng_max.4154,@object
	.size		pcx_CANdb_TransmitMessage1_field_eng_max.4154,20
	.align		2
pcx_CANdb_TransmitMessage1_field_eng_max.4154:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage1_field_scale.4155,@object
	.size		pcx_CANdb_TransmitMessage1_field_scale.4155,20
	.align		2
pcx_CANdb_TransmitMessage1_field_scale.4155:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage1_field_offset.4156,@object
	.size		pcx_CANdb_TransmitMessage1_field_offset.4156,20
	.align		2
pcx_CANdb_TransmitMessage1_field_offset.4156:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage6_field_start_pos.4159,@object
	.size		pcx_CANdb_TransmitMessage6_field_start_pos.4159,4
	.align		2
pcx_CANdb_TransmitMessage6_field_start_pos.4159:
	.byte		0
	.byte		8
	.byte		16
	.byte		24
	.type		pcx_CANdb_TransmitMessage6_field_width.4160,@object
	.size		pcx_CANdb_TransmitMessage6_field_width.4160,4
	.align		2
pcx_CANdb_TransmitMessage6_field_width.4160:
	.byte		1
	.byte		1
	.byte		1
	.byte		8
	.type		pcx_CANdb_TransmitMessage6_field_is_signed.4161,@object
	.size		pcx_CANdb_TransmitMessage6_field_is_signed.4161,4
	.align		2
pcx_CANdb_TransmitMessage6_field_is_signed.4161:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage6_field_valtype.4162,@object
	.size		pcx_CANdb_TransmitMessage6_field_valtype.4162,4
	.align		2
pcx_CANdb_TransmitMessage6_field_valtype.4162:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_TransmitMessage6_field_order.4163,@object
	.size		pcx_CANdb_TransmitMessage6_field_order.4163,4
	.align		2
pcx_CANdb_TransmitMessage6_field_order.4163:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_TransmitMessage6_field_eng_min.4164,@object
	.size		pcx_CANdb_TransmitMessage6_field_eng_min.4164,16
	.align		2
pcx_CANdb_TransmitMessage6_field_eng_min.4164:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_TransmitMessage6_field_eng_max.4165,@object
	.size		pcx_CANdb_TransmitMessage6_field_eng_max.4165,16
	.align		2
pcx_CANdb_TransmitMessage6_field_eng_max.4165:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+2.5500000000000000000e2
	.type		pcx_CANdb_TransmitMessage6_field_scale.4166,@object
	.size		pcx_CANdb_TransmitMessage6_field_scale.4166,16
	.align		2
pcx_CANdb_TransmitMessage6_field_scale.4166:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_TransmitMessage6_field_offset.4167,@object
	.size		pcx_CANdb_TransmitMessage6_field_offset.4167,16
	.align		2
pcx_CANdb_TransmitMessage6_field_offset.4167:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_field_start_pos.4170,@object
	.size		pcx_CANdb_ReceiveMessage_field_start_pos.4170,3
	.align		2
pcx_CANdb_ReceiveMessage_field_start_pos.4170:
	.byte		0
	.byte		8
	.byte		16
	.type		pcx_CANdb_ReceiveMessage_field_width.4171,@object
	.size		pcx_CANdb_ReceiveMessage_field_width.4171,3
	.align		2
pcx_CANdb_ReceiveMessage_field_width.4171:
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_ReceiveMessage_field_is_signed.4172,@object
	.size		pcx_CANdb_ReceiveMessage_field_is_signed.4172,3
	.align		2
pcx_CANdb_ReceiveMessage_field_is_signed.4172:
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_field_valtype.4173,@object
	.size		pcx_CANdb_ReceiveMessage_field_valtype.4173,3
	.align		2
pcx_CANdb_ReceiveMessage_field_valtype.4173:
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_field_order.4174,@object
	.size		pcx_CANdb_ReceiveMessage_field_order.4174,3
	.align		2
pcx_CANdb_ReceiveMessage_field_order.4174:
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_ReceiveMessage_field_eng_min.4175,@object
	.size		pcx_CANdb_ReceiveMessage_field_eng_min.4175,12
	.align		2
pcx_CANdb_ReceiveMessage_field_eng_min.4175:
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_field_eng_max.4176,@object
	.size		pcx_CANdb_ReceiveMessage_field_eng_max.4176,12
	.align		2
pcx_CANdb_ReceiveMessage_field_eng_max.4176:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_ReceiveMessage_field_scale.4177,@object
	.size		pcx_CANdb_ReceiveMessage_field_scale.4177,12
	.align		2
pcx_CANdb_ReceiveMessage_field_scale.4177:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_ReceiveMessage_field_offset.4178,@object
	.size		pcx_CANdb_ReceiveMessage_field_offset.4178,12
	.align		2
pcx_CANdb_ReceiveMessage_field_offset.4178:
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_p_field_start_pos.4183,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_start_pos.4183,7
	.align		2
pcx_CANdb_ReceiveMessage_p_field_start_pos.4183:
	.byte		0
	.byte		8
	.byte		24
	.byte		16
	.byte		32
	.byte		40
	.byte		48
	.type		pcx_CANdb_ReceiveMessage_p_field_width.4184,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_width.4184,7
	.align		2
pcx_CANdb_ReceiveMessage_p_field_width.4184:
	.byte		8
	.byte		8
	.byte		8
	.byte		8
	.byte		8
	.byte		8
	.byte		8
	.type		pcx_CANdb_ReceiveMessage_p_field_is_signed.4185,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_is_signed.4185,7
	.align		2
pcx_CANdb_ReceiveMessage_p_field_is_signed.4185:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_p_field_valtype.4186,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_valtype.4186,7
	.align		2
pcx_CANdb_ReceiveMessage_p_field_valtype.4186:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_p_field_order.4187,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_order.4187,7
	.align		2
pcx_CANdb_ReceiveMessage_p_field_order.4187:
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.byte		1
	.type		pcx_CANdb_ReceiveMessage_p_field_eng_min.4188,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_eng_min.4188,28
	.align		2
pcx_CANdb_ReceiveMessage_p_field_eng_min.4188:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_p_field_eng_max.4189,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_eng_max.4189,28
	.align		2
pcx_CANdb_ReceiveMessage_p_field_eng_max.4189:
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.float		+2.5500000000000000000e2
	.type		pcx_CANdb_ReceiveMessage_p_field_scale.4190,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_scale.4190,28
	.align		2
pcx_CANdb_ReceiveMessage_p_field_scale.4190:
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_ReceiveMessage_p_field_offset.4191,@object
	.size		pcx_CANdb_ReceiveMessage_p_field_offset.4191,28
	.align		2
pcx_CANdb_ReceiveMessage_p_field_offset.4191:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.type		pcx_CANdb_ReceiveMessage_e_field_start_pos.4196,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_start_pos.4196,6
	.align		2
pcx_CANdb_ReceiveMessage_e_field_start_pos.4196:
	.byte		7
	.byte		15
	.byte		16
	.byte		32
	.byte		55
	.byte		63
	.type		pcx_CANdb_ReceiveMessage_e_field_width.4197,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_width.4197,6
	.align		2
pcx_CANdb_ReceiveMessage_e_field_width.4197:
	.byte		8
	.byte		8
	.byte		16
	.byte		16
	.byte		8
	.byte		8
	.type		pcx_CANdb_ReceiveMessage_e_field_is_signed.4198,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_is_signed.4198,6
	.align		2
pcx_CANdb_ReceiveMessage_e_field_is_signed.4198:
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_e_field_valtype.4199,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_valtype.4199,6
	.align		2
pcx_CANdb_ReceiveMessage_e_field_valtype.4199:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_e_field_order.4200,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_order.4200,6
	.align		2
pcx_CANdb_ReceiveMessage_e_field_order.4200:
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.byte		0
	.byte		0
	.type		pcx_CANdb_ReceiveMessage_e_field_eng_min.4201,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_eng_min.4201,24
	.align		2
pcx_CANdb_ReceiveMessage_e_field_eng_min.4201:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		-3.2768000488281250000e3
	.float		+0.
	.float		+1.7200000000000000000e3
	.type		pcx_CANdb_ReceiveMessage_e_field_eng_max.4202,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_eng_max.4202,24
	.align		2
pcx_CANdb_ReceiveMessage_e_field_eng_max.4202:
	.float		+2.5500000000000000000e2
	.float		+1.2750000000000000000e2
	.float		+6.5535000000000000000e3
	.float		+3.2766999511718750000e3
	.float		+2.5500000000000000000e2
	.float		+1.9750000000000000000e3
	.type		pcx_CANdb_ReceiveMessage_e_field_scale.4203,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_scale.4203,24
	.align		2
pcx_CANdb_ReceiveMessage_e_field_scale.4203:
	.float		+1.0000000000000000000
	.float		+5.0000000000000000000e-1
	.float		+1.0000000149011611938e-1
	.float		+1.0000000149011611938e-1
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.type		pcx_CANdb_ReceiveMessage_e_field_offset.4204,@object
	.size		pcx_CANdb_ReceiveMessage_e_field_offset.4204,24
	.align		2
pcx_CANdb_ReceiveMessage_e_field_offset.4204:
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+0.
	.float		+1.7200000000000000000e3
	.type		FLOAT_TEMP.4343,@object
	.size		FLOAT_TEMP.4343,8
	.align		3
FLOAT_TEMP.4343:
	.double		+6.5536000000000000000e4
	.type		FLOAT_TEMP.4344,@object
	.size		FLOAT_TEMP.4344,8
	.align		3
FLOAT_TEMP.4344:
	.double		+4.2949672960000000000e9
	.type		FLOAT_TEMP.4345,@object
	.size		FLOAT_TEMP.4345,8
	.align		3
FLOAT_TEMP.4345:
	.double		+2.5600000000000000000e2
	.bss
	.align		2
#	Begin local data area
#	LDA + 0
	.type		ATV_DW,@object
	.size		ATV_DW,44
	.align		2
	.globl		ATV_DW
ATV_DW:
	.space		44
	.bss
#	LDA + 44
	.type		pdx_DigitalInput_detm_wrk_data,@object
	.size		pdx_DigitalInput_detm_wrk_data,12
	.align		2
	.globl		pdx_DigitalInput_detm_wrk_data
pdx_DigitalInput_detm_wrk_data:
	.space		12
	.section	.text_vle
#$$ld
.L5:
.L6120:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\rtw_matlogging.h"
.L6117:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\rtw_extmode.h"
.L6072:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\rtw_continuous.h"
.L6059:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\rtw_solver.h"
.L6051:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\simstruc_types.h"
.L6044:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\sl_common_types_def.h"
.L5507:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\simstruc_def.h"
.L5487:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/simulink/include\\simstruc_compcond.h"
.L5407:	.d2filenum "ATV_types.h"
.L5327:	.d2filenum "ATV.h"
.L5319:	.d2filenum "ATV_api.h"
.L4379:	.d2filenum "no file"
.L4358:	.d2filenum "ATV.c"
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
	.uleb128	5
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
	.uleb128	6
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
	.uleb128	10
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
.L4361:
	.sleb128	2
	.4byte		.L4355-.L2
	.byte		"MultiWord2uLong"
	.byte		0
	.4byte		.L4358
	.uleb128	151
	.4byte		.L4359
	.byte		0x1
	.byte		0x1
	.4byte		.L4356
	.4byte		.L4357
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L4358
	.uleb128	151
	.byte		"u"
	.byte		0
	.4byte		.L4362
	.4byte		.L4364
	.section	.debug_info,,n
	.sleb128	0
.L4355:
	.section	.debug_info,,n
.L4369:
	.sleb128	4
	.4byte		.L4366-.L2
	.byte		"sMultiWordShr"
	.byte		0
	.4byte		.L4358
	.uleb128	156
	.byte		0x1
	.byte		0x1
	.4byte		.L4367
	.4byte		.L4368
	.sleb128	3
	.4byte		.L4358
	.uleb128	156
	.byte		"u1"
	.byte		0
	.4byte		.L4362
	.4byte		.L4370
	.sleb128	3
	.4byte		.L4358
	.uleb128	156
	.byte		"n1"
	.byte		0
	.4byte		.L4371
	.4byte		.L4373
	.sleb128	3
	.4byte		.L4358
	.uleb128	156
	.byte		"n2"
	.byte		0
	.4byte		.L4359
	.4byte		.L4374
	.sleb128	3
	.4byte		.L4358
	.uleb128	156
	.byte		"y"
	.byte		0
	.4byte		.L4375
	.4byte		.L4376
	.sleb128	3
	.4byte		.L4358
	.uleb128	157
	.byte		"n"
	.byte		0
	.4byte		.L4371
	.4byte		.L4377
	.section	.debug_info,,n
.L4378:
	.sleb128	5
	.4byte		.L4379
	.byte		"i1"
	.byte		0
	.4byte		.L4371
	.4byte		.L4380
.L4381:
	.sleb128	5
	.4byte		.L4379
	.byte		"i"
	.byte		0
	.4byte		.L4371
	.4byte		.L4382
.L4383:
	.sleb128	5
	.4byte		.L4379
	.byte		"u1i"
	.byte		0
	.4byte		.L4359
	.4byte		.L4384
.L4385:
	.sleb128	5
	.4byte		.L4379
	.byte		"yi"
	.byte		0
	.4byte		.L4359
	.4byte		.L4386
	.section	.debug_info,,n
.L4387:
	.sleb128	6
	.4byte		.L4358
	.uleb128	159
	.byte		"nb"
	.byte		0
	.4byte		.L4371
	.4byte		.L4388
.L4389:
	.sleb128	6
	.4byte		.L4358
	.uleb128	160
	.byte		"i"
	.byte		0
	.4byte		.L4371
	.4byte		.L4390
.L4391:
	.sleb128	6
	.4byte		.L4358
	.uleb128	161
	.byte		"ys"
	.byte		0
	.4byte		.L4359
	.4byte		.L4392
.L4393:
	.sleb128	6
	.4byte		.L4358
	.uleb128	162
	.byte		"yi"
	.byte		0
	.4byte		.L4359
	.4byte		.L4394
.L4395:
	.sleb128	6
	.4byte		.L4358
	.uleb128	163
	.byte		"u1i"
	.byte		0
	.4byte		.L4359
	.4byte		.L4396
.L4397:
	.sleb128	6
	.4byte		.L4358
	.uleb128	164
	.byte		"nc"
	.byte		0
	.4byte		.L4371
	.4byte		.L4398
.L4399:
	.sleb128	6
	.4byte		.L4358
	.uleb128	165
	.byte		"nr"
	.byte		0
	.4byte		.L4359
	.4byte		.L4400
.L4401:
	.sleb128	6
	.4byte		.L4358
	.uleb128	166
	.byte		"nl"
	.byte		0
	.4byte		.L4359
	.4byte		.L4402
.L4403:
	.sleb128	6
	.4byte		.L4358
	.uleb128	167
	.byte		"i1"
	.byte		0
	.4byte		.L4371
	.4byte		.L4404
	.section	.debug_info,,n
	.sleb128	0
.L4366:
	.section	.debug_info,,n
.L4409:
	.sleb128	4
	.4byte		.L4406-.L2
	.byte		"MultiWordAdd"
	.byte		0
	.4byte		.L4358
	.uleb128	206
	.byte		0x1
	.byte		0x1
	.4byte		.L4407
	.4byte		.L4408
	.sleb128	3
	.4byte		.L4358
	.uleb128	206
	.byte		"u1"
	.byte		0
	.4byte		.L4362
	.4byte		.L4410
	.sleb128	3
	.4byte		.L4358
	.uleb128	206
	.byte		"u2"
	.byte		0
	.4byte		.L4362
	.4byte		.L4411
	.sleb128	3
	.4byte		.L4358
	.uleb128	206
	.byte		"y"
	.byte		0
	.4byte		.L4375
	.4byte		.L4412
	.sleb128	3
	.4byte		.L4358
	.uleb128	207
	.byte		"n"
	.byte		0
	.4byte		.L4371
	.4byte		.L4413
.L4414:
	.sleb128	5
	.4byte		.L4379
	.byte		"i"
	.byte		0
	.4byte		.L4371
	.4byte		.L4415
.L4416:
	.sleb128	6
	.4byte		.L4358
	.uleb128	209
	.byte		"yi"
	.byte		0
	.4byte		.L4359
	.4byte		.L4417
.L4418:
	.sleb128	6
	.4byte		.L4358
	.uleb128	210
	.byte		"u1i"
	.byte		0
	.4byte		.L4359
	.4byte		.L4419
.L4420:
	.sleb128	6
	.4byte		.L4358
	.uleb128	211
	.byte		"carry"
	.byte		0
	.4byte		.L4359
	.4byte		.L4421
	.section	.debug_info,,n
	.sleb128	0
.L4406:
	.section	.debug_info,,n
.L4426:
	.sleb128	4
	.4byte		.L4423-.L2
	.byte		"sMultiWordMul"
	.byte		0
	.4byte		.L4358
	.uleb128	221
	.byte		0x1
	.byte		0x1
	.4byte		.L4424
	.4byte		.L4425
	.sleb128	3
	.4byte		.L4358
	.uleb128	221
	.byte		"u1"
	.byte		0
	.4byte		.L4362
	.4byte		.L4427
	.sleb128	3
	.4byte		.L4358
	.uleb128	221
	.byte		"n1"
	.byte		0
	.4byte		.L4371
	.4byte		.L4428
	.sleb128	3
	.4byte		.L4358
	.uleb128	221
	.byte		"u2"
	.byte		0
	.4byte		.L4362
	.4byte		.L4429
	.sleb128	3
	.4byte		.L4358
	.uleb128	222
	.byte		"n2"
	.byte		0
	.4byte		.L4371
	.4byte		.L4430
	.sleb128	3
	.4byte		.L4358
	.uleb128	222
	.byte		"y"
	.byte		0
	.4byte		.L4375
	.4byte		.L4431
	.sleb128	3
	.4byte		.L4358
	.uleb128	222
	.byte		"n"
	.byte		0
	.4byte		.L4371
	.4byte		.L4432
.L4433:
	.sleb128	5
	.4byte		.L4379
	.byte		"k"
	.byte		0
	.4byte		.L4371
	.4byte		.L4434
.L4435:
	.sleb128	5
	.4byte		.L4379
	.byte		"j"
	.byte		0
	.4byte		.L4371
	.4byte		.L4436
.L4437:
	.sleb128	5
	.4byte		.L4379
	.byte		"k"
	.byte		0
	.4byte		.L4371
	.4byte		.L4438
.L4439:
	.sleb128	5
	.4byte		.L4379
	.byte		"cb"
	.byte		0
	.4byte		.L4359
	.4byte		.L4440
.L4441:
	.sleb128	5
	.4byte		.L4379
	.byte		"cb"
	.byte		0
	.4byte		.L4359
	.4byte		.L4442
.L4443:
	.sleb128	5
	.4byte		.L4379
	.byte		"yk"
	.byte		0
	.4byte		.L4359
	.4byte		.L4444
.L4445:
	.sleb128	5
	.4byte		.L4379
	.byte		"u1i"
	.byte		0
	.4byte		.L4359
	.4byte		.L4446
.L4447:
	.sleb128	5
	.4byte		.L4379
	.byte		"u1i"
	.byte		0
	.4byte		.L4359
	.4byte		.L4448
.L4449:
	.sleb128	5
	.4byte		.L4379
	.byte		"u1i"
	.byte		0
	.4byte		.L4359
	.4byte		.L4450
.L4451:
	.sleb128	5
	.4byte		.L4379
	.byte		"k"
	.byte		0
	.4byte		.L4371
	.4byte		.L4452
.L4453:
	.sleb128	6
	.4byte		.L4358
	.uleb128	224
	.byte		"i"
	.byte		0
	.4byte		.L4371
	.4byte		.L4454
.L4455:
	.sleb128	6
	.4byte		.L4358
	.uleb128	227
	.byte		"nj"
	.byte		0
	.4byte		.L4371
	.4byte		.L4456
.L4457:
	.sleb128	6
	.4byte		.L4358
	.uleb128	228
	.byte		"u1i"
	.byte		0
	.4byte		.L4359
	.4byte		.L4458
.L4459:
	.sleb128	6
	.4byte		.L4358
	.uleb128	229
	.byte		"yk"
	.byte		0
	.4byte		.L4359
	.4byte		.L4460
.L4461:
	.sleb128	6
	.4byte		.L4358
	.uleb128	230
	.byte		"a1"
	.byte		0
	.4byte		.L4359
	.4byte		.L4462
.L4463:
	.sleb128	6
	.4byte		.L4358
	.uleb128	231
	.byte		"a0"
	.byte		0
	.4byte		.L4359
	.4byte		.L4464
.L4465:
	.sleb128	6
	.4byte		.L4358
	.uleb128	232
	.byte		"b1"
	.byte		0
	.4byte		.L4359
	.4byte		.L4466
.L4467:
	.sleb128	6
	.4byte		.L4358
	.uleb128	233
	.byte		"w10"
	.byte		0
	.4byte		.L4359
	.4byte		.L4468
.L4469:
	.sleb128	6
	.4byte		.L4358
	.uleb128	234
	.byte		"w01"
	.byte		0
	.4byte		.L4359
	.4byte		.L4470
.L4471:
	.sleb128	6
	.4byte		.L4358
	.uleb128	235
	.byte		"cb"
	.byte		0
	.4byte		.L4359
	.4byte		.L4472
.L4473:
	.sleb128	6
	.4byte		.L4358
	.uleb128	236
	.byte		"isNegative1"
	.byte		0
	.4byte		.L4474
	.4byte		.L4476
.L4477:
	.sleb128	6
	.4byte		.L4358
	.uleb128	237
	.byte		"isNegative2"
	.byte		0
	.4byte		.L4474
	.4byte		.L4478
.L4479:
	.sleb128	6
	.4byte		.L4358
	.uleb128	238
	.byte		"cb1"
	.byte		0
	.4byte		.L4359
	.4byte		.L4480
.L4481:
	.sleb128	6
	.4byte		.L4358
	.uleb128	239
	.byte		"cb2"
	.byte		0
	.4byte		.L4359
	.4byte		.L4482
	.section	.debug_info,,n
	.sleb128	0
.L4423:
	.section	.debug_info,,n
.L4490:
	.sleb128	2
	.4byte		.L4484-.L2
	.byte		"rt_SimUpdateDiscreteEvents"
	.byte		0
	.4byte		.L4358
	.uleb128	309
	.4byte		.L4487
	.byte		0x1
	.byte		0x1
	.4byte		.L4485
	.4byte		.L4486
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L4358
	.uleb128	310
	.byte		"rtmNumSampTimes"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	7
	.4byte		.L4358
	.uleb128	310
	.byte		"rtmTimingData"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	3
	.4byte		.L4358
	.uleb128	310
	.byte		"rtmSampleHitPtr"
	.byte		0
	.4byte		.L4495
	.4byte		.L4496
	.sleb128	7
	.4byte		.L4358
	.uleb128	311
	.byte		"rtmPerTaskSampleHits"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x90
	.uleb128	6
	.section	.debug_info,,n
	.sleb128	0
.L4484:
	.section	.debug_info,,n
.L4501:
	.sleb128	8
	.4byte		.L4498-.L2
	.byte		"rate_monotonic_scheduler"
	.byte		0
	.4byte		.L4358
	.uleb128	329
	.byte		0x1
	.4byte		.L4499
	.4byte		.L4500
	.section	.debug_info,,n
	.sleb128	0
.L4498:
	.section	.debug_info,,n
.L4506:
	.sleb128	4
	.4byte		.L4503-.L2
	.byte		"ATV_Chart_Init"
	.byte		0
	.4byte		.L4358
	.uleb128	364
	.byte		0x1
	.byte		0x1
	.4byte		.L4504
	.4byte		.L4505
	.sleb128	3
	.4byte		.L4358
	.uleb128	364
	.byte		"localDW"
	.byte		0
	.4byte		.L4507
	.4byte		.L4510
	.section	.debug_info,,n
	.sleb128	0
.L4503:
	.section	.debug_info,,n
.L4515:
	.sleb128	4
	.4byte		.L4512-.L2
	.byte		"ATV_Chart"
	.byte		0
	.4byte		.L4358
	.uleb128	376
	.byte		0x1
	.byte		0x1
	.4byte		.L4513
	.4byte		.L4514
	.sleb128	3
	.4byte		.L4358
	.uleb128	376
	.byte		"rtu_in"
	.byte		0
	.4byte		.L4474
	.4byte		.L4516
	.sleb128	3
	.4byte		.L4358
	.uleb128	376
	.byte		"localB"
	.byte		0
	.4byte		.L4517
	.4byte		.L4520
	.sleb128	3
	.4byte		.L4358
	.uleb128	376
	.byte		"localDW"
	.byte		0
	.4byte		.L4507
	.4byte		.L4521
	.section	.debug_info,,n
	.sleb128	0
.L4512:
	.section	.debug_info,,n
.L4526:
	.sleb128	4
	.4byte		.L4523-.L2
	.byte		"ATV_DBWREVERSE"
	.byte		0
	.4byte		.L4358
	.uleb128	428
	.byte		0x1
	.byte		0x1
	.4byte		.L4524
	.4byte		.L4525
	.sleb128	3
	.4byte		.L4358
	.uleb128	428
	.byte		"rtu_FS1"
	.byte		0
	.4byte		.L4474
	.4byte		.L4527
	.sleb128	3
	.4byte		.L4358
	.uleb128	428
	.byte		"rtu_throttleX1000"
	.byte		0
	.4byte		.L4528
	.4byte		.L4530
	.sleb128	3
	.4byte		.L4358
	.uleb128	429
	.byte		"localB"
	.byte		0
	.4byte		.L4531
	.4byte		.L4534
.L4535:
	.sleb128	6
	.4byte		.L4358
	.uleb128	431
	.byte		"rtb_Switch1_e"
	.byte		0
	.4byte		.L4371
	.4byte		.L4536
	.section	.debug_info,,n
	.sleb128	0
.L4523:
	.section	.debug_info,,n
.L4541:
	.sleb128	4
	.4byte		.L4538-.L2
	.byte		"ATV_DBWREG_BRAKEFORWARD"
	.byte		0
	.4byte		.L4358
	.uleb128	465
	.byte		0x1
	.byte		0x1
	.4byte		.L4539
	.4byte		.L4540
	.sleb128	3
	.4byte		.L4358
	.uleb128	465
	.byte		"rtu_FS1"
	.byte		0
	.4byte		.L4474
	.4byte		.L4542
	.sleb128	3
	.4byte		.L4358
	.uleb128	465
	.byte		"rtu_throttleX1000"
	.byte		0
	.4byte		.L4528
	.4byte		.L4543
	.sleb128	3
	.4byte		.L4358
	.uleb128	466
	.byte		"localB"
	.byte		0
	.4byte		.L4544
	.4byte		.L4547
.L4548:
	.sleb128	5
	.4byte		.L4379
	.byte		"rtb_Switch2_n"
	.byte		0
	.4byte		.L4371
	.4byte		.L4549
.L4550:
	.sleb128	6
	.4byte		.L4358
	.uleb128	468
	.byte		"rtb_Switch2_i"
	.byte		0
	.4byte		.L4528
	.4byte		.L4551
.L4552:
	.sleb128	6
	.4byte		.L4358
	.uleb128	469
	.byte		"rtb_RelationalOperator1"
	.byte		0
	.4byte		.L4474
	.4byte		.L4553
.L4554:
	.sleb128	6
	.4byte		.L4358
	.uleb128	470
	.byte		"rtb_Switch2_n"
	.byte		0
	.4byte		.L4371
	.4byte		.L4555
	.section	.debug_info,,n
.L4556:
	.sleb128	9
	.4byte		.L4358
	.uleb128	471
	.byte		"tmp"
	.byte		0
	.4byte		.L4557
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	24
.L4559:
	.sleb128	9
	.4byte		.L4358
	.uleb128	472
	.byte		"tmp_0"
	.byte		0
	.4byte		.L4557
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	36
.L4560:
	.sleb128	9
	.4byte		.L4358
	.uleb128	473
	.byte		"tmp_1"
	.byte		0
	.4byte		.L4557
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	48
.L4561:
	.sleb128	9
	.4byte		.L4358
	.uleb128	474
	.byte		"tmp_2"
	.byte		0
	.4byte		.L4562
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	16
.L4564:
	.sleb128	9
	.4byte		.L4358
	.uleb128	475
	.byte		"tmp_3"
	.byte		0
	.4byte		.L4359
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L4565:
	.sleb128	9
	.4byte		.L4358
	.uleb128	476
	.byte		"tmp_4"
	.byte		0
	.4byte		.L4359
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L4566:
	.sleb128	6
	.4byte		.L4358
	.uleb128	477
	.byte		"rtb_RelationalOperator1_0"
	.byte		0
	.4byte		.L4488
	.4byte		.L4567
.L4568:
	.sleb128	9
	.4byte		.L4358
	.uleb128	478
	.byte		"tmp_5"
	.byte		0
	.4byte		.L4557
	.sleb128	5
	.byte		0x3
	.4byte		tmp_5.3790
	.section	.debug_info,,n
	.sleb128	0
.L4538:
	.section	.debug_info,,n
.L4573:
	.sleb128	8
	.4byte		.L4570-.L2
	.byte		"ATV_KEY_ON"
	.byte		0
	.4byte		.L4358
	.uleb128	564
	.byte		0x1
	.4byte		.L4571
	.4byte		.L4572
.L4574:
	.sleb128	6
	.4byte		.L4358
	.uleb128	566
	.byte		"tmp"
	.byte		0
	.4byte		.L4474
	.4byte		.L4575
	.section	.debug_info,,n
	.sleb128	0
.L4570:
	.section	.debug_info,,n
.L4581:
	.sleb128	10
	.4byte		.L4578-.L2
	.byte		"ATV_Off"
	.byte		0
	.4byte		.L4358
	.uleb128	836
	.4byte		.L4488
	.byte		0x1
	.4byte		.L4579
	.4byte		.L4580
	.sleb128	3
	.4byte		.L4358
	.uleb128	836
	.byte		"TInverterLow"
	.byte		0
	.4byte		.L4474
	.4byte		.L4582
	.sleb128	3
	.4byte		.L4358
	.uleb128	836
	.byte		"TMotorLow"
	.byte		0
	.4byte		.L4474
	.4byte		.L4583
.L4584:
	.sleb128	6
	.4byte		.L4358
	.uleb128	838
	.byte		"PumpSt"
	.byte		0
	.4byte		.L4488
	.4byte		.L4585
	.section	.debug_info,,n
	.sleb128	0
.L4578:
	.section	.debug_info,,n
.L4590:
	.sleb128	10
	.4byte		.L4587-.L2
	.byte		"ATV_On"
	.byte		0
	.4byte		.L4358
	.uleb128	856
	.4byte		.L4488
	.byte		0x1
	.4byte		.L4588
	.4byte		.L4589
	.sleb128	3
	.4byte		.L4358
	.uleb128	856
	.byte		"TInverterHi"
	.byte		0
	.4byte		.L4474
	.4byte		.L4591
	.sleb128	3
	.4byte		.L4358
	.uleb128	856
	.byte		"TMotorHi"
	.byte		0
	.4byte		.L4474
	.4byte		.L4592
.L4593:
	.sleb128	6
	.4byte		.L4358
	.uleb128	858
	.byte		"PumpSt"
	.byte		0
	.4byte		.L4488
	.4byte		.L4594
	.section	.debug_info,,n
	.sleb128	0
.L4587:
	.section	.debug_info,,n
.L4601:
	.sleb128	8
	.4byte		.L4598-.L2
	.byte		"ATV_output0"
	.byte		0
	.4byte		.L4358
	.uleb128	882
	.byte		0x1
	.4byte		.L4599
	.4byte		.L4600
.L4602:
	.sleb128	5
	.4byte		.L4379
	.byte		"RelationalOperator6"
	.byte		0
	.4byte		.L4474
	.4byte		.L4603
.L4604:
	.sleb128	5
	.4byte		.L4379
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L4488
	.4byte		.L4605
.L4606:
	.sleb128	5
	.4byte		.L4379
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L4488
	.4byte		.L4607
.L4608:
	.sleb128	5
	.4byte		.L4379
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L4488
	.4byte		.L4609
.L4610:
	.sleb128	5
	.4byte		.L4379
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L4488
	.4byte		.L4611
.L4612:
	.sleb128	5
	.4byte		.L4379
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L4488
	.4byte		.L4613
.L4614:
	.sleb128	5
	.4byte		.L4379
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L4488
	.4byte		.L4615
.L4616:
	.sleb128	5
	.4byte		.L4379
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L4488
	.4byte		.L4617
.L4618:
	.sleb128	5
	.4byte		.L4379
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L4488
	.4byte		.L4619
.L4620:
	.sleb128	5
	.4byte		.L4379
	.byte		"rtb_Gain_d"
	.byte		0
	.4byte		.L4621
	.4byte		.L4622
.L4623:
	.sleb128	5
	.4byte		.L4379
	.byte		"rtb_Add"
	.byte		0
	.4byte		.L4371
	.4byte		.L4624
.L4625:
	.sleb128	5
	.4byte		.L4379
	.byte		"rtb_Add"
	.byte		0
	.4byte		.L4371
	.4byte		.L4626
.L4627:
	.sleb128	6
	.4byte		.L4358
	.uleb128	884
	.byte		"rtb_Add"
	.byte		0
	.4byte		.L4371
	.4byte		.L4628
.L4629:
	.sleb128	6
	.4byte		.L4358
	.uleb128	885
	.byte		"rtb_Gain_d"
	.byte		0
	.4byte		.L4621
	.4byte		.L4630
.L4631:
	.sleb128	6
	.4byte		.L4358
	.uleb128	886
	.byte		"rtb_Gain"
	.byte		0
	.4byte		.L4488
	.4byte		.L4632
.L4633:
	.sleb128	6
	.4byte		.L4358
	.uleb128	887
	.byte		"RelationalOperator6"
	.byte		0
	.4byte		.L4474
	.4byte		.L4634
.L4635:
	.sleb128	6
	.4byte		.L4358
	.uleb128	888
	.byte		"RelationalOperator8"
	.byte		0
	.4byte		.L4474
	.4byte		.L4636
.L4637:
	.sleb128	9
	.4byte		.L4358
	.uleb128	899
	.byte		"adc"
	.byte		0
	.4byte		.L4638
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	46
.L4640:
	.sleb128	9
	.4byte		.L4358
	.uleb128	927
	.byte		"state"
	.byte		0
	.4byte		.L4621
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	32
.L4641:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1103
	.byte		"data"
	.byte		0
	.4byte		.L4642
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	60
.L4645:
	.sleb128	6
	.4byte		.L4358
	.uleb128	1104
	.byte		"retval"
	.byte		0
	.4byte		.L4646
	.4byte		.L4647
.L4648:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1105
	.byte		"pcx_CANdb_TransmitMessage_in_port_buffer"
	.byte		0
	.4byte		.L4649
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	100
.L4652:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1106
	.byte		"pcx_CANdb_TransmitMessage_in_port_ptr"
	.byte		0
	.4byte		.L4653
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	112
.L4656:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1205
	.byte		"adc"
	.byte		0
	.4byte		.L4638
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	48
.L4657:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1228
	.byte		"adc"
	.byte		0
	.4byte		.L4638
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	50
.L4658:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1325
	.byte		"data"
	.byte		0
	.4byte		.L4659
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	68
.L4661:
	.sleb128	6
	.4byte		.L4358
	.uleb128	1326
	.byte		"retval"
	.byte		0
	.4byte		.L4646
	.4byte		.L4662
.L4663:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1327
	.byte		"pcx_CANdb_TransmitMessage2_in_port_buffer"
	.byte		0
	.4byte		.L4664
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	124
.L4666:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1328
	.byte		"pcx_CANdb_TransmitMessage2_in_port_ptr"
	.byte		0
	.4byte		.L4667
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	156
.L4669:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1404
	.byte		"data"
	.byte		0
	.4byte		.L4670
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	76
.L4672:
	.sleb128	6
	.4byte		.L4358
	.uleb128	1405
	.byte		"retval"
	.byte		0
	.4byte		.L4646
	.4byte		.L4673
.L4674:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1406
	.byte		"pcx_CANdb_TransmitMessage3_in_port_buffer"
	.byte		0
	.4byte		.L4675
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	188
.L4677:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1407
	.byte		"pcx_CANdb_TransmitMessage3_in_port_ptr"
	.byte		0
	.4byte		.L4678
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	228
.L4680:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1548
	.byte		"data"
	.byte		0
	.4byte		.L4681
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	84
.L4683:
	.sleb128	6
	.4byte		.L4358
	.uleb128	1549
	.byte		"retval"
	.byte		0
	.4byte		.L4646
	.4byte		.L4684
.L4685:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1550
	.byte		"pcx_CANdb_TransmitMessage4_in_port_buffer"
	.byte		0
	.4byte		.L4686
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	140
.L4688:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1551
	.byte		"pcx_CANdb_TransmitMessage4_in_port_ptr"
	.byte		0
	.4byte		.L4689
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	172
.L4691:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1624
	.byte		"data"
	.byte		0
	.4byte		.L4692
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	92
.L4694:
	.sleb128	6
	.4byte		.L4358
	.uleb128	1625
	.byte		"retval"
	.byte		0
	.4byte		.L4646
	.4byte		.L4695
.L4696:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1626
	.byte		"pcx_CANdb_TransmitMessage5_in_port_buffer"
	.byte		0
	.4byte		.L4697
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	208
.L4699:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1627
	.byte		"pcx_CANdb_TransmitMessage5_in_port_ptr"
	.byte		0
	.4byte		.L4700
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	248
.L4702:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1986
	.byte		"state"
	.byte		0
	.4byte		.L4621
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	33
.L4703:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2002
	.byte		"state"
	.byte		0
	.4byte		.L4621
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	34
.L4704:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2018
	.byte		"state"
	.byte		0
	.4byte		.L4621
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	35
.L4705:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2034
	.byte		"state"
	.byte		0
	.4byte		.L4621
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	36
.L4706:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2050
	.byte		"state"
	.byte		0
	.4byte		.L4621
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	37
.L4707:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2066
	.byte		"state"
	.byte		0
	.4byte		.L4621
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	38
.L4708:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2082
	.byte		"state"
	.byte		0
	.4byte		.L4621
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	39
.L4709:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2098
	.byte		"state"
	.byte		0
	.4byte		.L4621
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	40
.L4710:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2114
	.byte		"state"
	.byte		0
	.4byte		.L4621
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	41
.L4711:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2147
	.byte		"dc"
	.byte		0
	.4byte		.L4651
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	56
.L4712:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2167
	.byte		"adc"
	.byte		0
	.4byte		.L4638
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	52
.L4713:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2192
	.byte		"state"
	.byte		0
	.4byte		.L4621
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	42
.L4714:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2210
	.byte		"state"
	.byte		0
	.4byte		.L4621
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	43
.L4715:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2228
	.byte		"state"
	.byte		0
	.4byte		.L4621
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	44
.L4716:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2244
	.byte		"state"
	.byte		0
	.4byte		.L4621
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	45
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L4720
	.4byte		.L4717
	.4byte		.L4718
.L4721:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1107
	.byte		"pcx_CANdb_TransmitMessage_field_start_pos"
	.byte		0
	.4byte		.L4722
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_start_pos.3931
.L4726:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1110
	.byte		"pcx_CANdb_TransmitMessage_field_width"
	.byte		0
	.4byte		.L4727
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_width.3932
.L4730:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1113
	.byte		"pcx_CANdb_TransmitMessage_field_is_signed"
	.byte		0
	.4byte		.L4731
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_is_signed.3933
.L4734:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1116
	.byte		"pcx_CANdb_TransmitMessage_field_valtype"
	.byte		0
	.4byte		.L4735
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_valtype.3934
.L4738:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1119
	.byte		"pcx_CANdb_TransmitMessage_field_order"
	.byte		0
	.4byte		.L4739
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_order.3935
.L4742:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1122
	.byte		"pcx_CANdb_TransmitMessage_field_eng_min"
	.byte		0
	.4byte		.L4743
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_eng_min.3936
.L4747:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1125
	.byte		"pcx_CANdb_TransmitMessage_field_eng_max"
	.byte		0
	.4byte		.L4748
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_eng_max.3937
.L4751:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1128
	.byte		"pcx_CANdb_TransmitMessage_field_scale"
	.byte		0
	.4byte		.L4752
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_scale.3938
.L4755:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1131
	.byte		"pcx_CANdb_TransmitMessage_field_offset"
	.byte		0
	.4byte		.L4756
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_field_offset.3939
	.section	.debug_info,,n
	.sleb128	0
.L4720:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L4762
	.4byte		.L4759
	.4byte		.L4760
.L4763:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1329
	.byte		"pcx_CANdb_TransmitMessage2_field_start_pos"
	.byte		0
	.4byte		.L4764
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_start_pos.3960
.L4767:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1332
	.byte		"pcx_CANdb_TransmitMessage2_field_width"
	.byte		0
	.4byte		.L4768
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_width.3961
.L4771:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1335
	.byte		"pcx_CANdb_TransmitMessage2_field_is_signed"
	.byte		0
	.4byte		.L4772
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_is_signed.3962
.L4775:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1338
	.byte		"pcx_CANdb_TransmitMessage2_field_valtype"
	.byte		0
	.4byte		.L4776
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_valtype.3963
.L4779:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1341
	.byte		"pcx_CANdb_TransmitMessage2_field_order"
	.byte		0
	.4byte		.L4780
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_order.3964
.L4783:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1344
	.byte		"pcx_CANdb_TransmitMessage2_field_eng_min"
	.byte		0
	.4byte		.L4784
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_eng_min.3965
.L4787:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1347
	.byte		"pcx_CANdb_TransmitMessage2_field_eng_max"
	.byte		0
	.4byte		.L4788
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_eng_max.3966
.L4791:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1350
	.byte		"pcx_CANdb_TransmitMessage2_field_scale"
	.byte		0
	.4byte		.L4792
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_scale.3967
.L4795:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1353
	.byte		"pcx_CANdb_TransmitMessage2_field_offset"
	.byte		0
	.4byte		.L4796
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_field_offset.3968
	.section	.debug_info,,n
	.sleb128	0
.L4762:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L4802
	.4byte		.L4799
	.4byte		.L4800
.L4803:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1408
	.byte		"pcx_CANdb_TransmitMessage3_field_start_pos"
	.byte		0
	.4byte		.L4804
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_start_pos.3971
.L4807:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1411
	.byte		"pcx_CANdb_TransmitMessage3_field_width"
	.byte		0
	.4byte		.L4808
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_width.3972
.L4811:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1414
	.byte		"pcx_CANdb_TransmitMessage3_field_is_signed"
	.byte		0
	.4byte		.L4812
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_is_signed.3973
.L4815:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1417
	.byte		"pcx_CANdb_TransmitMessage3_field_valtype"
	.byte		0
	.4byte		.L4816
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_valtype.3974
.L4819:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1420
	.byte		"pcx_CANdb_TransmitMessage3_field_order"
	.byte		0
	.4byte		.L4820
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_order.3975
.L4823:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1423
	.byte		"pcx_CANdb_TransmitMessage3_field_eng_min"
	.byte		0
	.4byte		.L4824
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_eng_min.3976
.L4827:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1427
	.byte		"pcx_CANdb_TransmitMessage3_field_eng_max"
	.byte		0
	.4byte		.L4828
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_eng_max.3977
.L4831:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1431
	.byte		"pcx_CANdb_TransmitMessage3_field_scale"
	.byte		0
	.4byte		.L4832
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_scale.3978
.L4835:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1435
	.byte		"pcx_CANdb_TransmitMessage3_field_offset"
	.byte		0
	.4byte		.L4836
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_field_offset.3979
	.section	.debug_info,,n
	.sleb128	0
.L4802:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L4842
	.4byte		.L4839
	.4byte		.L4840
.L4843:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1552
	.byte		"pcx_CANdb_TransmitMessage4_field_start_pos"
	.byte		0
	.4byte		.L4844
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_start_pos.3988
.L4847:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1555
	.byte		"pcx_CANdb_TransmitMessage4_field_width"
	.byte		0
	.4byte		.L4848
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_width.3989
.L4851:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1558
	.byte		"pcx_CANdb_TransmitMessage4_field_is_signed"
	.byte		0
	.4byte		.L4852
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_is_signed.3990
.L4855:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1561
	.byte		"pcx_CANdb_TransmitMessage4_field_valtype"
	.byte		0
	.4byte		.L4856
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_valtype.3991
.L4859:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1564
	.byte		"pcx_CANdb_TransmitMessage4_field_order"
	.byte		0
	.4byte		.L4860
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_order.3992
.L4863:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1567
	.byte		"pcx_CANdb_TransmitMessage4_field_eng_min"
	.byte		0
	.4byte		.L4864
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_eng_min.3993
.L4867:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1570
	.byte		"pcx_CANdb_TransmitMessage4_field_eng_max"
	.byte		0
	.4byte		.L4868
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_eng_max.3994
.L4871:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1573
	.byte		"pcx_CANdb_TransmitMessage4_field_scale"
	.byte		0
	.4byte		.L4872
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_scale.3995
.L4875:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1576
	.byte		"pcx_CANdb_TransmitMessage4_field_offset"
	.byte		0
	.4byte		.L4876
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_field_offset.3996
	.section	.debug_info,,n
	.sleb128	0
.L4842:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L4882
	.4byte		.L4879
	.4byte		.L4880
.L4883:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1628
	.byte		"pcx_CANdb_TransmitMessage5_field_start_pos"
	.byte		0
	.4byte		.L4884
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_start_pos.3999
.L4887:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1631
	.byte		"pcx_CANdb_TransmitMessage5_field_width"
	.byte		0
	.4byte		.L4888
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_width.4000
.L4891:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1634
	.byte		"pcx_CANdb_TransmitMessage5_field_is_signed"
	.byte		0
	.4byte		.L4892
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_is_signed.4001
.L4895:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1637
	.byte		"pcx_CANdb_TransmitMessage5_field_valtype"
	.byte		0
	.4byte		.L4896
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_valtype.4002
.L4899:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1640
	.byte		"pcx_CANdb_TransmitMessage5_field_order"
	.byte		0
	.4byte		.L4900
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_order.4003
.L4903:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1643
	.byte		"pcx_CANdb_TransmitMessage5_field_eng_min"
	.byte		0
	.4byte		.L4904
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_eng_min.4004
.L4907:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1647
	.byte		"pcx_CANdb_TransmitMessage5_field_eng_max"
	.byte		0
	.4byte		.L4908
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_eng_max.4005
.L4911:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1651
	.byte		"pcx_CANdb_TransmitMessage5_field_scale"
	.byte		0
	.4byte		.L4912
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_scale.4006
.L4915:
	.sleb128	9
	.4byte		.L4358
	.uleb128	1655
	.byte		"pcx_CANdb_TransmitMessage5_field_offset"
	.byte		0
	.4byte		.L4916
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_field_offset.4007
	.section	.debug_info,,n
	.sleb128	0
.L4882:
	.section	.debug_info,,n
	.sleb128	0
.L4598:
	.section	.debug_info,,n
.L4923:
	.sleb128	8
	.4byte		.L4920-.L2
	.byte		"ATV_update0"
	.byte		0
	.4byte		.L4358
	.uleb128	2255
	.byte		0x1
	.4byte		.L4921
	.4byte		.L4922
	.section	.debug_info,,n
	.sleb128	0
.L4920:
	.section	.debug_info,,n
.L4928:
	.sleb128	8
	.4byte		.L4925-.L2
	.byte		"ATV_output1"
	.byte		0
	.4byte		.L4358
	.uleb128	2275
	.byte		0x1
	.4byte		.L4926
	.4byte		.L4927
.L4929:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2282
	.byte		"data"
	.byte		0
	.4byte		.L4930
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	48
.L4932:
	.sleb128	6
	.4byte		.L4358
	.uleb128	2283
	.byte		"retval"
	.byte		0
	.4byte		.L4646
	.4byte		.L4933
.L4934:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2284
	.byte		"pcx_CANdb_TransmitMessage1_in_port_buffer"
	.byte		0
	.4byte		.L4935
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	144
.L4937:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2285
	.byte		"pcx_CANdb_TransmitMessage1_in_port_ptr"
	.byte		0
	.4byte		.L4938
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	164
.L4940:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2360
	.byte		"data"
	.byte		0
	.4byte		.L4941
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	56
.L4943:
	.sleb128	6
	.4byte		.L4358
	.uleb128	2361
	.byte		"retval"
	.byte		0
	.4byte		.L4646
	.4byte		.L4944
.L4945:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2362
	.byte		"pcx_CANdb_TransmitMessage6_in_port_buffer"
	.byte		0
	.4byte		.L4946
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	112
.L4948:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2363
	.byte		"pcx_CANdb_TransmitMessage6_in_port_ptr"
	.byte		0
	.4byte		.L4949
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	128
.L4951:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2431
	.byte		"data"
	.byte		0
	.4byte		.L4952
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	64
.L4954:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2432
	.byte		"timestamp"
	.byte		0
	.4byte		.L4955
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	36
.L4956:
	.sleb128	6
	.4byte		.L4358
	.uleb128	2433
	.byte		"pcxf_rx_receive_status"
	.byte		0
	.4byte		.L4957
	.4byte		.L4959
.L4960:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2434
	.byte		"pcx_CANdb_ReceiveMessage_out_port_buffer"
	.byte		0
	.4byte		.L4961
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	88
.L4963:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2435
	.byte		"pcx_CANdb_ReceiveMessage_out_port"
	.byte		0
	.4byte		.L4964
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	100
.L4966:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2523
	.byte		"data"
	.byte		0
	.4byte		.L4967
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	72
.L4969:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2524
	.byte		"timestamp"
	.byte		0
	.4byte		.L4955
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	40
.L4970:
	.sleb128	6
	.4byte		.L4358
	.uleb128	2525
	.byte		"pcxf_rx_receive_status"
	.byte		0
	.4byte		.L4957
	.4byte		.L4971
.L4972:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2526
	.byte		"pcx_CANdb_ReceiveMessage_p_out_port_buffer"
	.byte		0
	.4byte		.L4973
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	232
.L4975:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2527
	.byte		"pcx_CANdb_ReceiveMessage_p_out_port"
	.byte		0
	.4byte		.L4976
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	260
.L4978:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2649
	.byte		"data"
	.byte		0
	.4byte		.L4979
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	80
.L4981:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2650
	.byte		"timestamp"
	.byte		0
	.4byte		.L4955
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	44
.L4982:
	.sleb128	6
	.4byte		.L4358
	.uleb128	2651
	.byte		"pcxf_rx_receive_status"
	.byte		0
	.4byte		.L4957
	.4byte		.L4983
.L4984:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2652
	.byte		"pcx_CANdb_ReceiveMessage_e_out_port_buffer"
	.byte		0
	.4byte		.L4985
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	184
.L4987:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2653
	.byte		"pcx_CANdb_ReceiveMessage_e_out_port"
	.byte		0
	.4byte		.L4988
	.sleb128	4
	.byte		0x92
	.uleb128	1
	.sleb128	208
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L4993
	.4byte		.L4990
	.4byte		.L4991
.L4994:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2286
	.byte		"pcx_CANdb_TransmitMessage1_field_start_pos"
	.byte		0
	.4byte		.L4995
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_start_pos.4148
.L4998:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2289
	.byte		"pcx_CANdb_TransmitMessage1_field_width"
	.byte		0
	.4byte		.L4999
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_width.4149
.L5002:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2292
	.byte		"pcx_CANdb_TransmitMessage1_field_is_signed"
	.byte		0
	.4byte		.L5003
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_is_signed.4150
.L5006:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2295
	.byte		"pcx_CANdb_TransmitMessage1_field_valtype"
	.byte		0
	.4byte		.L5007
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_valtype.4151
.L5010:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2298
	.byte		"pcx_CANdb_TransmitMessage1_field_order"
	.byte		0
	.4byte		.L5011
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_order.4152
.L5014:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2301
	.byte		"pcx_CANdb_TransmitMessage1_field_eng_min"
	.byte		0
	.4byte		.L5015
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_eng_min.4153
.L5018:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2305
	.byte		"pcx_CANdb_TransmitMessage1_field_eng_max"
	.byte		0
	.4byte		.L5019
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_eng_max.4154
.L5022:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2309
	.byte		"pcx_CANdb_TransmitMessage1_field_scale"
	.byte		0
	.4byte		.L5023
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_scale.4155
.L5026:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2313
	.byte		"pcx_CANdb_TransmitMessage1_field_offset"
	.byte		0
	.4byte		.L5027
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_field_offset.4156
	.section	.debug_info,,n
	.sleb128	0
.L4993:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5033
	.4byte		.L5030
	.4byte		.L5031
.L5034:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2364
	.byte		"pcx_CANdb_TransmitMessage6_field_start_pos"
	.byte		0
	.4byte		.L5035
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_start_pos.4159
.L5038:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2367
	.byte		"pcx_CANdb_TransmitMessage6_field_width"
	.byte		0
	.4byte		.L5039
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_width.4160
.L5042:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2370
	.byte		"pcx_CANdb_TransmitMessage6_field_is_signed"
	.byte		0
	.4byte		.L5043
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_is_signed.4161
.L5046:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2373
	.byte		"pcx_CANdb_TransmitMessage6_field_valtype"
	.byte		0
	.4byte		.L5047
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_valtype.4162
.L5050:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2376
	.byte		"pcx_CANdb_TransmitMessage6_field_order"
	.byte		0
	.4byte		.L5051
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_order.4163
.L5054:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2379
	.byte		"pcx_CANdb_TransmitMessage6_field_eng_min"
	.byte		0
	.4byte		.L5055
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_eng_min.4164
.L5058:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2382
	.byte		"pcx_CANdb_TransmitMessage6_field_eng_max"
	.byte		0
	.4byte		.L5059
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_eng_max.4165
.L5062:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2385
	.byte		"pcx_CANdb_TransmitMessage6_field_scale"
	.byte		0
	.4byte		.L5063
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_scale.4166
.L5066:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2388
	.byte		"pcx_CANdb_TransmitMessage6_field_offset"
	.byte		0
	.4byte		.L5067
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_field_offset.4167
	.section	.debug_info,,n
	.sleb128	0
.L5033:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5073
	.4byte		.L5070
	.4byte		.L5071
.L5074:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2436
	.byte		"pcx_CANdb_ReceiveMessage_field_start_pos"
	.byte		0
	.4byte		.L5075
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_start_pos.4170
.L5078:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2439
	.byte		"pcx_CANdb_ReceiveMessage_field_width"
	.byte		0
	.4byte		.L5079
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_width.4171
.L5082:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2442
	.byte		"pcx_CANdb_ReceiveMessage_field_is_signed"
	.byte		0
	.4byte		.L5083
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_is_signed.4172
.L5086:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2445
	.byte		"pcx_CANdb_ReceiveMessage_field_valtype"
	.byte		0
	.4byte		.L5087
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_valtype.4173
.L5090:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2448
	.byte		"pcx_CANdb_ReceiveMessage_field_order"
	.byte		0
	.4byte		.L5091
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_order.4174
.L5094:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2451
	.byte		"pcx_CANdb_ReceiveMessage_field_eng_min"
	.byte		0
	.4byte		.L5095
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_eng_min.4175
.L5098:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2454
	.byte		"pcx_CANdb_ReceiveMessage_field_eng_max"
	.byte		0
	.4byte		.L5099
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_eng_max.4176
.L5102:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2457
	.byte		"pcx_CANdb_ReceiveMessage_field_scale"
	.byte		0
	.4byte		.L5103
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_scale.4177
.L5106:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2460
	.byte		"pcx_CANdb_ReceiveMessage_field_offset"
	.byte		0
	.4byte		.L5107
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_field_offset.4178
	.section	.debug_info,,n
	.sleb128	0
.L5073:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5113
	.4byte		.L5110
	.4byte		.L5111
.L5114:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2528
	.byte		"pcx_CANdb_ReceiveMessage_p_field_start_pos"
	.byte		0
	.4byte		.L5115
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_start_pos.4183
.L5118:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2531
	.byte		"pcx_CANdb_ReceiveMessage_p_field_width"
	.byte		0
	.4byte		.L5119
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_width.4184
.L5122:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2534
	.byte		"pcx_CANdb_ReceiveMessage_p_field_is_signed"
	.byte		0
	.4byte		.L5123
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_is_signed.4185
.L5126:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2537
	.byte		"pcx_CANdb_ReceiveMessage_p_field_valtype"
	.byte		0
	.4byte		.L5127
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_valtype.4186
.L5130:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2540
	.byte		"pcx_CANdb_ReceiveMessage_p_field_order"
	.byte		0
	.4byte		.L5131
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_order.4187
.L5134:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2543
	.byte		"pcx_CANdb_ReceiveMessage_p_field_eng_min"
	.byte		0
	.4byte		.L5135
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_eng_min.4188
.L5138:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2547
	.byte		"pcx_CANdb_ReceiveMessage_p_field_eng_max"
	.byte		0
	.4byte		.L5139
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_eng_max.4189
.L5142:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2551
	.byte		"pcx_CANdb_ReceiveMessage_p_field_scale"
	.byte		0
	.4byte		.L5143
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_scale.4190
.L5146:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2555
	.byte		"pcx_CANdb_ReceiveMessage_p_field_offset"
	.byte		0
	.4byte		.L5147
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_field_offset.4191
	.section	.debug_info,,n
	.sleb128	0
.L5113:
	.section	.debug_info,,n
	.sleb128	11
	.4byte		.L5153
	.4byte		.L5150
	.4byte		.L5151
.L5154:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2654
	.byte		"pcx_CANdb_ReceiveMessage_e_field_start_pos"
	.byte		0
	.4byte		.L5155
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_start_pos.4196
.L5158:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2657
	.byte		"pcx_CANdb_ReceiveMessage_e_field_width"
	.byte		0
	.4byte		.L5159
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_width.4197
.L5162:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2660
	.byte		"pcx_CANdb_ReceiveMessage_e_field_is_signed"
	.byte		0
	.4byte		.L5163
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_is_signed.4198
.L5166:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2663
	.byte		"pcx_CANdb_ReceiveMessage_e_field_valtype"
	.byte		0
	.4byte		.L5167
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_valtype.4199
.L5170:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2666
	.byte		"pcx_CANdb_ReceiveMessage_e_field_order"
	.byte		0
	.4byte		.L5171
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_order.4200
.L5174:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2669
	.byte		"pcx_CANdb_ReceiveMessage_e_field_eng_min"
	.byte		0
	.4byte		.L5175
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_eng_min.4201
.L5178:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2673
	.byte		"pcx_CANdb_ReceiveMessage_e_field_eng_max"
	.byte		0
	.4byte		.L5179
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_eng_max.4202
.L5182:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2677
	.byte		"pcx_CANdb_ReceiveMessage_e_field_scale"
	.byte		0
	.4byte		.L5183
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_scale.4203
.L5186:
	.sleb128	9
	.4byte		.L4358
	.uleb128	2681
	.byte		"pcx_CANdb_ReceiveMessage_e_field_offset"
	.byte		0
	.4byte		.L5187
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_field_offset.4204
	.section	.debug_info,,n
	.sleb128	0
.L5153:
	.section	.debug_info,,n
	.sleb128	0
.L4925:
	.section	.debug_info,,n
.L5194:
	.sleb128	8
	.4byte		.L5191-.L2
	.byte		"ATV_update1"
	.byte		0
	.4byte		.L4358
	.uleb128	2741
	.byte		0x1
	.4byte		.L5192
	.4byte		.L5193
	.section	.debug_info,,n
	.sleb128	0
.L5191:
	.section	.debug_info,,n
.L5199:
	.sleb128	8
	.4byte		.L5196-.L2
	.byte		"ATV_output2"
	.byte		0
	.4byte		.L4358
	.uleb128	2788
	.byte		0x1
	.4byte		.L5197
	.4byte		.L5198
	.section	.debug_info,,n
	.sleb128	0
.L5196:
	.section	.debug_info,,n
.L5204:
	.sleb128	8
	.4byte		.L5201-.L2
	.byte		"ATV_update2"
	.byte		0
	.4byte		.L4358
	.uleb128	2823
	.byte		0x1
	.4byte		.L5202
	.4byte		.L5203
	.section	.debug_info,,n
	.sleb128	0
.L5201:
	.section	.debug_info,,n
.L5209:
	.sleb128	8
	.4byte		.L5206-.L2
	.byte		"ATV_initialize"
	.byte		0
	.4byte		.L4358
	.uleb128	2885
	.byte		0x1
	.4byte		.L5207
	.4byte		.L5208
.L5210:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3259
	.byte		"year"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L5212:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3260
	.byte		"month"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	10
.L5213:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3261
	.byte		"day"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L5214:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3275
	.byte		"major_ver"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	14
.L5215:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3276
	.byte		"minor_ver"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	16
.L5216:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3277
	.byte		"sub_minor_ver"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	18
.L5217:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3291
	.byte		"year"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	20
.L5218:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3292
	.byte		"month"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	22
.L5219:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3293
	.byte		"day"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	24
.L5220:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3307
	.byte		"major_ver"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	26
.L5221:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3308
	.byte		"minor_ver"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	28
.L5222:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3309
	.byte		"sub_minor_ver"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	30
.L5223:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3323
	.byte		"year"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	32
.L5224:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3324
	.byte		"month"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	34
.L5225:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3325
	.byte		"day"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	36
.L5226:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3339
	.byte		"major_ver"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	38
.L5227:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3340
	.byte		"minor_ver"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	40
.L5228:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3341
	.byte		"sub_minor_ver"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	42
.L5229:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3355
	.byte		"year"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	44
.L5230:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3356
	.byte		"month"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	46
.L5231:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3357
	.byte		"day"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	48
.L5232:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3371
	.byte		"major_ver"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	50
.L5233:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3372
	.byte		"minor_ver"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	52
.L5234:
	.sleb128	9
	.4byte		.L4358
	.uleb128	3373
	.byte		"sub_minor_ver"
	.byte		0
	.4byte		.L5211
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	54
	.section	.debug_info,,n
	.sleb128	0
.L5206:
	.section	.debug_info,,n
.L5239:
	.sleb128	4
	.4byte		.L5236-.L2
	.byte		"MdlOutputs"
	.byte		0
	.4byte		.L4358
	.uleb128	3475
	.byte		0x1
	.byte		0x1
	.4byte		.L5237
	.4byte		.L5238
	.sleb128	3
	.4byte		.L4358
	.uleb128	3475
	.byte		"tid"
	.byte		0
	.4byte		.L4491
	.4byte		.L5240
	.section	.debug_info,,n
	.sleb128	0
.L5236:
	.section	.debug_info,,n
.L5245:
	.sleb128	4
	.4byte		.L5242-.L2
	.byte		"MdlUpdate"
	.byte		0
	.4byte		.L4358
	.uleb128	3480
	.byte		0x1
	.byte		0x1
	.4byte		.L5243
	.4byte		.L5244
	.sleb128	3
	.4byte		.L4358
	.uleb128	3480
	.byte		"tid"
	.byte		0
	.4byte		.L4491
	.4byte		.L5246
	.section	.debug_info,,n
	.sleb128	0
.L5242:
	.section	.debug_info,,n
.L5251:
	.sleb128	4
	.4byte		.L5248-.L2
	.byte		"MdlInitializeSizes"
	.byte		0
	.4byte		.L4358
	.uleb128	3485
	.byte		0x1
	.byte		0x1
	.4byte		.L5249
	.4byte		.L5250
	.section	.debug_info,,n
	.sleb128	0
.L5248:
	.section	.debug_info,,n
.L5256:
	.sleb128	4
	.4byte		.L5253-.L2
	.byte		"MdlInitializeSampleTimes"
	.byte		0
	.4byte		.L4358
	.uleb128	3489
	.byte		0x1
	.byte		0x1
	.4byte		.L5254
	.4byte		.L5255
	.section	.debug_info,,n
	.sleb128	0
.L5253:
	.section	.debug_info,,n
.L5261:
	.sleb128	4
	.4byte		.L5258-.L2
	.byte		"MdlInitialize"
	.byte		0
	.4byte		.L4358
	.uleb128	3493
	.byte		0x1
	.byte		0x1
	.4byte		.L5259
	.4byte		.L5260
	.section	.debug_info,,n
	.sleb128	0
.L5258:
	.section	.debug_info,,n
.L5266:
	.sleb128	4
	.4byte		.L5263-.L2
	.byte		"MdlStart"
	.byte		0
	.4byte		.L4358
	.uleb128	3497
	.byte		0x1
	.byte		0x1
	.4byte		.L5264
	.4byte		.L5265
	.section	.debug_info,,n
	.sleb128	0
.L5263:
	.section	.debug_info,,n
.L5271:
	.sleb128	4
	.4byte		.L5268-.L2
	.byte		"MdlTerminate"
	.byte		0
	.4byte		.L4358
	.uleb128	3502
	.byte		0x1
	.byte		0x1
	.4byte		.L5269
	.4byte		.L5270
	.section	.debug_info,,n
	.sleb128	0
.L5268:
	.section	.debug_info,,n
.L5279:
	.sleb128	2
	.4byte		.L5273-.L2
	.byte		"ATV"
	.byte		0
	.4byte		.L4358
	.uleb128	3508
	.4byte		.L5276
	.byte		0x1
	.byte		0x1
	.4byte		.L5274
	.4byte		.L5275
.L5280:
	.sleb128	6
	.4byte		.L4358
	.uleb128	3521
	.byte		"mdlTsMap"
	.byte		0
	.4byte		.L4495
	.4byte		.L5281
.L5282:
	.sleb128	6
	.4byte		.L4358
	.uleb128	3543
	.byte		"mdlSampleHits"
	.byte		0
	.4byte		.L4495
	.4byte		.L5283
	.section	.debug_info,,n
	.sleb128	0
.L5273:
	.section	.debug_info,,n
.L5290:
	.sleb128	4
	.4byte		.L5287-.L2
	.byte		"psc_initialise_app"
	.byte		0
	.4byte		.L4358
	.uleb128	3640
	.byte		0x1
	.byte		0x1
	.4byte		.L5288
	.4byte		.L5289
	.section	.debug_info,,n
	.sleb128	0
.L5287:
	.section	.debug_info,,n
.L5295:
	.sleb128	4
	.4byte		.L5292-.L2
	.byte		"psc_background_app"
	.byte		0
	.4byte		.L4358
	.uleb128	3671
	.byte		0x1
	.byte		0x1
	.4byte		.L5293
	.4byte		.L5294
	.section	.debug_info,,n
	.sleb128	0
.L5292:
	.section	.debug_info,,n
.L5300:
	.sleb128	4
	.4byte		.L5297-.L2
	.byte		"pkn_angular_model_task"
	.byte		0
	.4byte		.L4358
	.uleb128	3684
	.byte		0x1
	.byte		0x1
	.4byte		.L5298
	.4byte		.L5299
	.section	.debug_info,,n
	.sleb128	0
.L5297:
	.section	.debug_info,,n
.L5305:
	.sleb128	4
	.4byte		.L5302-.L2
	.byte		"pkn_10ms_model_task"
	.byte		0
	.4byte		.L4358
	.uleb128	3696
	.byte		0x1
	.byte		0x1
	.4byte		.L5303
	.4byte		.L5304
.L5306:
	.sleb128	6
	.4byte		.L4358
	.uleb128	3698
	.byte		"tnext"
	.byte		0
	.4byte		.L4488
	.4byte		.L5307
	.section	.debug_info,,n
	.sleb128	0
.L5302:
	.section	.debug_info,,n
.L5312:
	.sleb128	4
	.4byte		.L5309-.L2
	.byte		"pkn_100ms_model_task"
	.byte		0
	.4byte		.L4358
	.uleb128	3716
	.byte		0x1
	.byte		0x1
	.4byte		.L5310
	.4byte		.L5311
	.section	.debug_info,,n
	.sleb128	0
.L5309:
	.section	.debug_info,,n
.L5317:
	.sleb128	4
	.4byte		.L5314-.L2
	.byte		"pkn_1000ms_model_task"
	.byte		0
	.4byte		.L4358
	.uleb128	3731
	.byte		0x1
	.byte		0x1
	.4byte		.L5315
	.4byte		.L5316
	.section	.debug_info,,n
	.sleb128	0
.L5314:
	.section	.debug_info,,n
.L5318:
	.sleb128	12
	.byte		0x1
	.byte		0x1
	.4byte		.L5319
	.uleb128	83
	.byte		"pkn_task_1000ms_task_hdl"
	.byte		0
	.4byte		.L5320
	.section	.debug_info,,n
	.section	.debug_info,,n
.L5326:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1149
	.byte		"ATV_B"
	.byte		0
	.4byte		.L5328
	.sleb128	5
	.byte		0x3
	.4byte		ATV_B
	.section	.debug_info,,n
	.section	.debug_info,,n
.L5330:
	.sleb128	12
	.byte		0x1
	.byte		0x1
	.4byte		.L5327
	.uleb128	1153
	.byte		"ATV_ConstB"
	.byte		0
	.4byte		.L5331
.L5334:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1163
	.byte		"atv_xd3_raw_ain"
	.byte		0
	.4byte		.L4488
	.sleb128	5
	.byte		0x3
	.4byte		atv_xd3_raw_ain
	.section	.debug_info,,n
	.section	.debug_info,,n
.L5335:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1164
	.byte		"atv_xa1_ain_throttle_raw"
	.byte		0
	.4byte		.L4488
	.sleb128	5
	.byte		0x3
	.4byte		atv_xa1_ain_throttle_raw
	.section	.debug_info,,n
.L5336:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1165
	.byte		"atv_dbg_FAN_out"
	.byte		0
	.4byte		.L4488
	.sleb128	5
	.byte		0x3
	.4byte		atv_dbg_FAN_out
	.section	.debug_info,,n
.L5337:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1166
	.byte		"bms_pack_voltage"
	.byte		0
	.4byte		.L4488
	.sleb128	5
	.byte		0x3
	.4byte		bms_pack_voltage
	.section	.debug_info,,n
.L5338:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1167
	.byte		"atv_stack_used"
	.byte		0
	.4byte		.L4359
	.sleb128	5
	.byte		0x3
	.4byte		atv_stack_used
	.section	.debug_info,,n
.L5339:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1168
	.byte		"atv_task_duration_1s"
	.byte		0
	.4byte		.L4359
	.sleb128	5
	.byte		0x3
	.4byte		atv_task_duration_1s
	.section	.debug_info,,n
.L5340:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1169
	.byte		"atv_task_duration_1s_max"
	.byte		0
	.4byte		.L4359
	.sleb128	5
	.byte		0x3
	.4byte		atv_task_duration_1s_max
	.section	.debug_info,,n
.L5341:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1170
	.byte		"atv_xd1_key_ain"
	.byte		0
	.4byte		.L4372
	.sleb128	5
	.byte		0x3
	.4byte		atv_xd1_key_ain
	.section	.debug_info,,n
.L5342:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1171
	.byte		"atv_xe3_ain"
	.byte		0
	.4byte		.L4372
	.sleb128	5
	.byte		0x3
	.4byte		atv_xe3_ain
	.section	.debug_info,,n
.L5343:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1172
	.byte		"atv_throttleX1000"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_throttleX1000
	.section	.debug_info,,n
.L5344:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1173
	.byte		"atv_app_code_year"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_year
	.section	.debug_info,,n
.L5345:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1174
	.byte		"atv_app_code_month"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_month
	.section	.debug_info,,n
.L5346:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1175
	.byte		"atv_app_code_day"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_day
	.section	.debug_info,,n
.L5347:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1176
	.byte		"atv_app_code_major_ver"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_major_ver
	.section	.debug_info,,n
.L5348:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1177
	.byte		"atv_app_code_minor_ver"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_minor_ver
	.section	.debug_info,,n
.L5349:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1178
	.byte		"atv_app_code_subminor_ver"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_app_code_subminor_ver
	.section	.debug_info,,n
.L5350:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1179
	.byte		"atv_boot_code_year"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_year
	.section	.debug_info,,n
.L5351:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1180
	.byte		"atv_boot_code_month"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_month
	.section	.debug_info,,n
.L5352:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1181
	.byte		"atv_boot_code_day"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_day
	.section	.debug_info,,n
.L5353:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1182
	.byte		"atv_boot_code_major_ver"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_major_ver
	.section	.debug_info,,n
.L5354:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1183
	.byte		"atv_boot_code_minor_ver"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_minor_ver
	.section	.debug_info,,n
.L5355:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1184
	.byte		"atv_boot_code_subminor_ver"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_boot_code_subminor_ver
	.section	.debug_info,,n
.L5356:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1185
	.byte		"atv_prg_code_year"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_year
	.section	.debug_info,,n
.L5357:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1186
	.byte		"atv_prg_code_month"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_month
	.section	.debug_info,,n
.L5358:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1187
	.byte		"atv_prg_code_day"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_day
	.section	.debug_info,,n
.L5359:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1188
	.byte		"atv_prg_code_major_ver"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_major_ver
	.section	.debug_info,,n
.L5360:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1189
	.byte		"atv_prg_code_minor_ver"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_minor_ver
	.section	.debug_info,,n
.L5361:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1190
	.byte		"atv_prg_code_subminor_ver"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_prg_code_subminor_ver
	.section	.debug_info,,n
.L5362:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1191
	.byte		"atv_platform_code_year"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_year
	.section	.debug_info,,n
.L5363:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1192
	.byte		"atv_platform_code_month"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_month
	.section	.debug_info,,n
.L5364:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1193
	.byte		"atv_platform_code_day"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_day
	.section	.debug_info,,n
.L5365:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1194
	.byte		"atv_platform_code_major_ver"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_major_ver
	.section	.debug_info,,n
.L5366:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1195
	.byte		"atv_platform_code_minor_ver"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_minor_ver
	.section	.debug_info,,n
.L5367:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1196
	.byte		"atv_platform_code_subminor_ver"
	.byte		0
	.4byte		.L4528
	.sleb128	5
	.byte		0x3
	.4byte		atv_platform_code_subminor_ver
	.section	.debug_info,,n
.L5368:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1197
	.byte		"atv_cpu_loading"
	.byte		0
	.4byte		.L4621
	.sleb128	5
	.byte		0x3
	.4byte		atv_cpu_loading
	.section	.debug_info,,n
.L5369:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1198
	.byte		"atv_cpu_loading_max"
	.byte		0
	.4byte		.L4621
	.sleb128	5
	.byte		0x3
	.4byte		atv_cpu_loading_max
	.section	.debug_info,,n
.L5370:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1199
	.byte		"atv_state_out"
	.byte		0
	.4byte		.L4621
	.sleb128	5
	.byte		0x3
	.4byte		atv_state_out
	.section	.debug_info,,n
.L5371:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1200
	.byte		"atv_sub_state_out"
	.byte		0
	.4byte		.L4621
	.sleb128	5
	.byte		0x3
	.4byte		atv_sub_state_out
	.section	.debug_info,,n
.L5372:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1201
	.byte		"atv_key_signal"
	.byte		0
	.4byte		.L4474
	.sleb128	5
	.byte		0x3
	.4byte		atv_key_signal
	.section	.debug_info,,n
.L5373:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1202
	.byte		"atv_za3_StartBtn_din"
	.byte		0
	.4byte		.L4474
	.sleb128	5
	.byte		0x3
	.4byte		atv_za3_StartBtn_din
	.section	.debug_info,,n
.L5374:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1203
	.byte		"atv_fs1_in"
	.byte		0
	.4byte		.L4474
	.sleb128	5
	.byte		0x3
	.4byte		atv_fs1_in
	.section	.debug_info,,n
.L5375:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1204
	.byte		"atv_v_dbg_chg_req"
	.byte		0
	.4byte		.L4474
	.sleb128	5
	.byte		0x3
	.4byte		atv_v_dbg_chg_req
	.section	.debug_info,,n
.L5376:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1205
	.byte		"atv_v_dbg_heater_req"
	.byte		0
	.4byte		.L4474
	.sleb128	5
	.byte		0x3
	.4byte		atv_v_dbg_heater_req
	.section	.debug_info,,n
.L5377:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1206
	.byte		"atv_wakelock_out"
	.byte		0
	.4byte		.L4474
	.sleb128	5
	.byte		0x3
	.4byte		atv_wakelock_out
	.section	.debug_info,,n
.L5378:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1207
	.byte		"atv_runLed_out"
	.byte		0
	.4byte		.L4474
	.sleb128	5
	.byte		0x3
	.4byte		atv_runLed_out
	.section	.debug_info,,n
.L5379:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1208
	.byte		"atv_en_dcdc_out"
	.byte		0
	.4byte		.L4474
	.sleb128	5
	.byte		0x3
	.4byte		atv_en_dcdc_out
	.section	.debug_info,,n
.L5380:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1209
	.byte		"atv_dbg_pumpB_out"
	.byte		0
	.4byte		.L4474
	.sleb128	5
	.byte		0x3
	.4byte		atv_dbg_pumpB_out
	.section	.debug_info,,n
.L5381:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1219
	.byte		"atvc_dcMinFan"
	.byte		0
	.4byte		.L5382
	.sleb128	5
	.byte		0x3
	.4byte		atvc_dcMinFan
	.section	.debug_info,,n
.L5384:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1222
	.byte		"atvc_mtadd"
	.byte		0
	.4byte		.L5382
	.sleb128	5
	.byte		0x3
	.4byte		atvc_mtadd
	.section	.debug_info,,n
.L5385:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1225
	.byte		"atvc_mtawnb"
	.byte		0
	.4byte		.L5382
	.sleb128	5
	.byte		0x3
	.4byte		atvc_mtawnb
	.section	.debug_info,,n
.L5386:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1228
	.byte		"atvc_tempSwitchOnFan"
	.byte		0
	.4byte		.L5382
	.sleb128	5
	.byte		0x3
	.4byte		atvc_tempSwitchOnFan
	.section	.debug_info,,n
.L5387:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1250
	.byte		"pcx_CANdb_TransmitMessage_msg_handle"
	.byte		0
	.4byte		.L4639
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage_msg_handle
	.section	.debug_info,,n
.L5388:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1251
	.byte		"pcx_CANdb_TransmitMessage1_msg_handle"
	.byte		0
	.4byte		.L4639
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage1_msg_handle
	.section	.debug_info,,n
.L5389:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1252
	.byte		"pcx_CANdb_TransmitMessage2_msg_handle"
	.byte		0
	.4byte		.L4639
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage2_msg_handle
	.section	.debug_info,,n
.L5390:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1253
	.byte		"pcx_CANdb_TransmitMessage3_msg_handle"
	.byte		0
	.4byte		.L4639
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage3_msg_handle
	.section	.debug_info,,n
.L5391:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1254
	.byte		"pcx_CANdb_TransmitMessage4_msg_handle"
	.byte		0
	.4byte		.L4639
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage4_msg_handle
	.section	.debug_info,,n
.L5392:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1255
	.byte		"pcx_CANdb_TransmitMessage5_msg_handle"
	.byte		0
	.4byte		.L4639
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage5_msg_handle
	.section	.debug_info,,n
.L5393:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1256
	.byte		"pcx_CANdb_TransmitMessage6_msg_handle"
	.byte		0
	.4byte		.L4639
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_TransmitMessage6_msg_handle
	.section	.debug_info,,n
.L5394:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1257
	.byte		"pcx_CANdb_ReceiveMessage_msg_handle"
	.byte		0
	.4byte		.L4639
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_msg_handle
	.section	.debug_info,,n
.L5395:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1258
	.byte		"pcx_CANdb_ReceiveMessage_p_msg_handle"
	.byte		0
	.4byte		.L4639
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_p_msg_handle
	.section	.debug_info,,n
.L5396:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1259
	.byte		"pcx_CANdb_ReceiveMessage_e_msg_handle"
	.byte		0
	.4byte		.L4639
	.sleb128	5
	.byte		0x3
	.4byte		pcx_CANdb_ReceiveMessage_e_msg_handle
	.section	.debug_info,,n
.L5397:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1262
	.byte		"ATV_M"
	.byte		0
	.4byte		.L5398
	.sleb128	5
	.byte		0x3
	.4byte		ATV_M
	.section	.debug_info,,n
.L5399:
	.sleb128	13
	.byte		0x1
	.4byte		.L4358
	.uleb128	121
	.byte		"ATV_M_"
	.byte		0
	.4byte		.L5277
	.sleb128	5
	.byte		0x3
	.4byte		ATV_M_
	.section	.debug_info,,n
.L5400:
	.sleb128	13
	.byte		0x1
	.4byte		.L4358
	.uleb128	147
	.byte		"S"
	.byte		0
	.4byte		.L5276
	.sleb128	5
	.byte		0x3
	.4byte		S
	.section	.debug_info,,n
.L5401:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1152
	.byte		"ATV_DW"
	.byte		0
	.4byte		.L5402
	.sleb128	5
	.byte		0x3
	.4byte		ATV_DW
	.section	.debug_info,,n
.L5404:
	.sleb128	13
	.byte		0x1
	.4byte		.L5327
	.uleb128	1249
	.byte		"pdx_DigitalInput_detm_wrk_data"
	.byte		0
	.4byte		.L5405
	.sleb128	5
	.byte		0x3
	.4byte		pdx_DigitalInput_detm_wrk_data
	.section	.debug_info,,n
.L5278:
	.sleb128	14
	.4byte		.L5407
	.uleb128	21
	.4byte		.L5408-.L2
	.byte		"tag_RTM_ATV_T"
	.byte		0
	.uleb128	580
	.section	.debug_info,,n
.L3661:
	.sleb128	15
	.byte		"path"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3662:
	.sleb128	15
	.byte		"modelName"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L3663:
	.sleb128	15
	.byte		"childSfunctions"
	.byte		0
	.4byte		.L5412
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L3664:
	.sleb128	15
	.byte		"errorStatus"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L3665:
	.sleb128	15
	.byte		"simMode"
	.byte		0
	.4byte		.L5415
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L3666:
	.sleb128	15
	.byte		"extModeInfo"
	.byte		0
	.4byte		.L5417
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3667:
	.sleb128	15
	.byte		"solverInfo"
	.byte		0
	.4byte		.L5420
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3668:
	.sleb128	15
	.byte		"solverInfoPtr"
	.byte		0
	.4byte		.L5423
	.sleb128	3
	.byte		0x23
	.uleb128	232
.L3669:
	.sleb128	15
	.byte		"sfcnInfo"
	.byte		0
	.4byte		.L4493
	.sleb128	3
	.byte		0x23
	.uleb128	236
.L3670:
	.sleb128	15
	.byte		"blockIO"
	.byte		0
	.4byte		.L4493
	.sleb128	3
	.byte		0x23
	.uleb128	240
.L3671:
	.sleb128	15
	.byte		"constBlockIO"
	.byte		0
	.4byte		.L5424
	.sleb128	3
	.byte		0x23
	.uleb128	244
.L3672:
	.sleb128	15
	.byte		"defaultParam"
	.byte		0
	.4byte		.L4493
	.sleb128	3
	.byte		0x23
	.uleb128	248
.L3673:
	.sleb128	15
	.byte		"prevZCSigState"
	.byte		0
	.4byte		.L5426
	.sleb128	3
	.byte		0x23
	.uleb128	252
.L3674:
	.sleb128	15
	.byte		"contStates"
	.byte		0
	.4byte		.L5428
	.sleb128	3
	.byte		0x23
	.uleb128	256
.L3675:
	.sleb128	15
	.byte		"periodicContStateIndices"
	.byte		0
	.4byte		.L4495
	.sleb128	3
	.byte		0x23
	.uleb128	260
.L3676:
	.sleb128	15
	.byte		"periodicContStateRanges"
	.byte		0
	.4byte		.L5428
	.sleb128	3
	.byte		0x23
	.uleb128	264
.L3677:
	.sleb128	15
	.byte		"derivs"
	.byte		0
	.4byte		.L5428
	.sleb128	3
	.byte		0x23
	.uleb128	268
.L3678:
	.sleb128	15
	.byte		"zcSignalValues"
	.byte		0
	.4byte		.L4493
	.sleb128	3
	.byte		0x23
	.uleb128	272
.L3679:
	.sleb128	15
	.byte		"inputs"
	.byte		0
	.4byte		.L4493
	.sleb128	3
	.byte		0x23
	.uleb128	276
.L3680:
	.sleb128	15
	.byte		"outputs"
	.byte		0
	.4byte		.L4493
	.sleb128	3
	.byte		0x23
	.uleb128	280
.L3681:
	.sleb128	15
	.byte		"contStateDisabled"
	.byte		0
	.4byte		.L5429
	.sleb128	3
	.byte		0x23
	.uleb128	284
.L3682:
	.sleb128	15
	.byte		"zCCacheNeedsReset"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	288
.L3683:
	.sleb128	15
	.byte		"derivCacheNeedsReset"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	289
.L3684:
	.sleb128	15
	.byte		"CTOutputIncnstWithState"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	290
.L3685:
	.sleb128	15
	.byte		"dwork"
	.byte		0
	.4byte		.L4493
	.sleb128	3
	.byte		0x23
	.uleb128	292
.L3686:
	.sleb128	15
	.byte		"Sizes"
	.byte		0
	.4byte		.L5430
	.sleb128	3
	.byte		0x23
	.uleb128	296
.L3687:
	.sleb128	15
	.byte		"SpecialInfo"
	.byte		0
	.4byte		.L5431
	.sleb128	3
	.byte		0x23
	.uleb128	380
.L3688:
	.sleb128	15
	.byte		"Timing"
	.byte		0
	.4byte		.L5432
	.sleb128	3
	.byte		0x23
	.uleb128	388
	.sleb128	0
.L5408:
	.section	.debug_info,,n
.L5432:
	.sleb128	16
	.4byte		.L5433-.L2
	.uleb128	192
.L3630:
	.sleb128	15
	.byte		"stepSize"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3631:
	.sleb128	15
	.byte		"clockTick0"
	.byte		0
	.4byte		.L4359
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L3632:
	.sleb128	15
	.byte		"clockTickH0"
	.byte		0
	.4byte		.L4359
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L3633:
	.sleb128	15
	.byte		"stepSize0"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L3634:
	.sleb128	15
	.byte		"clockTick1"
	.byte		0
	.4byte		.L4359
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L3635:
	.sleb128	15
	.byte		"clockTickH1"
	.byte		0
	.4byte		.L4359
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3636:
	.sleb128	15
	.byte		"stepSize1"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3637:
	.sleb128	15
	.byte		"clockTick2"
	.byte		0
	.4byte		.L4359
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L3638:
	.sleb128	15
	.byte		"clockTickH2"
	.byte		0
	.4byte		.L4359
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L3639:
	.sleb128	15
	.byte		"stepSize2"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L3640:
	.sleb128	15
	.byte		"TaskCounters"
	.byte		0
	.4byte		.L5434
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L3641:
	.sleb128	15
	.byte		"RateInteraction"
	.byte		0
	.4byte		.L5435
	.sleb128	2
	.byte		0x23
	.uleb128	43
.L3642:
	.sleb128	15
	.byte		"tStart"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L3643:
	.sleb128	15
	.byte		"tFinal"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L3644:
	.sleb128	15
	.byte		"timeOfLastOutput"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L3645:
	.sleb128	15
	.byte		"timingData"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L3646:
	.sleb128	15
	.byte		"varNextHitTimesList"
	.byte		0
	.4byte		.L5428
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L3647:
	.sleb128	15
	.byte		"simTimeStep"
	.byte		0
	.4byte		.L5436
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L3648:
	.sleb128	15
	.byte		"stopRequestedFlag"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L3649:
	.sleb128	15
	.byte		"sampleTimes"
	.byte		0
	.4byte		.L5438
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L3650:
	.sleb128	15
	.byte		"offsetTimes"
	.byte		0
	.4byte		.L5438
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L3651:
	.sleb128	15
	.byte		"sampleTimeTaskIDPtr"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L3652:
	.sleb128	15
	.byte		"sampleHits"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L3653:
	.sleb128	15
	.byte		"perTaskSampleHits"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L3654:
	.sleb128	15
	.byte		"t"
	.byte		0
	.4byte		.L5438
	.sleb128	2
	.byte		0x23
	.uleb128	92
.L3655:
	.sleb128	15
	.byte		"sampleTimesArray"
	.byte		0
	.4byte		.L5439
	.sleb128	2
	.byte		0x23
	.uleb128	96
.L3656:
	.sleb128	15
	.byte		"offsetTimesArray"
	.byte		0
	.4byte		.L5441
	.sleb128	2
	.byte		0x23
	.uleb128	108
.L3657:
	.sleb128	15
	.byte		"sampleTimeTaskIDArray"
	.byte		0
	.4byte		.L5443
	.sleb128	2
	.byte		0x23
	.uleb128	120
.L3658:
	.sleb128	15
	.byte		"sampleHitArray"
	.byte		0
	.4byte		.L5445
	.sleb128	3
	.byte		0x23
	.uleb128	132
.L3659:
	.sleb128	15
	.byte		"perTaskSampleHitsArray"
	.byte		0
	.4byte		.L5447
	.sleb128	3
	.byte		0x23
	.uleb128	144
.L3660:
	.sleb128	15
	.byte		"tArray"
	.byte		0
	.4byte		.L5449
	.sleb128	3
	.byte		0x23
	.uleb128	180
	.sleb128	0
.L5433:
.L5435:
	.sleb128	16
	.4byte		.L5451-.L2
	.uleb128	1
.L3629:
	.sleb128	15
	.byte		"TID0_1"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5451:
.L5434:
	.sleb128	16
	.4byte		.L5452-.L2
	.uleb128	3
.L3628:
	.sleb128	15
	.byte		"TID"
	.byte		0
	.4byte		.L5453
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5452:
.L5431:
	.sleb128	16
	.4byte		.L5455-.L2
	.uleb128	8
.L3626:
	.sleb128	15
	.byte		"mappingInfo"
	.byte		0
	.4byte		.L5424
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3627:
	.sleb128	15
	.byte		"xpcData"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L5455:
.L5430:
	.sleb128	16
	.4byte		.L5456-.L2
	.uleb128	84
.L3608:
	.sleb128	15
	.byte		"checksums"
	.byte		0
	.4byte		.L5457
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3609:
	.sleb128	15
	.byte		"options"
	.byte		0
	.4byte		.L4359
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L3610:
	.sleb128	15
	.byte		"numContStates"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3611:
	.sleb128	15
	.byte		"numPeriodicContStates"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3612:
	.sleb128	15
	.byte		"numU"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L3613:
	.sleb128	15
	.byte		"numY"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L3614:
	.sleb128	15
	.byte		"numSampTimes"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L3615:
	.sleb128	15
	.byte		"numBlocks"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L3616:
	.sleb128	15
	.byte		"numBlockIO"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L3617:
	.sleb128	15
	.byte		"numBlockPrms"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L3618:
	.sleb128	15
	.byte		"numDwork"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L3619:
	.sleb128	15
	.byte		"numSFcnPrms"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L3620:
	.sleb128	15
	.byte		"numSFcns"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L3621:
	.sleb128	15
	.byte		"numIports"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L3622:
	.sleb128	15
	.byte		"numOports"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L3623:
	.sleb128	15
	.byte		"numNonSampZCs"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L3624:
	.sleb128	15
	.byte		"sysDirFeedThru"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L3625:
	.sleb128	15
	.byte		"rtwGenSfcn"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.sleb128	0
.L5456:
.L5333:
	.sleb128	16
	.4byte		.L5459-.L2
	.uleb128	48
.L3604:
	.sleb128	15
	.byte		"DBWREG_BRAKEFORWARD_d"
	.byte		0
	.4byte		.L5460
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3605:
	.sleb128	15
	.byte		"DBWREVERSE_b"
	.byte		0
	.4byte		.L5462
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3606:
	.sleb128	15
	.byte		"DBWREG_BRAKEFORWARD"
	.byte		0
	.4byte		.L5460
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3607:
	.sleb128	15
	.byte		"DBWREVERSE"
	.byte		0
	.4byte		.L5462
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.sleb128	0
.L5459:
.L5461:
	.sleb128	16
	.4byte		.L5464-.L2
	.uleb128	20
.L3599:
	.sleb128	15
	.byte		"Subtract"
	.byte		0
	.4byte		.L5465
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3600:
	.sleb128	15
	.byte		"Divide"
	.byte		0
	.4byte		.L5465
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L3601:
	.sleb128	15
	.byte		"DataTypeConversion1"
	.byte		0
	.4byte		.L5466
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L3602:
	.sleb128	15
	.byte		"DataTypeConversion2"
	.byte		0
	.4byte		.L5466
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L3603:
	.sleb128	15
	.byte		"Divide2"
	.byte		0
	.4byte		.L5466
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L5464:
.L5463:
	.sleb128	16
	.4byte		.L5467-.L2
	.uleb128	2
.L3598:
	.sleb128	15
	.byte		"Constant2"
	.byte		0
	.4byte		.L5468
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5467:
.L5403:
	.sleb128	16
	.4byte		.L5469-.L2
	.uleb128	44
.L3568:
	.sleb128	15
	.byte		"PumpStB"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3569:
	.sleb128	15
	.byte		"PumpStA"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L3570:
	.sleb128	15
	.byte		"temporalCounter_i1"
	.byte		0
	.4byte		.L4528
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L3571:
	.sleb128	15
	.byte		"RateTransition6_Buffer0"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	10
.L3572:
	.sleb128	15
	.byte		"RateTransition7_Buffer0"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	11
.L3573:
	.sleb128	15
	.byte		"RateTransition10_Buffer0"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L3574:
	.sleb128	15
	.byte		"RateTransition8_Buffer0"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	13
.L3575:
	.sleb128	15
	.byte		"RateTransition9_Buffer0"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	14
.L3576:
	.sleb128	15
	.byte		"RateTransition11_Buffer0"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	15
.L3577:
	.sleb128	15
	.byte		"RateTransition12_Buffer0"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L3578:
	.sleb128	15
	.byte		"is_active_c3_ATV"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	17
.L3579:
	.sleb128	15
	.byte		"is_c3_ATV"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	18
.L3580:
	.sleb128	15
	.byte		"is_HV_CTRL"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	19
.L3581:
	.sleb128	15
	.byte		"is_CHG_CTRL"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3582:
	.sleb128	15
	.byte		"is_HEATER_CTRL"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	21
.L3583:
	.sleb128	15
	.byte		"is_DRIVE_ENABLE"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	22
.L3584:
	.sleb128	15
	.byte		"is_STARTTRIGGER"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	23
.L3585:
	.sleb128	15
	.byte		"temporalCounter_i1_m"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3586:
	.sleb128	15
	.byte		"temporalCounter_i2"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	25
.L3587:
	.sleb128	15
	.byte		"temporalCounter_i3"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	26
.L3588:
	.sleb128	15
	.byte		"is_active_c6_ATV"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	27
.L3589:
	.sleb128	15
	.byte		"is_PumpALogic"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L3590:
	.sleb128	15
	.byte		"is_PumpBLogic"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	29
.L3591:
	.sleb128	15
	.byte		"RateTransition4_Buffer0"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	30
.L3592:
	.sleb128	15
	.byte		"RateTransition5_Buffer0"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	31
.L3593:
	.sleb128	15
	.byte		"Relay_Mode"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L3594:
	.sleb128	15
	.byte		"Relay1_Mode"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	33
.L3595:
	.sleb128	15
	.byte		"startBtnArmed"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	34
.L3596:
	.sleb128	15
	.byte		"sf_Chart_b"
	.byte		0
	.4byte		.L4508
	.sleb128	2
	.byte		0x23
	.uleb128	35
.L3597:
	.sleb128	15
	.byte		"sf_Chart"
	.byte		0
	.4byte		.L4508
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.sleb128	0
.L5469:
.L5329:
	.sleb128	16
	.4byte		.L5470-.L2
	.uleb128	164
.L3474:
	.sleb128	15
	.byte		"pai_BasicAnalogInput"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3475:
	.sleb128	15
	.byte		"Saturation"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L3476:
	.sleb128	15
	.byte		"pdx_PWMOutput"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L3477:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o4"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L3478:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o5"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L3479:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o6"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3480:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o4_k"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3481:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o5_c"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L3482:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o6_o"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L3483:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o7"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L3484:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o8"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L3485:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o9"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L3486:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o10"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L3487:
	.sleb128	15
	.byte		"pai_BasicAnalogInput2"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L3488:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o4_n"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L3489:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o5_m"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L3490:
	.sleb128	15
	.byte		"atv_bms_pack_current"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L3491:
	.sleb128	15
	.byte		"atv_bms_pack_soh"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L3492:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o9_c"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L3493:
	.sleb128	15
	.byte		"MultiportSwitch3"
	.byte		0
	.4byte		.L4528
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L3494:
	.sleb128	15
	.byte		"MultiportSwitch1"
	.byte		0
	.4byte		.L4528
	.sleb128	2
	.byte		0x23
	.uleb128	78
.L3495:
	.sleb128	15
	.byte		"MultiportSwitch3_n"
	.byte		0
	.4byte		.L4528
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L3496:
	.sleb128	15
	.byte		"MultiportSwitch1_h"
	.byte		0
	.4byte		.L4528
	.sleb128	2
	.byte		0x23
	.uleb128	82
.L3497:
	.sleb128	15
	.byte		"RateTransition6"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L3498:
	.sleb128	15
	.byte		"RateTransition7"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	85
.L3499:
	.sleb128	15
	.byte		"RateTransition10"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	86
.L3500:
	.sleb128	15
	.byte		"RateTransition8"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	87
.L3501:
	.sleb128	15
	.byte		"RateTransition9"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L3502:
	.sleb128	15
	.byte		"RateTransition11"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	89
.L3503:
	.sleb128	15
	.byte		"RateTransition12"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	90
.L3504:
	.sleb128	15
	.byte		"RateTransition7_p"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	91
.L3505:
	.sleb128	15
	.byte		"atv_v_dbg_T_FMot"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	92
.L3506:
	.sleb128	15
	.byte		"atv_v_dbg_T_FInv"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	93
.L3507:
	.sleb128	15
	.byte		"atv_v_dbg_T_RMot"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	94
.L3508:
	.sleb128	15
	.byte		"atv_v_dbg_T_RInv"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	95
.L3509:
	.sleb128	15
	.byte		"atv_v_dbg_T_GMot"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	96
.L3510:
	.sleb128	15
	.byte		"atv_v_dbg_T_GInv"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	97
.L3511:
	.sleb128	15
	.byte		"atv_v_dbg_T_Rad"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	98
.L3512:
	.sleb128	15
	.byte		"atv_StartBtn_din"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	99
.L3513:
	.sleb128	15
	.byte		"RateTransition4"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	100
.L3514:
	.sleb128	15
	.byte		"RateTransition5"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	101
.L3515:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	102
.L3516:
	.sleb128	15
	.byte		"RateTransition4_b"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	103
.L3517:
	.sleb128	15
	.byte		"RateTransition"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	104
.L3518:
	.sleb128	15
	.byte		"RateTransition1"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	105
.L3519:
	.sleb128	15
	.byte		"RateTransition2"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	106
.L3520:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage1"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	107
.L3521:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage2"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	108
.L3522:
	.sleb128	15
	.byte		"LogicalOperator"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	109
.L3523:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage3"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	110
.L3524:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage4"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	111
.L3525:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage5"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	112
.L3526:
	.sleb128	15
	.byte		"RelationalOperator4"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	113
.L3527:
	.sleb128	15
	.byte		"RelationalOperator5"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	114
.L3528:
	.sleb128	15
	.byte		"Switch"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	115
.L3529:
	.sleb128	15
	.byte		"RateTransition3"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	116
.L3530:
	.sleb128	15
	.byte		"RateTransition5_g"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	117
.L3531:
	.sleb128	15
	.byte		"RateTransition6_p"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	118
.L3532:
	.sleb128	15
	.byte		"pcx_CANdb_TransmitMessage6"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	119
.L3533:
	.sleb128	15
	.byte		"pdx_DigitalOutput"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	120
.L3534:
	.sleb128	15
	.byte		"pdx_DigitalOutput_f"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	121
.L3535:
	.sleb128	15
	.byte		"pdx_DigitalOutput1"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	122
.L3536:
	.sleb128	15
	.byte		"pdx_DigitalOutput2"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	123
.L3537:
	.sleb128	15
	.byte		"pdx_DigitalOutput3"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	124
.L3538:
	.sleb128	15
	.byte		"pdx_DigitalOutput4"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	125
.L3539:
	.sleb128	15
	.byte		"pdx_DigitalOutput5"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	126
.L3540:
	.sleb128	15
	.byte		"pdx_DigitalOutput6"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	127
.L3541:
	.sleb128	15
	.byte		"pdx_DigitalOutput7"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	128
.L3542:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o1"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	129
.L3543:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o2"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	130
.L3544:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o3"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	131
.L3545:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o1_k"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	132
.L3546:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o2_d"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	133
.L3547:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o3_b"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	134
.L3548:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o1_n"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	135
.L3549:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o2_l"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	136
.L3550:
	.sleb128	15
	.byte		"pcx_CANdb_ReceiveMessage_o3_p"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	137
.L3551:
	.sleb128	15
	.byte		"pdx_DigitalOutput_b"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	138
.L3552:
	.sleb128	15
	.byte		"pdx_DigitalOutput1_i"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	139
.L3553:
	.sleb128	15
	.byte		"pdx_DigitalOutput2_p"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	140
.L3554:
	.sleb128	15
	.byte		"pdx_DigitalOutput3_l"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	141
.L3555:
	.sleb128	15
	.byte		"hvp_ctrl_out"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	142
.L3556:
	.sleb128	15
	.byte		"hvm_ctrl_out"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	143
.L3557:
	.sleb128	15
	.byte		"chg_ctrl_out"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	144
.L3558:
	.sleb128	15
	.byte		"heater_ctrl_out"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	145
.L3559:
	.sleb128	15
	.byte		"en_inv_rear_out"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	146
.L3560:
	.sleb128	15
	.byte		"en_inv_front_out"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	147
.L3561:
	.sleb128	15
	.byte		"en_inv_gen_out"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	148
.L3562:
	.sleb128	15
	.byte		"DBWREG_BRAKEFORWARD_d"
	.byte		0
	.4byte		.L4545
	.sleb128	3
	.byte		0x23
	.uleb128	150
.L3563:
	.sleb128	15
	.byte		"DBWREVERSE_b"
	.byte		0
	.4byte		.L4532
	.sleb128	3
	.byte		0x23
	.uleb128	154
.L3564:
	.sleb128	15
	.byte		"DBWREG_BRAKEFORWARD"
	.byte		0
	.4byte		.L4545
	.sleb128	3
	.byte		0x23
	.uleb128	156
.L3565:
	.sleb128	15
	.byte		"DBWREVERSE"
	.byte		0
	.4byte		.L4532
	.sleb128	3
	.byte		0x23
	.uleb128	160
.L3566:
	.sleb128	15
	.byte		"sf_Chart_b"
	.byte		0
	.4byte		.L4518
	.sleb128	3
	.byte		0x23
	.uleb128	162
.L3567:
	.sleb128	15
	.byte		"sf_Chart"
	.byte		0
	.4byte		.L4518
	.sleb128	3
	.byte		0x23
	.uleb128	163
	.sleb128	0
.L5470:
.L4546:
	.sleb128	16
	.4byte		.L5471-.L2
	.uleb128	4
.L3472:
	.sleb128	15
	.byte		"Switch"
	.byte		0
	.4byte		.L4528
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3473:
	.sleb128	15
	.byte		"Switch2"
	.byte		0
	.4byte		.L4528
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.sleb128	0
.L5471:
.L4533:
	.sleb128	16
	.4byte		.L5472-.L2
	.uleb128	2
.L3471:
	.sleb128	15
	.byte		"Cast"
	.byte		0
	.4byte		.L4528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5472:
.L4509:
	.sleb128	16
	.4byte		.L5473-.L2
	.uleb128	3
.L3468:
	.sleb128	15
	.byte		"is_active_c1_ATV"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3469:
	.sleb128	15
	.byte		"is_c1_ATV"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	1
.L3470:
	.sleb128	15
	.byte		"temporalCounter_i1"
	.byte		0
	.4byte		.L4621
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.sleb128	0
.L5473:
.L4519:
	.sleb128	16
	.4byte		.L5474-.L2
	.uleb128	1
.L3467:
	.sleb128	15
	.byte		"out"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5474:
.L5406:
	.sleb128	16
	.4byte		.L5475-.L2
	.uleb128	12
.L2605:
	.sleb128	15
	.byte		"set_sum"
	.byte		0
	.4byte		.L4651
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L2606:
	.sleb128	15
	.byte		"reset_sum"
	.byte		0
	.4byte		.L4651
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L2607:
	.sleb128	15
	.byte		"steady_state"
	.byte		0
	.4byte		.L4644
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.sleb128	0
.L5475:
.L5325:
	.sleb128	16
	.4byte		.L5476-.L2
	.uleb128	12
.L2358:
	.sleb128	15
	.byte		"dispatch_fn"
	.byte		0
	.4byte		.L5477
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L2359:
	.sleb128	15
	.byte		"ready_taskset"
	.byte		0
	.4byte		.L5480
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L2360:
	.sleb128	15
	.byte		"dispatch_ceiling"
	.byte		0
	.4byte		.L5480
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.sleb128	0
.L5476:
.L4558:
	.sleb128	16
	.4byte		.L5481-.L2
	.uleb128	12
.L1642:
	.sleb128	15
	.byte		"chunks"
	.byte		0
	.4byte		.L5482
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5481:
.L4563:
	.sleb128	16
	.4byte		.L5484-.L2
	.uleb128	8
.L1636:
	.sleb128	15
	.byte		"chunks"
	.byte		0
	.4byte		.L5485
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5484:
.L5414:
	.sleb128	14
	.4byte		.L5487
	.uleb128	101
	.4byte		.L5488-.L2
	.byte		"SimStruct_tag"
	.byte		0
	.uleb128	508
.L1323:
	.sleb128	15
	.byte		"modelName"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1324:
	.sleb128	15
	.byte		"path"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1325:
	.sleb128	15
	.byte		"parent"
	.byte		0
	.4byte		.L5489
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1326:
	.sleb128	15
	.byte		"root"
	.byte		0
	.4byte		.L5489
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1327:
	.sleb128	15
	.byte		"errorStatus"
	.byte		0
	.4byte		.L5491
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1328:
	.sleb128	15
	.byte		"sizes"
	.byte		0
	.4byte		.L5492
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1329:
	.sleb128	15
	.byte		"portInfo"
	.byte		0
	.4byte		.L5493
	.sleb128	3
	.byte		0x23
	.uleb128	172
.L1330:
	.sleb128	15
	.byte		"sfcnParams"
	.byte		0
	.4byte		.L5494
	.sleb128	3
	.byte		0x23
	.uleb128	196
.L1331:
	.sleb128	15
	.byte		"states"
	.byte		0
	.4byte		.L5495
	.sleb128	3
	.byte		0x23
	.uleb128	216
.L1332:
	.sleb128	15
	.byte		"work"
	.byte		0
	.4byte		.L5496
	.sleb128	3
	.byte		0x23
	.uleb128	272
.L1333:
	.sleb128	15
	.byte		"blkInfo"
	.byte		0
	.4byte		.L5497
	.sleb128	3
	.byte		0x23
	.uleb128	304
.L1334:
	.sleb128	15
	.byte		"mdlInfo"
	.byte		0
	.4byte		.L5498
	.sleb128	3
	.byte		0x23
	.uleb128	332
.L1335:
	.sleb128	15
	.byte		"callSys"
	.byte		0
	.4byte		.L5500
	.sleb128	3
	.byte		0x23
	.uleb128	336
.L1336:
	.sleb128	15
	.byte		"regDataType"
	.byte		0
	.4byte		.L5501
	.sleb128	3
	.byte		0x23
	.uleb128	352
.L1337:
	.sleb128	15
	.byte		"stInfo"
	.byte		0
	.4byte		.L5502
	.sleb128	3
	.byte		0x23
	.uleb128	388
.L1338:
	.sleb128	15
	.byte		"modelMethods"
	.byte		0
	.4byte		.L5503
	.sleb128	3
	.byte		0x23
	.uleb128	408
.L1339:
	.sleb128	15
	.byte		"sFunctions"
	.byte		0
	.4byte		.L5412
	.sleb128	3
	.byte		0x23
	.uleb128	504
	.sleb128	0
.L5488:
.L5503:
	.sleb128	16
	.4byte		.L5504-.L2
	.uleb128	96
.L1322:
	.sleb128	15
	.byte		"sFcn"
	.byte		0
	.4byte		.L5505
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5504:
	.section	.debug_info,,n
.L5491:
	.sleb128	17
	.4byte		.L5506-.L2
	.uleb128	4
.L1320:
	.sleb128	15
	.byte		"str"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1321:
	.sleb128	15
	.byte		"msg"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5506:
.L5495:
	.sleb128	14
	.4byte		.L5507
	.uleb128	1979
	.4byte		.L5508-.L2
	.byte		"_ssStates"
	.byte		0
	.uleb128	56
.L1306:
	.sleb128	15
	.byte		"U"
	.byte		0
	.4byte		.L5509
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1307:
	.sleb128	15
	.byte		"Y"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1308:
	.sleb128	15
	.byte		"contStates"
	.byte		0
	.4byte		.L5428
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1309:
	.sleb128	15
	.byte		"discStates"
	.byte		0
	.4byte		.L5428
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1310:
	.sleb128	15
	.byte		"flags"
	.byte		0
	.4byte		.L5510
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1311:
	.sleb128	15
	.byte		"reserved2"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1312:
	.sleb128	15
	.byte		"dX"
	.byte		0
	.4byte		.L5428
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1313:
	.sleb128	15
	.byte		"contStateDisabled"
	.byte		0
	.4byte		.L5429
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1314:
	.sleb128	15
	.byte		"statesInfo2"
	.byte		0
	.4byte		.L5511
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L1315:
	.sleb128	15
	.byte		"nonsampledZCs"
	.byte		0
	.4byte		.L5428
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L1316:
	.sleb128	15
	.byte		"nonsampledZCDirs"
	.byte		0
	.4byte		.L5513
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L1317:
	.sleb128	15
	.byte		"jacobian"
	.byte		0
	.4byte		.L5516
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L1318:
	.sleb128	15
	.byte		"modelMethods2"
	.byte		0
	.4byte		.L5519
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L1319:
	.sleb128	15
	.byte		"reservedSize"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.sleb128	0
.L5508:
.L5510:
	.sleb128	16
	.4byte		.L5521-.L2
	.uleb128	4
	.section	.debug_info,,n
.L1302:
	.sleb128	18
	.byte		"alreadyWarned"
	.byte		0
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
	.uleb128	4
	.byte		0x10
	.byte		0xf
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5521:
.L5509:
	.sleb128	17
	.4byte		.L5523-.L2
	.uleb128	4
.L1300:
	.sleb128	15
	.byte		"vect"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1301:
	.sleb128	15
	.byte		"uPtrs"
	.byte		0
	.4byte		.L5524
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5523:
.L5512:
	.sleb128	14
	.4byte		.L5507
	.uleb128	1970
	.4byte		.L5528-.L2
	.byte		"_ssStatesInfo2"
	.byte		0
	.uleb128	36
.L1295:
	.sleb128	15
	.byte		"prevZCSigState"
	.byte		0
	.4byte		.L5426
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1296:
	.sleb128	15
	.byte		"absTol"
	.byte		0
	.4byte		.L5428
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1297:
	.sleb128	15
	.byte		"absTolControl"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1298:
	.sleb128	15
	.byte		"periodicStatesInfo"
	.byte		0
	.4byte		.L5530
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1299:
	.sleb128	15
	.byte		"reservedForFutureUse"
	.byte		0
	.4byte		.L5533
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L5528:
.L5532:
	.sleb128	14
	.4byte		.L5507
	.uleb128	1962
	.4byte		.L5535-.L2
	.byte		"ssPeriodicStatesInfo_T"
	.byte		0
	.uleb128	20
.L1290:
	.sleb128	15
	.byte		"globalContStateIndex"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1291:
	.sleb128	15
	.byte		"numPeriodicContStates"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1292:
	.sleb128	15
	.byte		"periodicContStateIndices"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1293:
	.sleb128	15
	.byte		"periodicContStateRanges"
	.byte		0
	.4byte		.L5428
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1294:
	.sleb128	15
	.byte		"periodicContStateCounters"
	.byte		0
	.4byte		.L4375
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L5535:
.L5520:
	.sleb128	14
	.4byte		.L5507
	.uleb128	1909
	.4byte		.L5536-.L2
	.byte		"_ssSFcnModelMethods2"
	.byte		0
	.uleb128	88
.L1269:
	.sleb128	15
	.byte		"mdlProjection"
	.byte		0
	.4byte		.L5537
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1270:
	.sleb128	15
	.byte		"mdlJacobian"
	.byte		0
	.4byte		.L5541
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1271:
	.sleb128	15
	.byte		"mdlSetInputPortFrameData"
	.byte		0
	.4byte		.L5545
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1272:
	.sleb128	15
	.byte		"strictBooleanCheckEnabledFcn"
	.byte		0
	.4byte		.L5551
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1273:
	.sleb128	15
	.byte		"mdlSetDefaultPortDimensions"
	.byte		0
	.4byte		.L5555
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1274:
	.sleb128	15
	.byte		"mdlSetDefaultPortDataTypes"
	.byte		0
	.4byte		.L5559
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1275:
	.sleb128	15
	.byte		"mdlSetDefaultPortComplexSignals"
	.byte		0
	.4byte		.L5563
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1276:
	.sleb128	15
	.byte		"ConvertBuiltInDType"
	.byte		0
	.4byte		.L5567
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1277:
	.sleb128	15
	.byte		"resolveCBK"
	.byte		0
	.4byte		.L5572
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L1278:
	.sleb128	15
	.byte		"extModeLogFcn"
	.byte		0
	.4byte		.L5573
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L1279:
	.sleb128	15
	.byte		"mdlExtModeExec"
	.byte		0
	.4byte		.L5582
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L1280:
	.sleb128	15
	.byte		"mdlRTWCG"
	.byte		0
	.4byte		.L5586
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L1281:
	.sleb128	15
	.byte		"mdlMassMatrix"
	.byte		0
	.4byte		.L5592
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L1282:
	.sleb128	15
	.byte		"modelMethods4"
	.byte		0
	.4byte		.L5596
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L1283:
	.sleb128	15
	.byte		"mdlForcingFunction"
	.byte		0
	.4byte		.L5598
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L1284:
	.sleb128	15
	.byte		"mdlEnable"
	.byte		0
	.4byte		.L5602
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L1285:
	.sleb128	15
	.byte		"mdlDisable"
	.byte		0
	.4byte		.L5606
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L1286:
	.sleb128	15
	.byte		"mdlSimStatusChange"
	.byte		0
	.4byte		.L5610
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L1287:
	.sleb128	15
	.byte		"mdlInitializePropagationPass"
	.byte		0
	.4byte		.L5616
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L1288:
	.sleb128	15
	.byte		"constraintsInfo"
	.byte		0
	.4byte		.L5622
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L1289:
	.sleb128	15
	.byte		"modelMethods3"
	.byte		0
	.4byte		.L5624
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.sleb128	0
.L5536:
.L5625:
	.sleb128	14
	.4byte		.L5507
	.uleb128	1896
	.4byte		.L5626-.L2
	.byte		"_ssSFcnModelMethods3"
	.byte		0
	.uleb128	48
.L1263:
	.sleb128	15
	.byte		"massMatrix"
	.byte		0
	.4byte		.L5627
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1264:
	.sleb128	15
	.byte		"mdlInitSystemMatrices"
	.byte		0
	.4byte		.L5628
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1265:
	.sleb128	15
	.byte		"numSlvrJacobianNzmax"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L1266:
	.sleb128	15
	.byte		"slvrJacobianMatrix"
	.byte		0
	.4byte		.L5516
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L1267:
	.sleb128	15
	.byte		"mdlJacobianIrJc"
	.byte		0
	.4byte		.L5632
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L1268:
	.sleb128	15
	.byte		"reservedForFutureUse"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.sleb128	0
.L5626:
.L5597:
	.sleb128	14
	.4byte		.L5507
	.uleb128	1883
	.4byte		.L5636-.L2
	.byte		"_ssSFcnModelMethods4"
	.byte		0
	.uleb128	60
.L1255:
	.sleb128	15
	.byte		"mdlSetInputPortSymbolicDimensions"
	.byte		0
	.4byte		.L5637
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1256:
	.sleb128	15
	.byte		"mdlSetOutputPortSymbolicDimensions"
	.byte		0
	.4byte		.L5642
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1257:
	.sleb128	15
	.byte		"mdlSetupRuntimeResources"
	.byte		0
	.4byte		.L5646
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1258:
	.sleb128	15
	.byte		"mdlCleanupRuntimeResources"
	.byte		0
	.4byte		.L5650
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1259:
	.sleb128	15
	.byte		"mdlDataTransferRead"
	.byte		0
	.4byte		.L5654
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1260:
	.sleb128	15
	.byte		"mdlDataTransferWrite"
	.byte		0
	.4byte		.L5658
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1261:
	.sleb128	15
	.byte		"mdlDataTransferInitBuffers"
	.byte		0
	.4byte		.L5662
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1262:
	.sleb128	15
	.byte		"reservedForFuture"
	.byte		0
	.4byte		.L5666
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.sleb128	0
.L5636:
.L5505:
	.sleb128	14
	.4byte		.L5507
	.uleb128	1806
	.4byte		.L5668-.L2
	.byte		"_ssSFcnModelMethods"
	.byte		0
	.uleb128	96
.L1231:
	.sleb128	15
	.byte		"mdlInitializeSizes"
	.byte		0
	.4byte		.L5669
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1232:
	.sleb128	15
	.byte		"mdlGetInputPortWidthLevel1"
	.byte		0
	.4byte		.L5673
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1233:
	.sleb128	15
	.byte		"mdlGetOutputPortWidthLevel1"
	.byte		0
	.4byte		.L5677
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1234:
	.sleb128	15
	.byte		"mdlSetInputPortDimensions"
	.byte		0
	.4byte		.L5681
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1235:
	.sleb128	15
	.byte		"mdlSetOutputPortDimensions"
	.byte		0
	.4byte		.L5682
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1236:
	.sleb128	15
	.byte		"mdlSetInputPortDataType"
	.byte		0
	.4byte		.L5683
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1237:
	.sleb128	15
	.byte		"mdlSetOutputPortDataType"
	.byte		0
	.4byte		.L5688
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1238:
	.sleb128	15
	.byte		"mdlInitializeSampleTimes"
	.byte		0
	.4byte		.L5692
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1239:
	.sleb128	15
	.byte		"mdlSetInputPortSampleTime"
	.byte		0
	.4byte		.L5696
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L1240:
	.sleb128	15
	.byte		"mdlSetOutputPortSampleTime"
	.byte		0
	.4byte		.L5700
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L1241:
	.sleb128	15
	.byte		"mdlSetWorkWidths"
	.byte		0
	.4byte		.L5704
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L1242:
	.sleb128	15
	.byte		"mdlRTW"
	.byte		0
	.4byte		.L5708
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L1243:
	.sleb128	15
	.byte		"mdlInitializeConditions"
	.byte		0
	.4byte		.L5712
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L1244:
	.sleb128	15
	.byte		"mdlStart"
	.byte		0
	.4byte		.L5713
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L1245:
	.sleb128	15
	.byte		"mdlCheckParameters"
	.byte		0
	.4byte		.L5717
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L1246:
	.sleb128	15
	.byte		"mdlProcessParameters"
	.byte		0
	.4byte		.L5721
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L1247:
	.sleb128	15
	.byte		"mdlGetTimeOfNextVarHit"
	.byte		0
	.4byte		.L5725
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L1248:
	.sleb128	15
	.byte		"mdlOutputs"
	.byte		0
	.4byte		.L5729
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L1249:
	.sleb128	15
	.byte		"mdlUpdate"
	.byte		0
	.4byte		.L5730
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L1250:
	.sleb128	15
	.byte		"mdlDerivatives"
	.byte		0
	.4byte		.L5731
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L1251:
	.sleb128	15
	.byte		"mdlZeroCrossings"
	.byte		0
	.4byte		.L5732
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L1252:
	.sleb128	15
	.byte		"mdlTerminate"
	.byte		0
	.4byte		.L5736
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L1253:
	.sleb128	15
	.byte		"fcnInEnable"
	.byte		0
	.4byte		.L5740
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L1254:
	.sleb128	15
	.byte		"fcnOutDisable"
	.byte		0
	.4byte		.L5741
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.sleb128	0
.L5668:
.L5741:
	.sleb128	17
	.4byte		.L5742-.L2
	.uleb128	4
.L1229:
	.sleb128	15
	.byte		"mdlSetOutputPortComplexSignal"
	.byte		0
	.4byte		.L5743
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1230:
	.sleb128	15
	.byte		"mdlDisable"
	.byte		0
	.4byte		.L5748
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5742:
.L5740:
	.sleb128	17
	.4byte		.L5752-.L2
	.uleb128	4
.L1227:
	.sleb128	15
	.byte		"mdlSetInputPortComplexSignal"
	.byte		0
	.4byte		.L5753
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1228:
	.sleb128	15
	.byte		"mdlEnable"
	.byte		0
	.4byte		.L5757
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5752:
.L5731:
	.sleb128	17
	.4byte		.L5761-.L2
	.uleb128	4
.L1225:
	.sleb128	15
	.byte		"level2"
	.byte		0
	.4byte		.L5762
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1226:
	.sleb128	15
	.byte		"level1"
	.byte		0
	.4byte		.L5766
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5761:
.L5730:
	.sleb128	17
	.4byte		.L5770-.L2
	.uleb128	4
.L1223:
	.sleb128	15
	.byte		"level2"
	.byte		0
	.4byte		.L5771
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1224:
	.sleb128	15
	.byte		"level1"
	.byte		0
	.4byte		.L5775
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5770:
.L5729:
	.sleb128	17
	.4byte		.L5779-.L2
	.uleb128	4
.L1221:
	.sleb128	15
	.byte		"level2"
	.byte		0
	.4byte		.L5780
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1222:
	.sleb128	15
	.byte		"level1"
	.byte		0
	.4byte		.L5784
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5779:
.L5712:
	.sleb128	17
	.4byte		.L5788-.L2
	.uleb128	4
.L1219:
	.sleb128	15
	.byte		"level2"
	.byte		0
	.4byte		.L5789
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1220:
	.sleb128	15
	.byte		"level1"
	.byte		0
	.4byte		.L5793
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5788:
.L5682:
	.sleb128	17
	.4byte		.L5797-.L2
	.uleb128	4
.L1217:
	.sleb128	15
	.byte		"mdlSetOutputPortWidth"
	.byte		0
	.4byte		.L5798
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1218:
	.sleb128	15
	.byte		"mdlSetOutputPortDims"
	.byte		0
	.4byte		.L5802
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5797:
.L5681:
	.sleb128	17
	.4byte		.L5810-.L2
	.uleb128	4
.L1215:
	.sleb128	15
	.byte		"mdlSetInputPortWidth"
	.byte		0
	.4byte		.L5811
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1216:
	.sleb128	15
	.byte		"mdlSetInputPortDims"
	.byte		0
	.4byte		.L5815
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5810:
.L5623:
	.sleb128	14
	.4byte		.L5507
	.uleb128	1798
	.4byte		.L5819-.L2
	.byte		"_ssConstraintsInfo"
	.byte		0
	.uleb128	12
.L1212:
	.sleb128	15
	.byte		"numConstraints"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1213:
	.sleb128	15
	.byte		"constraints"
	.byte		0
	.4byte		.L5428
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1214:
	.sleb128	15
	.byte		"mdlConstraints"
	.byte		0
	.4byte		.L5820
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.sleb128	0
.L5819:
.L5627:
	.sleb128	14
	.4byte		.L5507
	.uleb128	1789
	.4byte		.L5824-.L2
	.byte		"_ssMassMatrixInfo"
	.byte		0
	.uleb128	28
.L1210:
	.sleb128	15
	.byte		"type"
	.byte		0
	.4byte		.L5825
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1211:
	.sleb128	15
	.byte		"info"
	.byte		0
	.4byte		.L5827
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L5824:
.L5502:
	.sleb128	14
	.4byte		.L5507
	.uleb128	1585
	.4byte		.L5829-.L2
	.byte		"_ssStInfo"
	.byte		0
	.uleb128	20
.L1205:
	.sleb128	15
	.byte		"sampleTimes"
	.byte		0
	.4byte		.L5438
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1206:
	.sleb128	15
	.byte		"offsetTimes"
	.byte		0
	.4byte		.L5438
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1207:
	.sleb128	15
	.byte		"tNext"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1208:
	.sleb128	15
	.byte		"tNextTid"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1209:
	.sleb128	15
	.byte		"sampleTimeTaskIDs"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L5829:
.L5501:
	.sleb128	14
	.4byte		.L5507
	.uleb128	1554
	.4byte		.L5830-.L2
	.byte		"_ssRegDataType"
	.byte		0
	.uleb128	36
.L1196:
	.sleb128	15
	.byte		"arg1"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1197:
	.sleb128	15
	.byte		"registerFcn"
	.byte		0
	.4byte		.L5831
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1198:
	.sleb128	15
	.byte		"setSizeFcn"
	.byte		0
	.4byte		.L5835
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1199:
	.sleb128	15
	.byte		"getSizeFcn"
	.byte		0
	.4byte		.L5839
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1200:
	.sleb128	15
	.byte		"setZeroFcn"
	.byte		0
	.4byte		.L5843
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1201:
	.sleb128	15
	.byte		"getZeroFcn"
	.byte		0
	.4byte		.L5847
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1202:
	.sleb128	15
	.byte		"getNameFcn"
	.byte		0
	.4byte		.L5851
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1203:
	.sleb128	15
	.byte		"getIdFcn"
	.byte		0
	.4byte		.L5855
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1204:
	.sleb128	15
	.byte		"setNumDWorkFcn"
	.byte		0
	.4byte		.L5859
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.sleb128	0
.L5830:
.L5572:
	.sleb128	14
	.4byte		.L5507
	.uleb128	1525
	.4byte		.L5863-.L2
	.byte		"_ssResolveCBK"
	.byte		0
	.uleb128	8
.L1194:
	.sleb128	15
	.byte		"Resolver"
	.byte		0
	.4byte		.L5864
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1195:
	.sleb128	15
	.byte		"_slBlock"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L5863:
.L5500:
	.sleb128	14
	.4byte		.L5507
	.uleb128	1508
	.4byte		.L5873-.L2
	.byte		"_ssCallSys"
	.byte		0
	.uleb128	16
.L1190:
	.sleb128	15
	.byte		"outputs"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1191:
	.sleb128	15
	.byte		"args1"
	.byte		0
	.4byte		.L5874
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1192:
	.sleb128	15
	.byte		"args2"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1193:
	.sleb128	15
	.byte		"fcns"
	.byte		0
	.4byte		.L5875
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.sleb128	0
.L5873:
.L5499:
	.sleb128	14
	.4byte		.L5507
	.uleb128	1298
	.4byte		.L5881-.L2
	.byte		"_ssMdlInfo"
	.byte		0
	.uleb128	276
.L1124:
	.sleb128	15
	.byte		"simMode"
	.byte		0
	.4byte		.L5415
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1125:
	.sleb128	15
	.byte		"t"
	.byte		0
	.4byte		.L5438
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1126:
	.sleb128	15
	.byte		"sampleHits"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1127:
	.sleb128	15
	.byte		"tStart"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1128:
	.sleb128	15
	.byte		"tFinal"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L1129:
	.sleb128	15
	.byte		"timeOfLastOutput"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L1130:
	.sleb128	15
	.byte		"minStepSize"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L1131:
	.sleb128	15
	.byte		"timingData"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L1132:
	.sleb128	15
	.byte		"simTimeStep"
	.byte		0
	.4byte		.L5436
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L1133:
	.sleb128	15
	.byte		"stopRequested"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L1134:
	.sleb128	15
	.byte		"logOutput"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L1135:
	.sleb128	15
	.byte		"outputTimes"
	.byte		0
	.4byte		.L5438
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L1136:
	.sleb128	15
	.byte		"outputTimesIndex"
	.byte		0
	.4byte		.L5882
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L1137:
	.sleb128	15
	.byte		"numOutputTimes"
	.byte		0
	.4byte		.L5882
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L1138:
	.sleb128	15
	.byte		"outputTimesOnly"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L1139:
	.sleb128	15
	.byte		"obsoletedNeedOutputAtTPlusTol"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L1140:
	.sleb128	15
	.byte		"solverName"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L1141:
	.sleb128	15
	.byte		"variableStepSolver"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L1142:
	.sleb128	15
	.byte		"solverData"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L1143:
	.sleb128	15
	.byte		"solverStopTime"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L1144:
	.sleb128	15
	.byte		"stepSize"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L1145:
	.sleb128	15
	.byte		"solverNeedsReset"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L1146:
	.sleb128	15
	.byte		"mdlFlags"
	.byte		0
	.4byte		.L5883
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L1147:
	.sleb128	15
	.byte		"maxNumMinSteps"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	92
.L1148:
	.sleb128	15
	.byte		"solverRefineFactor"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	96
.L1149:
	.sleb128	15
	.byte		"solverRelTol"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	100
.L1150:
	.sleb128	15
	.byte		"solverAbsTol_Obsolete"
	.byte		0
	.4byte		.L5428
	.sleb128	2
	.byte		0x23
	.uleb128	104
.L1151:
	.sleb128	15
	.byte		"maxStepSize"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	108
.L1152:
	.sleb128	15
	.byte		"solverMaxOrder"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	112
.L1153:
	.sleb128	15
	.byte		"fixedStepSize"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	116
.L1154:
	.sleb128	15
	.byte		"numNonContDerivSigInfos"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	120
.L1155:
	.sleb128	15
	.byte		"nonContDerivSigInfos"
	.byte		0
	.4byte		.L5884
	.sleb128	2
	.byte		0x23
	.uleb128	124
.L1156:
	.sleb128	15
	.byte		"solverAbsTolControl_Obsolete"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x23
	.uleb128	128
.L1157:
	.sleb128	15
	.byte		"timingBridge"
	.byte		0
	.4byte		.L5887
	.sleb128	3
	.byte		0x23
	.uleb128	132
.L1158:
	.sleb128	15
	.byte		"rtwLogInfo"
	.byte		0
	.4byte		.L5890
	.sleb128	3
	.byte		0x23
	.uleb128	136
.L1159:
	.sleb128	15
	.byte		"solverInfo"
	.byte		0
	.4byte		.L5893
	.sleb128	3
	.byte		0x23
	.uleb128	140
.L1160:
	.sleb128	15
	.byte		"errorStatusBuffer"
	.byte		0
	.4byte		.L5894
	.sleb128	3
	.byte		0x23
	.uleb128	144
.L1161:
	.sleb128	15
	.byte		"blkRTSGateway"
	.byte		0
	.4byte		.L5895
	.sleb128	3
	.byte		0x23
	.uleb128	148
.L1162:
	.sleb128	15
	.byte		"mexApiVoidPtr1"
	.byte		0
	.4byte		.L4493
	.sleb128	3
	.byte		0x23
	.uleb128	152
.L1163:
	.sleb128	15
	.byte		"solverExtrapolationOrder"
	.byte		0
	.4byte		.L4491
	.sleb128	3
	.byte		0x23
	.uleb128	156
.L1164:
	.sleb128	15
	.byte		"solverNumberNewtonIterations"
	.byte		0
	.4byte		.L4491
	.sleb128	3
	.byte		0x23
	.uleb128	160
.L1165:
	.sleb128	15
	.byte		"extModeInfo"
	.byte		0
	.4byte		.L5417
	.sleb128	3
	.byte		0x23
	.uleb128	164
.L1166:
	.sleb128	15
	.byte		"blockIO"
	.byte		0
	.4byte		.L4493
	.sleb128	3
	.byte		0x23
	.uleb128	168
.L1167:
	.sleb128	15
	.byte		"blockIOVarDims"
	.byte		0
	.4byte		.L5901
	.sleb128	3
	.byte		0x23
	.uleb128	172
.L1168:
	.sleb128	15
	.byte		"defaultParam"
	.byte		0
	.4byte		.L5428
	.sleb128	3
	.byte		0x23
	.uleb128	176
.L1169:
	.sleb128	15
	.byte		"mappingInfo"
	.byte		0
	.4byte		.L5424
	.sleb128	3
	.byte		0x23
	.uleb128	180
.L1170:
	.sleb128	15
	.byte		"mexApiInt2"
	.byte		0
	.4byte		.L4491
	.sleb128	3
	.byte		0x23
	.uleb128	184
.L1171:
	.sleb128	15
	.byte		"reservedString"
	.byte		0
	.4byte		.L5902
	.sleb128	3
	.byte		0x23
	.uleb128	188
.L1172:
	.sleb128	15
	.byte		"regInputPortDimsInfo"
	.byte		0
	.4byte		.L5904
	.sleb128	3
	.byte		0x23
	.uleb128	220
.L1173:
	.sleb128	15
	.byte		"regOutputPortDimsInfo"
	.byte		0
	.4byte		.L5908
	.sleb128	3
	.byte		0x23
	.uleb128	224
.L1174:
	.sleb128	15
	.byte		"reservedForXPC"
	.byte		0
	.4byte		.L4493
	.sleb128	3
	.byte		0x23
	.uleb128	228
.L1175:
	.sleb128	15
	.byte		"perTaskSampleHits"
	.byte		0
	.4byte		.L4495
	.sleb128	3
	.byte		0x23
	.uleb128	232
.L1176:
	.sleb128	15
	.byte		"solverMode"
	.byte		0
	.4byte		.L5912
	.sleb128	3
	.byte		0x23
	.uleb128	236
.L1177:
	.sleb128	15
	.byte		"rtwgenMode"
	.byte		0
	.4byte		.L5914
	.sleb128	3
	.byte		0x23
	.uleb128	240
.L1178:
	.sleb128	15
	.byte		"reservedForFutureInt"
	.byte		0
	.4byte		.L5916
	.sleb128	3
	.byte		0x23
	.uleb128	244
.L1179:
	.sleb128	15
	.byte		"mexApiReal1"
	.byte		0
	.4byte		.L4488
	.sleb128	3
	.byte		0x23
	.uleb128	252
.L1180:
	.sleb128	15
	.byte		"mexApiReal2"
	.byte		0
	.4byte		.L4488
	.sleb128	3
	.byte		0x23
	.uleb128	256
.L1181:
	.sleb128	15
	.byte		"timeOfNextSampleHit"
	.byte		0
	.4byte		.L5428
	.sleb128	3
	.byte		0x23
	.uleb128	260
.L1182:
	.sleb128	15
	.byte		"varNextHitTimesList"
	.byte		0
	.4byte		.L5428
	.sleb128	3
	.byte		0x23
	.uleb128	264
.L1183:
	.sleb128	15
	.byte		"tNextWasAdjusted"
	.byte		0
	.4byte		.L5429
	.sleb128	3
	.byte		0x23
	.uleb128	268
.L1184:
	.sleb128	15
	.byte		"reservedDoubleVect"
	.byte		0
	.4byte		.L5918
	.sleb128	3
	.byte		0x23
	.uleb128	272
	.sleb128	0
.L5881:
.L5883:
	.sleb128	16
	.4byte		.L5920-.L2
	.uleb128	4
.L1100:
	.sleb128	18
	.byte		"zcCacheNeedsReset"
	.byte		0
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
	.uleb128	4
	.byte		0x8
	.byte		0x18
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5920:
.L5886:
	.sleb128	16
	.4byte		.L5921-.L2
	.uleb128	12
.L1097:
	.sleb128	15
	.byte		"sizeInBytes"
	.byte		0
	.4byte		.L4492
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1098:
	.sleb128	15
	.byte		"pCurrVal"
	.byte		0
	.4byte		.L5922
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1099:
	.sleb128	15
	.byte		"pPrevVal"
	.byte		0
	.4byte		.L5922
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.sleb128	0
.L5921:
.L5497:
	.sleb128	14
	.4byte		.L5507
	.uleb128	728
	.4byte		.L5923-.L2
	.byte		"_ssBlkInfo"
	.byte		0
	.uleb128	28
.L724:
	.sleb128	15
	.byte		"inputConnected"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L725:
	.sleb128	15
	.byte		"outputConnected"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L726:
	.sleb128	15
	.byte		"placementGroup"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L727:
	.sleb128	15
	.byte		"block"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L728:
	.sleb128	15
	.byte		"blkInfo2"
	.byte		0
	.4byte		.L5924
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L729:
	.sleb128	15
	.byte		"absTolOffset_Obsolete"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L730:
	.sleb128	15
	.byte		"sfcnFlags"
	.byte		0
	.4byte		.L5926
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.sleb128	0
.L5923:
.L5926:
	.sleb128	16
	.4byte		.L5927-.L2
	.uleb128	4
.L718:
	.sleb128	18
	.byte		"okToCallStartTerminateOnSimRestart"
	.byte		0
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
	.uleb128	4
	.byte		0x10
	.byte		0x10
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5927:
.L5925:
	.sleb128	14
	.4byte		.L5507
	.uleb128	718
	.4byte		.L5928-.L2
	.byte		"_ssBlkInfo2"
	.byte		0
	.uleb128	132
.L711:
	.sleb128	15
	.byte		"rtwSfcnInfo"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L712:
	.sleb128	15
	.byte		"unused"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L713:
	.sleb128	15
	.byte		"portInfo2"
	.byte		0
	.4byte		.L5929
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L714:
	.sleb128	15
	.byte		"stInfo2"
	.byte		0
	.4byte		.L5931
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L715:
	.sleb128	15
	.byte		"reservedPtrs"
	.byte		0
	.4byte		.L5933
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L716:
	.sleb128	15
	.byte		"impulseResponseLength"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L717:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L5935
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.sleb128	0
.L5928:
.L5932:
	.sleb128	14
	.4byte		.L5507
	.uleb128	696
	.4byte		.L5937-.L2
	.byte		"_ssSTInfo2"
	.byte		0
	.uleb128	52
.L701:
	.sleb128	15
	.byte		"ctrlRateInstanceIndex"
	.byte		0
	.4byte		.L5938
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L702:
	.sleb128	15
	.byte		"isControlledByThisBlock"
	.byte		0
	.4byte		.L5429
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L703:
	.sleb128	15
	.byte		"nRateIndices"
	.byte		0
	.4byte		.L5939
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L704:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L5940
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.sleb128	0
.L5937:
.L5930:
	.sleb128	14
	.4byte		.L5507
	.uleb128	684
	.4byte		.L5942-.L2
	.byte		"_ssPortInfo2"
	.byte		0
	.uleb128	40
.L692:
	.sleb128	15
	.byte		"inputs"
	.byte		0
	.4byte		.L5943
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L693:
	.sleb128	15
	.byte		"outputs"
	.byte		0
	.4byte		.L5945
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L694:
	.sleb128	15
	.byte		"inputUnits"
	.byte		0
	.4byte		.L5947
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L695:
	.sleb128	15
	.byte		"outputUnits"
	.byte		0
	.4byte		.L5949
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L696:
	.sleb128	15
	.byte		"inputDimsConstraint"
	.byte		0
	.4byte		.L5951
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L697:
	.sleb128	15
	.byte		"outputDimsConstraint"
	.byte		0
	.4byte		.L5953
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L698:
	.sleb128	15
	.byte		"inputCoSimAttribute"
	.byte		0
	.4byte		.L5955
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L699:
	.sleb128	15
	.byte		"outputCoSimAttribute"
	.byte		0
	.4byte		.L5957
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L700:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L5959
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.sleb128	0
.L5942:
.L5958:
	.sleb128	14
	.4byte		.L5507
	.uleb128	676
	.4byte		.L5961-.L2
	.byte		"_ssOutPortCoSimAttribute"
	.byte		0
	.uleb128	1
.L691:
	.sleb128	15
	.byte		"isContinuousQuantity"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5961:
.L5956:
	.sleb128	14
	.4byte		.L5507
	.uleb128	669
	.4byte		.L5962-.L2
	.byte		"_ssInPortCoSimAttribute"
	.byte		0
	.uleb128	1
.L690:
	.sleb128	15
	.byte		"isContinuousQuantity"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5962:
.L5954:
	.sleb128	14
	.4byte		.L5507
	.uleb128	661
	.4byte		.L5963-.L2
	.byte		"_ssOutPortDimsConstraint"
	.byte		0
	.uleb128	8
.L688:
	.sleb128	15
	.byte		"type"
	.byte		0
	.4byte		.L5964
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L689:
	.sleb128	15
	.byte		"size"
	.byte		0
	.4byte		.L5882
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L5963:
.L5952:
	.sleb128	14
	.4byte		.L5507
	.uleb128	653
	.4byte		.L5966-.L2
	.byte		"_ssInPortDimsConstraint"
	.byte		0
	.uleb128	8
.L686:
	.sleb128	15
	.byte		"type"
	.byte		0
	.4byte		.L5964
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L687:
	.sleb128	15
	.byte		"size"
	.byte		0
	.4byte		.L5882
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L5966:
	.section	.debug_info,,n
.L5965:
	.sleb128	19
	.4byte		.L5967-.L2
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
.L5967:
.L5950:
	.sleb128	14
	.4byte		.L5507
	.uleb128	637
	.4byte		.L5968-.L2
	.byte		"_ssOutPortUnit"
	.byte		0
	.uleb128	4
.L679:
	.sleb128	15
	.byte		"unitId"
	.byte		0
	.4byte		.L5969
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5968:
.L5948:
	.sleb128	14
	.4byte		.L5507
	.uleb128	630
	.4byte		.L5970-.L2
	.byte		"_ssInPortUnit"
	.byte		0
	.uleb128	4
.L678:
	.sleb128	15
	.byte		"unitId"
	.byte		0
	.4byte		.L5969
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5970:
.L5946:
	.sleb128	14
	.4byte		.L5507
	.uleb128	622
	.4byte		.L5971-.L2
	.byte		"_ssOutPortVarDims"
	.byte		0
	.uleb128	36
.L676:
	.sleb128	15
	.byte		"portVarDims"
	.byte		0
	.4byte		.L5901
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L677:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L5972
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L5971:
.L5944:
	.sleb128	14
	.4byte		.L5507
	.uleb128	614
	.4byte		.L5974-.L2
	.byte		"_ssInPortVarDims"
	.byte		0
	.uleb128	36
.L674:
	.sleb128	15
	.byte		"portVarDims"
	.byte		0
	.4byte		.L5975
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L675:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L5976
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L5974:
.L5496:
	.sleb128	14
	.4byte		.L5507
	.uleb128	594
	.4byte		.L5978-.L2
	.byte		"_ssWork"
	.byte		0
	.uleb128	32
.L666:
	.sleb128	15
	.byte		"iWork"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L667:
	.sleb128	15
	.byte		"rWork"
	.byte		0
	.4byte		.L5428
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L668:
	.sleb128	15
	.byte		"pWork"
	.byte		0
	.4byte		.L5874
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L669:
	.sleb128	15
	.byte		"modeVector"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L670:
	.sleb128	15
	.byte		"userData"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L671:
	.sleb128	15
	.byte		"dWork"
	.byte		0
	.4byte		.L5979
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L672:
	.sleb128	15
	.byte		"dWorkAux"
	.byte		0
	.4byte		.L5980
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L673:
	.sleb128	15
	.byte		"localMdlInfo"
	.byte		0
	.4byte		.L5982
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.sleb128	0
.L5978:
.L5983:
	.sleb128	14
	.4byte		.L5507
	.uleb128	607
	.4byte		.L5984-.L2
	.byte		"_ssLocalMdlInfo"
	.byte		0
	.uleb128	128
.L1185:
	.sleb128	15
	.byte		"ownerBd"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L1186:
	.sleb128	15
	.byte		"rtp"
	.byte		0
	.4byte		.L5428
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L1187:
	.sleb128	15
	.byte		"blockIO"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L1188:
	.sleb128	15
	.byte		"blockIOVarDims"
	.byte		0
	.4byte		.L5901
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L1189:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L5985
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L5984:
.L5979:
	.sleb128	17
	.4byte		.L5987-.L2
	.uleb128	4
.L664:
	.sleb128	15
	.byte		"sfcn"
	.byte		0
	.4byte		.L5988
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L665:
	.sleb128	15
	.byte		"root"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5987:
.L5494:
	.sleb128	14
	.4byte		.L5507
	.uleb128	578
	.4byte		.L5990-.L2
	.byte		"_ssSFcnParams"
	.byte		0
	.uleb128	20
.L659:
	.sleb128	15
	.byte		"dlgNum"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L660:
	.sleb128	15
	.byte		"dlgParams"
	.byte		0
	.4byte		.L5870
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L661:
	.sleb128	15
	.byte		"dlgAttribs"
	.byte		0
	.4byte		.L5991
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L662:
	.sleb128	15
	.byte		"numRtp"
	.byte		0
	.4byte		.L5992
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L663:
	.sleb128	15
	.byte		"rtp"
	.byte		0
	.4byte		.L5993
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L5990:
.L5992:
	.sleb128	17
	.4byte		.L5997-.L2
	.uleb128	4
.L657:
	.sleb128	15
	.byte		"numRtp"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L658:
	.sleb128	15
	.byte		"placeholder"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L5997:
.L5493:
	.sleb128	14
	.4byte		.L5507
	.uleb128	553
	.4byte		.L5998-.L2
	.byte		"_ssPortInfo"
	.byte		0
	.uleb128	24
.L649:
	.sleb128	15
	.byte		"regNumInputPortsFcn"
	.byte		0
	.4byte		.L5999
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L650:
	.sleb128	15
	.byte		"regNumInputPortsFcnArg"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L651:
	.sleb128	15
	.byte		"regNumOutputPortsFcn"
	.byte		0
	.4byte		.L6003
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L652:
	.sleb128	15
	.byte		"regNumOutputPortsFcnArg"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L653:
	.sleb128	15
	.byte		"inputs"
	.byte		0
	.4byte		.L6007
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L654:
	.sleb128	15
	.byte		"outputs"
	.byte		0
	.4byte		.L6009
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.sleb128	0
.L5998:
.L6010:
	.sleb128	14
	.4byte		.L5507
	.uleb128	515
	.4byte		.L6011-.L2
	.byte		"_ssPortOutputs"
	.byte		0
	.uleb128	48
.L637:
	.sleb128	15
	.byte		"width"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L638:
	.sleb128	15
	.byte		"dataTypeId"
	.byte		0
	.4byte		.L5687
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L639:
	.sleb128	15
	.byte		"complexSignal"
	.byte		0
	.4byte		.L5747
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L640:
	.sleb128	15
	.byte		"signalVect"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L641:
	.sleb128	15
	.byte		"connected"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L642:
	.sleb128	15
	.byte		"attributes"
	.byte		0
	.4byte		.L6012
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L643:
	.sleb128	15
	.byte		"sampleTime"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L644:
	.sleb128	15
	.byte		"offsetTime"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L645:
	.sleb128	15
	.byte		"dims"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L646:
	.sleb128	15
	.byte		"sampleTimeIndex"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L647:
	.sleb128	15
	.byte		"icPrmIdxPlus1"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L648:
	.sleb128	15
	.byte		"numDims"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.sleb128	0
.L6011:
.L6012:
	.sleb128	16
	.4byte		.L6013-.L2
	.uleb128	4
.L623:
	.sleb128	18
	.byte		"optimOpts"
	.byte		0
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
	.uleb128	4
	.byte		0xd
	.byte		0x13
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6013:
.L6008:
	.sleb128	14
	.4byte		.L5507
	.uleb128	475
	.4byte		.L6014-.L2
	.byte		"_ssPortInputs"
	.byte		0
	.uleb128	52
.L610:
	.sleb128	15
	.byte		"width"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L611:
	.sleb128	15
	.byte		"directFeedThrough"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L612:
	.sleb128	15
	.byte		"dataTypeId"
	.byte		0
	.4byte		.L5687
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L613:
	.sleb128	15
	.byte		"complexSignal"
	.byte		0
	.4byte		.L5747
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L614:
	.sleb128	15
	.byte		"signal"
	.byte		0
	.4byte		.L6015
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L615:
	.sleb128	15
	.byte		"connected"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L616:
	.sleb128	15
	.byte		"attributes"
	.byte		0
	.4byte		.L6016
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L617:
	.sleb128	15
	.byte		"sampleTime"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L618:
	.sleb128	15
	.byte		"offsetTime"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L619:
	.sleb128	15
	.byte		"dims"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L620:
	.sleb128	15
	.byte		"bufferDstPort"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L621:
	.sleb128	15
	.byte		"sampleTimeIndex"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L622:
	.sleb128	15
	.byte		"numDims"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.sleb128	0
.L6014:
.L6016:
	.sleb128	16
	.4byte		.L6017-.L2
	.uleb128	4
.L598:
	.sleb128	18
	.byte		"overWritable"
	.byte		0
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
	.uleb128	4
	.byte		0x10
	.byte		0x10
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6017:
.L6015:
	.sleb128	17
	.4byte		.L6018-.L2
	.uleb128	4
.L596:
	.sleb128	15
	.byte		"vect"
	.byte		0
	.4byte		.L5424
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L597:
	.sleb128	15
	.byte		"ptrs"
	.byte		0
	.4byte		.L6019
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6018:
.L5981:
	.sleb128	14
	.4byte		.L5507
	.uleb128	433
	.4byte		.L6022-.L2
	.byte		"_ssDWorkAuxRecord"
	.byte		0
	.uleb128	48
.L587:
	.sleb128	15
	.byte		"rtwIdentifier"
	.byte		0
	.4byte		.L5894
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L588:
	.sleb128	15
	.byte		"rtwStorageClass"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L589:
	.sleb128	15
	.byte		"rtwTypeQualifier"
	.byte		0
	.4byte		.L5894
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L590:
	.sleb128	15
	.byte		"flags"
	.byte		0
	.4byte		.L6023
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L591:
	.sleb128	15
	.byte		"icPrmIdxPlus1"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L592:
	.sleb128	15
	.byte		"bitFieldWidth"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L593:
	.sleb128	15
	.byte		"unusedInts"
	.byte		0
	.4byte		.L6024
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L594:
	.sleb128	15
	.byte		"resolvedSignalObject"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L595:
	.sleb128	15
	.byte		"unusedPtrs"
	.byte		0
	.4byte		.L6026
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.sleb128	0
.L6022:
.L6023:
	.sleb128	16
	.4byte		.L6028-.L2
	.uleb128	4
.L578:
	.sleb128	18
	.byte		"DisableBoundsChecking"
	.byte		0
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
	.uleb128	4
	.byte		0x10
	.byte		0x10
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6028:
.L5492:
	.sleb128	14
	.4byte		.L5507
	.uleb128	271
	.4byte		.L6029-.L2
	.byte		"_ssSizes"
	.byte		0
	.uleb128	152
.L545:
	.sleb128	15
	.byte		"numContStates"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L546:
	.sleb128	15
	.byte		"numDiscStates"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L547:
	.sleb128	15
	.byte		"out"
	.byte		0
	.4byte		.L6030
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L548:
	.sleb128	15
	.byte		"in"
	.byte		0
	.4byte		.L6031
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L549:
	.sleb128	15
	.byte		"mexApiInt1"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L550:
	.sleb128	15
	.byte		"sysDirFeedThrough"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L551:
	.sleb128	15
	.byte		"numSampleTimes"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L552:
	.sleb128	15
	.byte		"numSFcnParams"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L553:
	.sleb128	15
	.byte		"numIWork"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L554:
	.sleb128	15
	.byte		"numRWork"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L555:
	.sleb128	15
	.byte		"numPWork"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L556:
	.sleb128	15
	.byte		"numBlocks"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L557:
	.sleb128	15
	.byte		"numSFunctions"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L558:
	.sleb128	15
	.byte		"numBlockIO"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L559:
	.sleb128	15
	.byte		"numBlockParams"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L560:
	.sleb128	15
	.byte		"checksums"
	.byte		0
	.4byte		.L6032
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L561:
	.sleb128	15
	.byte		"simStructVer"
	.byte		0
	.4byte		.L4372
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L562:
	.sleb128	15
	.byte		"numNonsampledZCs"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L563:
	.sleb128	15
	.byte		"numZCEvents"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L564:
	.sleb128	15
	.byte		"numModes"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L565:
	.sleb128	15
	.byte		"options"
	.byte		0
	.4byte		.L4359
	.sleb128	2
	.byte		0x23
	.uleb128	92
.L566:
	.sleb128	15
	.byte		"sizeofY"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	96
.L567:
	.sleb128	15
	.byte		"sizeofU"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	100
.L568:
	.sleb128	15
	.byte		"sizeofBlockIO"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	104
.L569:
	.sleb128	15
	.byte		"sizeofGlobalBlockIO"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	108
.L570:
	.sleb128	15
	.byte		"numDWork"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	112
.L571:
	.sleb128	15
	.byte		"sizeofDWork"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	116
.L572:
	.sleb128	15
	.byte		"RTWGeneratedSFcn"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	120
.L573:
	.sleb128	15
	.byte		"flags"
	.byte		0
	.4byte		.L6034
	.sleb128	2
	.byte		0x23
	.uleb128	124
.L574:
	.sleb128	15
	.byte		"numJacobianNzMax"
	.byte		0
	.4byte		.L4491
	.sleb128	3
	.byte		0x23
	.uleb128	128
.L575:
	.sleb128	15
	.byte		"rtModel"
	.byte		0
	.4byte		.L4493
	.sleb128	3
	.byte		0x23
	.uleb128	132
.L576:
	.sleb128	15
	.byte		"constBlockIO"
	.byte		0
	.4byte		.L5424
	.sleb128	3
	.byte		0x23
	.uleb128	136
.L577:
	.sleb128	15
	.byte		"reservedForFuture"
	.byte		0
	.4byte		.L6035
	.sleb128	3
	.byte		0x23
	.uleb128	140
	.sleb128	0
.L6029:
.L6034:
	.sleb128	16
	.4byte		.L6037-.L2
	.uleb128	4
.L523:
	.sleb128	18
	.byte		"hasMdlDimensionsFcn"
	.byte		0
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
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
	.4byte		.L5522
	.uleb128	4
	.byte		0x3
	.byte		0x1d
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6037:
.L6031:
	.sleb128	17
	.4byte		.L6038-.L2
	.uleb128	4
.L521:
	.sleb128	15
	.byte		"numInputPorts"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L522:
	.sleb128	15
	.byte		"numU"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6038:
.L6030:
	.sleb128	17
	.4byte		.L6039-.L2
	.uleb128	4
.L519:
	.sleb128	15
	.byte		"numOutputPorts"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L520:
	.sleb128	15
	.byte		"numY"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6039:
.L5828:
	.sleb128	14
	.4byte		.L5507
	.uleb128	250
	.4byte		.L6040-.L2
	.byte		"ssSparseMatrixInfo_tag"
	.byte		0
	.uleb128	24
.L513:
	.sleb128	15
	.byte		"mRows"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L514:
	.sleb128	15
	.byte		"nCols"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L515:
	.sleb128	15
	.byte		"nzMax"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L516:
	.sleb128	15
	.byte		"Ir"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L517:
	.sleb128	15
	.byte		"Jc"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L518:
	.sleb128	15
	.byte		"Pr"
	.byte		0
	.4byte		.L5428
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.sleb128	0
.L6040:
.L5581:
	.sleb128	19
	.4byte		.L6041-.L2
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
.L6041:
.L5615:
	.sleb128	19
	.4byte		.L6042-.L2
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
.L6042:
.L5621:
	.sleb128	19
	.4byte		.L6043-.L2
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
.L6043:
.L5996:
	.sleb128	14
	.4byte		.L6044
	.uleb128	219
	.4byte		.L6045-.L2
	.byte		"ssParamRec_tag"
	.byte		0
	.uleb128	44
.L460:
	.sleb128	15
	.byte		"name"
	.byte		0
	.4byte		.L5577
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L461:
	.sleb128	15
	.byte		"nDimensions"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L462:
	.sleb128	15
	.byte		"dimensions"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L463:
	.sleb128	15
	.byte		"dataTypeId"
	.byte		0
	.4byte		.L5687
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L464:
	.sleb128	15
	.byte		"complexSignal"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L465:
	.sleb128	15
	.byte		"data"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L466:
	.sleb128	15
	.byte		"dataAttributes"
	.byte		0
	.4byte		.L5424
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L467:
	.sleb128	15
	.byte		"nDlgParamIndices"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L468:
	.sleb128	15
	.byte		"dlgParamIndices"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L469:
	.sleb128	15
	.byte		"transformed"
	.byte		0
	.4byte		.L6046
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L470:
	.sleb128	15
	.byte		"outputAsMatrix"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.sleb128	0
.L6045:
.L6047:
	.sleb128	19
	.4byte		.L6048-.L2
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
.L6048:
.L5550:
	.sleb128	19
	.4byte		.L6049-.L2
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
.L6049:
.L5900:
	.sleb128	19
	.4byte		.L6050-.L2
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
.L6050:
.L5518:
	.sleb128	14
	.4byte		.L6051
	.uleb128	284
	.4byte		.L6052-.L2
	.byte		"SparseHeader_Tag"
	.byte		0
	.uleb128	24
.L267:
	.sleb128	15
	.byte		"mRows"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L268:
	.sleb128	15
	.byte		"nCols"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L269:
	.sleb128	15
	.byte		"nzMax"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L270:
	.sleb128	15
	.byte		"Ir"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L271:
	.sleb128	15
	.byte		"Jc"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L272:
	.sleb128	15
	.byte		"Pr"
	.byte		0
	.4byte		.L5428
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.sleb128	0
.L6052:
.L5989:
	.sleb128	14
	.4byte		.L6051
	.uleb128	265
	.4byte		.L6053-.L2
	.byte		"_ssDWorkRecord"
	.byte		0
	.uleb128	24
.L256:
	.sleb128	15
	.byte		"width"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L257:
	.sleb128	15
	.byte		"dataTypeId"
	.byte		0
	.4byte		.L5687
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L258:
	.sleb128	15
	.byte		"complexSignal"
	.byte		0
	.4byte		.L5747
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L259:
	.sleb128	15
	.byte		"array"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L260:
	.sleb128	15
	.byte		"name"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L261:
	.sleb128	15
	.byte		"usedAs"
	.byte		0
	.4byte		.L6054
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.sleb128	0
.L6053:
.L6055:
	.sleb128	19
	.4byte		.L6056-.L2
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
.L6056:
.L5809:
	.sleb128	14
	.4byte		.L6051
	.uleb128	214
	.4byte		.L6057-.L2
	.byte		"DimsInfo_tag"
	.byte		0
	.uleb128	16
.L248:
	.sleb128	15
	.byte		"width"
	.byte		0
	.4byte		.L4492
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L249:
	.sleb128	15
	.byte		"numDims"
	.byte		0
	.4byte		.L4492
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L250:
	.sleb128	15
	.byte		"dims"
	.byte		0
	.4byte		.L5901
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L251:
	.sleb128	15
	.byte		"nextSigDims"
	.byte		0
	.4byte		.L6058
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.sleb128	0
.L6057:
.L5422:
	.sleb128	14
	.4byte		.L6059
	.uleb128	44
	.4byte		.L6060-.L2
	.byte		"_ssSolverInfo_tag"
	.byte		0
	.uleb128	208
.L183:
	.sleb128	15
	.byte		"rtModelPtr"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L184:
	.sleb128	15
	.byte		"simTimeStepPtr"
	.byte		0
	.4byte		.L6061
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L185:
	.sleb128	15
	.byte		"solverData"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L186:
	.sleb128	15
	.byte		"solverName"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L187:
	.sleb128	15
	.byte		"isVariableStepSolver"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L188:
	.sleb128	15
	.byte		"solverNeedsReset"
	.byte		0
	.4byte		.L4474
	.sleb128	2
	.byte		0x23
	.uleb128	17
.L189:
	.sleb128	15
	.byte		"solverMode"
	.byte		0
	.4byte		.L5912
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L190:
	.sleb128	15
	.byte		"solverStopTime"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L191:
	.sleb128	15
	.byte		"stepSizePtr"
	.byte		0
	.4byte		.L5438
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L192:
	.sleb128	15
	.byte		"minStepSize"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L193:
	.sleb128	15
	.byte		"maxStepSize"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L194:
	.sleb128	15
	.byte		"fixedStepSize"
	.byte		0
	.4byte		.L4487
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L195:
	.sleb128	15
	.byte		"solverShapePreserveControl"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L196:
	.sleb128	15
	.byte		"solverMaxConsecutiveMinStep"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L197:
	.sleb128	15
	.byte		"maxNumMinSteps"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L198:
	.sleb128	15
	.byte		"solverMaxOrder"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L199:
	.sleb128	15
	.byte		"solverConsecutiveZCsStepRelTol"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L200:
	.sleb128	15
	.byte		"solverMaxConsecutiveZCs"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L201:
	.sleb128	15
	.byte		"solverExtrapolationOrder"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L202:
	.sleb128	15
	.byte		"solverNumberNewtonIterations"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	72
.L203:
	.sleb128	15
	.byte		"solverRefineFactor"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	76
.L204:
	.sleb128	15
	.byte		"solverRelTol"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L205:
	.sleb128	15
	.byte		"unused_real_T_1"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	84
.L206:
	.sleb128	15
	.byte		"dXPtr"
	.byte		0
	.4byte		.L6062
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L207:
	.sleb128	15
	.byte		"tPtr"
	.byte		0
	.4byte		.L6063
	.sleb128	2
	.byte		0x23
	.uleb128	92
.L208:
	.sleb128	15
	.byte		"numContStatesPtr"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	96
.L209:
	.sleb128	15
	.byte		"contStatesPtr"
	.byte		0
	.4byte		.L6062
	.sleb128	2
	.byte		0x23
	.uleb128	100
.L210:
	.sleb128	15
	.byte		"numPeriodicContStatesPtr"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	104
.L211:
	.sleb128	15
	.byte		"periodicContStateIndicesPtr"
	.byte		0
	.4byte		.L6064
	.sleb128	2
	.byte		0x23
	.uleb128	108
.L212:
	.sleb128	15
	.byte		"periodicContStateRangesPtr"
	.byte		0
	.4byte		.L6062
	.sleb128	2
	.byte		0x23
	.uleb128	112
.L213:
	.sleb128	15
	.byte		"zcSignalVector"
	.byte		0
	.4byte		.L5428
	.sleb128	2
	.byte		0x23
	.uleb128	116
.L214:
	.sleb128	15
	.byte		"zcEventsVector"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	120
.L215:
	.sleb128	15
	.byte		"zcSignalAttrib"
	.byte		0
	.4byte		.L5529
	.sleb128	2
	.byte		0x23
	.uleb128	124
.L216:
	.sleb128	15
	.byte		"zcSignalVectorLength"
	.byte		0
	.4byte		.L4491
	.sleb128	3
	.byte		0x23
	.uleb128	128
.L217:
	.sleb128	15
	.byte		"reserved"
	.byte		0
	.4byte		.L5529
	.sleb128	3
	.byte		0x23
	.uleb128	132
.L218:
	.sleb128	15
	.byte		"foundContZcEvents"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	136
.L219:
	.sleb128	15
	.byte		"isAtLeftPostOfContZcEvent"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	137
.L220:
	.sleb128	15
	.byte		"isAtRightPostOfContZcEvent"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	138
.L221:
	.sleb128	15
	.byte		"adaptiveZcDetection"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	139
.L222:
	.sleb128	15
	.byte		"numZcSignals"
	.byte		0
	.4byte		.L4491
	.sleb128	3
	.byte		0x23
	.uleb128	140
.L223:
	.sleb128	15
	.byte		"stateProjection"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	144
.L224:
	.sleb128	15
	.byte		"robustResetMethod"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	145
.L225:
	.sleb128	15
	.byte		"updateJacobianAtReset"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	146
.L226:
	.sleb128	15
	.byte		"consistencyChecking"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	147
.L227:
	.sleb128	15
	.byte		"massMatrixType"
	.byte		0
	.4byte		.L5825
	.sleb128	3
	.byte		0x23
	.uleb128	148
.L228:
	.sleb128	15
	.byte		"massMatrixNzMax"
	.byte		0
	.4byte		.L4491
	.sleb128	3
	.byte		0x23
	.uleb128	152
.L229:
	.sleb128	15
	.byte		"massMatrixIr"
	.byte		0
	.4byte		.L4495
	.sleb128	3
	.byte		0x23
	.uleb128	156
.L230:
	.sleb128	15
	.byte		"massMatrixJc"
	.byte		0
	.4byte		.L4495
	.sleb128	3
	.byte		0x23
	.uleb128	160
.L231:
	.sleb128	15
	.byte		"massMatrixPr"
	.byte		0
	.4byte		.L5428
	.sleb128	3
	.byte		0x23
	.uleb128	164
.L232:
	.sleb128	15
	.byte		"errStatusPtr"
	.byte		0
	.4byte		.L6065
	.sleb128	3
	.byte		0x23
	.uleb128	168
.L233:
	.sleb128	15
	.byte		"modelMethodsPtr"
	.byte		0
	.4byte		.L6066
	.sleb128	3
	.byte		0x23
	.uleb128	172
.L234:
	.sleb128	15
	.byte		"zcThreshold"
	.byte		0
	.4byte		.L4488
	.sleb128	3
	.byte		0x23
	.uleb128	176
.L235:
	.sleb128	15
	.byte		"zeroCrossAlgorithm"
	.byte		0
	.4byte		.L4491
	.sleb128	3
	.byte		0x23
	.uleb128	180
.L236:
	.sleb128	15
	.byte		"consecutiveZCsError"
	.byte		0
	.4byte		.L4491
	.sleb128	3
	.byte		0x23
	.uleb128	184
.L237:
	.sleb128	15
	.byte		"CTOutputIncnstWithState"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	188
.L238:
	.sleb128	15
	.byte		"isComputingJacobian"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	189
.L239:
	.sleb128	15
	.byte		"solverJacobianMethodControl"
	.byte		0
	.4byte		.L6069
	.sleb128	3
	.byte		0x23
	.uleb128	192
.L240:
	.sleb128	15
	.byte		"ignoredZcDiagnostic"
	.byte		0
	.4byte		.L4491
	.sleb128	3
	.byte		0x23
	.uleb128	196
.L241:
	.sleb128	15
	.byte		"maskedZcDiagnostic"
	.byte		0
	.4byte		.L4491
	.sleb128	3
	.byte		0x23
	.uleb128	200
.L242:
	.sleb128	15
	.byte		"isOutputMethodComputed"
	.byte		0
	.4byte		.L4474
	.sleb128	3
	.byte		0x23
	.uleb128	204
	.sleb128	0
.L6060:
.L6070:
	.sleb128	19
	.4byte		.L6071-.L2
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
.L6071:
.L6068:
	.sleb128	14
	.4byte		.L6072
	.uleb128	62
	.4byte		.L6073-.L2
	.byte		"_RTWRTModelMethodsInfo_tag"
	.byte		0
	.uleb128	44
.L163:
	.sleb128	15
	.byte		"rtModelPtr"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L164:
	.sleb128	15
	.byte		"rtmInitSizesFcn"
	.byte		0
	.4byte		.L6074
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L165:
	.sleb128	15
	.byte		"rtmInitSampTimesFcn"
	.byte		0
	.4byte		.L6078
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L166:
	.sleb128	15
	.byte		"rtmStartFcn"
	.byte		0
	.4byte		.L6082
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L167:
	.sleb128	15
	.byte		"rtmOutputsFcn"
	.byte		0
	.4byte		.L6086
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L168:
	.sleb128	15
	.byte		"rtmUpdateFcn"
	.byte		0
	.4byte		.L6090
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L169:
	.sleb128	15
	.byte		"rtmDervisFcn"
	.byte		0
	.4byte		.L6094
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L170:
	.sleb128	15
	.byte		"rtmProjectionFcn"
	.byte		0
	.4byte		.L6098
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L171:
	.sleb128	15
	.byte		"rtmMassMatrixFcn"
	.byte		0
	.4byte		.L6102
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L172:
	.sleb128	15
	.byte		"rtmForcingFunctionFcn"
	.byte		0
	.4byte		.L6106
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L173:
	.sleb128	15
	.byte		"rtmTerminateFcn"
	.byte		0
	.4byte		.L6110
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.sleb128	0
.L6073:
.L5437:
	.sleb128	19
	.4byte		.L6114-.L2
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
.L6114:
.L5913:
	.sleb128	19
	.4byte		.L6115-.L2
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
.L6115:
.L5826:
	.sleb128	19
	.4byte		.L6116-.L2
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
.L6116:
.L5419:
	.sleb128	14
	.4byte		.L6117
	.uleb128	15
	.4byte		.L6118-.L2
	.byte		"_RTWExtModeInfo_tag"
	.byte		0
	.uleb128	20
.L149:
	.sleb128	15
	.byte		"subSysActiveVectorAddr"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L150:
	.sleb128	15
	.byte		"checksumsPtr"
	.byte		0
	.4byte		.L4375
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L151:
	.sleb128	15
	.byte		"mdlMappingInfoPtr"
	.byte		0
	.4byte		.L6119
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L152:
	.sleb128	15
	.byte		"tPtr"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L153:
	.sleb128	15
	.byte		"tFinalTicks"
	.byte		0
	.4byte		.L4372
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L6118:
.L5892:
	.sleb128	14
	.4byte		.L6120
	.uleb128	81
	.4byte		.L6121-.L2
	.byte		"_RTWLogInfo_tag"
	.byte		0
	.uleb128	72
.L131:
	.sleb128	15
	.byte		"logInfo"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L132:
	.sleb128	15
	.byte		"logXSignalPtrs"
	.byte		0
	.4byte		.L6122
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L133:
	.sleb128	15
	.byte		"logYSignalPtrs"
	.byte		0
	.4byte		.L6123
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L134:
	.sleb128	15
	.byte		"logFormat"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L135:
	.sleb128	15
	.byte		"logMaxRows"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L136:
	.sleb128	15
	.byte		"logDecimation"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L137:
	.sleb128	15
	.byte		"logVarNameModifier"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L138:
	.sleb128	15
	.byte		"logT"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L139:
	.sleb128	15
	.byte		"logX"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L140:
	.sleb128	15
	.byte		"logXFinal"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L141:
	.sleb128	15
	.byte		"logY"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L142:
	.sleb128	15
	.byte		"logSL"
	.byte		0
	.4byte		.L5409
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L143:
	.sleb128	15
	.byte		"logXSignalInfo"
	.byte		0
	.4byte		.L6124
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L144:
	.sleb128	15
	.byte		"logYSignalInfo"
	.byte		0
	.4byte		.L6125
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L145:
	.sleb128	15
	.byte		"mdlLogData"
	.byte		0
	.4byte		.L6126
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L146:
	.sleb128	15
	.byte		"mdlLogDataIfInInterval"
	.byte		0
	.4byte		.L6129
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L147:
	.sleb128	15
	.byte		"mmi"
	.byte		0
	.4byte		.L5424
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L148:
	.sleb128	15
	.byte		"loggingInterval"
	.byte		0
	.4byte		.L4493
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.sleb128	0
.L6121:
.L6125:
	.sleb128	17
	.4byte		.L6132-.L2
	.uleb128	4
.L129:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L6133
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L130:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L6137
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6132:
.L6124:
	.sleb128	17
	.4byte		.L6138-.L2
	.uleb128	4
.L127:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L6133
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L128:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L6137
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6138:
.L6123:
	.sleb128	17
	.4byte		.L6139-.L2
	.uleb128	4
.L125:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L6140
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L126:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L6145
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6139:
.L6122:
	.sleb128	17
	.4byte		.L6147-.L2
	.uleb128	4
.L123:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L6140
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L124:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L6145
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6147:
.L6136:
	.sleb128	14
	.4byte		.L6120
	.uleb128	39
	.4byte		.L6148-.L2
	.byte		"RTWLogSignalInfo_tag"
	.byte		0
	.uleb128	76
.L104:
	.sleb128	15
	.byte		"numSignals"
	.byte		0
	.4byte		.L4491
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L105:
	.sleb128	15
	.byte		"numCols"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L106:
	.sleb128	15
	.byte		"numDims"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L107:
	.sleb128	15
	.byte		"dims"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L108:
	.sleb128	15
	.byte		"isVarDims"
	.byte		0
	.4byte		.L5429
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L109:
	.sleb128	15
	.byte		"currSigDims"
	.byte		0
	.4byte		.L5874
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L110:
	.sleb128	15
	.byte		"currSigDimsSize"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L111:
	.sleb128	15
	.byte		"dataTypes"
	.byte		0
	.4byte		.L6149
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L112:
	.sleb128	15
	.byte		"complexSignals"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	32
.L113:
	.sleb128	15
	.byte		"frameData"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	36
.L114:
	.sleb128	15
	.byte		"preprocessingPtrs"
	.byte		0
	.4byte		.L6152
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L115:
	.sleb128	15
	.byte		"labels"
	.byte		0
	.4byte		.L6157
	.sleb128	2
	.byte		0x23
	.uleb128	44
.L116:
	.sleb128	15
	.byte		"titles"
	.byte		0
	.4byte		.L5894
	.sleb128	2
	.byte		0x23
	.uleb128	48
.L117:
	.sleb128	15
	.byte		"titleLengths"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	52
.L118:
	.sleb128	15
	.byte		"plotStyles"
	.byte		0
	.4byte		.L4495
	.sleb128	2
	.byte		0x23
	.uleb128	56
.L119:
	.sleb128	15
	.byte		"blockNames"
	.byte		0
	.4byte		.L6158
	.sleb128	2
	.byte		0x23
	.uleb128	60
.L120:
	.sleb128	15
	.byte		"stateNames"
	.byte		0
	.4byte		.L6159
	.sleb128	2
	.byte		0x23
	.uleb128	64
.L121:
	.sleb128	15
	.byte		"crossMdlRef"
	.byte		0
	.4byte		.L5429
	.sleb128	2
	.byte		0x23
	.uleb128	68
.L122:
	.sleb128	15
	.byte		"dataTypeConvert"
	.byte		0
	.4byte		.L6160
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.sleb128	0
.L6148:
.L6159:
	.sleb128	17
	.4byte		.L6163-.L2
	.uleb128	4
.L102:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L6065
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L103:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L6164
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6163:
.L6158:
	.sleb128	17
	.4byte		.L6165-.L2
	.uleb128	4
.L100:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L6065
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L101:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L6164
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6165:
.L6157:
	.sleb128	17
	.4byte		.L6166-.L2
	.uleb128	4
.L98:
	.sleb128	15
	.byte		"cptr"
	.byte		0
	.4byte		.L6065
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L99:
	.sleb128	15
	.byte		"ptr"
	.byte		0
	.4byte		.L6164
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L6166:
.L6162:
	.sleb128	14
	.4byte		.L6120
	.uleb128	23
	.4byte		.L6167-.L2
	.byte		"RTWLogDataTypeConvert_tag"
	.byte		0
	.uleb128	36
.L89:
	.sleb128	15
	.byte		"conversionNeeded"
	.byte		0
	.4byte		.L4492
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L90:
	.sleb128	15
	.byte		"dataTypeIdLoggingTo"
	.byte		0
	.4byte		.L6150
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L91:
	.sleb128	15
	.byte		"dataTypeIdOriginal"
	.byte		0
	.4byte		.L5687
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L92:
	.sleb128	15
	.byte		"bitsPerChunk"
	.byte		0
	.4byte		.L4492
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L93:
	.sleb128	15
	.byte		"numOfChunk"
	.byte		0
	.4byte		.L4492
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L94:
	.sleb128	15
	.byte		"isSigned"
	.byte		0
	.4byte		.L5522
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L95:
	.sleb128	15
	.byte		"fracSlope"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L96:
	.sleb128	15
	.byte		"fixedExp"
	.byte		0
	.4byte		.L4492
	.sleb128	2
	.byte		0x23
	.uleb128	28
.L97:
	.sleb128	15
	.byte		"bias"
	.byte		0
	.4byte		.L4488
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.sleb128	0
.L6167:
.L5515:
	.sleb128	19
	.4byte		.L6168-.L2
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
.L6168:
.L5889:
	.sleb128	14
	.4byte		.L6051
	.uleb128	124
	.4byte		.L6169-.L2
	.byte		"_rtTimingBridge_tag"
	.byte		0
	.uleb128	28
.L74:
	.sleb128	15
	.byte		"nTasks"
	.byte		0
	.4byte		.L4359
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L75:
	.sleb128	15
	.byte		"clockTick"
	.byte		0
	.4byte		.L6170
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L76:
	.sleb128	15
	.byte		"clockTickH"
	.byte		0
	.4byte		.L6170
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L77:
	.sleb128	15
	.byte		"taskCounter"
	.byte		0
	.4byte		.L4375
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L78:
	.sleb128	15
	.byte		"taskTime"
	.byte		0
	.4byte		.L6062
	.sleb128	2
	.byte		0x23
	.uleb128	16
.L79:
	.sleb128	15
	.byte		"rateTransition"
	.byte		0
	.4byte		.L6171
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L80:
	.sleb128	15
	.byte		"firstInitCond"
	.byte		0
	.4byte		.L5429
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.sleb128	0
.L6169:
.L5915:
	.sleb128	19
	.4byte		.L6172-.L2
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
.L6172:
.L5416:
	.sleb128	19
	.4byte		.L6173-.L2
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
.L6173:
.L6151:
	.sleb128	19
	.4byte		.L6174-.L2
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
.L6174:
	.section	.debug_info,,n
.L4360:
	.sleb128	21
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L4359:
	.sleb128	22
	.byte		"uint32_T"
	.byte		0
	.4byte		.L4360
	.section	.debug_info,,n
.L4363:
	.sleb128	23
	.4byte		.L4359
	.section	.debug_info,,n
.L4362:
	.sleb128	24
	.4byte		.L4363
.L4372:
	.sleb128	21
	.byte		"long"
	.byte		0
	.byte		0x5
	.byte		0x4
.L4371:
	.sleb128	22
	.byte		"int32_T"
	.byte		0
	.4byte		.L4372
.L4375:
	.sleb128	24
	.4byte		.L4359
.L4475:
	.sleb128	21
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L4474:
	.sleb128	22
	.byte		"boolean_T"
	.byte		0
	.4byte		.L4475
.L4489:
	.sleb128	21
	.byte		"float"
	.byte		0
	.byte		0x4
	.byte		0x4
.L4488:
	.sleb128	22
	.byte		"real_T"
	.byte		0
	.4byte		.L4489
.L4487:
	.sleb128	22
	.byte		"time_T"
	.byte		0
	.4byte		.L4488
.L4492:
	.sleb128	21
	.byte		"int"
	.byte		0
	.byte		0x5
	.byte		0x4
.L4491:
	.sleb128	22
	.byte		"int_T"
	.byte		0
	.4byte		.L4492
	.section	.debug_info,,n
.L4494:
	.sleb128	25
	.byte		"void"
	.byte		0
	.byte		0x0
.L4493:
	.sleb128	24
	.4byte		.L4494
.L4495:
	.sleb128	24
	.4byte		.L4491
.L4508:
	.sleb128	22
	.byte		"DW_Chart_ATV_T"
	.byte		0
	.4byte		.L4509
.L4507:
	.sleb128	24
	.4byte		.L4508
.L4518:
	.sleb128	22
	.byte		"B_Chart_ATV_T"
	.byte		0
	.4byte		.L4519
.L4517:
	.sleb128	24
	.4byte		.L4518
.L4529:
	.sleb128	21
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L4528:
	.sleb128	22
	.byte		"uint16_T"
	.byte		0
	.4byte		.L4529
.L4532:
	.sleb128	22
	.byte		"B_DBWREVERSE_ATV_T"
	.byte		0
	.4byte		.L4533
.L4531:
	.sleb128	24
	.4byte		.L4532
.L4545:
	.sleb128	22
	.byte		"B_DBWREG_BRAKEFORWARD_ATV_T"
	.byte		0
	.4byte		.L4546
.L4544:
	.sleb128	24
	.4byte		.L4545
.L4557:
	.sleb128	22
	.byte		"int96m_T"
	.byte		0
	.4byte		.L4558
.L4562:
	.sleb128	22
	.byte		"int64m_T"
	.byte		0
	.4byte		.L4563
.L4621:
	.sleb128	22
	.byte		"uint8_T"
	.byte		0
	.4byte		.L4475
.L4639:
	.sleb128	21
	.byte		"short"
	.byte		0
	.byte		0x5
	.byte		0x2
.L4638:
	.sleb128	22
	.byte		"int16_T"
	.byte		0
	.4byte		.L4639
.L4644:
	.sleb128	22
	.byte		"U8"
	.byte		0
	.4byte		.L4475
	.section	.debug_info,,n
.L4642:
	.sleb128	26
	.4byte		.L4643-.L2
	.4byte		.L4644
	.section	.debug_info,,n
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L4643:
.L4646:
	.sleb128	22
	.byte		"BOOL"
	.byte		0
	.4byte		.L4475
.L4651:
	.sleb128	22
	.byte		"F32"
	.byte		0
	.4byte		.L4489
.L4649:
	.sleb128	26
	.4byte		.L4650-.L2
	.4byte		.L4651
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L4650:
.L4655:
	.sleb128	24
	.4byte		.L4651
.L4653:
	.sleb128	26
	.4byte		.L4654-.L2
	.4byte		.L4655
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L4654:
.L4659:
	.sleb128	26
	.4byte		.L4660-.L2
	.4byte		.L4644
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L4660:
.L4664:
	.sleb128	26
	.4byte		.L4665-.L2
	.4byte		.L4651
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4665:
.L4667:
	.sleb128	26
	.4byte		.L4668-.L2
	.4byte		.L4655
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4668:
.L4670:
	.sleb128	26
	.4byte		.L4671-.L2
	.4byte		.L4644
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L4671:
.L4675:
	.sleb128	26
	.4byte		.L4676-.L2
	.4byte		.L4651
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4676:
.L4678:
	.sleb128	26
	.4byte		.L4679-.L2
	.4byte		.L4655
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4679:
.L4681:
	.sleb128	26
	.4byte		.L4682-.L2
	.4byte		.L4644
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L4682:
.L4686:
	.sleb128	26
	.4byte		.L4687-.L2
	.4byte		.L4651
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4687:
.L4689:
	.sleb128	26
	.4byte		.L4690-.L2
	.4byte		.L4655
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4690:
.L4692:
	.sleb128	26
	.4byte		.L4693-.L2
	.4byte		.L4644
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L4693:
.L4697:
	.sleb128	26
	.4byte		.L4698-.L2
	.4byte		.L4651
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4698:
.L4700:
	.sleb128	26
	.4byte		.L4701-.L2
	.4byte		.L4655
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4701:
.L4725:
	.sleb128	23
	.4byte		.L4644
.L4723:
	.sleb128	26
	.4byte		.L4724-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L4724:
.L4722:
	.sleb128	23
	.4byte		.L4723
.L4728:
	.sleb128	26
	.4byte		.L4729-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L4729:
.L4727:
	.sleb128	23
	.4byte		.L4728
.L4732:
	.sleb128	26
	.4byte		.L4733-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L4733:
.L4731:
	.sleb128	23
	.4byte		.L4732
.L4736:
	.sleb128	26
	.4byte		.L4737-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L4737:
.L4735:
	.sleb128	23
	.4byte		.L4736
.L4740:
	.sleb128	26
	.4byte		.L4741-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L4741:
.L4739:
	.sleb128	23
	.4byte		.L4740
.L4746:
	.sleb128	23
	.4byte		.L4651
.L4744:
	.sleb128	26
	.4byte		.L4745-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L4745:
.L4743:
	.sleb128	23
	.4byte		.L4744
.L4749:
	.sleb128	26
	.4byte		.L4750-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L4750:
.L4748:
	.sleb128	23
	.4byte		.L4749
.L4753:
	.sleb128	26
	.4byte		.L4754-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L4754:
.L4752:
	.sleb128	23
	.4byte		.L4753
.L4757:
	.sleb128	26
	.4byte		.L4758-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L4758:
.L4756:
	.sleb128	23
	.4byte		.L4757
.L4765:
	.sleb128	26
	.4byte		.L4766-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4766:
.L4764:
	.sleb128	23
	.4byte		.L4765
.L4769:
	.sleb128	26
	.4byte		.L4770-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4770:
.L4768:
	.sleb128	23
	.4byte		.L4769
.L4773:
	.sleb128	26
	.4byte		.L4774-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4774:
.L4772:
	.sleb128	23
	.4byte		.L4773
.L4777:
	.sleb128	26
	.4byte		.L4778-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4778:
.L4776:
	.sleb128	23
	.4byte		.L4777
.L4781:
	.sleb128	26
	.4byte		.L4782-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4782:
.L4780:
	.sleb128	23
	.4byte		.L4781
.L4785:
	.sleb128	26
	.4byte		.L4786-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4786:
.L4784:
	.sleb128	23
	.4byte		.L4785
.L4789:
	.sleb128	26
	.4byte		.L4790-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4790:
.L4788:
	.sleb128	23
	.4byte		.L4789
.L4793:
	.sleb128	26
	.4byte		.L4794-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4794:
.L4792:
	.sleb128	23
	.4byte		.L4793
.L4797:
	.sleb128	26
	.4byte		.L4798-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4798:
.L4796:
	.sleb128	23
	.4byte		.L4797
.L4805:
	.sleb128	26
	.4byte		.L4806-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4806:
.L4804:
	.sleb128	23
	.4byte		.L4805
.L4809:
	.sleb128	26
	.4byte		.L4810-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4810:
.L4808:
	.sleb128	23
	.4byte		.L4809
.L4813:
	.sleb128	26
	.4byte		.L4814-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4814:
.L4812:
	.sleb128	23
	.4byte		.L4813
.L4817:
	.sleb128	26
	.4byte		.L4818-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4818:
.L4816:
	.sleb128	23
	.4byte		.L4817
.L4821:
	.sleb128	26
	.4byte		.L4822-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4822:
.L4820:
	.sleb128	23
	.4byte		.L4821
.L4825:
	.sleb128	26
	.4byte		.L4826-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4826:
.L4824:
	.sleb128	23
	.4byte		.L4825
.L4829:
	.sleb128	26
	.4byte		.L4830-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4830:
.L4828:
	.sleb128	23
	.4byte		.L4829
.L4833:
	.sleb128	26
	.4byte		.L4834-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4834:
.L4832:
	.sleb128	23
	.4byte		.L4833
.L4837:
	.sleb128	26
	.4byte		.L4838-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4838:
.L4836:
	.sleb128	23
	.4byte		.L4837
.L4845:
	.sleb128	26
	.4byte		.L4846-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4846:
.L4844:
	.sleb128	23
	.4byte		.L4845
.L4849:
	.sleb128	26
	.4byte		.L4850-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4850:
.L4848:
	.sleb128	23
	.4byte		.L4849
.L4853:
	.sleb128	26
	.4byte		.L4854-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4854:
.L4852:
	.sleb128	23
	.4byte		.L4853
.L4857:
	.sleb128	26
	.4byte		.L4858-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4858:
.L4856:
	.sleb128	23
	.4byte		.L4857
.L4861:
	.sleb128	26
	.4byte		.L4862-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4862:
.L4860:
	.sleb128	23
	.4byte		.L4861
.L4865:
	.sleb128	26
	.4byte		.L4866-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4866:
.L4864:
	.sleb128	23
	.4byte		.L4865
.L4869:
	.sleb128	26
	.4byte		.L4870-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4870:
.L4868:
	.sleb128	23
	.4byte		.L4869
.L4873:
	.sleb128	26
	.4byte		.L4874-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4874:
.L4872:
	.sleb128	23
	.4byte		.L4873
.L4877:
	.sleb128	26
	.4byte		.L4878-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4878:
.L4876:
	.sleb128	23
	.4byte		.L4877
.L4885:
	.sleb128	26
	.4byte		.L4886-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4886:
.L4884:
	.sleb128	23
	.4byte		.L4885
.L4889:
	.sleb128	26
	.4byte		.L4890-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4890:
.L4888:
	.sleb128	23
	.4byte		.L4889
.L4893:
	.sleb128	26
	.4byte		.L4894-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4894:
.L4892:
	.sleb128	23
	.4byte		.L4893
.L4897:
	.sleb128	26
	.4byte		.L4898-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4898:
.L4896:
	.sleb128	23
	.4byte		.L4897
.L4901:
	.sleb128	26
	.4byte		.L4902-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4902:
.L4900:
	.sleb128	23
	.4byte		.L4901
.L4905:
	.sleb128	26
	.4byte		.L4906-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4906:
.L4904:
	.sleb128	23
	.4byte		.L4905
.L4909:
	.sleb128	26
	.4byte		.L4910-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4910:
.L4908:
	.sleb128	23
	.4byte		.L4909
.L4913:
	.sleb128	26
	.4byte		.L4914-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4914:
.L4912:
	.sleb128	23
	.4byte		.L4913
.L4917:
	.sleb128	26
	.4byte		.L4918-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4918:
.L4916:
	.sleb128	23
	.4byte		.L4917
.L4930:
	.sleb128	26
	.4byte		.L4931-.L2
	.4byte		.L4644
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L4931:
.L4935:
	.sleb128	26
	.4byte		.L4936-.L2
	.4byte		.L4651
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4936:
.L4938:
	.sleb128	26
	.4byte		.L4939-.L2
	.4byte		.L4655
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4939:
.L4941:
	.sleb128	26
	.4byte		.L4942-.L2
	.4byte		.L4644
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L4942:
.L4946:
	.sleb128	26
	.4byte		.L4947-.L2
	.4byte		.L4651
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4947:
.L4949:
	.sleb128	26
	.4byte		.L4950-.L2
	.4byte		.L4655
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L4950:
.L4952:
	.sleb128	26
	.4byte		.L4953-.L2
	.4byte		.L4644
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L4953:
.L4955:
	.sleb128	22
	.byte		"U32"
	.byte		0
	.4byte		.L4360
.L4958:
	.sleb128	21
	.byte		"signed char"
	.byte		0
	.byte		0x6
	.byte		0x1
.L4957:
	.sleb128	22
	.byte		"S8"
	.byte		0
	.4byte		.L4958
.L4961:
	.sleb128	26
	.4byte		.L4962-.L2
	.4byte		.L4651
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L4962:
.L4964:
	.sleb128	26
	.4byte		.L4965-.L2
	.4byte		.L4655
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L4965:
.L4967:
	.sleb128	26
	.4byte		.L4968-.L2
	.4byte		.L4644
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L4968:
.L4973:
	.sleb128	26
	.4byte		.L4974-.L2
	.4byte		.L4651
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L4974:
.L4976:
	.sleb128	26
	.4byte		.L4977-.L2
	.4byte		.L4655
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L4977:
.L4979:
	.sleb128	26
	.4byte		.L4980-.L2
	.4byte		.L4644
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L4980:
.L4985:
	.sleb128	26
	.4byte		.L4986-.L2
	.4byte		.L4651
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L4986:
.L4988:
	.sleb128	26
	.4byte		.L4989-.L2
	.4byte		.L4655
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L4989:
.L4996:
	.sleb128	26
	.4byte		.L4997-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L4997:
.L4995:
	.sleb128	23
	.4byte		.L4996
.L5000:
	.sleb128	26
	.4byte		.L5001-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5001:
.L4999:
	.sleb128	23
	.4byte		.L5000
.L5004:
	.sleb128	26
	.4byte		.L5005-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5005:
.L5003:
	.sleb128	23
	.4byte		.L5004
.L5008:
	.sleb128	26
	.4byte		.L5009-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5009:
.L5007:
	.sleb128	23
	.4byte		.L5008
.L5012:
	.sleb128	26
	.4byte		.L5013-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5013:
.L5011:
	.sleb128	23
	.4byte		.L5012
.L5016:
	.sleb128	26
	.4byte		.L5017-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5017:
.L5015:
	.sleb128	23
	.4byte		.L5016
.L5020:
	.sleb128	26
	.4byte		.L5021-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5021:
.L5019:
	.sleb128	23
	.4byte		.L5020
.L5024:
	.sleb128	26
	.4byte		.L5025-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5025:
.L5023:
	.sleb128	23
	.4byte		.L5024
.L5028:
	.sleb128	26
	.4byte		.L5029-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5029:
.L5027:
	.sleb128	23
	.4byte		.L5028
.L5036:
	.sleb128	26
	.4byte		.L5037-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5037:
.L5035:
	.sleb128	23
	.4byte		.L5036
.L5040:
	.sleb128	26
	.4byte		.L5041-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5041:
.L5039:
	.sleb128	23
	.4byte		.L5040
.L5044:
	.sleb128	26
	.4byte		.L5045-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5045:
.L5043:
	.sleb128	23
	.4byte		.L5044
.L5048:
	.sleb128	26
	.4byte		.L5049-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5049:
.L5047:
	.sleb128	23
	.4byte		.L5048
.L5052:
	.sleb128	26
	.4byte		.L5053-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5053:
.L5051:
	.sleb128	23
	.4byte		.L5052
.L5056:
	.sleb128	26
	.4byte		.L5057-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5057:
.L5055:
	.sleb128	23
	.4byte		.L5056
.L5060:
	.sleb128	26
	.4byte		.L5061-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5061:
.L5059:
	.sleb128	23
	.4byte		.L5060
.L5064:
	.sleb128	26
	.4byte		.L5065-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5065:
.L5063:
	.sleb128	23
	.4byte		.L5064
.L5068:
	.sleb128	26
	.4byte		.L5069-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5069:
.L5067:
	.sleb128	23
	.4byte		.L5068
.L5076:
	.sleb128	26
	.4byte		.L5077-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5077:
.L5075:
	.sleb128	23
	.4byte		.L5076
.L5080:
	.sleb128	26
	.4byte		.L5081-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5081:
.L5079:
	.sleb128	23
	.4byte		.L5080
.L5084:
	.sleb128	26
	.4byte		.L5085-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5085:
.L5083:
	.sleb128	23
	.4byte		.L5084
.L5088:
	.sleb128	26
	.4byte		.L5089-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5089:
.L5087:
	.sleb128	23
	.4byte		.L5088
.L5092:
	.sleb128	26
	.4byte		.L5093-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5093:
.L5091:
	.sleb128	23
	.4byte		.L5092
.L5096:
	.sleb128	26
	.4byte		.L5097-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5097:
.L5095:
	.sleb128	23
	.4byte		.L5096
.L5100:
	.sleb128	26
	.4byte		.L5101-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5101:
.L5099:
	.sleb128	23
	.4byte		.L5100
.L5104:
	.sleb128	26
	.4byte		.L5105-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5105:
.L5103:
	.sleb128	23
	.4byte		.L5104
.L5108:
	.sleb128	26
	.4byte		.L5109-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5109:
.L5107:
	.sleb128	23
	.4byte		.L5108
.L5116:
	.sleb128	26
	.4byte		.L5117-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5117:
.L5115:
	.sleb128	23
	.4byte		.L5116
.L5120:
	.sleb128	26
	.4byte		.L5121-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5121:
.L5119:
	.sleb128	23
	.4byte		.L5120
.L5124:
	.sleb128	26
	.4byte		.L5125-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5125:
.L5123:
	.sleb128	23
	.4byte		.L5124
.L5128:
	.sleb128	26
	.4byte		.L5129-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5129:
.L5127:
	.sleb128	23
	.4byte		.L5128
.L5132:
	.sleb128	26
	.4byte		.L5133-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5133:
.L5131:
	.sleb128	23
	.4byte		.L5132
.L5136:
	.sleb128	26
	.4byte		.L5137-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5137:
.L5135:
	.sleb128	23
	.4byte		.L5136
.L5140:
	.sleb128	26
	.4byte		.L5141-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5141:
.L5139:
	.sleb128	23
	.4byte		.L5140
.L5144:
	.sleb128	26
	.4byte		.L5145-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5145:
.L5143:
	.sleb128	23
	.4byte		.L5144
.L5148:
	.sleb128	26
	.4byte		.L5149-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	6
	.sleb128	0
.L5149:
.L5147:
	.sleb128	23
	.4byte		.L5148
.L5156:
	.sleb128	26
	.4byte		.L5157-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5157:
.L5155:
	.sleb128	23
	.4byte		.L5156
.L5160:
	.sleb128	26
	.4byte		.L5161-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5161:
.L5159:
	.sleb128	23
	.4byte		.L5160
.L5164:
	.sleb128	26
	.4byte		.L5165-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5165:
.L5163:
	.sleb128	23
	.4byte		.L5164
.L5168:
	.sleb128	26
	.4byte		.L5169-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5169:
.L5167:
	.sleb128	23
	.4byte		.L5168
.L5172:
	.sleb128	26
	.4byte		.L5173-.L2
	.4byte		.L4725
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5173:
.L5171:
	.sleb128	23
	.4byte		.L5172
.L5176:
	.sleb128	26
	.4byte		.L5177-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5177:
.L5175:
	.sleb128	23
	.4byte		.L5176
.L5180:
	.sleb128	26
	.4byte		.L5181-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5181:
.L5179:
	.sleb128	23
	.4byte		.L5180
.L5184:
	.sleb128	26
	.4byte		.L5185-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5185:
.L5183:
	.sleb128	23
	.4byte		.L5184
.L5188:
	.sleb128	26
	.4byte		.L5189-.L2
	.4byte		.L4746
	.sleb128	27
	.uleb128	5
	.sleb128	0
.L5189:
.L5187:
	.sleb128	23
	.4byte		.L5188
.L5211:
	.sleb128	22
	.byte		"U16"
	.byte		0
	.4byte		.L4529
.L5277:
	.sleb128	22
	.byte		"RT_MODEL_ATV_T"
	.byte		0
	.4byte		.L5278
.L5276:
	.sleb128	24
	.4byte		.L5277
.L5324:
	.sleb128	22
	.byte		"PKN_TASK_T"
	.byte		0
	.4byte		.L5325
.L5323:
	.sleb128	23
	.4byte		.L5324
.L5322:
	.sleb128	24
	.4byte		.L5323
.L5321:
	.sleb128	23
	.4byte		.L5322
.L5320:
	.sleb128	22
	.byte		"PKN_TASK_HANDLE_T"
	.byte		0
	.4byte		.L5321
.L5328:
	.sleb128	22
	.byte		"B_ATV_T"
	.byte		0
	.4byte		.L5329
.L5332:
	.sleb128	22
	.byte		"ConstB_ATV_T"
	.byte		0
	.4byte		.L5333
.L5331:
	.sleb128	23
	.4byte		.L5332
.L5383:
	.sleb128	23
	.4byte		.L4621
	.section	.debug_info,,n
.L5382:
	.sleb128	28
	.4byte		.L5383
.L5398:
	.sleb128	23
	.4byte		.L5276
.L5402:
	.sleb128	22
	.byte		"DW_ATV_T"
	.byte		0
	.4byte		.L5403
.L5405:
	.sleb128	22
	.byte		"PUT_DEBOUNCE_TIME_T"
	.byte		0
	.4byte		.L5406
.L5411:
	.sleb128	22
	.byte		"char_T"
	.byte		0
	.4byte		.L4475
.L5410:
	.sleb128	23
	.4byte		.L5411
.L5409:
	.sleb128	24
	.4byte		.L5410
.L5413:
	.sleb128	24
	.4byte		.L5414
.L5412:
	.sleb128	24
	.4byte		.L5413
.L5415:
	.sleb128	22
	.byte		"SS_SimMode"
	.byte		0
	.4byte		.L5416
.L5418:
	.sleb128	22
	.byte		"RTWExtModeInfo"
	.byte		0
	.4byte		.L5419
.L5417:
	.sleb128	24
	.4byte		.L5418
.L5421:
	.sleb128	22
	.byte		"ssSolverInfo"
	.byte		0
	.4byte		.L5422
.L5420:
	.sleb128	22
	.byte		"RTWSolverInfo"
	.byte		0
	.4byte		.L5421
.L5423:
	.sleb128	24
	.4byte		.L5420
.L5425:
	.sleb128	23
	.4byte		.L4494
.L5424:
	.sleb128	24
	.4byte		.L5425
.L5427:
	.sleb128	22
	.byte		"ZCSigState"
	.byte		0
	.4byte		.L4621
.L5426:
	.sleb128	24
	.4byte		.L5427
.L5428:
	.sleb128	24
	.4byte		.L4488
.L5429:
	.sleb128	24
	.4byte		.L4474
.L5436:
	.sleb128	22
	.byte		"SimTimeStep"
	.byte		0
	.4byte		.L5437
.L5438:
	.sleb128	24
	.4byte		.L4487
.L5439:
	.sleb128	26
	.4byte		.L5440-.L2
	.4byte		.L4487
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5440:
.L5441:
	.sleb128	26
	.4byte		.L5442-.L2
	.4byte		.L4487
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5442:
.L5443:
	.sleb128	26
	.4byte		.L5444-.L2
	.4byte		.L4491
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5444:
.L5445:
	.sleb128	26
	.4byte		.L5446-.L2
	.4byte		.L4491
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5446:
.L5447:
	.sleb128	26
	.4byte		.L5448-.L2
	.4byte		.L4491
	.sleb128	27
	.uleb128	8
	.sleb128	0
.L5448:
.L5449:
	.sleb128	26
	.4byte		.L5450-.L2
	.4byte		.L4487
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5450:
.L5453:
	.sleb128	26
	.4byte		.L5454-.L2
	.4byte		.L4621
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5454:
.L5457:
	.sleb128	26
	.4byte		.L5458-.L2
	.4byte		.L4359
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L5458:
.L5460:
	.sleb128	22
	.byte		"ConstB_DBWREG_BRAKEFORWARD_AT_T"
	.byte		0
	.4byte		.L5461
.L5462:
	.sleb128	22
	.byte		"ConstB_DBWREVERSE_ATV_T"
	.byte		0
	.4byte		.L5463
.L5465:
	.sleb128	23
	.4byte		.L4488
.L5466:
	.sleb128	23
	.4byte		.L4372
.L5468:
	.sleb128	23
	.4byte		.L4528
	.section	.debug_info,,n
.L5478:
	.sleb128	29
	.4byte		.L5479-.L2
	.byte		0x1
	.sleb128	0
.L5479:
.L5477:
	.sleb128	24
	.4byte		.L5478
.L5480:
	.sleb128	22
	.byte		"PKN_TASKSET_T"
	.byte		0
	.4byte		.L4955
.L5482:
	.sleb128	26
	.4byte		.L5483-.L2
	.4byte		.L4359
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L5483:
.L5485:
	.sleb128	26
	.4byte		.L5486-.L2
	.4byte		.L4359
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L5486:
.L5490:
	.sleb128	22
	.byte		"SimStruct"
	.byte		0
	.4byte		.L5414
.L5489:
	.sleb128	24
	.4byte		.L5490
.L5498:
	.sleb128	24
	.4byte		.L5499
.L5511:
	.sleb128	24
	.4byte		.L5512
.L5514:
	.sleb128	22
	.byte		"ZCDirection"
	.byte		0
	.4byte		.L5515
.L5513:
	.sleb128	24
	.4byte		.L5514
.L5517:
	.sleb128	22
	.byte		"SparseHeader"
	.byte		0
	.4byte		.L5518
.L5516:
	.sleb128	24
	.4byte		.L5517
.L5519:
	.sleb128	24
	.4byte		.L5520
.L5522:
	.sleb128	21
	.byte		"unsigned int"
	.byte		0
	.byte		0x7
	.byte		0x4
.L5527:
	.sleb128	24
	.4byte		.L5465
.L5526:
	.sleb128	23
	.4byte		.L5527
.L5525:
	.sleb128	24
	.4byte		.L5526
.L5524:
	.sleb128	22
	.byte		"UPtrsType"
	.byte		0
	.4byte		.L5525
.L5529:
	.sleb128	24
	.4byte		.L4621
.L5531:
	.sleb128	22
	.byte		"ssPeriodicStatesInfo"
	.byte		0
	.4byte		.L5532
.L5530:
	.sleb128	24
	.4byte		.L5531
.L5533:
	.sleb128	26
	.4byte		.L5534-.L2
	.4byte		.L4493
	.sleb128	27
	.uleb128	4
	.sleb128	0
.L5534:
.L5539:
	.sleb128	29
	.4byte		.L5540-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5540:
.L5538:
	.sleb128	24
	.4byte		.L5539
.L5537:
	.sleb128	22
	.byte		"mdlProjectionFcn"
	.byte		0
	.4byte		.L5538
.L5543:
	.sleb128	29
	.4byte		.L5544-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5544:
.L5542:
	.sleb128	24
	.4byte		.L5543
.L5541:
	.sleb128	22
	.byte		"mdlJacobianFcn"
	.byte		0
	.4byte		.L5542
.L5547:
	.sleb128	29
	.4byte		.L5548-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
.L5549:
	.sleb128	22
	.byte		"Frame_T"
	.byte		0
	.4byte		.L5550
	.sleb128	30
	.4byte		.L5549
	.sleb128	0
.L5548:
.L5546:
	.sleb128	24
	.4byte		.L5547
.L5545:
	.sleb128	22
	.byte		"mdlSetInputPortFrameDataFcn"
	.byte		0
	.4byte		.L5546
	.section	.debug_info,,n
.L5553:
	.sleb128	31
	.4byte		.L5554-.L2
	.4byte		.L4474
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L5554:
.L5552:
	.sleb128	24
	.4byte		.L5553
.L5551:
	.sleb128	22
	.byte		"StrictBooleanCheckEnabled"
	.byte		0
	.4byte		.L5552
.L5557:
	.sleb128	29
	.4byte		.L5558-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5558:
.L5556:
	.sleb128	24
	.4byte		.L5557
.L5555:
	.sleb128	22
	.byte		"mdlSetDefaultPortDimensionsFcn"
	.byte		0
	.4byte		.L5556
.L5561:
	.sleb128	29
	.4byte		.L5562-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5562:
.L5560:
	.sleb128	24
	.4byte		.L5561
.L5559:
	.sleb128	22
	.byte		"mdlSetDefaultPortDataTypesFcn"
	.byte		0
	.4byte		.L5560
.L5565:
	.sleb128	29
	.4byte		.L5566-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5566:
.L5564:
	.sleb128	24
	.4byte		.L5565
.L5563:
	.sleb128	22
	.byte		"mdlSetDefaultPortComplexSignalsFcn"
	.byte		0
	.4byte		.L5564
.L5569:
	.sleb128	31
	.4byte		.L5570-.L2
	.4byte		.L4474
	.byte		0x1
	.sleb128	30
	.4byte		.L4492
	.sleb128	30
	.4byte		.L4474
	.sleb128	30
	.4byte		.L4474
.L5571:
	.sleb128	23
	.4byte		.L4492
	.sleb128	30
	.4byte		.L5571
	.sleb128	30
	.4byte		.L5424
	.sleb128	30
	.4byte		.L5571
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L5570:
.L5568:
	.sleb128	24
	.4byte		.L5569
.L5567:
	.sleb128	22
	.byte		"ConvertBuiltInDTypeFcn"
	.byte		0
	.4byte		.L5568
.L5578:
	.sleb128	23
	.4byte		.L4475
.L5577:
	.sleb128	24
	.4byte		.L5578
.L5575:
	.sleb128	31
	.4byte		.L5576-.L2
	.4byte		.L5577
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
.L5580:
	.sleb128	22
	.byte		"ExtModeLogBlockMeth"
	.byte		0
	.4byte		.L5581
.L5579:
	.sleb128	23
	.4byte		.L5580
	.sleb128	30
	.4byte		.L5579
	.sleb128	0
.L5576:
.L5574:
	.sleb128	24
	.4byte		.L5575
.L5573:
	.sleb128	22
	.byte		"SFunExtModeFcn"
	.byte		0
	.4byte		.L5574
.L5584:
	.sleb128	29
	.4byte		.L5585-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5585:
.L5583:
	.sleb128	24
	.4byte		.L5584
.L5582:
	.sleb128	22
	.byte		"mdlExtModeExecFcn"
	.byte		0
	.4byte		.L5583
.L5588:
	.sleb128	29
	.4byte		.L5589-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
.L5591:
	.sleb128	22
	.byte		"RTWCGInterface"
	.byte		0
	.4byte		.L4494
.L5590:
	.sleb128	24
	.4byte		.L5591
	.sleb128	30
	.4byte		.L5590
	.sleb128	0
.L5589:
.L5587:
	.sleb128	24
	.4byte		.L5588
.L5586:
	.sleb128	22
	.byte		"mdlRTWCGFcn"
	.byte		0
	.4byte		.L5587
.L5594:
	.sleb128	29
	.4byte		.L5595-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5595:
.L5593:
	.sleb128	24
	.4byte		.L5594
.L5592:
	.sleb128	22
	.byte		"mdlMassMatrixFcn"
	.byte		0
	.4byte		.L5593
.L5596:
	.sleb128	24
	.4byte		.L5597
.L5600:
	.sleb128	29
	.4byte		.L5601-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5601:
.L5599:
	.sleb128	24
	.4byte		.L5600
.L5598:
	.sleb128	22
	.byte		"mdlForcingFunctionFcn"
	.byte		0
	.4byte		.L5599
.L5604:
	.sleb128	29
	.4byte		.L5605-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5605:
.L5603:
	.sleb128	24
	.4byte		.L5604
.L5602:
	.sleb128	22
	.byte		"mdlEnableFcn"
	.byte		0
	.4byte		.L5603
.L5608:
	.sleb128	29
	.4byte		.L5609-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5609:
.L5607:
	.sleb128	24
	.4byte		.L5608
.L5606:
	.sleb128	22
	.byte		"mdlDisableFcn"
	.byte		0
	.4byte		.L5607
.L5612:
	.sleb128	29
	.4byte		.L5613-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
.L5614:
	.sleb128	22
	.byte		"ssSimStatusChangeType"
	.byte		0
	.4byte		.L5615
	.sleb128	30
	.4byte		.L5614
	.sleb128	0
.L5613:
.L5611:
	.sleb128	24
	.4byte		.L5612
.L5610:
	.sleb128	22
	.byte		"mdlSimStatusChangeFcn"
	.byte		0
	.4byte		.L5611
.L5618:
	.sleb128	29
	.4byte		.L5619-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
.L5620:
	.sleb128	22
	.byte		"PropagationPassType"
	.byte		0
	.4byte		.L5621
	.sleb128	30
	.4byte		.L5620
	.sleb128	0
.L5619:
.L5617:
	.sleb128	24
	.4byte		.L5618
.L5616:
	.sleb128	22
	.byte		"mdlInitializePropagationPassFcn"
	.byte		0
	.4byte		.L5617
.L5622:
	.sleb128	24
	.4byte		.L5623
.L5624:
	.sleb128	24
	.4byte		.L5625
.L5630:
	.sleb128	29
	.4byte		.L5631-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5631:
.L5629:
	.sleb128	24
	.4byte		.L5630
.L5628:
	.sleb128	22
	.byte		"mdlInitSystemMatricesFcn"
	.byte		0
	.4byte		.L5629
.L5634:
	.sleb128	29
	.4byte		.L5635-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5635:
.L5633:
	.sleb128	24
	.4byte		.L5634
.L5632:
	.sleb128	22
	.byte		"mdlJacobianIrJcFcn"
	.byte		0
	.4byte		.L5633
.L5639:
	.sleb128	29
	.4byte		.L5640-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
.L5641:
	.sleb128	22
	.byte		"SymbDimsId"
	.byte		0
	.4byte		.L4491
	.sleb128	30
	.4byte		.L5641
	.sleb128	0
.L5640:
.L5638:
	.sleb128	24
	.4byte		.L5639
.L5637:
	.sleb128	22
	.byte		"mdlSetInputPortSymbolicDimensionsFcn"
	.byte		0
	.4byte		.L5638
.L5644:
	.sleb128	29
	.4byte		.L5645-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	30
	.4byte		.L5641
	.sleb128	0
.L5645:
.L5643:
	.sleb128	24
	.4byte		.L5644
.L5642:
	.sleb128	22
	.byte		"mdlSetOutputPortSymbolicDimensionsFcn"
	.byte		0
	.4byte		.L5643
.L5648:
	.sleb128	29
	.4byte		.L5649-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5649:
.L5647:
	.sleb128	24
	.4byte		.L5648
.L5646:
	.sleb128	22
	.byte		"mdlSetupRuntimeResourcesFcn"
	.byte		0
	.4byte		.L5647
.L5652:
	.sleb128	29
	.4byte		.L5653-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5653:
.L5651:
	.sleb128	24
	.4byte		.L5652
.L5650:
	.sleb128	22
	.byte		"mdlCleanupRuntimeResourcesFcn"
	.byte		0
	.4byte		.L5651
.L5656:
	.sleb128	29
	.4byte		.L5657-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4359
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L5657:
.L5655:
	.sleb128	24
	.4byte		.L5656
.L5654:
	.sleb128	22
	.byte		"mdlDataTransferReadFcn"
	.byte		0
	.4byte		.L5655
.L5660:
	.sleb128	29
	.4byte		.L5661-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4359
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L5661:
.L5659:
	.sleb128	24
	.4byte		.L5660
.L5658:
	.sleb128	22
	.byte		"mdlDataTransferWriteFcn"
	.byte		0
	.4byte		.L5659
.L5664:
	.sleb128	29
	.4byte		.L5665-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4359
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L5665:
.L5663:
	.sleb128	24
	.4byte		.L5664
.L5662:
	.sleb128	22
	.byte		"mdlDataTransferInitBuffersFcn"
	.byte		0
	.4byte		.L5663
.L5666:
	.sleb128	26
	.4byte		.L5667-.L2
	.4byte		.L4493
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5667:
.L5671:
	.sleb128	29
	.4byte		.L5672-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5672:
.L5670:
	.sleb128	24
	.4byte		.L5671
.L5669:
	.sleb128	22
	.byte		"mdlInitializeSizesFcn"
	.byte		0
	.4byte		.L5670
.L5675:
	.sleb128	31
	.4byte		.L5676-.L2
	.4byte		.L4491
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L5676:
.L5674:
	.sleb128	24
	.4byte		.L5675
.L5673:
	.sleb128	22
	.byte		"mdlGetInputPortWidthLevel1Fcn"
	.byte		0
	.4byte		.L5674
.L5679:
	.sleb128	31
	.4byte		.L5680-.L2
	.4byte		.L4491
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L5680:
.L5678:
	.sleb128	24
	.4byte		.L5679
.L5677:
	.sleb128	22
	.byte		"mdlGetOutputPortWidthLevel1Fcn"
	.byte		0
	.4byte		.L5678
.L5685:
	.sleb128	29
	.4byte		.L5686-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
.L5687:
	.sleb128	22
	.byte		"DTypeId"
	.byte		0
	.4byte		.L4491
	.sleb128	30
	.4byte		.L5687
	.sleb128	0
.L5686:
.L5684:
	.sleb128	24
	.4byte		.L5685
.L5683:
	.sleb128	22
	.byte		"mdlSetInputPortDataTypeFcn"
	.byte		0
	.4byte		.L5684
.L5690:
	.sleb128	29
	.4byte		.L5691-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	30
	.4byte		.L5687
	.sleb128	0
.L5691:
.L5689:
	.sleb128	24
	.4byte		.L5690
.L5688:
	.sleb128	22
	.byte		"mdlSetOutputPortDataTypeFcn"
	.byte		0
	.4byte		.L5689
.L5694:
	.sleb128	29
	.4byte		.L5695-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5695:
.L5693:
	.sleb128	24
	.4byte		.L5694
.L5692:
	.sleb128	22
	.byte		"mdlInitializeSampleTimesFcn"
	.byte		0
	.4byte		.L5693
.L5698:
	.sleb128	29
	.4byte		.L5699-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4492
	.sleb128	30
	.4byte		.L4488
	.sleb128	30
	.4byte		.L4488
	.sleb128	0
.L5699:
.L5697:
	.sleb128	24
	.4byte		.L5698
.L5696:
	.sleb128	22
	.byte		"mdlSetInputPortSampleTimeFcn"
	.byte		0
	.4byte		.L5697
.L5702:
	.sleb128	29
	.4byte		.L5703-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4492
	.sleb128	30
	.4byte		.L4488
	.sleb128	30
	.4byte		.L4488
	.sleb128	0
.L5703:
.L5701:
	.sleb128	24
	.4byte		.L5702
.L5700:
	.sleb128	22
	.byte		"mdlSetOutputPortSampleTimeFcn"
	.byte		0
	.4byte		.L5701
.L5706:
	.sleb128	29
	.4byte		.L5707-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5707:
.L5705:
	.sleb128	24
	.4byte		.L5706
.L5704:
	.sleb128	22
	.byte		"mdlSetWorkWidthsFcn"
	.byte		0
	.4byte		.L5705
.L5710:
	.sleb128	29
	.4byte		.L5711-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5711:
.L5709:
	.sleb128	24
	.4byte		.L5710
.L5708:
	.sleb128	22
	.byte		"mdlRTWFcn"
	.byte		0
	.4byte		.L5709
.L5715:
	.sleb128	29
	.4byte		.L5716-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5716:
.L5714:
	.sleb128	24
	.4byte		.L5715
.L5713:
	.sleb128	22
	.byte		"mdlStartFcn"
	.byte		0
	.4byte		.L5714
.L5719:
	.sleb128	29
	.4byte		.L5720-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5720:
.L5718:
	.sleb128	24
	.4byte		.L5719
.L5717:
	.sleb128	22
	.byte		"mdlCheckParametersFcn"
	.byte		0
	.4byte		.L5718
.L5723:
	.sleb128	29
	.4byte		.L5724-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5724:
.L5722:
	.sleb128	24
	.4byte		.L5723
.L5721:
	.sleb128	22
	.byte		"mdlProcessParametersFcn"
	.byte		0
	.4byte		.L5722
.L5727:
	.sleb128	29
	.4byte		.L5728-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5728:
.L5726:
	.sleb128	24
	.4byte		.L5727
.L5725:
	.sleb128	22
	.byte		"mdlGetTimeOfNextVarHitFcn"
	.byte		0
	.4byte		.L5726
.L5734:
	.sleb128	29
	.4byte		.L5735-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5735:
.L5733:
	.sleb128	24
	.4byte		.L5734
.L5732:
	.sleb128	22
	.byte		"mdlZeroCrossingsFcn"
	.byte		0
	.4byte		.L5733
.L5738:
	.sleb128	29
	.4byte		.L5739-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5739:
.L5737:
	.sleb128	24
	.4byte		.L5738
.L5736:
	.sleb128	22
	.byte		"mdlTerminateFcn"
	.byte		0
	.4byte		.L5737
.L5745:
	.sleb128	29
	.4byte		.L5746-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
.L5747:
	.sleb128	22
	.byte		"CSignal_T"
	.byte		0
	.4byte		.L4491
	.sleb128	30
	.4byte		.L5747
	.sleb128	0
.L5746:
.L5744:
	.sleb128	24
	.4byte		.L5745
.L5743:
	.sleb128	22
	.byte		"mdlSetOutputPortComplexSignalFcn"
	.byte		0
	.4byte		.L5744
.L5750:
	.sleb128	29
	.4byte		.L5751-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5751:
.L5749:
	.sleb128	24
	.4byte		.L5750
.L5748:
	.sleb128	22
	.byte		"RTWGeneratedDisableFcn"
	.byte		0
	.4byte		.L5749
.L5755:
	.sleb128	29
	.4byte		.L5756-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	30
	.4byte		.L5747
	.sleb128	0
.L5756:
.L5754:
	.sleb128	24
	.4byte		.L5755
.L5753:
	.sleb128	22
	.byte		"mdlSetInputPortComplexSignalFcn"
	.byte		0
	.4byte		.L5754
.L5759:
	.sleb128	29
	.4byte		.L5760-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5760:
.L5758:
	.sleb128	24
	.4byte		.L5759
.L5757:
	.sleb128	22
	.byte		"RTWGeneratedEnableFcn"
	.byte		0
	.4byte		.L5758
.L5764:
	.sleb128	29
	.4byte		.L5765-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5765:
.L5763:
	.sleb128	24
	.4byte		.L5764
.L5762:
	.sleb128	22
	.byte		"mdlDerivativesFcn"
	.byte		0
	.4byte		.L5763
.L5768:
	.sleb128	29
	.4byte		.L5769-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5428
	.sleb128	30
	.4byte		.L5527
	.sleb128	30
	.4byte		.L5527
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L5769:
.L5767:
	.sleb128	24
	.4byte		.L5768
.L5766:
	.sleb128	22
	.byte		"mdlDerivativesLevel1Fcn"
	.byte		0
	.4byte		.L5767
.L5773:
	.sleb128	29
	.4byte		.L5774-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L5774:
.L5772:
	.sleb128	24
	.4byte		.L5773
.L5771:
	.sleb128	22
	.byte		"mdlUpdateFcn"
	.byte		0
	.4byte		.L5772
.L5777:
	.sleb128	29
	.4byte		.L5778-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5428
	.sleb128	30
	.4byte		.L5527
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L5778:
.L5776:
	.sleb128	24
	.4byte		.L5777
.L5775:
	.sleb128	22
	.byte		"mdlUpdateLevel1Fcn"
	.byte		0
	.4byte		.L5776
.L5782:
	.sleb128	29
	.4byte		.L5783-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L5783:
.L5781:
	.sleb128	24
	.4byte		.L5782
.L5780:
	.sleb128	22
	.byte		"mdlOutputsFcn"
	.byte		0
	.4byte		.L5781
.L5786:
	.sleb128	29
	.4byte		.L5787-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5428
	.sleb128	30
	.4byte		.L5527
	.sleb128	30
	.4byte		.L5527
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L5787:
.L5785:
	.sleb128	24
	.4byte		.L5786
.L5784:
	.sleb128	22
	.byte		"mdlOutputsLevel1Fcn"
	.byte		0
	.4byte		.L5785
.L5791:
	.sleb128	29
	.4byte		.L5792-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5792:
.L5790:
	.sleb128	24
	.4byte		.L5791
.L5789:
	.sleb128	22
	.byte		"mdlInitializeConditionsFcn"
	.byte		0
	.4byte		.L5790
.L5795:
	.sleb128	29
	.4byte		.L5796-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5428
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5796:
.L5794:
	.sleb128	24
	.4byte		.L5795
.L5793:
	.sleb128	22
	.byte		"mdlInitializeConditionsLevel1Fcn"
	.byte		0
	.4byte		.L5794
.L5800:
	.sleb128	29
	.4byte		.L5801-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L5801:
.L5799:
	.sleb128	24
	.4byte		.L5800
.L5798:
	.sleb128	22
	.byte		"mdlSetOutputPortWidthFcn"
	.byte		0
	.4byte		.L5799
.L5804:
	.sleb128	29
	.4byte		.L5805-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
.L5808:
	.sleb128	22
	.byte		"DimsInfo_T"
	.byte		0
	.4byte		.L5809
.L5807:
	.sleb128	23
	.4byte		.L5808
.L5806:
	.sleb128	24
	.4byte		.L5807
	.sleb128	30
	.4byte		.L5806
	.sleb128	0
.L5805:
.L5803:
	.sleb128	24
	.4byte		.L5804
.L5802:
	.sleb128	22
	.byte		"mdlSetOutputPortDimensionsFcn"
	.byte		0
	.4byte		.L5803
.L5813:
	.sleb128	29
	.4byte		.L5814-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L5814:
.L5812:
	.sleb128	24
	.4byte		.L5813
.L5811:
	.sleb128	22
	.byte		"mdlSetInputPortWidthFcn"
	.byte		0
	.4byte		.L5812
.L5817:
	.sleb128	29
	.4byte		.L5818-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	30
	.4byte		.L5806
	.sleb128	0
.L5818:
.L5816:
	.sleb128	24
	.4byte		.L5817
.L5815:
	.sleb128	22
	.byte		"mdlSetInputPortDimensionsFcn"
	.byte		0
	.4byte		.L5816
.L5822:
	.sleb128	29
	.4byte		.L5823-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	0
.L5823:
.L5821:
	.sleb128	24
	.4byte		.L5822
.L5820:
	.sleb128	22
	.byte		"mdlConstraintsFcn"
	.byte		0
	.4byte		.L5821
.L5825:
	.sleb128	22
	.byte		"ssMatrixType"
	.byte		0
	.4byte		.L5826
.L5827:
	.sleb128	22
	.byte		"ssSparseMatrixInfo"
	.byte		0
	.4byte		.L5828
.L5833:
	.sleb128	31
	.4byte		.L5834-.L2
	.4byte		.L5687
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L5409
	.sleb128	0
.L5834:
.L5832:
	.sleb128	24
	.4byte		.L5833
.L5831:
	.sleb128	22
	.byte		"OldRegisterDataType"
	.byte		0
	.4byte		.L5832
.L5837:
	.sleb128	31
	.4byte		.L5838-.L2
	.4byte		.L4491
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L5687
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L5838:
.L5836:
	.sleb128	24
	.4byte		.L5837
.L5835:
	.sleb128	22
	.byte		"SetDataTypeSize"
	.byte		0
	.4byte		.L5836
.L5841:
	.sleb128	31
	.4byte		.L5842-.L2
	.4byte		.L4491
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L5687
	.sleb128	0
.L5842:
.L5840:
	.sleb128	24
	.4byte		.L5841
.L5839:
	.sleb128	22
	.byte		"GetDataTypeSize"
	.byte		0
	.4byte		.L5840
.L5845:
	.sleb128	31
	.4byte		.L5846-.L2
	.4byte		.L4491
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L5687
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L5846:
.L5844:
	.sleb128	24
	.4byte		.L5845
.L5843:
	.sleb128	22
	.byte		"SetDataTypeZero"
	.byte		0
	.4byte		.L5844
.L5849:
	.sleb128	31
	.4byte		.L5850-.L2
	.4byte		.L5424
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L5687
	.sleb128	0
.L5850:
.L5848:
	.sleb128	24
	.4byte		.L5849
.L5847:
	.sleb128	22
	.byte		"GetDataTypeZero"
	.byte		0
	.4byte		.L5848
.L5853:
	.sleb128	31
	.4byte		.L5854-.L2
	.4byte		.L5409
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L5687
	.sleb128	0
.L5854:
.L5852:
	.sleb128	24
	.4byte		.L5853
.L5851:
	.sleb128	22
	.byte		"GetDataTypeName"
	.byte		0
	.4byte		.L5852
.L5857:
	.sleb128	31
	.4byte		.L5858-.L2
	.4byte		.L5687
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L5409
	.sleb128	0
.L5858:
.L5856:
	.sleb128	24
	.4byte		.L5857
.L5855:
	.sleb128	22
	.byte		"GetDataTypeId"
	.byte		0
	.4byte		.L5856
.L5861:
	.sleb128	31
	.4byte		.L5862-.L2
	.4byte		.L4491
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L5862:
.L5860:
	.sleb128	24
	.4byte		.L5861
.L5859:
	.sleb128	22
	.byte		"SetNumDWork"
	.byte		0
	.4byte		.L5860
.L5866:
	.sleb128	31
	.4byte		.L5867-.L2
	.4byte		.L4491
	.byte		0x1
.L5869:
	.sleb128	23
	.4byte		.L5490
.L5868:
	.sleb128	24
	.4byte		.L5869
	.sleb128	30
	.4byte		.L5868
	.sleb128	30
	.4byte		.L5577
.L5872:
	.sleb128	22
	.byte		"mxArray"
	.byte		0
	.4byte		.L4488
.L5871:
	.sleb128	24
	.4byte		.L5872
.L5870:
	.sleb128	24
	.4byte		.L5871
	.sleb128	30
	.4byte		.L5870
	.sleb128	0
.L5867:
.L5865:
	.sleb128	24
	.4byte		.L5866
.L5864:
	.sleb128	22
	.byte		"_ResolveVarFcn"
	.byte		0
	.4byte		.L5865
.L5874:
	.sleb128	24
	.4byte		.L4493
.L5880:
	.sleb128	22
	.byte		"ssFcnCallErr_T"
	.byte		0
	.4byte		.L4491
.L5878:
	.sleb128	31
	.4byte		.L5879-.L2
	.4byte		.L5880
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L4491
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L5879:
.L5877:
	.sleb128	24
	.4byte		.L5878
.L5876:
	.sleb128	22
	.byte		"SysOutputFcn"
	.byte		0
	.4byte		.L5877
.L5875:
	.sleb128	24
	.4byte		.L5876
.L5882:
	.sleb128	22
	.byte		"uint_T"
	.byte		0
	.4byte		.L5522
.L5885:
	.sleb128	22
	.byte		"ssNonContDerivSigInfo"
	.byte		0
	.4byte		.L5886
.L5884:
	.sleb128	24
	.4byte		.L5885
.L5888:
	.sleb128	22
	.byte		"rtTimingBridge"
	.byte		0
	.4byte		.L5889
.L5887:
	.sleb128	24
	.4byte		.L5888
.L5891:
	.sleb128	22
	.byte		"RTWLogInfo"
	.byte		0
	.4byte		.L5892
.L5890:
	.sleb128	24
	.4byte		.L5891
.L5893:
	.sleb128	24
	.4byte		.L5421
.L5894:
	.sleb128	24
	.4byte		.L5411
.L5897:
	.sleb128	31
	.4byte		.L5898-.L2
	.4byte		.L4491
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
.L5899:
	.sleb128	22
	.byte		"_slexecBlkRTSType"
	.byte		0
	.4byte		.L5900
	.sleb128	30
	.4byte		.L5899
	.sleb128	30
	.4byte		.L4491
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L5898:
.L5896:
	.sleb128	24
	.4byte		.L5897
.L5895:
	.sleb128	22
	.byte		"_slexecBlkRTSGateway"
	.byte		0
	.4byte		.L5896
.L5901:
	.sleb128	24
	.4byte		.L4492
.L5902:
	.sleb128	26
	.4byte		.L5903-.L2
	.4byte		.L5411
	.sleb128	27
	.uleb128	31
	.sleb128	0
.L5903:
.L5906:
	.sleb128	31
	.4byte		.L5907-.L2
	.4byte		.L4491
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	30
	.4byte		.L5806
	.sleb128	0
.L5907:
.L5905:
	.sleb128	24
	.4byte		.L5906
.L5904:
	.sleb128	22
	.byte		"_ssSetInputPortDimensionInfoFcn"
	.byte		0
	.4byte		.L5905
.L5910:
	.sleb128	31
	.4byte		.L5911-.L2
	.4byte		.L4491
	.byte		0x1
	.sleb128	30
	.4byte		.L5489
	.sleb128	30
	.4byte		.L4491
	.sleb128	30
	.4byte		.L5806
	.sleb128	0
.L5911:
.L5909:
	.sleb128	24
	.4byte		.L5910
.L5908:
	.sleb128	22
	.byte		"_ssSetOutputPortDimensionInfoFcn"
	.byte		0
	.4byte		.L5909
.L5912:
	.sleb128	22
	.byte		"SolverMode"
	.byte		0
	.4byte		.L5913
.L5914:
	.sleb128	22
	.byte		"RTWGenMode"
	.byte		0
	.4byte		.L5915
.L5916:
	.sleb128	26
	.4byte		.L5917-.L2
	.4byte		.L4491
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L5917:
.L5918:
	.sleb128	26
	.4byte		.L5919-.L2
	.4byte		.L5428
	.sleb128	27
	.uleb128	0
	.sleb128	0
.L5919:
.L5922:
	.sleb128	24
	.4byte		.L4475
.L5924:
	.sleb128	24
	.4byte		.L5925
.L5929:
	.sleb128	24
	.4byte		.L5930
.L5931:
	.sleb128	24
	.4byte		.L5932
.L5933:
	.sleb128	26
	.4byte		.L5934-.L2
	.4byte		.L4493
	.sleb128	27
	.uleb128	12
	.sleb128	0
.L5934:
.L5935:
	.sleb128	26
	.4byte		.L5936-.L2
	.4byte		.L4491
	.sleb128	27
	.uleb128	14
	.sleb128	0
.L5936:
.L5939:
	.sleb128	22
	.byte		"size_t"
	.byte		0
	.4byte		.L5522
.L5938:
	.sleb128	24
	.4byte		.L5939
.L5940:
	.sleb128	26
	.4byte		.L5941-.L2
	.4byte		.L4493
	.sleb128	27
	.uleb128	9
	.sleb128	0
.L5941:
.L5943:
	.sleb128	24
	.4byte		.L5944
.L5945:
	.sleb128	24
	.4byte		.L5946
.L5947:
	.sleb128	24
	.4byte		.L5948
.L5949:
	.sleb128	24
	.4byte		.L5950
.L5951:
	.sleb128	24
	.4byte		.L5952
.L5953:
	.sleb128	24
	.4byte		.L5954
.L5955:
	.sleb128	24
	.4byte		.L5956
.L5957:
	.sleb128	24
	.4byte		.L5958
.L5959:
	.sleb128	26
	.4byte		.L5960-.L2
	.4byte		.L4493
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L5960:
.L5964:
	.sleb128	22
	.byte		"SS_DimsConstraintType"
	.byte		0
	.4byte		.L5965
.L5969:
	.sleb128	22
	.byte		"UnitId"
	.byte		0
	.4byte		.L4491
.L5972:
	.sleb128	26
	.4byte		.L5973-.L2
	.4byte		.L4493
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5973:
.L5975:
	.sleb128	24
	.4byte		.L5571
.L5976:
	.sleb128	26
	.4byte		.L5977-.L2
	.4byte		.L4493
	.sleb128	27
	.uleb128	7
	.sleb128	0
.L5977:
.L5980:
	.sleb128	24
	.4byte		.L5981
.L5982:
	.sleb128	24
	.4byte		.L5983
.L5985:
	.sleb128	26
	.4byte		.L5986-.L2
	.4byte		.L4493
	.sleb128	27
	.uleb128	27
	.sleb128	0
.L5986:
.L5988:
	.sleb128	24
	.4byte		.L5989
.L5991:
	.sleb128	24
	.4byte		.L5882
.L5995:
	.sleb128	22
	.byte		"ssParamRec"
	.byte		0
	.4byte		.L5996
.L5994:
	.sleb128	24
	.4byte		.L5995
.L5993:
	.sleb128	24
	.4byte		.L5994
.L6001:
	.sleb128	31
	.4byte		.L6002-.L2
	.4byte		.L4491
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L6002:
.L6000:
	.sleb128	24
	.4byte		.L6001
.L5999:
	.sleb128	22
	.byte		"_ssRegNumInputPortsFcn"
	.byte		0
	.4byte		.L6000
.L6005:
	.sleb128	31
	.4byte		.L6006-.L2
	.4byte		.L4491
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L6006:
.L6004:
	.sleb128	24
	.4byte		.L6005
.L6003:
	.sleb128	22
	.byte		"_ssRegNumOutputPortsFcn"
	.byte		0
	.4byte		.L6004
.L6007:
	.sleb128	24
	.4byte		.L6008
.L6009:
	.sleb128	24
	.4byte		.L6010
.L6021:
	.sleb128	23
	.4byte		.L5424
.L6020:
	.sleb128	24
	.4byte		.L6021
.L6019:
	.sleb128	22
	.byte		"InputPtrsType"
	.byte		0
	.4byte		.L6020
.L6024:
	.sleb128	26
	.4byte		.L6025-.L2
	.4byte		.L4491
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L6025:
.L6026:
	.sleb128	26
	.4byte		.L6027-.L2
	.4byte		.L4493
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6027:
.L6032:
	.sleb128	26
	.4byte		.L6033-.L2
	.4byte		.L4359
	.sleb128	27
	.uleb128	3
	.sleb128	0
.L6033:
.L6035:
	.sleb128	26
	.4byte		.L6036-.L2
	.4byte		.L4492
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L6036:
.L6046:
	.sleb128	22
	.byte		"TransformedFlag"
	.byte		0
	.4byte		.L6047
.L6054:
	.sleb128	22
	.byte		"ssDWorkUsageType"
	.byte		0
	.4byte		.L6055
.L6058:
	.sleb128	24
	.4byte		.L5809
.L6061:
	.sleb128	24
	.4byte		.L5436
.L6062:
	.sleb128	24
	.4byte		.L5428
.L6063:
	.sleb128	24
	.4byte		.L5438
.L6064:
	.sleb128	24
	.4byte		.L4495
.L6065:
	.sleb128	24
	.4byte		.L5409
.L6067:
	.sleb128	22
	.byte		"RTWRTModelMethodsInfo"
	.byte		0
	.4byte		.L6068
.L6066:
	.sleb128	24
	.4byte		.L6067
.L6069:
	.sleb128	22
	.byte		"slJmBdControl"
	.byte		0
	.4byte		.L6070
.L6076:
	.sleb128	29
	.4byte		.L6077-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L6077:
.L6075:
	.sleb128	24
	.4byte		.L6076
.L6074:
	.sleb128	22
	.byte		"rtMdlInitializeSizesFcn"
	.byte		0
	.4byte		.L6075
.L6080:
	.sleb128	29
	.4byte		.L6081-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L6081:
.L6079:
	.sleb128	24
	.4byte		.L6080
.L6078:
	.sleb128	22
	.byte		"rtMdlInitializeSampleTimesFcn"
	.byte		0
	.4byte		.L6079
.L6084:
	.sleb128	29
	.4byte		.L6085-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L6085:
.L6083:
	.sleb128	24
	.4byte		.L6084
.L6082:
	.sleb128	22
	.byte		"rtMdlStartFcn"
	.byte		0
	.4byte		.L6083
.L6088:
	.sleb128	29
	.4byte		.L6089-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L6089:
.L6087:
	.sleb128	24
	.4byte		.L6088
.L6086:
	.sleb128	22
	.byte		"rtMdlOutputsFcn"
	.byte		0
	.4byte		.L6087
.L6092:
	.sleb128	29
	.4byte		.L6093-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L4491
	.sleb128	0
.L6093:
.L6091:
	.sleb128	24
	.4byte		.L6092
.L6090:
	.sleb128	22
	.byte		"rtMdlUpdateFcn"
	.byte		0
	.4byte		.L6091
.L6096:
	.sleb128	29
	.4byte		.L6097-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L6097:
.L6095:
	.sleb128	24
	.4byte		.L6096
.L6094:
	.sleb128	22
	.byte		"rtMdlDerivativesFcn"
	.byte		0
	.4byte		.L6095
.L6100:
	.sleb128	29
	.4byte		.L6101-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L6101:
.L6099:
	.sleb128	24
	.4byte		.L6100
.L6098:
	.sleb128	22
	.byte		"rtMdlProjectionFcn"
	.byte		0
	.4byte		.L6099
.L6104:
	.sleb128	29
	.4byte		.L6105-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L6105:
.L6103:
	.sleb128	24
	.4byte		.L6104
.L6102:
	.sleb128	22
	.byte		"rtMdlMassMatrixFcn"
	.byte		0
	.4byte		.L6103
.L6108:
	.sleb128	29
	.4byte		.L6109-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L6109:
.L6107:
	.sleb128	24
	.4byte		.L6108
.L6106:
	.sleb128	22
	.byte		"rtMdlForcingFunctionFcn"
	.byte		0
	.4byte		.L6107
.L6112:
	.sleb128	29
	.4byte		.L6113-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L6113:
.L6111:
	.sleb128	24
	.4byte		.L6112
.L6110:
	.sleb128	22
	.byte		"rtMdlTerminateFcn"
	.byte		0
	.4byte		.L6111
.L6119:
	.sleb128	24
	.4byte		.L5424
.L6127:
	.sleb128	29
	.4byte		.L6128-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L4493
	.sleb128	0
.L6128:
.L6126:
	.sleb128	24
	.4byte		.L6127
.L6130:
	.sleb128	29
	.4byte		.L6131-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L4474
	.sleb128	0
.L6131:
.L6129:
	.sleb128	24
	.4byte		.L6130
.L6135:
	.sleb128	22
	.byte		"RTWLogSignalInfo"
	.byte		0
	.4byte		.L6136
.L6134:
	.sleb128	23
	.4byte		.L6135
.L6133:
	.sleb128	24
	.4byte		.L6134
.L6137:
	.sleb128	24
	.4byte		.L6135
.L6144:
	.sleb128	23
	.4byte		.L4958
.L6143:
	.sleb128	24
	.4byte		.L6144
.L6142:
	.sleb128	23
	.4byte		.L6143
.L6141:
	.sleb128	24
	.4byte		.L6142
.L6140:
	.sleb128	22
	.byte		"LogSignalPtrsType"
	.byte		0
	.4byte		.L6141
.L6146:
	.sleb128	24
	.4byte		.L4958
.L6145:
	.sleb128	24
	.4byte		.L6146
.L6150:
	.sleb128	22
	.byte		"BuiltInDTypeId"
	.byte		0
	.4byte		.L6151
.L6149:
	.sleb128	24
	.4byte		.L6150
.L6155:
	.sleb128	29
	.4byte		.L6156-.L2
	.byte		0x1
	.sleb128	30
	.4byte		.L4493
	.sleb128	30
	.4byte		.L5424
	.sleb128	0
.L6156:
.L6154:
	.sleb128	24
	.4byte		.L6155
.L6153:
	.sleb128	22
	.byte		"RTWPreprocessingFcnPtr"
	.byte		0
	.4byte		.L6154
.L6152:
	.sleb128	24
	.4byte		.L6153
.L6161:
	.sleb128	22
	.byte		"RTWLogDataTypeConvert"
	.byte		0
	.4byte		.L6162
.L6160:
	.sleb128	24
	.4byte		.L6161
.L6164:
	.sleb128	24
	.4byte		.L5894
.L6170:
	.sleb128	24
	.4byte		.L4375
.L6171:
	.sleb128	24
	.4byte		.L5429
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L4364:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L4370:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L4373:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo6),4
	.d2locend
.L4374:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo7),5
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),5
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo10),5
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo6),5
	.d2locend
.L4376:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo6),6
	.d2locend
.L4377:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo6),7
	.d2locend
.L4380:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),11
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo14),11
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo15),11
	.d2locend
.L4382:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),8
	.d2locend
.L4384:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),9
	.d2locend
.L4386:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo5),31
	.d2locend
.L4388:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),11
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo14),11
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo15),11
	.d2locend
.L4390:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),8
	.d2locend
.L4392:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),9
	.d2locend
.L4394:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),12
	.d2locend
.L4396:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo23),31
	.d2locend
.L4398:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo15),0
	.d2locend
.L4400:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo9),30
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo31),30
	.d2locend
.L4402:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo5),28
	.d2locend
.L4404:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo9),11
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo14),11
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo15),11
	.d2locend
.L4410:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locend
.L4411:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),4
	.d2locend
.L4412:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),5
	.d2locend
.L4413:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo35),6
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),0
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),0
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),0
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),0
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),0
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),0
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),0
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo34),6
	.d2locend
.L4415:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo37),0
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),7
	.d2locend
.L4417:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo39),6
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo55),6
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo56),6
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo43),6
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo58),6
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo59),6
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo47),6
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo61),6
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo62),6
	.d2locend
.L4419:
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo56),8
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo59),7
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo62),7
	.d2locend
.L4421:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo65),6
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo41),6
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),6
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo45),6
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),6
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo49),6
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo50),6
	.d2locend
.L4427:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),3
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),3
	.d2locend
.L4428:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo78),4
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo77),4
	.d2locend
.L4429:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo77),5
	.d2locend
.L4430:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo77),6
	.d2locend
.L4431:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo77),7
	.d2locend
.L4432:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo80),8
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),30
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),8
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),30
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),8
	.d2locend
.L4434:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo80),8
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),30
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),8
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),30
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),8
	.d2locend
.L4436:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),25
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),25
	.d2locend
.L4438:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo88),8
	.d2locend
.L4440:
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),0
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),18
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),0
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),0
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),20
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo92),19
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),0
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),0
	.d2locend
.L4442:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),3
	.d2locend
.L4444:
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo78),0
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo76),0
	.d2locend
.L4446:
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),22
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),24
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),21
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),25
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),25
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo120),24
	.d2locend
.L4448:
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),0
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),24
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),0
	.d2locend
.L4450:
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo127),24
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),25
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo128),24
	.d2locend
.L4452:
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo129),12
	.d2locend
.L4454:
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo129),12
	.d2locend
.L4456:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),25
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),25
	.d2locend
.L4458:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo131),30
	.d2locend
.L4460:
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),0
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo121),0
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),23
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),20
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),20
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo141),24
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo143),23
	.d2locend
.L4462:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo93),31
	.d2locend
.L4464:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo93),30
	.d2locend
.L4466:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo93),31
	.d2locend
.L4468:
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo99),21
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo145),22
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo92),22
	.d2locend
.L4470:
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo99),20
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo145),21
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo92),21
	.d2locend
.L4472:
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),23
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo125),0
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo151),23
	.d2locend
.L4476:
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo129),29
	.d2locend
.L4478:
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo129),28
	.d2locend
.L4480:
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo129),27
	.d2locend
.L4482:
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo93),26
	.d2locend
.L4496:
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo157),5
	.d2locend
.L4510:
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo159),3
	.d2locend
.L4516:
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo161),3
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo163),3
	.d2locend
.L4520:
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo163),4
	.d2locend
.L4521:
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo163),5
	.d2locend
.L4527:
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo165),3
	.d2locend
.L4530:
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo166),4
	.d2locend
.L4534:
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo167),5
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo169),31
	.d2locend
.L4536:
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo171),3
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo173),3
	.d2locend
.L4542:
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo175),3
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo177),3
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo179),3
	.d2locend
.L4543:
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo180),4
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo176),4
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo183),4
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo185),4
	.d2locend
.L4547:
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo180),5
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo178),29
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo179),5
	.d2locend
.L4549:
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo178),3
	.d2locend
.L4551:
	.d2locreg	%offsetof(.Llo189), %offsetof(.Llo190),31
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo192),31
	.d2locend
.L4553:
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo183),30
	.d2locend
.L4555:
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo183),3
	.d2locend
.L4567:
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo195),3
	.d2locend
.L4575:
	.d2locreg	%offsetof(.Llo196), %offsetof(.Llo197),0
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo199),0
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo201),0
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo203),0
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo205),0
	.d2locreg	%offsetof(.Llo206), %offsetof(.Llo207),0
	.d2locreg	%offsetof(.Llo208), %offsetof(.Llo209),0
	.d2locreg	%offsetof(.Llo210), %offsetof(.Llo211),0
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo213),0
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo215),0
	.d2locreg	%offsetof(.Llo216), %offsetof(.Llo217),0
	.d2locreg	%offsetof(.Llo218), %offsetof(.Llo219),0
	.d2locreg	%offsetof(.Llo220), %offsetof(.Llo221),0
	.d2locreg	%offsetof(.Llo222), %offsetof(.Llo223),0
	.d2locreg	%offsetof(.Llo224), %offsetof(.Llo225),0
	.d2locreg	%offsetof(.Llo226), %offsetof(.Llo227),0
	.d2locreg	%offsetof(.Llo228), %offsetof(.Llo229),0
	.d2locreg	%offsetof(.Llo230), %offsetof(.Llo231),0
	.d2locreg	%offsetof(.Llo232), %offsetof(.Llo233),0
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo235),0
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo237),0
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo239),0
	.d2locreg	%offsetof(.Llo240), %offsetof(.Llo241),0
	.d2locreg	%offsetof(.Llo242), %offsetof(.Llo243),0
	.d2locreg	%offsetof(.Llo244), %offsetof(.Llo245),0
	.d2locreg	%offsetof(.Llo246), %offsetof(.Llo247),0
	.d2locreg	%offsetof(.Llo248), %offsetof(.Llo249),0
	.d2locreg	%offsetof(.Llo250), %offsetof(.Llo251),0
	.d2locreg	%offsetof(.Llo252), %offsetof(.Llo253),0
	.d2locreg	%offsetof(.Llo254), %offsetof(.Llo255),0
	.d2locreg	%offsetof(.Llo256), %offsetof(.Llo257),0
	.d2locreg	%offsetof(.Llo258), %offsetof(.Llo259),0
	.d2locreg	%offsetof(.Llo260), %offsetof(.Llo261),0
	.d2locreg	%offsetof(.Llo262), %offsetof(.Llo263),0
	.d2locreg	%offsetof(.Llo264), %offsetof(.Llo265),0
	.d2locreg	%offsetof(.Llo266), %offsetof(.Llo267),0
	.d2locreg	%offsetof(.Llo268), %offsetof(.Llo269),0
	.d2locreg	%offsetof(.Llo270), %offsetof(.Llo271),0
	.d2locreg	%offsetof(.Llo272), %offsetof(.Llo273),0
	.d2locreg	%offsetof(.Llo274), %offsetof(.Llo275),0
	.d2locreg	%offsetof(.Llo276), %offsetof(.Llo277),0
	.d2locreg	%offsetof(.Llo278), %offsetof(.Llo279),0
	.d2locreg	%offsetof(.Llo280), %offsetof(.Llo281),0
	.d2locreg	%offsetof(.Llo282), %offsetof(.Llo283),0
	.d2locend
.L4582:
	.d2locreg	%offsetof(.Llo284), %offsetof(.Llo285),3
	.d2locreg	%offsetof(.Llo286), %offsetof(.Llo287),3
	.d2locend
.L4583:
	.d2locreg	%offsetof(.Llo284), %offsetof(.Llo288),4
	.d2locend
.L4585:
	.d2locreg	%offsetof(.Llo285), %offsetof(.Llo289),3
	.d2locend
.L4591:
	.d2locreg	%offsetof(.Llo290), %offsetof(.Llo291),3
	.d2locreg	%offsetof(.Llo292), %offsetof(.Llo293),3
	.d2locreg	%offsetof(.Llo294), %offsetof(.Llo295),3
	.d2locend
.L4592:
	.d2locreg	%offsetof(.Llo290), %offsetof(.Llo296),4
	.d2locend
.L4594:
	.d2locend
.L4603:
	.d2locreg	%offsetof(.Llo297), %offsetof(.Llo298),0
	.d2locreg	%offsetof(.Llo299), %offsetof(.Llo300),0
	.d2locreg	%offsetof(.Llo301), %offsetof(.Llo302),0
	.d2locreg	%offsetof(.Llo303), %offsetof(.Llo304),0
	.d2locend
.L4605:
	.d2locreg	%offsetof(.Llo305), %offsetof(.Llo306),3
	.d2locreg	%offsetof(.Llo307), %offsetof(.Llo308),3
	.d2locreg	%offsetof(.Llo309), %offsetof(.Llo310),3
	.d2locreg	%offsetof(.Llo311), %offsetof(.Llo312),3
	.d2locreg	%offsetof(.Llo313), %offsetof(.Llo314),3
	.d2locreg	%offsetof(.Llo315), %offsetof(.Llo316),3
	.d2locreg	%offsetof(.Llo317), %offsetof(.Llo318),3
	.d2locreg	%offsetof(.Llo319), %offsetof(.Llo320),3
	.d2locreg	%offsetof(.Llo321), %offsetof(.Llo322),3
	.d2locreg	%offsetof(.Llo323), %offsetof(.Llo324),3
	.d2locreg	%offsetof(.Llo325), %offsetof(.Llo326),3
	.d2locreg	%offsetof(.Llo327), %offsetof(.Llo328),3
	.d2locreg	%offsetof(.Llo329), %offsetof(.Llo330),3
	.d2locreg	%offsetof(.Llo331), %offsetof(.Llo332),3
	.d2locreg	%offsetof(.Llo333), %offsetof(.Llo334),3
	.d2locreg	%offsetof(.Llo335), %offsetof(.Llo336),3
	.d2locreg	%offsetof(.Llo337), %offsetof(.Llo338),3
	.d2locend
.L4607:
	.d2locreg	%offsetof(.Llo339), %offsetof(.Llo340),3
	.d2locreg	%offsetof(.Llo341), %offsetof(.Llo342),3
	.d2locreg	%offsetof(.Llo343), %offsetof(.Llo344),3
	.d2locreg	%offsetof(.Llo345), %offsetof(.Llo346),3
	.d2locreg	%offsetof(.Llo347), %offsetof(.Llo348),3
	.d2locreg	%offsetof(.Llo349), %offsetof(.Llo350),3
	.d2locreg	%offsetof(.Llo351), %offsetof(.Llo352),3
	.d2locreg	%offsetof(.Llo353), %offsetof(.Llo354),26
	.d2locend
.L4609:
	.d2locreg	%offsetof(.Llo355), %offsetof(.Llo343),3
	.d2locreg	%offsetof(.Llo356), %offsetof(.Llo357),26
	.d2locend
.L4611:
	.d2locreg	%offsetof(.Llo358), %offsetof(.Llo359),3
	.d2locreg	%offsetof(.Llo360), %offsetof(.Llo361),3
	.d2locreg	%offsetof(.Llo362), %offsetof(.Llo363),3
	.d2locreg	%offsetof(.Llo364), %offsetof(.Llo365),3
	.d2locreg	%offsetof(.Llo366), %offsetof(.Llo367),29
	.d2locreg	%offsetof(.Llo368), %offsetof(.Llo369),29
	.d2locreg	%offsetof(.Llo370), %offsetof(.Llo371),29
	.d2locreg	%offsetof(.Llo372), %offsetof(.Llo373),31
	.d2locreg	%offsetof(.Llo374), %offsetof(.Llo375),29
	.d2locreg	%offsetof(.Llo376), %offsetof(.Llo377),3
	.d2locreg	%offsetof(.Llo378), %offsetof(.Llo379),31
	.d2locend
.L4613:
	.d2locreg	%offsetof(.Llo380), %offsetof(.Llo362),3
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo366),29
	.d2locend
.L4615:
	.d2locreg	%offsetof(.Llo382), %offsetof(.Llo383),3
	.d2locreg	%offsetof(.Llo384), %offsetof(.Llo385),3
	.d2locreg	%offsetof(.Llo386), %offsetof(.Llo387),3
	.d2locend
.L4617:
	.d2locreg	%offsetof(.Llo388), %offsetof(.Llo374),3
	.d2locreg	%offsetof(.Llo375), %offsetof(.Llo378),31
	.d2locend
.L4619:
	.d2locreg	%offsetof(.Llo389), %offsetof(.Llo390),3
	.d2locreg	%offsetof(.Llo391), %offsetof(.Llo303),3
	.d2locend
.L4622:
	.d2locreg	%offsetof(.Llo382), %offsetof(.Llo383),3
	.d2locreg	%offsetof(.Llo384), %offsetof(.Llo298),3
	.d2locreg	%offsetof(.Llo392), %offsetof(.Llo393),3
	.d2locend
.L4624:
	.d2locreg	%offsetof(.Llo394), %offsetof(.Llo395),25
	.d2locreg	%offsetof(.Llo396), %offsetof(.Llo397),26
	.d2locreg	%offsetof(.Llo398), %offsetof(.Llo399),26
	.d2locreg	%offsetof(.Llo400), %offsetof(.Llo401),25
	.d2locreg	%offsetof(.Llo402), %offsetof(.Llo403),26
	.d2locreg	%offsetof(.Llo404), %offsetof(.Llo405),6
	.d2locreg	%offsetof(.Llo406), %offsetof(.Llo407),26
	.d2locreg	%offsetof(.Llo408), %offsetof(.Llo409),6
	.d2locend
.L4626:
	.d2locreg	%offsetof(.Llo410), %offsetof(.Llo411),6
	.d2locreg	%offsetof(.Llo412), %offsetof(.Llo405),6
	.d2locreg	%offsetof(.Llo406), %offsetof(.Llo407),6
	.d2locreg	%offsetof(.Llo408), %offsetof(.Llo409),6
	.d2locreg	%offsetof(.Llo413), %offsetof(.Llo414),0
	.d2locreg	%offsetof(.Llo415), %offsetof(.Llo416),6
	.d2locreg	%offsetof(.Llo417), %offsetof(.Llo418),0
	.d2locend
.L4628:
	.d2locreg	%offsetof(.Llo419), %offsetof(.Llo420),26
	.d2locreg	%offsetof(.Llo421), %offsetof(.Llo422),25
	.d2locreg	%offsetof(.Llo423), %offsetof(.Llo348),25
	.d2locreg	%offsetof(.Llo424), %offsetof(.Llo425),25
	.d2locreg	%offsetof(.Llo394), %offsetof(.Llo395),25
	.d2locend
.L4630:
	.d2locreg	%offsetof(.Llo426), %offsetof(.Llo416),4
	.d2locreg	%offsetof(.Llo427), %offsetof(.Llo428),0
	.d2locreg	%offsetof(.Llo429), %offsetof(.Llo386),0
	.d2locreg	%offsetof(.Llo430), %offsetof(.Llo431),4
	.d2locend
.L4632:
	.d2locreg	%offsetof(.Llo432), %offsetof(.Llo433),3
	.d2locreg	%offsetof(.Llo434), %offsetof(.Llo435),31
	.d2locend
.L4634:
	.d2locreg	%offsetof(.Llo436), %offsetof(.Llo437),25
	.d2locreg	%offsetof(.Llo407), %offsetof(.Llo438),25
	.d2locend
.L4636:
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo437),24
	.d2locreg	%offsetof(.Llo407), %offsetof(.Llo438),24
	.d2locend
.L4647:
	.d2locreg	%offsetof(.Llo440), %offsetof(.Llo441),3
	.d2locreg	%offsetof(.Llo442), %offsetof(.Llo443),3
	.d2locreg	%offsetof(.Llo444), %offsetof(.Llo445),3
	.d2locreg	%offsetof(.Llo446), %offsetof(.Llo447),3
	.d2locreg	%offsetof(.Llo448), %offsetof(.Llo449),3
	.d2locreg	%offsetof(.Llo339), %offsetof(.Llo340),3
	.d2locreg	%offsetof(.Llo341), %offsetof(.Llo450),3
	.d2locreg	%offsetof(.Llo357), %offsetof(.Llo346),3
	.d2locend
.L4662:
	.d2locreg	%offsetof(.Llo451), %offsetof(.Llo425),3
	.d2locreg	%offsetof(.Llo452), %offsetof(.Llo453),3
	.d2locreg	%offsetof(.Llo454), %offsetof(.Llo455),3
	.d2locend
.L4673:
	.d2locreg	%offsetof(.Llo456), %offsetof(.Llo457),3
	.d2locreg	%offsetof(.Llo458), %offsetof(.Llo459),3
	.d2locreg	%offsetof(.Llo460), %offsetof(.Llo399),3
	.d2locreg	%offsetof(.Llo461), %offsetof(.Llo462),3
	.d2locreg	%offsetof(.Llo463), %offsetof(.Llo464),3
	.d2locend
.L4684:
	.d2locreg	%offsetof(.Llo465), %offsetof(.Llo401),3
	.d2locreg	%offsetof(.Llo466), %offsetof(.Llo467),3
	.d2locreg	%offsetof(.Llo468), %offsetof(.Llo469),3
	.d2locend
.L4695:
	.d2locreg	%offsetof(.Llo470), %offsetof(.Llo471),3
	.d2locreg	%offsetof(.Llo472), %offsetof(.Llo473),3
	.d2locreg	%offsetof(.Llo474), %offsetof(.Llo475),3
	.d2locreg	%offsetof(.Llo476), %offsetof(.Llo477),3
	.d2locreg	%offsetof(.Llo478), %offsetof(.Llo479),3
	.d2locreg	%offsetof(.Llo480), %offsetof(.Llo481),3
	.d2locreg	%offsetof(.Llo482), %offsetof(.Llo483),3
	.d2locreg	%offsetof(.Llo484), %offsetof(.Llo485),3
	.d2locreg	%offsetof(.Llo486), %offsetof(.Llo487),3
	.d2locreg	%offsetof(.Llo488), %offsetof(.Llo489),3
	.d2locreg	%offsetof(.Llo490), %offsetof(.Llo491),3
	.d2locreg	%offsetof(.Llo492), %offsetof(.Llo403),3
	.d2locreg	%offsetof(.Llo493), %offsetof(.Llo437),3
	.d2locreg	%offsetof(.Llo494), %offsetof(.Llo495),3
	.d2locreg	%offsetof(.Llo496), %offsetof(.Llo407),3
	.d2locreg	%offsetof(.Llo497), %offsetof(.Llo498),3
	.d2locreg	%offsetof(.Llo499), %offsetof(.Llo500),3
	.d2locreg	%offsetof(.Llo501), %offsetof(.Llo502),3
	.d2locreg	%offsetof(.Llo413), %offsetof(.Llo503),3
	.d2locreg	%offsetof(.Llo504), %offsetof(.Llo505),3
	.d2locend
.L4933:
	.d2locreg	%offsetof(.Llo506), %offsetof(.Llo507),3
	.d2locreg	%offsetof(.Llo508), %offsetof(.Llo509),3
	.d2locreg	%offsetof(.Llo510), %offsetof(.Llo511),3
	.d2locend
.L4944:
	.d2locreg	%offsetof(.Llo512), %offsetof(.Llo513),3
	.d2locreg	%offsetof(.Llo514), %offsetof(.Llo515),3
	.d2locreg	%offsetof(.Llo516), %offsetof(.Llo517),3
	.d2locreg	%offsetof(.Llo518), %offsetof(.Llo519),3
	.d2locreg	%offsetof(.Llo520), %offsetof(.Llo521),3
	.d2locend
.L4959:
	.d2locreg	%offsetof(.Llo519), %offsetof(.Llo522),3
	.d2locreg	%offsetof(.Llo523), %offsetof(.Llo524),3
	.d2locreg	%offsetof(.Llo525), %offsetof(.Llo526),3
	.d2locreg	%offsetof(.Llo527), %offsetof(.Llo528),3
	.d2locreg	%offsetof(.Llo529), %offsetof(.Llo530),3
	.d2locreg	%offsetof(.Llo531), %offsetof(.Llo532),3
	.d2locreg	%offsetof(.Llo533), %offsetof(.Llo534),3
	.d2locend
.L4971:
	.d2locreg	%offsetof(.Llo532), %offsetof(.Llo535),3
	.d2locreg	%offsetof(.Llo536), %offsetof(.Llo537),3
	.d2locreg	%offsetof(.Llo538), %offsetof(.Llo539),3
	.d2locreg	%offsetof(.Llo540), %offsetof(.Llo541),3
	.d2locreg	%offsetof(.Llo542), %offsetof(.Llo543),3
	.d2locend
.L4983:
	.d2locreg	%offsetof(.Llo541), %offsetof(.Llo544),3
	.d2locreg	%offsetof(.Llo545), %offsetof(.Llo546),3
	.d2locreg	%offsetof(.Llo547), %offsetof(.Llo548),3
	.d2locend
.L5240:
	.d2locreg	%offsetof(.Llo549), %offsetof(.Llo550),3
	.d2locend
.L5246:
	.d2locreg	%offsetof(.Llo551), %offsetof(.Llo552),3
	.d2locend
.L5281:
	.d2locreg	%offsetof(.Llo553), %offsetof(.Llo554),4
	.d2locend
.L5283:
	.d2locreg	%offsetof(.Llo553), %offsetof(.Llo554),4
	.d2locreg	%offsetof(.Llo555), %offsetof(.Llo556),4
	.d2locreg	%offsetof(.Llo557), %offsetof(.Llo558),4
	.d2locend
.L5307:
	.d2locreg	%offsetof(.Llo559), %offsetof(.Llo560),3
	.d2locreg	%offsetof(.Llo561), %offsetof(.Llo562),3
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
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 96
	.wrcm.end
	.wrcm.nelem "ATV_update2"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "ATV_output2"
	.wrcm.nstrlist "calls", "pkn_get_max_task_duration","pkn_get_task_duration","psc_get_cpu_loading","psc_get_max_cpu_loading","psc_get_used_stack_size"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "ATV_update1"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "ATV_output1"
	.wrcm.nstrlist "calls", "ATV_Chart","pcx_receive","pcx_transmit","pcx_vdb_pack_msg","pcx_vdb_unpack_msg"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 320
	.wrcm.end
	.wrcm.nelem "ATV_update0"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "ATV_output0"
	.wrcm.nlist "calls"
	.wrcm.str "ATV_DBWREG_BRAKEFORWARD"
	.wrcm.str "ATV_DBWREVERSE"
	.wrcm.str "ATV_KEY_ON"
	.wrcm.str "ATV_Off"
	.wrcm.str "ATV_On"
	.wrcm.str "_d_dtof"
	.wrcm.str "_d_dtou"
	.wrcm.str "_f_ftod"
	.wrcm.str "floor"
	.wrcm.str "fmod"
	.wrcm.str "pax_adc_input"
	.wrcm.str "pcx_transmit"
	.wrcm.str "pcx_vdb_pack_msg"
	.wrcm.str "pdx_digital_input"
	.wrcm.str "pdx_digital_output"
	.wrcm.str "pdx_pwm_output"
	.wrcm.str "put_debounce_by_time"
	.wrcm.str "put_dutycycle_processing"
	.wrcm.str "put_state_processing"
	.wrcm.str "rate_monotonic_scheduler"
	.wrcm.str "rtIsInf"
	.wrcm.str "rtIsNaN"
	.wrcm.end
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 304
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
	.wrcm.nelem "ATV_DBWREG_BRAKEFORWARD"
	.wrcm.nstrlist "calls", "MultiWordAdd","_d_dtoi","_d_itod","_f_ftod","floor","fmod","sMultiWordMul","sMultiWordShr"
	.wrcm.nint32 "frameSize", 80
	.wrcm.end
	.wrcm.nelem "ATV_DBWREVERSE"
	.wrcm.nstrlist "calls", "_d_dtoi","_d_itod","fmod"
	.wrcm.nint32 "frameSize", 32
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
	.wrcm.nelem "sMultiWordMul"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "MultiWordAdd"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "sMultiWordShr"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "MultiWord2uLong"
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
