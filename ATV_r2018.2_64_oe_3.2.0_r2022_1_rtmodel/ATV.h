/*
 * ATV.h
 *
 * Code generation for model "ATV".
 *
 * Model version              : 6.151
 * Simulink Coder version : 9.0 (R2018b) 24-May-2018
 * C source code generated on : Wed Apr 26 22:21:58 2023
 *
 * Target selection: openecu_grt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Freescale->32-bit PowerPC
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_ATV_h_
#define RTW_HEADER_ATV_h_
#include <math.h>
#include <string.h>
#ifndef ATV_COMMON_INCLUDES_
# define ATV_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "zero_crossing_types.h"
#include "simstruc.h"
#include "fixedpoint.h"
#endif                                 /* ATV_COMMON_INCLUDES_ */

#include "ATV_types.h"

/* Shared type includes */
#include "multiword_types.h"
#include "rt_nonfinite.h"
#include "rt_defines.h"

/* Include all OpenECU platform headers. */
#include "openecu.h"

/* Include all auto-generated platform headers. */
#include "ATV_api.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetBlockIO
# define rtmGetBlockIO(rtm)            ((rtm)->blockIO)
#endif

#ifndef rtmSetBlockIO
# define rtmSetBlockIO(rtm, val)       ((rtm)->blockIO = (val))
#endif

#ifndef rtmGetChecksums
# define rtmGetChecksums(rtm)          ((rtm)->Sizes.checksums)
#endif

#ifndef rtmSetChecksums
# define rtmSetChecksums(rtm, val)     ((rtm)->Sizes.checksums = (val))
#endif

#ifndef rtmGetConstBlockIO
# define rtmGetConstBlockIO(rtm)       ((rtm)->constBlockIO)
#endif

#ifndef rtmSetConstBlockIO
# define rtmSetConstBlockIO(rtm, val)  ((rtm)->constBlockIO = (val))
#endif

#ifndef rtmGetContStateDisabled
# define rtmGetContStateDisabled(rtm)  ((rtm)->contStateDisabled)
#endif

#ifndef rtmSetContStateDisabled
# define rtmSetContStateDisabled(rtm, val) ((rtm)->contStateDisabled = (val))
#endif

#ifndef rtmGetContStates
# define rtmGetContStates(rtm)         ((rtm)->contStates)
#endif

#ifndef rtmSetContStates
# define rtmSetContStates(rtm, val)    ((rtm)->contStates = (val))
#endif

#ifndef rtmGetContTimeOutputInconsistentWithStateAtMajorStepFlag
# define rtmGetContTimeOutputInconsistentWithStateAtMajorStepFlag(rtm) ((rtm)->CTOutputIncnstWithState)
#endif

#ifndef rtmSetContTimeOutputInconsistentWithStateAtMajorStepFlag
# define rtmSetContTimeOutputInconsistentWithStateAtMajorStepFlag(rtm, val) ((rtm)->CTOutputIncnstWithState = (val))
#endif

#ifndef rtmGetCtrlRateMdlRefTiming
# define rtmGetCtrlRateMdlRefTiming(rtm) ()
#endif

#ifndef rtmSetCtrlRateMdlRefTiming
# define rtmSetCtrlRateMdlRefTiming(rtm, val) ()
#endif

#ifndef rtmGetCtrlRateMdlRefTimingPtr
# define rtmGetCtrlRateMdlRefTimingPtr(rtm) ()
#endif

#ifndef rtmSetCtrlRateMdlRefTimingPtr
# define rtmSetCtrlRateMdlRefTimingPtr(rtm, val) ()
#endif

#ifndef rtmGetCtrlRateNumTicksToNextHit
# define rtmGetCtrlRateNumTicksToNextHit(rtm) ()
#endif

#ifndef rtmSetCtrlRateNumTicksToNextHit
# define rtmSetCtrlRateNumTicksToNextHit(rtm, val) ()
#endif

#ifndef rtmGetDataMapInfo
# define rtmGetDataMapInfo(rtm)        ()
#endif

#ifndef rtmSetDataMapInfo
# define rtmSetDataMapInfo(rtm, val)   ()
#endif

#ifndef rtmGetDefaultParam
# define rtmGetDefaultParam(rtm)       ((rtm)->defaultParam)
#endif

#ifndef rtmSetDefaultParam
# define rtmSetDefaultParam(rtm, val)  ((rtm)->defaultParam = (val))
#endif

#ifndef rtmGetDerivCacheNeedsReset
# define rtmGetDerivCacheNeedsReset(rtm) ((rtm)->derivCacheNeedsReset)
#endif

#ifndef rtmSetDerivCacheNeedsReset
# define rtmSetDerivCacheNeedsReset(rtm, val) ((rtm)->derivCacheNeedsReset = (val))
#endif

#ifndef rtmGetDirectFeedThrough
# define rtmGetDirectFeedThrough(rtm)  ((rtm)->Sizes.sysDirFeedThru)
#endif

#ifndef rtmSetDirectFeedThrough
# define rtmSetDirectFeedThrough(rtm, val) ((rtm)->Sizes.sysDirFeedThru = (val))
#endif

#ifndef rtmGetErrorStatusFlag
# define rtmGetErrorStatusFlag(rtm)    ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatusFlag
# define rtmSetErrorStatusFlag(rtm, val) ((rtm)->errorStatus = (val))
#endif

#ifndef rtmGetFinalTime
# define rtmGetFinalTime(rtm)          ((rtm)->Timing.tFinal)
#endif

#ifndef rtmSetFinalTime
# define rtmSetFinalTime(rtm, val)     ((rtm)->Timing.tFinal = (val))
#endif

#ifndef rtmGetFirstInitCondFlag
# define rtmGetFirstInitCondFlag(rtm)  ()
#endif

#ifndef rtmSetFirstInitCondFlag
# define rtmSetFirstInitCondFlag(rtm, val) ()
#endif

#ifndef rtmGetIntgData
# define rtmGetIntgData(rtm)           ()
#endif

#ifndef rtmSetIntgData
# define rtmSetIntgData(rtm, val)      ()
#endif

#ifndef rtmGetMdlRefGlobalTID
# define rtmGetMdlRefGlobalTID(rtm)    ()
#endif

#ifndef rtmSetMdlRefGlobalTID
# define rtmSetMdlRefGlobalTID(rtm, val) ()
#endif

#ifndef rtmGetMdlRefTriggerTID
# define rtmGetMdlRefTriggerTID(rtm)   ()
#endif

#ifndef rtmSetMdlRefTriggerTID
# define rtmSetMdlRefTriggerTID(rtm, val) ()
#endif

#ifndef rtmGetModelMappingInfo
# define rtmGetModelMappingInfo(rtm)   ((rtm)->SpecialInfo.mappingInfo)
#endif

#ifndef rtmSetModelMappingInfo
# define rtmSetModelMappingInfo(rtm, val) ((rtm)->SpecialInfo.mappingInfo = (val))
#endif

#ifndef rtmGetModelName
# define rtmGetModelName(rtm)          ((rtm)->modelName)
#endif

#ifndef rtmSetModelName
# define rtmSetModelName(rtm, val)     ((rtm)->modelName = (val))
#endif

#ifndef rtmGetNonInlinedSFcns
# define rtmGetNonInlinedSFcns(rtm)    ()
#endif

#ifndef rtmSetNonInlinedSFcns
# define rtmSetNonInlinedSFcns(rtm, val) ()
#endif

#ifndef rtmGetNumBlockIO
# define rtmGetNumBlockIO(rtm)         ((rtm)->Sizes.numBlockIO)
#endif

#ifndef rtmSetNumBlockIO
# define rtmSetNumBlockIO(rtm, val)    ((rtm)->Sizes.numBlockIO = (val))
#endif

#ifndef rtmGetNumBlockParams
# define rtmGetNumBlockParams(rtm)     ((rtm)->Sizes.numBlockPrms)
#endif

#ifndef rtmSetNumBlockParams
# define rtmSetNumBlockParams(rtm, val) ((rtm)->Sizes.numBlockPrms = (val))
#endif

#ifndef rtmGetNumBlocks
# define rtmGetNumBlocks(rtm)          ((rtm)->Sizes.numBlocks)
#endif

#ifndef rtmSetNumBlocks
# define rtmSetNumBlocks(rtm, val)     ((rtm)->Sizes.numBlocks = (val))
#endif

#ifndef rtmGetNumContStates
# define rtmGetNumContStates(rtm)      ((rtm)->Sizes.numContStates)
#endif

#ifndef rtmSetNumContStates
# define rtmSetNumContStates(rtm, val) ((rtm)->Sizes.numContStates = (val))
#endif

#ifndef rtmGetNumDWork
# define rtmGetNumDWork(rtm)           ((rtm)->Sizes.numDwork)
#endif

#ifndef rtmSetNumDWork
# define rtmSetNumDWork(rtm, val)      ((rtm)->Sizes.numDwork = (val))
#endif

#ifndef rtmGetNumInputPorts
# define rtmGetNumInputPorts(rtm)      ((rtm)->Sizes.numIports)
#endif

#ifndef rtmSetNumInputPorts
# define rtmSetNumInputPorts(rtm, val) ((rtm)->Sizes.numIports = (val))
#endif

#ifndef rtmGetNumNonSampledZCs
# define rtmGetNumNonSampledZCs(rtm)   ((rtm)->Sizes.numNonSampZCs)
#endif

