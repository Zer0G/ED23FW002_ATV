#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 0		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1
	.file		"rt_sim.c"
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
# const char *rt_SimInitTimingEngine(int_T       rtmNumSampTimes,
#                                    real_T      rtmStepSize,
#                                    real_T      *rtmSampleTimePtr,
#                                    real_T      *rtmOffsetTimePtr,
#                                    int_T       *rtmSampleHitPtr,
#                                    int_T       *rtmSampleTimeTaskIDPtr,
#                                    real_T      rtmTStart,
#                                    SimTimeStep *rtmSimTimeStepPtr,
#                                    void        **rtmTimingDataPtr)
# {
	.align		2
	.section	.text_vle
	.d2file		"C:/PROGRA~1/MATLAB/R2018b/rtw/c/src/rt_sim.c"
        .d2line         96
#$$ld
.L311:

#$$bf	rt_SimInitTimingEngine,interprocedural

# Regs written: r1,r3,cr1,spefscr
	.globl		rt_SimInitTimingEngine
	.d2_cfa_start __cie
rt_SimInitTimingEngine:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	.d2prologue_end
	diab.li		r3,0
	efscmpeq		1,r9,r3		# rtmTStart=r9
	bc		0,5,.L331		# ne
	b		.L332
.L331:
	lis		r3,.L333@ha
	e_add16i		r3,r3,.L333@l
.L332:
# #ifdef USE_RTMODEL
# 
#     /* In the USE_RTMODEL case this function does nothing */
# 
#     UNUSED_PARAMETER(rtmNumSampTimes);
#     UNUSED_PARAMETER(rtmStepSize); 
#     UNUSED_PARAMETER(rtmSampleTimePtr);
#     UNUSED_PARAMETER(rtmOffsetTimePtr);
#     UNUSED_PARAMETER(rtmSampleHitPtr);
#     UNUSED_PARAMETER(rtmSampleTimeTaskIDPtr);
#     UNUSED_PARAMETER(rtmSimTimeStepPtr);
#     UNUSED_PARAMETER(rtmTimingDataPtr);
# 
#     if (rtmTStart != 0.0) {
#         return("Start time must be zero for real-time systems.  For non-zero start times you must use the Simulink solver module");
#     } else {
#         return(NULL);
#     }
# 
# #else /* must be !USE_RTMODEL */
# 
#     int_T     i;
#     int       *tsMap     = rtmSampleTimeTaskIDPtr;
#     real_T    *period    = rtmSampleTimePtr;
#     real_T    *offset    = rtmOffsetTimePtr;
#     int_T     *sampleHit = rtmSampleHitPtr;
#     real_T    stepSize   = rtmStepSize;
# 
# #ifdef RT_MALLOC
# 
#     int_T numst = rtmNumSampTimes;
# 
#     /* In the dynamically allocated case, we allocate the data here */
#     static const char_T *malloc_error;
#     TimingData *td;
#     malloc_error = "Memory allocation error";
#     td = (TimingData *) malloc(sizeof(TimingData));
#     if (!td) {
#         return(malloc_error);
#     }
# 
#     td->period = (real_T *) malloc(numst * sizeof(real_T));
#     if (!td->period) {
#         return(malloc_error);
#     }
# 
#     td->offset = (real_T *) malloc(numst * sizeof(real_T));
#     if (!td->offset) {
#         return(malloc_error);
#     }
# 
#     td->clockTick = (real_T *) malloc(numst * sizeof(real_T));
#     if (!td->clockTick) {
#         return(malloc_error);
#     }
# 
#     td->taskTick = (int_T *) malloc(numst * sizeof(int_T));
#     if (!td->taskTick) {
#         return(malloc_error);
#     }
# 
#     td->nTaskTicks = (int_T *) malloc(numst * sizeof(int_T));
#     if (!td->nTaskTicks) {
#         return(malloc_error);
#     }
#     if (rtmTStart != 0.0) {
#         return("Start time must be zero for real-time systems.  For non-zero start times you must use the Simulink solver module");
#     }
# 
# #else /* must be !RT_MALLOC */
# 
#     /* In the statically allocated case, we point to the static structure */
#     TimingData *td;
#     td = &td_struct;
# 
#     /* Also, we use the constant NUMST instead of what was passed in */
#     rtmNumSampTimes = NUMST; 
# 
# #endif /* !RT_MALLOC */
# 
#     if (rtmTStart != 0.0) {
#         return("Start time must be zero for real-time systems.  For non-zero start times you must use the Simulink solver module");
#     }
# 
#     *rtmSimTimeStepPtr = MAJOR_TIME_STEP;
# 
#     *rtmTimingDataPtr = (void*)&td;
# 
#     for (i = 0; i < rtmNumSampTimes; i++) {
#         tsMap[i]         = i;
#         td->period[i]     = period[i];
#         td->offset[i]     = offset[i];
#         td->nTaskTicks[i] = (int_T)floor(period[i]/stepSize + 0.5);
#         if (td->period[i] == CONTINUOUS_SAMPLE_TIME ||
#             td->offset[i] == 0.0) {
#             td->taskTick[i]  = 0;
#             td->clockTick[i] = 0.0;
#             sampleHit[i]    = 1;
#         } else {
#             td->taskTick[i]  = (int_T)floor((td->period[i]-td->offset[i]) /
#                                             stepSize+0.5);
#             td->clockTick[i] = -1.0;
#             sampleHit[i]    = 0;
#         }
#     }
# 
#     /* Correct first sample time if continuous task */
#     td->period[0]     = stepSize;
#     td->nTaskTicks[0] = 1; 
# 
#     /* Set first discrete task index */
#     if (rtmNumSampTimes == 1)
#         td->firstDiscIdx = (int_T)(period[0] == CONTINUOUS_SAMPLE_TIME);
#     else
#         td->firstDiscIdx = ((int_T)(period[0] == CONTINUOUS_SAMPLE_TIME) + 
#                           (int_T)(period[1] == CONTINUOUS_SAMPLE_TIME));
# 
#     return(NULL); /* success */
# 
# #endif /* ! USE_RTMODEL case */
# 
# } /* end rt_SimInitTimingEngine */
	.d2line		218
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo2:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L312:
	.type		rt_SimInitTimingEngine,@function
	.size		rt_SimInitTimingEngine,.-rt_SimInitTimingEngine
