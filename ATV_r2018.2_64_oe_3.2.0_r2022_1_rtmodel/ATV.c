/*
 * ATV.c
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

/* Named constants for Chart: '<S3>/Chart' */
#define ATV_IN_NO_ACTIVE_CHILD         ((uint8_T)0U)
#define ATV_IN_NO_RX                   ((uint8_T)1U)
#define ATV_IN_RX                      ((uint8_T)2U)

/* Named constants for Chart: '<S31>/PUMP LOGIC' */
#define ATV_IN_NO_ACTIVE_CHILD_m       ((uint8_T)0U)
#define ATV_IN_Off                     ((uint8_T)1U)
#define ATV_IN_Run                     ((uint8_T)2U)
#define ATV_IN_Run60sec                ((uint8_T)3U)

/* Named constants for Chart: '<S8>/VSM' */
#define ATV_IN_CHG_OFF                 ((uint8_T)1U)
#define ATV_IN_DRIVE_ENABLED           ((uint8_T)1U)
#define ATV_IN_HEATER_OFF              ((uint8_T)1U)
#define ATV_IN_HVM_ON                  ((uint8_T)1U)
#define ATV_IN_HVM_ON_n                ((uint8_T)2U)
#define ATV_IN_HV_ARMED                ((uint8_T)2U)
#define ATV_IN_HV_DEL                  ((uint8_T)2U)
#define ATV_IN_HV_OFF                  ((uint8_T)3U)
#define ATV_IN_HV_ON                   ((uint8_T)4U)
#define ATV_IN_HV_ON_p                 ((uint8_T)3U)
#define ATV_IN_HV_WAIT_INV_OFF         ((uint8_T)5U)
#define ATV_IN_IDLE                    ((uint8_T)3U)
#define ATV_IN_INIT                    ((uint8_T)1U)
#define ATV_IN_KEY_ON                  ((uint8_T)2U)
#define ATV_IN_PRE_SLEEP               ((uint8_T)3U)
#define ATV_IN_SLEEP                   ((uint8_T)4U)
#define ATV_IN_STARTTRIGGER_OFF        ((uint8_T)1U)
#define ATV_IN_STARTTRIGGER_ON         ((uint8_T)2U)

/* Exported block signals */
real_T atv_xd3_raw_ain;                /* '<S6>/pai_BasicAnalogInput3' */
real_T atv_xa1_ain_throttle_raw;       /* '<S6>/pai_BasicAnalogInput1' */
real_T atv_dbg_FAN_out;                /* '<S31>/Switch1' */
real_T bms_pack_voltage;               /* '<S2>/pcx_CANdb_ReceiveMessage' */
uint32_T atv_stack_used;               /* '<S21>/psc_StackUsed' */
uint32_T atv_task_duration_1s;         /* '<S21>/pkn_TaskDuration1' */
uint32_T atv_task_duration_1s_max;     /* '<S21>/pkn_TaskDuration2' */
int32_T atv_xd1_key_ain;               /* '<S6>/Gain' */
int32_T atv_xe3_ain;                   /* '<S6>/Gain2' */
uint16_T atv_throttleX1000;            /* '<S12>/Switch' */
uint16_T atv_app_code_year;            /* '<S22>/psc_AppBuildDate' */
uint16_T atv_app_code_month;           /* '<S22>/psc_AppBuildDate' */
uint16_T atv_app_code_day;             /* '<S22>/psc_AppBuildDate' */
uint16_T atv_app_code_major_ver;       /* '<S22>/psc_AppVersion' */
uint16_T atv_app_code_minor_ver;       /* '<S22>/psc_AppVersion' */
uint16_T atv_app_code_subminor_ver;    /* '<S22>/psc_AppVersion' */
uint16_T atv_boot_code_year;           /* '<S23>/psc_BootBuildDate' */
uint16_T atv_boot_code_month;          /* '<S23>/psc_BootBuildDate' */
uint16_T atv_boot_code_day;            /* '<S23>/psc_BootBuildDate' */
uint16_T atv_boot_code_major_ver;      /* '<S23>/psc_BootVersion' */
uint16_T atv_boot_code_minor_ver;      /* '<S23>/psc_BootVersion' */
uint16_T atv_boot_code_subminor_ver;   /* '<S23>/psc_BootVersion' */
uint16_T atv_prg_code_year;            /* '<S24>/psc_PrgBuildDate' */
uint16_T atv_prg_code_month;           /* '<S24>/psc_PrgBuildDate' */
uint16_T atv_prg_code_day;             /* '<S24>/psc_PrgBuildDate' */
uint16_T atv_prg_code_major_ver;       /* '<S24>/psc_PrgVersion' */
uint16_T atv_prg_code_minor_ver;       /* '<S24>/psc_PrgVersion' */
uint16_T atv_prg_code_subminor_ver;    /* '<S24>/psc_PrgVersion' */
uint16_T atv_platform_code_year;       /* '<S25>/psc_PlatformBuildDate' */
uint16_T atv_platform_code_month;      /* '<S25>/psc_PlatformBuildDate' */
uint16_T atv_platform_code_day;        /* '<S25>/psc_PlatformBuildDate' */
uint16_T atv_platform_code_major_ver;  /* '<S25>/psc_PlatformVersion' */
uint16_T atv_platform_code_minor_ver;  /* '<S25>/psc_PlatformVersion' */
uint16_T atv_platform_code_subminor_ver;/* '<S25>/psc_PlatformVersion' */
uint8_T atv_cpu_loading;               /* '<S21>/psc_CpuLoading1' */
uint8_T atv_cpu_loading_max;           /* '<S21>/psc_CpuLoading2' */
uint8_T atv_state_out;                 /* '<S8>/VSM' */
uint8_T atv_sub_state_out;             /* '<S8>/VSM' */
boolean_T atv_key_signal;              /* '<S26>/Compare' */
boolean_T atv_za3_StartBtn_din;        /* '<S6>/pdx_DigitalInput' */
boolean_T atv_fs1_in;                  /* '<S6>/Relay' */
boolean_T atv_v_dbg_chg_req;           /* '<S3>/Switch1' */
boolean_T atv_v_dbg_heater_req;        /* '<S3>/Switch2' */
boolean_T atv_wakelock_out;            /* '<S8>/VSM' */
boolean_T atv_runLed_out;              /* '<S8>/VSM' */
boolean_T atv_en_dcdc_out;             /* '<S8>/VSM' */
boolean_T atv_dbg_pumpB_out;           /* '<S31>/PUMP LOGIC' */

/* Exported block parameters */
OE_CAL uint8_T atvc_dcMinFan = 30U;    /* Variable: atvc_dcMinFan
                                        * Referenced by: '<S32>/Constant1'
                                        */
OE_CAL uint8_T atvc_mtadd = 100U;      /* Variable: atvc_mtadd
                                        * Referenced by: '<S8>/atvc_mtadd'
                                        */
OE_CAL uint8_T atvc_mtawnb = 100U;     /* Variable: atvc_mtawnb
                                        * Referenced by: '<S8>/atvc_mtawnb'
                                        */
OE_CAL uint8_T atvc_tempSwitchOnFan = 50U;/* Variable: atvc_tempSwitchOnFan
                                           * Referenced by: '<S31>/atvc_tempSwitchOnFan'
                                           */

/* Block signals (default storage) */
B_ATV_T ATV_B;

/* Block states (default storage) */
DW_ATV_T ATV_DW;

/* Real-time model */
RT_MODEL_ATV_T ATV_M_;
RT_MODEL_ATV_T *const ATV_M = &ATV_M_;

/* Forward declaration for local functions */
static void ATV_KEY_ON(void);
static real_T ATV_Off(boolean_T TInverterLow, boolean_T TMotorLow);
static real_T ATV_On(boolean_T TInverterHi, boolean_T TMotorHi);
static void rate_monotonic_scheduler(void);
PUT_DEBOUNCE_TIME_T pdx_DigitalInput_detm_wrk_data;
PCX_HANDLE_T pcx_CANdb_TransmitMessage_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage1_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage2_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage3_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage4_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage5_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage6_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_p_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_e_msg_handle;

#include "rt_sim.h"
#ifdef USE_RTMODEL
#define EXPAND_CONCAT(name1,name2)     name1 ## name2
#define CONCAT(name1,name2)            EXPAND_CONCAT(name1,name2)
#define RT_MODEL                       CONCAT(ATV,_rtModel)

RT_MODEL *S;

#endif

uint32_T MultiWord2uLong(const uint32_T u[])
{
  return u[0];
}

void sMultiWordShr(const uint32_T u1[], int32_T n1, uint32_T n2, uint32_T y[],
                   int32_T n)
{
  int32_T nb;
  int32_T i;
  uint32_T ys;
  uint32_T yi;
  uint32_T u1i;
  int32_T nc;
  uint32_T nr;
  uint32_T nl;
  int32_T i1;
  nb = (int32_T)(n2 >> 5);
  i = 0;
  ys = (u1[n1 - 1] & 2147483648U) != 0U ? MAX_uint32_T : 0U;
  if (nb < n1) {
    nc = n + nb;
    if (nc > n1) {
      nc = n1;
    }

    nr = n2 - ((uint32_T)nb << 5);
    if (nr > 0U) {
      nl = 32U - nr;
      u1i = u1[nb];
      for (i1 = nb + 1; i1 < nc; i1++) {
        yi = u1i >> nr;
        u1i = u1[i1];
        y[i] = u1i << nl | yi;
        i++;
      }

      yi = u1i >> nr;
      u1i = nc < n1 ? u1[nc] : ys;
      y[i] = u1i << nl | yi;
      i++;
    } else {
      for (i1 = nb; i1 < nc; i1++) {
        y[i] = u1[i1];
        i++;
      }
    }
  }

  while (i < n) {
    y[i] = ys;
    i++;
  }
}

void MultiWordAdd(const uint32_T u1[], const uint32_T u2[], uint32_T y[],
                  int32_T n)
{
  uint32_T yi;
  uint32_T u1i;
  uint32_T carry = 0U;
  int32_T i;
  for (i = 0; i < n; i++) {
    u1i = u1[i];
    yi = (u1i + u2[i]) + carry;
    y[i] = yi;
    carry = carry != 0U ? (uint32_T)(yi <= u1i) : (uint32_T)(yi < u1i);
  }
}

void sMultiWordMul(const uint32_T u1[], int32_T n1, const uint32_T u2[], int32_T
                   n2, uint32_T y[], int32_T n)
{
  int32_T i;
  int32_T j;
  int32_T k;
  int32_T nj;
  uint32_T u1i;
  uint32_T yk;
  uint32_T a1;
  uint32_T a0;
  uint32_T b1;
  uint32_T w10;
  uint32_T w01;
  uint32_T cb;
  boolean_T isNegative1;
  boolean_T isNegative2;
  uint32_T cb1;
  uint32_T cb2;
  isNegative1 = ((u1[n1 - 1] & 2147483648U) != 0U);
  isNegative2 = ((u2[n2 - 1] & 2147483648U) != 0U);
  cb1 = 1U;

  /* Initialize output to zero */
  for (k = 0; k < n; k++) {
    y[k] = 0U;
  }

  for (i = 0; i < n1; i++) {
    cb = 0U;
    u1i = u1[i];
    if (isNegative1) {
      u1i = ~u1i + cb1;
      cb1 = (uint32_T)(u1i < cb1);
    }

    a1 = u1i >> 16U;
    a0 = u1i & 65535U;
    cb2 = 1U;
    k = n - i;
    nj = n2 <= k ? n2 : k;
    k = i;
    for (j = 0; j < nj; j++) {
      yk = y[k];
      u1i = u2[j];
      if (isNegative2) {
        u1i = ~u1i + cb2;
        cb2 = (uint32_T)(u1i < cb2);
      }

      b1 = u1i >> 16U;
      u1i &= 65535U;
      w10 = a1 * u1i;
      w01 = a0 * b1;
      yk += cb;
      cb = (uint32_T)(yk < cb);
      u1i *= a0;
      yk += u1i;
      cb += (yk < u1i);
      u1i = w10 << 16U;
      yk += u1i;
      cb += (yk < u1i);
      u1i = w01 << 16U;
      yk += u1i;
      cb += (yk < u1i);
      y[k] = yk;
      cb += w10 >> 16U;
      cb += w01 >> 16U;
      cb += a1 * b1;
      k++;
    }

    if (k < n) {
      y[k] = cb;
    }
  }

  /* Apply sign */
  if (isNegative1 != isNegative2) {
    cb = 1U;
    for (k = 0; k < n; k++) {
      yk = ~y[k] + cb;
      y[k] = yk;
      cb = (uint32_T)(yk < cb);
    }
  }
}

time_T rt_SimUpdateDiscreteEvents(
  int_T rtmNumSampTimes, void *rtmTimingData, int_T *rtmSampleHitPtr, int_T
  *rtmPerTaskSampleHits )
{
  rtmSampleHitPtr[1] = rtmStepTask(ATV_M, 1);
  rtmSampleHitPtr[2] = rtmStepTask(ATV_M, 2);
  UNUSED_PARAMETER(rtmNumSampTimes);
  UNUSED_PARAMETER(rtmTimingData);
  UNUSED_PARAMETER(rtmPerTaskSampleHits);
  return(-1);
}

/*
 *   This function updates active task flag for each subrate
 * and rate transition flags for tasks that exchange data.
 * The function assumes rate-monotonic multitasking scheduler.
 * The function must be called at model base rate so that
 * the generated code self-manages all its subrates and rate
 * transition flags.
 */
static void rate_monotonic_scheduler(void)
{
  /* To ensure a deterministic data transfer between two rates,
   * data is transferred at the priority of a fast task and the frequency
   * of the slow task.  The following flags indicate when the data transfer
   * happens.  That is, a rate interaction flag is set true when both rates
   * will run, and false otherwise.
   */

  /* tid 0 shares data with slower tid rate: 1 */
  ATV_M->Timing.RateInteraction.TID0_1 = (ATV_M->Timing.TaskCounters.TID[1] == 0);

  /* update PerTaskSampleHits matrix for non-inline sfcn */
  ATV_M->Timing.perTaskSampleHits[1] = ATV_M->Timing.RateInteraction.TID0_1;

  /* Compute which subrates run during the next base time step.  Subrates
   * are an integer multiple of the base rate counter.  Therefore, the subtask
   * counter is reset when it reaches its limit (zero means run).
   */
  (ATV_M->Timing.TaskCounters.TID[1])++;
  if ((ATV_M->Timing.TaskCounters.TID[1]) > 9) {/* Sample time: [0.1s, 0.0s] */
    ATV_M->Timing.TaskCounters.TID[1] = 0;
  }

  (ATV_M->Timing.TaskCounters.TID[2])++;
  if ((ATV_M->Timing.TaskCounters.TID[2]) > 99) {/* Sample time: [1.0s, 0.0s] */
    ATV_M->Timing.TaskCounters.TID[2] = 0;
  }
}

/*
 * System initialize for atomic system:
 *    '<S3>/Chart'
 *    '<S4>/Chart'
 */
void ATV_Chart_Init(DW_Chart_ATV_T *localDW)
{
  localDW->temporalCounter_i1 = 0U;
  localDW->is_active_c1_ATV = 0U;
  localDW->is_c1_ATV = ATV_IN_NO_ACTIVE_CHILD;
}

/*
 * Output and update for atomic system:
 *    '<S3>/Chart'
 *    '<S4>/Chart'
 */
void ATV_Chart(boolean_T rtu_in, B_Chart_ATV_T *localB, DW_Chart_ATV_T *localDW)
{
  /* Chart: '<S3>/Chart' */
  if (localDW->temporalCounter_i1 < 7U) {
    localDW->temporalCounter_i1++;
  }

  /* Gateway: CANBUS_Reception_V_DBG_CTRL/Chart */
  /* During: CANBUS_Reception_V_DBG_CTRL/Chart */
  if (localDW->is_active_c1_ATV == 0U) {
    /* Entry: CANBUS_Reception_V_DBG_CTRL/Chart */
    localDW->is_active_c1_ATV = 1U;

    /* Entry Internal: CANBUS_Reception_V_DBG_CTRL/Chart */
    /* Transition: '<S10>:4' */
    localDW->is_c1_ATV = ATV_IN_NO_RX;

    /* Entry 'NO_RX': '<S10>:5' */
    localB->out = false;
  } else if (localDW->is_c1_ATV == ATV_IN_NO_RX) {
    localB->out = false;

    /* During 'NO_RX': '<S10>:5' */
    if (rtu_in) {
      /* Transition: '<S10>:6' */
      localDW->is_c1_ATV = ATV_IN_RX;
      localDW->temporalCounter_i1 = 0U;

      /* Entry 'RX': '<S10>:3' */
      localB->out = true;
    }
  } else {
    localB->out = true;

    /* During 'RX': '<S10>:3' */
    if ((!rtu_in) && (localDW->temporalCounter_i1 >= 5U)) {
      /* Transition: '<S10>:7' */
      localDW->is_c1_ATV = ATV_IN_NO_RX;

      /* Entry 'NO_RX': '<S10>:5' */
      localB->out = false;
    }
  }

  /* End of Chart: '<S3>/Chart' */
}