#ifndef rtmSetNumNonSampledZCs
# define rtmSetNumNonSampledZCs(rtm, val) ((rtm)->Sizes.numNonSampZCs = (val))
#endif

#ifndef rtmGetNumOutputPorts
# define rtmGetNumOutputPorts(rtm)     ((rtm)->Sizes.numOports)
#endif

#ifndef rtmSetNumOutputPorts
# define rtmSetNumOutputPorts(rtm, val) ((rtm)->Sizes.numOports = (val))
#endif

#ifndef rtmGetNumPeriodicContStates
# define rtmGetNumPeriodicContStates(rtm) ((rtm)->Sizes.numPeriodicContStates)
#endif

#ifndef rtmSetNumPeriodicContStates
# define rtmSetNumPeriodicContStates(rtm, val) ((rtm)->Sizes.numPeriodicContStates = (val))
#endif

#ifndef rtmGetNumSFcnParams
# define rtmGetNumSFcnParams(rtm)      ((rtm)->Sizes.numSFcnPrms)
#endif

#ifndef rtmSetNumSFcnParams
# define rtmSetNumSFcnParams(rtm, val) ((rtm)->Sizes.numSFcnPrms = (val))
#endif

#ifndef rtmGetNumSFunctions
# define rtmGetNumSFunctions(rtm)      ((rtm)->Sizes.numSFcns)
#endif

#ifndef rtmSetNumSFunctions
# define rtmSetNumSFunctions(rtm, val) ((rtm)->Sizes.numSFcns = (val))
#endif

#ifndef rtmGetNumSampleTimes
# define rtmGetNumSampleTimes(rtm)     ((rtm)->Sizes.numSampTimes)
#endif

#ifndef rtmSetNumSampleTimes
# define rtmSetNumSampleTimes(rtm, val) ((rtm)->Sizes.numSampTimes = (val))
#endif

#ifndef rtmGetNumU
# define rtmGetNumU(rtm)               ((rtm)->Sizes.numU)
#endif

#ifndef rtmSetNumU
# define rtmSetNumU(rtm, val)          ((rtm)->Sizes.numU = (val))
#endif

#ifndef rtmGetNumY
# define rtmGetNumY(rtm)               ((rtm)->Sizes.numY)
#endif

#ifndef rtmSetNumY
# define rtmSetNumY(rtm, val)          ((rtm)->Sizes.numY = (val))
#endif

#ifndef rtmGetOdeF
# define rtmGetOdeF(rtm)               ()
#endif

#ifndef rtmSetOdeF
# define rtmSetOdeF(rtm, val)          ()
#endif

#ifndef rtmGetOdeY
# define rtmGetOdeY(rtm)               ()
#endif

#ifndef rtmSetOdeY
# define rtmSetOdeY(rtm, val)          ()
#endif

#ifndef rtmGetOffsetTimeArray
# define rtmGetOffsetTimeArray(rtm)    ((rtm)->Timing.offsetTimesArray)
#endif

#ifndef rtmSetOffsetTimeArray
# define rtmSetOffsetTimeArray(rtm, val) ((rtm)->Timing.offsetTimesArray = (val))
#endif

#ifndef rtmGetOffsetTimePtr
# define rtmGetOffsetTimePtr(rtm)      ((rtm)->Timing.offsetTimes)
#endif

#ifndef rtmSetOffsetTimePtr
# define rtmSetOffsetTimePtr(rtm, val) ((rtm)->Timing.offsetTimes = (val))
#endif

#ifndef rtmGetOptions
# define rtmGetOptions(rtm)            ((rtm)->Sizes.options)
#endif

#ifndef rtmSetOptions
# define rtmSetOptions(rtm, val)       ((rtm)->Sizes.options = (val))
#endif

#ifndef rtmGetParamIsMalloced
# define rtmGetParamIsMalloced(rtm)    ()
#endif

#ifndef rtmSetParamIsMalloced
# define rtmSetParamIsMalloced(rtm, val) ()
#endif

#ifndef rtmGetPath
# define rtmGetPath(rtm)               ((rtm)->path)
#endif

#ifndef rtmSetPath
# define rtmSetPath(rtm, val)          ((rtm)->path = (val))
#endif

#ifndef rtmGetPerTaskSampleHits
# define rtmGetPerTaskSampleHits(rtm)  ((rtm)->Timing.RateInteraction)
#endif

#ifndef rtmSetPerTaskSampleHits
# define rtmSetPerTaskSampleHits(rtm, val) ((rtm)->Timing.RateInteraction = (val))
#endif

#ifndef rtmGetPerTaskSampleHitsArray
# define rtmGetPerTaskSampleHitsArray(rtm) ((rtm)->Timing.perTaskSampleHitsArray)
#endif

#ifndef rtmSetPerTaskSampleHitsArray
# define rtmSetPerTaskSampleHitsArray(rtm, val) ((rtm)->Timing.perTaskSampleHitsArray = (val))
#endif

#ifndef rtmGetPerTaskSampleHitsPtr
# define rtmGetPerTaskSampleHitsPtr(rtm) ((rtm)->Timing.perTaskSampleHits)
#endif

#ifndef rtmSetPerTaskSampleHitsPtr
# define rtmSetPerTaskSampleHitsPtr(rtm, val) ((rtm)->Timing.perTaskSampleHits = (val))
#endif

#ifndef rtmGetPeriodicContStateIndices
# define rtmGetPeriodicContStateIndices(rtm) ((rtm)->periodicContStateIndices)
#endif

#ifndef rtmSetPeriodicContStateIndices
# define rtmSetPeriodicContStateIndices(rtm, val) ((rtm)->periodicContStateIndices = (val))
#endif

#ifndef rtmGetPeriodicContStateRanges
# define rtmGetPeriodicContStateRanges(rtm) ((rtm)->periodicContStateRanges)
#endif

#ifndef rtmSetPeriodicContStateRanges
# define rtmSetPeriodicContStateRanges(rtm, val) ((rtm)->periodicContStateRanges = (val))
#endif

#ifndef rtmGetPrevZCSigState
# define rtmGetPrevZCSigState(rtm)     ((rtm)->prevZCSigState)
#endif

#ifndef rtmSetPrevZCSigState
# define rtmSetPrevZCSigState(rtm, val) ((rtm)->prevZCSigState = (val))
#endif

#ifndef rtmGetRTWExtModeInfo
# define rtmGetRTWExtModeInfo(rtm)     ((rtm)->extModeInfo)
#endif

#ifndef rtmSetRTWExtModeInfo
# define rtmSetRTWExtModeInfo(rtm, val) ((rtm)->extModeInfo = (val))
#endif

#ifndef rtmGetRTWGeneratedSFcn
# define rtmGetRTWGeneratedSFcn(rtm)   ((rtm)->Sizes.rtwGenSfcn)
#endif

#ifndef rtmSetRTWGeneratedSFcn
# define rtmSetRTWGeneratedSFcn(rtm, val) ((rtm)->Sizes.rtwGenSfcn = (val))
#endif

#ifndef rtmGetRTWLogInfo
# define rtmGetRTWLogInfo(rtm)         ()
#endif

#ifndef rtmSetRTWLogInfo
# define rtmSetRTWLogInfo(rtm, val)    ()
#endif

#ifndef rtmGetRTWRTModelMethodsInfo
# define rtmGetRTWRTModelMethodsInfo(rtm) ()
#endif

#ifndef rtmSetRTWRTModelMethodsInfo
# define rtmSetRTWRTModelMethodsInfo(rtm, val) ()
#endif

#ifndef rtmGetRTWSfcnInfo
# define rtmGetRTWSfcnInfo(rtm)        ((rtm)->sfcnInfo)
#endif

#ifndef rtmSetRTWSfcnInfo
# define rtmSetRTWSfcnInfo(rtm, val)   ((rtm)->sfcnInfo = (val))
#endif

#ifndef rtmGetRTWSolverInfo
# define rtmGetRTWSolverInfo(rtm)      ((rtm)->solverInfo)
#endif

#ifndef rtmSetRTWSolverInfo
# define rtmSetRTWSolverInfo(rtm, val) ((rtm)->solverInfo = (val))
#endif

#ifndef rtmGetRTWSolverInfoPtr
# define rtmGetRTWSolverInfoPtr(rtm)   ((rtm)->solverInfoPtr)
#endif

#ifndef rtmSetRTWSolverInfoPtr
# define rtmSetRTWSolverInfoPtr(rtm, val) ((rtm)->solverInfoPtr = (val))
#endif

#ifndef rtmGetReservedForXPC
# define rtmGetReservedForXPC(rtm)     ((rtm)->SpecialInfo.xpcData)
#endif

#ifndef rtmSetReservedForXPC
# define rtmSetReservedForXPC(rtm, val) ((rtm)->SpecialInfo.xpcData = (val))
#endif

#ifndef rtmGetRootDWork
# define rtmGetRootDWork(rtm)          ((rtm)->dwork)
#endif

#ifndef rtmSetRootDWork
# define rtmSetRootDWork(rtm, val)     ((rtm)->dwork = (val))
#endif

#ifndef rtmGetSFunctions
# define rtmGetSFunctions(rtm)         ((rtm)->childSfunctions)
#endif

#ifndef rtmSetSFunctions
# define rtmSetSFunctions(rtm, val)    ((rtm)->childSfunctions = (val))
#endif

