/*
 * ATV.h
 *
 * Code generation for model "ATV".
 *
 * Model version              : 6.673
 * Simulink Coder version : 9.0 (R2018b) 24-May-2018
 * C source code generated on : Wed Feb 21 16:55:40 2024
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
#include <float.h>
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

/* Block signals for system '<S4>/Chart' */
typedef struct {
  boolean_T out;                       /* '<S4>/Chart' */
} B_Chart_ATV_T;

/* Block states (default storage) for system '<S4>/Chart' */
typedef struct {
  uint8_T is_active_c4_ATV;            /* '<S4>/Chart' */
  uint8_T is_c4_ATV;                   /* '<S4>/Chart' */
  uint8_T temporalCounter_i1;          /* '<S4>/Chart' */
} DW_Chart_ATV_T;

/* Block signals for system '<S8>/Chart' */
typedef struct {
  boolean_T out;                       /* '<S8>/Chart' */
} B_Chart_ATV_o_T;

/* Block states (default storage) for system '<S8>/Chart' */
typedef struct {
  uint8_T is_active_c24_ATV;           /* '<S8>/Chart' */
  uint8_T is_c24_ATV;                  /* '<S8>/Chart' */
  uint8_T temporalCounter_i1;          /* '<S8>/Chart' */
} DW_Chart_ATV_n_T;

/* Block signals for system '<S29>/Chart' */
typedef struct {
  boolean_T out;                       /* '<S29>/Chart' */
} B_Chart_ATV_k_T;

/* Block states (default storage) for system '<S29>/Chart' */
typedef struct {
  uint8_T is_active_c5_ATV;            /* '<S29>/Chart' */
  uint8_T is_c5_ATV;                   /* '<S29>/Chart' */
  uint8_T temporalCounter_i1;          /* '<S29>/Chart' */
} DW_Chart_ATV_k_T;

/* Block signals for system '<S157>/Chart' */
typedef struct {
  boolean_T out;                       /* '<S157>/Chart' */
} B_Chart_ATV_e_T;

/* Block states (default storage) for system '<S157>/Chart' */
typedef struct {
  uint8_T is_active_c20_ATV;           /* '<S157>/Chart' */
  uint8_T is_c20_ATV;                  /* '<S157>/Chart' */
  uint8_T temporalCounter_i1;          /* '<S157>/Chart' */
} DW_Chart_ATV_g_T;

