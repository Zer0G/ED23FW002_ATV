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
	.0byte		.L4194
	.section	.cal_sec,,r
	.type		ATV_ConstP,@object
	.size		ATV_ConstP,572
	.align		2
	.globl		ATV_ConstP
ATV_ConstP:
	.float		+2.5000000000000000000e-1
	.float		+2.8000000119209289551e-1
	.float		+4.0000000596046447754e-1
	.float		+4.0500000119209289551e-1
	.float		+4.3999999761581420898e-1
	.float		+4.6999999880790710449e-1
	.float		+5.6999999284744262695e-1
	.float		+5.7999998331069946289e-1
	.float		+6.0000002384185791016e-1
	.float		+6.4999997615814208984e-1
	.float		+2.0000000000000000000e3
	.float		+2.5000000000000000000e3
	.float		+3.0000000000000000000e3
	.float		+3.5000000000000000000e3
	.float		+4.0000000000000000000e3
	.float		+4.5500000000000000000e3
	.float		+5.0000000000000000000e3
	.float		+5.6000000000000000000e3
	.float		+6.2500000000000000000e3
	.float		+7.0000000000000000000e3
	.float		+1.5999999642372131348e-1
	.float		+3.4600000381469726563
	.float		+5.0000000745058059692e-2
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+0.
	.float		+1.00000000000000000000e2
	.float		+2.0000000000000000000e3
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+0.
	.float		+0.
	.float		+2.0000000000000000000e3
	.float		+4.0000000000000000000e3
	.float		+6.0000000000000000000e3
	.float		+7.0000000000000000000e3
	.float		+7.6000000000000000000e3
	.float		+8.7000000000000000000e3
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+1.0000000000000000000
	.float		+6.9999998807907104492e-1
	.float		+2.0000000298023223877e-1
	.float		+0.
	.float		+2.0000000000000000000e3
	.float		+4.0000000000000000000e3
	.float		+5.0000000000000000000e3
	.float		+6.0000000000000000000e3
	.float		+7.0000000000000000000e3
	.float		+8.9000000000000000000e3
	.long		1
	.long		0
	.long		100000
	.long		0
	.float		+1.5000000000000000000e3
	.float		+1.4000000000000000000e3
	.float		+1.3000000000000000000e3
	.float		+1.2000000000000000000e3
	.float		+1.1000000000000000000e3
	.float		+1.00000000000000000000e3
	.float		+9.0000000000000000000e2
	.float		+8.0000000000000000000e2
	.float		+7.0000000000000000000e2
	.float		+6.0000000000000000000e2
	.float		+5.0000000000000000000e2
	.float		+4.0000000000000000000e2
	.float		+3.0000000000000000000e2
	.float		+2.0000000000000000000e2
	.float		+1.00000000000000000000e2
	.float		+0.
	.float		-1.00000000000000000000e2
	.float		-2.0000000000000000000e2
	.float		-3.0000000000000000000e2
	.float		-4.0000000000000000000e2
	.float		+5.9999998658895492554e-2
	.float		+7.4000000953674316406e-2
	.float		+9.3000002205371856689e-2
	.float		+1.1699999868869781494e-1
	.float		+1.4900000393390655518e-1
	.float		+1.9099999964237213135e-1
	.float		+2.4600000679492950439e-1
	.float		+3.2199999690055847168e-1
	.float		+4.2399999499320983887e-1
	.float		+5.6300002336502075195e-1
	.float		+7.5400000810623168945e-1
	.float		+1.0000000000000000000
	.float		+1.3320000171661376953
	.float		+1.7359999418258666992
	.float		+2.2330000400543212891
	.float		+2.7820000648498535156
	.float		+3.3329999446868896484
	.float		+3.8340001106262207031
	.float		+4.2369999885559082031
	.float		+4.5300002098083496094
	.float		+1.2000000000000000000e2
	.float		+1.1000000000000000000e2
	.float		+1.00000000000000000000e2
	.float		+9.0000000000000000000e1
	.float		+8.0000000000000000000e1
	.float		+7.0000000000000000000e1
	.float		+6.5000000000000000000e1
	.float		+6.0000000000000000000e1
	.float		+5.5000000000000000000e1
	.float		+5.0000000000000000000e1
	.float		+4.5000000000000000000e1
	.float		+4.0000000000000000000e1
	.float		+3.5000000000000000000e1
	.float		+3.0000000000000000000e1
	.float		+2.5000000000000000000e1
	.float		+2.0000000000000000000e1
	.float		+1.00000000000000000000e1
	.float		+0.
	.float		-1.00000000000000000000e1
	.float		-2.0000000000000000000e1
	.float		-4.0000000000000000000e1
	.float		+1.2399999797344207764e-1
	.float		+1.5600000321865081787e-1
	.float		+1.9699999690055847168e-1
	.float		+2.5200000405311584473e-1
	.float		+3.2600000500679016113e-1
	.float		+4.2599999904632568359e-1
	.float		+4.8899999260902404785e-1
	.float		+5.6199997663497924805e-1
	.float		+6.4700001478195190430e-1
	.float		+7.4599999189376831055e-1
	.float		+8.6100000143051147461e-1
	.float		+9.9299997091293334961e-1
	.float		+1.1460000276565551758
	.float		+1.3200000524520874023
	.float		+1.5160000324249267578
	.float		+1.7359999418258666992
	.float		+2.2390000820159912109
	.float		+2.8029999732971191406
	.float		+3.3750000000000000000
	.float		+3.8929998874664306641
	.float		+4.6009998321533203125
	.byte		100
	.byte		0
	.space		2
	.section	.text_vle