#ifndef rtmGetSampleHitArray
# define rtmGetSampleHitArray(rtm)     ((rtm)->Timing.sampleHitArray)
#endif

#ifndef rtmSetSampleHitArray
# define rtmSetSampleHitArray(rtm, val) ((rtm)->Timing.sampleHitArray = (val))
#endif

#ifndef rtmGetSampleHitPtr
# define rtmGetSampleHitPtr(rtm)       ((rtm)->Timing.sampleHits)
#endif

#ifndef rtmSetSampleHitPtr
# define rtmSetSampleHitPtr(rtm, val)  ((rtm)->Timing.sampleHits = (val))
#endif

#ifndef rtmGetSampleTimeArray
# define rtmGetSampleTimeArray(rtm)    ((rtm)->Timing.sampleTimesArray)
#endif

#ifndef rtmSetSampleTimeArray
# define rtmSetSampleTimeArray(rtm, val) ((rtm)->Timing.sampleTimesArray = (val))
#endif

#ifndef rtmGetSampleTimePtr
# define rtmGetSampleTimePtr(rtm)      ((rtm)->Timing.sampleTimes)
#endif

#ifndef rtmSetSampleTimePtr
# define rtmSetSampleTimePtr(rtm, val) ((rtm)->Timing.sampleTimes = (val))
#endif

#ifndef rtmGetSampleTimeTaskIDArray
# define rtmGetSampleTimeTaskIDArray(rtm) ((rtm)->Timing.sampleTimeTaskIDArray)
#endif

#ifndef rtmSetSampleTimeTaskIDArray
# define rtmSetSampleTimeTaskIDArray(rtm, val) ((rtm)->Timing.sampleTimeTaskIDArray = (val))
#endif

#ifndef rtmGetSampleTimeTaskIDPtr
# define rtmGetSampleTimeTaskIDPtr(rtm) ((rtm)->Timing.sampleTimeTaskIDPtr)
#endif

#ifndef rtmSetSampleTimeTaskIDPtr
# define rtmSetSampleTimeTaskIDPtr(rtm, val) ((rtm)->Timing.sampleTimeTaskIDPtr = (val))
#endif

#ifndef rtmGetSelf
# define rtmGetSelf(rtm)               ()
#endif

#ifndef rtmSetSelf
# define rtmSetSelf(rtm, val)          ()
#endif

#ifndef rtmGetSimMode
# define rtmGetSimMode(rtm)            ((rtm)->simMode)
#endif

#ifndef rtmSetSimMode
# define rtmSetSimMode(rtm, val)       ((rtm)->simMode = (val))
#endif

#ifndef rtmGetSimTimeStep
# define rtmGetSimTimeStep(rtm)        ((rtm)->Timing.simTimeStep)
#endif

#ifndef rtmSetSimTimeStep
# define rtmSetSimTimeStep(rtm, val)   ((rtm)->Timing.simTimeStep = (val))
#endif

#ifndef rtmGetStartTime
# define rtmGetStartTime(rtm)          ((rtm)->Timing.tStart)
#endif

#ifndef rtmSetStartTime
# define rtmSetStartTime(rtm, val)     ((rtm)->Timing.tStart = (val))
#endif

#ifndef rtmGetStepSize
# define rtmGetStepSize(rtm)           ((rtm)->Timing.stepSize)
#endif

#ifndef rtmSetStepSize
# define rtmSetStepSize(rtm, val)      ((rtm)->Timing.stepSize = (val))
#endif

#ifndef rtmGetStopRequestedFlag
# define rtmGetStopRequestedFlag(rtm)  ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequestedFlag
# define rtmSetStopRequestedFlag(rtm, val) ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetTaskCounters
# define rtmGetTaskCounters(rtm)       ((rtm)->Timing.TaskCounters)
#endif

#ifndef rtmSetTaskCounters
# define rtmSetTaskCounters(rtm, val)  ((rtm)->Timing.TaskCounters = (val))
#endif

#ifndef rtmGetTaskTimeArray
# define rtmGetTaskTimeArray(rtm)      ((rtm)->Timing.tArray)
#endif

#ifndef rtmSetTaskTimeArray
# define rtmSetTaskTimeArray(rtm, val) ((rtm)->Timing.tArray = (val))
#endif

#ifndef rtmGetTimePtr
# define rtmGetTimePtr(rtm)            ((rtm)->Timing.t)
#endif

#ifndef rtmSetTimePtr
# define rtmSetTimePtr(rtm, val)       ((rtm)->Timing.t = (val))
#endif

#ifndef rtmGetTimingData
# define rtmGetTimingData(rtm)         ((rtm)->Timing.timingData)
#endif

#ifndef rtmSetTimingData
# define rtmSetTimingData(rtm, val)    ((rtm)->Timing.timingData = (val))
#endif

#ifndef rtmGetU
# define rtmGetU(rtm)                  ((rtm)->inputs)
#endif

#ifndef rtmSetU
# define rtmSetU(rtm, val)             ((rtm)->inputs = (val))
#endif

#ifndef rtmGetVarNextHitTimesListPtr
# define rtmGetVarNextHitTimesListPtr(rtm) ((rtm)->Timing.varNextHitTimesList)
#endif

#ifndef rtmSetVarNextHitTimesListPtr
# define rtmSetVarNextHitTimesListPtr(rtm, val) ((rtm)->Timing.varNextHitTimesList = (val))
#endif

#ifndef rtmGetY
# define rtmGetY(rtm)                  ((rtm)->outputs)
#endif

#ifndef rtmSetY
# define rtmSetY(rtm, val)             ((rtm)->outputs = (val))
#endif

#ifndef rtmGetZCCacheNeedsReset
# define rtmGetZCCacheNeedsReset(rtm)  ((rtm)->zCCacheNeedsReset)
#endif

#ifndef rtmSetZCCacheNeedsReset
# define rtmSetZCCacheNeedsReset(rtm, val) ((rtm)->zCCacheNeedsReset = (val))
#endif

#ifndef rtmGetZCSignalValues
# define rtmGetZCSignalValues(rtm)     ((rtm)->zcSignalValues)
#endif

#ifndef rtmSetZCSignalValues
# define rtmSetZCSignalValues(rtm, val) ((rtm)->zcSignalValues = (val))
#endif

#ifndef rtmGet_TimeOfLastOutput
# define rtmGet_TimeOfLastOutput(rtm)  ((rtm)->Timing.timeOfLastOutput)
#endif

#ifndef rtmSet_TimeOfLastOutput
# define rtmSet_TimeOfLastOutput(rtm, val) ((rtm)->Timing.timeOfLastOutput = (val))
#endif

#ifndef rtmGetdX
# define rtmGetdX(rtm)                 ((rtm)->derivs)
#endif

#ifndef rtmSetdX
# define rtmSetdX(rtm, val)            ((rtm)->derivs = (val))
#endif

#ifndef rtmGettimingBridge
# define rtmGettimingBridge(rtm)       ()
#endif

#ifndef rtmSettimingBridge
# define rtmSettimingBridge(rtm, val)  ()
#endif

#ifndef rtmGetChecksumVal
# define rtmGetChecksumVal(rtm, idx)   ((rtm)->Sizes.checksums[idx])
#endif

#ifndef rtmSetChecksumVal
# define rtmSetChecksumVal(rtm, idx, val) ((rtm)->Sizes.checksums[idx] = (val))
#endif

#ifndef rtmGetDWork
# define rtmGetDWork(rtm, idx)         ((rtm)->dwork[idx])
#endif

#ifndef rtmSetDWork
# define rtmSetDWork(rtm, idx, val)    ((rtm)->dwork[idx] = (val))
#endif

#ifndef rtmGetOffsetTime
# define rtmGetOffsetTime(rtm, idx)    ((rtm)->Timing.offsetTimes[idx])
#endif

#ifndef rtmSetOffsetTime
# define rtmSetOffsetTime(rtm, idx, val) ((rtm)->Timing.offsetTimes[idx] = (val))
#endif

#ifndef rtmGetSFunction
# define rtmGetSFunction(rtm, idx)     ((rtm)->childSfunctions[idx])
#endif

#ifndef rtmSetSFunction
# define rtmSetSFunction(rtm, idx, val) ((rtm)->childSfunctions[idx] = (val))
#endif

#ifndef rtmGetSampleTime
# define rtmGetSampleTime(rtm, idx)    ((rtm)->Timing.sampleTimes[idx])
#endif

#ifndef rtmSetSampleTime
# define rtmSetSampleTime(rtm, idx, val) ((rtm)->Timing.sampleTimes[idx] = (val))
#endif

#ifndef rtmGetSampleTimeTaskID
# define rtmGetSampleTimeTaskID(rtm, idx) ((rtm)->Timing.sampleTimeTaskIDPtr[idx])
#endif

#ifndef rtmSetSampleTimeTaskID
# define rtmSetSampleTimeTaskID(rtm, idx, val) ((rtm)->Timing.sampleTimeTaskIDPtr[idx] = (val))
#endif

#ifndef rtmGetVarNextHitTimeList
# define rtmGetVarNextHitTimeList(rtm, idx) ((rtm)->Timing.varNextHitTimesList[idx])
#endif

#ifndef rtmSetVarNextHitTimeList
# define rtmSetVarNextHitTimeList(rtm, idx, val) ((rtm)->Timing.varNextHitTimesList[idx] = (val))
#endif