/* Block signals (default storage) */
typedef struct {
  real_T atv_yj3_raw_ain;              /* '<S28>/pai_BasicAnalogInput13' */
  real_T pai_BasicAnalogInput;         /* '<S28>/pai_BasicAnalogInput' */
  real_T pai_BasicAnalogInput17;       /* '<S28>/pai_BasicAnalogInput17' */
  real_T pai_BasicAnalogInput18;       /* '<S28>/pai_BasicAnalogInput18' */
  real_T pai_BasicAnalogInput16;       /* '<S28>/pai_BasicAnalogInput16' */
  real_T RateTransition6;              /* '<S6>/Rate Transition6' */
  real_T RateTransition5;              /* '<S6>/Rate Transition5' */
  real_T RateTransition1;              /* '<S6>/Rate Transition1' */
  real_T RateTransition2;              /* '<S6>/Rate Transition2' */
  real_T RateTransition3;              /* '<S4>/Rate Transition3' */
  real_T atv_yg3_raw_ain_h;            /* '<S28>/pai_BasicAnalogInput9' */
  real_T Saturation;                   /* '<S25>/Saturation' */
  real_T pdx_PWMOutput;                /* '<S25>/pdx_PWMOutput' */
  real_T put_Calmap1d1;                /* '<S141>/put_Calmap1d1' */
  real_T pdx_PWMOutput1;               /* '<S25>/pdx_PWMOutput1' */
  real_T pdx_PWMOutput2;               /* '<S25>/pdx_PWMOutput2' */
  real_T bms_rolling_counter_e;        /* '<S4>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5;  /* '<S4>/pcx_CANdb_ReceiveMessage' */
  real_T atv_bms_pack_current;         /* '<S4>/pcx_CANdb_ReceiveMessage' */
  real_T atv_bms_pack_soh;             /* '<S4>/pcx_CANdb_ReceiveMessage' */
  real_T bms_pack_voltage_e;           /* '<S4>/pcx_CANdb_ReceiveMessage' */
  real_T RateTransition6_o;            /* '<S4>/Rate Transition6' */
  real_T B_Min_Cell;                   /* '<S6>/pcx_CANdb_ReceiveMessage' */
  real_T B_Min_Cell_ID;                /* '<S6>/pcx_CANdb_ReceiveMessage' */
  real_T B_Max_Cell_ID;                /* '<S6>/pcx_CANdb_ReceiveMessage' */
  real_T B_Min_Temp;                   /* '<S6>/pcx_CANdb_ReceiveMessage' */
  real_T B_Max_Temp;                   /* '<S6>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o4;  /* '<S7>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5_g;/* '<S7>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o6;  /* '<S7>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage1_o4; /* '<S7>/pcx_CANdb_ReceiveMessage1' */
  real_T Saturateatthreshold;          /* '<S47>/Saturate at threshold' */
  real_T Saturateatthreshold_n;        /* '<S48>/Saturate at threshold' */
  real_T pcx_CANdb_ReceiveMessage_o4_f;/* '<S10>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5_e;/* '<S10>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o7;  /* '<S10>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o4_fz;/* '<S12>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5_m;/* '<S12>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o7_g;/* '<S12>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o4_l;/* '<S13>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5_k;/* '<S13>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o7_gf;/* '<S13>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o4_e;/* '<S15>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5_c;/* '<S15>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o6_a;/* '<S15>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o7_i;/* '<S15>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o4_j;/* '<S16>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5_p;/* '<S16>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o6_i;/* '<S16>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o7_o;/* '<S16>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o4_ly;/* '<S17>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5_i;/* '<S17>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o6_e;/* '<S17>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o7_d;/* '<S17>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o4_a;/* '<S18>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5_d;/* '<S18>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o6_k;/* '<S18>/pcx_CANdb_ReceiveMessage' */
  real_T pai_BasicAnalogInput2;        /* '<S28>/pai_BasicAnalogInput2' */
  real_T atv_yf3_raw_ain;              /* '<S28>/pai_BasicAnalogInput14' */
  real_T atv_yg3_raw_ain_c;            /* '<S28>/Rate Transition' */
  real_T atv_yg3_raw_ain_o;            /* '<S28>/Rate Transition1' */
  real_T RateTransition3_o;            /* '<S139>/Rate Transition3' */
  real_T pnv_AdaptiveScalar;           /* '<S139>/pnv_AdaptiveScalar' */
  real_T put_Calmap1d;                 /* '<S141>/put_Calmap1d' */
  real_T RateTransition3_a;            /* '<S5>/Rate Transition3' */
  real_T FilterCoefficient;            /* '<S234>/Filter Coefficient' */
  real_T RateTransition3_p;            /* '<S142>/Rate Transition3' */
  real_T pnv_AdaptiveScalar_h;         /* '<S142>/pnv_AdaptiveScalar' */
  real_T pnv_AdaptiveScalar_g;         /* '<S145>/pnv_AdaptiveScalar' */
  real_T Product;                      /* '<S145>/Product' */
  real_T Gain1;                        /* '<S145>/Gain1' */
  real_T RateTransition3_d;            /* '<S146>/Rate Transition3' */
  real_T pnv_AdaptiveScalar_k;         /* '<S146>/pnv_AdaptiveScalar' */
  real_T pcx_CANdb_ReceiveMessage_o4_p;/* '<S5>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5_mt;/* '<S5>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o6_m;/* '<S5>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o7_ig;/* '<S5>/pcx_CANdb_ReceiveMessage' */
  real_T RateTransition6_e;            /* '<S5>/Rate Transition6' */
  real_T pcx_CANdb_ReceiveMessage_o4_o;/* '<S8>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5_dy;/* '<S8>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o7_l;/* '<S8>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o4_n;/* '<S9>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5_l;/* '<S9>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o7_m;/* '<S9>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o4_i;/* '<S14>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o5_b;/* '<S14>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o8;  /* '<S14>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o9;  /* '<S14>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o10; /* '<S14>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o11; /* '<S14>/pcx_CANdb_ReceiveMessage' */
  real_T pcx_CANdb_ReceiveMessage_o12; /* '<S14>/pcx_CANdb_ReceiveMessage' */
  real_T psc_CpuLoading;               /* '<S3>/psc_CpuLoading' */
  real_T Switch;                       /* '<S3>/Switch' */
  real_T Gain2;                        /* '<S3>/Gain2' */
  real_T Divide1;                      /* '<S3>/Divide1' */
  real_T Divide2;                      /* '<S3>/Divide2' */
  real_T Divide3;                      /* '<S3>/Divide3' */
  uint32_T DataTypeConversion;         /* '<S139>/Data Type Conversion' */
  uint32_T DataTypeConversion_e;       /* '<S142>/Data Type Conversion' */
  uint32_T DataTypeConversion_eb;      /* '<S146>/Data Type Conversion' */
  uint32_T ptm_RealTime;               /* '<S109>/ptm_RealTime' */
  uint32_T Memory;                     /* '<S109>/Memory' */
  real32_T DataTypeConversion3;        /* '<S141>/Data Type Conversion3' */
  real32_T pcx_CANdb_ReceiveMessage_o6_o;/* '<S10>/pcx_CANdb_ReceiveMessage' */
  real32_T pcx_CANdb_ReceiveMessage_o6_n;/* '<S12>/pcx_CANdb_ReceiveMessage' */
  real32_T pcx_CANdb_ReceiveMessage_o6_eb;/* '<S13>/pcx_CANdb_ReceiveMessage' */
  real32_T pcx_CANdb_ReceiveMessage_o6_ns;/* '<S8>/pcx_CANdb_ReceiveMessage' */
  real32_T pcx_CANdb_ReceiveMessage_o6_j;/* '<S9>/pcx_CANdb_ReceiveMessage' */
  real32_T Switch_p;                   /* '<S19>/Switch' */
  real32_T RateTransition11;           /* '<S3>/Rate Transition11' */
  real32_T RateTransition17;           /* '<S3>/Rate Transition17' */
  real32_T RateTransition12;           /* '<S3>/Rate Transition12' */
  int32_T IntegralGain;                /* '<S214>/Integral Gain' */
  int32_T RateTransition2_j;           /* '<S139>/Rate Transition2' */
  int32_T RateTransition2_m;           /* '<S142>/Rate Transition2' */
  int32_T atvc_odometer_reset_o;       /* '<S145>/atvc_odometer_reset' */
  int32_T RateTransition2_k;           /* '<S146>/Rate Transition2' */
  int32_T Divide;                      /* '<S3>/Divide' */
  uint16_T pcx_CANdb_ReceiveMessage_o4_ni;/* '<S11>/pcx_CANdb_ReceiveMessage' */
  uint16_T Switch_m;                   /* '<S11>/Switch' */
  uint16_T Cast1;                      /* '<S147>/Cast1' */
  uint16_T Cast2;                      /* '<S147>/Cast2' */
  uint16_T RateTransition39;           /* '<Root>/Rate Transition39' */
  uint16_T tHROTTLEGen_X1000_out;      /* '<S141>/VSMGestioneIbrido' */
  uint16_T footBrake_X1000_out;        /* '<S141>/VSMGestioneIbrido' */
  uint16_T MinMax;                     /* '<S3>/MinMax' */
  int16_T RateTransition6_a;           /* '<Root>/Rate Transition6' */
  int16_T RateTransition7;             /* '<Root>/Rate Transition7' */
  int16_T RateTransition10;            /* '<Root>/Rate Transition10' */
  int16_T RateTransition11_n;          /* '<Root>/Rate Transition11' */
  int16_T RateTransition26;            /* '<Root>/Rate Transition26' */
  int16_T rear_motor_speed;            /* '<Root>/Rate Transition27' */
  int16_T RateTransition8;             /* '<Root>/Rate Transition8' */
  int16_T RateTransition9;             /* '<Root>/Rate Transition9' */
  int16_T UnaryMinus1;                 /* '<S141>/Unary Minus1' */
  int16_T Saturation_e;                /* '<S10>/Saturation' */
  int16_T Switch1;                     /* '<S10>/Switch1' */
  int16_T Saturation_a;                /* '<S12>/Saturation' */
  int16_T Switch1_j;                   /* '<S12>/Switch1' */
  int16_T Saturation_k;                /* '<S13>/Saturation' */
  int16_T Switch1_l;                   /* '<S13>/Switch1' */
  int16_T Switch1_e;                   /* '<S15>/Switch1' */
  int16_T Switch1_h;                   /* '<S16>/Switch1' */
  int16_T Switch1_f;                   /* '<S17>/Switch1' */
  int16_T Saturation1;                 /* '<S141>/Saturation1' */
  int16_T DataTypeConversion1;         /* '<S145>/Data Type Conversion1' */
  int16_T DataTypeConversion1_i;       /* '<S32>/Data Type Conversion1' */
  int16_T Saturation_d;                /* '<S3>/Saturation' */
  int16_T Saturation1_j;               /* '<S3>/Saturation1' */
  int16_T UnaryMinus1_l;               /* '<S3>/Unary Minus1' */
  int16_T RateTransition16;            /* '<S3>/Rate Transition16' */
  uint8_T RateTransition4;             /* '<S4>/Rate Transition4' */
  uint8_T pnv_array2_o2;               /* '<S138>/pnv_array2' */
  uint8_T pcx_CANdb_ReceiveMessage_o6_ec;/* '<S14>/pcx_CANdb_ReceiveMessage' */
  uint8_T pcx_CANdb_ReceiveMessage_o7_c;/* '<S14>/pcx_CANdb_ReceiveMessage' */
  uint8_T pnv_array2_o2_m;             /* '<S61>/pnv_array2' */
  uint8_T pnv_array1_o2;               /* '<S61>/pnv_array1' */
  uint8_T pnv_array2_o2_md;            /* '<S62>/pnv_array2' */
  uint8_T Saturation1_n;               /* '<S62>/Saturation1' */
  uint8_T pnv_array1_o2_c;             /* '<S62>/pnv_array1' */
  uint8_T Saturation3;                 /* '<S62>/Saturation3' */
  uint8_T RateTransition7_p;           /* '<S3>/Rate Transition7' */
  int8_T Switch3;                      /* '<S6>/Switch3' */
  boolean_T atv_StartBtn_din;          /* '<S28>/Logical Operator' */
  boolean_T LogicalOperator1;          /* '<Root>/Logical Operator1' */
  boolean_T RateTransition4_f;         /* '<Root>/Rate Transition4' */
  boolean_T RateTransition37;          /* '<Root>/Rate Transition37' */
  boolean_T LogicalOperator;           /* '<Root>/Logical Operator' */
  boolean_T Memory1;                   /* '<S34>/Memory1' */
  boolean_T Memory2;                   /* '<S34>/Memory2' */
  boolean_T Memory3;                   /* '<S34>/Memory3' */
  boolean_T RateTransition5_l;         /* '<Root>/Rate Transition5' */
  boolean_T Memory4;                   /* '<S34>/Memory4' */
  boolean_T Compare;                   /* '<S133>/Compare' */
  boolean_T Switch_k;                  /* '<S34>/Switch' */
  boolean_T Compare_b;                 /* '<S136>/Compare' */
  boolean_T Compare_l;                 /* '<S137>/Compare' */
  boolean_T RateTransition27;          /* '<S6>/Rate Transition27' */
  boolean_T Compare_ln;                /* '<S79>/Compare' */
  boolean_T Compare_bk;                /* '<S78>/Compare' */
  boolean_T Compare_e;                 /* '<S80>/Compare' */
  boolean_T Compare_f;                 /* '<S77>/Compare' */
  boolean_T Compare_bl;                /* '<S22>/Compare' */
  boolean_T RateTransition27_k;        /* '<S4>/Rate Transition27' */
  boolean_T Compare_n;                 /* '<S24>/Compare' */
  boolean_T RateTransition38;          /* '<Root>/Rate Transition38' */
  boolean_T pdx_DigitalOutput;         /* '<S25>/pdx_DigitalOutput' */
  boolean_T pdx_DigitalOutput1;        /* '<S25>/pdx_DigitalOutput1' */
  boolean_T RateTransition48;          /* '<Root>/Rate Transition48' */
  boolean_T atv_run_mode;              /* '<S34>/Logical Operator6' */
  boolean_T LogicalOperator_i;         /* '<S25>/Logical Operator' */
  boolean_T pdx_DigitalOutput10;       /* '<S25>/pdx_DigitalOutput10' */
  boolean_T pdx_DigitalOutput11;       /* '<S25>/pdx_DigitalOutput11' */
  boolean_T pdx_DigitalOutput12;       /* '<S25>/pdx_DigitalOutput12' */
  boolean_T pdx_DigitalOutput13;       /* '<S25>/pdx_DigitalOutput13' */
  boolean_T RelationalOperator1;       /* '<S141>/Relational Operator1' */
  boolean_T pdx_DigitalOutput2;        /* '<S25>/pdx_DigitalOutput2' */
  boolean_T pdx_DigitalOutput3;        /* '<S25>/pdx_DigitalOutput3' */
  boolean_T pdx_DigitalOutput4;        /* '<S25>/pdx_DigitalOutput4' */
  boolean_T pdx_DigitalOutput5;        /* '<S25>/pdx_DigitalOutput5' */
  boolean_T pdx_DigitalOutput6;        /* '<S25>/pdx_DigitalOutput6' */
  boolean_T pdx_DigitalOutput7;        /* '<S25>/pdx_DigitalOutput7' */
  boolean_T pdx_DigitalOutput8;        /* '<S25>/pdx_DigitalOutput8' */
  boolean_T pdx_DigitalOutput9;        /* '<S25>/pdx_DigitalOutput9' */
  boolean_T pcx_CANdb_ReceiveMessage_o1;/* '<S4>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2;/* '<S4>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3;/* '<S4>/pcx_CANdb_ReceiveMessage' */
  boolean_T LogicalOperator_n;         /* '<S4>/Logical Operator' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_m;/* '<S6>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_k;/* '<S6>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_k;/* '<S6>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_mn;/* '<S7>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_a;/* '<S7>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_i;/* '<S7>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage1_o1;/* '<S7>/pcx_CANdb_ReceiveMessage1' */
  boolean_T pcx_CANdb_ReceiveMessage1_o2;/* '<S7>/pcx_CANdb_ReceiveMessage1' */
  boolean_T pcx_CANdb_ReceiveMessage1_o3;/* '<S7>/pcx_CANdb_ReceiveMessage1' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_md;/* '<S10>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_e;/* '<S10>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_g;/* '<S10>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_h;/* '<S11>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_o;/* '<S11>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_d;/* '<S11>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_g;/* '<S12>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_n;/* '<S12>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_dp;/* '<S12>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_k;/* '<S13>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_b;/* '<S13>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_kd;/* '<S13>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_d;/* '<S15>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_nk;/* '<S15>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_ig;/* '<S15>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_c;/* '<S16>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_i;/* '<S16>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_h;/* '<S16>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_m1;/* '<S17>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_d;/* '<S17>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_iz;/* '<S17>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_i;/* '<S18>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_g;/* '<S18>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_p;/* '<S18>/pcx_CANdb_ReceiveMessage' */
  boolean_T pnv_array2_o1;             /* '<S138>/pnv_array2' */
  boolean_T Compare_bt;                /* '<S160>/Compare' */
  boolean_T Compare_p;                 /* '<S163>/Compare' */
  boolean_T LogicalOperator2;          /* '<S138>/Logical Operator2' */
  boolean_T RateTransition4_a;         /* '<S139>/Rate Transition4' */
  boolean_T RateTransition5_m;         /* '<S139>/Rate Transition5' */
  boolean_T LogicalOperator_a;         /* '<S139>/Logical Operator' */
  boolean_T LogicalOperator_l;         /* '<S165>/Logical Operator' */
  boolean_T RateTransition27_a;        /* '<S5>/Rate Transition27' */
  boolean_T RateTransition;            /* '<S142>/Rate Transition' */
  boolean_T RateTransition4_n;         /* '<S142>/Rate Transition4' */
  boolean_T LogicalOperator_ic;        /* '<S142>/Logical Operator' */
  boolean_T LogicalOperator_ne;        /* '<S370>/Logical Operator' */
  boolean_T Memory4_o;                 /* '<S145>/Memory4' */
  boolean_T LogicalOperator_m;         /* '<S145>/Logical Operator' */
  boolean_T LogicalOperator_mo;        /* '<S372>/Logical Operator' */
  boolean_T FixPtLogicalOperator;      /* '<S373>/FixPt Logical Operator' */
  boolean_T RateTransition4_e;         /* '<S146>/Rate Transition4' */
  boolean_T RateTransition5_b;         /* '<S146>/Rate Transition5' */
  boolean_T LogicalOperator_f;         /* '<S146>/Logical Operator' */
  boolean_T LogicalOperator_j;         /* '<S374>/Logical Operator' */
  boolean_T Compare_k;                 /* '<S127>/Compare' */
  boolean_T Compare_m;                 /* '<S130>/Compare' */
  boolean_T LogicalOperator7;          /* '<S34>/Logical Operator7' */
  boolean_T LogicalOperator_pn;        /* '<S140>/Logical Operator' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_a;/* '<S5>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_gq;/* '<S5>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_l;/* '<S5>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_ht;/* '<S8>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_et;/* '<S8>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_gf;/* '<S8>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_dy;/* '<S9>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_gi;/* '<S9>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_n;/* '<S9>/pcx_CANdb_ReceiveMessage' */
  boolean_T LogicalOperator_g;         /* '<S9>/Logical Operator' */
  boolean_T pdx_DigitalOutput_b;       /* '<Root>/pdx_DigitalOutput' */
  boolean_T pdx_DigitalOutput1_i;      /* '<Root>/pdx_DigitalOutput1' */
  boolean_T pdx_DigitalOutput13_e;     /* '<Root>/pdx_DigitalOutput13' */
  boolean_T pdx_DigitalOutput2_p;      /* '<Root>/pdx_DigitalOutput2' */
  boolean_T pdx_DigitalOutput3_l;      /* '<Root>/pdx_DigitalOutput3' */
  boolean_T pdx_DigitalOutput5_m;      /* '<Root>/pdx_DigitalOutput5' */
  boolean_T pnv_Status_o1;             /* '<Root>/pnv_Status' */
  boolean_T pnv_Status_o2;             /* '<Root>/pnv_Status' */
  boolean_T pcx_CANdb_ReceiveMessage_o1_kr;/* '<S14>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o2_c;/* '<S14>/pcx_CANdb_ReceiveMessage' */
  boolean_T pcx_CANdb_ReceiveMessage_o3_j;/* '<S14>/pcx_CANdb_ReceiveMessage' */
  boolean_T RateTransition33;          /* '<Root>/Rate Transition33' */
  boolean_T RateTransition35;          /* '<Root>/Rate Transition35' */
  boolean_T RateTransition34;          /* '<Root>/Rate Transition34' */
  boolean_T Compare_c;                 /* '<S71>/Compare' */
  boolean_T Compare_ex;                /* '<S72>/Compare' */
  boolean_T Compare_fw;                /* '<S73>/Compare' */
  boolean_T Compare_lc;                /* '<S74>/Compare' */
  boolean_T Compare_ew;                /* '<S75>/Compare' */
  boolean_T Compare_mq;                /* '<S76>/Compare' */
  boolean_T Compare_g;                 /* '<S70>/Compare' */
  boolean_T Compare_o;                 /* '<S69>/Compare' */
  boolean_T RateTransition40;          /* '<Root>/Rate Transition40' */
  boolean_T RateTransition41;          /* '<Root>/Rate Transition41' */
  boolean_T hvp_ctrl_out;              /* '<S34>/VSM' */
  boolean_T hvm_ctrl_out;              /* '<S34>/VSM' */
  boolean_T chg_ctrl_out;              /* '<S34>/VSM' */
  boolean_T heater_ctrl_out;           /* '<S34>/VSM' */
  boolean_T en_inv_front_out;          /* '<S34>/VSM' */
  boolean_T en_inv_rear_out;           /* '<S34>/VSM' */
  boolean_T en_inv_gen_out;            /* '<S34>/VSM' */
  boolean_T runLed_out;                /* '<S34>/VSM' */
  boolean_T apu_start_out;             /* '<S34>/VSM' */
  boolean_T chg_complete_out;          /* '<S34>/VSM' */
  boolean_T chg_shutdown_out;          /* '<S34>/VSM' */
  boolean_T heater_disabled;           /* '<S34>/VSM' */
  boolean_T heater_warn;               /* '<S34>/VSM' */
  boolean_T GenFwd_out;                /* '<S141>/VSMGestioneIbrido' */
  boolean_T FS1_out;                   /* '<S141>/VSMGestioneIbrido' */
  boolean_T IceReduceLoad;             /* '<S141>/VSMGestioneIbrido' */
  boolean_T apu_req_out;               /* '<S34>/Chart1' */
  boolean_T warn_high_soc;             /* '<S34>/Chart1' */
  boolean_T warn_low_soc;              /* '<S34>/Chart1' */
  boolean_T Out;                       /* '<S150>/Chart2' */
  boolean_T Out_i;                     /* '<S150>/Chart1' */
  boolean_T pcx_CANdb_TransmitMessage; /* '<S68>/pcx_CANdb_TransmitMessage' */
  boolean_T pcx_CANdb_TransmitMessage1;/* '<S68>/pcx_CANdb_TransmitMessage1' */
  boolean_T pcx_CANdb_TransmitMessage_e;/* '<S59>/pcx_CANdb_TransmitMessage' */
  boolean_T pnv_array2_o1_g;           /* '<S61>/pnv_array2' */
  boolean_T pnv_array1_o1;             /* '<S61>/pnv_array1' */
  boolean_T pcx_CANdb_TransmitMessage_f;/* '<S61>/pcx_CANdb_TransmitMessage' */
  boolean_T pcx_CANdb_TransmitMessage_l;/* '<S63>/pcx_CANdb_TransmitMessage' */
  boolean_T pnv_array2_o1_c;           /* '<S62>/pnv_array2' */
  boolean_T pnv_array1_o1_n;           /* '<S62>/pnv_array1' */
  boolean_T pcx_CANdb_TransmitMessage_n;/* '<S62>/pcx_CANdb_TransmitMessage' */
  boolean_T RelationalOperator_l;      /* '<S3>/Relational Operator' */
  boolean_T pcx_CANdb_TransmitMessage_h;/* '<S3>/pcx_CANdb_TransmitMessage' */
  boolean_T RateTransition4_b;         /* '<S3>/Rate Transition4' */
  boolean_T RateTransition_b;          /* '<S3>/Rate Transition' */
  boolean_T RateTransition1_m;         /* '<S3>/Rate Transition1' */
  boolean_T RateTransition2_h;         /* '<S3>/Rate Transition2' */
  boolean_T RateTransition8_a;         /* '<S3>/Rate Transition8' */
  boolean_T RateTransition9_i;         /* '<S3>/Rate Transition9' */
  boolean_T RateTransition10_g;        /* '<S3>/Rate Transition10' */
  boolean_T pcx_CANdb_TransmitMessage1_p;/* '<S3>/pcx_CANdb_TransmitMessage1' */
  boolean_T pcx_CANdb_TransmitMessage10;/* '<S3>/pcx_CANdb_TransmitMessage10' */
  boolean_T pcx_CANdb_TransmitMessage11;/* '<S3>/pcx_CANdb_TransmitMessage11' */
  boolean_T pcx_CANdb_TransmitMessage12;/* '<S3>/pcx_CANdb_TransmitMessage12' */
  boolean_T pcx_CANdb_TransmitMessage13;/* '<S3>/pcx_CANdb_TransmitMessage13' */
  boolean_T pcx_CANdb_TransmitMessage14;/* '<S3>/pcx_CANdb_TransmitMessage14' */
  boolean_T pcx_CANdb_TransmitMessage15;/* '<S3>/pcx_CANdb_TransmitMessage15' */
  boolean_T pcx_CANdb_TransmitMessage2;/* '<S3>/pcx_CANdb_TransmitMessage2' */
  boolean_T pcx_CANdb_TransmitMessage20;/* '<S3>/pcx_CANdb_TransmitMessage20' */
  boolean_T pcx_CANdb_TransmitMessage23;/* '<S3>/pcx_CANdb_TransmitMessage23' */
  boolean_T pcx_CANdb_TransmitMessage3;/* '<S3>/pcx_CANdb_TransmitMessage3' */
  boolean_T pcx_CANdb_TransmitMessage4;/* '<S3>/pcx_CANdb_TransmitMessage4' */
  boolean_T pcx_CANdb_TransmitMessage5;/* '<S3>/pcx_CANdb_TransmitMessage5' */
  boolean_T pcx_CANdb_TransmitMessage19;/* '<S3>/pcx_CANdb_TransmitMessage19' */
  boolean_T pcx_CANdb_TransmitMessage22;/* '<S3>/pcx_CANdb_TransmitMessage22' */
  boolean_T pcx_CANdb_TransmitMessage24;/* '<S3>/pcx_CANdb_TransmitMessage24' */
  boolean_T pcx_CANdb_TransmitMessage26;/* '<S3>/pcx_CANdb_TransmitMessage26' */
  boolean_T RateTransition3_j;         /* '<S3>/Rate Transition3' */
  boolean_T RateTransition5_g;         /* '<S3>/Rate Transition5' */
  boolean_T RateTransition6_p;         /* '<S3>/Rate Transition6' */
  boolean_T pcx_CANdb_TransmitMessage6;/* '<S3>/pcx_CANdb_TransmitMessage6' */
  boolean_T pcx_CANdb_TransmitMessage7;/* '<S3>/pcx_CANdb_TransmitMessage7' */
  boolean_T pcx_CANdb_TransmitMessage8;/* '<S3>/pcx_CANdb_TransmitMessage8' */
  boolean_T pcx_CANdb_TransmitMessage9;/* '<S3>/pcx_CANdb_TransmitMessage9' */
  boolean_T pcx_CANdb_TransmitMessage21;/* '<S3>/pcx_CANdb_TransmitMessage21' */
  boolean_T pcx_CANdb_TransmitMessage25;/* '<S3>/pcx_CANdb_TransmitMessage25' */
  boolean_T pcx_CANdb_TransmitMessage16;/* '<S3>/pcx_CANdb_TransmitMessage16' */
  boolean_T pcx_CANdb_TransmitMessage17;/* '<S3>/pcx_CANdb_TransmitMessage17' */
  boolean_T pcx_CANdb_TransmitMessage18;/* '<S3>/pcx_CANdb_TransmitMessage18' */
  boolean_T RateTransition15;          /* '<S3>/Rate Transition15' */
  boolean_T pcx_CANdb_TransmitMessage23_p;/* '<S42>/pcx_CANdb_TransmitMessage23' */
  boolean_T pcx_CANdb_TransmitMessage24_f;/* '<S42>/pcx_CANdb_TransmitMessage24' */
  B_Chart_ATV_e_T sf_Chart_p;          /* '<S158>/Chart' */
  B_Chart_ATV_e_T sf_Chart_n;          /* '<S157>/Chart' */
  B_Chart_ATV_k_T sf_Chart2;           /* '<S29>/Chart2' */
  B_Chart_ATV_k_T sf_Chart1;           /* '<S29>/Chart1' */
  B_Chart_ATV_k_T sf_Chart_cv;         /* '<S29>/Chart' */
  B_Chart_ATV_o_T sf_Chart_ju;         /* '<S18>/Chart' */
  B_Chart_ATV_o_T sf_Chart_e;          /* '<S17>/Chart' */
  B_Chart_ATV_o_T sf_Chart_d0;         /* '<S16>/Chart' */
  B_Chart_ATV_o_T sf_Chart_m;          /* '<S15>/Chart' */
  B_Chart_ATV_o_T sf_Chart_a;          /* '<S13>/Chart' */
  B_Chart_ATV_o_T sf_Chart_l;          /* '<S12>/Chart' */
  B_Chart_ATV_o_T sf_Chart_jt;         /* '<S10>/Chart' */
  B_Chart_ATV_o_T sf_Chart_c;          /* '<S9>/Chart' */
  B_Chart_ATV_o_T sf_Chart_o;          /* '<S8>/Chart' */
  B_Chart_ATV_T sf_Chart_j;            /* '<S6>/Chart' */
  B_Chart_ATV_T sf_Chart;              /* '<S4>/Chart' */
} B_ATV_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  dsp_private_SlidingWindowAver_T gobj_0;/* '<S28>/Moving Average' */
  dsp_private_SlidingWindowAver_T gobj_1;/* '<S28>/Moving Average' */
  dsp_private_SlidingWindowAv_p_T gobj_0_l;/* '<S168>/Moving Average' */
  dsp_private_SlidingWindowAv_p_T gobj_1_e;/* '<S168>/Moving Average' */
  dsp_simulink_MovingAverage_AT_T obj; /* '<S28>/Moving Average' */
  dsp_simulink_MovingAverage_p_T obj_n;/* '<S168>/Moving Average' */
  real_T UnitDelay3_DSTATE;            /* '<S47>/Unit Delay3' */
  real_T UnitDelay3_DSTATE_p;          /* '<S48>/Unit Delay3' */
  real_T Filter_DSTATE;                /* '<S206>/Filter' */
  real_T DiscreteTimeIntegrator_DSTATE;/* '<S145>/Discrete-Time Integrator' */
  real_T RateTransition6_Buffer0;      /* '<S6>/Rate Transition6' */
  real_T RateTransition5_Buffer0;      /* '<S6>/Rate Transition5' */
  real_T RateTransition1_Buffer0;      /* '<S6>/Rate Transition1' */
  real_T RateTransition2_Buffer0;      /* '<S6>/Rate Transition2' */
  real_T RateTransition3_Buffer0;      /* '<S4>/Rate Transition3' */
  real_T PrevY;                        /* '<S141>/Rate Limiter4' */
  real_T RateTransition6_Buffer0_j;    /* '<S4>/Rate Transition6' */
  real_T RateTransition_Buffer0;       /* '<S28>/Rate Transition' */
  real_T RateTransition3_Buffer0_j;    /* '<S5>/Rate Transition3' */
  real_T RateTransition6_Buffer0_p;    /* '<S5>/Rate Transition6' */
  real_T IceStartAttempCnt;            /* '<S141>/VSMGestioneIbrido' */
  real_T NextOutput;                   /* '<S3>/Random Number' */
  real32_T Integrator_DSTATE;          /* '<S325>/Integrator' */
  int32_T Integrator_DSTATE_b;         /* '<S224>/Integrator' */
  real32_T PrevY_d;                    /* '<S141>/Rate Limiter2' */
  real32_T PrevY_a;                    /* '<S141>/Rate Limiter3' */
  int32_T Memory1_PreviousInput;       /* '<S165>/Memory1' */
  int32_T Memory1_PreviousInput_d;     /* '<S370>/Memory1' */
  int32_T Memory1_PreviousInput_o;     /* '<S372>/Memory1' */
  int32_T Memory1_PreviousInput_c;     /* '<S374>/Memory1' */
  int32_T clockTickCounter;            /* '<S34>/Pulse Generator' */
  uint32_T RateTransition1_Buffer0_b;  /* '<S139>/Rate Transition1' */
  uint32_T RateTransition1_Buffer0_k;  /* '<S142>/Rate Transition1' */
  uint32_T RateTransition1_Buffer0_i;  /* '<S146>/Rate Transition1' */
  uint32_T temporalCounter_i1;         /* '<S141>/VSMGestioneIbrido' */
  uint32_T IceSMspeed_pid_ice_ELAPS_T[2];/* '<S169>/IceSM.speed_pid_ice' */
  uint32_T IceSMspeed_pid_ice_PREV_T[2];/* '<S169>/IceSM.speed_pid_ice' */
  uint32_T ptm_RealTime_DWORK1;        /* '<S109>/ptm_RealTime' */
  uint32_T Memory_PreviousInput;       /* '<S109>/Memory' */
  uint32_T RandSeed;                   /* '<S3>/Random Number' */
  int16_T RateTransition6_Buffer0_i;   /* '<Root>/Rate Transition6' */
  int16_T RateTransition7_Buffer0;     /* '<Root>/Rate Transition7' */
  int16_T RateTransition10_Buffer0;    /* '<Root>/Rate Transition10' */
  int16_T RateTransition11_Buffer0;    /* '<Root>/Rate Transition11' */
  int16_T RateTransition26_Buffer0;    /* '<Root>/Rate Transition26' */
  int16_T RateTransition27_Buffer0;    /* '<Root>/Rate Transition27' */
  int16_T RateTransition8_Buffer0;     /* '<Root>/Rate Transition8' */
  int16_T RateTransition9_Buffer0;     /* '<Root>/Rate Transition9' */
  int16_T RateTransition24_Buffer0;    /* '<Root>/Rate Transition24' */
  int16_T Memory_PreviousInput_f;      /* '<S32>/Memory' */
  int16_T attemp;                      /* '<S150>/Chart2' */
  int16_T attemp_n;                    /* '<S150>/Chart1' */
  uint16_T PrevY_l;                    /* '<S141>/Rate Limiter' */
  uint16_T PrevY_k;                    /* '<S141>/Rate Limiter1' */
  uint16_T temporalCounter_i3;         /* '<S34>/VSM' */
  uint16_T temporalCounter_i2;         /* '<S141>/VSMGestioneIbrido' */
  int8_T DiscreteTimeIntegrator_PrevRese;/* '<S145>/Discrete-Time Integrator' */
  int8_T If_ActiveSubsystem;           /* '<S32>/If' */
  int8_T Integrator_PrevResetState;    /* '<S325>/Integrator' */
  uint8_T RateTransition4_Buffer0;     /* '<S4>/Rate Transition4' */
  uint8_T is_active_c3_ATV;            /* '<S34>/VSM' */
  uint8_T is_CHG_CTRL;                 /* '<S34>/VSM' */
  uint8_T is_STARTTRIGGER;             /* '<S34>/VSM' */
  uint8_T is_HV_CTRL;                  /* '<S34>/VSM' */
  uint8_T is_HEATER_ON;                /* '<S34>/VSM' */
  uint8_T is_HEATER_CTRL;              /* '<S34>/VSM' */
  uint8_T is_SM;                       /* '<S34>/VSM' */
  uint8_T is_APU;                      /* '<S34>/VSM' */
  uint8_T is_RUN;                      /* '<S34>/VSM' */
  uint8_T is_DETECT;                   /* '<S34>/VSM' */
  uint8_T is_FAULT_DETECT;             /* '<S34>/VSM' */
  uint8_T temporalCounter_i1_j;        /* '<S34>/VSM' */
  uint8_T temporalCounter_i2_j;        /* '<S34>/VSM' */
  uint8_T temporalCounter_i4;          /* '<S34>/VSM' */
  uint8_T is_active_c2_ATV;            /* '<S141>/VSMGestioneIbrido' */
  uint8_T is_IceSM;                    /* '<S141>/VSMGestioneIbrido' */
  uint8_T is_active_IceSM;             /* '<S141>/VSMGestioneIbrido' */
  uint8_T is_MonitoraggioStatoICE;     /* '<S141>/VSMGestioneIbrido' */
  uint8_T is_WarmUpIce;                /* '<S141>/VSMGestioneIbrido' */
  uint8_T is_active_c25_ATV;           /* '<S34>/Chart1' */
  uint8_T is_KEY_ON;                   /* '<S34>/Chart1' */
  uint8_T is_RUN_MODE;                 /* '<S34>/Chart1' */
  uint8_T is_HYBRID;                   /* '<S34>/Chart1' */
  uint8_T is_ICE_START_STOP;           /* '<S34>/Chart1' */
  uint8_T is_FAULT_DETECTION;          /* '<S34>/Chart1' */
  uint8_T temporalCounter_i1_b;        /* '<S34>/Chart1' */
  uint8_T is_active_c22_ATV;           /* '<S150>/Chart2' */
  uint8_T is_c22_ATV;                  /* '<S150>/Chart2' */
  uint8_T temporalCounter_i1_l;        /* '<S150>/Chart2' */
  uint8_T is_active_c21_ATV;           /* '<S150>/Chart1' */
  uint8_T is_c21_ATV;                  /* '<S150>/Chart1' */
  uint8_T temporalCounter_i1_o;        /* '<S150>/Chart1' */
  uint8_T is_active_c18_ATV;           /* '<S150>/Chart' */
  uint8_T is_c18_ATV;                  /* '<S150>/Chart' */
  uint8_T temporalCounter_i1_h;        /* '<S150>/Chart' */
  uint8_T is_active_c15_ATV;           /* '<Root>/Chart' */
  uint8_T is_c15_ATV;                  /* '<Root>/Chart' */
  uint8_T temporalCounter_i1_c;        /* '<Root>/Chart' */
  uint8_T is_active_c14_ATV;           /* '<S11>/Chart' */
  uint8_T is_c14_ATV;                  /* '<S11>/Chart' */
  uint8_T temporalCounter_i1_o5;       /* '<S11>/Chart' */
  uint8_T is_active_c9_ATV;            /* '<S5>/Chart' */
  uint8_T is_c9_ATV;                   /* '<S5>/Chart' */
  uint8_T temporalCounter_i1_a;        /* '<S5>/Chart' */
  boolean_T Relay_Mode;                /* '<S124>/Relay' */
  boolean_T Relay1_Mode;               /* '<S124>/Relay1' */
  boolean_T Relay2_Mode;               /* '<S124>/Relay2' */
  boolean_T Relay8_Mode;               /* '<S124>/Relay8' */
  boolean_T Relay6_Mode;               /* '<S124>/Relay6' */
  boolean_T Relay2_Mode_g;             /* '<S28>/Relay2' */
  boolean_T Relay3_Mode;               /* '<S28>/Relay3' */
  boolean_T Relay1_Mode_b;             /* '<S28>/Relay1' */
  boolean_T RateTransition4_Buffer0_f; /* '<Root>/Rate Transition4' */
  boolean_T RateTransition37_Buffer0;  /* '<Root>/Rate Transition37' */
  boolean_T Memory1_PreviousInput_m;   /* '<S34>/Memory1' */
  boolean_T Memory2_PreviousInput;     /* '<S34>/Memory2' */
  boolean_T Memory3_PreviousInput;     /* '<S34>/Memory3' */
  boolean_T RateTransition5_Buffer0_c; /* '<Root>/Rate Transition5' */
  boolean_T Relay4_Mode;               /* '<S28>/Relay4' */
  boolean_T Memory_PreviousInput_l;    /* '<S34>/Memory' */
  boolean_T Memory4_PreviousInput;     /* '<S34>/Memory4' */
  boolean_T Memory5_PreviousInput;     /* '<S34>/Memory5' */
  boolean_T RateTransition27_Buffer0_b;/* '<S6>/Rate Transition27' */
  boolean_T RateTransition27_Buffer0_f;/* '<S4>/Rate Transition27' */
  boolean_T RateTransition38_Buffer0;  /* '<Root>/Rate Transition38' */
  boolean_T Relay3_Mode_h;             /* '<S124>/Relay3' */
  boolean_T Relay4_Mode_j;             /* '<S124>/Relay4' */
  boolean_T Relay5_Mode;               /* '<S124>/Relay5' */
  boolean_T Relay7_Mode;               /* '<S124>/Relay7' */
  boolean_T RateTransition48_Buffer0;  /* '<Root>/Rate Transition48' */
  boolean_T Relay1_Mode_n;             /* '<S154>/Relay1' */
  boolean_T Relay_Mode_b;              /* '<S28>/Relay' */
  boolean_T Relay7_Mode_o;             /* '<S28>/Relay7' */
  boolean_T Relay6_Mode_c;             /* '<S28>/Relay6' */
  boolean_T Relay5_Mode_e;             /* '<S28>/Relay5' */
  boolean_T Memory_PreviousInput_l4;   /* '<S157>/Memory' */
  boolean_T Memory_PreviousInput_lr;   /* '<S158>/Memory' */
  boolean_T RateTransition27_Buffer0_fl;/* '<S5>/Rate Transition27' */
  boolean_T Memory4_PreviousInput_o;   /* '<S145>/Memory4' */
  boolean_T Memory1_PreviousInput_om;  /* '<S371>/Memory1' */
  boolean_T Memory1_PreviousInput_e;   /* '<S140>/Memory1' */
  boolean_T RateTransition33_Buffer0;  /* '<Root>/Rate Transition33' */
  boolean_T RateTransition35_Buffer0;  /* '<Root>/Rate Transition35' */
  boolean_T RateTransition34_Buffer0;  /* '<Root>/Rate Transition34' */
  boolean_T HV_Req;                    /* '<S34>/VSM' */
  boolean_T chg_req;                   /* '<S34>/VSM' */
  boolean_T apu_req_in_prev;           /* '<S34>/VSM' */
  boolean_T apu_req_in_start;          /* '<S34>/VSM' */
  boolean_T StartBtn_In_prev;          /* '<S34>/VSM' */
  boolean_T StartBtn_In_start;         /* '<S34>/VSM' */
  boolean_T key_signal_prev;           /* '<S34>/VSM' */
  boolean_T key_signal_start;          /* '<S34>/VSM' */
  boolean_T reset_PID;                 /* '<S141>/VSMGestioneIbrido' */
  boolean_T ReqGen_prev;               /* '<S141>/VSMGestioneIbrido' */
  boolean_T ReqGen_start;              /* '<S141>/VSMGestioneIbrido' */
  boolean_T objisempty;                /* '<S168>/Moving Average' */
  boolean_T ice_fault;                 /* '<S34>/Chart1' */
  boolean_T apu_req_btn_in_prev;       /* '<S34>/Chart1' */
  boolean_T apu_req_btn_in_start;      /* '<S34>/Chart1' */
  boolean_T apu_off_in_prev;           /* '<S34>/Chart1' */
  boolean_T apu_off_in_start;          /* '<S34>/Chart1' */
  boolean_T low_soc_prev;              /* '<S34>/Chart1' */
  boolean_T low_soc_start;             /* '<S34>/Chart1' */
  boolean_T key_signal_prev_o;         /* '<S34>/Chart1' */
  boolean_T key_signal_start_i;        /* '<S34>/Chart1' */
  boolean_T ice_fault_in_prev;         /* '<S34>/Chart1' */
  boolean_T ice_fault_in_start;        /* '<S34>/Chart1' */
  boolean_T apu_req_sel_in_prev;       /* '<S34>/Chart1' */
  boolean_T apu_req_sel_in_start;      /* '<S34>/Chart1' */
  boolean_T fault_in_prev;             /* '<S150>/Chart2' */
  boolean_T fault_in_start;            /* '<S150>/Chart2' */
  boolean_T fault_in_prev_h;           /* '<S150>/Chart1' */
  boolean_T fault_in_start_c;          /* '<S150>/Chart1' */
  boolean_T objisempty_p;              /* '<S28>/Moving Average' */
  boolean_T CANBUS_Output_Processing_MODE;/* '<Root>/CANBUS_Output_Processing' */
  DW_Chart_ATV_g_T sf_Chart_p;         /* '<S158>/Chart' */
  DW_Chart_ATV_g_T sf_Chart_n;         /* '<S157>/Chart' */
  DW_Chart_ATV_k_T sf_Chart2;          /* '<S29>/Chart2' */
  DW_Chart_ATV_k_T sf_Chart1;          /* '<S29>/Chart1' */
  DW_Chart_ATV_k_T sf_Chart_cv;        /* '<S29>/Chart' */
  DW_Chart_ATV_n_T sf_Chart_ju;        /* '<S18>/Chart' */
  DW_Chart_ATV_n_T sf_Chart_e;         /* '<S17>/Chart' */
  DW_Chart_ATV_n_T sf_Chart_d0;        /* '<S16>/Chart' */
  DW_Chart_ATV_n_T sf_Chart_m;         /* '<S15>/Chart' */
  DW_Chart_ATV_n_T sf_Chart_a;         /* '<S13>/Chart' */
  DW_Chart_ATV_n_T sf_Chart_l;         /* '<S12>/Chart' */
  DW_Chart_ATV_n_T sf_Chart_jt;        /* '<S10>/Chart' */
  DW_Chart_ATV_n_T sf_Chart_c;         /* '<S9>/Chart' */
  DW_Chart_ATV_n_T sf_Chart_o;         /* '<S8>/Chart' */
  DW_Chart_ATV_T sf_Chart_j;           /* '<S6>/Chart' */
  DW_Chart_ATV_T sf_Chart;             /* '<S4>/Chart' */
} DW_ATV_T;