#$$ld
.L5:
.L4195:	.d2filenum "ATV.h"
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
	.uleb128	8
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
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
.L4194:
	.sleb128	2
	.byte		0x1
	.4byte		.L4195
	.uleb128	1722
	.byte		"ATV_ConstP"
	.byte		0
	.4byte		.L4196
	.sleb128	5
	.byte		0x3
	.4byte		ATV_ConstP
	.section	.debug_info,,n
	.section	.debug_info,,n
.L4198:
	.sleb128	3
	.4byte		.L4199-.L2
	.uleb128	572
	.section	.debug_info,,n
.L4088:
	.sleb128	4
	.byte		"uDLookupTable_tableData"
	.byte		0
	.4byte		.L4200
	.sleb128	2
	.byte		0x23
	.uleb128	0
.L4089:
	.sleb128	4
	.byte		"uDLookupTable_bp01Data"
	.byte		0
	.4byte		.L4204
	.sleb128	2
	.byte		0x23
	.uleb128	40
.L4090:
	.sleb128	4
	.byte		"uDLookupTable_bp01Data_d"
	.byte		0
	.4byte		.L4206
	.sleb128	2
	.byte		0x23
	.uleb128	80
.L4091:
	.sleb128	4
	.byte		"uDLookupTable_tableData_n"
	.byte		0
	.4byte		.L4208
	.sleb128	2
	.byte		0x23
	.uleb128	88
.L4092:
	.sleb128	4
	.byte		"uDLookupTable_bp01Data_m"
	.byte		0
	.4byte		.L4210
	.sleb128	2
	.byte		0x23
	.uleb128	100
.L4093:
	.sleb128	4
	.byte		"uDLookupTable1_tableData"
	.byte		0
	.4byte		.L4212
	.sleb128	2
	.byte		0x23
	.uleb128	112
.L4094:
	.sleb128	4
	.byte		"uDLookupTable1_bp01Data"
	.byte		0
	.4byte		.L4214
	.sleb128	3
	.byte		0x23
	.uleb128	140
.L4095:
	.sleb128	4
	.byte		"uDLookupTable2_tableData"
	.byte		0
	.4byte		.L4216
	.sleb128	3
	.byte		0x23
	.uleb128	168
.L4096:
	.sleb128	4
	.byte		"uDLookupTable2_bp01Data"
	.byte		0
	.4byte		.L4218
	.sleb128	3
	.byte		0x23
	.uleb128	196