# Number of nodes = 8

# Allocations for rt_SimInitTimingEngine
#	not allocated	rtmNumSampTimes
#	not allocated	rtmStepSize
#	not allocated	rtmSampleTimePtr
#	not allocated	rtmOffsetTimePtr
#	not allocated	rtmSampleHitPtr
#	not allocated	rtmSampleTimeTaskIDPtr
#	?a4		rtmTStart
#	not allocated	rtmSimTimeStepPtr
#	not allocated	rtmTimingDataPtr
# void rt_SimUpdateDiscreteTaskTime(real_T *rtmTPtr,
#                                   void   *rtmTimingData,
#                                   int    tid)
# {
	.align		2
	.section	.text_vle
        .d2line         505
#$$ld
.L336:

#$$bf	rt_SimUpdateDiscreteTaskTime,interprocedural,nostackparams

# Regs written: 
	.globl		rt_SimUpdateDiscreteTaskTime
	.d2_cfa_start __cie
rt_SimUpdateDiscreteTaskTime:
	.d2line		0
	.d2prologue_end
# #ifdef USE_RTMODEL
#     /* This function is a no-op in USE_RTMODEL */
#     UNUSED_PARAMETER(rtmTPtr);
#     UNUSED_PARAMETER(rtmTimingData);
#     UNUSED_PARAMETER(tid);
#     return;
# 
# #else /* must be !USE_RTMODEL */
# 
# #ifdef RT_MALLOC
#     TimingData *td;
#     td = (TimingData *)rtmTimingData;
# #else
#     TimingData *td;
#     UNUSED_PARAMETER(rtmTimingData);
#     td = &td_struct;
# #endif
#     rttiSetTaskTime(rtmTPtr, tid,
#                     td->clockTick[tid]*td->period[tid] + td->offset[tid]);
# 
# #endif /* !USE_RTMODEL */
# }
	.d2line		527
	.d2epilogue_begin
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L337:
	.type		rt_SimUpdateDiscreteTaskTime,@function
	.size		rt_SimUpdateDiscreteTaskTime,.-rt_SimUpdateDiscreteTaskTime