/*
 * Output and update for atomic system:
 *    '<S28>/DBW REVERSE'
 *    '<S29>/DBW REVERSE'
 */
void ATV_DBWREVERSE(boolean_T rtu_FS1, uint16_T rtu_throttleX1000,
                    B_DBWREVERSE_ATV_T *localB)
{
  int32_T rtb_Switch1_e;

  /* Switch: '<S35>/Switch1' incorporates:
   *  Constant: '<S35>/Constant10'
   *  RelationalOperator: '<S38>/Compare'
   */
  if (!rtu_FS1) {
    /* Switch: '<S39>/Switch2' incorporates:
     *  Constant: '<S35>/ATVC_upperLimitPedalREV'
     *  RelationalOperator: '<S39>/LowerRelop1'
     *  Switch: '<S39>/Switch'
     */
    if (rtu_throttleX1000 > 1000) {
      rtb_Switch1_e = 1000;
    } else {
      rtb_Switch1_e = rtu_throttleX1000;
    }

    /* End of Switch: '<S39>/Switch2' */
  } else {
    rtb_Switch1_e = 0;
  }

  /* End of Switch: '<S35>/Switch1' */

  /* DataTypeConversion: '<S35>/Cast' */
  localB->Cast = (uint16_T)(int32_T)fmod(rtb_Switch1_e, 65536.0);
}

/*
 * Output and update for atomic system:
 *    '<S28>/DBW + REG_BRAKE FORWARD'
 *    '<S29>/DBW + REG_BRAKE FORWARD'
 */
void ATV_DBWREG_BRAKEFORWARD(boolean_T rtu_FS1, uint16_T rtu_throttleX1000,
  B_DBWREG_BRAKEFORWARD_ATV_T *localB)
{
  uint16_T rtb_Switch2_i;
  boolean_T rtb_RelationalOperator1;
  int32_T rtb_Switch2_n;
  int96m_T tmp;
  int96m_T tmp_0;
  int96m_T tmp_1;
  int64m_T tmp_2;
  uint32_T tmp_3;
  uint32_T tmp_4;
  real_T rtb_RelationalOperator1_0;
  static int96m_T tmp_5 = { { 0U, 500U, 0U }/* chunks */
  };

  /* Switch: '<S43>/Switch2' incorporates:
   *  Constant: '<S42>/ATVC_upperLimitPedalF'
   *  RelationalOperator: '<S43>/LowerRelop1'
   *  Switch: '<S43>/Switch'
   */
  if (rtu_throttleX1000 > 1000) {
    rtb_Switch2_i = 1000U;
  } else {
    rtb_Switch2_i = rtu_throttleX1000;
  }

  /* End of Switch: '<S43>/Switch2' */

  /* RelationalOperator: '<S42>/Relational Operator1' */
  rtb_RelationalOperator1 = (rtb_Switch2_i >= 100);

  /* Switch: '<S36>/Switch' incorporates:
   *  Constant: '<S36>/Constant'
   *  DataTypeConversion: '<S42>/Cast'
   *  DataTypeConversion: '<S42>/Cast1'
   *  Switch: '<S36>/Switch2'
   *  Switch: '<S42>/Switch1'
   */
  if (rtu_FS1) {
    localB->Switch = 0U;
    localB->Switch2 = 0U;
  } else {
    if (rtb_RelationalOperator1) {
      /* Switch: '<S42>/Switch1' incorporates:
       *  Constant: '<S42>/ATVC_throttleNeutralPoint'
       *  Product: '<S45>/throttle positive'
       *  Sum: '<S45>/ '
       */
      rtb_RelationalOperator1_0 = ((real_T)rtb_Switch2_i - 100.0) *
        1.1111111111111112;
    } else {
      /* Switch: '<S42>/Switch1' incorporates:
       *  Constant: '<S44>/Constant'
       */
      rtb_RelationalOperator1_0 = 0.0;
    }

    /* DataTypeConversion: '<S42>/Cast' */
    rtb_Switch2_n = (int32_T)fmod((int32_T)floor(rtb_RelationalOperator1_0),
      65536.0);
    localB->Switch = (uint16_T)(rtb_Switch2_n < 0 ? (int32_T)(uint16_T)-(int16_T)
      (uint16_T)-(real_T)rtb_Switch2_n : (int32_T)(uint16_T)rtb_Switch2_n);

    /* Switch: '<S42>/Switch2' incorporates:
     *  Constant: '<S45>/Constant1'
     *  DataTypeConversion: '<S42>/Cast'
     *  DataTypeConversion: '<S44>/Data Type Conversion3'
     */
    if (rtb_RelationalOperator1) {
      rtb_Switch2_n = 0;
    } else {
      /* Gain: '<S44>/Gain' incorporates:
       *  DataTypeConversion: '<S44>/Data Type Conversion'
       */
      tmp_3 = 2147483648U;
      tmp_4 = rtb_Switch2_i;
      sMultiWordMul(&tmp_3, 1, &tmp_4, 1, &tmp_2.chunks[0U], 2);

      /* Product: '<S44>/throttle negative' */
      tmp_3 = 10U;
      sMultiWordMul(&tmp_2.chunks[0U], 2, &tmp_3, 1, &tmp_1.chunks[0U], 3);

      /* Sum: '<S44>/Subtract1' */
      MultiWordAdd(&tmp_1.chunks[0U], &tmp_5.chunks[0U], &tmp_0.chunks[0U], 3);

      /* DataTypeConversion: '<S44>/Data Type Conversion3' */
      sMultiWordShr(&tmp_0.chunks[0U], 3, 31U, &tmp.chunks[0U], 3);
      rtb_Switch2_n = (uint16_T)MultiWord2uLong(&tmp.chunks[0U]);
    }

    /* End of Switch: '<S42>/Switch2' */
    localB->Switch2 = (uint16_T)(int32_T)fmod(rtb_Switch2_n, 65536.0);
  }

  /* End of Switch: '<S36>/Switch' */
}

/* Function for Chart: '<S8>/VSM' */
static void ATV_KEY_ON(void)
{
  boolean_T tmp;

  /* During 'KEY_ON': '<S30>:20' */
  tmp = !atv_key_signal;
  if (tmp && (ATV_DW.is_HV_CTRL != ATV_IN_HVM_ON) && (ATV_DW.is_HV_CTRL !=
       ATV_IN_HV_ON) && (ATV_DW.is_HV_CTRL != ATV_IN_HV_WAIT_INV_OFF)) {
    /* Transition: '<S30>:23' */
    /* Transition: '<S30>:25' */
    /* Exit Internal 'KEY_ON': '<S30>:20' */
    /* Exit Internal 'STARTTRIGGER': '<S30>:119' */
    ATV_DW.is_STARTTRIGGER = ATV_IN_NO_ACTIVE_CHILD_m;

    /* Exit Internal 'DRIVE_ENABLE': '<S30>:85' */
    if (ATV_DW.is_DRIVE_ENABLE == ATV_IN_DRIVE_ENABLED) {
      /* Exit 'DRIVE_ENABLED': '<S30>:88' */
      atv_runLed_out = false;
      ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_m;
    } else {
      ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_m;
    }

    /* Exit Internal 'HEATER_CTRL': '<S30>:72' */
    ATV_DW.is_HEATER_CTRL = ATV_IN_NO_ACTIVE_CHILD_m;

    /* Exit Internal 'CHG_CTRL': '<S30>:68' */
    ATV_DW.is_CHG_CTRL = ATV_IN_NO_ACTIVE_CHILD_m;

    /* Exit Internal 'HV_CTRL': '<S30>:34' */
    ATV_DW.is_HV_CTRL = ATV_IN_NO_ACTIVE_CHILD_m;
    ATV_DW.is_c3_ATV = ATV_IN_PRE_SLEEP;
    ATV_DW.temporalCounter_i1_m = 0U;

    /* Entry 'PRE_SLEEP': '<S30>:3' */
    atv_state_out = 2U;
    atv_sub_state_out = 0U;
  } else {
    /* During 'HV_CTRL': '<S30>:34' */
    switch (ATV_DW.is_HV_CTRL) {
     case ATV_IN_HVM_ON:
      /* During 'HVM_ON': '<S30>:54' */
      if (ATV_DW.temporalCounter_i1_m >= 50U) {
        /* Transition: '<S30>:56' */
        ATV_DW.is_HV_CTRL = ATV_IN_HV_ON;

        /* Entry 'HV_ON': '<S30>:53' */
        atv_sub_state_out = 3U;
        ATV_B.hvp_ctrl_out = true;
        ATV_B.hvm_ctrl_out = true;
      }
      break;

     case ATV_IN_HV_ARMED:
      /* During 'HV_ARMED': '<S30>:83' */
      if (ATV_B.atv_StartBtn_din && (!ATV_B.RateTransition4)) {
        /* Transition: '<S30>:51' */
        ATV_DW.is_HV_CTRL = ATV_IN_HVM_ON;
        ATV_DW.temporalCounter_i1_m = 0U;

        /* Entry 'HVM_ON': '<S30>:54' */
        ATV_DW.startBtnArmed = false;
        atv_sub_state_out = 2U;
        ATV_B.hvp_ctrl_out = false;
        ATV_B.hvm_ctrl_out = true;
      }
      break;

     case ATV_IN_HV_OFF:
      /* During 'HV_OFF': '<S30>:52' */
      if ((!ATV_B.atv_StartBtn_din) && (!ATV_B.RateTransition4)) {
        /* Transition: '<S30>:84' */
        ATV_DW.is_HV_CTRL = ATV_IN_HV_ARMED;

        /* Entry 'HV_ARMED': '<S30>:83' */
        atv_sub_state_out = 1U;
        ATV_B.hvp_ctrl_out = false;
        ATV_B.hvm_ctrl_out = false;
      } else {
        atv_sub_state_out = 0U;
        ATV_B.hvp_ctrl_out = false;
        ATV_B.hvm_ctrl_out = false;
      }
      break;

     case ATV_IN_HV_ON:
      /* During 'HV_ON': '<S30>:53' */
      if ((ATV_DW.startBtnArmed && ATV_B.atv_StartBtn_din) ||
          ATV_B.RateTransition4 || tmp) {
        /* Transition: '<S30>:48' */
        ATV_DW.is_HV_CTRL = ATV_IN_HV_WAIT_INV_OFF;
        ATV_DW.temporalCounter_i1_m = 0U;

        /* Entry 'HV_WAIT_INV_OFF': '<S30>:98' */
        atv_sub_state_out = 4U;
        ATV_B.hvp_ctrl_out = true;
        ATV_B.hvm_ctrl_out = true;
      }
      break;

     default:
      /* During 'HV_WAIT_INV_OFF': '<S30>:98' */
      if (ATV_DW.temporalCounter_i1_m >= 50U) {
        /* Transition: '<S30>:99' */
        /* Transition: '<S30>:47' */
        ATV_DW.is_HV_CTRL = ATV_IN_HV_OFF;

        /* Entry 'HV_OFF': '<S30>:52' */
      }
      break;
    }

    /* During 'CHG_CTRL': '<S30>:68' */
    switch (ATV_DW.is_CHG_CTRL) {
     case ATV_IN_CHG_OFF:
      /* During 'CHG_OFF': '<S30>:62' */
      if (ATV_B.RateTransition4 && ((!ATV_B.hvp_ctrl_out) ||
           (ATV_DW.temporalCounter_i2 < 100U))) {
        /* Transition: '<S30>:64' */
        ATV_DW.is_CHG_CTRL = ATV_IN_HVM_ON_n;
        ATV_DW.temporalCounter_i2 = 0U;

        /* Entry 'HVM_ON': '<S30>:66' */
      }
      break;

     case ATV_IN_HVM_ON_n:
      /* During 'HVM_ON': '<S30>:66' */
      if ((!ATV_B.RateTransition4) || ATV_B.hvp_ctrl_out) {
        /* Transition: '<S30>:61' */
        ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
        ATV_DW.temporalCounter_i2 = 0U;

        /* Entry 'CHG_OFF': '<S30>:62' */
        ATV_B.chg_ctrl_out = false;
        ATV_B.hvm_ctrl_out = false;
      } else if (ATV_DW.temporalCounter_i2 >= 150U) {
        /* Transition: '<S30>:63' */
        ATV_DW.is_CHG_CTRL = ATV_IN_HV_ON_p;

        /* Entry 'HV_ON': '<S30>:65' */
      } else {
        ATV_B.chg_ctrl_out = false;
        ATV_B.hvm_ctrl_out = true;
      }
      break;

     default:
      /* During 'HV_ON': '<S30>:65' */
      if ((!ATV_B.RateTransition4) || ATV_B.hvp_ctrl_out) {
        /* Transition: '<S30>:59' */
        /* Transition: '<S30>:60' */
        ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
        ATV_DW.temporalCounter_i2 = 0U;

        /* Entry 'CHG_OFF': '<S30>:62' */
        ATV_B.chg_ctrl_out = false;
        ATV_B.hvm_ctrl_out = false;
      } else {
        ATV_B.chg_ctrl_out = true;
        ATV_B.hvm_ctrl_out = true;
      }
      break;
    }

    /* During 'HEATER_CTRL': '<S30>:72' */
    if (ATV_DW.is_HEATER_CTRL == ATV_IN_HEATER_OFF) {
      ATV_B.heater_ctrl_out = false;

      /* During 'HEATER_OFF': '<S30>:69' */
      if (ATV_B.RateTransition5) {
        /* Transition: '<S30>:78' */
        ATV_DW.is_HEATER_CTRL = ATV_IN_HVM_ON_n;

        /* Entry 'HVM_ON': '<S30>:73' */
        ATV_B.heater_ctrl_out = true;
      }
    } else {
      ATV_B.heater_ctrl_out = true;

      /* During 'HVM_ON': '<S30>:73' */
      if (!ATV_B.RateTransition5) {
        /* Transition: '<S30>:77' */
        ATV_DW.is_HEATER_CTRL = ATV_IN_HEATER_OFF;

        /* Entry 'HEATER_OFF': '<S30>:69' */
        ATV_B.heater_ctrl_out = false;
      }
    }

    /* During 'DRIVE_ENABLE': '<S30>:85' */
    switch (ATV_DW.is_DRIVE_ENABLE) {
     case ATV_IN_DRIVE_ENABLED:
      atv_state_out = 5U;
      ATV_B.en_inv_rear_out = true;
      ATV_B.en_inv_front_out = true;

      /* During 'DRIVE_ENABLED': '<S30>:88' */
      if (ATV_DW.is_HV_CTRL != ATV_IN_HV_ON) {
        /* Transition: '<S30>:92' */
        /* Transition: '<S30>:93' */
        /* Transition: '<S30>:94' */
        /* Exit 'DRIVE_ENABLED': '<S30>:88' */
        atv_runLed_out = false;
        ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;

        /* Entry 'IDLE': '<S30>:87' */
        atv_state_out = 4U;
        ATV_B.en_inv_rear_out = false;
        ATV_B.en_inv_front_out = false;
      }
      break;

     case ATV_IN_HV_DEL:
      /* During 'HV_DEL': '<S30>:96' */
      if (ATV_DW.temporalCounter_i3 >= 50U) {
        /* Transition: '<S30>:97' */
        ATV_DW.is_DRIVE_ENABLE = ATV_IN_DRIVE_ENABLED;

        /* Entry 'DRIVE_ENABLED': '<S30>:88' */
        atv_state_out = 5U;
        ATV_B.en_inv_rear_out = true;
        ATV_B.en_inv_front_out = true;
        atv_runLed_out = true;
      } else {
        if (ATV_DW.is_HV_CTRL != ATV_IN_HV_ON) {
          /* Transition: '<S30>:86' */
          ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;

          /* Entry 'IDLE': '<S30>:87' */
          atv_state_out = 4U;
          ATV_B.en_inv_rear_out = false;
          ATV_B.en_inv_front_out = false;
        }
      }
      break;

     default:
      atv_state_out = 4U;
      ATV_B.en_inv_rear_out = false;
      ATV_B.en_inv_front_out = false;

      /* During 'IDLE': '<S30>:87' */
      if (ATV_DW.is_HV_CTRL == ATV_IN_HV_ON) {
        /* Transition: '<S30>:95' */
        ATV_DW.is_DRIVE_ENABLE = ATV_IN_HV_DEL;
        ATV_DW.temporalCounter_i3 = 0U;
      }
      break;
    }

    /* During 'STARTTRIGGER': '<S30>:119' */
    if (ATV_DW.is_STARTTRIGGER == ATV_IN_STARTTRIGGER_OFF) {
      /* During 'STARTTRIGGER_OFF': '<S30>:117' */
      if (!ATV_B.atv_StartBtn_din) {
        /* Transition: '<S30>:114' */
        ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_ON;

        /* Entry 'STARTTRIGGER_ON': '<S30>:118' */
        ATV_DW.startBtnArmed = true;
      }
    } else {
      /* During 'STARTTRIGGER_ON': '<S30>:118' */
      if (ATV_B.atv_StartBtn_din) {
        /* Transition: '<S30>:116' */
        ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_OFF;
      }
    }
  }
}