.L4097:
	.sleb128	4
	.byte		"LowerLimit_Value"
	.byte		0
	.4byte		.L4220
	.sleb128	3
	.byte		0x23
	.uleb128	224
.L4098:
	.sleb128	4
	.byte		"UpperLimit_Value"
	.byte		0
	.4byte		.L4220
	.sleb128	3
	.byte		0x23
	.uleb128	232
.L4099:
	.sleb128	4
	.byte		"pooled23"
	.byte		0
	.4byte		.L4222
	.sleb128	3
	.byte		0x23
	.uleb128	240
.L4100:
	.sleb128	4
	.byte		"pooled24"
	.byte		0
	.4byte		.L4225
	.sleb128	3
	.byte		0x23
	.uleb128	320
.L4101:
	.sleb128	4
	.byte		"TensioneTemperatura_tableData"
	.byte		0
	.4byte		.L4227
	.sleb128	3
	.byte		0x23
	.uleb128	400
.L4102:
	.sleb128	4
	.byte		"TensioneTemperatura_bp01Data"
	.byte		0
	.4byte		.L4229
	.sleb128	3
	.byte		0x23
	.uleb128	484
.L4103:
	.sleb128	4
	.byte		"uDLookupTable_tableData_b"
	.byte		0
	.4byte		.L4231
	.sleb128	3
	.byte		0x23
	.uleb128	568
	.sleb128	0
.L4199:
.L4221:
	.sleb128	3
	.4byte		.L4235-.L2
	.uleb128	8
.L1636:
	.sleb128	4
	.byte		"chunks"
	.byte		0
	.4byte		.L4236
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.sleb128	0
.L4235:
	.section	.debug_info,,n
.L4197:
	.sleb128	5
	.byte		"ConstP_ATV_T"
	.byte		0
	.4byte		.L4198
	.section	.debug_info,,n
.L4196:
	.sleb128	6
	.4byte		.L4197
	.section	.debug_info,,n
.L4203:
	.sleb128	7
	.byte		"float"
	.byte		0
	.byte		0x4
	.byte		0x4
.L4202:
	.sleb128	5
	.byte		"real_T"
	.byte		0
	.4byte		.L4203
	.section	.debug_info,,n
.L4200:
	.sleb128	8
	.4byte		.L4201-.L2
	.4byte		.L4202
	.section	.debug_info,,n
	.sleb128	9
	.uleb128	9
	.sleb128	0
.L4201:
.L4204:
	.sleb128	8
	.4byte		.L4205-.L2
	.4byte		.L4202
	.sleb128	9
	.uleb128	9
	.sleb128	0
.L4205:
.L4206:
	.sleb128	8
	.4byte		.L4207-.L2
	.4byte		.L4202
	.sleb128	9
	.uleb128	1
	.sleb128	0
.L4207:
.L4208:
	.sleb128	8
	.4byte		.L4209-.L2
	.4byte		.L4202
	.sleb128	9
	.uleb128	2
	.sleb128	0
.L4209:
.L4210:
	.sleb128	8
	.4byte		.L4211-.L2
	.4byte		.L4202
	.sleb128	9
	.uleb128	2
	.sleb128	0
.L4211:
.L4212:
	.sleb128	8
	.4byte		.L4213-.L2
	.4byte		.L4202
	.sleb128	9
	.uleb128	6
	.sleb128	0
.L4213:
.L4214:
	.sleb128	8
	.4byte		.L4215-.L2
	.4byte		.L4202
	.sleb128	9
	.uleb128	6
	.sleb128	0
.L4215:
.L4216:
	.sleb128	8
	.4byte		.L4217-.L2
	.4byte		.L4202
	.sleb128	9
	.uleb128	6
	.sleb128	0
.L4217:
.L4218:
	.sleb128	8
	.4byte		.L4219-.L2
	.4byte		.L4202
	.sleb128	9
	.uleb128	6
	.sleb128	0
.L4219:
.L4220:
	.sleb128	5
	.byte		"int64m_T"
	.byte		0
	.4byte		.L4221
.L4224:
	.sleb128	5
	.byte		"real32_T"
	.byte		0
	.4byte		.L4203
