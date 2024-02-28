/*
 * ATV_data.c
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

#include "ATV.h"
#include "ATV_private.h"

/* Constant parameters (default storage) */
const ConstP_ATV_T ATV_ConstP = {
  /* Expression: [0.25 0.28 0.4 0.405 0.44 0.47 0.57 0.58 0.6 0.65]
   * Referenced by: '<S141>/1-D Lookup Table'
   */
  { 0.25, 0.28, 0.4, 0.405, 0.44, 0.47, 0.57, 0.58, 0.6, 0.65 },

  /* Expression: [2000 2500 3000 3500 4000 4550 5000 5600 6250 7000]
   * Referenced by: '<S141>/1-D Lookup Table'
   */
  { 2000.0, 2500.0, 3000.0, 3500.0, 4000.0, 4550.0, 5000.0, 5600.0, 6250.0,
    7000.0 },

  /* Expression: [0.16 3.46]
   * Referenced by: '<S28>/1-D Lookup Table'
   */
  { 0.16, 3.46 },

  /* Expression: [0.05 1 1]
   * Referenced by: '<S138>/1-D Lookup Table'
   */
  { 0.05, 1.0, 1.0 },

  /* Expression: [0 100 2000]
   * Referenced by: '<S138>/1-D Lookup Table'
   */
  { 0.0, 100.0, 2000.0 },

  /* Expression: [1 1 1 1 1 1 0]
   * Referenced by: '<S138>/1-D Lookup Table1'
   */
  { 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.0 },

  /* Expression: [0 2000 4000 6000 7000 7600 8700]
   * Referenced by: '<S138>/1-D Lookup Table1'
   */
  { 0.0, 2000.0, 4000.0, 6000.0, 7000.0, 7600.0, 8700.0 },

  /* Expression: [1 1 1 1 1 0.7 0.2]
   * Referenced by: '<S138>/1-D Lookup Table2'
   */
  { 1.0, 1.0, 1.0, 1.0, 1.0, 0.7, 0.2 },

  /* Expression: [0 2000 4000 5000 6000 7000 8900]
   * Referenced by: '<S138>/1-D Lookup Table2'
   */
  { 0.0, 2000.0, 4000.0, 5000.0, 6000.0, 7000.0, 8900.0 },

  /* Computed Parameter: LowerLimit_Value
   * Referenced by: '<S111>/Lower Limit'
   */
  { { 0x1UL, 0UL } },

  /* Computed Parameter: UpperLimit_Value
   * Referenced by: '<S111>/Upper Limit'
   */
  { { 0x186A0UL, 0UL } },

  /* Pooled Parameter (Expression: [1500	1400	1300	1200	1100	1000	900	800	700	600	500	400	300	200	100	0	-100	-200	-300	-400])
   * Referenced by:
   *   '<S84>/Tensione-->Temperatura1'
   *   '<S85>/Tensione-->Temperatura1'
   *   '<S86>/Tensione-->Temperatura'
   */
  { 1500.0F, 1400.0F, 1300.0F, 1200.0F, 1100.0F, 1000.0F, 900.0F, 800.0F, 700.0F,
    600.0F, 500.0F, 400.0F, 300.0F, 200.0F, 100.0F, 0.0F, -100.0F, -200.0F,
    -300.0F, -400.0F },

  /* Pooled Parameter (Expression: [0.060	0.074	0.093	0.117	0.149	0.191	0.246	0.322	0.424	0.563	0.754	1.000	1.332	1.736	2.233	2.782	3.333	3.834	4.237	4.530])
   * Referenced by:
   *   '<S84>/Tensione-->Temperatura1'
   *   '<S85>/Tensione-->Temperatura1'
   *   '<S86>/Tensione-->Temperatura'
   */
  { 0.06F, 0.074F, 0.093F, 0.117F, 0.149F, 0.191F, 0.246F, 0.322F, 0.424F,
    0.563F, 0.754F, 1.0F, 1.332F, 1.736F, 2.233F, 2.782F, 3.333F, 3.834F, 4.237F,
    4.53F },

  /* Computed Parameter: TensioneTemperatura_tableData
   * Referenced by: '<S168>/Tensione-->Temperatura'
   */
  { 120.0F, 110.0F, 100.0F, 90.0F, 80.0F, 70.0F, 65.0F, 60.0F, 55.0F, 50.0F,
    45.0F, 40.0F, 35.0F, 30.0F, 25.0F, 20.0F, 10.0F, 0.0F, -10.0F, -20.0F,
    -40.0F },

  /* Computed Parameter: TensioneTemperatura_bp01Data
   * Referenced by: '<S168>/Tensione-->Temperatura'
   */
  { 0.124F, 0.156F, 0.197F, 0.252F, 0.326F, 0.426F, 0.489F, 0.562F, 0.647F,
    0.746F, 0.861F, 0.993F, 1.146F, 1.32F, 1.516F, 1.736F, 2.239F, 2.803F,
    3.375F, 3.893F, 4.601F },

  /* Computed Parameter: uDLookupTable_tableData_b
   * Referenced by: '<S28>/1-D Lookup Table'
   */
  { 100U, 0U }
};
