#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 0		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1
	.file		"rtGetInf.c"
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
# real_T rtGetInf(void)
# {
	.align		2
	.section	.text_vle
	.d2file		"rtGetInf.c"
        .d2line         29
#$$ld
.L327:

#$$bf	rtGetInf,interprocedural,nostackparams

# Regs written: r1,r3
	.globl		rtGetInf
	.d2_cfa_start __cie
rtGetInf:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	.d2prologue_end
	.d2line		79
	e_lis		r3,32640
	stw		r3,8(r1)
	.section	.text_vle
.L336:
	.section	.text_vle
.L342:
	.section	.text_vle
.L343:
	.section	.text_vle
.L350:
	.section	.text_vle
.L351:
	.section	.text_vle
.L337:
#   size_t bitsPerReal = sizeof(real_T) * (NumBitsPerChar);
#   real_T inf = 0.0;
#   if (bitsPerReal == 32U) {
#     inf = rtGetInfF();
#   } else {
#     uint16_T one = 1U;
#     enum {
#       LittleEndian,
#       BigEndian
#     } machByteOrder = (*((uint8_T *) &one) == 1U) ? LittleEndian : BigEndian;
#     switch (machByteOrder) {
#      case LittleEndian:
#       {
#         union {
#           LittleEndianIEEEDouble bitVal;
#           real_T fltVal;
#         } tmpVal;
# 
#         tmpVal.bitVal.words.wordH = 0x7FF00000U;
#         tmpVal.bitVal.words.wordL = 0x00000000U;
#         inf = tmpVal.fltVal;
#         break;
#       }
# 
#      case BigEndian:
#       {
#         union {
#           BigEndianIEEEDouble bitVal;
#           real_T fltVal;
#         } tmpVal;
# 
#         tmpVal.bitVal.words.wordH = 0x7FF00000U;
#         tmpVal.bitVal.words.wordL = 0x00000000U;
#         inf = tmpVal.fltVal;
#         break;
#       }
#     }
#   }
# 
#   return inf;
# }
	.d2line		70
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L328:
	.type		rtGetInf,@function
	.size		rtGetInf,.-rtGetInf
# Number of nodes = 66

# Allocations for rtGetInf
#	?a4		$$1
#	not allocated	bitsPerReal
#	not allocated	inf
#	SP,8		infF
#	not allocated	one
#	not allocated	machByteOrder
#	not allocated	tmpVal
#	not allocated	tmpVal
# real32_T rtGetInfF(void)
# {
	.align		2
	.section	.text_vle
        .d2line         77
#$$ld
.L360:

#$$bf	rtGetInfF,interprocedural,nostackparams

# Regs written: r1,r3
	.globl		rtGetInfF
	.d2_cfa_start __cie
rtGetInfF:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	.d2prologue_end
#   IEEESingle infF;
#   infF.wordL.wordLuint = 0x7F800000U;
	.d2line		79
	e_lis		r3,32640
	stw		r3,8(r1)
#   return infF.wordL.wordLreal;
# }
	.d2line		81
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L361:
	.type		rtGetInfF,@function
	.size		rtGetInfF,.-rtGetInfF
# Number of nodes = 9

# Allocations for rtGetInfF
#	SP,8		infF
# real_T rtGetMinusInf(void)
# {
	.align		2
	.section	.text_vle
        .d2line         88
#$$ld
.L367:

#$$bf	rtGetMinusInf,interprocedural,nostackparams

# Regs written: r1,r3
	.globl		rtGetMinusInf
	.d2_cfa_start __cie
rtGetMinusInf:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	.d2prologue_end
	.d2line		138
	e_lis		r3,-128
	stw		r3,8(r1)
	.section	.text_vle
.L371:
	.section	.text_vle
.L377:
	.section	.text_vle
.L378:
	.section	.text_vle
.L383:
	.section	.text_vle
.L384:
	.section	.text_vle
