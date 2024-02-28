#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 0		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1
	.file		"rt_nonfinite.c"
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
# void rt_InitInfAndNaN(size_t realSize)
# {
	.align		2
	.section	.text_vle
	.d2file		"rt_nonfinite.c"
        .d2line         39
#$$ld
.L346:

#$$bf	rt_InitInfAndNaN,interprocedural,rasave,nostackparams
	.globl		rt_InitInfAndNaN
	.d2_cfa_start __cie
rt_InitInfAndNaN:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#   (void) (realSize);
#   rtNaN = rtGetNaN();
	.d2line		41
	bl		rtGetNaN
	stw		r3,rtNaN@sdarx(r0)
#   rtNaNF = rtGetNaNF();
	.d2line		42
	bl		rtGetNaNF
	stw		r3,rtNaNF@sdarx(r0)
#   rtInf = rtGetInf();
	.d2line		43
	bl		rtGetInf
	stw		r3,rtInf@sdarx(r0)
#   rtInfF = rtGetInfF();
	.d2line		44
	bl		rtGetInfF
	stw		r3,rtInfF@sdarx(r0)
#   rtMinusInf = rtGetMinusInf();
	.d2line		45
	bl		rtGetMinusInf
	stw		r3,rtMinusInf@sdarx(r0)
#   rtMinusInfF = rtGetMinusInfF();
	.d2line		46
	bl		rtGetMinusInfF
	stw		r3,rtMinusInfF@sdarx(r0)
# }
	.d2line		47
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
.L347:
	.type		rt_InitInfAndNaN,@function
	.size		rt_InitInfAndNaN,.-rt_InitInfAndNaN
# Number of nodes = 24

# Allocations for rt_InitInfAndNaN
#	not allocated	realSize
# boolean_T rtIsInf(real_T value)
# {
	.align		2
	.section	.text_vle
        .d2line         51
#$$ld
.L354:

#$$bf	rtIsInf,interprocedural,nostackparams

# Regs written: r0,r3,cr1,spefscr
	.globl		rtIsInf
	.d2_cfa_start __cie
rtIsInf:
	.d2line		0
	.d2prologue_end
#   return (boolean_T)((value==rtInf || value==rtMinusInf) ? 1U : 0U);
	.d2line		52
.Llo1:
	lwz		r0,rtInf@sdarx(r0)
	efscmpeq		1,r3,r0		# value=r3
	bc		1,5,.L335		# eq
	lwz		r0,rtMinusInf@sdarx(r0)
	efscmpeq		1,r3,r0		# value=r3
	bc		0,5,.L299		# ne
.L335:
	diab.li		r3,1		# value=r3
	.d2line		53
.Llo2:
	blr
.L299:
	.d2line		52
.Llo3:
	diab.li		r3,0		# value=r3
.L300:
# }
	.d2line		53
	.d2epilogue_begin
.Llo4:
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L355:
	.type		rtIsInf,@function
	.size		rtIsInf,.-rtIsInf
# Number of nodes = 15

# Allocations for rtIsInf
#	?a4		value
#	?a5		$$1
# boolean_T rtIsInfF(real32_T value)
# {
	.align		2
	.section	.text_vle
        .d2line         57
#$$ld
.L364:

#$$bf	rtIsInfF,interprocedural,nostackparams

# Regs written: r0,r3,cr1,spefscr
	.globl		rtIsInfF
	.d2_cfa_start __cie
rtIsInfF:
	.d2line		0
	.d2prologue_end
#   return (boolean_T)(((value)==rtInfF || (value)==rtMinusInfF) ? 1U : 0U);
	.d2line		58
.Llo5:
	lwz		r0,rtInfF@sdarx(r0)
	efscmpeq		1,r3,r0		# value=r3
	bc		1,5,.L339		# eq
	lwz		r0,rtMinusInfF@sdarx(r0)
	efscmpeq		1,r3,r0		# value=r3
	bc		0,5,.L306		# ne