/* Function for Chart: '<S31>/PUMP LOGIC' */
static real_T ATV_Off(boolean_T TInverterLow, boolean_T TMotorLow)
{
  real_T PumpSt;

  /* Truth Table Function 'Off': '<S33>:77' */
  if (TInverterLow && TMotorLow && ATV_B.RelationalOperator5) {
    /* Condition '#1': '<S33>:77:10' */
    /* Condition '#2': '<S33>:77:14' */
    /* Condition '#3': '<S33>:77:18' */
    /* Action '1': '<S33>:77:30' */
    PumpSt = 0.0;
  } else {
    /* Action '2': '<S33>:77:36' */
    PumpSt = 1.0;
  }

  return PumpSt;
}

/* Function for Chart: '<S31>/PUMP LOGIC' */
static real_T ATV_On(boolean_T TInverterHi, boolean_T TMotorHi)
{
  real_T PumpSt;

  /* Truth Table Function 'On': '<S33>:92' */
  if (TInverterHi) {
    /* Condition '#1': '<S33>:92:10' */
    /* Action '1': '<S33>:92:34' */
    PumpSt = 1.0;
  } else if (TMotorHi) {
    /* Condition '#2': '<S33>:92:14' */
    /* Action '1': '<S33>:92:34' */
    PumpSt = 1.0;
  } else if (ATV_B.RelationalOperator4) {
    /* Condition '#3': '<S33>:92:18' */
    /* Action '1': '<S33>:92:34' */
    PumpSt = 1.0;
  } else {
    /* Action '2': '<S33>:92:40' */
    PumpSt = 0.0;
  }

  return PumpSt;
}