.L372:
#   size_t bitsPerReal = sizeof(real_T) * (NumBitsPerChar);
#   real_T minf = 0.0;
#   if (bitsPerReal == 32U) {
#     minf = rtGetMinusInfF();
#   } else {
#     uint16_T one = 1U;
#     enum {
#       LittleEndian,
#       BigEndian
#     } machByteOrder = (*((uint8_T *) &one) == 1U) ? LittleEndian : BigEndian;
#     switch (machByteOrder) {
#      case LittleEndian:
#       {
#         union {
#           LittleEndianIEEEDouble bitVal;
#           real_T fltVal;
#         } tmpVal;
# 
#         tmpVal.bitVal.words.wordH = 0xFFF00000U;
#         tmpVal.bitVal.words.wordL = 0x00000000U;
#         minf = tmpVal.fltVal;
#         break;
#       }
# 
#      case BigEndian:
#       {
#         union {
#           BigEndianIEEEDouble bitVal;
#           real_T fltVal;
#         } tmpVal;
# 
#         tmpVal.bitVal.words.wordH = 0xFFF00000U;
#         tmpVal.bitVal.words.wordL = 0x00000000U;
#         minf = tmpVal.fltVal;
#         break;
#       }
#     }
#   }
# 
#   return minf;
# }
	.d2line		129
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L368:
	.type		rtGetMinusInf,@function
	.size		rtGetMinusInf,.-rtGetMinusInf
# Number of nodes = 66

# Allocations for rtGetMinusInf
#	?a4		$$2
#	not allocated	bitsPerReal
#	not allocated	minf
#	SP,8		minfF
#	not allocated	one
#	not allocated	machByteOrder
#	not allocated	tmpVal
#	not allocated	tmpVal
# real32_T rtGetMinusInfF(void)
# {
	.align		2
	.section	.text_vle
        .d2line         136
#$$ld
.L391:

#$$bf	rtGetMinusInfF,interprocedural,nostackparams

# Regs written: r1,r3
	.globl		rtGetMinusInfF
	.d2_cfa_start __cie
rtGetMinusInfF:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	.d2prologue_end
#   IEEESingle minfF;
#   minfF.wordL.wordLuint = 0xFF800000U;
	.d2line		138
	e_lis		r3,-128
	stw		r3,8(r1)
#   return minfF.wordL.wordLreal;
# }
	.d2line		140
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L392:
	.type		rtGetMinusInfF,@function
	.size		rtGetMinusInfF,.-rtGetMinusInfF
# Number of nodes = 9

# Allocations for rtGetMinusInfF
#	SP,8		minfF

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L329:	.d2filenum "rtGetInf.c"
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
	.uleb128	4
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
	.uleb128	5
	.uleb128	4
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	6
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
	.uleb128	23
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
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
	.uleb128	9
	.uleb128	19
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
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
	.uleb128	11
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
	.byte		"rtGetInf.c"
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
.L332:
	.sleb128	2
	.4byte		.L326-.L2
	.byte		"rtGetInf"
	.byte		0
	.4byte		.L329
	.uleb128	28
	.4byte		.L330
	.byte		0x1
	.byte		0x1
	.4byte		.L327
	.4byte		.L328
	.section	.debug_info,,n
.L333:
	.sleb128	3
	.4byte		.L329
	.uleb128	78
	.byte		"infF"
	.byte		0
	.4byte		.L334
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L339
	.4byte		.L336
	.4byte		.L337
	.section	.debug_info,,n
.L341:
	.sleb128	5
	.4byte		.L340-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	6
	.byte		"LittleEndian"
	.byte		0
	.sleb128	0
	.sleb128	6
	.byte		"BigEndian"
	.byte		0
	.sleb128	1
	.sleb128	0
.L340:
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L345
	.4byte		.L342
	.4byte		.L343
	.section	.debug_info,,n
.L347:
	.sleb128	7
	.4byte		.L346-.L2
	.uleb128	8
	.section	.debug_info,,n
	.sleb128	8
	.byte		"bitVal"
	.byte		0
	.4byte		.L348
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	8
	.byte		"fltVal"
	.byte		0
	.4byte		.L330
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L346:
	.section	.debug_info,,n
	.sleb128	0
.L345:
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L353
	.4byte		.L350
	.4byte		.L351
