#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 0		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1
	.file		"rtGetNaN.c"
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
# real32_T rtGetNaNF(void)
# {
	.align		2
	.section	.text_vle
	.d2file		"rtGetNaN.c"
        .d2line         77
#$$ld
.L325:

#$$bf	rtGetNaNF,interprocedural,nostackparams

# Regs written: r0,r1,r3,r5,cr0
	.globl		rtGetNaNF
	.d2_cfa_start __cie
rtGetNaNF:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	.d2prologue_end
#   IEEESingle nanF = { { 0 } };
# 
#   uint16_T one = 1U;
	.d2line		80
	diab.li		r0,1
	.d2line		78
	e_lis		r3,-64
	sth		r0,8(r1)
	lbz		r5,8(r1)
	diab.li		r0,2147483647
	se_cmpli	r5,1
# 4273
	isel		r3,r3,r0,2
	stw		r3,12(r1)
#   enum {
#     LittleEndian,
#     BigEndian
#   } machByteOrder = (*((uint8_T *) &one) == 1U) ? LittleEndian : BigEndian;
#   switch (machByteOrder) {
#    case LittleEndian:
#     {
#       nanF.wordL.wordLuint = 0xFFC00000U;
#       break;
#     }
# 
#    case BigEndian:
#     {
#       nanF.wordL.wordLuint = 0x7FFFFFFFU;
#       break;
#     }
#   }
# 
#   return nanF.wordL.wordLreal;
# }
	.d2line		100
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L326:
	.type		rtGetNaNF,@function
	.size		rtGetNaNF,.-rtGetNaNF
# Number of nodes = 36

# Allocations for rtGetNaNF
#	SP,12		nanF
#	SP,8		one
#	not allocated	machByteOrder
# real_T rtGetNaN(void)
# {
	.align		2
	.section	.text_vle
        .d2line         29
#$$ld
.L341:

#$$bf	rtGetNaN,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r5,cr0,lr
	.globl		rtGetNaN
	.d2_cfa_start __cie
rtGetNaN:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#   size_t bitsPerReal = sizeof(real_T) * (NumBitsPerChar);
#   real_T nan = 0.0;
#   if (bitsPerReal == 32U) {
#     nan = rtGetNaNF();
	.d2line		33
	bl		rtGetNaNF
	.section	.text_vle
.L347:
	.section	.text_vle
.L353:
	.section	.text_vle
.L354:
	.section	.text_vle
.L361:
	.section	.text_vle
.L362:
	.section	.text_vle
.L348:
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
#         tmpVal.bitVal.words.wordH = 0xFFF80000U;
#         tmpVal.bitVal.words.wordL = 0x00000000U;
#         nan = tmpVal.fltVal;
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
#         tmpVal.bitVal.words.wordH = 0x7FFFFFFFU;
#         tmpVal.bitVal.words.wordL = 0xFFFFFFFFU;
#         nan = tmpVal.fltVal;
#         break;
#       }
#     }
#   }
# 
#   return nan;
# }
	.d2line		70
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
.L342:
	.type		rtGetNaN,@function
	.size		rtGetNaN,.-rtGetNaN
# Number of nodes = 66

# Allocations for rtGetNaN
#	not allocated	bitsPerReal
#	?a4		nan
#	not allocated	one
#	not allocated	machByteOrder
#	not allocated	tmpVal
#	not allocated	tmpVal

# Allocations for module
	.section	.text_vle
	.align		2
#	Begin local data area
#	LDA + 0
	.type		.L312,@object
	.size		.L312,4
	.align		2
#	static		__static_init1
.L312:
	.space		4
	.section	.text_vle
#$$ld
.L5:
.L327:	.d2filenum "rtGetNaN.c"
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
	.uleb128	4
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	5
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	8
	.uleb128	23
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
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
	.uleb128	10
	.uleb128	19
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
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
	.uleb128	12
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
	.byte		"rtGetNaN.c"
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
.L330:
	.sleb128	2
	.4byte		.L324-.L2
	.byte		"rtGetNaNF"
	.byte		0
	.4byte		.L327
	.uleb128	76
	.4byte		.L328
	.byte		0x1
	.byte		0x1
	.4byte		.L325
	.4byte		.L326
	.section	.debug_info,,n