/* Model output function for TID0 */
static void ATV_output0(void)          /* Sample time: [0.01s, 0.0s] */
{
  int32_T rtb_Add;
  uint8_T rtb_Gain_d;
  real_T rtb_Gain;
  boolean_T RelationalOperator6;
  boolean_T RelationalOperator8;

  {                                    /* Sample time: [0.01s, 0.0s] */
    rate_monotonic_scheduler();
  }

  /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput' */
  /* S-Function Block: <S6>/pai_BasicAnalogInput
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XD1, &adc, FALSE);
    ATV_B.pai_BasicAnalogInput = (adc * 5.0) / 4096.0;
  }

  /* Gain: '<S6>/Gain' */
  rtb_Gain = floor(1000.0 * ATV_B.pai_BasicAnalogInput);
  if (rtIsNaN(rtb_Gain) || rtIsInf(rtb_Gain)) {
    rtb_Gain = 0.0;
  } else {
    rtb_Gain = fmod(rtb_Gain, 4.294967296E+9);
  }

  atv_xd1_key_ain = rtb_Gain < 0.0 ? -(int32_T)(uint32_T)-rtb_Gain : (int32_T)
    (uint32_T)rtb_Gain;

  /* End of Gain: '<S6>/Gain' */

  /* RelationalOperator: '<S26>/Compare' incorporates:
   *  Constant: '<S26>/Constant'
   */
  atv_key_signal = (atv_xd1_key_ain > 500);

  /* S-Function (pdx_digital_input): '<S6>/pdx_DigitalInput' */
  /* S-Function Block: <S6>/pdx_DigitalInput
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  {
    uint8_T state;
    (void) pdx_digital_input(PIO_DIN_ZA3, &state, FALSE);
    put_debounce_by_time(state,
                         0.01,
                         0,
                         0.05,
                         0.1,
                         &state,
                         &pdx_DigitalInput_detm_wrk_data);
    atv_za3_StartBtn_din = state;
  }

  /* Logic: '<S6>/Logical Operator' */
  ATV_B.atv_StartBtn_din = !atv_za3_StartBtn_din;

  /* RateTransition: '<Root>/Rate Transition4' */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition4 = ATV_DW.RateTransition4_Buffer0;

    /* RateTransition: '<Root>/Rate Transition5' */
    ATV_B.RateTransition5 = ATV_DW.RateTransition5_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition4' */

  /* Chart: '<S8>/VSM' */
  if (ATV_DW.temporalCounter_i1_m < 127U) {
    ATV_DW.temporalCounter_i1_m++;
  }

  if (ATV_DW.temporalCounter_i2 < 255U) {
    ATV_DW.temporalCounter_i2++;
  }

  if (ATV_DW.temporalCounter_i3 < 63U) {
    ATV_DW.temporalCounter_i3++;
  }

  /* Gateway: loop_10ms/VSM */
  /* During: loop_10ms/VSM */
  if (ATV_DW.is_active_c3_ATV == 0U) {
    /* Entry: loop_10ms/VSM */
    ATV_DW.is_active_c3_ATV = 1U;

    /* Entry Internal: loop_10ms/VSM */
    /* Transition: '<S30>:4' */
    ATV_DW.is_c3_ATV = ATV_IN_SLEEP;

    /* Entry 'SLEEP': '<S30>:9' */
    atv_state_out = 1U;
    atv_sub_state_out = 0U;
    atv_wakelock_out = false;
    ATV_B.en_inv_gen_out = false;
    atv_en_dcdc_out = false;
  } else {
    switch (ATV_DW.is_c3_ATV) {
     case ATV_IN_INIT:
      atv_state_out = 3U;
      atv_wakelock_out = true;
      atv_en_dcdc_out = true;

      /* During 'INIT': '<S30>:5' */
      if (!atv_key_signal) {
        /* Transition: '<S30>:17' */
        ATV_DW.is_c3_ATV = ATV_IN_PRE_SLEEP;
        ATV_DW.temporalCounter_i1_m = 0U;

        /* Entry 'PRE_SLEEP': '<S30>:3' */
        atv_state_out = 2U;
        atv_sub_state_out = 0U;
      } else {
        if (ATV_DW.temporalCounter_i1_m >= 100U) {
          /* Transition: '<S30>:22' */
          ATV_DW.is_c3_ATV = ATV_IN_KEY_ON;

          /* Entry 'KEY_ON': '<S30>:20' */
          /* Entry Internal 'KEY_ON': '<S30>:20' */
          /* Entry Internal 'HV_CTRL': '<S30>:34' */
          /* Transition: '<S30>:82' */
          ATV_DW.is_HV_CTRL = ATV_IN_HV_OFF;

          /* Entry 'HV_OFF': '<S30>:52' */
          /* Entry Internal 'CHG_CTRL': '<S30>:68' */
          /* Transition: '<S30>:67' */
          ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
          ATV_DW.temporalCounter_i2 = 0U;

          /* Entry 'CHG_OFF': '<S30>:62' */
          ATV_B.chg_ctrl_out = false;
          ATV_B.hvm_ctrl_out = false;

          /* Entry Internal 'HEATER_CTRL': '<S30>:72' */
          /* Transition: '<S30>:74' */
          ATV_DW.is_HEATER_CTRL = ATV_IN_HEATER_OFF;

          /* Entry 'HEATER_OFF': '<S30>:69' */
          ATV_B.heater_ctrl_out = false;

          /* Entry Internal 'DRIVE_ENABLE': '<S30>:85' */
          /* Transition: '<S30>:91' */
          ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;

          /* Entry 'IDLE': '<S30>:87' */
          atv_state_out = 4U;
          ATV_B.en_inv_rear_out = false;
          ATV_B.en_inv_front_out = false;

          /* Entry Internal 'STARTTRIGGER': '<S30>:119' */
          /* Transition: '<S30>:115' */
          ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_OFF;
        }
      }
      break;

     case ATV_IN_KEY_ON:
      ATV_KEY_ON();
      break;

     case ATV_IN_PRE_SLEEP:
      atv_state_out = 2U;

      /* During 'PRE_SLEEP': '<S30>:3' */
      if (atv_key_signal) {
        /* Transition: '<S30>:19' */
        ATV_DW.is_c3_ATV = ATV_IN_INIT;
        ATV_DW.temporalCounter_i1_m = 0U;

        /* Entry 'INIT': '<S30>:5' */
        atv_state_out = 3U;
        atv_sub_state_out = 0U;
        atv_wakelock_out = true;
        atv_en_dcdc_out = true;
      } else {
        if (ATV_DW.temporalCounter_i1_m >= 25U) {
          /* Transition: '<S30>:16' */
          ATV_DW.is_c3_ATV = ATV_IN_SLEEP;

          /* Entry 'SLEEP': '<S30>:9' */
          atv_state_out = 1U;
          atv_sub_state_out = 0U;
          atv_wakelock_out = false;
          ATV_B.en_inv_gen_out = false;
          atv_en_dcdc_out = false;
        }
      }
      break;

     default:
      atv_state_out = 1U;
      atv_wakelock_out = false;
      ATV_B.en_inv_gen_out = false;
      atv_en_dcdc_out = false;

      /* During 'SLEEP': '<S30>:9' */
      if (atv_key_signal) {
        /* Transition: '<S30>:12' */
        ATV_DW.is_c3_ATV = ATV_IN_INIT;
        ATV_DW.temporalCounter_i1_m = 0U;

        /* Entry 'INIT': '<S30>:5' */
        atv_state_out = 3U;
        atv_sub_state_out = 0U;
        atv_wakelock_out = true;
        atv_en_dcdc_out = true;
      }
      break;
    }
  }

  /* End of Chart: '<S8>/VSM' */

  /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage' */
  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    BOOL retval;
    F32 pcx_CANdb_TransmitMessage_in_port_buffer[3];
    F32 * pcx_CANdb_TransmitMessage_in_port_ptr[3];
    static const U8 pcx_CANdb_TransmitMessage_field_start_pos[3] = {
      0, 8, 16, };

    static const U8 pcx_CANdb_TransmitMessage_field_width[3] = {
      8, 8, 8, };

    static const U8 pcx_CANdb_TransmitMessage_field_is_signed[3] = {
      0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage_field_valtype[3] = {
      0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage_field_order[3] = {
      1, 1, 1, };

    static const F32 pcx_CANdb_TransmitMessage_field_eng_min[3] = {
      0.0, 0.0, 0.0, };

    static const F32 pcx_CANdb_TransmitMessage_field_eng_max[3] = {
      255.0, 255.0, 255.0, };

    static const F32 pcx_CANdb_TransmitMessage_field_scale[3] = {
      1.0, 1.0, 1.0, };

    static const F32 pcx_CANdb_TransmitMessage_field_offset[3] = {
      0.0, 0.0, 0.0, };

    if (pcx_CANdb_TransmitMessage_msg_handle != PCX_CONFIG_ERROR) {
      pcx_CANdb_TransmitMessage_in_port_buffer[0] = atv_state_out;
      pcx_CANdb_TransmitMessage_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage_in_port_buffer[0];
      pcx_CANdb_TransmitMessage_in_port_buffer[1] = atv_sub_state_out;
      pcx_CANdb_TransmitMessage_in_port_ptr[1] =
        &pcx_CANdb_TransmitMessage_in_port_buffer[1];
      pcx_CANdb_TransmitMessage_in_port_buffer[2] = 0.0;
      pcx_CANdb_TransmitMessage_in_port_ptr[2] =
        &pcx_CANdb_TransmitMessage_in_port_buffer[2];
      pcx_vdb_pack_msg((const F32 * const *)
                       &pcx_CANdb_TransmitMessage_in_port_ptr[0], &data[0],
                       pcx_CANdb_TransmitMessage_field_start_pos,
                       pcx_CANdb_TransmitMessage_field_width,
                       pcx_CANdb_TransmitMessage_field_is_signed,
                       pcx_CANdb_TransmitMessage_field_valtype,
                       pcx_CANdb_TransmitMessage_field_order,
                       pcx_CANdb_TransmitMessage_field_eng_min,
                       pcx_CANdb_TransmitMessage_field_eng_max,
                       pcx_CANdb_TransmitMessage_field_scale,
                       pcx_CANdb_TransmitMessage_field_offset, 0, 1, 3);

      /* Do a transmit every time we are called, (CT2) */
      retval = pcx_transmit(pcx_CANdb_TransmitMessage_msg_handle, data);
    } else {
      /* error: pcx_declare_message was unsuccessful */
      retval = FALSE;
    }

    ATV_B.pcx_CANdb_TransmitMessage = !retval;
  }

  /* RateTransition: '<S1>/Rate Transition4' */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition4_b = ATV_B.hvm_ctrl_out;

    /* RateTransition: '<S1>/Rate Transition' */
    ATV_B.RateTransition = ATV_B.hvp_ctrl_out;

    /* RateTransition: '<S1>/Rate Transition1' */
    ATV_B.RateTransition1 = ATV_B.chg_ctrl_out;

    /* RateTransition: '<S1>/Rate Transition2' */
    ATV_B.RateTransition2 = ATV_B.heater_ctrl_out;
  }

  /* End of RateTransition: '<S1>/Rate Transition4' */

  /* Switch: '<S50>/Switch7' incorporates:
   *  Constant: '<S50>/Constant10'
   *  Constant: '<S50>/Constant9'
   *  Logic: '<S50>/Logical Operator6'
   */
  if (!ATV_B.en_inv_rear_out) {
    rtb_Add = 3;
  } else {
    rtb_Add = 0;
  }

  /* End of Switch: '<S50>/Switch7' */

  /* Sum: '<S50>/Add' incorporates:
   *  Logic: '<S50>/Logical Operator2'
   */
  rtb_Add += ATV_B.en_inv_rear_out;

  /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput3' */
  /* S-Function Block: <S6>/pai_BasicAnalogInput3
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XD3, &adc, FALSE);
    atv_xd3_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Relay: '<S6>/Relay' */
  if (atv_xd3_raw_ain >= 3.0) {
    ATV_DW.Relay_Mode = true;
  } else {
    if (atv_xd3_raw_ain <= 2.0) {
      ATV_DW.Relay_Mode = false;
    }
  }

  atv_fs1_in = ATV_DW.Relay_Mode;

  /* End of Relay: '<S6>/Relay' */

  /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput1' */
  /* S-Function Block: <S6>/pai_BasicAnalogInput1
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XA1, &adc, FALSE);
    atv_xa1_ain_throttle_raw = (adc * 5.0) / 4096.0;
  }

  /* Switch: '<S12>/Switch' incorporates:
   *  Constant: '<S12>/Constant'
   *  Constant: '<S13>/Lower Limit'
   *  Constant: '<S13>/Upper Limit'
   *  Logic: '<S13>/AND'
   *  RelationalOperator: '<S13>/Lower Test'
   *  RelationalOperator: '<S13>/Upper Test'
   */
  if ((0.45 <= atv_xa1_ain_throttle_raw) && (atv_xa1_ain_throttle_raw <= 4.55))
  {
    /* Saturate: '<S12>/Saturation' */
    if (atv_xa1_ain_throttle_raw > 4.5) {
      rtb_Gain = 4.5;
    } else if (atv_xa1_ain_throttle_raw < 0.5) {
      rtb_Gain = 0.5;
    } else {
      rtb_Gain = atv_xa1_ain_throttle_raw;
    }

    /* End of Saturate: '<S12>/Saturation' */

    /* Gain: '<S12>/Gain' incorporates:
     *  Constant: '<S12>/Constant1'
     *  Sum: '<S12>/Add'
     */
    rtb_Gain = floor((rtb_Gain - 0.5) * 250.0);
    if (rtIsNaN(rtb_Gain)) {
      atv_throttleX1000 = 0U;
    } else {
      atv_throttleX1000 = (uint16_T)fmod(rtb_Gain, 65536.0);
    }

    /* End of Gain: '<S12>/Gain' */
  } else {
    atv_throttleX1000 = 0U;
  }

  /* End of Switch: '<S12>/Switch' */

  /* Outputs for Atomic SubSystem: '<S29>/DBW + REG_BRAKE FORWARD' */
  /* Constant: '<S8>/atvc_mtadd' incorporates:
   *  Constant: '<S8>/atvc_mtawnb'
   */
  ATV_DBWREG_BRAKEFORWARD(atv_fs1_in, atv_throttleX1000,
    &ATV_B.DBWREG_BRAKEFORWARD_d);

  /* End of Outputs for SubSystem: '<S29>/DBW + REG_BRAKE FORWARD' */

  /* Outputs for Atomic SubSystem: '<S29>/DBW REVERSE' */
  ATV_DBWREVERSE(atv_fs1_in, atv_throttleX1000, &ATV_B.DBWREVERSE_b);

  /* End of Outputs for SubSystem: '<S29>/DBW REVERSE' */

  /* MultiPortSwitch: '<S29>/Multiport Switch3' incorporates:
   *  Constant: '<S29>/Constant4'
   */
  switch (rtb_Add) {
   case 1:
    ATV_B.MultiportSwitch3 = ATV_B.DBWREG_BRAKEFORWARD_d.Switch2;

    /* MultiPortSwitch: '<S29>/Multiport Switch1' */
    ATV_B.MultiportSwitch1 = ATV_B.DBWREG_BRAKEFORWARD_d.Switch;
    break;

   case 2:
    ATV_B.MultiportSwitch3 = ATV_ConstB.DBWREVERSE_b.Constant2;

    /* MultiPortSwitch: '<S29>/Multiport Switch1' */
    ATV_B.MultiportSwitch1 = ATV_B.DBWREVERSE_b.Cast;
    break;

   default:
    ATV_B.MultiportSwitch3 = 0U;

    /* MultiPortSwitch: '<S29>/Multiport Switch1' incorporates:
     *  Constant: '<S29>/Constant2'
     *  Constant: '<S29>/Constant4'
     */
    ATV_B.MultiportSwitch1 = 0U;
    break;
  }

  /* End of MultiPortSwitch: '<S29>/Multiport Switch3' */

  /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage2' incorporates:
   *  Constant: '<S29>/Constant5'
   *  Constant: '<S29>/Constant6'
   */
  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage2
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    BOOL retval;
    F32 pcx_CANdb_TransmitMessage2_in_port_buffer[4];
    F32 * pcx_CANdb_TransmitMessage2_in_port_ptr[4];
    static const U8 pcx_CANdb_TransmitMessage2_field_start_pos[4] = {
      48, 32, 16, 0, };

    static const U8 pcx_CANdb_TransmitMessage2_field_width[4] = {
      16, 16, 16, 16, };

    static const U8 pcx_CANdb_TransmitMessage2_field_is_signed[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage2_field_valtype[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage2_field_order[4] = {
      1, 1, 1, 1, };

    static const F32 pcx_CANdb_TransmitMessage2_field_eng_min[4] = {
      0.0, 0.0, 0.0, 0.0, };

    static const F32 pcx_CANdb_TransmitMessage2_field_eng_max[4] = {
      1000.0, 1000.0, 20000.0, 20000.0, };

    static const F32 pcx_CANdb_TransmitMessage2_field_scale[4] = {
      1.0, 1.0, 1.0, 1.0, };

    static const F32 pcx_CANdb_TransmitMessage2_field_offset[4] = {
      0.0, 0.0, 0.0, 0.0, };

    if (pcx_CANdb_TransmitMessage2_msg_handle != PCX_CONFIG_ERROR) {
      pcx_CANdb_TransmitMessage2_in_port_buffer[0] = ATV_B.MultiportSwitch3;
      pcx_CANdb_TransmitMessage2_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage2_in_port_buffer[0];
      pcx_CANdb_TransmitMessage2_in_port_buffer[1] = ATV_B.MultiportSwitch1;
      pcx_CANdb_TransmitMessage2_in_port_ptr[1] =
        &pcx_CANdb_TransmitMessage2_in_port_buffer[1];
      pcx_CANdb_TransmitMessage2_in_port_buffer[2] = ((uint16_T)1000U);
      pcx_CANdb_TransmitMessage2_in_port_ptr[2] =
        &pcx_CANdb_TransmitMessage2_in_port_buffer[2];
      pcx_CANdb_TransmitMessage2_in_port_buffer[3] = ((uint16_T)1000U);
      pcx_CANdb_TransmitMessage2_in_port_ptr[3] =
        &pcx_CANdb_TransmitMessage2_in_port_buffer[3];
      pcx_vdb_pack_msg((const F32 * const *)
                       &pcx_CANdb_TransmitMessage2_in_port_ptr[0], &data[0],
                       pcx_CANdb_TransmitMessage2_field_start_pos,
                       pcx_CANdb_TransmitMessage2_field_width,
                       pcx_CANdb_TransmitMessage2_field_is_signed,
                       pcx_CANdb_TransmitMessage2_field_valtype,
                       pcx_CANdb_TransmitMessage2_field_order,
                       pcx_CANdb_TransmitMessage2_field_eng_min,
                       pcx_CANdb_TransmitMessage2_field_eng_max,
                       pcx_CANdb_TransmitMessage2_field_scale,
                       pcx_CANdb_TransmitMessage2_field_offset, 0, 1, 4);

      /* Do a transmit every time we are called, (CT2) */
      retval = pcx_transmit(pcx_CANdb_TransmitMessage2_msg_handle, data);
    } else {
      /* error: pcx_declare_message was unsuccessful */
      retval = FALSE;
    }

    ATV_B.pcx_CANdb_TransmitMessage2 = !retval;
  }

  /* Logic: '<S29>/Logical Operator' */
  ATV_B.LogicalOperator = !atv_fs1_in;

  /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage3' incorporates:
   *  Constant: '<S1>/Constant'
   *  Constant: '<S1>/Constant1'
   *  Constant: '<S8>/fwd'
   *  Constant: '<S8>/rwd'
   */
  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage3
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    BOOL retval;
    F32 pcx_CANdb_TransmitMessage3_in_port_buffer[5];
    F32 * pcx_CANdb_TransmitMessage3_in_port_ptr[5];
    static const U8 pcx_CANdb_TransmitMessage3_field_start_pos[5] = {
      34, 33, 32, 16, 0, };

    static const U8 pcx_CANdb_TransmitMessage3_field_width[5] = {
      1, 1, 1, 16, 16, };

    static const U8 pcx_CANdb_TransmitMessage3_field_is_signed[5] = {
      0, 0, 0, 1, 1, };

    static const U8 pcx_CANdb_TransmitMessage3_field_valtype[5] = {
      0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage3_field_order[5] = {
      1, 1, 1, 1, 1, };

    static const F32 pcx_CANdb_TransmitMessage3_field_eng_min[5] = {
      0.0, 0.0, 0.0, -32768.0, 0.0,
    };

    static const F32 pcx_CANdb_TransmitMessage3_field_eng_max[5] = {
      1.0, 1.0, 1.0, 0.0, 32767.0,
    };

    static const F32 pcx_CANdb_TransmitMessage3_field_scale[5] = {
      1.0, 1.0, 1.0, 1.0, 1.0,
    };

    static const F32 pcx_CANdb_TransmitMessage3_field_offset[5] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
    };

    if (pcx_CANdb_TransmitMessage3_msg_handle != PCX_CONFIG_ERROR) {
      pcx_CANdb_TransmitMessage3_in_port_buffer[0] = ATV_B.LogicalOperator;
      pcx_CANdb_TransmitMessage3_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage3_in_port_buffer[0];
      pcx_CANdb_TransmitMessage3_in_port_buffer[1] = false;
      pcx_CANdb_TransmitMessage3_in_port_ptr[1] =
        &pcx_CANdb_TransmitMessage3_in_port_buffer[1];
      pcx_CANdb_TransmitMessage3_in_port_buffer[2] = true;
      pcx_CANdb_TransmitMessage3_in_port_ptr[2] =
        &pcx_CANdb_TransmitMessage3_in_port_buffer[2];
      pcx_CANdb_TransmitMessage3_in_port_buffer[3] = ((uint16_T)30U);
      pcx_CANdb_TransmitMessage3_in_port_ptr[3] =
        &pcx_CANdb_TransmitMessage3_in_port_buffer[3];
      pcx_CANdb_TransmitMessage3_in_port_buffer[4] = ((uint16_T)30U);
      pcx_CANdb_TransmitMessage3_in_port_ptr[4] =
        &pcx_CANdb_TransmitMessage3_in_port_buffer[4];
      pcx_vdb_pack_msg((const F32 * const *)
                       &pcx_CANdb_TransmitMessage3_in_port_ptr[0], &data[0],
                       pcx_CANdb_TransmitMessage3_field_start_pos,
                       pcx_CANdb_TransmitMessage3_field_width,
                       pcx_CANdb_TransmitMessage3_field_is_signed,
                       pcx_CANdb_TransmitMessage3_field_valtype,
                       pcx_CANdb_TransmitMessage3_field_order,
                       pcx_CANdb_TransmitMessage3_field_eng_min,
                       pcx_CANdb_TransmitMessage3_field_eng_max,
                       pcx_CANdb_TransmitMessage3_field_scale,
                       pcx_CANdb_TransmitMessage3_field_offset, 0, 1, 5);

      /* Do a transmit every time we are called, (CT2) */
      retval = pcx_transmit(pcx_CANdb_TransmitMessage3_msg_handle, data);
    } else {
      /* error: pcx_declare_message was unsuccessful */
      retval = FALSE;
    }

    ATV_B.pcx_CANdb_TransmitMessage3 = !retval;
  }

  /* Switch: '<S37>/Switch7' incorporates:
   *  Constant: '<S37>/Constant10'
   *  Constant: '<S37>/Constant9'
   *  Logic: '<S37>/Logical Operator6'
   */
  if (!ATV_B.en_inv_front_out) {
    rtb_Add = 3;
  } else {
    rtb_Add = 0;
  }

  /* End of Switch: '<S37>/Switch7' */

  /* Sum: '<S37>/Add' incorporates:
   *  Logic: '<S37>/Logical Operator2'
   */
  rtb_Add += ATV_B.en_inv_front_out;

  /* Outputs for Atomic SubSystem: '<S28>/DBW + REG_BRAKE FORWARD' */
  /* Constant: '<S8>/atvc_mtadd' incorporates:
   *  Constant: '<S8>/atvc_mtawnb'
   */
  ATV_DBWREG_BRAKEFORWARD(atv_fs1_in, atv_throttleX1000,
    &ATV_B.DBWREG_BRAKEFORWARD);

  /* End of Outputs for SubSystem: '<S28>/DBW + REG_BRAKE FORWARD' */

  /* Outputs for Atomic SubSystem: '<S28>/DBW REVERSE' */
  ATV_DBWREVERSE(atv_fs1_in, atv_throttleX1000, &ATV_B.DBWREVERSE);

  /* End of Outputs for SubSystem: '<S28>/DBW REVERSE' */

  /* MultiPortSwitch: '<S28>/Multiport Switch3' incorporates:
   *  Constant: '<S28>/Constant4'
   */
  switch (rtb_Add) {
   case 1:
    ATV_B.MultiportSwitch3_n = ATV_B.DBWREG_BRAKEFORWARD.Switch2;

    /* MultiPortSwitch: '<S28>/Multiport Switch1' */
    ATV_B.MultiportSwitch1_h = ATV_B.DBWREG_BRAKEFORWARD.Switch;
    break;

   case 2:
    ATV_B.MultiportSwitch3_n = 0U;

    /* MultiPortSwitch: '<S28>/Multiport Switch1' */
    ATV_B.MultiportSwitch1_h = ATV_B.DBWREVERSE.Cast;
    break;

   default:
    ATV_B.MultiportSwitch3_n = 0U;

    /* MultiPortSwitch: '<S28>/Multiport Switch1' incorporates:
     *  Constant: '<S28>/Constant2'
     *  Constant: '<S28>/Constant4'
     */
    ATV_B.MultiportSwitch1_h = 0U;
    break;
  }

  /* End of MultiPortSwitch: '<S28>/Multiport Switch3' */

  /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage4' incorporates:
   *  Constant: '<S28>/Constant5'
   *  Constant: '<S28>/Constant6'
   */
  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage4
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    BOOL retval;
    F32 pcx_CANdb_TransmitMessage4_in_port_buffer[4];
    F32 * pcx_CANdb_TransmitMessage4_in_port_ptr[4];
    static const U8 pcx_CANdb_TransmitMessage4_field_start_pos[4] = {
      48, 32, 16, 0, };

    static const U8 pcx_CANdb_TransmitMessage4_field_width[4] = {
      16, 16, 16, 16, };

    static const U8 pcx_CANdb_TransmitMessage4_field_is_signed[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage4_field_valtype[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage4_field_order[4] = {
      1, 1, 1, 1, };

    static const F32 pcx_CANdb_TransmitMessage4_field_eng_min[4] = {
      0.0, 0.0, 0.0, 0.0, };

    static const F32 pcx_CANdb_TransmitMessage4_field_eng_max[4] = {
      1000.0, 1000.0, 20000.0, 20000.0, };

    static const F32 pcx_CANdb_TransmitMessage4_field_scale[4] = {
      1.0, 1.0, 1.0, 1.0, };

    static const F32 pcx_CANdb_TransmitMessage4_field_offset[4] = {
      0.0, 0.0, 0.0, 0.0, };

    if (pcx_CANdb_TransmitMessage4_msg_handle != PCX_CONFIG_ERROR) {
      pcx_CANdb_TransmitMessage4_in_port_buffer[0] = ATV_B.MultiportSwitch3_n;
      pcx_CANdb_TransmitMessage4_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage4_in_port_buffer[0];
      pcx_CANdb_TransmitMessage4_in_port_buffer[1] = ATV_B.MultiportSwitch1_h;
      pcx_CANdb_TransmitMessage4_in_port_ptr[1] =
        &pcx_CANdb_TransmitMessage4_in_port_buffer[1];
      pcx_CANdb_TransmitMessage4_in_port_buffer[2] = ((uint16_T)1000U);
      pcx_CANdb_TransmitMessage4_in_port_ptr[2] =
        &pcx_CANdb_TransmitMessage4_in_port_buffer[2];
      pcx_CANdb_TransmitMessage4_in_port_buffer[3] = ((uint16_T)1000U);
      pcx_CANdb_TransmitMessage4_in_port_ptr[3] =
        &pcx_CANdb_TransmitMessage4_in_port_buffer[3];
      pcx_vdb_pack_msg((const F32 * const *)
                       &pcx_CANdb_TransmitMessage4_in_port_ptr[0], &data[0],
                       pcx_CANdb_TransmitMessage4_field_start_pos,
                       pcx_CANdb_TransmitMessage4_field_width,
                       pcx_CANdb_TransmitMessage4_field_is_signed,
                       pcx_CANdb_TransmitMessage4_field_valtype,
                       pcx_CANdb_TransmitMessage4_field_order,
                       pcx_CANdb_TransmitMessage4_field_eng_min,
                       pcx_CANdb_TransmitMessage4_field_eng_max,
                       pcx_CANdb_TransmitMessage4_field_scale,
                       pcx_CANdb_TransmitMessage4_field_offset, 0, 1, 4);

      /* Do a transmit every time we are called, (CT2) */
      retval = pcx_transmit(pcx_CANdb_TransmitMessage4_msg_handle, data);
    } else {
      /* error: pcx_declare_message was unsuccessful */
      retval = FALSE;
    }

    ATV_B.pcx_CANdb_TransmitMessage4 = !retval;
  }

  /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage5' incorporates:
   *  Constant: '<S1>/Constant'
   *  Constant: '<S1>/Constant1'
   *  Constant: '<S8>/fwd'
   *  Constant: '<S8>/rwd'
   */
  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage5
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    BOOL retval;
    F32 pcx_CANdb_TransmitMessage5_in_port_buffer[5];
    F32 * pcx_CANdb_TransmitMessage5_in_port_ptr[5];
    static const U8 pcx_CANdb_TransmitMessage5_field_start_pos[5] = {
      34, 33, 32, 16, 0, };

    static const U8 pcx_CANdb_TransmitMessage5_field_width[5] = {
      1, 1, 1, 16, 16, };

    static const U8 pcx_CANdb_TransmitMessage5_field_is_signed[5] = {
      0, 0, 0, 1, 1, };

    static const U8 pcx_CANdb_TransmitMessage5_field_valtype[5] = {
      0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage5_field_order[5] = {
      1, 1, 1, 1, 1, };

    static const F32 pcx_CANdb_TransmitMessage5_field_eng_min[5] = {
      0.0, 0.0, 0.0, -32768.0, 0.0,
    };

    static const F32 pcx_CANdb_TransmitMessage5_field_eng_max[5] = {
      1.0, 1.0, 1.0, 0.0, 32767.0,
    };

    static const F32 pcx_CANdb_TransmitMessage5_field_scale[5] = {
      1.0, 1.0, 1.0, 1.0, 1.0,
    };

    static const F32 pcx_CANdb_TransmitMessage5_field_offset[5] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
    };

    if (pcx_CANdb_TransmitMessage5_msg_handle != PCX_CONFIG_ERROR) {
      pcx_CANdb_TransmitMessage5_in_port_buffer[0] = ATV_B.LogicalOperator;
      pcx_CANdb_TransmitMessage5_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage5_in_port_buffer[0];
      pcx_CANdb_TransmitMessage5_in_port_buffer[1] = false;
      pcx_CANdb_TransmitMessage5_in_port_ptr[1] =
        &pcx_CANdb_TransmitMessage5_in_port_buffer[1];
      pcx_CANdb_TransmitMessage5_in_port_buffer[2] = true;
      pcx_CANdb_TransmitMessage5_in_port_ptr[2] =
        &pcx_CANdb_TransmitMessage5_in_port_buffer[2];
      pcx_CANdb_TransmitMessage5_in_port_buffer[3] = ((uint16_T)30U);
      pcx_CANdb_TransmitMessage5_in_port_ptr[3] =
        &pcx_CANdb_TransmitMessage5_in_port_buffer[3];
      pcx_CANdb_TransmitMessage5_in_port_buffer[4] = ((uint16_T)30U);
      pcx_CANdb_TransmitMessage5_in_port_ptr[4] =
        &pcx_CANdb_TransmitMessage5_in_port_buffer[4];
      pcx_vdb_pack_msg((const F32 * const *)
                       &pcx_CANdb_TransmitMessage5_in_port_ptr[0], &data[0],
                       pcx_CANdb_TransmitMessage5_field_start_pos,
                       pcx_CANdb_TransmitMessage5_field_width,
                       pcx_CANdb_TransmitMessage5_field_is_signed,
                       pcx_CANdb_TransmitMessage5_field_valtype,
                       pcx_CANdb_TransmitMessage5_field_order,
                       pcx_CANdb_TransmitMessage5_field_eng_min,
                       pcx_CANdb_TransmitMessage5_field_eng_max,
                       pcx_CANdb_TransmitMessage5_field_scale,
                       pcx_CANdb_TransmitMessage5_field_offset, 0, 1, 5);

      /* Do a transmit every time we are called, (CT2) */
      retval = pcx_transmit(pcx_CANdb_TransmitMessage5_msg_handle, data);
    } else {
      /* error: pcx_declare_message was unsuccessful */
      retval = FALSE;
    }

    ATV_B.pcx_CANdb_TransmitMessage5 = !retval;
  }

  /* RateTransition: '<Root>/Rate Transition6' incorporates:
   *  RateTransition: '<Root>/Rate Transition10'
   *  RateTransition: '<Root>/Rate Transition7'
   *  RateTransition: '<Root>/Rate Transition8'
   */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition6 = ATV_DW.RateTransition6_Buffer0;
    ATV_B.RateTransition7 = ATV_DW.RateTransition7_Buffer0;
    ATV_B.RateTransition10 = ATV_DW.RateTransition10_Buffer0;
    ATV_B.RateTransition8 = ATV_DW.RateTransition8_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition6' */

  /* RelationalOperator: '<S27>/Relational Operator4' */
  ATV_B.RelationalOperator4 = (ATV_B.RateTransition10 > 70);

  /* RelationalOperator: '<S27>/Relational Operator5' */
  ATV_B.RelationalOperator5 = (ATV_B.RateTransition10 < 60);

  /* RelationalOperator: '<S27>/Relational Operator6' */
  RelationalOperator6 = (ATV_B.RateTransition8 > 70);

  /* RateTransition: '<Root>/Rate Transition9' incorporates:
   *  RateTransition: '<Root>/Rate Transition11'
   */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition9 = ATV_DW.RateTransition9_Buffer0;
    ATV_B.RateTransition11 = ATV_DW.RateTransition11_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition9' */

  /* RelationalOperator: '<S27>/Relational Operator8' */
  RelationalOperator8 = (ATV_B.RateTransition9 > 40);

  /* Chart: '<S31>/PUMP LOGIC' incorporates:
   *  RelationalOperator: '<S27>/Relational Operator'
   *  RelationalOperator: '<S27>/Relational Operator1'
   *  RelationalOperator: '<S27>/Relational Operator2'
   *  RelationalOperator: '<S27>/Relational Operator3'
   *  RelationalOperator: '<S27>/Relational Operator7'
   *  RelationalOperator: '<S27>/Relational Operator9'
   */
  if (ATV_DW.temporalCounter_i1 < 65535U) {
    ATV_DW.temporalCounter_i1++;
  }

  /* Gateway: loop_10ms/Cooling System1/GestioneImpiantoRaffreddamento/PUMP LOGIC */
  /* During: loop_10ms/Cooling System1/GestioneImpiantoRaffreddamento/PUMP LOGIC */
  if (ATV_DW.is_active_c6_ATV == 0U) {
    /* Entry: loop_10ms/Cooling System1/GestioneImpiantoRaffreddamento/PUMP LOGIC */
    ATV_DW.is_active_c6_ATV = 1U;

    /* Entry Internal: loop_10ms/Cooling System1/GestioneImpiantoRaffreddamento/PUMP LOGIC */
    /* Entry 'PumpALogic': '<S33>:47' */
    ATV_DW.PumpStA = 0.0;

    /* Entry Internal 'PumpALogic': '<S33>:47' */
    /* Transition: '<S33>:56' */
    ATV_DW.is_PumpALogic = ATV_IN_Off;

    /* Switch: '<S31>/Switch' */
    /* Entry 'Off': '<S33>:63' */
    ATV_B.Switch = false;

    /* Entry 'PumpBLogic': '<S33>:14' */
    ATV_DW.PumpStB = 0.0;

    /* Entry Internal 'PumpBLogic': '<S33>:14' */
    /* Transition: '<S33>:27' */
    ATV_DW.is_PumpBLogic = ATV_IN_Off;
    ATV_DW.temporalCounter_i1 = 0U;

    /* Entry 'Off': '<S33>:24' */
    atv_dbg_pumpB_out = false;
    rtb_Add = 0;
  } else {
    /* During 'PumpALogic': '<S33>:47' */
    if (ATV_DW.is_PumpALogic == ATV_IN_Off) {
      /* Switch: '<S31>/Switch' */
      ATV_B.Switch = false;

      /* During 'Off': '<S33>:63' */
      if (ATV_DW.PumpStA == 1.0) {
        /* Transition: '<S33>:116' */
        ATV_DW.is_PumpALogic = ATV_IN_Run;

        /* Switch: '<S31>/Switch' */
        /* Entry 'Run': '<S33>:54' */
        ATV_B.Switch = true;
      } else {
        ATV_DW.PumpStA = ATV_On(ATV_B.RateTransition7 > 40,
          ATV_B.RateTransition6 > 70);
      }
    } else {
      /* Switch: '<S31>/Switch' */
      ATV_B.Switch = true;

      /* During 'Run': '<S33>:54' */
      if (ATV_DW.PumpStA == 0.0) {
        /* Transition: '<S33>:62' */
        ATV_DW.is_PumpALogic = ATV_IN_Off;

        /* Switch: '<S31>/Switch' */
        /* Entry 'Off': '<S33>:63' */
        ATV_B.Switch = false;
      } else {
        ATV_DW.PumpStA = ATV_Off(ATV_B.RateTransition7 < 30,
          ATV_B.RateTransition6 < 60);
      }
    }

    /* During 'PumpBLogic': '<S33>:14' */
    switch (ATV_DW.is_PumpBLogic) {
     case ATV_IN_Off:
      atv_dbg_pumpB_out = false;
      rtb_Add = 0;

      /* During 'Off': '<S33>:24' */
      if (ATV_DW.PumpStB == 1.0) {
        /* Transition: '<S33>:29' */
        ATV_DW.is_PumpBLogic = ATV_IN_Run;

        /* Entry 'Run': '<S33>:28' */
        atv_dbg_pumpB_out = true;
        rtb_Add = 1;
      } else if (ATV_DW.temporalCounter_i1 >= 50000U) {
        /* Transition: '<S33>:32' */
        ATV_DW.is_PumpBLogic = ATV_IN_Run60sec;
        ATV_DW.temporalCounter_i1 = 0U;

        /* Entry 'Run60sec': '<S33>:22' */
        atv_dbg_pumpB_out = true;
        rtb_Add = 1;
      } else {
        ATV_DW.PumpStB = ATV_On(RelationalOperator8, RelationalOperator6);
      }
      break;

     case ATV_IN_Run:
      atv_dbg_pumpB_out = true;
      rtb_Add = 1;

      /* During 'Run': '<S33>:28' */
      if (ATV_DW.PumpStB == 0.0) {
        /* Transition: '<S33>:25' */
        ATV_DW.is_PumpBLogic = ATV_IN_Off;
        ATV_DW.temporalCounter_i1 = 0U;

        /* Entry 'Off': '<S33>:24' */
        atv_dbg_pumpB_out = false;
        rtb_Add = 0;
      } else {
        ATV_DW.PumpStB = ATV_Off(ATV_B.RateTransition9 < 30,
          ATV_B.RateTransition8 < 60);
      }
      break;

     default:
      atv_dbg_pumpB_out = true;
      rtb_Add = 1;

      /* During 'Run60sec': '<S33>:22' */
      if (ATV_DW.PumpStB == 1.0) {
        /* Transition: '<S33>:31' */
        /* Transition: '<S33>:34' */
        ATV_DW.is_PumpBLogic = ATV_IN_Run;

        /* Entry 'Run': '<S33>:28' */
        atv_dbg_pumpB_out = true;
      } else if (ATV_DW.temporalCounter_i1 >= 9000U) {
        /* Transition: '<S33>:26' */
        ATV_DW.is_PumpBLogic = ATV_IN_Off;
        ATV_DW.temporalCounter_i1 = 0U;

        /* Entry 'Off': '<S33>:24' */
        atv_dbg_pumpB_out = false;
        rtb_Add = 0;
      } else {
        ATV_DW.PumpStB = ATV_On(RelationalOperator8, RelationalOperator6);
      }
      break;
    }
  }

  /* End of Chart: '<S31>/PUMP LOGIC' */

  /* RateTransition: '<S1>/Rate Transition3' */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition3 = ATV_B.Switch;

    /* RateTransition: '<S1>/Rate Transition5' */
    ATV_B.RateTransition5_g = atv_dbg_pumpB_out;

    /* RateTransition: '<Root>/Rate Transition12' */
    ATV_B.RateTransition12 = ATV_DW.RateTransition12_Buffer0;
  }

  /* End of RateTransition: '<S1>/Rate Transition3' */

  /* Relay: '<S32>/Relay1' */
  if (ATV_B.RateTransition12 >= 50) {
    ATV_DW.Relay1_Mode = true;
  } else {
    if (ATV_B.RateTransition12 <= 48) {
      ATV_DW.Relay1_Mode = false;
    }
  }

  /* Switch: '<S32>/Switch1' incorporates:
   *  Constant: '<S32>/Ventola spenta'
   *  Logic: '<S32>/Logical Operator'
   *  Relay: '<S32>/Relay1'
   *  Switch: '<S31>/Switch1'
   */
  if ((rtb_Add != 0) && ATV_DW.Relay1_Mode) {
    /* Sum: '<S32>/Add1' incorporates:
     *  Constant: '<S31>/atvc_tempSwitchOnFan'
     */
    rtb_Gain_d = (uint8_T)(ATV_B.RateTransition12 - atvc_tempSwitchOnFan);

    /* Saturate: '<S32>/Saturation' */
    if (rtb_Gain_d >= 20) {
      rtb_Gain_d = 20U;
    }

    /* End of Saturate: '<S32>/Saturation' */

    /* Product: '<S32>/Product' incorporates:
     *  Constant: '<S32>/Constant'
     */
    atv_dbg_FAN_out = (real_T)rtb_Gain_d / 20.0;

    /* Gain: '<S32>/Gain' incorporates:
     *  Constant: '<S32>/Constant1'
     *  DataTypeConversion: '<S32>/Data Type Conversion'
     *  Switch: '<S34>/Switch2'
     */
    rtb_Gain = 0.01 * (real_T)atvc_dcMinFan;

    /* Switch: '<S34>/Switch' incorporates:
     *  RelationalOperator: '<S34>/UpperRelop'
     *  Switch: '<S34>/Switch2'
     */
    if (atv_dbg_FAN_out < rtb_Gain) {
      atv_dbg_FAN_out = rtb_Gain;
    }

    /* End of Switch: '<S34>/Switch' */
  } else {
    atv_dbg_FAN_out = 0.0;
  }

  /* End of Switch: '<S32>/Switch1' */

  /* Gain: '<S1>/Gain' */
  rtb_Gain = floor(100.0 * atv_dbg_FAN_out);
  if (rtIsNaN(rtb_Gain) || rtIsInf(rtb_Gain)) {
    rtb_Gain = 0.0;
  } else {
    rtb_Gain = fmod(rtb_Gain, 256.0);
  }

  rtb_Gain_d = (uint8_T)(rtb_Gain < 0.0 ? (int32_T)(uint8_T)-(int8_T)(uint8_T)
    -rtb_Gain : (int32_T)(uint8_T)rtb_Gain);

  /* End of Gain: '<S1>/Gain' */

  /* RelationalOperator: '<S9>/Compare' incorporates:
   *  Constant: '<S9>/Constant'
   */
  RelationalOperator6 = (rtb_Gain_d > 0);

  /* RateTransition: '<S1>/Rate Transition6' */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition6_p = RelationalOperator6;

    /* RateTransition: '<S1>/Rate Transition7' */
    ATV_B.RateTransition7_p = rtb_Gain_d;
  }

  /* End of RateTransition: '<S1>/Rate Transition6' */

  /* S-Function (pdx_digital_output): '<S1>/pdx_DigitalOutput' */
  /* S-Function Block: <S1>/pdx_DigitalOutput
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)atv_wakelock_out,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_XD1_ENABLE_PSU_HOLD, state, FALSE);
  }

  /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput' incorporates:
   *  Constant: '<S5>/Constant1'
   */
  /* S-Function Block: <S5>/pdx_DigitalOutput
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)ATV_B.Switch,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_YL4, state, FALSE);
  }

  /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput1' incorporates:
   *  Constant: '<S5>/Constant1'
   */
  /* S-Function Block: <S5>/pdx_DigitalOutput1
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)atv_dbg_pumpB_out,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_YA1, state, FALSE);
  }

  /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput2' incorporates:
   *  Constant: '<S5>/Constant1'
   */
  /* S-Function Block: <S5>/pdx_DigitalOutput2
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)ATV_B.Switch,
                         (U8)0,
                         (U8)false,
                         (U8)(false),
                         &state);
    (void) pdx_digital_output(PIO_DOT_XD4, state, FALSE);
  }

  /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput3' incorporates:
   *  Constant: '<S5>/Constant1'
   */
  /* S-Function Block: <S5>/pdx_DigitalOutput3
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)ATV_B.heater_ctrl_out,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_ZF2, state, FALSE);
  }

  /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput4' incorporates:
   *  Constant: '<S5>/Constant1'
   */
  /* S-Function Block: <S5>/pdx_DigitalOutput4
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)ATV_B.en_inv_rear_out,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_YA2, state, FALSE);
  }

  /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput5' incorporates:
   *  Constant: '<S5>/Constant1'
   */
  /* S-Function Block: <S5>/pdx_DigitalOutput5
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)ATV_B.en_inv_front_out,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_YA3, state, FALSE);
  }

  /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput6' incorporates:
   *  Constant: '<S5>/Constant1'
   */
  /* S-Function Block: <S5>/pdx_DigitalOutput6
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)ATV_B.en_inv_gen_out,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_YA4, state, FALSE);
  }

  /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput7' incorporates:
   *  Constant: '<S5>/Constant1'
   */
  /* S-Function Block: <S5>/pdx_DigitalOutput7
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)atv_runLed_out,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_ZG2, state, FALSE);
  }

  /* Gain: '<S5>/Gain' */
  ATV_B.Saturation = 0.01 * atv_dbg_FAN_out;

  /* Saturate: '<S5>/Saturation' */
  if (ATV_B.Saturation > 1.0) {
    /* Gain: '<S5>/Gain' */
    ATV_B.Saturation = 1.0;
  } else {
    if (ATV_B.Saturation < 0.0) {
      /* Gain: '<S5>/Gain' */
      ATV_B.Saturation = 0.0;
    }
  }

  /* End of Saturate: '<S5>/Saturation' */

  /* S-Function (pdx_pwm_output): '<S5>/pdx_PWMOutput' incorporates:
   *  Constant: '<S5>/Constant1'
   */
  /*
   * S-Function Block: <S5>/pdx_PWMOutput
   * [$Id: pdx_pwm_output.tlc 30730 2012-09-29 12:01:15Z jtough $]
   */
  {
    F32 dc;
    put_dutycycle_processing(ATV_B.Saturation,
      0,
      (U8)false,
      0.0,
      (0.0),
      (1.0),
      &dc);
    (void) pdx_pwm_output(PIO_FFPOT_YK3,
                          500.0,
                          dc,
                          0.0,
                          FALSE);
  }

  /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput2' */
  /* S-Function Block: <S6>/pai_BasicAnalogInput2
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XE3, &adc, FALSE);
    ATV_B.pai_BasicAnalogInput2 = (adc * 5.0) / 4096.0;
  }

  /* Gain: '<S6>/Gain2' */
  rtb_Gain = floor(1000.0 * ATV_B.pai_BasicAnalogInput2);
  if (rtIsNaN(rtb_Gain) || rtIsInf(rtb_Gain)) {
    rtb_Gain = 0.0;
  } else {
    rtb_Gain = fmod(rtb_Gain, 4.294967296E+9);
  }

  atv_xe3_ain = rtb_Gain < 0.0 ? -(int32_T)(uint32_T)-rtb_Gain : (int32_T)
    (uint32_T)rtb_Gain;

  /* End of Gain: '<S6>/Gain2' */

  /* S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput' incorporates:
   *  Constant: '<Root>/Constant1'
   */
  /* S-Function Block: <Root>/pdx_DigitalOutput
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)true,
                         (U8)0,
                         (U8)false,
                         (U8)(true),
                         &state);
    (void) pdx_digital_output
      (PIO_DOT_XD4_YA1_YA4_YB1_YC2_YC3_YD1_YD2_YD3_YB4_YE1_YE2_YK3_ZA4_ZB4_ZE1_ZE2_ZF3_ENABLE,
       state, FALSE);
  }

  /* S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput1' incorporates:
   *  Constant: '<Root>/Constant1'
   */
  /* S-Function Block: <Root>/pdx_DigitalOutput1
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)true,
                         (U8)0,
                         (U8)false,
                         (U8)(true),
                         &state);
    (void) pdx_digital_output
      (PIO_DOT_YA2_YA3_YC1_YE3_YL2_YL4_YM2_YM3_ZC1_ZD1_ZD2_ZE3_ZE4_ZG2_ENABLE,
       state, FALSE);
  }

  /* S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput2' incorporates:
   *  Constant: '<Root>/Constant1'
   */
  /* S-Function Block: <Root>/pdx_DigitalOutput2
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)true,
                         (U8)0,
                         (U8)false,
                         (U8)1.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_INT_ENABLE_SECONDARY_MICRO, state, FALSE);
  }

  /* S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput3' incorporates:
   *  Constant: '<Root>/Constant'
   */
  /* S-Function Block: <Root>/pdx_DigitalOutput3
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)false,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_YK2_DISABLE, state, FALSE);
  }
}

/* Model update function for TID0 */
static void ATV_update0(void)          /* Sample time: [0.01s, 0.0s] */
{
  /* Update absolute time */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++ATV_M->Timing.clockTick0)) {
    ++ATV_M->Timing.clockTickH0;
  }

  ATV_M->Timing.t[0] = ATV_M->Timing.clockTick0 * ATV_M->Timing.stepSize0 +
    ATV_M->Timing.clockTickH0 * ATV_M->Timing.stepSize0 * 4294967296.0;
}