.L355:
	.sleb128	7
	.4byte		.L354-.L2
	.uleb128	8
	.sleb128	8
	.byte		"bitVal"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	8
	.byte		"fltVal"
	.byte		0
	.4byte		.L330
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L354:
	.section	.debug_info,,n
	.sleb128	0
.L353:
	.section	.debug_info,,n
	.sleb128	0
.L339:
	.section	.debug_info,,n
	.sleb128	0
.L326:
	.section	.debug_info,,n
.L363:
	.sleb128	2
	.4byte		.L359-.L2
	.byte		"rtGetInfF"
	.byte		0
	.4byte		.L329
	.uleb128	76
	.4byte		.L362
	.byte		0x1
	.byte		0x1
	.4byte		.L360
	.4byte		.L361
.L364:
	.sleb128	3
	.4byte		.L329
	.uleb128	78
	.byte		"infF"
	.byte		0
	.4byte		.L334
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L359:
	.section	.debug_info,,n
.L369:
	.sleb128	2
	.4byte		.L366-.L2
	.byte		"rtGetMinusInf"
	.byte		0
	.4byte		.L329
	.uleb128	87
	.4byte		.L330
	.byte		0x1
	.byte		0x1
	.4byte		.L367
	.4byte		.L368
.L370:
	.sleb128	3
	.4byte		.L329
	.uleb128	137
	.byte		"minfF"
	.byte		0
	.4byte		.L334
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L374
	.4byte		.L371
	.4byte		.L372
.L376:
	.sleb128	5
	.4byte		.L375-.L2
	.uleb128	4
	.sleb128	6
	.byte		"LittleEndian"
	.byte		0
	.sleb128	0
	.sleb128	6
	.byte		"BigEndian"
	.byte		0
	.sleb128	1
	.sleb128	0
.L375:
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L380
	.4byte		.L377
	.4byte		.L378
.L382:
	.sleb128	7
	.4byte		.L381-.L2
	.uleb128	8
	.sleb128	8
	.byte		"bitVal"
	.byte		0
	.4byte		.L348
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	8
	.byte		"fltVal"
	.byte		0
	.4byte		.L330
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L381:
	.section	.debug_info,,n
	.sleb128	0
.L380:
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L386
	.4byte		.L383
	.4byte		.L384
.L388:
	.sleb128	7
	.4byte		.L387-.L2
	.uleb128	8
	.sleb128	8
	.byte		"bitVal"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	8
	.byte		"fltVal"
	.byte		0
	.4byte		.L330
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L387:
	.section	.debug_info,,n
	.sleb128	0
.L386:
	.section	.debug_info,,n
	.sleb128	0
.L374:
	.section	.debug_info,,n
	.sleb128	0
.L366:
	.section	.debug_info,,n
.L393:
	.sleb128	2
	.4byte		.L390-.L2
	.byte		"rtGetMinusInfF"
	.byte		0
	.4byte		.L329
	.uleb128	135
	.4byte		.L362
	.byte		0x1
	.byte		0x1
	.4byte		.L391
	.4byte		.L392
.L394:
	.sleb128	3
	.4byte		.L329
	.uleb128	137
	.byte		"minfF"
	.byte		0
	.4byte		.L334
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L390:
	.section	.debug_info,,n
.L335:
	.sleb128	9
	.4byte		.L395-.L2
	.uleb128	4
.L296:
	.sleb128	8
	.byte		"wordL"
	.byte		0
	.4byte		.L396
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L395:
.L396:
	.sleb128	7
	.4byte		.L397-.L2
	.uleb128	4
.L294:
	.sleb128	8
	.byte		"wordLreal"
	.byte		0
	.4byte		.L362
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L295:
	.sleb128	8
	.byte		"wordLuint"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L397:
.L349:
	.sleb128	9
	.4byte		.L400-.L2
	.uleb128	8
.L293:
	.sleb128	8
	.byte		"words"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L400:
.L401:
	.sleb128	9
	.4byte		.L402-.L2
	.uleb128	8
.L291:
	.sleb128	8
	.byte		"wordL"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L292:
	.sleb128	8
	.byte		"wordH"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L402:
.L357:
	.sleb128	9
	.4byte		.L403-.L2
	.uleb128	8