/* Zero-crossing (trigger) state */
typedef struct {
  ZCSigState TriggeredSubsystem_Trig_ZCE;/* '<S14>/Triggered Subsystem' */
} PrevZCX_ATV_T;

/* Constant parameters (default storage) */
typedef struct {
  /* Expression: [0.25 0.28 0.4 0.405 0.44 0.47 0.57 0.58 0.6 0.65]
   * Referenced by: '<S141>/1-D Lookup Table'
   */
  real_T uDLookupTable_tableData[10];

  /* Expression: [2000 2500 3000 3500 4000 4550 5000 5600 6250 7000]
   * Referenced by: '<S141>/1-D Lookup Table'
   */
  real_T uDLookupTable_bp01Data[10];

  /* Expression: [0.16 3.46]
   * Referenced by: '<S28>/1-D Lookup Table'
   */
  real_T uDLookupTable_bp01Data_d[2];

  /* Expression: [0.05 1 1]
   * Referenced by: '<S138>/1-D Lookup Table'
   */
  real_T uDLookupTable_tableData_n[3];

  /* Expression: [0 100 2000]
   * Referenced by: '<S138>/1-D Lookup Table'
   */
  real_T uDLookupTable_bp01Data_m[3];

  /* Expression: [1 1 1 1 1 1 0]
   * Referenced by: '<S138>/1-D Lookup Table1'
   */
  real_T uDLookupTable1_tableData[7];

  /* Expression: [0 2000 4000 6000 7000 7600 8700]
   * Referenced by: '<S138>/1-D Lookup Table1'
   */
  real_T uDLookupTable1_bp01Data[7];

  /* Expression: [1 1 1 1 1 0.7 0.2]
   * Referenced by: '<S138>/1-D Lookup Table2'
   */
  real_T uDLookupTable2_tableData[7];

  /* Expression: [0 2000 4000 5000 6000 7000 8900]
   * Referenced by: '<S138>/1-D Lookup Table2'
   */
  real_T uDLookupTable2_bp01Data[7];

  /* Computed Parameter: LowerLimit_Value
   * Referenced by: '<S111>/Lower Limit'
   */
  int64m_T LowerLimit_Value;

  /* Computed Parameter: UpperLimit_Value
   * Referenced by: '<S111>/Upper Limit'
   */
  int64m_T UpperLimit_Value;

  /* Pooled Parameter (Expression: [1500	1400	1300	1200	1100	1000	900	800	700	600	500	400	300	200	100	0	-100	-200	-300	-400])
   * Referenced by:
   *   '<S84>/Tensione-->Temperatura1'
   *   '<S85>/Tensione-->Temperatura1'
   *   '<S86>/Tensione-->Temperatura'
   */
  real32_T pooled23[20];

  /* Pooled Parameter (Expression: [0.060	0.074	0.093	0.117	0.149	0.191	0.246	0.322	0.424	0.563	0.754	1.000	1.332	1.736	2.233	2.782	3.333	3.834	4.237	4.530])
   * Referenced by:
   *   '<S84>/Tensione-->Temperatura1'
   *   '<S85>/Tensione-->Temperatura1'
   *   '<S86>/Tensione-->Temperatura'
   */
  real32_T pooled24[20];

  /* Computed Parameter: TensioneTemperatura_tableData
   * Referenced by: '<S168>/Tensione-->Temperatura'
   */
  real32_T TensioneTemperatura_tableData[21];

  /* Computed Parameter: TensioneTemperatura_bp01Data
   * Referenced by: '<S168>/Tensione-->Temperatura'
   */
  real32_T TensioneTemperatura_bp01Data[21];

  /* Computed Parameter: uDLookupTable_tableData_b
   * Referenced by: '<S28>/1-D Lookup Table'
   */
  uint8_T uDLookupTable_tableData_b[2];
} ConstP_ATV_T;