/* Model output function for TID1 */
static void ATV_output1(void)          /* Sample time: [0.1s, 0.0s] */
{
  /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage1' */
  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage1
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    BOOL retval;
    F32 pcx_CANdb_TransmitMessage1_in_port_buffer[5];
    F32 * pcx_CANdb_TransmitMessage1_in_port_ptr[5];
    static const U8 pcx_CANdb_TransmitMessage1_field_start_pos[5] = {
      16, 8, 0, 24, 32, };

    static const U8 pcx_CANdb_TransmitMessage1_field_width[5] = {
      1, 1, 1, 1, 1, };

    static const U8 pcx_CANdb_TransmitMessage1_field_is_signed[5] = {
      0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage1_field_valtype[5] = {
      0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage1_field_order[5] = {
      1, 1, 1, 1, 1, };

    static const F32 pcx_CANdb_TransmitMessage1_field_eng_min[5] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
    };

    static const F32 pcx_CANdb_TransmitMessage1_field_eng_max[5] = {
      1.0, 1.0, 1.0, 1.0, 1.0,
    };

    static const F32 pcx_CANdb_TransmitMessage1_field_scale[5] = {
      1.0, 1.0, 1.0, 1.0, 1.0,
    };

    static const F32 pcx_CANdb_TransmitMessage1_field_offset[5] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
    };

    if (pcx_CANdb_TransmitMessage1_msg_handle != PCX_CONFIG_ERROR) {
      pcx_CANdb_TransmitMessage1_in_port_buffer[0] = ATV_B.RateTransition4_b;
      pcx_CANdb_TransmitMessage1_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage1_in_port_buffer[0];
      pcx_CANdb_TransmitMessage1_in_port_buffer[1] = ATV_B.RateTransition;
      pcx_CANdb_TransmitMessage1_in_port_ptr[1] =
        &pcx_CANdb_TransmitMessage1_in_port_buffer[1];
      pcx_CANdb_TransmitMessage1_in_port_buffer[2] = ATV_B.RateTransition1;
      pcx_CANdb_TransmitMessage1_in_port_ptr[2] =
        &pcx_CANdb_TransmitMessage1_in_port_buffer[2];
      pcx_CANdb_TransmitMessage1_in_port_buffer[3] = ATV_B.RateTransition2;
      pcx_CANdb_TransmitMessage1_in_port_ptr[3] =
        &pcx_CANdb_TransmitMessage1_in_port_buffer[3];
      pcx_CANdb_TransmitMessage1_in_port_buffer[4] = ATV_B.RateTransition2;
      pcx_CANdb_TransmitMessage1_in_port_ptr[4] =
        &pcx_CANdb_TransmitMessage1_in_port_buffer[4];
      pcx_vdb_pack_msg((const F32 * const *)
                       &pcx_CANdb_TransmitMessage1_in_port_ptr[0], &data[0],
                       pcx_CANdb_TransmitMessage1_field_start_pos,
                       pcx_CANdb_TransmitMessage1_field_width,
                       pcx_CANdb_TransmitMessage1_field_is_signed,
                       pcx_CANdb_TransmitMessage1_field_valtype,
                       pcx_CANdb_TransmitMessage1_field_order,
                       pcx_CANdb_TransmitMessage1_field_eng_min,
                       pcx_CANdb_TransmitMessage1_field_eng_max,
                       pcx_CANdb_TransmitMessage1_field_scale,
                       pcx_CANdb_TransmitMessage1_field_offset, 0, 1, 5);

      /* Do a transmit every time we are called, (CT2) */
      retval = pcx_transmit(pcx_CANdb_TransmitMessage1_msg_handle, data);
    } else {
      /* error: pcx_declare_message was unsuccessful */
      retval = FALSE;
    }

    ATV_B.pcx_CANdb_TransmitMessage1 = !retval;
  }

  /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage6' */
  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage6
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    BOOL retval;
    F32 pcx_CANdb_TransmitMessage6_in_port_buffer[4];
    F32 * pcx_CANdb_TransmitMessage6_in_port_ptr[4];
    static const U8 pcx_CANdb_TransmitMessage6_field_start_pos[4] = {
      0, 8, 16, 24, };

    static const U8 pcx_CANdb_TransmitMessage6_field_width[4] = {
      1, 1, 1, 8, };

    static const U8 pcx_CANdb_TransmitMessage6_field_is_signed[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage6_field_valtype[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage6_field_order[4] = {
      1, 1, 1, 1, };

    static const F32 pcx_CANdb_TransmitMessage6_field_eng_min[4] = {
      0.0, 0.0, 0.0, 0.0, };

    static const F32 pcx_CANdb_TransmitMessage6_field_eng_max[4] = {
      1.0, 1.0, 1.0, 255.0, };

    static const F32 pcx_CANdb_TransmitMessage6_field_scale[4] = {
      1.0, 1.0, 1.0, 1.0, };

    static const F32 pcx_CANdb_TransmitMessage6_field_offset[4] = {
      0.0, 0.0, 0.0, 0.0, };

    if (pcx_CANdb_TransmitMessage6_msg_handle != PCX_CONFIG_ERROR) {
      pcx_CANdb_TransmitMessage6_in_port_buffer[0] = ATV_B.RateTransition3;
      pcx_CANdb_TransmitMessage6_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage6_in_port_buffer[0];
      pcx_CANdb_TransmitMessage6_in_port_buffer[1] = ATV_B.RateTransition5_g;
      pcx_CANdb_TransmitMessage6_in_port_ptr[1] =
        &pcx_CANdb_TransmitMessage6_in_port_buffer[1];
      pcx_CANdb_TransmitMessage6_in_port_buffer[2] = ATV_B.RateTransition6_p;
      pcx_CANdb_TransmitMessage6_in_port_ptr[2] =
        &pcx_CANdb_TransmitMessage6_in_port_buffer[2];
      pcx_CANdb_TransmitMessage6_in_port_buffer[3] = ATV_B.RateTransition7_p;
      pcx_CANdb_TransmitMessage6_in_port_ptr[3] =
        &pcx_CANdb_TransmitMessage6_in_port_buffer[3];
      pcx_vdb_pack_msg((const F32 * const *)
                       &pcx_CANdb_TransmitMessage6_in_port_ptr[0], &data[0],
                       pcx_CANdb_TransmitMessage6_field_start_pos,
                       pcx_CANdb_TransmitMessage6_field_width,
                       pcx_CANdb_TransmitMessage6_field_is_signed,
                       pcx_CANdb_TransmitMessage6_field_valtype,
                       pcx_CANdb_TransmitMessage6_field_order,
                       pcx_CANdb_TransmitMessage6_field_eng_min,
                       pcx_CANdb_TransmitMessage6_field_eng_max,
                       pcx_CANdb_TransmitMessage6_field_scale,
                       pcx_CANdb_TransmitMessage6_field_offset, 0, 1, 4);

      /* Do a transmit every time we are called, (CT2) */
      retval = pcx_transmit(pcx_CANdb_TransmitMessage6_msg_handle, data);
    } else {
      /* error: pcx_declare_message was unsuccessful */
      retval = FALSE;
    }

    ATV_B.pcx_CANdb_TransmitMessage6 = !retval;
  }

  /* S-Function (pcx_candb_receive_message): '<S3>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S3>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_out_port_buffer[3];
    F32 * pcx_CANdb_ReceiveMessage_out_port[3];
    static const U8 pcx_CANdb_ReceiveMessage_field_start_pos[3] = {
      0, 8, 16, };

    static const U8 pcx_CANdb_ReceiveMessage_field_width[3] = {
      1, 1, 1, };

    static const U8 pcx_CANdb_ReceiveMessage_field_is_signed[3] = {
      0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_field_valtype[3] = {
      0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_field_order[3] = {
      1, 1, 1, };

    static const F32 pcx_CANdb_ReceiveMessage_field_eng_min[3] = {
      0.0, 0.0, 0.0, };

    static const F32 pcx_CANdb_ReceiveMessage_field_eng_max[3] = {
      1.0, 1.0, 1.0, };

    static const F32 pcx_CANdb_ReceiveMessage_field_scale[3] = {
      1.0, 1.0, 1.0, };

    static const F32 pcx_CANdb_ReceiveMessage_field_offset[3] = {
      0.0, 0.0, 0.0, };

    if (pcx_CANdb_ReceiveMessage_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_msg_handle,
        data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1 = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3 = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2 = 1;
        pcx_CANdb_ReceiveMessage_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_out_port_buffer[2];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_out_port[0], NULL, &data[0],
                           pcx_CANdb_ReceiveMessage_field_start_pos,
                           pcx_CANdb_ReceiveMessage_field_width,
                           pcx_CANdb_ReceiveMessage_field_is_signed,
                           pcx_CANdb_ReceiveMessage_field_valtype,
                           pcx_CANdb_ReceiveMessage_field_order,
                           pcx_CANdb_ReceiveMessage_field_eng_min,
                           pcx_CANdb_ReceiveMessage_field_eng_max,
                           pcx_CANdb_ReceiveMessage_field_scale,
                           pcx_CANdb_ReceiveMessage_field_offset, 0, 1, 3);
        ATV_B.pcx_CANdb_ReceiveMessage_o4 =
          pcx_CANdb_ReceiveMessage_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5 =
          pcx_CANdb_ReceiveMessage_out_port_buffer[1];
        ATV_B.pcx_CANdb_ReceiveMessage_o6 =
          pcx_CANdb_ReceiveMessage_out_port_buffer[2];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2 = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1 = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2 = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3 = 0;
    }
  }

  /* Chart: '<S3>/Chart' */
  ATV_Chart(ATV_B.pcx_CANdb_ReceiveMessage_o2, &ATV_B.sf_Chart, &ATV_DW.sf_Chart);

  /* Switch: '<S3>/Switch1' */
  atv_v_dbg_chg_req = (ATV_B.sf_Chart.out && (ATV_B.pcx_CANdb_ReceiveMessage_o5
    != 0.0));

  /* Switch: '<S3>/Switch2' */
  atv_v_dbg_heater_req = (ATV_B.sf_Chart.out &&
    (ATV_B.pcx_CANdb_ReceiveMessage_o6 != 0.0));

  /* S-Function (pcx_candb_receive_message): '<S4>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S4>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_p_out_port_buffer[7];
    F32 * pcx_CANdb_ReceiveMessage_p_out_port[7];
    static const U8 pcx_CANdb_ReceiveMessage_p_field_start_pos[7] = {
      0, 8, 24, 16, 32, 40, 48, };

    static const U8 pcx_CANdb_ReceiveMessage_p_field_width[7] = {
      8, 8, 8, 8, 8, 8, 8, };

    static const U8 pcx_CANdb_ReceiveMessage_p_field_is_signed[7] = {
      0, 0, 0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_p_field_valtype[7] = {
      0, 0, 0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_p_field_order[7] = {
      1, 1, 1, 1, 1, 1, 1, };

    static const F32 pcx_CANdb_ReceiveMessage_p_field_eng_min[7] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
      0.0, 0.0, };

    static const F32 pcx_CANdb_ReceiveMessage_p_field_eng_max[7] = {
      255.0, 255.0, 255.0, 255.0, 255.0,
      255.0, 255.0, };

    static const F32 pcx_CANdb_ReceiveMessage_p_field_scale[7] = {
      1.0, 1.0, 1.0, 1.0, 1.0,
      1.0, 1.0, };

    static const F32 pcx_CANdb_ReceiveMessage_p_field_offset[7] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
      0.0, 0.0, };

    if (pcx_CANdb_ReceiveMessage_p_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_p_msg_handle,
        data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_k = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_b = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_d = 1;
        pcx_CANdb_ReceiveMessage_p_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_p_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_p_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_p_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_p_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_p_out_port_buffer[2];
        pcx_CANdb_ReceiveMessage_p_out_port[3] = (F32*)
          &pcx_CANdb_ReceiveMessage_p_out_port_buffer[3];
        pcx_CANdb_ReceiveMessage_p_out_port[4] = (F32*)
          &pcx_CANdb_ReceiveMessage_p_out_port_buffer[4];
        pcx_CANdb_ReceiveMessage_p_out_port[5] = (F32*)
          &pcx_CANdb_ReceiveMessage_p_out_port_buffer[5];
        pcx_CANdb_ReceiveMessage_p_out_port[6] = (F32*)
          &pcx_CANdb_ReceiveMessage_p_out_port_buffer[6];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_p_out_port[0], NULL, &data
                           [0], pcx_CANdb_ReceiveMessage_p_field_start_pos,
                           pcx_CANdb_ReceiveMessage_p_field_width,
                           pcx_CANdb_ReceiveMessage_p_field_is_signed,
                           pcx_CANdb_ReceiveMessage_p_field_valtype,
                           pcx_CANdb_ReceiveMessage_p_field_order,
                           pcx_CANdb_ReceiveMessage_p_field_eng_min,
                           pcx_CANdb_ReceiveMessage_p_field_eng_max,
                           pcx_CANdb_ReceiveMessage_p_field_scale,
                           pcx_CANdb_ReceiveMessage_p_field_offset, 0, 1, 7);
        ATV_B.pcx_CANdb_ReceiveMessage_o4_k =
          pcx_CANdb_ReceiveMessage_p_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5_c =
          pcx_CANdb_ReceiveMessage_p_out_port_buffer[1];
        ATV_B.pcx_CANdb_ReceiveMessage_o6_o =
          pcx_CANdb_ReceiveMessage_p_out_port_buffer[2];
        ATV_B.pcx_CANdb_ReceiveMessage_o7 =
          pcx_CANdb_ReceiveMessage_p_out_port_buffer[3];
        ATV_B.pcx_CANdb_ReceiveMessage_o8 =
          pcx_CANdb_ReceiveMessage_p_out_port_buffer[4];
        ATV_B.pcx_CANdb_ReceiveMessage_o9 =
          pcx_CANdb_ReceiveMessage_p_out_port_buffer[5];
        ATV_B.pcx_CANdb_ReceiveMessage_o10 =
          pcx_CANdb_ReceiveMessage_p_out_port_buffer[6];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_d = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_k = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_d = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_b = 0;
    }
  }

  /* Chart: '<S4>/Chart' */
  ATV_Chart(ATV_B.pcx_CANdb_ReceiveMessage_o2_d, &ATV_B.sf_Chart_b,
            &ATV_DW.sf_Chart_b);

  /* Switch: '<S4>/Switch' */
  ATV_B.atv_v_dbg_T_FMot = 0U;

  /* Switch: '<S4>/Switch1' */
  ATV_B.atv_v_dbg_T_FInv = 0U;

  /* Switch: '<S4>/Switch2' */
  ATV_B.atv_v_dbg_T_RMot = 0U;

  /* Switch: '<S4>/Switch3' */
  ATV_B.atv_v_dbg_T_RInv = 0U;

  /* Switch: '<S4>/Switch4' */
  ATV_B.atv_v_dbg_T_GMot = 0U;

  /* Switch: '<S4>/Switch5' */
  ATV_B.atv_v_dbg_T_GInv = 0U;

  /* Switch: '<S4>/Switch6' */
  ATV_B.atv_v_dbg_T_Rad = 0U;

  /* S-Function (pcx_candb_receive_message): '<S2>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S2>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_e_out_port_buffer[6];
    F32 * pcx_CANdb_ReceiveMessage_e_out_port[6];
    static const U8 pcx_CANdb_ReceiveMessage_e_field_start_pos[6] = {
      7, 15, 16, 32, 55, 63, };

    static const U8 pcx_CANdb_ReceiveMessage_e_field_width[6] = {
      8, 8, 16, 16, 8, 8, };

    static const U8 pcx_CANdb_ReceiveMessage_e_field_is_signed[6] = {
      0, 0, 0, 1, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_e_field_valtype[6] = {
      0, 0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_e_field_order[6] = {
      0, 0, 1, 1, 0, 0, };

    static const F32 pcx_CANdb_ReceiveMessage_e_field_eng_min[6] = {
      0.0, 0.0, 0.0, -3276.8, 0.0,
      1720.0, };

    static const F32 pcx_CANdb_ReceiveMessage_e_field_eng_max[6] = {
      255.0, 127.5, 6553.5, 3276.7, 255.0,
      1975.0, };

    static const F32 pcx_CANdb_ReceiveMessage_e_field_scale[6] = {
      1.0, 0.5, 0.1, 0.1, 1.0,
      1.0, };

    static const F32 pcx_CANdb_ReceiveMessage_e_field_offset[6] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
      1720.0, };

    if (pcx_CANdb_ReceiveMessage_e_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_e_msg_handle,
        data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_n = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_p = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_l = 1;
        pcx_CANdb_ReceiveMessage_e_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_e_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_e_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_e_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_e_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_e_out_port_buffer[2];
        pcx_CANdb_ReceiveMessage_e_out_port[3] = (F32*)
          &pcx_CANdb_ReceiveMessage_e_out_port_buffer[3];
        pcx_CANdb_ReceiveMessage_e_out_port[4] = (F32*)
          &pcx_CANdb_ReceiveMessage_e_out_port_buffer[4];
        pcx_CANdb_ReceiveMessage_e_out_port[5] = (F32*)
          &pcx_CANdb_ReceiveMessage_e_out_port_buffer[5];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_e_out_port[0], NULL, &data
                           [0], pcx_CANdb_ReceiveMessage_e_field_start_pos,
                           pcx_CANdb_ReceiveMessage_e_field_width,
                           pcx_CANdb_ReceiveMessage_e_field_is_signed,
                           pcx_CANdb_ReceiveMessage_e_field_valtype,
                           pcx_CANdb_ReceiveMessage_e_field_order,
                           pcx_CANdb_ReceiveMessage_e_field_eng_min,
                           pcx_CANdb_ReceiveMessage_e_field_eng_max,
                           pcx_CANdb_ReceiveMessage_e_field_scale,
                           pcx_CANdb_ReceiveMessage_e_field_offset, 0, 1, 6);
        ATV_B.pcx_CANdb_ReceiveMessage_o4_n =
          pcx_CANdb_ReceiveMessage_e_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5_m =
          pcx_CANdb_ReceiveMessage_e_out_port_buffer[1];
        bms_pack_voltage = pcx_CANdb_ReceiveMessage_e_out_port_buffer[2];
        ATV_B.atv_bms_pack_current = pcx_CANdb_ReceiveMessage_e_out_port_buffer
          [3];
        ATV_B.atv_bms_pack_soh = pcx_CANdb_ReceiveMessage_e_out_port_buffer[4];
        ATV_B.pcx_CANdb_ReceiveMessage_o9_c =
          pcx_CANdb_ReceiveMessage_e_out_port_buffer[5];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_l = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_n = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_l = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_p = 0;
    }
  }
}

/* Model update function for TID1 */
static void ATV_update1(void)          /* Sample time: [0.1s, 0.0s] */
{
  /* Update for RateTransition: '<Root>/Rate Transition4' */
  ATV_DW.RateTransition4_Buffer0 = atv_v_dbg_chg_req;

  /* Update for RateTransition: '<Root>/Rate Transition5' */
  ATV_DW.RateTransition5_Buffer0 = atv_v_dbg_heater_req;

  /* Update for RateTransition: '<Root>/Rate Transition6' */
  ATV_DW.RateTransition6_Buffer0 = ATV_B.atv_v_dbg_T_FMot;

  /* Update for RateTransition: '<Root>/Rate Transition7' */
  ATV_DW.RateTransition7_Buffer0 = ATV_B.atv_v_dbg_T_FInv;

  /* Update for RateTransition: '<Root>/Rate Transition10' */
  ATV_DW.RateTransition10_Buffer0 = ATV_B.atv_v_dbg_T_GMot;

  /* Update for RateTransition: '<Root>/Rate Transition8' */
  ATV_DW.RateTransition8_Buffer0 = ATV_B.atv_v_dbg_T_RMot;

  /* Update for RateTransition: '<Root>/Rate Transition9' */
  ATV_DW.RateTransition9_Buffer0 = ATV_B.atv_v_dbg_T_RInv;

  /* Update for RateTransition: '<Root>/Rate Transition11' */
  ATV_DW.RateTransition11_Buffer0 = ATV_B.atv_v_dbg_T_GInv;

  /* Update for RateTransition: '<Root>/Rate Transition12' */
  ATV_DW.RateTransition12_Buffer0 = ATV_B.atv_v_dbg_T_Rad;

  /* Update absolute time */
  /* The "clockTick1" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick1"
   * and "Timing.stepSize1". Size of "clockTick1" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick1 and the high bits
   * Timing.clockTickH1. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++ATV_M->Timing.clockTick1)) {
    ++ATV_M->Timing.clockTickH1;
  }

  ATV_M->Timing.t[1] = ATV_M->Timing.clockTick1 * ATV_M->Timing.stepSize1 +
    ATV_M->Timing.clockTickH1 * ATV_M->Timing.stepSize1 * 4294967296.0;
}

/* Model output function for TID2 */
static void ATV_output2(void)          /* Sample time: [1.0s, 0.0s] */
{
  /* S-Function (psc_cpu_loading): '<S21>/psc_CpuLoading1' */
  /* S-Function Block: <S21>/psc_CpuLoading1
   * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  atv_cpu_loading = psc_get_cpu_loading();

  /* S-Function (psc_stack_used): '<S21>/psc_StackUsed' */
  /*
   * S-Function Block: <S21>/psc_StackUsed
   * [$Id: psc_stack_used.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  atv_stack_used = psc_get_used_stack_size();

  /* S-Function (pkn_task_duration): '<S21>/pkn_TaskDuration1' */
  /* S-Function Block: <S21>/pkn_TaskDuration1
   * [$Id: pkn_task_duration.tlc 34330 2013-07-01 12:56:28Z sbhattacharya $]
   */
  atv_task_duration_1s = pkn_get_task_duration(pkn_task_1000ms_task_hdl);

  /* S-Function (psc_cpu_loading): '<S21>/psc_CpuLoading2' */
  /* S-Function Block: <S21>/psc_CpuLoading2
   * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  atv_cpu_loading_max = psc_get_max_cpu_loading();

  /* S-Function (pkn_task_duration): '<S21>/pkn_TaskDuration2' */
  /* S-Function Block: <S21>/pkn_TaskDuration2
   * [$Id: pkn_task_duration.tlc 34330 2013-07-01 12:56:28Z sbhattacharya $]
   */
  atv_task_duration_1s_max = pkn_get_max_task_duration(pkn_task_1000ms_task_hdl);
}

/* Model update function for TID2 */
static void ATV_update2(void)          /* Sample time: [1.0s, 0.0s] */
{
  /* Update absolute time */
  /* The "clockTick2" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick2"
   * and "Timing.stepSize2". Size of "clockTick2" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick2 and the high bits
   * Timing.clockTickH2. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++ATV_M->Timing.clockTick2)) {
    ++ATV_M->Timing.clockTickH2;
  }

  ATV_M->Timing.t[2] = ATV_M->Timing.clockTick2 * ATV_M->Timing.stepSize2 +
    ATV_M->Timing.clockTickH2 * ATV_M->Timing.stepSize2 * 4294967296.0;
}

/* Model output wrapper function for compatibility with a static main program */
static void ATV_output(int_T tid)
{
  switch (tid) {
   case 0 :
    ATV_output0();
    break;

   case 1 :
    ATV_output1();
    break;

   case 2 :
    ATV_output2();
    break;

   default :
    break;
  }
}

/* Model update wrapper function for compatibility with a static main program */
static void ATV_update(int_T tid)
{
  switch (tid) {
   case 0 :
    ATV_update0();
    break;

   case 1 :
    ATV_update1();
    break;

   case 2 :
    ATV_update2();
    break;

   default :
    break;
  }
}

/* Model initialize function */
static void ATV_initialize(void)
{
  /* user code (Start function Body) */

  /*
   * [$Id: put_identification.tlc 82546 2021-12-17 21:41:32Z csmith $]
   */
  /* S-Function Block: <S19>/pcfg_Config_M5xx
   * [$Id: pcfg_config_m5xx.tlc 69984 2019-02-26 16:29:50Z jprewett $]
   */
  (void) pcfg_set_global_mios_prescaler_m5xx(PIO_CFG_MIOS_GLOBAL_FAST);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XH3,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XH2,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XH1,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_XG1,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_ZB4,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_DIN_XF1,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_DIN_XF4,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_YB2,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_YK3,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_DIN_XD4_MONITOR_D,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_0C,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_0F,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_1A,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_ZG4,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_1F,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);

  /* Start for S-Function (pdx_digital_input): '<S6>/pdx_DigitalInput' */

  /* S-Function Block: <S6>/pdx_DigitalInput
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  (void) pdx_digital_input(PIO_DIN_ZA3, NULL, TRUE);
  put_debounce_by_time_init(&pdx_DigitalInput_detm_wrk_data);

  /* Start for RateTransition: '<Root>/Rate Transition4' */
  ATV_B.RateTransition4 = false;

  /* Start for RateTransition: '<Root>/Rate Transition5' */
  ATV_B.RateTransition5 = false;

  /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage' */

  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    256);

  /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage1' */

  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage1
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage1_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    335);

  /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage2' incorporates:
   *  Constant: '<S29>/Constant5'
   *  Constant: '<S29>/Constant6'
   */

  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage2
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage2_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    817);

  /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage3' incorporates:
   *  Constant: '<S1>/Constant'
   *  Constant: '<S1>/Constant1'
   *  Constant: '<S8>/fwd'
   *  Constant: '<S8>/rwd'
   */

  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage3
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage3_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    818);

  /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage4' incorporates:
   *  Constant: '<S28>/Constant5'
   *  Constant: '<S28>/Constant6'
   */

  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage4
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage4_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    785);

  /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage5' incorporates:
   *  Constant: '<S1>/Constant'
   *  Constant: '<S1>/Constant1'
   *  Constant: '<S8>/fwd'
   *  Constant: '<S8>/rwd'
   */

  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage5
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage5_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    786);

  /* Start for RateTransition: '<Root>/Rate Transition6' */
  ATV_B.RateTransition6 = 0U;

  /* Start for RateTransition: '<Root>/Rate Transition7' */
  ATV_B.RateTransition7 = 0U;

  /* Start for RateTransition: '<Root>/Rate Transition10' */
  ATV_B.RateTransition10 = 0U;

  /* Start for RateTransition: '<Root>/Rate Transition8' */
  ATV_B.RateTransition8 = 0U;

  /* Start for RateTransition: '<Root>/Rate Transition9' */
  ATV_B.RateTransition9 = 0U;

  /* Start for RateTransition: '<Root>/Rate Transition11' */
  ATV_B.RateTransition11 = 0U;

  /* Start for RateTransition: '<Root>/Rate Transition12' */
  ATV_B.RateTransition12 = 0U;

  /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage6' */

  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage6
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage6_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    498);

  /* Start for S-Function (pdx_digital_output): '<S1>/pdx_DigitalOutput' */

  /* S-Function Block: <S1>/pdx_DigitalOutput
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_XD1_ENABLE_PSU_HOLD,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput' incorporates:
   *  Constant: '<S5>/Constant1'
   */

  /* S-Function Block: <S5>/pdx_DigitalOutput
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YL4,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput1' incorporates:
   *  Constant: '<S5>/Constant1'
   */

  /* S-Function Block: <S5>/pdx_DigitalOutput1
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YA1,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput2' incorporates:
   *  Constant: '<S5>/Constant1'
   */

  /* S-Function Block: <S5>/pdx_DigitalOutput2
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_XD4,
    (U8)(false),
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput3' incorporates:
   *  Constant: '<S5>/Constant1'
   */

  /* S-Function Block: <S5>/pdx_DigitalOutput3
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_ZF2,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput4' incorporates:
   *  Constant: '<S5>/Constant1'
   */

  /* S-Function Block: <S5>/pdx_DigitalOutput4
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YA2,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput5' incorporates:
   *  Constant: '<S5>/Constant1'
   */

  /* S-Function Block: <S5>/pdx_DigitalOutput5
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YA3,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput6' incorporates:
   *  Constant: '<S5>/Constant1'
   */

  /* S-Function Block: <S5>/pdx_DigitalOutput6
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YA4,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput7' incorporates:
   *  Constant: '<S5>/Constant1'
   */

  /* S-Function Block: <S5>/pdx_DigitalOutput7
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_ZG2,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_pwm_output): '<S5>/pdx_PWMOutput' incorporates:
   *  Constant: '<S5>/Constant1'
   */

  /*
   * S-Function Block: <S5>/pdx_PWMOutput
   * [$Id: pdx_pwm_output.tlc 30730 2012-09-29 12:01:15Z jtough $]
   */
  (void) pdx_pwm_output(PIO_FFPOT_YK3,
                        500.0,
                        0.0,
                        0.0,
                        TRUE);

  /* Start for S-Function (pcx_candb_receive_message): '<S3>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S3>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    496);

  /* Start for S-Function (pcx_candb_receive_message): '<S4>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S4>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_p_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    497);

  /* Start for S-Function (pcx_candb_receive_message): '<S2>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S2>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_e_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    320);

  /* Start for S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput' incorporates:
   *  Constant: '<Root>/Constant1'
   */

  /* S-Function Block: <Root>/pdx_DigitalOutput
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output
    (PIO_DOT_XD4_YA1_YA4_YB1_YC2_YC3_YD1_YD2_YD3_YB4_YE1_YE2_YK3_ZA4_ZB4_ZE1_ZE2_ZF3_ENABLE,
     (U8)(true),
     TRUE);

  /* Start for S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput1' incorporates:
   *  Constant: '<Root>/Constant1'
   */

  /* S-Function Block: <Root>/pdx_DigitalOutput1
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output
    (PIO_DOT_YA2_YA3_YC1_YE3_YL2_YL4_YM2_YM3_ZC1_ZD1_ZD2_ZE3_ZE4_ZG2_ENABLE,
     (U8)(true),
     TRUE);

  /* Start for S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput2' incorporates:
   *  Constant: '<Root>/Constant1'
   */

  /* S-Function Block: <Root>/pdx_DigitalOutput2
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_INT_ENABLE_SECONDARY_MICRO,
    (U8)1.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput3' incorporates:
   *  Constant: '<Root>/Constant'
   */

  /* S-Function Block: <Root>/pdx_DigitalOutput3
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YK2_DISABLE,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pcx_can_config): '<S17>/pcx_CANConfiguration' */

  /* S-Function Block: <S17>/pcx_CANConfiguration
   * [$Id: pcx_can_config.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  pcx_config(PIO_CAN_YE4_YF4_A, PIO_CBAUD_500_KBPS);

  /* Start for S-Function (psc_app_build_date): '<S22>/psc_AppBuildDate' */

  /*
   * S-Function Block: <S22>/psc_AppBuildDate
   * [$Id: psc_app_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
   */
  {
    U16 year;
    U16 month;
    U16 day;
    (void) psc_get_application_build_date(&year, &month, &day);
    atv_app_code_year = year;
    atv_app_code_month = month;
    atv_app_code_day = day;
  }

  /* Start for S-Function (psc_app_version): '<S22>/psc_AppVersion' */

  /*
   * S-Function Block: <S22>/psc_AppVersion
   * [$Id: psc_app_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
   */
  {
    U16 major_ver;
    U16 minor_ver;
    U16 sub_minor_ver;
    (void) psc_get_application_version(&major_ver, &minor_ver, &sub_minor_ver);
    atv_app_code_major_ver = major_ver;
    atv_app_code_minor_ver = minor_ver;
    atv_app_code_subminor_ver = sub_minor_ver;
  }

  /* Start for S-Function (psc_boot_build_date): '<S23>/psc_BootBuildDate' */

  /*
   * S-Function Block: <S23>/psc_BootBuildDate
   * [$Id: psc_boot_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
   */
  {
    U16 year;
    U16 month;
    U16 day;
    (void) psc_get_boot_build_date(&year, &month, &day);
    atv_boot_code_year = year;
    atv_boot_code_month = month;
    atv_boot_code_day = day;
  }

  /* Start for S-Function (psc_boot_version): '<S23>/psc_BootVersion' */

  /*
   * S-Function Block: <S23>/psc_BootVersion
   * [$Id: psc_boot_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
   */
  {
    U16 major_ver;
    U16 minor_ver;
    U16 sub_minor_ver;
    (void) psc_get_boot_version(&major_ver, &minor_ver, &sub_minor_ver);
    atv_boot_code_major_ver = major_ver;
    atv_boot_code_minor_ver = minor_ver;
    atv_boot_code_subminor_ver = sub_minor_ver;
  }

  /* Start for S-Function (psc_prg_build_date): '<S24>/psc_PrgBuildDate' */

  /*
   * S-Function Block: <S24>/psc_PrgBuildDate
   * [$Id: psc_prg_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
   */
  {
    U16 year;
    U16 month;
    U16 day;
    (void) psc_get_prg_build_date(&year, &month, &day);
    atv_prg_code_year = year;
    atv_prg_code_month = month;
    atv_prg_code_day = day;
  }

  /* Start for S-Function (psc_prg_version): '<S24>/psc_PrgVersion' */

  /*
   * S-Function Block: <S24>/psc_PrgVersion
   * [$Id: psc_prg_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
   */
  {
    U16 major_ver;
    U16 minor_ver;
    U16 sub_minor_ver;
    (void) psc_get_prg_version(&major_ver, &minor_ver, &sub_minor_ver);
    atv_prg_code_major_ver = major_ver;
    atv_prg_code_minor_ver = minor_ver;
    atv_prg_code_subminor_ver = sub_minor_ver;
  }

  /* Start for S-Function (psc_platform_build_date): '<S25>/psc_PlatformBuildDate' */

  /*
   * S-Function Block: <S25>/psc_PlatformBuildDate
   * [$Id: psc_platform_build_date.tlc 50935 2016-04-04 20:19:06Z cforhart $]
   */
  {
    U16 year;
    U16 month;
    U16 day;
    (void) psc_get_platform_build_date(&year, &month, &day);
    atv_platform_code_year = year;
    atv_platform_code_month = month;
    atv_platform_code_day = day;
  }

  /* Start for S-Function (psc_platform_version): '<S25>/psc_PlatformVersion' */

  /*
   * S-Function Block: <S25>/psc_PlatformVersion
   * [$Id: psc_platform_version.tlc 50935 2016-04-04 20:19:06Z cforhart $]
   */
  {
    U16 major_ver;
    U16 minor_ver;
    U16 sub_minor_ver;
    (void) psc_get_platform_version(&major_ver, &minor_ver, &sub_minor_ver);
    atv_platform_code_major_ver = major_ver;
    atv_platform_code_minor_ver = minor_ver;
    atv_platform_code_subminor_ver = sub_minor_ver;
  }

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition4' */
  ATV_DW.RateTransition4_Buffer0 = false;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition5' */
  ATV_DW.RateTransition5_Buffer0 = false;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition6' */
  ATV_DW.RateTransition6_Buffer0 = 0U;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition7' */
  ATV_DW.RateTransition7_Buffer0 = 0U;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition10' */
  ATV_DW.RateTransition10_Buffer0 = 0U;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition8' */
  ATV_DW.RateTransition8_Buffer0 = 0U;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition9' */
  ATV_DW.RateTransition9_Buffer0 = 0U;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition11' */
  ATV_DW.RateTransition11_Buffer0 = 0U;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition12' */
  ATV_DW.RateTransition12_Buffer0 = 0U;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S3>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S3>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4 = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5 = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o6 = 0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S4>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S4>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_k = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_c = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o6_o = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o7 = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o8 = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o9 = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o10 = 0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S2>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S2>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_n = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_m = 0;
  bms_pack_voltage = 0;
  ATV_B.atv_bms_pack_current = 0;
  ATV_B.atv_bms_pack_soh = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o9_c = 0;

  /* SystemInitialize for Chart: '<S8>/VSM' */
  ATV_DW.is_CHG_CTRL = ATV_IN_NO_ACTIVE_CHILD_m;
  ATV_DW.temporalCounter_i2 = 0U;
  ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_m;
  ATV_DW.temporalCounter_i3 = 0U;
  ATV_DW.is_HEATER_CTRL = ATV_IN_NO_ACTIVE_CHILD_m;
  ATV_DW.is_HV_CTRL = ATV_IN_NO_ACTIVE_CHILD_m;
  ATV_DW.is_STARTTRIGGER = ATV_IN_NO_ACTIVE_CHILD_m;
  ATV_DW.temporalCounter_i1_m = 0U;
  ATV_DW.is_active_c3_ATV = 0U;
  ATV_DW.is_c3_ATV = ATV_IN_NO_ACTIVE_CHILD_m;

  /* SystemInitialize for Chart: '<S31>/PUMP LOGIC' */
  ATV_DW.is_PumpALogic = ATV_IN_NO_ACTIVE_CHILD_m;
  ATV_DW.is_PumpBLogic = ATV_IN_NO_ACTIVE_CHILD_m;
  ATV_DW.temporalCounter_i1 = 0U;
  ATV_DW.is_active_c6_ATV = 0U;

  /* SystemInitialize for Chart: '<S3>/Chart' */
  ATV_Chart_Init(&ATV_DW.sf_Chart);

  /* SystemInitialize for Chart: '<S4>/Chart' */
  ATV_Chart_Init(&ATV_DW.sf_Chart_b);
}