#ifndef rtmIsContinuousTask
# define rtmIsContinuousTask(rtm, tid) 0
#endif

#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

#ifndef rtmIsSampleHit
# define rtmIsSampleHit(rtm, sti, tid) (((rtm)->Timing.sampleTimeTaskIDPtr[sti] == (tid)))
#endif

#ifndef rtmStepTask
# define rtmStepTask(rtm, idx)         ((rtm)->Timing.TaskCounters.TID[(idx)] == 0)
#endif

#ifndef rtmGetStopRequested
# define rtmGetStopRequested(rtm)      ((rtm)->Timing.stopRequestedFlag)
#endif

#ifndef rtmSetStopRequested
# define rtmSetStopRequested(rtm, val) ((rtm)->Timing.stopRequestedFlag = (val))
#endif

#ifndef rtmGetStopRequestedPtr
# define rtmGetStopRequestedPtr(rtm)   (&((rtm)->Timing.stopRequestedFlag))
#endif

#ifndef rtmGetT
# define rtmGetT(rtm)                  (rtmGetTPtr((rtm))[0])
#endif

#ifndef rtmSetT
# define rtmSetT(rtm, val)                                       /* Do Nothing */
#endif

#ifndef rtmGetTFinal
# define rtmGetTFinal(rtm)             ((rtm)->Timing.tFinal)
#endif

#ifndef rtmSetTFinal
# define rtmSetTFinal(rtm, val)        ((rtm)->Timing.tFinal = (val))
#endif

#ifndef rtmGetTPtr
# define rtmGetTPtr(rtm)               ((rtm)->Timing.t)
#endif

#ifndef rtmSetTPtr
# define rtmSetTPtr(rtm, val)          ((rtm)->Timing.t = (val))
#endif

#ifndef rtmGetTStart
# define rtmGetTStart(rtm)             ((rtm)->Timing.tStart)
#endif

#ifndef rtmSetTStart
# define rtmSetTStart(rtm, val)        ((rtm)->Timing.tStart = (val))
#endif

#ifndef rtmTaskCounter
# define rtmTaskCounter(rtm, idx)      ((rtm)->Timing.TaskCounters.TID[(idx)])
#endif

#ifndef rtmGetTaskTime
# define rtmGetTaskTime(rtm, sti)      (rtmGetTPtr((rtm))[(rtm)->Timing.sampleTimeTaskIDPtr[sti]])
#endif

#ifndef rtmSetTaskTime
# define rtmSetTaskTime(rtm, sti, val) (rtmGetTPtr((rtm))[sti] = (val))
#endif

#ifndef rtmGetTimeOfLastOutput
# define rtmGetTimeOfLastOutput(rtm)   ((rtm)->Timing.timeOfLastOutput)
#endif

#ifdef rtmGetRTWSolverInfo
#undef rtmGetRTWSolverInfo
#endif

#define rtmGetRTWSolverInfo(rtm)       &((rtm)->solverInfo)

/* Definition for use in the target main file */
#define ATV_rtModel                    RT_MODEL_ATV_T

/* Block signals for system '<S3>/Chart' */
typedef struct {
  boolean_T out;                       /* '<S3>/Chart' */
} B_Chart_ATV_T;

/* Block states (default storage) for system '<S3>/Chart' */
typedef struct {
  uint8_T is_active_c1_ATV;            /* '<S3>/Chart' */
  uint8_T is_c1_ATV;                   /* '<S3>/Chart' */
  uint8_T temporalCounter_i1;          /* '<S3>/Chart' */
} DW_Chart_ATV_T;