# Number of nodes = 0

# Allocations for rt_SimUpdateDiscreteTaskTime
#	not allocated	rtmTPtr
#	not allocated	rtmTimingData
#	not allocated	tid

# Allocations for module
	.section	.text_vle
	.align		2
.L333:
	.byte		83,116,97,114,116,32,116,105,109,101,32,109,117,115,116,32
	.byte		98,101,32,122,101,114,111,32,102,111,114,32,114,101,97,108
	.byte		45,116,105,109,101,32,115,121,115,116,101,109,115,46,32,32
	.byte		70,111,114,32,110,111,110,45,122,101,114,111,32,115,116,97
	.byte		114,116,32,116,105,109,101,115,32,121,111,117,32,109,117,115
	.byte		116,32,117,115,101,32,116,104,101,32,83,105,109,117,108,105
	.byte		110,107,32,115,111,108,118,101,114,32,109,111,100,117,108,101
	.byte		0
	.section	.text_vle
#$$ld
.L5:
.L313:	.d2filenum "C:/PROGRA~1/MATLAB/R2018b/rtw/c/src/rt_sim.c"
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
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	4
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
	.uleb128	5
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
	.uleb128	6
	.uleb128	4
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
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
	.uleb128	9
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.uleb128	12
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.byte		"C:/PROGRA~1/MATLAB/R2018b/rtw/c/src/rt_sim.c"
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
.L317:
	.sleb128	2
	.4byte		.L310-.L2
	.byte		"rt_SimInitTimingEngine"
	.byte		0
	.4byte		.L313
	.uleb128	87
	.4byte		.L314
	.byte		0x1
	.byte		0x1
	.4byte		.L311
	.4byte		.L312
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L313
	.uleb128	87
	.byte		"rtmNumSampTimes"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	3
	.4byte		.L313
	.uleb128	88
	.byte		"rtmStepSize"
	.byte		0
	.4byte		.L320
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	3
	.4byte		.L313
	.uleb128	89
	.byte		"rtmSampleTimePtr"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.sleb128	3
	.4byte		.L313
	.uleb128	90
	.byte		"rtmOffsetTimePtr"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x90
	.uleb128	6
	.sleb128	3
	.4byte		.L313
	.uleb128	91
	.byte		"rtmSampleHitPtr"
	.byte		0
	.4byte		.L323
	.sleb128	2
	.byte		0x90
	.uleb128	7
	.sleb128	3
	.4byte		.L313
	.uleb128	92
	.byte		"rtmSampleTimeTaskIDPtr"
	.byte		0
	.4byte		.L323
	.sleb128	2
	.byte		0x90
	.uleb128	8
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L313
	.uleb128	93
	.byte		"rtmTStart"
	.byte		0
	.4byte		.L320
	.4byte		.L324
	.sleb128	3
	.4byte		.L313
	.uleb128	94
	.byte		"rtmSimTimeStepPtr"
	.byte		0
	.4byte		.L325
	.sleb128	2
	.byte		0x90
	.uleb128	10
	.sleb128	3
	.4byte		.L313
	.uleb128	95
	.byte		"rtmTimingDataPtr"
	.byte		0
	.4byte		.L328
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	24
	.section	.debug_info,,n
	.sleb128	0
.L310:
	.section	.debug_info,,n
.L338:
	.sleb128	5
	.4byte		.L335-.L2
	.byte		"rt_SimUpdateDiscreteTaskTime"
	.byte		0
	.4byte		.L313
	.uleb128	502
	.byte		0x1
	.byte		0x1
	.4byte		.L336
	.4byte		.L337
	.sleb128	3
	.4byte		.L313
	.uleb128	502
	.byte		"rtmTPtr"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	3
	.4byte		.L313
	.uleb128	503
	.byte		"rtmTimingData"
	.byte		0
	.4byte		.L329
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	3
	.4byte		.L313
	.uleb128	504
	.byte		"tid"
	.byte		0
	.4byte		.L319
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.section	.debug_info,,n
	.sleb128	0
.L335:
	.section	.debug_info,,n
.L327:
	.sleb128	6
	.4byte		.L339-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"MINOR_TIME_STEP"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"MAJOR_TIME_STEP"
	.byte		0
	.sleb128	1
	.sleb128	0