/* Model terminate function */
static void ATV_terminate(void)
{
  /* (no terminate code required) */
}

/*========================================================================*
 * Start of Classic call interface                                        *
 *========================================================================*/
void MdlOutputs(int_T tid)
{
  ATV_output(tid);
}

void MdlUpdate(int_T tid)
{
  ATV_update(tid);
}

void MdlInitializeSizes(void)
{
}

void MdlInitializeSampleTimes(void)
{
}

void MdlInitialize(void)
{
}

void MdlStart(void)
{
  ATV_initialize();
}

void MdlTerminate(void)
{
  ATV_terminate();
}

/* Registration function */
RT_MODEL_ATV_T *ATV(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize real-time model */
  (void) memset((void *)ATV_M, 0,
                sizeof(RT_MODEL_ATV_T));

  /* Initialize timing info */
  {
    int_T *mdlTsMap = ATV_M->Timing.sampleTimeTaskIDArray;
    mdlTsMap[0] = 0;
    mdlTsMap[1] = 1;
    mdlTsMap[2] = 2;
    ATV_M->Timing.sampleTimeTaskIDPtr = (&mdlTsMap[0]);
    ATV_M->Timing.sampleTimes = (&ATV_M->Timing.sampleTimesArray[0]);
    ATV_M->Timing.offsetTimes = (&ATV_M->Timing.offsetTimesArray[0]);

    /* task periods */
    ATV_M->Timing.sampleTimes[0] = (0.01);
    ATV_M->Timing.sampleTimes[1] = (0.1);
    ATV_M->Timing.sampleTimes[2] = (1.0);

    /* task offsets */
    ATV_M->Timing.offsetTimes[0] = (0.0);
    ATV_M->Timing.offsetTimes[1] = (0.0);
    ATV_M->Timing.offsetTimes[2] = (0.0);
  }

  rtmSetTPtr(ATV_M, &ATV_M->Timing.tArray[0]);

  {
    int_T *mdlSampleHits = ATV_M->Timing.sampleHitArray;
    int_T *mdlPerTaskSampleHits = ATV_M->Timing.perTaskSampleHitsArray;
    ATV_M->Timing.perTaskSampleHits = (&mdlPerTaskSampleHits[0]);
    mdlSampleHits[0] = 1;
    ATV_M->Timing.sampleHits = (&mdlSampleHits[0]);
  }

  rtmSetTFinal(ATV_M, -1);
  ATV_M->Timing.stepSize0 = 0.01;
  ATV_M->Timing.stepSize1 = 0.1;
  ATV_M->Timing.stepSize2 = 1.0;
  ATV_M->solverInfoPtr = (&ATV_M->solverInfo);
  ATV_M->Timing.stepSize = (0.01);
  rtsiSetFixedStepSize(&ATV_M->solverInfo, 0.01);
  rtsiSetSolverMode(&ATV_M->solverInfo, SOLVER_MODE_MULTITASKING);

  /* block I/O */
  ATV_M->blockIO = ((void *) &ATV_B);
  (void) memset(((void *) &ATV_B), 0,
                sizeof(B_ATV_T));

  /* exported global signals */
  atv_xd3_raw_ain = 0.0;
  atv_xa1_ain_throttle_raw = 0.0;
  atv_dbg_FAN_out = 0.0;
  bms_pack_voltage = 0.0;
  atv_stack_used = 0U;
  atv_task_duration_1s = 0U;
  atv_task_duration_1s_max = 0U;
  atv_xd1_key_ain = 0;
  atv_xe3_ain = 0;
  atv_throttleX1000 = 0U;
  atv_app_code_year = 0U;
  atv_app_code_month = 0U;
  atv_app_code_day = 0U;
  atv_app_code_major_ver = 0U;
  atv_app_code_minor_ver = 0U;
  atv_app_code_subminor_ver = 0U;
  atv_boot_code_year = 0U;
  atv_boot_code_month = 0U;
  atv_boot_code_day = 0U;
  atv_boot_code_major_ver = 0U;
  atv_boot_code_minor_ver = 0U;
  atv_boot_code_subminor_ver = 0U;
  atv_prg_code_year = 0U;
  atv_prg_code_month = 0U;
  atv_prg_code_day = 0U;
  atv_prg_code_major_ver = 0U;
  atv_prg_code_minor_ver = 0U;
  atv_prg_code_subminor_ver = 0U;
  atv_platform_code_year = 0U;
  atv_platform_code_month = 0U;
  atv_platform_code_day = 0U;
  atv_platform_code_major_ver = 0U;
  atv_platform_code_minor_ver = 0U;
  atv_platform_code_subminor_ver = 0U;
  atv_cpu_loading = 0U;
  atv_cpu_loading_max = 0U;
  atv_state_out = 0U;
  atv_sub_state_out = 0U;
  atv_key_signal = false;
  atv_za3_StartBtn_din = false;
  atv_fs1_in = false;
  atv_v_dbg_chg_req = false;
  atv_v_dbg_heater_req = false;
  atv_wakelock_out = false;
  atv_runLed_out = false;
  atv_en_dcdc_out = false;
  atv_dbg_pumpB_out = false;

  /* states (dwork) */
  ATV_M->dwork = ((void *) &ATV_DW);
  (void) memset((void *)&ATV_DW, 0,
                sizeof(DW_ATV_T));

  /* Initialize Sizes */
  ATV_M->Sizes.numContStates = (0);    /* Number of continuous states */
  ATV_M->Sizes.numY = (0);             /* Number of model outputs */
  ATV_M->Sizes.numU = (0);             /* Number of model inputs */
  ATV_M->Sizes.sysDirFeedThru = (0);   /* The model is not direct feedthrough */
  ATV_M->Sizes.numSampTimes = (3);     /* Number of sample times */
  ATV_M->Sizes.numBlocks = (285);      /* Number of blocks */
  ATV_M->Sizes.numBlockIO = (108);     /* Number of block outputs */
  return ATV_M;
}