.L331:
	.sleb128	3
	.4byte		.L327
	.uleb128	78
	.byte		"nanF"
	.byte		0
	.4byte		.L332
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L334:
	.sleb128	3
	.4byte		.L327
	.uleb128	80
	.byte		"one"
	.byte		0
	.4byte		.L335
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
.L338:
	.sleb128	4
	.4byte		.L337-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	5
	.byte		"LittleEndian"
	.byte		0
	.sleb128	0
	.sleb128	5
	.byte		"BigEndian"
	.byte		0
	.sleb128	1
	.sleb128	0
.L337:
	.section	.debug_info,,n
	.sleb128	0
.L324:
	.section	.debug_info,,n
.L344:
	.sleb128	2
	.4byte		.L340-.L2
	.byte		"rtGetNaN"
	.byte		0
	.4byte		.L327
	.uleb128	28
	.4byte		.L343
	.byte		0x1
	.byte		0x1
	.4byte		.L341
	.4byte		.L342
	.section	.debug_info,,n
.L345:
	.sleb128	6
	.4byte		.L327
	.uleb128	31
	.byte		"nan"
	.byte		0
	.4byte		.L343
	.4byte		.L346
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L350
	.4byte		.L347
	.4byte		.L348
.L352:
	.sleb128	4
	.4byte		.L351-.L2
	.uleb128	4
	.sleb128	5
	.byte		"LittleEndian"
	.byte		0
	.sleb128	0
	.sleb128	5
	.byte		"BigEndian"
	.byte		0
	.sleb128	1
	.sleb128	0
.L351:
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L356
	.4byte		.L353
	.4byte		.L354
	.section	.debug_info,,n
.L358:
	.sleb128	8
	.4byte		.L357-.L2
	.uleb128	8
	.section	.debug_info,,n
	.sleb128	9
	.byte		"bitVal"
	.byte		0
	.4byte		.L359
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	9
	.byte		"fltVal"
	.byte		0
	.4byte		.L343
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L357:
	.section	.debug_info,,n
	.sleb128	0
.L356:
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L364
	.4byte		.L361
	.4byte		.L362
.L366:
	.sleb128	8
	.4byte		.L365-.L2
	.uleb128	8
	.sleb128	9
	.byte		"bitVal"
	.byte		0
	.4byte		.L367
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	9
	.byte		"fltVal"
	.byte		0
	.4byte		.L343
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L365:
	.section	.debug_info,,n
	.sleb128	0
.L364:
	.section	.debug_info,,n
	.sleb128	0
.L350:
	.section	.debug_info,,n
	.sleb128	0
.L340:
	.section	.debug_info,,n
.L333:
	.sleb128	10
	.4byte		.L369-.L2
	.uleb128	4
.L296:
	.sleb128	9
	.byte		"wordL"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L369:
.L370:
	.sleb128	8
	.4byte		.L371-.L2
	.uleb128	4
.L294:
	.sleb128	9
	.byte		"wordLreal"
	.byte		0
	.4byte		.L328
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L295:
	.sleb128	9
	.byte		"wordLuint"
	.byte		0
	.4byte		.L372
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L371:
.L360:
	.sleb128	10
	.4byte		.L374-.L2
	.uleb128	8
.L293:
	.sleb128	9
	.byte		"words"
	.byte		0
	.4byte		.L375
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L374:
.L375:
	.sleb128	10
	.4byte		.L376-.L2
	.uleb128	8
.L291:
	.sleb128	9
	.byte		"wordL"
	.byte		0
	.4byte		.L372
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L292:
	.sleb128	9
	.byte		"wordH"
	.byte		0
	.4byte		.L372
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L376:
.L368:
	.sleb128	10
	.4byte		.L377-.L2
	.uleb128	8
.L290:
	.sleb128	9
	.byte		"words"
	.byte		0
	.4byte		.L378
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L377:
.L378:
	.sleb128	10
	.4byte		.L379-.L2
	.uleb128	8