/* Backward compatible GRT Identifiers */
#define rtB                            ATV_B
#define BlockIO                        B_ATV_T
#define rtDWork                        ATV_DW
#define D_Work                         DW_ATV_T
#define ConstParam                     ConstP_ATV_T
#define rtcP                           ATV_ConstP
#define rtPrevZCSigState               ATV_PrevZCX
#define PrevZCSigStates                PrevZCX_ATV_T

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
    uint32_T clockTick3;
    uint32_T clockTickH3;
    time_T stepSize3;
    uint32_T clockTick4;
    uint32_T clockTickH4;
    time_T stepSize4;
    struct {
      uint8_T TID[5];
    } TaskCounters;

    struct {
      boolean_T TID0_1;
      boolean_T TID0_2;
      boolean_T TID0_3;
      boolean_T TID0_4;
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
    time_T sampleTimesArray[5];
    time_T offsetTimesArray[5];
    int_T sampleTimeTaskIDArray[5];
    int_T sampleHitArray[5];
    int_T perTaskSampleHitsArray[25];
    time_T tArray[5];
  } Timing;
};

/* Block signals (default storage) */
extern B_ATV_T ATV_B;

/* Block states (default storage) */
extern DW_ATV_T ATV_DW;

/* External data declarations for dependent source files */
extern const uint8_T ATV_U8GND;        /* uint8_T ground */

/* Constant parameters (default storage) */
extern const ConstP_ATV_T ATV_ConstP;

/*
 * Exported Global Signals
 *
 * Note: Exported global signals are block signals with an exported global
 * storage class designation.  Code generation will declare the memory for
 * these signals and export their symbols.
 *
 */
extern real_T atv_xd1_key_ain;         /* '<S28>/Gain' */
extern real_T atv_xc1_raw_ain;         /* '<S28>/pai_BasicAnalogInput5' */
extern real_T atv_xc4_raw_ain;         /* '<S28>/pai_BasicAnalogInput6' */
extern real_T atv_xa3_brake_pedal_raw_ain;/* '<S28>/pai_BasicAnalogInput4' */
extern real_T atv_xe2_raw_ain;         /* '<S28>/pai_BasicAnalogInput7' */
extern real_T atv_yh3_raw_ain;         /* '<S28>/pai_BasicAnalogInput11' */
extern real_T atv_dbg_FAN_out;         /* '<S25>/Data Type Conversion' */
extern real_T bms_pack_voltage;        /* '<S4>/pcx_CANdb_ReceiveMessage' */
extern real_T B_Max_Cell;              /* '<S6>/pcx_CANdb_ReceiveMessage' */
extern real_T atv_yb3_raw_ain;         /* '<S28>/pai_BasicAnalogInput10' */
extern real_T atv_xa1_ain_throttle_raw;/* '<S28>/pai_BasicAnalogInput1' */
extern real_T atv_xd3_raw_ain;         /* '<S28>/pai_BasicAnalogInput3' */
extern real_T atv_HandBrakePos;        /* '<S28>/pai_BasicAnalogInput15' */
extern real_T atv_xe4_raw_ain;         /* '<S28>/pai_BasicAnalogInput8' */
extern real_T atv_zd1_ain;             /* '<S28>/pai_BasicAnalogInput12' */
extern real_T atv_12v;                 /* '<S28>/Gain1' */
extern real_T atv_yg3_raw_ain;         /* '<S28>/Moving Average' */
extern uint32_T atv_fmot_run_timer;    /* '<S139>/Rate Transition1' */
extern uint32_T atv_ice_run_timer;     /* '<S142>/Rate Transition1' */
extern uint32_T atv_odometer;          /* '<S145>/Gain5' */
extern uint32_T atv_rmot_run_timer;    /* '<S146>/Rate Transition1' */
extern uint32_T atv_stack_used;        /* '<S119>/psc_StackUsed' */
extern uint32_T atv_task_duration_1s;  /* '<S119>/pkn_TaskDuration1' */
extern uint32_T atv_task_duration_1s_max;/* '<S119>/pkn_TaskDuration2' */
extern real32_T atv_ze4;               /* '<S28>/Data Type Conversion1' */
extern real32_T atv_xd2;               /* '<S28>/Data Type Conversion3' */
extern real32_T atv_ze3;               /* '<S28>/Data Type Conversion' */
extern real32_T atv_ye2;               /* '<S25>/Switch' */
extern real32_T atv_fuel_qty;          /* '<S141>/Product' */
extern int32_T atv_xe3_ain;            /* '<S28>/Gain2' */
extern int32_T atv_ICE_Start_Timer;    /* '<S32>/Saturation' */
extern uint16_T atv_brake_pedalX1000;  /* '<S90>/Switch' */
extern uint16_T atv_max_cell;          /* '<S6>/Switch1' */
extern uint16_T atv_min_cell;          /* '<S6>/Switch5' */
extern uint16_T atv_throttleX1000;     /* '<S89>/Saturation1' */
extern uint16_T atv_motoring_x1000_rear;/* '<S157>/Switch1' */
extern uint16_T atv_motoring_x1000_front;/* '<S158>/Switch1' */
extern uint16_T atv_motoring_x1000_front_final;/* '<S138>/Product1' */
extern uint16_T atv_motoring_x1000_rear_final;/* '<S138>/Product2' */
extern uint16_T atv_regen_x1000_front; /* '<S138>/Product3' */
extern uint16_T atv_regen_x1000_rear;  /* '<S138>/Product4' */
extern uint16_T atv_throttleGen_X1000_out;/* '<S141>/Rate Limiter' */
extern uint16_T atv_footBrake_X1000_out;/* '<S141>/Rate Limiter1' */
extern uint16_T atv_app_code_year;     /* '<S120>/psc_AppBuildDate' */
extern uint16_T atv_app_code_month;    /* '<S120>/psc_AppBuildDate' */
extern uint16_T atv_app_code_day;      /* '<S120>/psc_AppBuildDate' */
extern uint16_T atv_app_code_major_ver;/* '<S120>/psc_AppVersion' */
extern uint16_T atv_app_code_minor_ver;/* '<S120>/psc_AppVersion' */
extern uint16_T atv_app_code_subminor_ver;/* '<S120>/psc_AppVersion' */
extern uint16_T atv_boot_code_year;    /* '<S121>/psc_BootBuildDate' */
extern uint16_T atv_boot_code_month;   /* '<S121>/psc_BootBuildDate' */
extern uint16_T atv_boot_code_day;     /* '<S121>/psc_BootBuildDate' */
extern uint16_T atv_boot_code_major_ver;/* '<S121>/psc_BootVersion' */
extern uint16_T atv_boot_code_minor_ver;/* '<S121>/psc_BootVersion' */
extern uint16_T atv_boot_code_subminor_ver;/* '<S121>/psc_BootVersion' */
extern uint16_T atv_prg_code_year;     /* '<S122>/psc_PrgBuildDate' */
extern uint16_T atv_prg_code_month;    /* '<S122>/psc_PrgBuildDate' */
extern uint16_T atv_prg_code_day;      /* '<S122>/psc_PrgBuildDate' */
extern uint16_T atv_prg_code_major_ver;/* '<S122>/psc_PrgVersion' */
extern uint16_T atv_prg_code_minor_ver;/* '<S122>/psc_PrgVersion' */
extern uint16_T atv_prg_code_subminor_ver;/* '<S122>/psc_PrgVersion' */
extern uint16_T atv_platform_code_year;/* '<S123>/psc_PlatformBuildDate' */
extern uint16_T atv_platform_code_month;/* '<S123>/psc_PlatformBuildDate' */
extern uint16_T atv_platform_code_day; /* '<S123>/psc_PlatformBuildDate' */
extern uint16_T atv_platform_code_major_ver;/* '<S123>/psc_PlatformVersion' */
extern uint16_T atv_platform_code_minor_ver;/* '<S123>/psc_PlatformVersion' */
extern uint16_T atv_platform_code_subminor_ver;/* '<S123>/psc_PlatformVersion' */
extern uint16_T atv_reg_current_limit; /* '<S30>/Saturation' */
extern uint16_T atv_mtr_current_limit; /* '<S30>/Saturation1' */
extern int16_T atv_T_Air;              /* '<S84>/Data Type Conversion6' */
extern int16_T atv_RPM_Gen;            /* '<Root>/Rate Transition24' */
extern int16_T atv_T_ICE;              /* '<S168>/Data Type Conversion6' */
extern int16_T atv_TRad_out;           /* '<S86>/Data Type Conversion6' */
extern int16_T atv_TRad;               /* '<S124>/Divide' */
extern int16_T atv_TRad_in;            /* '<S85>/Data Type Conversion6' */
extern int16_T atv_brake2epedal_split_actual;/* '<S138>/Multiport Switch1' */
extern int16_T atv_bmsMaxChgCurr;      /* '<S5>/Switch2' */
extern int16_T atv_GenCurrentSetPoint; /* '<S141>/Data Type Conversion1' */
extern int16_T atv_ice_rpm_req;        /* '<S141>/Data Type Conversion5' */
extern int16_T atv_bmsMaxDisCurr;      /* '<S5>/Switch1' */
extern uint8_T atv_GenSelProcessed;    /* '<S87>/Merge' */
extern uint8_T bms_pack_soc;           /* '<S4>/Data Type Conversion' */
extern uint8_T bms_rolling_counter;    /* '<S4>/Data Type Conversion1' */
extern uint8_T atv_fuel_level;         /* '<S28>/1-D Lookup Table' */
extern uint8_T atv_RegMapSelProcessed; /* '<S88>/Merge' */
extern uint8_T atv_regmap;             /* '<S138>/Saturation3' */
extern uint8_T atv_map;                /* '<S138>/Saturation2' */
extern uint8_T atv_cpu_loading;        /* '<S119>/psc_CpuLoading1' */
extern uint8_T atv_cpu_loading_max;    /* '<S119>/psc_CpuLoading2' */
extern uint8_T atv_vehicle_SOC;        /* '<S31>/Data Type Conversion2' */
extern uint8_T atv_state_out;          /* '<S34>/VSM' */
extern uint8_T atv_sub_state_out;      /* '<S34>/VSM' */
extern uint8_T atv_IceSM;              /* '<S141>/VSMGestioneIbrido' */
extern uint8_T atv_IceRG;              /* '<S141>/VSMGestioneIbrido' */
extern uint8_T atv_pm_Hybrid;          /* '<S2>/Merge' */
extern boolean_T key_signal;           /* '<S126>/Compare' */
extern boolean_T atv_za3_StartBtn_din; /* '<S28>/pdx_DigitalInput' */
extern boolean_T atv_zc2;              /* '<S28>/pdx_DigitalInput8' */
extern boolean_T atv_zc4;              /* '<S28>/pdx_DigitalInput9' */
extern boolean_T atv_fwd_mode_in;      /* '<S28>/Relay2' */
extern boolean_T atv_rwd_mode_in;      /* '<S28>/Relay3' */
extern boolean_T atv_brake_pedal_digital_in;/* '<S28>/Relay1' */
extern boolean_T atv_startConditions;  /* '<S34>/Logical Operator3' */
extern boolean_T atv_apu_req_in;       /* '<S28>/Relay4' */
extern boolean_T atv_xf4;              /* '<S28>/pdx_DigitalInput6' */
extern boolean_T atv_dbg_pumpA_out;    /* '<S150>/Logical Operator7' */
extern boolean_T atv_za2;              /* '<S28>/pdx_DigitalInput7' */
extern boolean_T atv_runLed_out;       /* '<S34>/Logical Operator13' */
extern boolean_T atv_zb2;              /* '<S28>/pdx_DigitalInput4' */
extern boolean_T atv_zb3;              /* '<S28>/pdx_DigitalInput5' */
extern boolean_T atv_yg2;              /* '<S28>/pdx_DigitalInput1' */
extern boolean_T atv_yh2;              /* '<S28>/pdx_DigitalInput2' */
extern boolean_T atv_yj2;              /* '<S28>/pdx_DigitalInput3' */
extern boolean_T atv_chg_present;      /* '<S47>/Relational Operator2' */
extern boolean_T atv_can_wakeup;       /* '<S48>/Relational Operator2' */
extern boolean_T atv_v_dbg_chg_req;    /* '<S18>/Switch1' */
extern boolean_T atv_v_dbg_heater_req; /* '<S18>/Switch2' */
extern boolean_T atv_fs1_in;           /* '<S28>/Relay' */
extern boolean_T atv_HandBrakeStatus;  /* '<S28>/Logical Operator1' */
extern boolean_T atv_4wd_din;          /* '<S28>/Relay5' */
extern boolean_T atv_fs1_out;          /* '<S138>/Constant' */
extern boolean_T atv_fuel_reserve;     /* '<S166>/Compare' */
extern boolean_T atv_ICE_Start_Timer_Valid;/* '<S111>/AND' */
extern boolean_T atv_wakelock_out;     /* '<S34>/VSM' */
extern boolean_T atv_en_dcdc_out;      /* '<S34>/VSM' */
extern boolean_T atv_startBtnArmed;    /* '<S34>/VSM' */
extern boolean_T atv_IceKey_out;       /* '<S141>/VSMGestioneIbrido' */
extern boolean_T atv_IceShutdown_out;  /* '<S141>/VSMGestioneIbrido' */
extern boolean_T atv_IceOn;            /* '<S141>/VSMGestioneIbrido' */
extern boolean_T atv_IceFault;         /* '<S141>/VSMGestioneIbrido' */
extern boolean_T atv_PumpBFault;       /* '<S150>/Chart2' */
extern boolean_T atv_PumpAFault;       /* '<S150>/Chart1' */
extern boolean_T atv_dbg_pumpB_out;    /* '<S150>/Chart' */
extern boolean_T atv_yg1;              /* '<Root>/Chart' */
extern boolean_T atv_pm_PreOp;         /* '<S2>/Logical Operator' */
extern boolean_T atv_pm_Stealth;       /* '<S2>/PS0' */
extern boolean_T atv_pm_Electric;      /* '<S2>/Logical Operator1' */
extern boolean_T atv_pm_g;             /* '<S1>/Logical Operator' */
extern boolean_T atv_pm_s1;            /* '<S1>/Logical Operator16' */
extern boolean_T atv_pm_s2;            /* '<S1>/Logical Operator20' */
extern boolean_T atv_pm_s3;            /* '<S1>/Logical Operator25' */
extern boolean_T atv_pm_2;             /* '<S1>/Logical Operator3' */
extern boolean_T atv_pm_1;             /* '<S1>/Logical Operator4' */
extern boolean_T atv_pm_0;             /* '<S1>/Logical Operator7' */