/* Block signals (default storage) */
typedef struct {
  real_T pai_BasicAnalogInput;         /* '<S7>/pai_BasicAnalogInput' */
  real_T psc_CpuLoading;               /* '<S1>/psc_CpuLoading' */
  real_T Saturation;                   /* '<S6>/Saturation' */
  real_T pdx_PWMOutput;                /* '<S6>/pdx_PWMOutput' */
  real_T pcx_CANdb_ReceiveMessage_o4;  /* '<S3>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5;  /* '<S3>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o6;  /* '<S3>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o4_f;/* '<S5>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5_m;/* '<S5>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o7;  /* '<S5>/pcx_CANdb_ReceiveMessage' */
  real_T pai_BasicAnalogInput2;        /* '<S7>/pai_BasicAnalogInput2' */
  real_T pcx_CANdb_ReceiveMessage_o4_n;/* '<S2>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5_mv;/* '<S2>/pcx_CANdb_ReceiveMessage' */
  real_T atv_bms_pack_current;         /* '<S2>/pcx_CANdb_ReceiveMessage' */
  real_T atv_bms_pack_soh;             /* '<S2>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o9;  /* '<S2>/pcx_CANdb_ReceiveMessage' */
  real32_T pcx_CANdb_ReceiveMessage_o6_n;/* '<S5>/pcx_CANdb_ReceiveMessage' */
  uint16_T Cast2;                      /* '<S39>/Cast2' */
  uint16_T Cast1;                      /* '<S39>/Cast1' */
  uint16_T tHROTTLEGen_X1000_out;      /* '<S37>/VSMGestioneIbrido' */
  uint16_T footBrake_X1000_out;        /* '<S37>/VSMGestioneIbrido' */
  int16_T RateTransition6;             /* '<Root>/Rate Transition6' */
  int16_T RateTransition7;             /* '<Root>/Rate Transition7' */
  int16_T RateTransition10;            /* '<Root>/Rate Transition10' */
  int16_T RateTransition8;             /* '<Root>/Rate Transition8' */
  int16_T RateTransition9;             /* '<Root>/Rate Transition9' */
  int16_T RateTransition11;            /* '<Root>/Rate Transition11' */
  int16_T RateTransition12;            /* '<Root>/Rate Transition12' */
  int16_T RateTransition24;            /* '<Root>/Rate Transition24' */
  int16_T pcx_CANdb_ReceiveMessage_o4_k;/* '<S4>/pcx_CANdb_ReceiveMessage' */
  int16_T pcx_CANdb_ReceiveMessage_o5_c;/* '<S4>/pcx_CANdb_ReceiveMessage' */
  int16_T pcx_CANdb_ReceiveMessage_o6_o;/* '<S4>/pcx_CANdb_ReceiveMessage' */
  int16_T pcx_CANdb_ReceiveMessage_o7_p;/* '<S4>/pcx_CANdb_ReceiveMessage' */
  int16_T pcx_CANdb_ReceiveMessage_o8; /* '<S4>/pcx_CANdb_ReceiveMessage' */
  int16_T pcx_CANdb_ReceiveMessage_o9_b;/* '<S4>/pcx_CANdb_ReceiveMessage' */
  int16_T pcx_CANdb_ReceiveMessage_o10;/* '<S4>/pcx_CANdb_ReceiveMessage' */
  int16_T atv_v_dbg_T_FMot;            /* '<S4>/Switch' */
  int16_T atv_v_dbg_T_FInv;            /* '<S4>/Switch1' */
  int16_T atv_v_dbg_T_RMot;            /* '<S4>/Switch2' */
  int16_T atv_v_dbg_T_RInv;            /* '<S4>/Switch3' */
  int16_T atv_v_dbg_T_GMot;            /* '<S4>/Switch4' */
  int16_T atv_v_dbg_T_GInv;            /* '<S4>/Switch5' */
  int16_T atv_v_dbg_T_Rad;             /* '<S4>/Switch6' */
  int16_T Saturation_a;                /* '<S5>/Saturation' */
  uint8_T RateTransition7_p;           /* '<S1>/Rate Transition7' */
  boolean_T LogicalOperator3;          /* '<S9>/Logical Operator3' */
  boolean_T RateTransition4;           /* '<Root>/Rate Transition4' */
  boolean_T RateTransition5;           /* '<Root>/Rate Transition5' */
  boolean_T pcx_CANdb_TransmitMessage; /* '<S1>/pcx_CANdb_TransmitMessage' */
  boolean_T RateTransition4_b;         /* '<S1>/Rate Transition4' */
  boolean_T RateTransition;            /* '<S1>/Rate Transition' */
  boolean_T RateTransition1;           /* '<S1>/Rate Transition1' */
  boolean_T RateTransition2;           /* '<S1>/Rate Transition2' */
  boolean_T pcx_CANdb_TransmitMessage1;/* '<S1>/pcx_CANdb_TransmitMessage1' */
  boolean_T Switch;                    /* '<S42>/Switch' */
  boolean_T RateTransition3;           /* '<S1>/Rate Transition3' */
  boolean_T RateTransition5_g;         /* '<S1>/Rate Transition5' */
  boolean_T RateTransition6_p;         /* '<S1>/Rate Transition6' */
  boolean_T pcx_CANdb_TransmitMessage6;/* '<S1>/pcx_CANdb_TransmitMessage6' */
  boolean_T pcx_CANdb_TransmitMessage2;/* '<S1>/pcx_CANdb_TransmitMessage2' */
  boolean_T pcx_CANdb_TransmitMessage3;/* '<S1>/pcx_CANdb_TransmitMessage3' */
  boolean_T pcx_CANdb_TransmitMessage4;/* '<S1>/pcx_CANdb_TransmitMessage4' */
  boolean_T pcx_CANdb_TransmitMessage5;/* '<S1>/pcx_CANdb_TransmitMessage5' */
  boolean_T pcx_CANdb_TransmitMessage7;/* '<S1>/pcx_CANdb_TransmitMessage7' */
  boolean_T pcx_CANdb_TransmitMessage8;/* '<S1>/pcx_CANdb_TransmitMessage8' */
  boolean_T pdx_DigitalOutput;         /* '<S6>/pdx_DigitalOutput' */
  boolean_T pdx_DigitalOutput1;        /* '<S6>/pdx_DigitalOutput1' */
  boolean_T pdx_DigitalOutput2;        /* '<S6>/pdx_DigitalOutput2' */
  boolean_T pdx_DigitalOutput3;        /* '<S6>/pdx_DigitalOutput3' */
  boolean_T pdx_DigitalOutput4;        /* '<S6>/pdx_DigitalOutput4' */
  boolean_T pdx_DigitalOutput5;        /* '<S6>/pdx_DigitalOutput5' */
  boolean_T pdx_DigitalOutput6;        /* '<S6>/pdx_DigitalOutput6' */
  boolean_T pdx_DigitalOutput7;        /* '<S6>/pdx_DigitalOutput7' */
  boolean_T pdx_DigitalOutput8;        /* '<S6>/pdx_DigitalOutput8' */
  boolean_T pdx_DigitalOutput9;        /* '<S6>/pdx_DigitalOutput9' */
  boolean_T pcx_CANdb_ReceiveMessage_o1;/* '<S3>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2;/* '<S3>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3;/* '<S3>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_k;/* '<S4>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_d;/* '<S4>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_b;/* '<S4>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_g;/* '<S5>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_n;/* '<S5>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_d;/* '<S5>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_n;/* '<S2>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_l;/* '<S2>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_p;/* '<S2>/pcx_CANdb_ReceiveMessage' */
  boolean_T pdx_DigitalOutput_b;       /* '<Root>/pdx_DigitalOutput' */
  boolean_T pdx_DigitalOutput1_i;      /* '<Root>/pdx_DigitalOutput1' */
  boolean_T pdx_DigitalOutput2_p;      /* '<Root>/pdx_DigitalOutput2' */
  boolean_T pdx_DigitalOutput3_l;      /* '<Root>/pdx_DigitalOutput3' */
  boolean_T hvp_ctrl_out;              /* '<S9>/VSM' */
  boolean_T hvm_ctrl_out;              /* '<S9>/VSM' */
  boolean_T chg_ctrl_out;              /* '<S9>/VSM' */
  boolean_T heater_ctrl_out;           /* '<S9>/VSM' */
  boolean_T en_inv_rear_out;           /* '<S9>/VSM' */
  boolean_T en_inv_front_out;          /* '<S9>/VSM' */
  boolean_T en_inv_gen_out;            /* '<S9>/VSM' */
  boolean_T GenFwd_out;                /* '<S37>/VSMGestioneIbrido' */
  boolean_T FS1_out;                   /* '<S37>/VSMGestioneIbrido' */
  B_Chart_ATV_T sf_Chart_l;            /* '<S5>/Chart' */
  B_Chart_ATV_T sf_Chart_b;            /* '<S4>/Chart' */
  B_Chart_ATV_T sf_Chart;              /* '<S3>/Chart' */
} B_ATV_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real_T IceStartAttempCnt;            /* '<S37>/VSMGestioneIbrido' */
  real_T PumpStB;                      /* '<S42>/PUMP LOGIC' */
  real_T PumpStA;                      /* '<S42>/PUMP LOGIC' */
  real32_T PrevY;                      /* '<S37>/Rate Limiter2' */
  int16_T RateTransition6_Buffer0;     /* '<Root>/Rate Transition6' */
  int16_T RateTransition7_Buffer0;     /* '<Root>/Rate Transition7' */
  int16_T RateTransition10_Buffer0;    /* '<Root>/Rate Transition10' */
  int16_T RateTransition8_Buffer0;     /* '<Root>/Rate Transition8' */
  int16_T RateTransition9_Buffer0;     /* '<Root>/Rate Transition9' */
  int16_T RateTransition11_Buffer0;    /* '<Root>/Rate Transition11' */
  int16_T RateTransition12_Buffer0;    /* '<Root>/Rate Transition12' */
  int16_T RateTransition24_Buffer0;    /* '<Root>/Rate Transition24' */
  uint16_T PrevY_k;                    /* '<S37>/Rate Limiter1' */
  uint16_T PrevY_l;                    /* '<S37>/Rate Limiter' */
  uint16_T temporalCounter_i1;         /* '<S37>/VSMGestioneIbrido' */
  uint16_T temporalCounter_i1_f;       /* '<S42>/PUMP LOGIC' */
  uint8_T is_active_c3_ATV;            /* '<S9>/VSM' */
  uint8_T is_c3_ATV;                   /* '<S9>/VSM' */
  uint8_T is_DRIVE_ENABLE;             /* '<S9>/VSM' */
  uint8_T is_HV_CTRL;                  /* '<S9>/VSM' */
  uint8_T is_CHG_CTRL;                 /* '<S9>/VSM' */
  uint8_T is_HEATER_CTRL;              /* '<S9>/VSM' */
  uint8_T is_STARTTRIGGER;             /* '<S9>/VSM' */
  uint8_T temporalCounter_i1_j;        /* '<S9>/VSM' */
  uint8_T temporalCounter_i2;          /* '<S9>/VSM' */
  uint8_T temporalCounter_i3;          /* '<S9>/VSM' */
  uint8_T is_active_c2_ATV;            /* '<S37>/VSMGestioneIbrido' */
  uint8_T is_IceSM;                    /* '<S37>/VSMGestioneIbrido' */
  uint8_T is_MonitoraggioStatoICE;     /* '<S37>/VSMGestioneIbrido' */
  uint8_T is_WarmUpIce;                /* '<S37>/VSMGestioneIbrido' */
  uint8_T temporalCounter_i2_m;        /* '<S37>/VSMGestioneIbrido' */
  uint8_T is_active_c5_ATV;            /* '<S42>/PUMP LOGIC' */
  uint8_T is_PumpALogic;               /* '<S42>/PUMP LOGIC' */
  uint8_T is_PumpBLogic;               /* '<S42>/PUMP LOGIC' */
  boolean_T Relay2_Mode;               /* '<S7>/Relay2' */
  boolean_T Relay3_Mode;               /* '<S7>/Relay3' */
  boolean_T Relay1_Mode;               /* '<S7>/Relay1' */
  boolean_T RateTransition4_Buffer0;   /* '<Root>/Rate Transition4' */
  boolean_T RateTransition5_Buffer0;   /* '<Root>/Rate Transition5' */
  boolean_T Relay_Mode;                /* '<S30>/Relay' */
  boolean_T Relay1_Mode_h;             /* '<S30>/Relay1' */
  boolean_T Relay2_Mode_m;             /* '<S30>/Relay2' */
  boolean_T Relay3_Mode_d;             /* '<S30>/Relay3' */
  boolean_T Relay4_Mode;               /* '<S30>/Relay4' */
  boolean_T Relay5_Mode;               /* '<S30>/Relay5' */
  boolean_T Relay1_Mode_b;             /* '<S43>/Relay1' */
  boolean_T Relay_Mode_b;              /* '<S7>/Relay' */
  boolean_T Relay5_Mode_e;             /* '<S7>/Relay5' */
  boolean_T Relay4_Mode_b;             /* '<S7>/Relay4' */
  boolean_T startBtnArmed;             /* '<S9>/VSM' */
  boolean_T ReqGen_prev;               /* '<S37>/VSMGestioneIbrido' */
  boolean_T ReqGen_start;              /* '<S37>/VSMGestioneIbrido' */
  DW_Chart_ATV_T sf_Chart_l;           /* '<S5>/Chart' */
  DW_Chart_ATV_T sf_Chart_b;           /* '<S4>/Chart' */
  DW_Chart_ATV_T sf_Chart;             /* '<S3>/Chart' */
} DW_ATV_T;

/* Backward compatible GRT Identifiers */
#define rtB                            ATV_B
#define BlockIO                        B_ATV_T
#define rtDWork                        ATV_DW
#define D_Work                         DW_ATV_T

/* Real-time Model Data Structure */
struct tag_RTM_ATV_T {
  const char_T *path;
  const char_T *modelName;
  struct SimStruct_tag * *childSfunctions;
  const char_T *errorStatus;
  SS_SimMode simMode;
  RTWExtModeInfo *extModeInfo;
  RTWSolverInfo solverInfo;
  RTWSolverInfo *solverInfoPtr;
  void *sfcnInfo;
  void *blockIO;
  const void *constBlockIO;
  void *defaultParam;
  ZCSigState *prevZCSigState;
  real_T *contStates;
  int_T *periodicContStateIndices;
  real_T *periodicContStateRanges;
  real_T *derivs;
  void *zcSignalValues;
  void *inputs;
  void *outputs;
  boolean_T *contStateDisabled;
  boolean_T zCCacheNeedsReset;
  boolean_T derivCacheNeedsReset;
  boolean_T CTOutputIncnstWithState;
  void *dwork;

