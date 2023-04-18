#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 0		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1
	.file		"ATV_data.c"
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

# Allocations for module
	.section	.cal_sec,,r
	.0byte		.L3689
	.section	.cal_sec,,r
	.type		ATV_ConstB,@object
	.size		ATV_ConstB,48
	.align		2
	.globl		ATV_ConstB
ATV_ConstB:
	.float		+9.0000000000000000000e2
	.float		+1.1111111640930175781
	.long		100
	.long		1000
	.long		10
	.short		0
	.space		2
	.float		+9.0000000000000000000e2
	.float		+1.1111111640930175781
	.long		100
	.long		1000
	.long		10
	.short		0
	.space		2
	.section	.text_vle
#$$ld
.L5:
.L3690:	.d2filenum "ATV.h"
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
	.uleb128	3
	.uleb128	19
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	4
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
	.uleb128	5
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	6
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
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
	.byte		"ATV_data.c"
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
.L3689:
	.sleb128	2
	.byte		0x1
	.4byte		.L3690
	.uleb128	1153
	.byte		"ATV_ConstB"
	.byte		0
	.4byte		.L3691
	.sleb128	5
	.byte		0x3
	.4byte		ATV_ConstB
	.section	.debug_info,,n
	.section	.debug_info,,n
.L3693:
	.sleb128	3
	.4byte		.L3694-.L2
	.uleb128	48
	.section	.debug_info,,n
.L3604:
	.sleb128	4
	.byte		"DBWREG_BRAKEFORWARD_d"
	.byte		0
	.4byte		.L3695
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3605:
	.sleb128	4
	.byte		"DBWREVERSE_b"
	.byte		0
	.4byte		.L3697
	.sleb128	2
	.byte		0x23
	.uleb128	20
.L3606:
	.sleb128	4
	.byte		"DBWREG_BRAKEFORWARD"
	.byte		0
	.4byte		.L3695
	.sleb128	2
	.byte		0x23
	.uleb128	24
.L3607:
	.sleb128	4
	.byte		"DBWREVERSE"
	.byte		0
	.4byte		.L3697
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.sleb128	0
.L3694:
.L3696:
	.sleb128	3
	.4byte		.L3699-.L2
	.uleb128	20
.L3599:
	.sleb128	4
	.byte		"Subtract"
	.byte		0
	.4byte		.L3700
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L3600:
	.sleb128	4
	.byte		"Divide"
	.byte		0
	.4byte		.L3700
	.sleb128	2
	.byte		0x23
	.uleb128	4
.L3601:
	.sleb128	4
	.byte		"DataTypeConversion1"
	.byte		0
	.4byte		.L3703
	.sleb128	2
	.byte		0x23
	.uleb128	8
.L3602:
	.sleb128	4
	.byte		"DataTypeConversion2"
	.byte		0
	.4byte		.L3703
	.sleb128	2
	.byte		0x23
	.uleb128	12
.L3603:
	.sleb128	4
	.byte		"Divide2"
	.byte		0
	.4byte		.L3703
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.sleb128	0
.L3699:
.L3698:
	.sleb128	3
	.4byte		.L3705-.L2
	.uleb128	2
.L3598:
	.sleb128	4
	.byte		"Constant2"
	.byte		0
	.4byte		.L3706
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L3705:
	.section	.debug_info,,n
.L3692:
	.sleb128	5
	.byte		"ConstB_ATV_T"
	.byte		0
	.4byte		.L3693
	.section	.debug_info,,n
.L3691:
	.sleb128	6
	.4byte		.L3692
.L3695:
	.sleb128	5
	.byte		"ConstB_DBWREG_BRAKEFORWARD_AT_T"
	.byte		0
	.4byte		.L3696
.L3697:
	.sleb128	5
	.byte		"ConstB_DBWREVERSE_ATV_T"
	.byte		0
	.4byte		.L3698
	.section	.debug_info,,n
.L3702:
	.sleb128	7
	.byte		"float"
	.byte		0
	.byte		0x4
	.byte		0x4
.L3701:
	.sleb128	5
	.byte		"real_T"
	.byte		0
	.4byte		.L3702
.L3700:
	.sleb128	6
	.4byte		.L3701
.L3704:
	.sleb128	7
	.byte		"long"
	.byte		0
	.byte		0x5
	.byte		0x4
.L3703:
	.sleb128	6
	.4byte		.L3704
.L3708:
	.sleb128	7
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L3707:
	.sleb128	5
	.byte		"uint16_T"
	.byte		0
	.4byte		.L3708
.L3706:
	.sleb128	6
	.4byte		.L3707
.L7:
	.sleb128	0
.L3:
	.wrcm.doc
	.wrcm.elem
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
	.wrcm.nstr "options", "-ew1551 -ew1792 -ei1827 -Xmake-opt-key=ATV_data.o -Xsingle-fp -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32 -Xaddr-sconst=0x11 -Xbss-common-off -Xdouble-avoid -Xenum-is-int -Xforce-prototypes -Xkeywords=0x08 -Xmin-align=1 -Xpass-source -Xsmall-const=0 -Xstrict-eabi -Xname-const=.cal_sec -Xmake-opt-key=ATV_data.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.7\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32\lib\cderror.cat -Xsingle-fp -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32 -ew1551 -ew1792 -g3 -O -Xaddr-sconst=0x11 -Xbss-common-off -Xdouble-avoid -Xenum-is-int -Xforce-prototypes -Xkeywords=0x08 -Xmin-align=1 -Xpass-source -Xsmall-const=0 -Xstrict-eabi -ei1827 -Xname-const=.cal_sec -Y+C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\cpp/std:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\cpp:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\simple:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include -D__softfp -D__PPC_VLE__ -D__EABI__ -D__BIG_ENDIAN__ -D__ppc -D_SUPPORTS_BUILTIN_PREFETCH -D__SIZEOF_POINTER__=4 -D__CONFIGURE_EMBEDDED=0 -D__CONFIGURE_EXCEPTIONS=1 -D_DIAB_TOOL -D_SUPPORTS_BUILTIN_EXPECT -DCFG_M560 -DCFG_SUB_000 -DMODEL=ATV -DNUMST=3 -DTID01EQ=0 -DNCSTATES=0 -DMT=1 -DMODEL_REF_BUILD=0 -DINT8_T=signed char -DUINT8_T=unsigned char -DINT16_T=signed short -DUINT16_T=unsigned short -DINT32_T=signed long -DUINT32_T=unsigned long -DREAL_T=float -DRT -DREAL_T=float -DUSE_RTMODEL -I. -IC:/openecu/platform/3_2_0_FS_r2022-1/openecu/../targets/M560/M560_000/mpc5746d_lib/include -IC:/PROGRA~1/MATLAB/R2018b/simulink/include -IC:/PROGRA~1/MATLAB/R2018b/extern/include -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/libsrc -IC:/Users/giovanni/OneDrive/Desktop/workspace/Firmware -IC:/Users/giovanni/OneDrive/Desktop/workspace/Firmware/ATV_r2018.2_64_oe_3.2.0_r2022_1_rtmodel -IC:/PROGRA~1/MATLAB/R2018b/extern/include -IC:/PROGRA~1/MATLAB/R2018b/simulink/include -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src/ext_mode/common"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "ATV_data.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