/*
 * Exported Global Parameters
 *
 * Note: Exported global parameters are tunable parameters with an exported
 * global storage class designation.  Code generation will declare the memory for
 * these parameters and exports their symbols.
 *
 */
extern OE_CAL real_T atvc_ICE_dragging_time;/* Variable: atvc_ICE_dragging_time
                                             * Referenced by: '<S141>/VSMGestioneIbrido'
                                             */
extern OE_CAL real_T atvc_an_in_sel_his;/* Variable: atvc_an_in_sel_his
                                         * Referenced by:
                                         *   '<S28>/Relay2'
                                         *   '<S28>/Relay3'
                                         *   '<S28>/Relay4'
                                         *   '<S28>/Relay5'
                                         */
extern OE_CAL real_T atvc_an_in_sel_th;/* Variable: atvc_an_in_sel_th
                                        * Referenced by:
                                        *   '<S28>/Relay2'
                                        *   '<S28>/Relay3'
                                        *   '<S28>/Relay4'
                                        *   '<S28>/Relay5'
                                        */
extern OE_CAL real_T atvc_brake_pedal_gain;/* Variable: atvc_brake_pedal_gain
                                            * Referenced by: '<S90>/Gain1'
                                            */
extern OE_CAL real_T atvc_brake_pedal_zero;/* Variable: atvc_brake_pedal_zero
                                            * Referenced by: '<S90>/Constant1'
                                            */
extern OE_CAL real_T atvc_fmot_run_timer;/* Variable: atvc_fmot_run_timer
                                          * Referenced by: '<S139>/pnv_AdaptiveScalar'
                                          */
extern OE_CAL real_T atvc_gear_ratio;  /* Variable: atvc_gear_ratio
                                        * Referenced by: '<S145>/Constant1'
                                        */
extern OE_CAL real_T atvc_ice_run_timer;/* Variable: atvc_ice_run_timer
                                         * Referenced by: '<S142>/pnv_AdaptiveScalar'
                                         */
extern OE_CAL real_T atvc_odometer;    /* Variable: atvc_odometer
                                        * Referenced by: '<S145>/pnv_AdaptiveScalar'
                                        */
extern OE_CAL real_T atvc_rmot_run_timer;/* Variable: atvc_rmot_run_timer
                                          * Referenced by: '<S146>/pnv_AdaptiveScalar'
                                          */
extern OE_CAL real_T atvc_wheel_radius;/* Variable: atvc_wheel_radius
                                        * Referenced by:
                                        *   '<S145>/wheelRad'
                                        *   '<S147>/wheelRad1'
                                        */
extern OE_CAL real_T atvm_currentfromrpm_x[4];/* Variable: atvm_currentfromrpm_x
                                               * Referenced by: '<S141>/put_Calmap1d'
                                               */
extern OE_CAL real_T atvm_currentfromrpm_z[4];/* Variable: atvm_currentfromrpm_z
                                               * Referenced by: '<S141>/put_Calmap1d'
                                               */
extern OE_CAL real_T atvm_rpmfromcurrent_x[4];/* Variable: atvm_rpmfromcurrent_x
                                               * Referenced by: '<S141>/put_Calmap1d1'
                                               */
extern OE_CAL real_T atvm_rpmfromcurrent_z[4];/* Variable: atvm_rpmfromcurrent_z
                                               * Referenced by: '<S141>/put_Calmap1d1'
                                               */
extern OE_CAL real32_T atvc_ICE_ReserveFuel;/* Variable: atvc_ICE_ReserveFuel
                                             * Referenced by: '<S166>/Constant'
                                             */
extern OE_CAL real32_T atvc_ICE_Tank_Volume;/* Variable: atvc_ICE_Tank_Volume
                                             * Referenced by: '<S141>/const3'
                                             */
extern OE_CAL real32_T atvc_gen_TEST_PWM;/* Variable: atvc_gen_TEST_PWM
                                          * Referenced by: '<S141>/atvc_test_rpm1'
                                          */
extern OE_CAL real32_T atvc_gen_start_PID_KI;/* Variable: atvc_gen_start_PID_KI
                                              * Referenced by: '<S315>/Integral Gain'
                                              */
extern OE_CAL real32_T atvc_gen_start_PID_KP;/* Variable: atvc_gen_start_PID_KP
                                              * Referenced by: '<S342>/Proportional Gain'
                                              */
extern OE_CAL int16_T atvc_EndWarmUpTemp;/* Variable: atvc_EndWarmUpTemp
                                          * Referenced by: '<S141>/atvc_RpmEndwarmUp'
                                          */
extern OE_CAL int16_T atvc_GenCurrent0;/* Variable: atvc_GenCurrent0
                                        * Referenced by: '<S34>/atvc_GenCurrent0'
                                        */
extern OE_CAL int16_T atvc_GenCurrent1;/* Variable: atvc_GenCurrent1
                                        * Referenced by: '<S34>/atvc_GenCurrent1'
                                        */
extern OE_CAL int16_T atvc_GenCurrent2;/* Variable: atvc_GenCurrent2
                                        * Referenced by: '<S34>/atvc_GenCurrent2'
                                        */
extern OE_CAL int16_T atvc_GenWarmUpCurrent;/* Variable: atvc_GenWarmUpCurrent
                                             * Referenced by: '<S141>/atvc_GenWarmUpCurrent'
                                             */
extern OE_CAL int16_T atvc_IceMaxTemp; /* Variable: atvc_IceMaxTemp
                                        * Referenced by: '<S141>/atvc_IceMaxTemp'
                                        */
extern OE_CAL int16_T atvc_brake2epedal_split_0;/* Variable: atvc_brake2epedal_split_0
                                                 * Referenced by: '<S138>/atvc_brake2epedal_split'
                                                 */
extern OE_CAL int16_T atvc_brake2epedal_split_1;/* Variable: atvc_brake2epedal_split_1
                                                 * Referenced by: '<S138>/atvc_brake2epedal_split1'
                                                 */
extern OE_CAL int16_T atvc_brake2epedal_split_2;/* Variable: atvc_brake2epedal_split_2
                                                 * Referenced by: '<S138>/atvc_brake2epedal_split2'
                                                 */
extern OE_CAL int16_T atvc_brake2epedal_split_3;/* Variable: atvc_brake2epedal_split_3
                                                 * Referenced by: '<S138>/atvc_brake2epedal_split3'
                                                 */
extern OE_CAL uint16_T atvc_GenWarmUpRPM;/* Variable: atvc_GenWarmUpRPM
                                          * Referenced by: '<S141>/atvc_GenWarmUpRPM'
                                          */
extern OE_CAL uint16_T atvc_IceOffTh;  /* Variable: atvc_IceOffTh
                                        * Referenced by: '<S141>/VSMGestioneIbrido'
                                        */
extern OE_CAL uint16_T atvc_IceOnTh;   /* Variable: atvc_IceOnTh
                                        * Referenced by: '<S141>/VSMGestioneIbrido'
                                        */
extern OE_CAL uint16_T atvc_StartThrottleIce;/* Variable: atvc_StartThrottleIce
                                              * Referenced by: '<S141>/VSMGestioneIbrido'
                                              */
extern OE_CAL uint16_T atvc_brakePedalHis;/* Variable: atvc_brakePedalHis
                                           * Referenced by: '<S28>/Relay1'
                                           */
extern OE_CAL uint16_T atvc_brakePedalOn;/* Variable: atvc_brakePedalOn
                                          * Referenced by: '<S28>/Relay1'
                                          */
extern OE_CAL uint16_T atvc_cell_ov;   /* Variable: atvc_cell_ov
                                        * Referenced by: '<S79>/Constant'
                                        */
extern OE_CAL uint16_T atvc_cell_uv;   /* Variable: atvc_cell_uv
                                        * Referenced by: '<S78>/Constant'
                                        */
extern OE_CAL uint16_T atvc_chg_complete;/* Variable: atvc_chg_complete
                                          * Referenced by: '<S22>/Constant'
                                          */
extern OE_CAL uint16_T atvc_chg_target_v;/* Variable: atvc_chg_target_v
                                          * Referenced by: '<S19>/Constant'
                                          */
extern OE_CAL uint16_T atvc_footBrakeIce;/* Variable: atvc_footBrakeIce
                                          * Referenced by: '<S141>/VSMGestioneIbrido'
                                          */
extern OE_CAL uint16_T atvc_footBrakeWarmUp;/* Variable: atvc_footBrakeWarmUp
                                             * Referenced by: '<S141>/VSMGestioneIbrido'
                                             */
extern OE_CAL uint16_T atvc_fs1_throttle_coherency;/* Variable: atvc_fs1_throttle_coherency
                                                    * Referenced by: '<S156>/Constant'
                                                    */
extern OE_CAL uint16_T atvc_gen_ramp_up;/* Variable: atvc_gen_ramp_up
                                         * Referenced by: '<S3>/atvc_gen_ramp_up'
                                         */
extern OE_CAL uint16_T atvc_gen_start_rpm;/* Variable: atvc_gen_start_rpm
                                           * Referenced by: '<S267>/atvc_gen_start_rpm'
                                           */
extern OE_CAL uint16_T atvc_maxDischCurr;/* Variable: atvc_maxDischCurr
                                          * Referenced by: '<S3>/atvc_maxDischCurr'
                                          */
extern OE_CAL uint16_T atvc_maxRegenCurr;/* Variable: atvc_maxRegenCurr
                                          * Referenced by: '<S3>/atvc_maxRegenCurr'
                                          */
extern OE_CAL uint16_T atvc_max_footbrake_trq;/* Variable: atvc_max_footbrake_trq
                                               * Referenced by: '<S3>/Constant6'
                                               */
extern OE_CAL uint16_T atvc_max_gen_neutral_trq;/* Variable: atvc_max_gen_neutral_trq
                                                 * Referenced by: '<S3>/atvc_max_gen_neutral_trq'
                                                 */
extern OE_CAL uint16_T atvc_max_gen_reg_trq;/* Variable: atvc_max_gen_reg_trq
                                             * Referenced by: '<S3>/atvc_max_gen_reg_trq'
                                             */
extern OE_CAL uint16_T atvc_max_gen_trq;/* Variable: atvc_max_gen_trq
                                         * Referenced by: '<S3>/atvc_max_gen_trq'
                                         */
extern OE_CAL uint16_T atvc_max_neutralbrake_trq;/* Variable: atvc_max_neutralbrake_trq
                                                  * Referenced by: '<S3>/Constant7'
                                                  */
extern OE_CAL uint16_T atvc_max_trq_front;/* Variable: atvc_max_trq_front
                                           * Referenced by: '<S3>/Constant9'
                                           */
extern OE_CAL uint16_T atvc_max_trq_rear;/* Variable: atvc_max_trq_rear
                                          * Referenced by: '<S3>/Constant5'
                                          */
extern OE_CAL uint16_T atvc_throttleFull;/* Variable: atvc_throttleFull
                                          * Referenced by: '<S89>/atvc_throttleFull'
                                          */