  /*
   * Sizes:
   * The following substructure contains sizes information
   * for many of the model attributes such as inputs, outputs,
   * dwork, sample times, etc.
   */
  struct {
    uint32_T checksums[4];
    uint32_T options;
    int_T numContStates;
    int_T numPeriodicContStates;
    int_T numU;
    int_T numY;
    int_T numSampTimes;
    int_T numBlocks;
    int_T numBlockIO;
    int_T numBlockPrms;
    int_T numDwork;
    int_T numSFcnPrms;
    int_T numSFcns;
    int_T numIports;
    int_T numOports;
    int_T numNonSampZCs;
    int_T sysDirFeedThru;
    int_T rtwGenSfcn;
  } Sizes;

  /*
   * SpecialInfo:
   * The following substructure contains special information
   * related to other components that are dependent on RTW.
   */
  struct {
    const void *mappingInfo;
    void *xpcData;
  } SpecialInfo;

  /*
   * Timing:
   * The following substructure contains information regarding
   * the timing information for the model.
   */
  struct {
    time_T stepSize;
    uint32_T clockTick0;
    uint32_T clockTickH0;
    time_T stepSize0;
    uint32_T clockTick1;
    uint32_T clockTickH1;
    time_T stepSize1;
    uint32_T clockTick2;
    uint32_T clockTickH2;
    time_T stepSize2;
    struct {
      uint8_T TID[3];
    } TaskCounters;

    struct {
      boolean_T TID0_1;
    } RateInteraction;

    time_T tStart;
    time_T tFinal;
    time_T timeOfLastOutput;
    void *timingData;
    real_T *varNextHitTimesList;
    SimTimeStep simTimeStep;
    boolean_T stopRequestedFlag;
    time_T *sampleTimes;
    time_T *offsetTimes;
    int_T *sampleTimeTaskIDPtr;
    int_T *sampleHits;
    int_T *perTaskSampleHits;
    time_T *t;
    time_T sampleTimesArray[3];
    time_T offsetTimesArray[3];
    int_T sampleTimeTaskIDArray[3];
    int_T sampleHitArray[3];
    int_T perTaskSampleHitsArray[9];
    time_T tArray[3];
  } Timing;
};

/* Block signals (default storage) */
extern B_ATV_T ATV_B;

/* Block states (default storage) */
extern DW_ATV_T ATV_DW;

/*
 * Exported Global Signals
 *
 * Note: Exported global signals are block signals with an exported global
 * storage class designation.  Code generation will declare the memory for
 * these signals and export their symbols.
 *
 */
extern real_T atv_xc1_raw_ain;         /* '<S7>/pai_BasicAnalogInput5' */
extern real_T atv_xc4_raw_ain;         /* '<S7>/pai_BasicAnalogInput6' */
extern real_T atv_xa3_brake_pedal_raw_ain;/* '<S7>/pai_BasicAnalogInput4' */
extern real_T atv_xa1_ain_throttle_raw;/* '<S7>/pai_BasicAnalogInput1' */
extern real_T atv_xd3_raw_ain;         /* '<S7>/pai_BasicAnalogInput3' */
extern real_T atv_xe4_raw_ain;         /* '<S7>/pai_BasicAnalogInput8' */
extern real_T atv_xe2_raw_ain;         /* '<S7>/pai_BasicAnalogInput7' */
extern real_T atv_dbg_FAN_out;         /* '<S6>/Data Type Conversion' */
extern real_T atv_yg3_raw_ain;         /* '<S7>/pai_BasicAnalogInput9' */
extern real_T bms_pack_voltage;        /* '<S2>/pcx_CANdb_ReceiveMessage' */
extern uint32_T atv_stack_used;        /* '<S25>/psc_StackUsed' */
extern uint32_T atv_task_duration_1s;  /* '<S25>/pkn_TaskDuration1' */
extern uint32_T atv_task_duration_1s_max;/* '<S25>/pkn_TaskDuration2' */
extern int32_T atv_xd1_key_ain;        /* '<S7>/Gain' */
extern int32_T atv_xe3_ain;            /* '<S7>/Gain2' */
extern uint16_T atv_brake_pedalX1000;  /* '<S15>/Switch' */
extern uint16_T atv_throttleX1000;     /* '<S14>/Switch' */
extern uint16_T atv_regen_x1000_rear;  /* '<S47>/Switch5' */
extern uint16_T atv_motoring_x1000_rear;/* '<S47>/Switch1' */
extern uint16_T atv_motoring_x1000_rear_limited;/* '<S48>/Switch2' */
extern uint16_T atv_regen_x1000_front; /* '<S32>/Switch4' */
extern uint16_T atv_motoring_x1000_front;/* '<S46>/Switch1' */
extern uint16_T atv_motoring_x1000_front_limited;/* '<S49>/Switch2' */
extern uint16_T atv_footBrake_X1000_out;/* '<S37>/Rate Limiter1' */
extern uint16_T atv_tHROTTLEGen_X1000_out;/* '<S37>/Rate Limiter' */
extern uint16_T atv_app_code_year;     /* '<S26>/psc_AppBuildDate' */
extern uint16_T atv_app_code_month;    /* '<S26>/psc_AppBuildDate' */
extern uint16_T atv_app_code_day;      /* '<S26>/psc_AppBuildDate' */
extern uint16_T atv_app_code_major_ver;/* '<S26>/psc_AppVersion' */
extern uint16_T atv_app_code_minor_ver;/* '<S26>/psc_AppVersion' */
extern uint16_T atv_app_code_subminor_ver;/* '<S26>/psc_AppVersion' */
extern uint16_T atv_boot_code_year;    /* '<S27>/psc_BootBuildDate' */
extern uint16_T atv_boot_code_month;   /* '<S27>/psc_BootBuildDate' */
extern uint16_T atv_boot_code_day;     /* '<S27>/psc_BootBuildDate' */
extern uint16_T atv_boot_code_major_ver;/* '<S27>/psc_BootVersion' */
extern uint16_T atv_boot_code_minor_ver;/* '<S27>/psc_BootVersion' */
extern uint16_T atv_boot_code_subminor_ver;/* '<S27>/psc_BootVersion' */
extern uint16_T atv_prg_code_year;     /* '<S28>/psc_PrgBuildDate' */
extern uint16_T atv_prg_code_month;    /* '<S28>/psc_PrgBuildDate' */
extern uint16_T atv_prg_code_day;      /* '<S28>/psc_PrgBuildDate' */
extern uint16_T atv_prg_code_major_ver;/* '<S28>/psc_PrgVersion' */
extern uint16_T atv_prg_code_minor_ver;/* '<S28>/psc_PrgVersion' */
extern uint16_T atv_prg_code_subminor_ver;/* '<S28>/psc_PrgVersion' */
extern uint16_T atv_platform_code_year;/* '<S29>/psc_PlatformBuildDate' */
extern uint16_T atv_platform_code_month;/* '<S29>/psc_PlatformBuildDate' */
extern uint16_T atv_platform_code_day; /* '<S29>/psc_PlatformBuildDate' */
extern uint16_T atv_platform_code_major_ver;/* '<S29>/psc_PlatformVersion' */
extern uint16_T atv_platform_code_minor_ver;/* '<S29>/psc_PlatformVersion' */
extern uint16_T atv_platform_code_subminor_ver;/* '<S29>/psc_PlatformVersion' */
extern int16_T atv_GenCurrentSetPoint; /* '<S37>/Data Type Conversion1' */
extern uint8_T atv_cpu_loading;        /* '<S25>/psc_CpuLoading1' */
extern uint8_T atv_cpu_loading_max;    /* '<S25>/psc_CpuLoading2' */
extern uint8_T atv_state_out;          /* '<S9>/VSM' */
extern uint8_T atv_sub_state_out;      /* '<S9>/VSM' */
extern uint8_T atv_IceSM;              /* '<S37>/VSMGestioneIbrido' */
extern uint8_T atv_IceRG;              /* '<S37>/VSMGestioneIbrido' */
extern boolean_T atv_key_signal;       /* '<S31>/Compare' */
extern boolean_T atv_za3_StartBtn_din; /* '<S7>/pdx_DigitalInput' */
extern boolean_T atv_fwd_mode_in;      /* '<S7>/Relay2' */
extern boolean_T atv_rwd_mode_in;      /* '<S7>/Relay3' */
extern boolean_T atv_brake_pedal_digital_in;/* '<S7>/Relay1' */
extern boolean_T atv_throttleRegOff;   /* '<S32>/atvc_throttleRegOff' */
extern boolean_T atv_fs1_in;           /* '<S7>/Relay' */
extern boolean_T atv_fs1_out;          /* '<S32>/Switch' */
extern boolean_T atv_4wd_din;          /* '<S7>/Relay5' */
extern boolean_T atv_apu_req_in;       /* '<S7>/Relay4' */
extern boolean_T atv_v_dbg_chg_req;    /* '<S3>/Switch1' */
extern boolean_T atv_v_dbg_heater_req; /* '<S3>/Switch2' */
extern boolean_T atv_wakelock_out;     /* '<S9>/VSM' */
extern boolean_T atv_runLed_out;       /* '<S9>/VSM' */
extern boolean_T atv_en_dcdc_out;      /* '<S9>/VSM' */
extern boolean_T atv_IceKey_out;       /* '<S37>/VSMGestioneIbrido' */
extern boolean_T atv_IceShutdown_out;  /* '<S37>/VSMGestioneIbrido' */
extern boolean_T atv_IceOn;            /* '<S37>/VSMGestioneIbrido' */
extern boolean_T atv_IceFault;         /* '<S37>/VSMGestioneIbrido' */
extern boolean_T atv_dbg_pumpB_out;    /* '<S42>/PUMP LOGIC' */