.L288:
	.sleb128	9
	.byte		"wordH"
	.byte		0
	.4byte		.L372
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L289:
	.sleb128	9
	.byte		"wordL"
	.byte		0
	.4byte		.L372
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.sleb128	0
.L379:
	.section	.debug_info,,n
.L329:
	.sleb128	11
	.byte		"float"
	.byte		0
	.byte		0x4
	.byte		0x4
	.section	.debug_info,,n
.L328:
	.sleb128	12
	.byte		"real32_T"
	.byte		0
	.4byte		.L329
.L332:
	.sleb128	12
	.byte		"IEEESingle"
	.byte		0
	.4byte		.L333
.L336:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L335:
	.sleb128	12
	.byte		"uint16_T"
	.byte		0
	.4byte		.L336
.L343:
	.sleb128	12
	.byte		"real_T"
	.byte		0
	.4byte		.L329
.L359:
	.sleb128	12
	.byte		"LittleEndianIEEEDouble"
	.byte		0
	.4byte		.L360
.L367:
	.sleb128	12
	.byte		"BigEndianIEEEDouble"
	.byte		0
	.4byte		.L368
.L373:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L372:
	.sleb128	12
	.byte		"uint32_T"
	.byte		0
	.4byte		.L373
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L346:
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "rtGetNaN"
	.wrcm.nstrlist "calls", "rtGetNaNF"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "rtGetNaNF"
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
	.wrcm.nstr "options", "-ew1551 -ew1792 -ei1827 -Xmake-opt-key=rtGetNaN.o -Xsingle-fp -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32 -Xaddr-sconst=0x11 -Xbss-common-off -Xdouble-avoid -Xenum-is-int -Xforce-prototypes -Xkeywords=0x08 -Xmin-align=1 -Xpass-source -Xsmall-const=0 -Xstrict-eabi -Xname-const=.cal_sec -Xmake-opt-key=rtGetNaN.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.7\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32\lib\cderror.cat -Xsingle-fp -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32 -ew1551 -ew1792 -g3 -O -Xaddr-sconst=0x11 -Xbss-common-off -Xdouble-avoid -Xenum-is-int -Xforce-prototypes -Xkeywords=0x08 -Xmin-align=1 -Xpass-source -Xsmall-const=0 -Xstrict-eabi -ei1827 -Xname-const=.cal_sec -Y+C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\cpp/std:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\cpp:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\simple:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include -D__softfp -D__PPC_VLE__ -D__EABI__ -D__BIG_ENDIAN__ -D__ppc -D_SUPPORTS_BUILTIN_PREFETCH -D__SIZEOF_POINTER__=4 -D__CONFIGURE_EMBEDDED=0 -D__CONFIGURE_EXCEPTIONS=1 -D_DIAB_TOOL -D_SUPPORTS_BUILTIN_EXPECT -DCFG_M560 -DCFG_SUB_000 -DMODEL=ATV -DNUMST=3 -DTID01EQ=0 -DNCSTATES=0 -DMT=1 -DMODEL_REF_BUILD=0 -DINT8_T=signed char -DUINT8_T=unsigned char -DINT16_T=signed short -DUINT16_T=unsigned short -DINT32_T=signed long -DUINT32_T=unsigned long -DREAL_T=float -DRT -DREAL_T=float -DUSE_RTMODEL -I. -IC:/openecu/platform/3_2_0_FS_r2022-1/openecu/../targets/M560/M560_000/mpc5746d_lib/include -IC:/PROGRA~1/MATLAB/R2018b/simulink/include -IC:/PROGRA~1/MATLAB/R2018b/extern/include -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/libsrc -IC:/Users/giovanni/OneDrive/Desktop/workspace/Firmware -IC:/Users/giovanni/OneDrive/Desktop/workspace/Firmware/ATV_r2018.2_64_oe_3.2.0_r2022_1_rtmodel -IC:/PROGRA~1/MATLAB/R2018b/extern/include -IC:/PROGRA~1/MATLAB/R2018b/simulink/include -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src/ext_mode/common"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "rtGetNaN.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
