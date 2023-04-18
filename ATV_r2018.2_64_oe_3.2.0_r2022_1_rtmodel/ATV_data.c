/*
 * ATV_data.c
 *
 * Code generation for model "ATV".
 *
 * Model version              : 6.103
 * Simulink Coder version : 9.0 (R2018b) 24-May-2018
 * C source code generated on : Wed Apr  5 23:09:45 2023
 *
 * Target selection: openecu_grt.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Freescale->32-bit PowerPC
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "ATV.h"
#include "ATV_private.h"

/* Invariant block signals (default storage) */
const ConstB_ATV_T ATV_ConstB = {
  /* Start of '<S29>/DBW + REG_BRAKE FORWARD' */
  {
    900.0,                             /* '<S58>/Subtract' */
    1.1111111111111112,                /* '<S58>/Divide' */
    100,                               /* '<S57>/Data Type Conversion1' */
    1000,                              /* '<S57>/Data Type Conversion2' */
    10                                 /* '<S57>/Divide2' */
  }
  ,

  /* End of '<S29>/DBW + REG_BRAKE FORWARD' */

  /* Start of '<S29>/DBW REVERSE' */
  {
    0U                                 /* '<S48>/Constant2' */
  }
  ,

  /* End of '<S29>/DBW REVERSE' */

  /* Start of '<S28>/DBW + REG_BRAKE FORWARD' */
  {
    900.0,                             /* '<S45>/Subtract' */
    1.1111111111111112,                /* '<S45>/Divide' */
    100,                               /* '<S44>/Data Type Conversion1' */
    1000,                              /* '<S44>/Data Type Conversion2' */
    10                                 /* '<S44>/Divide2' */
  }
  ,

  /* End of '<S28>/DBW + REG_BRAKE FORWARD' */

  /* Start of '<S28>/DBW REVERSE' */
  {
    0U                                 /* '<S35>/Constant2' */
  }
  /* End of '<S28>/DBW REVERSE' */
};