.L290:
	.sleb128	8
	.byte		"words"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L403:
.L404:
	.sleb128	9
	.4byte		.L405-.L2
	.uleb128	8
.L288:
	.sleb128	8
	.byte		"wordH"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L289:
	.sleb128	8
	.byte		"wordL"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L405:
	.section	.debug_info,,n
.L331:
	.sleb128	10
	.byte		"float"
	.byte		0
	.byte		0x4
	.byte		0x4
	.section	.debug_info,,n
.L330:
	.sleb128	11
	.byte		"real_T"
	.byte		0
	.4byte		.L331
.L334:
	.sleb128	11
	.byte		"IEEESingle"
	.byte		0
	.4byte		.L335
.L348:
	.sleb128	11
	.byte		"LittleEndianIEEEDouble"
	.byte		0
	.4byte		.L349
.L356:
	.sleb128	11
	.byte		"BigEndianIEEEDouble"
	.byte		0
	.4byte		.L357
.L362:
	.sleb128	11
	.byte		"real32_T"
	.byte		0
	.4byte		.L331
.L399:
	.sleb128	10
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L398:
	.sleb128	11
	.byte		"uint32_T"
	.byte		0
	.4byte		.L399
.L7:
	.sleb128	0
.L3:
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "rtGetMinusInfF"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "rtGetMinusInf"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "rtGetInfF"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "rtGetInf"
	.wrcm.nint32 "frameSize", 16
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
	.wrcm.nstr "options", "-ew1551 -ew1792 -ei1827 -Xmake-opt-key=rtGetInf.o -Xsingle-fp -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32 -Xaddr-sconst=0x11 -Xbss-common-off -Xdouble-avoid -Xenum-is-int -Xforce-prototypes -Xkeywords=0x08 -Xmin-align=1 -Xpass-source -Xsmall-const=0 -Xstrict-eabi -Xname-const=.cal_sec -Xmake-opt-key=rtGetInf.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.7\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32\lib\cderror.cat -Xsingle-fp -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32 -ew1551 -ew1792 -g3 -O -Xaddr-sconst=0x11 -Xbss-common-off -Xdouble-avoid -Xenum-is-int -Xforce-prototypes -Xkeywords=0x08 -Xmin-align=1 -Xpass-source -Xsmall-const=0 -Xstrict-eabi -ei1827 -Xname-const=.cal_sec -Y+C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\cpp/std:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\cpp:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\simple:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include -D__softfp -D__PPC_VLE__ -D__EABI__ -D__BIG_ENDIAN__ -D__ppc -D_SUPPORTS_BUILTIN_PREFETCH -D__SIZEOF_POINTER__=4 -D__CONFIGURE_EMBEDDED=0 -D__CONFIGURE_EXCEPTIONS=1 -D_DIAB_TOOL -D_SUPPORTS_BUILTIN_EXPECT -DCFG_M560 -DCFG_SUB_000 -DMODEL=ATV -DNUMST=5 -DTID01EQ=0 -DNCSTATES=0 -DMT=1 -DMODEL_REF_BUILD=0 -DINT8_T=signed char -DUINT8_T=unsigned char -DINT16_T=signed short -DUINT16_T=unsigned short -DINT32_T=signed long -DUINT32_T=unsigned long -DREAL_T=float -DRT -DREAL_T=float -DUSE_RTMODEL -I. -IC:/openecu/platform/3_2_0_FS_r2022-1/openecu/../targets/M560/M560_000/mpc5746d_lib/include -IC:/PROGRA~1/MATLAB/R2018b/simulink/include -IC:/PROGRA~1/MATLAB/R2018b/extern/include -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/libsrc -IC:/Users/giovanni/OneDrive/Desktop/workspace/Firmware -IC:/Users/giovanni/OneDrive/Desktop/workspace/Firmware/ATV_r2018.2_64_oe_3.2.0_r2022_1_rtmodel -IC:/PROGRA~1/MATLAB/R2018b/extern/include -IC:/PROGRA~1/MATLAB/R2018b/simulink/include -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src/ext_mode/common"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "rtGetInf.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