/*
 * Exported Global Parameters
 *
 * Note: Exported global parameters are tunable parameters with an exported
 * global storage class designation.  Code generation will declare the memory for
 * these parameters and exports their symbols.
 *
 */
extern OE_CAL real_T atvc_an_in_sel_his;/* Variable: atvc_an_in_sel_his
                                         * Referenced by:
                                         *   '<S7>/Relay2'
                                         *   '<S7>/Relay3'
                                         *   '<S7>/Relay4'
                                         *   '<S7>/Relay5'
                                         */
extern OE_CAL real_T atvc_an_in_sel_th;/* Variable: atvc_an_in_sel_th
                                        * Referenced by:
                                        *   '<S7>/Relay2'
                                        *   '<S7>/Relay3'
                                        *   '<S7>/Relay4'
                                        *   '<S7>/Relay5'
                                        */
extern OE_CAL int16_T atvc_GenTestCurrent;/* Variable: atvc_GenTestCurrent
                                           * Referenced by: '<S9>/atvc_GenTestCurrent'
                                           */
extern OE_CAL int16_T atvc_GenWarmUpCurrent;/* Variable: atvc_GenWarmUpCurrent
                                             * Referenced by: '<S37>/atvc_GenWarmUpCurrent'
                                             */
extern OE_CAL uint16_T atvc_IceOffTh;  /* Variable: atvc_IceOffTh
                                        * Referenced by: '<S37>/VSMGestioneIbrido'
                                        */
extern OE_CAL uint16_T atvc_IceOnTh;   /* Variable: atvc_IceOnTh
                                        * Referenced by: '<S37>/VSMGestioneIbrido'
                                        */
extern OE_CAL uint16_T atvc_RpmEndWarmUp;/* Variable: atvc_RpmEndWarmUp
                                          * Referenced by: '<S37>/atvc_RpmEndwarmUp'
                                          */
extern OE_CAL uint16_T atvc_StartThrottleIce;/* Variable: atvc_StartThrottleIce
                                              * Referenced by: '<S37>/VSMGestioneIbrido'
                                              */
extern OE_CAL uint16_T atvc_brakePedalHis;/* Variable: atvc_brakePedalHis
                                           * Referenced by: '<S7>/Relay1'
                                           */
extern OE_CAL uint16_T atvc_brakePedalOn;/* Variable: atvc_brakePedalOn
                                          * Referenced by: '<S7>/Relay1'
                                          */
extern OE_CAL uint16_T atvc_footBrakeIce;/* Variable: atvc_footBrakeIce
                                          * Referenced by: '<S37>/VSMGestioneIbrido'
                                          */
extern OE_CAL uint16_T atvc_footBrakeWarmUp;/* Variable: atvc_footBrakeWarmUp
                                             * Referenced by: '<S37>/VSMGestioneIbrido'
                                             */
extern OE_CAL uint16_T atvc_maxDischCurr;/* Variable: atvc_maxDischCurr
                                          * Referenced by: '<S1>/atvc_maxDischCurr'
                                          */
extern OE_CAL uint16_T atvc_maxRegenCurr;/* Variable: atvc_maxRegenCurr
                                          * Referenced by: '<S1>/atvc_maxRegenCurr'
                                          */
extern OE_CAL uint16_T atvc_throttleMaxLimit;/* Variable: atvc_throttleMaxLimit
                                              * Referenced by: '<S32>/atvc_throttleMaxLimit'
                                              */
extern OE_CAL uint16_T atvc_throttleNeutralPoint;/* Variable: atvc_throttleNeutralPoint
                                                  * Referenced by:
                                                  *   '<S32>/atvc_throttleNeutralPoint'
                                                  *   '<S32>/Switch'
                                                  */
extern OE_CAL boolean_T atvc_throttleRegOff;/* Variable: atvc_throttleRegOff
                                             * Referenced by: '<S32>/atvc_throttleRegOff'
                                             */
extern OE_CAL uint8_T atvc_FanTest;    /* Variable: atvc_FanTest
                                        * Referenced by: '<S6>/atvc_FanTest'
                                        */
extern OE_CAL uint8_T atvc_IceStartRetry;/* Variable: atvc_IceStartRetry
                                          * Referenced by: '<S37>/VSMGestioneIbrido'
                                          */
extern OE_CAL uint8_T atvc_dcMinFan;   /* Variable: atvc_dcMinFan
                                        * Referenced by: '<S43>/Constant2'
                                        */
extern OE_CAL uint8_T atvc_maxTempInv; /* Variable: atvc_maxTempInv
                                        * Referenced by:
                                        *   '<S30>/Relay1'
                                        *   '<S30>/Relay4'
                                        *   '<S30>/Relay5'
                                        */
extern OE_CAL uint8_T atvc_maxTempMotor;/* Variable: atvc_maxTempMotor
                                         * Referenced by:
                                         *   '<S30>/Relay'
                                         *   '<S30>/Relay2'
                                         *   '<S30>/Relay3'
                                         */
extern OE_CAL uint8_T atvc_minTempInv; /* Variable: atvc_minTempInv
                                        * Referenced by:
                                        *   '<S30>/Relay1'
                                        *   '<S30>/Relay4'
                                        *   '<S30>/Relay5'
                                        */
extern OE_CAL uint8_T atvc_minTempMotor;/* Variable: atvc_minTempMotor
                                         * Referenced by:
                                         *   '<S30>/Relay'
                                         *   '<S30>/Relay2'
                                         *   '<S30>/Relay3'
                                         */
extern OE_CAL uint8_T atvc_socLimitSave;/* Variable: atvc_socLimitSave
                                         * Referenced by: '<S30>/atvc_socLimitSave'
                                         */
extern OE_CAL uint8_T atvc_tempSwitchOffFan;/* Variable: atvc_tempSwitchOffFan
                                             * Referenced by: '<S43>/Relay1'
                                             */
extern OE_CAL uint8_T atvc_tempSwitchOnFan;/* Variable: atvc_tempSwitchOnFan
                                            * Referenced by:
                                            *   '<S42>/atvc_tempSwitchOnFan'
                                            *   '<S43>/Relay1'
                                            */
extern OE_CAL uint8_T atvc_velocityLimitFwd;/* Variable: atvc_velocityLimitFwd
                                             * Referenced by: '<S9>/atvc_velocityLimitFwd'
                                             */
extern OE_CAL uint8_T atvc_velocityLimitRwd;/* Variable: atvc_velocityLimitRwd
                                             * Referenced by: '<S9>/atvc_velocityLimitRwd'
                                             */

/* External function called from main */
extern time_T rt_SimUpdateDiscreteEvents(
  int_T rtmNumSampTimes, void *rtmTimingData, int_T *rtmSampleHitPtr, int_T
  *rtmPerTaskSampleHits )
  ;

/*====================*
 * External functions *
 *====================*/
extern ATV_rtModel *ATV(void);
extern void MdlInitializeSizes(void);
extern void MdlInitializeSampleTimes(void);
extern void MdlInitialize(void);
extern void MdlStart(void);
extern void MdlOutputs(int_T tid);
extern void MdlUpdate(int_T tid);
extern void MdlTerminate(void);
extern PUT_DEBOUNCE_TIME_T pdx_DigitalInput_detm_wrk_data;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage1_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage6_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage2_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage3_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage4_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage5_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage7_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage8_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_p_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_f_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_e_msg_handle;