.L339:
	diab.li		r3,1		# value=r3
	.d2line		59
.Llo6:
	blr
.L306:
	.d2line		58
.Llo7:
	diab.li		r3,0		# value=r3
.L307:
# }
	.d2line		59
	.d2epilogue_begin
.Llo8:
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L365:
	.type		rtIsInfF,@function
	.size		rtIsInfF,.-rtIsInfF
# Number of nodes = 15

# Allocations for rtIsInfF
#	?a4		value
#	?a5		$$2
# boolean_T rtIsNaNF(real32_T value)
# {
	.align		2
	.section	.text_vle
        .d2line         85
#$$ld
.L371:

#$$bf	rtIsNaNF,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0
	.globl		rtIsNaNF
	.d2_cfa_start __cie
rtIsNaNF:
.Llo9:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	stw		r3,8(r1)		# value=r3
	.d2prologue_end
#   IEEESingle tmp;
#   tmp.wordL.wordLreal = value;
#   return (boolean_T)( (tmp.wordL.wordLuint & 0x7F800000) == 0x7F800000 &&
	.d2line		88
	e_lis		r0,32640
	.d2line		87
	rlwinm		r4,r3,0,1,8		# value=r3
	se_cmpl		r4,r0
	bc		0,2,.L343	# ne
#                      (tmp.wordL.wordLuint & 0x007FFFFF) != 0 );
	.d2line		89
	rlwinm		r3,r3,0,9,31		# value=r3 value=r3
	se_cmpi		r3,0		# value=r3
	bc		0,2,.L323	# ne
.L343:
	.d2line		88
	diab.li		r3,0		# value=r3
.Llo10:
	b		.L324
.L323:
	diab.li		r3,1		# value=r3
.L324:
# }
	.d2line		90
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L372:
	.type		rtIsNaNF,@function
	.size		rtIsNaNF,.-rtIsNaNF
# Number of nodes = 29

# Allocations for rtIsNaNF
#	?a4		value
#	?a5		$$5
#	?a6		$$4
#	SP,8		tmp
# boolean_T rtIsNaN(real_T value)
# {
	.align		2
	.section	.text_vle
        .d2line         63
#$$ld
.L380:

#$$bf	rtIsNaN,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.globl		rtIsNaN
	.d2_cfa_start __cie
rtIsNaN:
.Llo11:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#   boolean_T result = (boolean_T) 0;
#   size_t bitsPerReal = sizeof(real_T) * (NumBitsPerChar);
#   if (bitsPerReal == 32U) {
#     result = rtIsNaNF((real32_T)value);
	.d2line		67
	bl		rtIsNaNF
	.section	.text_vle
.L386:
	.section	.text_vle
.L387:
#   } else {
#     union {
#       BigEndianIEEEDouble bitVal;
#       real_T fltVal;
#     } tmpVal;
# 
#     tmpVal.fltVal = value;
#     result = (boolean_T)((tmpVal.bitVal.words.wordH & 0x7FF00000) == 0x7FF00000 &&
#                          ( (tmpVal.bitVal.words.wordH & 0x000FFFFF) != 0 ||
#                           (tmpVal.bitVal.words.wordL != 0) ));
#   }
# 
#   return result;
	.d2line		80
.Llo12:
	rlwinm		r3,r3,0,24,31		# result=r3 result=r3
# }
	.d2line		81
	.d2epilogue_begin
.Llo13:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L381:
	.type		rtIsNaN,@function
	.size		rtIsNaN,.-rtIsNaN
# Number of nodes = 52

# Allocations for rtIsNaN
#	?a4		value
#	not allocated	$$3
#	?a5		result
#	not allocated	bitsPerReal
#	not allocated	tmpVal

# Allocations for module
	.sbss
	.0byte		.L394
	.sbss
	.type		rtInf,@object
	.size		rtInf,4
	.align		2
	.globl		rtInf