extern OE_CAL uint16_T atvc_throttleNeutralPoint;/* Variable: atvc_throttleNeutralPoint
                                                  * Referenced by: '<S138>/atvc_throttleNeutralPoint'
                                                  */
extern OE_CAL uint16_T atvc_throttleZero;/* Variable: atvc_throttleZero
                                          * Referenced by: '<S89>/atvc_throttleZero'
                                          */
extern OE_CAL boolean_T atvc_ChargeOverride;/* Variable: atvc_ChargeOverride
                                             * Referenced by: '<Root>/Constant3'
                                             */
extern OE_CAL boolean_T atvc_OverridePumpA;/* Variable: atvc_OverridePumpA
                                            * Referenced by: '<S150>/atvc_OverridePumpA'
                                            */
extern OE_CAL boolean_T atvc_OverridePumpB;/* Variable: atvc_OverridePumpB
                                            * Referenced by: '<S150>/atvc_OverridePumpB'
                                            */
extern OE_CAL boolean_T atvc_fmot_run_timer_reset;/* Variable: atvc_fmot_run_timer_reset
                                                   * Referenced by: '<S139>/atvc_fmot_run_timer_reset'
                                                   */
extern OE_CAL boolean_T atvc_force_inv_preop;/* Variable: atvc_force_inv_preop
                                              * Referenced by:
                                              *   '<S34>/Constant'
                                              *   '<S138>/Constant10'
                                              */
extern OE_CAL boolean_T atvc_gen_PWM_Override;/* Variable: atvc_gen_PWM_Override
                                               * Referenced by: '<S141>/atvc_test_rpm2'
                                               */
extern OE_CAL boolean_T atvc_ice_run_timer_reset;/* Variable: atvc_ice_run_timer_reset
                                                  * Referenced by: '<S142>/atvc_ice_run_timer_reset'
                                                  */
extern OE_CAL boolean_T atvc_odometer_reset;/* Variable: atvc_odometer_reset
                                             * Referenced by: '<S145>/atvc_odometer_reset'
                                             */
extern OE_CAL boolean_T atvc_rmot_run_timer_reset;/* Variable: atvc_rmot_run_timer_reset
                                                   * Referenced by: '<S146>/atvc_ice_run_timer_reset'
                                                   */
extern OE_CAL int8_T atvc_HeatingMat_thr;/* Variable: atvc_HeatingMat_thr
                                          * Referenced by: '<S34>/VSM'
                                          */
extern OE_CAL int8_T atvc_cell_ot;     /* Variable: atvc_cell_ot
                                        * Referenced by: '<S80>/Constant'
                                        */
extern OE_CAL int8_T atvc_cell_ut;     /* Variable: atvc_cell_ut
                                        * Referenced by: '<S77>/Constant'
                                        */
extern OE_CAL uint8_T atvc_ErrTempInv; /* Variable: atvc_ErrTempInv
                                        * Referenced by:
                                        *   '<S74>/Constant'
                                        *   '<S75>/Constant'
                                        *   '<S76>/Constant'
                                        */
extern OE_CAL uint8_T atvc_ErrTempMot; /* Variable: atvc_ErrTempMot
                                        * Referenced by:
                                        *   '<S71>/Constant'
                                        *   '<S72>/Constant'
                                        *   '<S73>/Constant'
                                        */
extern OE_CAL uint8_T atvc_IceMaxSOC;  /* Variable: atvc_IceMaxSOC
                                        * Referenced by: '<S136>/Constant'
                                        */
extern OE_CAL uint8_T atvc_IceStartRetry;/* Variable: atvc_IceStartRetry
                                          * Referenced by: '<S141>/VSMGestioneIbrido'
                                          */
extern OE_CAL uint8_T atvc_IceStartSOC;/* Variable: atvc_IceStartSOC
                                        * Referenced by:
                                        *   '<S32>/atvc_IceStartSOC'
                                        *   '<S135>/Constant'
                                        */
extern OE_CAL uint8_T atvc_IceStopSOC; /* Variable: atvc_IceStopSOC
                                        * Referenced by: '<S133>/Constant'
                                        */
extern OE_CAL uint8_T atvc_OverrideFan;/* Variable: atvc_OverrideFan
                                        * Referenced by: '<S150>/atvc_OverrideFan'
                                        */
extern OE_CAL uint8_T atvc_dcMinFan;   /* Variable: atvc_dcMinFan
                                        * Referenced by:
                                        *   '<S150>/Switch4'
                                        *   '<S154>/atvc_dcMinFan'
                                        */
extern OE_CAL uint8_T atvc_maxTempInv; /* Variable: atvc_maxTempInv
                                        * Referenced by:
                                        *   '<S69>/Constant'
                                        *   '<S124>/Relay1'
                                        *   '<S124>/Relay4'
                                        *   '<S124>/Relay5'
                                        */
extern OE_CAL uint8_T atvc_maxTempMotor;/* Variable: atvc_maxTempMotor
                                         * Referenced by:
                                         *   '<S70>/Constant'
                                         *   '<S124>/Relay'
                                         *   '<S124>/Relay2'
                                         *   '<S124>/Relay3'
                                         */
extern OE_CAL uint8_T atvc_max_soc;    /* Variable: atvc_max_soc
                                        * Referenced by: '<S31>/atvc_velocityLimitFwd1'
                                        */
extern OE_CAL uint8_T atvc_minTempInv; /* Variable: atvc_minTempInv
                                        * Referenced by:
                                        *   '<S124>/Relay1'
                                        *   '<S124>/Relay4'
                                        *   '<S124>/Relay5'
                                        */
extern OE_CAL uint8_T atvc_minTempMotor;/* Variable: atvc_minTempMotor
                                         * Referenced by:
                                         *   '<S124>/Relay'
                                         *   '<S124>/Relay2'
                                         *   '<S124>/Relay3'
                                         */
extern OE_CAL uint8_T atvc_min_soc;    /* Variable: atvc_min_soc
                                        * Referenced by: '<S31>/atvc_velocityLimitFwd'
                                        */
extern OE_CAL uint8_T atvc_tempSwitchOffFan;/* Variable: atvc_tempSwitchOffFan
                                             * Referenced by: '<S154>/Relay1'
                                             */
extern OE_CAL uint8_T atvc_tempSwitchOnFan;/* Variable: atvc_tempSwitchOnFan
                                            * Referenced by:
                                            *   '<S150>/atvc_tempSwitchOnFan'
                                            *   '<S154>/Relay1'
                                            */
extern OE_CAL uint8_T atvc_velocityLimitFwd;/* Variable: atvc_velocityLimitFwd
                                             * Referenced by: '<S34>/atvc_velocityLimitFwd'
                                             */
extern OE_CAL uint8_T atvc_velocityLimitRwd;/* Variable: atvc_velocityLimitRwd
                                             * Referenced by: '<S34>/atvc_velocityLimitRwd'
                                             */
