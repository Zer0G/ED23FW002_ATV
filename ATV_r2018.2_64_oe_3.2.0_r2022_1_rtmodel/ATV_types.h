/*
 * ATV_types.h
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

#ifndef RTW_HEADER_ATV_types_h_
#define RTW_HEADER_ATV_types_h_
#include "rtwtypes.h"
#include "multiword_types.h"
#include "zero_crossing_types.h"
#ifndef typedef_dsp_private_SlidingWindowAver_T
#define typedef_dsp_private_SlidingWindowAver_T

typedef struct {
  int32_T isInitialized;
  boolean_T isSetupComplete;
  real_T pCumSum;
  real_T pCumSumRev[99];
  real_T pCumRevIndex;
} dsp_private_SlidingWindowAver_T;

#endif                                 /*typedef_dsp_private_SlidingWindowAver_T*/

#ifndef typedef_dsp_private_SlidingWindowAv_p_T
#define typedef_dsp_private_SlidingWindowAv_p_T

typedef struct {
  int32_T isInitialized;
  boolean_T isSetupComplete;
  real32_T pCumSum;
  real32_T pCumSumRev[19];
  real32_T pCumRevIndex;
} dsp_private_SlidingWindowAv_p_T;

#endif                                 /*typedef_dsp_private_SlidingWindowAv_p_T*/

#ifndef typedef_cell_wrap_ATV_T
#define typedef_cell_wrap_ATV_T

typedef struct {
  uint32_T f1[8];
} cell_wrap_ATV_T;

#endif                                 /*typedef_cell_wrap_ATV_T*/

#ifndef typedef_dsp_simulink_MovingAverage_AT_T
#define typedef_dsp_simulink_MovingAverage_AT_T

typedef struct {
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
  boolean_T TunablePropsChanged;
  cell_wrap_ATV_T inputVarSize;
  dsp_private_SlidingWindowAver_T *pStatistic;
  int32_T NumChannels;
} dsp_simulink_MovingAverage_AT_T;

#endif                                 /*typedef_dsp_simulink_MovingAverage_AT_T*/

#ifndef typedef_dsp_simulink_MovingAverage_p_T
#define typedef_dsp_simulink_MovingAverage_p_T

typedef struct {
  boolean_T matlabCodegenIsDeleted;
  int32_T isInitialized;
  boolean_T isSetupComplete;
  boolean_T TunablePropsChanged;
  cell_wrap_ATV_T inputVarSize;
  dsp_private_SlidingWindowAv_p_T *pStatistic;
  int32_T NumChannels;
} dsp_simulink_MovingAverage_p_T;

#endif                                 /*typedef_dsp_simulink_MovingAverage_p_T*/

/* Forward declaration for rtModel */
typedef struct tag_RTM_ATV_T RT_MODEL_ATV_T;

#endif                                 /* RTW_HEADER_ATV_types_h_ */