.L339:
	.section	.debug_info,,n
.L316:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L315:
	.sleb128	9
	.4byte		.L316
	.section	.debug_info,,n
.L314:
	.sleb128	10
	.4byte		.L315
.L319:
	.sleb128	8
	.byte		"int"
	.byte		0
	.byte		0x5
	.byte		0x4
	.section	.debug_info,,n
.L318:
	.sleb128	11
	.byte		"int_T"
	.byte		0
	.4byte		.L319
.L321:
	.sleb128	8
	.byte		"float"
	.byte		0
	.byte		0x4
	.byte		0x4
.L320:
	.sleb128	11
	.byte		"real_T"
	.byte		0
	.4byte		.L321
.L322:
	.sleb128	10
	.4byte		.L320
.L323:
	.sleb128	10
	.4byte		.L318
.L326:
	.sleb128	11
	.byte		"SimTimeStep"
	.byte		0
	.4byte		.L327
.L325:
	.sleb128	10
	.4byte		.L326
	.section	.debug_info,,n
.L330:
	.sleb128	12
	.byte		"void"
	.byte		0
	.byte		0x0
.L329:
	.sleb128	10
	.4byte		.L330
.L328:
	.sleb128	10
	.4byte		.L329
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L324:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),9
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "rt_SimUpdateDiscreteTaskTime"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "rt_SimInitTimingEngine"
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
	.wrcm.nstr "options", "-ew1551 -ew1792 -ei1827 -Xmake-opt-key=rt_sim.o -Xsingle-fp -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32 -Xaddr-sconst=0x11 -Xbss-common-off -Xdouble-avoid -Xenum-is-int -Xforce-prototypes -Xkeywords=0x08 -Xmin-align=1 -Xpass-source -Xsmall-const=0 -Xstrict-eabi -Xmake-opt-key=rt_sim.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.7\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32\lib\cderror.cat -Xsingle-fp -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\WIN32 -ew1551 -ew1792 -g3 -O -Xaddr-sconst=0x11 -Xbss-common-off -Xdouble-avoid -Xenum-is-int -Xforce-prototypes -Xkeywords=0x08 -Xmin-align=1 -Xpass-source -Xsmall-const=0 -Xstrict-eabi -ei1827 -Y+C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\cpp/std:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\cpp:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include\simple:C:\WINDRI~1\COMPIL~1\DIAB-5~1.7\include -D__softfp -D__PPC_VLE__ -D__EABI__ -D__BIG_ENDIAN__ -D__ppc -D_SUPPORTS_BUILTIN_PREFETCH -D__SIZEOF_POINTER__=4 -D__CONFIGURE_EMBEDDED=0 -D__CONFIGURE_EXCEPTIONS=1 -D_DIAB_TOOL -D_SUPPORTS_BUILTIN_EXPECT -DMODEL=ATV -DNUMST=3 -DTID01EQ=0 -DNCSTATES=0 -DMT=1 -DMODEL_REF_BUILD=0 -DINT8_T=signed char -DUINT8_T=unsigned char -DINT16_T=signed short -DUINT16_T=unsigned short -DINT32_T=signed long -DUINT32_T=unsigned long -DREAL_T=float -DRT -DREAL_T=float -DUSE_RTMODEL -I. -IC:\Users\giovanni\OneDrive\Desktop\workspace\Firmware -IC:\Users\giovanni\OneDrive\Desktop\workspace\Firmware\ATV_r2018.2_64_oe_3.2.0_r2022_1_rtmodel -IC:/PROGRA~1/MATLAB/R2018b\extern\include -IC:/PROGRA~1/MATLAB/R2018b\simulink\include -IC:/PROGRA~1/MATLAB/R2018b\rtw\c\src -IC:/PROGRA~1/MATLAB/R2018b\rtw\c\src\ext_mode\common -IC:/PROGRA~1/MATLAB/R2018b/simulink/include -IC:/PROGRA~1/MATLAB/R2018b/extern/include -IC:/PROGRA~1/MATLAB/R2018b/rtw/c/src"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "C:/PROGRA~1/MATLAB/R2018b/rtw/c/src/rt_sim.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