/*========================================================================*
 * End of Classic call interface                                          *
 *========================================================================*/

/*
 *****************************************************************************
 *  Purpose:        Initialise the model prior to performing any iterations.
 *  Returns:        void
 *  Notes:          None.
 *****************************************************************************
 */
void psc_initialise_app(void)
{
  /* Create the bit patterns for various floating point entities */
  rt_InitInfAndNaN(sizeof(real_T));

  /* Register the simulation. */
  S = MODEL();
  MdlInitializeSizes();
  MdlInitializeSampleTimes();
  (void) rt_SimInitTimingEngine(rtmGetNumSampleTimes(S),
    rtmGetStepSize(S),
    rtmGetSampleTimePtr(S),
    rtmGetOffsetTimePtr(S),
    rtmGetSampleHitPtr(S),
    rtmGetSampleTimeTaskIDPtr(S),
    rtmGetTStart(S),
    &rtmGetSimTimeStep(S),
    &rtmGetTimingData(S));

  /* Initialise the model. */
  MdlStart();
}

/*
 *****************************************************************************
 *  Purpose:        Handle any background processing for the application.
 *                  For Simulink models there is nothing to do.
 *  Returns:        void
 *  Notes:          None.
 *****************************************************************************
 */
void psc_background_app(void)
{
  /* Nothing to do for Simulink models. */
}