rtInf:
	.space		4
	.sbss
	.type		rtMinusInf,@object
	.size		rtMinusInf,4
	.align		2
	.globl		rtMinusInf
rtMinusInf:
	.space		4
	.sbss
	.type		rtNaN,@object
	.size		rtNaN,4
	.align		2
	.globl		rtNaN
rtNaN:
	.space		4
	.sbss
	.type		rtInfF,@object
	.size		rtInfF,4
	.align		2
	.globl		rtInfF
rtInfF:
	.space		4
	.sbss
	.type		rtMinusInfF,@object
	.size		rtMinusInfF,4
	.align		2
	.globl		rtMinusInfF
rtMinusInfF:
	.space		4
	.sbss
	.type		rtNaNF,@object
	.size		rtNaNF,4
	.align		2
	.globl		rtNaNF
rtNaNF:
	.space		4
	.section	.text_vle
#$$ld
.L5:
.L395:	.d2filenum "rt_nonfinite.h"
.L348:	.d2filenum "rt_nonfinite.c"
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
	.uleb128	9
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
	.uleb128	5
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
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
	.uleb128	23
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	12
	.uleb128	19
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
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
	.uleb128	14
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
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
	.byte		"rt_nonfinite.c"
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
.L349:
	.sleb128	2
	.4byte		.L345-.L2
	.byte		"rt_InitInfAndNaN"
	.byte		0
	.4byte		.L348
	.uleb128	38
	.byte		0x1
	.byte		0x1
	.4byte		.L346
	.4byte		.L347
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L348
	.uleb128	38
	.byte		"realSize"
	.byte		0
	.4byte		.L350
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info,,n
	.sleb128	0
.L345:
	.section	.debug_info,,n
.L358:
	.sleb128	4
	.4byte		.L353-.L2
	.byte		"rtIsInf"
	.byte		0
	.4byte		.L348
	.uleb128	50
	.4byte		.L356
	.byte		0x1
	.byte		0x1
	.4byte		.L354
	.4byte		.L355
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L348
	.uleb128	50
	.byte		"value"
	.byte		0
	.4byte		.L359
	.4byte		.L361
	.section	.debug_info,,n
	.sleb128	0
.L353:
	.section	.debug_info,,n
.L366:
	.sleb128	4
	.4byte		.L363-.L2
	.byte		"rtIsInfF"
	.byte		0
	.4byte		.L348
	.uleb128	56
	.4byte		.L356
	.byte		0x1
	.byte		0x1
	.4byte		.L364
	.4byte		.L365
	.sleb128	5
	.4byte		.L348
	.uleb128	56
	.byte		"value"
	.byte		0
	.4byte		.L367
	.4byte		.L368
	.section	.debug_info,,n
	.sleb128	0
.L363:
	.section	.debug_info,,n
.L373:
	.sleb128	4
	.4byte		.L370-.L2
	.byte		"rtIsNaNF"
	.byte		0
	.4byte		.L348
	.uleb128	84
	.4byte		.L356
	.byte		0x1
	.byte		0x1
	.4byte		.L371
	.4byte		.L372
	.sleb128	5
	.4byte		.L348
	.uleb128	84
	.byte		"value"
	.byte		0
	.4byte		.L367
	.4byte		.L374
	.section	.debug_info,,n
.L375:
	.sleb128	6
	.4byte		.L348
	.uleb128	86
	.byte		"tmp"
	.byte		0
	.4byte		.L376
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L370:
	.section	.debug_info,,n
.L382:
	.sleb128	4
	.4byte		.L379-.L2
	.byte		"rtIsNaN"
	.byte		0
	.4byte		.L348
	.uleb128	62
	.4byte		.L356
	.byte		0x1
	.byte		0x1
	.4byte		.L380
	.4byte		.L381
	.sleb128	5
	.4byte		.L348
	.uleb128	62
	.byte		"value"
	.byte		0
	.4byte		.L359
	.4byte		.L383
	.section	.debug_info,,n