extern OE_CAL uint8_T atvv_map[2];     /* Variable: atvv_map
                                        * Referenced by:
                                        *   '<S138>/pnv_array2'
                                        *   '<S61>/pnv_array1'
                                        *   '<S61>/pnv_array2'
                                        *   '<S62>/pnv_array1'
                                        *   '<S62>/pnv_array2'
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
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage23_n_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage24_d_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage1_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage10_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage11_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage12_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage13_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage14_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage15_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage2_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage20_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage23_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage3_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage4_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage5_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage19_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage22_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage24_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage26_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage6_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage7_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage8_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage9_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage21_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage25_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage16_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage17_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage18_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage_k_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage_j_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage_a_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage_d_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage_c_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_TransmitMessage1_b_msg_handle;
extern PUT_DEBOUNCE_TIME_T pdx_DigitalInput_detm_wrk_data;
extern PUT_DEBOUNCE_TIME_T pdx_DigitalInput8_detm_wrk_data;
extern PUT_DEBOUNCE_TIME_T pdx_DigitalInput9_detm_wrk_data;
extern PUT_DEBOUNCE_TIME_T pdx_DigitalInput6_detm_wrk_data;
extern PUT_DEBOUNCE_TIME_T pdx_DigitalInput7_detm_wrk_data;
extern PUT_DEBOUNCE_TIME_T pdx_DigitalInput4_detm_wrk_data;
extern PUT_DEBOUNCE_TIME_T pdx_DigitalInput5_detm_wrk_data;
extern PUT_DEBOUNCE_TIME_T pdx_DigitalInput1_detm_wrk_data;
extern PUT_DEBOUNCE_TIME_T pdx_DigitalInput2_detm_wrk_data;
extern PUT_DEBOUNCE_TIME_T pdx_DigitalInput3_detm_wrk_data;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_j_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_h_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage1_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_d_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_c_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_f_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_e_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_l_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_es_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_a_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_er_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_g_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_lz_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_i_msg_handle;
extern PCX_HANDLE_T pcx_CANdb_ReceiveMessage_fn_msg_handle;

/* Real-time Model object */
extern RT_MODEL_ATV_T *const ATV_M;

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<S4>/Constant3' : Unused code path elimination
 * Block '<S4>/Constant4' : Unused code path elimination
 * Block '<S4>/Rate Transition1' : Unused code path elimination
 * Block '<S4>/Rate Transition2' : Unused code path elimination
 * Block '<S4>/Rate Transition5' : Unused code path elimination
 * Block '<S4>/Switch3' : Unused code path elimination
 * Block '<S4>/Switch4' : Unused code path elimination
 * Block '<S5>/Constant3' : Unused code path elimination
 * Block '<S5>/Constant4' : Unused code path elimination
 * Block '<S5>/Logical Operator' : Unused code path elimination
 * Block '<S5>/Rate Transition1' : Unused code path elimination
 * Block '<S5>/Rate Transition2' : Unused code path elimination
 * Block '<S5>/Switch3' : Unused code path elimination
 * Block '<S5>/Switch4' : Unused code path elimination
 * Block '<S6>/Constant2' : Unused code path elimination
 * Block '<S6>/Constant6' : Unused code path elimination
 * Block '<S6>/Rate Transition3' : Unused code path elimination
 * Block '<S6>/Rate Transition4' : Unused code path elimination
 * Block '<S6>/Switch2' : Unused code path elimination
 * Block '<S6>/Switch6' : Unused code path elimination
 * Block '<S50>/Compare' : Unused code path elimination
 * Block '<S50>/Constant' : Unused code path elimination
 * Block '<S8>/Constant' : Unused code path elimination
 * Block '<S8>/Constant1' : Unused code path elimination
 * Block '<S8>/Constant2' : Unused code path elimination
 * Block '<S8>/Constant3' : Unused code path elimination
 * Block '<S8>/Logical Operator' : Unused code path elimination
 * Block '<S8>/Logical Operator1' : Unused code path elimination
 * Block '<S8>/Saturation' : Unused code path elimination
 * Block '<S8>/Switch' : Unused code path elimination
 * Block '<S8>/Switch1' : Unused code path elimination
 * Block '<S8>/Switch2' : Unused code path elimination
 * Block '<S8>/Switch3' : Unused code path elimination
 * Block '<S9>/Constant' : Unused code path elimination
 * Block '<S9>/Constant1' : Unused code path elimination
 * Block '<S9>/Constant2' : Unused code path elimination
 * Block '<S9>/Constant3' : Unused code path elimination
 * Block '<S9>/Logical Operator1' : Unused code path elimination
 * Block '<S9>/Saturation' : Unused code path elimination
 * Block '<S9>/Switch' : Unused code path elimination
 * Block '<S9>/Switch1' : Unused code path elimination
 * Block '<S9>/Switch2' : Unused code path elimination
 * Block '<S9>/Switch3' : Unused code path elimination
 * Block '<S10>/Constant' : Unused code path elimination
 * Block '<S10>/Constant2' : Unused code path elimination
 * Block '<S10>/Switch' : Unused code path elimination
 * Block '<S10>/Switch2' : Unused code path elimination
 * Block '<S12>/Constant' : Unused code path elimination
 * Block '<S12>/Constant2' : Unused code path elimination
 * Block '<S12>/Switch' : Unused code path elimination
 * Block '<S12>/Switch2' : Unused code path elimination
 * Block '<S13>/Constant' : Unused code path elimination
 * Block '<S13>/Constant2' : Unused code path elimination
 * Block '<S13>/Switch' : Unused code path elimination
 * Block '<S13>/Switch2' : Unused code path elimination
 * Block '<S15>/Constant3' : Unused code path elimination
 * Block '<S15>/Saturation' : Unused code path elimination
 * Block '<S15>/Switch3' : Unused code path elimination
 * Block '<S16>/Constant3' : Unused code path elimination
 * Block '<S16>/Saturation' : Unused code path elimination
 * Block '<S16>/Switch3' : Unused code path elimination
 * Block '<S17>/Constant3' : Unused code path elimination
 * Block '<S17>/Saturation' : Unused code path elimination
 * Block '<S17>/Switch3' : Unused code path elimination
 * Block '<S18>/Constant' : Unused code path elimination
 * Block '<S18>/Switch' : Unused code path elimination
 * Block '<Root>/Constant7' : Unused code path elimination
 * Block '<S91>/AND' : Unused code path elimination
 * Block '<S91>/FixPt Data Type Duplicate' : Unused code path elimination
 * Block '<S91>/Lower Limit' : Unused code path elimination
 * Block '<S91>/Lower Test' : Unused code path elimination
 * Block '<S91>/Upper Limit' : Unused code path elimination
 * Block '<S91>/Upper Test' : Unused code path elimination
 * Block '<S84>/Logical Operator' : Unused code path elimination
 * Block '<S92>/AND' : Unused code path elimination
 * Block '<S92>/FixPt Data Type Duplicate' : Unused code path elimination
 * Block '<S92>/Lower Limit' : Unused code path elimination
 * Block '<S92>/Lower Test' : Unused code path elimination
 * Block '<S92>/Upper Limit' : Unused code path elimination
 * Block '<S92>/Upper Test' : Unused code path elimination
 * Block '<S85>/Logical Operator' : Unused code path elimination
 * Block '<S93>/AND' : Unused code path elimination
 * Block '<S93>/FixPt Data Type Duplicate' : Unused code path elimination
 * Block '<S93>/Lower Limit' : Unused code path elimination
 * Block '<S93>/Lower Test' : Unused code path elimination
 * Block '<S93>/Upper Limit' : Unused code path elimination
 * Block '<S93>/Upper Test' : Unused code path elimination
 * Block '<S86>/Logical Operator' : Unused code path elimination
 * Block '<S103>/FixPt Data Type Duplicate' : Unused code path elimination
 * Block '<S89>/Logical Operator' : Unused code path elimination
 * Block '<S104>/FixPt Data Type Duplicate' : Unused code path elimination
 * Block '<S90>/Logical Operator' : Unused code path elimination
 * Block '<Root>/Rate Transition12' : Unused code path elimination
 * Block '<Root>/Rate Transition14' : Unused code path elimination
 * Block '<Root>/Rate Transition18' : Unused code path elimination
 * Block '<Root>/Rate Transition2' : Unused code path elimination
 * Block '<Root>/Rate Transition23' : Unused code path elimination
 * Block '<Root>/Rate Transition28' : Unused code path elimination
 * Block '<Root>/Rate Transition29' : Unused code path elimination
 * Block '<Root>/Rate Transition3' : Unused code path elimination
 * Block '<S108>/Data Type Duplicate' : Unused code path elimination
 * Block '<S108>/Data Type Propagation' : Unused code path elimination
 * Block '<S111>/FixPt Data Type Duplicate' : Unused code path elimination
 * Block '<S155>/Data Type Duplicate' : Unused code path elimination
 * Block '<S155>/Data Type Propagation' : Unused code path elimination
 * Block '<S138>/Add' : Unused code path elimination
 * Block '<S138>/Constant3' : Unused code path elimination
 * Block '<S158>/Constant' : Unused code path elimination
 * Block '<S158>/Relational Operator2' : Unused code path elimination
 * Block '<S138>/Data Type Conversion' : Unused code path elimination
 * Block '<S138>/Data Type Conversion1' : Unused code path elimination
 * Block '<S138>/Multiport Switch' : Unused code path elimination
 * Block '<S138>/Relay' : Unused code path elimination
 * Block '<S138>/Switch1' : Unused code path elimination
 * Block '<S266>/AND' : Unused code path elimination
 * Block '<S266>/FixPt Data Type Duplicate' : Unused code path elimination
 * Block '<S266>/Lower Limit' : Unused code path elimination
 * Block '<S266>/Lower Test' : Unused code path elimination
 * Block '<S266>/Upper Limit' : Unused code path elimination
 * Block '<S266>/Upper Test' : Unused code path elimination
 * Block '<S168>/Logical Operator' : Unused code path elimination
 * Block '<S268>/Sum3' : Unused code path elimination
 * Block '<S141>/atvc_test_rpm' : Unused code path elimination
 * Block '<S143>/FixPt Data Type Duplicate' : Unused code path elimination
 * Block '<S144>/FixPt Data Type Duplicate' : Unused code path elimination
 * Block '<S145>/Gain4' : Unused code path elimination
 * Block '<S373>/FixPt Data Type Duplicate' : Unused code path elimination
 * Block '<S148>/ ' : Unused code path elimination
 * Block '<S148>/ATVC_front_mtawfb' : Unused code path elimination
 * Block '<S148>/ATVC_rear_mtadd' : Unused code path elimination
 * Block '<S148>/ATVC_rear_mtawfb' : Unused code path elimination
 * Block '<S148>/ATVC_torque_split ' : Unused code path elimination
 * Block '<S148>/Abs2' : Unused code path elimination
 * Block '<S148>/Cast' : Unused code path elimination
 * Block '<S148>/Cast3' : Unused code path elimination
 * Block '<S148>/Constant' : Unused code path elimination
 * Block '<S148>/Constant12' : Unused code path elimination
 * Block '<S148>/Constant2' : Unused code path elimination
 * Block '<S148>/Constant3' : Unused code path elimination
 * Block '<S148>/Constant5' : Unused code path elimination
 * Block '<S148>/Gain' : Unused code path elimination
 * Block '<S148>/Gain1' : Unused code path elimination
 * Block '<S148>/Relational Operator' : Unused code path elimination
 * Block '<S148>/Subtract' : Unused code path elimination
 * Block '<S148>/Subtract5' : Unused code path elimination
 * Block '<S148>/Switch' : Unused code path elimination
 * Block '<S148>/Switch1' : Unused code path elimination
 * Block '<S148>/atvc_mtawnb' : Unused code path elimination
 * Block '<S148>/front' : Unused code path elimination
 * Block '<S148>/rear' : Unused code path elimination
 * Block '<S34>/atvc_GenTestCurrent' : Unused code path elimination
 * Block '<Root>/ ' : Unused code path elimination
 * Block '<Root>/Constant2' : Unused code path elimination
 * Block '<S3>/Rate Transition13' : Eliminated since input and output rates are identical
 * Block '<S3>/Rate Transition14' : Eliminated since input and output rates are identical
 * Block '<S7>/Data Type Conversion1' : Eliminate redundant data type conversion
 * Block '<S7>/Data Type Conversion2' : Eliminate redundant data type conversion
 * Block '<S25>/Data Type Conversion1' : Eliminate redundant data type conversion
 * Block '<S25>/Data Type Conversion2' : Eliminate redundant data type conversion
 * Block '<Root>/Rate Transition' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition1' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition13' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition15' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition16' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition17' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition19' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition20' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition21' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition22' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition25' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition30' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition31' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition32' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition36' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition42' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition43' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition44' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition45' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition46' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition47' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition49' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition50' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition51' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition52' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition53' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition54' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition55' : Eliminated since input and output rates are identical
 * Block '<Root>/Rate Transition56' : Eliminated since input and output rates are identical
 * Block '<S30>/Data Type Conversion' : Eliminate redundant data type conversion
 * Block '<S30>/Data Type Conversion1' : Eliminate redundant data type conversion
 * Block '<S124>/Data Type Conversion' : Eliminate redundant data type conversion
 * Block '<S157>/Cast1' : Eliminate redundant data type conversion
 * Block '<S158>/Cast1' : Eliminate redundant data type conversion
 * Block '<S138>/Data Type Conversion3' : Eliminate redundant data type conversion
 * Block '<S138>/Switch4' : Eliminated due to constant selection input
 * Block '<S141>/Data Type Conversion4' : Eliminate redundant data type conversion
 * Block '<S141>/Data Type Conversion7' : Eliminate redundant data type conversion
 * Block '<S293>/Kb' : Eliminated nontunable gain of 1
 * Block '<S362>/Setpoint Weighting (Proportional)' : Eliminated nontunable gain of 1
 * Block '<S138>/Constant4' : Unused code path elimination
 * Block '<S138>/Constant8' : Unused code path elimination
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
 * '<S1>'   : 'ATV/Atomic Subsystem'
 * '<S2>'   : 'ATV/Atomic Subsystem1'
 * '<S3>'   : 'ATV/CANBUS_Output_Processing'
 * '<S4>'   : 'ATV/CANBUS_Reception_BMS'
 * '<S5>'   : 'ATV/CANBUS_Reception_BMS1'
 * '<S6>'   : 'ATV/CANBUS_Reception_BMS_CELL_V'
 * '<S7>'   : 'ATV/CANBUS_Reception_C_MONITOR'
 * '<S8>'   : 'ATV/CANBUS_Reception_D_STATUS1_FRONT'
 * '<S9>'   : 'ATV/CANBUS_Reception_D_STATUS1_REAR'
 * '<S10>'  : 'ATV/CANBUS_Reception_D_STATUS2_FRONT'
 * '<S11>'  : 'ATV/CANBUS_Reception_D_STATUS2_FRONT2'
 * '<S12>'  : 'ATV/CANBUS_Reception_D_STATUS2_GEN'
 * '<S13>'  : 'ATV/CANBUS_Reception_D_STATUS2_REAR'
 * '<S14>'  : 'ATV/CANBUS_Reception_D_STATUS2_REAR1'
 * '<S15>'  : 'ATV/CANBUS_Reception_D_STATUS4_FRONT'
 * '<S16>'  : 'ATV/CANBUS_Reception_D_STATUS4_GEN'
 * '<S17>'  : 'ATV/CANBUS_Reception_D_STATUS4_REAR'
 * '<S18>'  : 'ATV/CANBUS_Reception_V_DBG_CTRL'
 * '<S19>'  : 'ATV/CHARGER_CONTROL'
 * '<S20>'  : 'ATV/Chart'
 * '<S21>'  : 'ATV/CheckTempMotori//Inverter'
 * '<S22>'  : 'ATV/Compare To Constant'
 * '<S23>'  : 'ATV/Compare To Constant1'
 * '<S24>'  : 'ATV/Compare To Constant2'
 * '<S25>'  : 'ATV/Digital_Output_Processing'
 * '<S26>'  : 'ATV/ERROR_FLAGS'
 * '<S27>'  : 'ATV/ErrBattery'
 * '<S28>'  : 'ATV/Input_Processing'
 * '<S29>'  : 'ATV/Subsystem'
 * '<S30>'  : 'ATV/Subsystem1'
 * '<S31>'  : 'ATV/Subsystem2'
 * '<S32>'  : 'ATV/Subsystem3'
 * '<S33>'  : 'ATV/config_and_status'
 * '<S34>'  : 'ATV/loop_10ms'
 * '<S35>'  : 'ATV/Atomic Subsystem1/If Action Subsystem'
 * '<S36>'  : 'ATV/Atomic Subsystem1/If Action Subsystem1'
 * '<S37>'  : 'ATV/Atomic Subsystem1/If Action Subsystem2'
 * '<S38>'  : 'ATV/Atomic Subsystem1/If Action Subsystem3'
 * '<S39>'  : 'ATV/Atomic Subsystem1/If Action Subsystem4'
 * '<S40>'  : 'ATV/Atomic Subsystem1/If Action Subsystem5'
 * '<S41>'  : 'ATV/CANBUS_Output_Processing/Compare To Zero'
 * '<S42>'  : 'ATV/CANBUS_Output_Processing/If Action Subsystem2'
 * '<S43>'  : 'ATV/CANBUS_Output_Processing/If Action Subsystem3'
 * '<S44>'  : 'ATV/CANBUS_Reception_BMS/Chart'
 * '<S45>'  : 'ATV/CANBUS_Reception_BMS1/Chart'
 * '<S46>'  : 'ATV/CANBUS_Reception_BMS_CELL_V/Chart'
 * '<S47>'  : 'ATV/CANBUS_Reception_C_MONITOR/Hold1'
 * '<S48>'  : 'ATV/CANBUS_Reception_C_MONITOR/Hold2'
 * '<S49>'  : 'ATV/CANBUS_Reception_D_STATUS1_FRONT/Chart'
 * '<S50>'  : 'ATV/CANBUS_Reception_D_STATUS1_FRONT/Compare To Zero'
 * '<S51>'  : 'ATV/CANBUS_Reception_D_STATUS1_REAR/Chart'
 * '<S52>'  : 'ATV/CANBUS_Reception_D_STATUS1_REAR/Compare To Zero'
 * '<S53>'  : 'ATV/CANBUS_Reception_D_STATUS2_FRONT/Chart'
 * '<S54>'  : 'ATV/CANBUS_Reception_D_STATUS2_FRONT2/Chart'
 * '<S55>'  : 'ATV/CANBUS_Reception_D_STATUS2_GEN/Chart'
 * '<S56>'  : 'ATV/CANBUS_Reception_D_STATUS2_REAR/Chart'
 * '<S57>'  : 'ATV/CANBUS_Reception_D_STATUS2_REAR1/Triggered Subsystem'
 * '<S58>'  : 'ATV/CANBUS_Reception_D_STATUS2_REAR1/Triggered Subsystem/Switch Case Action Subsystem'
 * '<S59>'  : 'ATV/CANBUS_Reception_D_STATUS2_REAR1/Triggered Subsystem/Switch Case Action Subsystem1'
 * '<S60>'  : 'ATV/CANBUS_Reception_D_STATUS2_REAR1/Triggered Subsystem/Switch Case Action Subsystem/If Action Subsystem'
 * '<S61>'  : 'ATV/CANBUS_Reception_D_STATUS2_REAR1/Triggered Subsystem/Switch Case Action Subsystem/If Action Subsystem1'
 * '<S62>'  : 'ATV/CANBUS_Reception_D_STATUS2_REAR1/Triggered Subsystem/Switch Case Action Subsystem/If Action Subsystem/If Action Subsystem'
 * '<S63>'  : 'ATV/CANBUS_Reception_D_STATUS2_REAR1/Triggered Subsystem/Switch Case Action Subsystem/If Action Subsystem/If Action Subsystem1'
 * '<S64>'  : 'ATV/CANBUS_Reception_D_STATUS4_FRONT/Chart'
 * '<S65>'  : 'ATV/CANBUS_Reception_D_STATUS4_GEN/Chart'
 * '<S66>'  : 'ATV/CANBUS_Reception_D_STATUS4_REAR/Chart'
 * '<S67>'  : 'ATV/CANBUS_Reception_V_DBG_CTRL/Chart'
 * '<S68>'  : 'ATV/CHARGER_CONTROL/Enabled Subsystem'
 * '<S69>'  : 'ATV/CheckTempMotori//Inverter/Compare To Constant1'
 * '<S70>'  : 'ATV/CheckTempMotori//Inverter/Compare To Constant2'
 * '<S71>'  : 'ATV/CheckTempMotori//Inverter/Compare To Constant3'
 * '<S72>'  : 'ATV/CheckTempMotori//Inverter/Compare To Constant4'
 * '<S73>'  : 'ATV/CheckTempMotori//Inverter/Compare To Constant5'
 * '<S74>'  : 'ATV/CheckTempMotori//Inverter/Compare To Constant6'
 * '<S75>'  : 'ATV/CheckTempMotori//Inverter/Compare To Constant7'
 * '<S76>'  : 'ATV/CheckTempMotori//Inverter/Compare To Constant8'
 * '<S77>'  : 'ATV/ErrBattery/Compare To Constant1'
 * '<S78>'  : 'ATV/ErrBattery/Compare To Constant2'
 * '<S79>'  : 'ATV/ErrBattery/Compare To Constant3'
 * '<S80>'  : 'ATV/ErrBattery/Compare To Constant4'
 * '<S81>'  : 'ATV/Input_Processing/Compare To Constant'
 * '<S82>'  : 'ATV/Input_Processing/Compare To Constant1'
 * '<S83>'  : 'ATV/Input_Processing/Compare To Constant3'
 * '<S84>'  : 'ATV/Input_Processing/INPUT ANALOGICI1'
 * '<S85>'  : 'ATV/Input_Processing/INPUT ANALOGICI2'
 * '<S86>'  : 'ATV/Input_Processing/INPUT ANALOGICI3'
 * '<S87>'  : 'ATV/Input_Processing/Subsystem'
 * '<S88>'  : 'ATV/Input_Processing/Subsystem1'
 * '<S89>'  : 'ATV/Input_Processing/Throttle_validation'
 * '<S90>'  : 'ATV/Input_Processing/Throttle_validation1'
 * '<S91>'  : 'ATV/Input_Processing/INPUT ANALOGICI1/Interval Test'
 * '<S92>'  : 'ATV/Input_Processing/INPUT ANALOGICI2/Interval Test'
 * '<S93>'  : 'ATV/Input_Processing/INPUT ANALOGICI3/Interval Test'
 * '<S94>'  : 'ATV/Input_Processing/Subsystem/If Action Subsystem'
 * '<S95>'  : 'ATV/Input_Processing/Subsystem/If Action Subsystem1'
 * '<S96>'  : 'ATV/Input_Processing/Subsystem/If Action Subsystem2'
 * '<S97>'  : 'ATV/Input_Processing/Subsystem/If Action Subsystem4'
 * '<S98>'  : 'ATV/Input_Processing/Subsystem1/If Action Subsystem'
 * '<S99>'  : 'ATV/Input_Processing/Subsystem1/If Action Subsystem1'
 * '<S100>' : 'ATV/Input_Processing/Subsystem1/If Action Subsystem2'
 * '<S101>' : 'ATV/Input_Processing/Subsystem1/If Action Subsystem3'
 * '<S102>' : 'ATV/Input_Processing/Subsystem1/If Action Subsystem4'
 * '<S103>' : 'ATV/Input_Processing/Throttle_validation/Interval Test'
 * '<S104>' : 'ATV/Input_Processing/Throttle_validation1/Interval Test'
 * '<S105>' : 'ATV/Subsystem/Chart'
 * '<S106>' : 'ATV/Subsystem/Chart1'
 * '<S107>' : 'ATV/Subsystem/Chart2'
 * '<S108>' : 'ATV/Subsystem2/Saturation Dynamic'
 * '<S109>' : 'ATV/Subsystem3/If Action Subsystem'
 * '<S110>' : 'ATV/Subsystem3/If Action Subsystem1'
 * '<S111>' : 'ATV/Subsystem3/Interval Test'
 * '<S112>' : 'ATV/config_and_status/ECU Configuration'
 * '<S113>' : 'ATV/config_and_status/ECU_Status'
 * '<S114>' : 'ATV/config_and_status/Model_Configuration'
 * '<S115>' : 'ATV/config_and_status/ECU Configuration/Configure CAN'
 * '<S116>' : 'ATV/config_and_status/ECU Configuration/Configure CCP'
 * '<S117>' : 'ATV/config_and_status/ECU Configuration/Configure I//O'
 * '<S118>' : 'ATV/config_and_status/ECU Configuration/Configure CCP/pcp_CCPConfiguration'
 * '<S119>' : 'ATV/config_and_status/ECU_Status/CPU_Status'
 * '<S120>' : 'ATV/config_and_status/ECU_Status/ECU_SW_Ver_AppCode'
 * '<S121>' : 'ATV/config_and_status/ECU_Status/ECU_SW_Ver_Boot_Code'
 * '<S122>' : 'ATV/config_and_status/ECU_Status/ECU_SW_Ver_Platform_Lib_Code'
 * '<S123>' : 'ATV/config_and_status/ECU_Status/ECU_SW_Ver_Reprogramming_Code'
 * '<S124>' : 'ATV/loop_10ms/ COOLING SYSTEM'
 * '<S125>' : 'ATV/loop_10ms/Chart1'
 * '<S126>' : 'ATV/loop_10ms/Compare To Constant'
 * '<S127>' : 'ATV/loop_10ms/Compare To Constant1'
 * '<S128>' : 'ATV/loop_10ms/Compare To Constant10'
 * '<S129>' : 'ATV/loop_10ms/Compare To Constant11'
 * '<S130>' : 'ATV/loop_10ms/Compare To Constant2'
 * '<S131>' : 'ATV/loop_10ms/Compare To Constant3'
 * '<S132>' : 'ATV/loop_10ms/Compare To Constant4'
 * '<S133>' : 'ATV/loop_10ms/Compare To Constant5'
 * '<S134>' : 'ATV/loop_10ms/Compare To Constant6'
 * '<S135>' : 'ATV/loop_10ms/Compare To Constant7'
 * '<S136>' : 'ATV/loop_10ms/Compare To Constant8'
 * '<S137>' : 'ATV/loop_10ms/Compare To Constant9'
 * '<S138>' : 'ATV/loop_10ms/DRIVE BY WIRE'
 * '<S139>' : 'ATV/loop_10ms/FMOT_TIMER'
 * '<S140>' : 'ATV/loop_10ms/FallingEdge'
 * '<S141>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1'
 * '<S142>' : 'ATV/loop_10ms/ICE_TIMER'
 * '<S143>' : 'ATV/loop_10ms/Interval Test'
 * '<S144>' : 'ATV/loop_10ms/Interval Test1'
 * '<S145>' : 'ATV/loop_10ms/ODOMETER'
 * '<S146>' : 'ATV/loop_10ms/RMOT_TIMER'
 * '<S147>' : 'ATV/loop_10ms/SPEED LIMITER'
 * '<S148>' : 'ATV/loop_10ms/TORQUE SPLITTER'
 * '<S149>' : 'ATV/loop_10ms/VSM'
 * '<S150>' : 'ATV/loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento'
 * '<S151>' : 'ATV/loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/Chart'
 * '<S152>' : 'ATV/loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/Chart1'
 * '<S153>' : 'ATV/loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/Chart2'
 * '<S154>' : 'ATV/loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/FAN MANAGEMENT'
 * '<S155>' : 'ATV/loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/FAN MANAGEMENT/Saturation Dynamic'
 * '<S156>' : 'ATV/loop_10ms/DRIVE BY WIRE/Compare To Constant1'
 * '<S157>' : 'ATV/loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE REAR'
 * '<S158>' : 'ATV/loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE REAR1'
 * '<S159>' : 'ATV/loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE REAR/Chart'
 * '<S160>' : 'ATV/loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE REAR/Compare To Constant'
 * '<S161>' : 'ATV/loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE REAR/positivo1'
 * '<S162>' : 'ATV/loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE REAR1/Chart'
 * '<S163>' : 'ATV/loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE REAR1/Compare To Constant'
 * '<S164>' : 'ATV/loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE REAR1/positivo1'
 * '<S165>' : 'ATV/loop_10ms/FMOT_TIMER/FallingEdge1'
 * '<S166>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Compare To Constant'
 * '<S167>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller'
 * '<S168>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/INPUT ANALOGICI'
 * '<S169>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido'
 * '<S170>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Anti-windup'
 * '<S171>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/D Gain'
 * '<S172>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Filter'
 * '<S173>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Filter ICs'
 * '<S174>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/I Gain'
 * '<S175>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Ideal P Gain'
 * '<S176>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Ideal P Gain Fdbk'
 * '<S177>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Integrator'
 * '<S178>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Integrator ICs'
 * '<S179>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/N Copy'
 * '<S180>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/N Gain'
 * '<S181>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/P Copy'
 * '<S182>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Parallel P Gain'
 * '<S183>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Reset Signal'
 * '<S184>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Saturation'
 * '<S185>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Saturation Fdbk'
 * '<S186>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Sum'
 * '<S187>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Sum Fdbk'
 * '<S188>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Tracking Mode'
 * '<S189>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Tracking Mode Sum'
 * '<S190>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/postSat Signal'
 * '<S191>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/preSat Signal'
 * '<S192>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Anti-windup/Back Calculation'
 * '<S193>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Anti-windup/Cont. Clamping Ideal'
 * '<S194>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Anti-windup/Cont. Clamping Parallel'
 * '<S195>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Anti-windup/Disabled'
 * '<S196>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Anti-windup/Disc. Clamping Ideal'
 * '<S197>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Anti-windup/Disc. Clamping Parallel'
 * '<S198>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Anti-windup/Passthrough'
 * '<S199>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/D Gain/Disabled'
 * '<S200>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/D Gain/External Parameters'
 * '<S201>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/D Gain/Internal Parameters'
 * '<S202>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Filter/Cont. Filter'
 * '<S203>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Filter/Differentiator'
 * '<S204>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Filter/Disabled'
 * '<S205>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Filter/Disc. Backward Euler Filter'
 * '<S206>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Filter/Disc. Forward Euler Filter'
 * '<S207>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Filter/Disc. Trapezoidal Filter'
 * '<S208>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Filter ICs/Disabled'
 * '<S209>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Filter ICs/External IC'
 * '<S210>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Filter ICs/Internal IC - Differentiator'
 * '<S211>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Filter ICs/Internal IC - Filter'
 * '<S212>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/I Gain/Disabled'
 * '<S213>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/I Gain/External Parameters'
 * '<S214>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/I Gain/Internal Parameters'
 * '<S215>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Ideal P Gain/External Parameters'
 * '<S216>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Ideal P Gain/Internal Parameters'
 * '<S217>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Ideal P Gain/Passthrough'
 * '<S218>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Ideal P Gain Fdbk/Disabled'
 * '<S219>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Ideal P Gain Fdbk/External Parameters'
 * '<S220>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Ideal P Gain Fdbk/Internal Parameters'
 * '<S221>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Ideal P Gain Fdbk/Passthrough'
 * '<S222>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Integrator/Continuous'
 * '<S223>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Integrator/Disabled'
 * '<S224>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Integrator/Discrete'
 * '<S225>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Integrator ICs/Disabled'
 * '<S226>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Integrator ICs/External IC'
 * '<S227>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Integrator ICs/Internal IC'
 * '<S228>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/N Copy/Disabled'
 * '<S229>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/N Copy/Disabled wSignal Specification'
 * '<S230>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/N Copy/External Parameters'
 * '<S231>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/N Copy/Internal Parameters'
 * '<S232>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/N Gain/Disabled'
 * '<S233>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/N Gain/External Parameters'
 * '<S234>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/N Gain/Internal Parameters'
 * '<S235>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/N Gain/Passthrough'
 * '<S236>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/P Copy/Disabled'
 * '<S237>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/P Copy/External Parameters Ideal'
 * '<S238>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/P Copy/Internal Parameters Ideal'
 * '<S239>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Parallel P Gain/Disabled'
 * '<S240>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Parallel P Gain/External Parameters'
 * '<S241>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Parallel P Gain/Internal Parameters'
 * '<S242>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Parallel P Gain/Passthrough'
 * '<S243>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Reset Signal/Disabled'
 * '<S244>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Reset Signal/External Reset'
 * '<S245>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Saturation/Enabled'
 * '<S246>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Saturation/Passthrough'
 * '<S247>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Saturation Fdbk/Disabled'
 * '<S248>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Saturation Fdbk/Enabled'
 * '<S249>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Saturation Fdbk/Passthrough'
 * '<S250>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Sum/Passthrough_I'
 * '<S251>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Sum/Passthrough_P'
 * '<S252>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Sum/Sum_PD'
 * '<S253>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Sum/Sum_PI'
 * '<S254>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Sum/Sum_PID'
 * '<S255>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Sum Fdbk/Disabled'
 * '<S256>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Sum Fdbk/Enabled'
 * '<S257>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Sum Fdbk/Passthrough'
 * '<S258>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Tracking Mode/Disabled'
 * '<S259>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Tracking Mode/Enabled'
 * '<S260>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Tracking Mode Sum/Passthrough'
 * '<S261>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/Tracking Mode Sum/Tracking Mode'
 * '<S262>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/postSat Signal/Feedback_Path'
 * '<S263>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/postSat Signal/Forward_Path'
 * '<S264>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/preSat Signal/Feedback_Path'
 * '<S265>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/Discrete PID Controller/preSat Signal/Forward_Path'
 * '<S266>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/INPUT ANALOGICI/Interval Test'
 * '<S267>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice'
 * '<S268>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)'
 * '<S269>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Anti-windup'
 * '<S270>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/D Gain'
 * '<S271>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Filter'
 * '<S272>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Filter ICs'
 * '<S273>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/I Gain'
 * '<S274>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Ideal P Gain'
 * '<S275>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Ideal P Gain Fdbk'
 * '<S276>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Integrator'
 * '<S277>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Integrator ICs'
 * '<S278>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/N Copy'
 * '<S279>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/N Gain'
 * '<S280>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/P Copy'
 * '<S281>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Parallel P Gain'
 * '<S282>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Reset Signal'
 * '<S283>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Saturation'
 * '<S284>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Saturation Fdbk'
 * '<S285>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Sum'
 * '<S286>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Sum Fdbk'
 * '<S287>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Tracking Mode'
 * '<S288>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Tracking Mode Sum'
 * '<S289>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/b Gain'
 * '<S290>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/c Gain'
 * '<S291>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/postSat Signal'
 * '<S292>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/preSat Signal'
 * '<S293>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Anti-windup/Back Calculation'
 * '<S294>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Anti-windup/Cont. Clamping Ideal'
 * '<S295>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Anti-windup/Cont. Clamping Parallel'
 * '<S296>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Anti-windup/Disabled'
 * '<S297>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Anti-windup/Disc. Clamping Ideal'
 * '<S298>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Anti-windup/Disc. Clamping Parallel'
 * '<S299>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Anti-windup/Passthrough'
 * '<S300>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/D Gain/Disabled'
 * '<S301>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/D Gain/External Parameters'
 * '<S302>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/D Gain/Internal Parameters'
 * '<S303>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Filter/Cont. Filter'
 * '<S304>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Filter/Differentiator'
 * '<S305>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Filter/Disabled'
 * '<S306>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Filter/Disc. Backward Euler Filter'
 * '<S307>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Filter/Disc. Forward Euler Filter'
 * '<S308>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Filter/Disc. Trapezoidal Filter'
 * '<S309>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Filter ICs/Disabled'
 * '<S310>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Filter ICs/External IC'
 * '<S311>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Filter ICs/Internal IC - Differentiator'
 * '<S312>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Filter ICs/Internal IC - Filter'
 * '<S313>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/I Gain/Disabled'
 * '<S314>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/I Gain/External Parameters'
 * '<S315>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/I Gain/Internal Parameters'
 * '<S316>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Ideal P Gain/External Parameters'
 * '<S317>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Ideal P Gain/Internal Parameters'
 * '<S318>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Ideal P Gain/Passthrough'
 * '<S319>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Ideal P Gain Fdbk/Disabled'
 * '<S320>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Ideal P Gain Fdbk/External Parameters'
 * '<S321>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Ideal P Gain Fdbk/Internal Parameters'
 * '<S322>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Ideal P Gain Fdbk/Passthrough'
 * '<S323>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Integrator/Continuous'
 * '<S324>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Integrator/Disabled'
 * '<S325>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Integrator/Discrete'
 * '<S326>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Integrator ICs/Disabled'
 * '<S327>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Integrator ICs/External IC'
 * '<S328>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Integrator ICs/Internal IC'
 * '<S329>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/N Copy/Disabled'
 * '<S330>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/N Copy/Disabled wSignal Specification'
 * '<S331>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/N Copy/External Parameters'
 * '<S332>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/N Copy/Internal Parameters'
 * '<S333>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/N Gain/Disabled'
 * '<S334>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/N Gain/External Parameters'
 * '<S335>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/N Gain/Internal Parameters'
 * '<S336>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/N Gain/Passthrough'
 * '<S337>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/P Copy/Disabled'
 * '<S338>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/P Copy/External Parameters Ideal'
 * '<S339>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/P Copy/Internal Parameters Ideal'
 * '<S340>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Parallel P Gain/Disabled'
 * '<S341>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Parallel P Gain/External Parameters'
 * '<S342>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Parallel P Gain/Internal Parameters'
 * '<S343>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Parallel P Gain/Passthrough'
 * '<S344>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Reset Signal/Disabled'
 * '<S345>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Reset Signal/External Reset'
 * '<S346>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Saturation/Enabled'
 * '<S347>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Saturation/Passthrough'
 * '<S348>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Saturation Fdbk/Disabled'
 * '<S349>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Saturation Fdbk/Enabled'
 * '<S350>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Saturation Fdbk/Passthrough'
 * '<S351>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Sum/Sum_PD'
 * '<S352>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Sum/Sum_PI'
 * '<S353>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Sum/Sum_PID'
 * '<S354>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Sum Fdbk/Disabled'
 * '<S355>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Sum Fdbk/Enabled'
 * '<S356>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Sum Fdbk/Passthrough'
 * '<S357>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Tracking Mode/Disabled'
 * '<S358>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Tracking Mode/Enabled'
 * '<S359>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Tracking Mode Sum/Passthrough'
 * '<S360>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/Tracking Mode Sum/Tracking Mode'
 * '<S361>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/b Gain/External Parameters'
 * '<S362>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/b Gain/Internal Parameters'
 * '<S363>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/c Gain/Disabled'
 * '<S364>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/c Gain/External Parameters'
 * '<S365>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/c Gain/Internal Parameters'
 * '<S366>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/postSat Signal/Feedback_Path'
 * '<S367>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/postSat Signal/Forward_Path'
 * '<S368>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/preSat Signal/Feedback_Path'
 * '<S369>' : 'ATV/loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido/IceSM.speed_pid_ice/Discrete PID Controller (2DOF)/preSat Signal/Forward_Path'
 * '<S370>' : 'ATV/loop_10ms/ICE_TIMER/FallingEdge1'
 * '<S371>' : 'ATV/loop_10ms/ODOMETER/FallingEdge'
 * '<S372>' : 'ATV/loop_10ms/ODOMETER/FallingEdge1'
 * '<S373>' : 'ATV/loop_10ms/ODOMETER/Interval Test Dynamic'
 * '<S374>' : 'ATV/loop_10ms/RMOT_TIMER/FallingEdge1'
 */
#endif                                 /* RTW_HEADER_ATV_h_ */