/*
 *****************************************************************************
 *  Purpose:        Handle the TDC-firing asynchronous function-call trigger
 *                  (if required) by calling the model appropriately.
 *  Returns:        void
 *  Notes:          None.
 *****************************************************************************
 */
void pkn_angular_model_task(void)
{
  /* No angular functionality, task declared for linkage only. */
}

/*
 *****************************************************************************
 *  Purpose:        Handle a periodic rate iteration of the model.
 *  Returns:        void
 *  Notes:          None.
 *****************************************************************************
 */
void pkn_10ms_model_task(void)
{
  real_T tnext = rt_SimUpdateDiscreteEvents(rtmGetNumSampleTimes(S),
    rtmGetTimingData(S),
    rtmGetSampleHitPtr(S),
    rtmGetPerTaskSampleHitsPtr(S));
  rtsiSetSolverStopTime(rtmGetRTWSolverInfo(S), tnext);
  MdlOutputs(0);
  MdlUpdate(0);
  rt_SimUpdateDiscreteTaskTime(rtmGetTPtr(S),
    rtmGetTimingData(S), 0);
}

/*
 *****************************************************************************
 *  Purpose:        Handle a periodic rate iteration of the model.
 *  Returns:        void
 *  Notes:          None.
 *****************************************************************************
 */
void pkn_100ms_model_task(void)
{
  MdlOutputs(1);
  MdlUpdate(1);
  rt_SimUpdateDiscreteTaskTime(rtmGetTPtr(S),
    rtmGetTimingData(S), 1);
}

/*
 *****************************************************************************
 *  Purpose:        Handle a periodic rate iteration of the model.
 *  Returns:        void
 *  Notes:          None.
 *****************************************************************************
 */
void pkn_1000ms_model_task(void)
{
  MdlOutputs(2);
  MdlUpdate(2);
  rt_SimUpdateDiscreteTaskTime(rtmGetTPtr(S),
    rtmGetTimingData(S), 2);
}