.L384:
	.sleb128	7
	.4byte		.L348
	.uleb128	64
	.byte		"result"
	.byte		0
	.4byte		.L356
	.4byte		.L385
	.section	.debug_info,,n
	.sleb128	8
	.4byte		.L389
	.4byte		.L386
	.4byte		.L387
	.section	.debug_info,,n
.L391:
	.sleb128	9
	.4byte		.L390-.L2
	.uleb128	8
	.section	.debug_info,,n
	.sleb128	10
	.byte		"bitVal"
	.byte		0
	.4byte		.L392
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	10
	.byte		"fltVal"
	.byte		0
	.4byte		.L359
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L390:
	.section	.debug_info,,n
	.sleb128	0
.L389:
	.section	.debug_info,,n
	.sleb128	0
.L379:
	.section	.debug_info,,n
.L394:
	.sleb128	11
	.byte		0x1
	.4byte		.L395
	.uleb128	22
	.byte		"rtInf"
	.byte		0
	.4byte		.L359
	.sleb128	5
	.byte		0x3
	.4byte		rtInf
	.section	.debug_info,,n
	.section	.debug_info,,n
.L396:
	.sleb128	11
	.byte		0x1
	.4byte		.L395
	.uleb128	23
	.byte		"rtMinusInf"
	.byte		0
	.4byte		.L359
	.sleb128	5
	.byte		0x3
	.4byte		rtMinusInf
	.section	.debug_info,,n
.L397:
	.sleb128	11
	.byte		0x1
	.4byte		.L395
	.uleb128	24
	.byte		"rtNaN"
	.byte		0
	.4byte		.L359
	.sleb128	5
	.byte		0x3
	.4byte		rtNaN
	.section	.debug_info,,n
.L398:
	.sleb128	11
	.byte		0x1
	.4byte		.L395
	.uleb128	25
	.byte		"rtInfF"
	.byte		0
	.4byte		.L367
	.sleb128	5
	.byte		0x3
	.4byte		rtInfF
	.section	.debug_info,,n
.L399:
	.sleb128	11
	.byte		0x1
	.4byte		.L395
	.uleb128	26
	.byte		"rtMinusInfF"
	.byte		0
	.4byte		.L367
	.sleb128	5
	.byte		0x3
	.4byte		rtMinusInfF
	.section	.debug_info,,n
.L400:
	.sleb128	11
	.byte		0x1
	.4byte		.L395
	.uleb128	27
	.byte		"rtNaNF"
	.byte		0
	.4byte		.L367
	.sleb128	5
	.byte		0x3
	.4byte		rtNaNF
	.section	.debug_info,,n
.L377:
	.sleb128	12
	.4byte		.L401-.L2
	.uleb128	4
.L296:
	.sleb128	10
	.byte		"wordL"
	.byte		0
	.4byte		.L402
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L401:
.L402:
	.sleb128	9
	.4byte		.L403-.L2
	.uleb128	4
.L294:
	.sleb128	10
	.byte		"wordLreal"
	.byte		0
	.4byte		.L367
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L295:
	.sleb128	10
	.byte		"wordLuint"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L403:
.L393:
	.sleb128	12
	.4byte		.L406-.L2
	.uleb128	8
.L290:
	.sleb128	10
	.byte		"words"
	.byte		0
	.4byte		.L407
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L406:
.L407:
	.sleb128	12
	.4byte		.L408-.L2
	.uleb128	8
.L288:
	.sleb128	10
	.byte		"wordH"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L289:
	.sleb128	10
	.byte		"wordL"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L408:
	.section	.debug_info,,n
.L351:
	.sleb128	13
	.byte		"unsigned int"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L350:
	.sleb128	14
	.byte		"size_t"
	.byte		0
	.4byte		.L351
.L357:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L356:
	.sleb128	14
	.byte		"boolean_T"
	.byte		0
	.4byte		.L357