.L4222:
	.sleb128	8
	.4byte		.L4223-.L2
	.4byte		.L4224
	.sleb128	9
	.uleb128	19
	.sleb128	0
.L4223:
.L4225:
	.sleb128	8
	.4byte		.L4226-.L2
	.4byte		.L4224
	.sleb128	9
	.uleb128	19
	.sleb128	0
.L4226:
.L4227:
	.sleb128	8
	.4byte		.L4228-.L2
	.4byte		.L4224
	.sleb128	9
	.uleb128	20
	.sleb128	0
.L4228:
.L4229:
	.sleb128	8
	.4byte		.L4230-.L2
	.4byte		.L4224
	.sleb128	9
	.uleb128	20
	.sleb128	0
.L4230:
.L4234:
	.sleb128	7
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L4233:
	.sleb128	5
	.byte		"uint8_T"
	.byte		0
	.4byte		.L4234
.L4231:
	.sleb128	8
	.4byte		.L4232-.L2
	.4byte		.L4233
	.sleb128	9
	.uleb128	1
	.sleb128	0
.L4232:
.L4239:
	.sleb128	7
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L4238:
	.sleb128	5
	.byte		"uint32_T"
	.byte		0
	.4byte		.L4239
.L4236:
	.sleb128	8
	.4byte		.L4237-.L2
	.4byte		.L4238
	.sleb128	9
	.uleb128	1
	.sleb128	0
.L4237:
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
	.wrcm.nstr "options", "-ew1551 -ew1792 -ei1827 -Xmake-opt-key=ATV_data.o -Xsingle-fp -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32 -Xaddr-sconst=0x11 -Xbss-common-off -Xdouble-avoid -Xenum-is-int -Xforce-prototypes -Xkeywords=0x08 -Xmin-align=1 -Xpass-source -Xsmall-const=0 -Xstrict-eabi -Xname-const=.cal_sec -Xmake-opt-key=ATV_data.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.7\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32\lib\cderror.cat -Xsingle-fp -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32 -ew1551 -ew1792 -g3 -O -Xaddr-sconst=0x11 -Xbss-common-off -Xdouble-avoid -Xenum-is-int -Xforce-prototypes -Xkeywords=0x08 -Xmin-align=1 -Xpass-source -Xsmall-const=0 -Xstrict-eabi -ei1827 -Xname-const=.cal_sec -Y+C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\cpp/std:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\cpp:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\simple:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include -D__softfp -D__PPC_VLE__ -D__EABI__ -D__BIG_ENDIAN__ -D__ppc -D_SUPPORTS_BUILTIN_PREFETCH -D__SIZEOF_POINTER__=4 -D__CONFIGURE_EMBEDDED=0 -D__CONFIGURE_EXCEPTIONS=1 -D_DIAB_TOOL -D_SUPPORTS_BUILTIN_EXPECT -DCFG_M560 -DCFG_SUB_000 -DMODEL=ATV -DNUMST=5 -DTID01EQ=0 -DNCSTATES=0 -DMT=1 -DMODEL_REF_BUILD=0 -DINT8_T=signed char -DUINT8_T=unsigned char -DINT16_T=signed short -DUINT16_T=unsigned short -DINT32_T=signed long -DUINT32_T=unsigned long -DREAL_T=float -DRT -DREAL_T=float -DUSE_RTMODEL -I. -IC:/openecu/platform/3_2_0_FS_r2022-1/openecu/../targets/M560/M560_000/mpc5746d_lib/include -IC:/PROGRA~1/MATLAB/R2018b/simulink/include -IC:/PROGRA~1/MATLAB/R2018b/extern/include -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/libsrc -IC:/Users/giovanni/OneDrive/Desktop/workspace/Firmware -IC:/Users/giovanni/OneDrive/Desktop/workspace/Firmware/ATV_r2018.2_64_oe_3.2.0_r2022_1_rtmodel -IC:/PROGRA~1/MATLAB/R2018b/extern/include -IC:/PROGRA~1/MATLAB/R2018b/simulink/include -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src/ext_mode/common"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "ATV_data.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