/* Real-time Model object */
extern RT_MODEL_ATV_T *const ATV_M;

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<S3>/Constant' : Unused code path elimination
 * Block '<S3>/Switch' : Unused code path elimination
 * Block '<S5>/Constant' : Unused code path elimination
 * Block '<S5>/Constant1' : Unused code path elimination
 * Block '<S5>/Constant2' : Unused code path elimination
 * Block '<S5>/Switch' : Unused code path elimination
 * Block '<S5>/Switch1' : Unused code path elimination
 * Block '<S5>/Switch2' : Unused code path elimination
 * Block '<S16>/FixPt Data Type Duplicate' : Unused code path elimination
 * Block '<S14>/Logical Operator' : Unused code path elimination
 * Block '<S17>/FixPt Data Type Duplicate' : Unused code path elimination
 * Block '<S15>/Logical Operator' : Unused code path elimination
 * Block '<Root>/Rate Transition14' : Unused code path elimination
 * Block '<Root>/Rate Transition17' : Unused code path elimination
 * Block '<Root>/Rate Transition18' : Unused code path elimination
 * Block '<Root>/Rate Transition2' : Unused code path elimination
 * Block '<Root>/Rate Transition23' : Unused code path elimination
 * Block '<Root>/Rate Transition3' : Unused code path elimination
 * Block '<S45>/Data Type Duplicate' : Unused code path elimination
 * Block '<S45>/Data Type Propagation' : Unused code path elimination
 * Block '<S48>/Data Type Duplicate' : Unused code path elimination
 * Block '<S48>/Data Type Propagation' : Unused code path elimination
 * Block '<S49>/Data Type Duplicate' : Unused code path elimination
 * Block '<S49>/Data Type Propagation' : Unused code path elimination
 * Block '<S40>/ ' : Unused code path elimination
 * Block '<S40>/ATVC_front_mtawfb' : Unused code path elimination
 * Block '<S40>/ATVC_rear_mtadd' : Unused code path elimination
 * Block '<S40>/ATVC_rear_mtawfb' : Unused code path elimination
 * Block '<S40>/ATVC_torque_split ' : Unused code path elimination
 * Block '<S40>/Abs2' : Unused code path elimination
 * Block '<S40>/Cast' : Unused code path elimination
 * Block '<S40>/Cast3' : Unused code path elimination
 * Block '<S40>/Constant' : Unused code path elimination
 * Block '<S40>/Constant12' : Unused code path elimination
 * Block '<S40>/Constant2' : Unused code path elimination
 * Block '<S40>/Constant3' : Unused code path elimination
 * Block '<S40>/Constant5' : Unused code path elimination
 * Block '<S40>/Gain' : Unused code path elimination
 * Block '<S40>/Gain1' : Unused code path elimination
 * Block '<S40>/Relational Operator' : Unused code path elimination
 * Block '<S40>/Subtract' : Unused code path elimination
 * Block '<S40>/Subtract5' : Unused code path elimination
 * Block '<S40>/Switch' : Unused code path elimination
 * Block '<S40>/Switch1' : Unused code path elimination
 * Block '<S40>/atvc_mtawnb' : Unused code path elimination
 * Block '<S40>/front' : Unused code path elimination
 * Block '<S40>/rear' : Unused code path elimination
 * Block '<Root>/ ' : Unused code path elimination
 * Block '<S2>/Data Type Conversion' : Eliminate redundant data type conversion
 * Block '<S2>/Data Type Conversion1' : Eliminate redundant data type conversion
 * Block '<S6>/Data Type Conversion1' : Eliminate redundant data type conversion
 * Block '<S6>/Data Type Conversion2' : Eliminate redundant data type conversion
 * Block '<Root>/Rate Transition' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition1' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition13' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition15' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition16' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition19' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition20' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition21' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition22' : Eliminated since input and output rates are identical
 * Block '<S46>/Cast1' : Eliminate redundant data type conversion
 * Block '<S47>/Cast1' : Eliminate redundant data type conversion
 */

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'ATV'
 * '<S1>'   : 'ATV/CANBUS_Output_Processing'
 * '<S2>'   : 'ATV/CANBUS_Reception_BMS'
 * '<S3>'   : 'ATV/CANBUS_Reception_V_DBG_CTRL'
 * '<S4>'   : 'ATV/CANBUS_Reception_V_DBG_CTRL1'
 * '<S5>'   : 'ATV/CANBUS_Reception_V_DBG_CTRL2'
 * '<S6>'   : 'ATV/Digital_Output_Processing'
 * '<S7>'   : 'ATV/Input_Processing'
 * '<S8>'   : 'ATV/config_and_status'
 * '<S9>'   : 'ATV/loop_10ms'
 * '<S10>'  : 'ATV/CANBUS_Output_Processing/Compare To Zero'
 * '<S11>'  : 'ATV/CANBUS_Reception_V_DBG_CTRL/Chart'
 * '<S12>'  : 'ATV/CANBUS_Reception_V_DBG_CTRL1/Chart'
 * '<S13>'  : 'ATV/CANBUS_Reception_V_DBG_CTRL2/Chart'
 * '<S14>'  : 'ATV/Input_Processing/Throttle_validation'
 * '<S15>'  : 'ATV/Input_Processing/Throttle_validation1'
 * '<S16>'  : 'ATV/Input_Processing/Throttle_validation/Interval Test'
 * '<S17>'  : 'ATV/Input_Processing/Throttle_validation1/Interval Test'
 * '<S18>'  : 'ATV/config_and_status/ECU Configuration'
 * '<S19>'  : 'ATV/config_and_status/ECU_Status'
 * '<S20>'  : 'ATV/config_and_status/Model_Configuration'
 * '<S21>'  : 'ATV/config_and_status/ECU Configuration/Configure CAN'
 * '<S22>'  : 'ATV/config_and_status/ECU Configuration/Configure CCP'
 * '<S23>'  : 'ATV/config_and_status/ECU Configuration/Configure I//O'
 * '<S24>'  : 'ATV/config_and_status/ECU Configuration/Configure CCP/pcp_CCPConfiguration'
 * '<S25>'  : 'ATV/config_and_status/ECU_Status/CPU_Status'
 * '<S26>'  : 'ATV/config_and_status/ECU_Status/ECU_SW_Ver_AppCode'
 * '<S27>'  : 'ATV/config_and_status/ECU_Status/ECU_SW_Ver_Boot_Code'
 * '<S28>'  : 'ATV/config_and_status/ECU_Status/ECU_SW_Ver_Platform_Lib_Code'
 * '<S29>'  : 'ATV/config_and_status/ECU_Status/ECU_SW_Ver_Reprogramming_Code'
 * '<S30>'  : 'ATV/loop_10ms/ COOLING SYSTEM'
 * '<S31>'  : 'ATV/loop_10ms/Compare To Constant'
 * '<S32>'  : 'ATV/loop_10ms/DRIVE BY WIRE'
 * '<S33>'  : 'ATV/loop_10ms/DRIVE BY WIRE_FRONT'
 * '<S34>'  : 'ATV/loop_10ms/DRIVE BY WIRE_REAR'
 * '<S35>'  : 'ATV/loop_10ms/HYBRID MANAGEMENT_ByGiovanni'
 * '<S36>'  : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_0'
 * '<S37>'  : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1'
 * '<S38>'  : 'ATV/loop_10ms/Interval Test Dynamic'
 * '<S39>'  : 'ATV/loop_10ms/SPEED LIMITER'
 * '<S40>'  : 'ATV/loop_10ms/TORQUE SPLITTER'
 * '<S41>'  : 'ATV/loop_10ms/VSM'
 * '<S42>'  : 'ATV/loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento'
 * '<S43>'  : 'ATV/loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/FAN LOGIC'
 * '<S44>'  : 'ATV/loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC'
 * '<S45>'  : 'ATV/loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/FAN LOGIC/Saturation Dynamic'
 * '<S46>'  : 'ATV/loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE FRONT'
 * '<S47>'  : 'ATV/loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE REAR'
 * '<S48>'  : 'ATV/loop_10ms/DRIVE BY WIRE/Saturation Dynamic'
 * '<S49>'  : 'ATV/loop_10ms/DRIVE BY WIRE/Saturation Dynamic1'
 * '<S50>'  : 'ATV/loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE FRONT/negativo'
 * '<S51>'  : 'ATV/loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE FRONT/positivo'
 * '<S52>'  : 'ATV/loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE REAR/negativo1'
 * '<S53>'  : 'ATV/loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE REAR/positivo1'
 * '<S54>'  : 'ATV/loop_10ms/DRIVE BY WIRE_FRONT/DBW REVERSE'
 * '<S55>'  : 'ATV/loop_10ms/DRIVE BY WIRE_FRONT/DBW + REG_BRAKE FORWARD'
 * '<S56>'  : 'ATV/loop_10ms/DRIVE BY WIRE_FRONT/SELETTORE SENSI DI MARCIA'
 * '<S57>'  : 'ATV/loop_10ms/DRIVE BY WIRE_FRONT/DBW REVERSE/negativo1'
 * '<S58>'  : 'ATV/loop_10ms/DRIVE BY WIRE_FRONT/DBW REVERSE/positivo1'
 * '<S59>'  : 'ATV/loop_10ms/DRIVE BY WIRE_FRONT/DBW + REG_BRAKE FORWARD/positiva // rigenerativa'
 * '<S60>'  : 'ATV/loop_10ms/DRIVE BY WIRE_FRONT/DBW + REG_BRAKE FORWARD/positiva // rigenerativa/negativo'
 * '<S61>'  : 'ATV/loop_10ms/DRIVE BY WIRE_FRONT/DBW + REG_BRAKE FORWARD/positiva // rigenerativa/positivo'
 * '<S62>'  : 'ATV/loop_10ms/DRIVE BY WIRE_REAR/DBW REVERSE'
 * '<S63>'  : 'ATV/loop_10ms/DRIVE BY WIRE_REAR/DBW + REG_BRAKE FORWARD'
 * '<S64>'  : 'ATV/loop_10ms/DRIVE BY WIRE_REAR/SELETTORE SENSI DI MARCIA'
 * '<S65>'  : 'ATV/loop_10ms/DRIVE BY WIRE_REAR/DBW REVERSE/negativo1'
 * '<S66>'  : 'ATV/loop_10ms/DRIVE BY WIRE_REAR/DBW REVERSE/positivo1'
 * '<S67>'  : 'ATV/loop_10ms/DRIVE BY WIRE_REAR/DBW + REG_BRAKE FORWARD/positiva // rigenerativa'
 * '<S68>'  : 'ATV/loop_10ms/DRIVE BY WIRE_REAR/DBW + REG_BRAKE FORWARD/positiva // rigenerativa/negativo'
 * '<S69>'  : 'ATV/loop_10ms/DRIVE BY WIRE_REAR/DBW + REG_BRAKE FORWARD/positiva // rigenerativa/positivo'
 * '<S70>'  : 'ATV/loop_10ms/HYBRID MANAGEMENT_ByGiovanni/VSMGestioneIbrido'
 * '<S71>'  : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_0/VSMGestioneIbrido'
 * '<S72>'  : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido'
 */
#endif                                 /* RTW_HEADER_ATV_h_ */