.L360:
	.sleb128	13
	.byte		"float"
	.byte		0
	.byte		0x4
	.byte		0x4
.L359:
	.sleb128	14
	.byte		"real_T"
	.byte		0
	.4byte		.L360
.L367:
	.sleb128	14
	.byte		"real32_T"
	.byte		0
	.4byte		.L360
.L376:
	.sleb128	14
	.byte		"IEEESingle"
	.byte		0
	.4byte		.L377
.L392:
	.sleb128	14
	.byte		"BigEndianIEEEDouble"
	.byte		0
	.4byte		.L393
.L405:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L404:
	.sleb128	14
	.byte		"uint32_T"
	.byte		0
	.4byte		.L405
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L361:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L368:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L374:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
.L383:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locend
.L385:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "rtIsNaN"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "rtIsNaNF"
	.wrcm.end
	.wrcm.nelem "rtIsNaNF"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "rtIsInfF"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "rtIsInf"
	.wrcm.nint32 "frameSize", 0
	.wrcm.end
	.wrcm.nelem "rt_InitInfAndNaN"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "rtGetInf","rtGetInfF","rtGetMinusInf","rtGetMinusInfF","rtGetNaN","rtGetNaNF"
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
	.wrcm.nstr "options", "-ew1551 -ew1792 -ei1827 -Xmake-opt-key=rt_nonfinite.o -Xsingle-fp -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32 -Xaddr-sconst=0x11 -Xbss-common-off -Xdouble-avoid -Xenum-is-int -Xforce-prototypes -Xkeywords=0x08 -Xmin-align=1 -Xpass-source -Xsmall-const=0 -Xstrict-eabi -Xname-const=.cal_sec -Xmake-opt-key=rt_nonfinite.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.7\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32\lib\cderror.cat -Xsingle-fp -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32 -ew1551 -ew1792 -g3 -O -Xaddr-sconst=0x11 -Xbss-common-off -Xdouble-avoid -Xenum-is-int -Xforce-prototypes -Xkeywords=0x08 -Xmin-align=1 -Xpass-source -Xsmall-const=0 -Xstrict-eabi -ei1827 -Xname-const=.cal_sec -Y+C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\cpp/std:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\cpp:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\simple:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include -D__softfp -D__PPC_VLE__ -D__EABI__ -D__BIG_ENDIAN__ -D__ppc -D_SUPPORTS_BUILTIN_PREFETCH -D__SIZEOF_POINTER__=4 -D__CONFIGURE_EMBEDDED=0 -D__CONFIGURE_EXCEPTIONS=1 -D_DIAB_TOOL -D_SUPPORTS_BUILTIN_EXPECT -DCFG_M560 -DCFG_SUB_000 -DMODEL=ATV -DNUMST=5 -DTID01EQ=0 -DNCSTATES=0 -DMT=1 -DMODEL_REF_BUILD=0 -DINT8_T=signed char -DUINT8_T=unsigned char -DINT16_T=signed short -DUINT16_T=unsigned short -DINT32_T=signed long -DUINT32_T=unsigned long -DREAL_T=float -DRT -DREAL_T=float -DUSE_RTMODEL -I. -IC:/openecu/platform/3_2_0_FS_r2022-1/openecu/../targets/M560/M560_000/mpc5746d_lib/include -IC:/PROGRA~1/MATLAB/R2018b/simulink/include -IC:/PROGRA~1/MATLAB/R2018b/extern/include -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/libsrc -IC:/Users/giovanni/OneDrive/Desktop/workspace/Firmware -IC:/Users/giovanni/OneDrive/Desktop/workspace/Firmware/ATV_r2018.2_64_oe_3.2.0_r2022_1_rtmodel -IC:/PROGRA~1/MATLAB/R2018b/extern/include -IC:/PROGRA~1/MATLAB/R2018b/simulink/include -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src/ext_mode/common"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "rt_nonfinite.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
