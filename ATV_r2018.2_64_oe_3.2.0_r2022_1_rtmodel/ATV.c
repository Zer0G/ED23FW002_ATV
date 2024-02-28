/*
 * ATV.c
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

#include "ATV.h"
#include "ATV_private.h"

/* Named constants for Chart: '<S3>/Chart' */
#define ATV_IN_NO_ACTIVE_CHILD         ((uint8_T)0U)
#define ATV_IN_NO_RX                   ((uint8_T)1U)
#define ATV_IN_RX                      ((uint8_T)2U)

/* Named constants for Chart: '<S42>/PUMP LOGIC' */
#define ATV_IN_NO_ACTIVE_CHILD_f       ((uint8_T)0U)
#define ATV_IN_Off                     ((uint8_T)1U)
#define ATV_IN_Run                     ((uint8_T)2U)
#define ATV_IN_Run60sec                ((uint8_T)3U)

/* Named constants for Chart: '<S37>/VSMGestioneIbrido' */
#define ATV_IN_AvviamentoIce           ((uint8_T)1U)
#define ATV_IN_CoolUpTermico           ((uint8_T)1U)
#define ATV_IN_DEB                     ((uint8_T)1U)
#define ATV_IN_FuelPumpOff             ((uint8_T)2U)
#define ATV_IN_FuelPumpOn              ((uint8_T)3U)
#define ATV_IN_IceRestartDelay         ((uint8_T)4U)
#define ATV_IN_Inizializzazione        ((uint8_T)5U)
#define ATV_IN_MonitoraggioIce         ((uint8_T)6U)
#define ATV_IN_MonitoraggioStatoICE    ((uint8_T)7U)
#define ATV_IN_RegenerativeMode        ((uint8_T)2U)
#define ATV_IN_TimeoutAvviamentoIce    ((uint8_T)8U)
#define ATV_IN_Wait0RPM                ((uint8_T)9U)
#define ATV_IN_WaitReg                 ((uint8_T)3U)
#define ATV_IN_WarmUpTermico           ((uint8_T)4U)
#define ATV_IN_iCEOff                  ((uint8_T)2U)
#define ATV_IN_iCEOn                   ((uint8_T)3U)

/* Named constants for Chart: '<S9>/VSM' */
#define ATV_IN_CHG_OFF                 ((uint8_T)1U)
#define ATV_IN_DRIVE_ENABLED           ((uint8_T)1U)
#define ATV_IN_HEATER_OFF              ((uint8_T)1U)
#define ATV_IN_HVM_ON                  ((uint8_T)1U)
#define ATV_IN_HVM_ON_m                ((uint8_T)2U)
#define ATV_IN_HV_ARMED                ((uint8_T)2U)
#define ATV_IN_HV_DEL                  ((uint8_T)2U)
#define ATV_IN_HV_OFF                  ((uint8_T)3U)
#define ATV_IN_HV_ON                   ((uint8_T)4U)
#define ATV_IN_HV_ON_o                 ((uint8_T)3U)
#define ATV_IN_HV_WAIT_INV_OFF         ((uint8_T)5U)
#define ATV_IN_IDLE                    ((uint8_T)3U)
#define ATV_IN_INIT                    ((uint8_T)1U)
#define ATV_IN_KEY_ON                  ((uint8_T)2U)
#define ATV_IN_PRE_SLEEP               ((uint8_T)3U)
#define ATV_IN_SLEEP                   ((uint8_T)4U)
#define ATV_IN_STARTTRIGGER_OFF        ((uint8_T)1U)
#define ATV_IN_STARTTRIGGER_ON         ((uint8_T)2U)

/* Exported block signals */
real_T atv_xc1_raw_ain;                /* '<S7>/pai_BasicAnalogInput5' */
real_T atv_xc4_raw_ain;                /* '<S7>/pai_BasicAnalogInput6' */
real_T atv_xa3_brake_pedal_raw_ain;    /* '<S7>/pai_BasicAnalogInput4' */
real_T atv_xa1_ain_throttle_raw;       /* '<S7>/pai_BasicAnalogInput1' */
real_T atv_xd3_raw_ain;                /* '<S7>/pai_BasicAnalogInput3' */
real_T atv_xe4_raw_ain;                /* '<S7>/pai_BasicAnalogInput8' */
real_T atv_xe2_raw_ain;                /* '<S7>/pai_BasicAnalogInput7' */
real_T atv_dbg_FAN_out;                /* '<S6>/Data Type Conversion' */
real_T atv_yg3_raw_ain;                /* '<S7>/pai_BasicAnalogInput9' */
real_T bms_pack_voltage;               /* '<S2>/pcx_CANdb_ReceiveMessage' */
uint32_T atv_stack_used;               /* '<S25>/psc_StackUsed' */
uint32_T atv_task_duration_1s;         /* '<S25>/pkn_TaskDuration1' */
uint32_T atv_task_duration_1s_max;     /* '<S25>/pkn_TaskDuration2' */
int32_T atv_xd1_key_ain;               /* '<S7>/Gain' */
int32_T atv_xe3_ain;                   /* '<S7>/Gain2' */
uint16_T atv_brake_pedalX1000;         /* '<S15>/Switch' */
uint16_T atv_throttleX1000;            /* '<S14>/Switch' */
uint16_T atv_regen_x1000_rear;         /* '<S47>/Switch5' */
uint16_T atv_motoring_x1000_rear;      /* '<S47>/Switch1' */
uint16_T atv_motoring_x1000_rear_limited;/* '<S48>/Switch2' */
uint16_T atv_regen_x1000_front;        /* '<S32>/Switch4' */
uint16_T atv_motoring_x1000_front;     /* '<S46>/Switch1' */
uint16_T atv_motoring_x1000_front_limited;/* '<S49>/Switch2' */
uint16_T atv_footBrake_X1000_out;      /* '<S37>/Rate Limiter1' */
uint16_T atv_tHROTTLEGen_X1000_out;    /* '<S37>/Rate Limiter' */
uint16_T atv_app_code_year;            /* '<S26>/psc_AppBuildDate' */
uint16_T atv_app_code_month;           /* '<S26>/psc_AppBuildDate' */
uint16_T atv_app_code_day;             /* '<S26>/psc_AppBuildDate' */
uint16_T atv_app_code_major_ver;       /* '<S26>/psc_AppVersion' */
uint16_T atv_app_code_minor_ver;       /* '<S26>/psc_AppVersion' */
uint16_T atv_app_code_subminor_ver;    /* '<S26>/psc_AppVersion' */
uint16_T atv_boot_code_year;           /* '<S27>/psc_BootBuildDate' */
uint16_T atv_boot_code_month;          /* '<S27>/psc_BootBuildDate' */
uint16_T atv_boot_code_day;            /* '<S27>/psc_BootBuildDate' */
uint16_T atv_boot_code_major_ver;      /* '<S27>/psc_BootVersion' */
uint16_T atv_boot_code_minor_ver;      /* '<S27>/psc_BootVersion' */
uint16_T atv_boot_code_subminor_ver;   /* '<S27>/psc_BootVersion' */
uint16_T atv_prg_code_year;            /* '<S28>/psc_PrgBuildDate' */
uint16_T atv_prg_code_month;           /* '<S28>/psc_PrgBuildDate' */
uint16_T atv_prg_code_day;             /* '<S28>/psc_PrgBuildDate' */
uint16_T atv_prg_code_major_ver;       /* '<S28>/psc_PrgVersion' */
uint16_T atv_prg_code_minor_ver;       /* '<S28>/psc_PrgVersion' */
uint16_T atv_prg_code_subminor_ver;    /* '<S28>/psc_PrgVersion' */
uint16_T atv_platform_code_year;       /* '<S29>/psc_PlatformBuildDate' */
uint16_T atv_platform_code_month;      /* '<S29>/psc_PlatformBuildDate' */
uint16_T atv_platform_code_day;        /* '<S29>/psc_PlatformBuildDate' */
uint16_T atv_platform_code_major_ver;  /* '<S29>/psc_PlatformVersion' */
uint16_T atv_platform_code_minor_ver;  /* '<S29>/psc_PlatformVersion' */
uint16_T atv_platform_code_subminor_ver;/* '<S29>/psc_PlatformVersion' */
int16_T atv_GenCurrentSetPoint;        /* '<S37>/Data Type Conversion1' */
uint8_T atv_cpu_loading;               /* '<S25>/psc_CpuLoading1' */
uint8_T atv_cpu_loading_max;           /* '<S25>/psc_CpuLoading2' */
uint8_T atv_state_out;                 /* '<S9>/VSM' */
uint8_T atv_sub_state_out;             /* '<S9>/VSM' */
uint8_T atv_IceSM;                     /* '<S37>/VSMGestioneIbrido' */
uint8_T atv_IceRG;                     /* '<S37>/VSMGestioneIbrido' */
boolean_T atv_key_signal;              /* '<S31>/Compare' */
boolean_T atv_za3_StartBtn_din;        /* '<S7>/pdx_DigitalInput' */
boolean_T atv_fwd_mode_in;             /* '<S7>/Relay2' */
boolean_T atv_rwd_mode_in;             /* '<S7>/Relay3' */
boolean_T atv_brake_pedal_digital_in;  /* '<S7>/Relay1' */
boolean_T atv_throttleRegOff;          /* '<S32>/atvc_throttleRegOff' */
boolean_T atv_fs1_in;                  /* '<S7>/Relay' */
boolean_T atv_fs1_out;                 /* '<S32>/Switch' */
boolean_T atv_4wd_din;                 /* '<S7>/Relay5' */
boolean_T atv_apu_req_in;              /* '<S7>/Relay4' */
boolean_T atv_v_dbg_chg_req;           /* '<S3>/Switch1' */
boolean_T atv_v_dbg_heater_req;        /* '<S3>/Switch2' */
boolean_T atv_wakelock_out;            /* '<S9>/VSM' */
boolean_T atv_runLed_out;              /* '<S9>/VSM' */
boolean_T atv_en_dcdc_out;             /* '<S9>/VSM' */
boolean_T atv_IceKey_out;              /* '<S37>/VSMGestioneIbrido' */
boolean_T atv_IceShutdown_out;         /* '<S37>/VSMGestioneIbrido' */
boolean_T atv_IceOn;                   /* '<S37>/VSMGestioneIbrido' */
boolean_T atv_IceFault;                /* '<S37>/VSMGestioneIbrido' */
boolean_T atv_dbg_pumpB_out;           /* '<S42>/PUMP LOGIC' */

/* Exported block parameters */
OE_CAL real_T atvc_an_in_sel_his = 0.25;/* Variable: atvc_an_in_sel_his
                                         * Referenced by:
                                         *   '<S7>/Relay2'
                                         *   '<S7>/Relay3'
                                         *   '<S7>/Relay4'
                                         *   '<S7>/Relay5'
                                         */
OE_CAL real_T atvc_an_in_sel_th = 2.5; /* Variable: atvc_an_in_sel_th
                                        * Referenced by:
                                        *   '<S7>/Relay2'
                                        *   '<S7>/Relay3'
                                        *   '<S7>/Relay4'
                                        *   '<S7>/Relay5'
                                        */
OE_CAL int16_T atvc_GenTestCurrent = 40;/* Variable: atvc_GenTestCurrent
                                         * Referenced by: '<S9>/atvc_GenTestCurrent'
                                         */
OE_CAL int16_T atvc_GenWarmUpCurrent = 10;/* Variable: atvc_GenWarmUpCurrent
                                           * Referenced by: '<S37>/atvc_GenWarmUpCurrent'
                                           */
OE_CAL uint16_T atvc_IceOffTh = 1500U; /* Variable: atvc_IceOffTh
                                        * Referenced by: '<S37>/VSMGestioneIbrido'
                                        */
OE_CAL uint16_T atvc_IceOnTh = 2300U;  /* Variable: atvc_IceOnTh
                                        * Referenced by: '<S37>/VSMGestioneIbrido'
                                        */
OE_CAL uint16_T atvc_RpmEndWarmUp = 3900U;/* Variable: atvc_RpmEndWarmUp
                                           * Referenced by: '<S37>/atvc_RpmEndwarmUp'
                                           */
OE_CAL uint16_T atvc_StartThrottleIce = 300U;/* Variable: atvc_StartThrottleIce
                                              * Referenced by: '<S37>/VSMGestioneIbrido'
                                              */
OE_CAL uint16_T atvc_brakePedalHis = 0U;/* Variable: atvc_brakePedalHis
                                         * Referenced by: '<S7>/Relay1'
                                         */
OE_CAL uint16_T atvc_brakePedalOn = 100U;/* Variable: atvc_brakePedalOn
                                          * Referenced by: '<S7>/Relay1'
                                          */
OE_CAL uint16_T atvc_footBrakeIce = 300U;/* Variable: atvc_footBrakeIce
                                          * Referenced by: '<S37>/VSMGestioneIbrido'
                                          */
OE_CAL uint16_T atvc_footBrakeWarmUp = 200U;/* Variable: atvc_footBrakeWarmUp
                                             * Referenced by: '<S37>/VSMGestioneIbrido'
                                             */
OE_CAL uint16_T atvc_maxDischCurr = 100U;/* Variable: atvc_maxDischCurr
                                          * Referenced by: '<S1>/atvc_maxDischCurr'
                                          */
OE_CAL uint16_T atvc_maxRegenCurr = 50U;/* Variable: atvc_maxRegenCurr
                                         * Referenced by: '<S1>/atvc_maxRegenCurr'
                                         */
OE_CAL uint16_T atvc_throttleMaxLimit = 1000U;/* Variable: atvc_throttleMaxLimit
                                               * Referenced by: '<S32>/atvc_throttleMaxLimit'
                                               */
OE_CAL uint16_T atvc_throttleNeutralPoint = 100U;/* Variable: atvc_throttleNeutralPoint
                                                  * Referenced by:
                                                  *   '<S32>/atvc_throttleNeutralPoint'
                                                  *   '<S32>/Switch'
                                                  */
OE_CAL boolean_T atvc_throttleRegOff = 1;/* Variable: atvc_throttleRegOff
                                          * Referenced by: '<S32>/atvc_throttleRegOff'
                                          */
OE_CAL uint8_T atvc_FanTest = 0U;      /* Variable: atvc_FanTest
                                        * Referenced by: '<S6>/atvc_FanTest'
                                        */
OE_CAL uint8_T atvc_IceStartRetry = 2U;/* Variable: atvc_IceStartRetry
                                        * Referenced by: '<S37>/VSMGestioneIbrido'
                                        */
OE_CAL uint8_T atvc_dcMinFan = 30U;    /* Variable: atvc_dcMinFan
                                        * Referenced by: '<S43>/Constant2'
                                        */
OE_CAL uint8_T atvc_maxTempInv = 60U;  /* Variable: atvc_maxTempInv
                                        * Referenced by:
                                        *   '<S30>/Relay1'
                                        *   '<S30>/Relay4'
                                        *   '<S30>/Relay5'
                                        */
OE_CAL uint8_T atvc_maxTempMotor = 80U;/* Variable: atvc_maxTempMotor
                                        * Referenced by:
                                        *   '<S30>/Relay'
                                        *   '<S30>/Relay2'
                                        *   '<S30>/Relay3'
                                        */
OE_CAL uint8_T atvc_minTempInv = 40U;  /* Variable: atvc_minTempInv
                                        * Referenced by:
                                        *   '<S30>/Relay1'
                                        *   '<S30>/Relay4'
                                        *   '<S30>/Relay5'
                                        */
OE_CAL uint8_T atvc_minTempMotor = 60U;/* Variable: atvc_minTempMotor
                                        * Referenced by:
                                        *   '<S30>/Relay'
                                        *   '<S30>/Relay2'
                                        *   '<S30>/Relay3'
                                        */
OE_CAL uint8_T atvc_socLimitSave = 5U; /* Variable: atvc_socLimitSave
                                        * Referenced by: '<S30>/atvc_socLimitSave'
                                        */
OE_CAL uint8_T atvc_tempSwitchOffFan = 48U;/* Variable: atvc_tempSwitchOffFan
                                            * Referenced by: '<S43>/Relay1'
                                            */
OE_CAL uint8_T atvc_tempSwitchOnFan = 50U;/* Variable: atvc_tempSwitchOnFan
                                           * Referenced by:
                                           *   '<S42>/atvc_tempSwitchOnFan'
                                           *   '<S43>/Relay1'
                                           */
OE_CAL uint8_T atvc_velocityLimitFwd = 10U;/* Variable: atvc_velocityLimitFwd
                                            * Referenced by: '<S9>/atvc_velocityLimitFwd'
                                            */
OE_CAL uint8_T atvc_velocityLimitRwd = 5U;/* Variable: atvc_velocityLimitRwd
                                           * Referenced by: '<S9>/atvc_velocityLimitRwd'
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
static real_T ATV_Management(int16_T TInverterHi, int16_T TMotorHi, int16_T TgHi);
static void ATV_GestioneIbrido(void);
static void rate_monotonic_scheduler(void);
PUT_DEBOUNCE_TIME_T pdx_DigitalInput_detm_wrk_data;
PCX_HANDLE_T pcx_CANdb_TransmitMessage_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage1_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage6_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage2_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage3_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage4_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage5_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage7_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage8_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_p_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_f_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_e_msg_handle;

#include "rt_sim.h"
#ifdef USE_RTMODEL
#define EXPAND_CONCAT(name1,name2)     name1 ## name2
#define CONCAT(name1,name2)            EXPAND_CONCAT(name1,name2)
#define RT_MODEL                       CONCAT(ATV,_rtModel)

RT_MODEL *S;

#endif

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

int32_T MultiWord2sLong(const uint32_T u[])
{
  return (int32_T)u[0];
}

void sMultiWordDivFloor(const uint32_T u1[], int32_T n1, const uint32_T u2[],
  int32_T n2, uint32_T y1[], int32_T m1, uint32_T y2[], int32_T m2, uint32_T t1[],
  int32_T l1, uint32_T t2[], int32_T l2)
{
  boolean_T numNeg;
  boolean_T denNeg;
  numNeg = ((u1[n1 - 1] & 2147483648U) != 0U);
  denNeg = ((u2[n2 - 1] & 2147483648U) != 0U);
  if (numNeg) {
    MultiWordNeg(u1, t1, n1);
  } else {
    sMultiWord2MultiWord(u1, n1, t1, l1);
  }

  if (denNeg) {
    MultiWordNeg(u2, t2, n2);
  } else {
    sMultiWord2MultiWord(u2, n2, t2, l2);
  }

  if (uMultiWordDiv(t1, l1, t2, l2, y1, m1, y2, m2) < 0) {
    if (numNeg) {
      MultiWordSetSignedMin(y1, m1);
    } else {
      MultiWordSetSignedMax(y1, m1);
    }
  } else {
    if ((boolean_T)(numNeg ^ denNeg)) {
      if (MultiWord2Bool(y2, m2)) {
        uMultiWordInc(y1, m1);
      }

      MultiWordNeg(y1, y1, m1);
    }
  }
}

void MultiWordNeg(const uint32_T u1[], uint32_T y[], int32_T n)
{
  uint32_T yi;
  uint32_T carry = 1U;
  int32_T i;
  for (i = 0; i < n; i++) {
    yi = ~u1[i] + carry;
    y[i] = yi;
    carry = (uint32_T)(yi < carry);
  }
}

void sMultiWord2MultiWord(const uint32_T u1[], int32_T n1, uint32_T y[], int32_T
  n)
{
  uint32_T u1i;
  int32_T nm;
  int32_T i;
  nm = n1 < n ? n1 : n;
  for (i = 0; i < nm; i++) {
    y[i] = u1[i];
  }

  if (n > n1) {
    u1i = (u1[n1 - 1] & 2147483648U) != 0U ? MAX_uint32_T : 0U;
    for (i = nm; i < n; i++) {
      y[i] = u1i;
    }
  }
}

void MultiWordSetSignedMin(uint32_T y[], int32_T n)
{
  int32_T i;
  int32_T n1;
  n1 = n - 1;
  for (i = 0; i < n1; i++) {
    y[i] = 0U;
  }

  y[n1] = 2147483648U;
}

void MultiWordSetSignedMax(uint32_T y[], int32_T n)
{
  int32_T i;
  int32_T n1;
  n1 = n - 1;
  for (i = 0; i < n1; i++) {
    y[i] = MAX_uint32_T;
  }

  y[n1] = 2147483647U;
}

void uMultiWordInc(uint32_T y[], int32_T n)
{
  uint32_T yi;
  uint32_T carry = 1U;
  int32_T i;
  for (i = 0; i < n; i++) {
    yi = y[i] + carry;
    y[i] = yi;
    carry = (uint32_T)(yi < carry);
  }
}

boolean_T MultiWord2Bool(const uint32_T u[], int32_T n)
{
  boolean_T y;
  int32_T i;
  y = false;
  i = 0;
  while ((i < n) && (!y)) {
    if (u[i] != 0U) {
      y = true;
    }

    i++;
  }

  return y;
}

int32_T uMultiWordDiv(uint32_T a[], int32_T na, uint32_T b[], int32_T nb,
                      uint32_T q[], int32_T nq, uint32_T r[], int32_T nr)
{
  int32_T y;
  int32_T nza;
  int32_T nzb;
  int32_T na1;
  int32_T nb1;
  uint32_T kba;
  uint32_T kbb;
  uint32_T nba;
  uint32_T nbb;
  uint32_T kbs;
  uint32_T nbq;
  uint32_T tnb;
  int32_T tpi;
  uint32_T t;
  uint32_T mask;
  uint32_T ak;
  uint32_T bk;
  int32_T ka;
  int32_T kr;
  nzb = nb;
  tpi = nb - 1;
  while ((nzb > 0) && (b[tpi] == 0U)) {
    nzb--;
    tpi--;
  }

  if (nzb > 0) {
    nza = na;
    for (tpi = 0; tpi < nq; tpi++) {
      q[tpi] = 0U;
    }

    tpi = na - 1;
    while ((nza > 0) && (a[tpi] == 0U)) {
      nza--;
      tpi--;
    }

    if ((nza > 0) && (nza >= nzb)) {
      nb1 = nzb - 1;
      na1 = nza - 1;
      for (kr = 0; kr < nr; kr++) {
        r[kr] = 0U;
      }

      /* Quick return if dividend and divisor fit into single word. */
      if (nza == 1) {
        ak = a[0];
        bk = b[0];
        nbq = ak / bk;
        q[0] = nbq;
        r[0] = ak - nbq * bk;
        y = 7;
      } else {
        /* Remove leading zeros from both, dividend and divisor. */
        kbb = 1U;
        t = b[nb1] >> 1U;
        while (t != 0U) {
          kbb++;
          t >>= 1U;
        }

        kba = 1U;
        t = a[na1] >> 1U;
        while (t != 0U) {
          kba++;
          t >>= 1U;
        }

        /* Quick return if quotient is zero. */
        if ((nza > nzb) || (kba >= kbb)) {
          nba = ((uint32_T)na1 << 5) + kba;
          nbb = ((uint32_T)nb1 << 5) + kbb;

          /* Normalize b. */
          if (kbb != 32U) {
            bk = b[nb1];
            kbs = 32U - kbb;
            for (tpi = nb1; tpi > 0; tpi--) {
              t = bk << kbs;
              bk = b[tpi - 1];
              t |= bk >> kbb;
              b[tpi] = t;
            }

            b[tpi] = bk << kbs;
            mask = ~((1U << kbs) - 1U);
          } else {
            mask = MAX_uint32_T;
          }

          /* Initialize quotient to zero. */
          tnb = 0U;
          y = 0;

          /* Until exit conditions have been met, do */
          do {
            /* Normalize a */
            if (kba != 32U) {
              kbs = 32U - kba;
              tnb += kbs;
              ak = a[na1];
              for (ka = na1; ka > 0; ka--) {
                t = ak << kbs;
                ak = a[ka - 1];
                t |= ak >> kba;
                a[ka] = t;
              }

              a[ka] = ak << kbs;
            }

            /* Compare b against the a. */
            ak = a[na1];
            bk = b[nb1];
            if (((nb1 == 0 ? mask : MAX_uint32_T) & ak) == bk) {
              kr = 0;
              ka = na1;
              tpi = nb1;
              while ((kr == 0) && (tpi > 0)) {
                ka--;
                ak = a[ka];
                tpi--;
                bk = b[tpi];
                if (((tpi == 0 ? mask : MAX_uint32_T) & ak) != bk) {
                  kr = ak > bk ? 1 : -1;
                }
              }
            } else {
              kr = ak > bk ? 1 : -1;
            }

            /* If the remainder in a is still greater or equal to b, subtract normalized divisor from a. */
            if ((kr >= 0) || (nba > nbb)) {
              nbq = nba - nbb;

              /* If the remainder and the divisor are equal, set remainder to zero. */
              if (kr == 0) {
                ka = na1;
                for (tpi = nb1; tpi > 0; tpi--) {
                  a[ka] = 0U;
                  ka--;
                }

                a[ka] -= b[tpi];
              } else {
                /* Otherwise, subtract the divisor from the remainder */
                if (kr < 0) {
                  ak = a[na1];
                  kba = 31U;
                  for (ka = na1; ka > 0; ka--) {
                    t = ak << 1U;
                    ak = a[ka - 1];
                    t |= ak >> 31U;
                    a[ka] = t;
                  }

                  a[ka] = ak << 1U;
                  tnb++;
                  nbq--;
                }

                kbs = 0U;
                ka = na1 - nb1;
                for (tpi = 0; tpi < nzb; tpi++) {
                  bk = b[tpi];
                  t = a[ka];
                  ak = (t - bk) - kbs;
                  kbs = kbs != 0U ? (uint32_T)(ak >= t) : (uint32_T)(ak > t);
                  a[ka] = ak;
                  ka++;
                }
              }

              /* Update the quotient. */
              tpi = (int32_T)(nbq >> 5);
              q[tpi] |= 1U << (nbq - ((uint32_T)tpi << 5));

              /* Remove leading zeros from the remainder and check whether the exit conditions have been met. */
              tpi = na1;
              while ((nza > 0) && (a[tpi] == 0U)) {
                nza--;
                tpi--;
              }

              if (nza >= nzb) {
                na1 = nza - 1;
                kba = 1U;
                t = a[na1] >> 1U;
                while (t != 0U) {
                  kba++;
                  t >>= 1U;
                }

                nba = (((uint32_T)na1 << 5) + kba) - tnb;
                if (nba < nbb) {
                  y = 2;
                }
              } else if (nza == 0) {
                y = 1;
              } else {
                na1 = nza - 1;
                y = 4;
              }
            } else {
              y = 3;
            }
          } while (y == 0);

          /* Return the remainder. */
          if (y == 1) {
            r[0] = a[0];
          } else {
            tpi = (int32_T)(tnb >> 5);
            nbq = tnb - ((uint32_T)tpi << 5);
            if (nbq == 0U) {
              ka = tpi;
              for (kr = 0; kr <= nb1; kr++) {
                r[kr] = a[ka];
                ka++;
              }
            } else {
              kbs = 32U - nbq;
              ak = a[tpi];
              kr = 0;
              for (ka = tpi + 1; ka <= na1; ka++) {
                t = ak >> nbq;
                ak = a[ka];
                t |= ak << kbs;
                r[kr] = t;
                kr++;
              }

              r[kr] = ak >> nbq;
            }
          }

          /* Restore b. */
          if (kbb != 32U) {
            bk = b[0];
            kbs = 32U - kbb;
            for (tpi = 0; tpi < nb1; tpi++) {
              t = bk >> kbs;
              bk = b[tpi + 1];
              t |= bk << kbb;
              b[tpi] = t;
            }

            b[tpi] = bk >> kbs;
          }
        } else {
          for (kr = 0; kr < nr; kr++) {
            r[kr] = a[kr];
          }

          y = 6;
        }
      }
    } else {
      for (kr = 0; kr < nr; kr++) {
        r[kr] = a[kr];
      }

      y = 5;
    }
  } else {
    y = -1;
  }

  return y;
}

void sLong2MultiWord(int32_T u, uint32_T y[], int32_T n)
{
  uint32_T yi;
  int32_T i;
  y[0] = (uint32_T)u;
  yi = u < 0 ? MAX_uint32_T : 0U;
  for (i = 1; i < n; i++) {
    y[i] = yi;
  }
}

boolean_T sMultiWordGe(const uint32_T u1[], const uint32_T u2[], int32_T n)
{
  return sMultiWordCmp(u1, u2, n) >= 0;
}

int32_T sMultiWordCmp(const uint32_T u1[], const uint32_T u2[], int32_T n)
{
  int32_T y;
  uint32_T su1;
  uint32_T su2;
  int32_T i;
  su1 = u1[n - 1] & 2147483648U;
  su2 = u2[n - 1] & 2147483648U;
  if ((su1 ^ su2) != 0U) {
    y = su1 != 0U ? -1 : 1;
  } else {
    y = 0;
    i = n;
    while ((y == 0) && (i > 0)) {
      i--;
      su1 = u1[i];
      su2 = u2[i];
      if (su1 != su2) {
        y = su1 > su2 ? 1 : -1;
      }
    }
  }

  return y;
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
 *    '<S5>/Chart'
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
 *    '<S5>/Chart'
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
    /* Transition: '<S11>:4' */
    localDW->is_c1_ATV = ATV_IN_NO_RX;

    /* Entry 'NO_RX': '<S11>:5' */
    localB->out = false;
  } else if (localDW->is_c1_ATV == ATV_IN_NO_RX) {
    localB->out = false;

    /* During 'NO_RX': '<S11>:5' */
    if (rtu_in) {
      /* Transition: '<S11>:6' */
      localDW->is_c1_ATV = ATV_IN_RX;
      localDW->temporalCounter_i1 = 0U;

      /* Entry 'RX': '<S11>:3' */
      localB->out = true;
    }
  } else {
    localB->out = true;

    /* During 'RX': '<S11>:3' */
    if ((!rtu_in) && (localDW->temporalCounter_i1 >= 5U)) {
      /* Transition: '<S11>:7' */
      localDW->is_c1_ATV = ATV_IN_NO_RX;

      /* Entry 'NO_RX': '<S11>:5' */
      localB->out = false;
    }
  }

  /* End of Chart: '<S3>/Chart' */
}

/* Function for Chart: '<S9>/VSM' */
static void ATV_KEY_ON(void)
{
  boolean_T tmp;

  /* During 'KEY_ON': '<S41>:20' */
  tmp = !atv_key_signal;
  if (tmp && (ATV_DW.is_HV_CTRL != ATV_IN_HVM_ON) && (ATV_DW.is_HV_CTRL !=
       ATV_IN_HV_ON) && (ATV_DW.is_HV_CTRL != ATV_IN_HV_WAIT_INV_OFF)) {
    /* Transition: '<S41>:23' */
    /* Transition: '<S41>:25' */
    /* Exit Internal 'KEY_ON': '<S41>:20' */
    /* Exit Internal 'STARTTRIGGER': '<S41>:119' */
    ATV_DW.is_STARTTRIGGER = ATV_IN_NO_ACTIVE_CHILD_f;

    /* Exit Internal 'DRIVE_ENABLE': '<S41>:85' */
    if (ATV_DW.is_DRIVE_ENABLE == ATV_IN_DRIVE_ENABLED) {
      /* Exit 'DRIVE_ENABLED': '<S41>:88' */
      atv_runLed_out = false;
      ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_f;
    } else {
      ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_f;
    }

    /* Exit Internal 'HEATER_CTRL': '<S41>:72' */
    ATV_DW.is_HEATER_CTRL = ATV_IN_NO_ACTIVE_CHILD_f;

    /* Exit Internal 'CHG_CTRL': '<S41>:68' */
    ATV_DW.is_CHG_CTRL = ATV_IN_NO_ACTIVE_CHILD_f;

    /* Exit Internal 'HV_CTRL': '<S41>:34' */
    ATV_DW.is_HV_CTRL = ATV_IN_NO_ACTIVE_CHILD_f;
    ATV_DW.is_c3_ATV = ATV_IN_PRE_SLEEP;
    ATV_DW.temporalCounter_i1_j = 0U;

    /* Entry 'PRE_SLEEP': '<S41>:3' */
    atv_state_out = 2U;
    atv_sub_state_out = 0U;
  } else {
    /* During 'HV_CTRL': '<S41>:34' */
    switch (ATV_DW.is_HV_CTRL) {
     case ATV_IN_HVM_ON:
      /* During 'HVM_ON': '<S41>:54' */
      if (ATV_DW.temporalCounter_i2 >= 50U) {
        /* Transition: '<S41>:56' */
        ATV_DW.is_HV_CTRL = ATV_IN_HV_ON;

        /* Entry 'HV_ON': '<S41>:53' */
        atv_sub_state_out = 3U;
        ATV_B.hvp_ctrl_out = true;
        ATV_B.hvm_ctrl_out = true;
      }
      break;

     case ATV_IN_HV_ARMED:
      /* During 'HV_ARMED': '<S41>:83' */
      if (ATV_B.LogicalOperator3 && (!ATV_B.RateTransition4)) {
        /* Transition: '<S41>:51' */
        ATV_DW.is_HV_CTRL = ATV_IN_HVM_ON;
        ATV_DW.temporalCounter_i2 = 0U;

        /* Entry 'HVM_ON': '<S41>:54' */
        ATV_DW.startBtnArmed = false;
        atv_sub_state_out = 2U;
        ATV_B.hvp_ctrl_out = false;
        ATV_B.hvm_ctrl_out = true;
      }
      break;

     case ATV_IN_HV_OFF:
      /* During 'HV_OFF': '<S41>:52' */
      if ((!ATV_B.LogicalOperator3) && (!ATV_B.RateTransition4)) {
        /* Transition: '<S41>:84' */
        ATV_DW.is_HV_CTRL = ATV_IN_HV_ARMED;

        /* Entry 'HV_ARMED': '<S41>:83' */
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
      /* During 'HV_ON': '<S41>:53' */
      if ((ATV_DW.startBtnArmed && ATV_B.LogicalOperator3) ||
          ATV_B.RateTransition4 || tmp) {
        /* Transition: '<S41>:48' */
        ATV_DW.is_HV_CTRL = ATV_IN_HV_WAIT_INV_OFF;
        ATV_DW.temporalCounter_i2 = 0U;

        /* Entry 'HV_WAIT_INV_OFF': '<S41>:98' */
        atv_sub_state_out = 4U;
        ATV_B.hvp_ctrl_out = true;
        ATV_B.hvm_ctrl_out = true;
      }
      break;

     default:
      /* During 'HV_WAIT_INV_OFF': '<S41>:98' */
      if (ATV_DW.temporalCounter_i2 >= 50U) {
        /* Transition: '<S41>:99' */
        /* Transition: '<S41>:47' */
        ATV_DW.is_HV_CTRL = ATV_IN_HV_OFF;

        /* Entry 'HV_OFF': '<S41>:52' */
      }
      break;
    }

    /* During 'CHG_CTRL': '<S41>:68' */
    switch (ATV_DW.is_CHG_CTRL) {
     case ATV_IN_CHG_OFF:
      /* During 'CHG_OFF': '<S41>:62' */
      if (ATV_B.RateTransition4 && ((!ATV_B.hvp_ctrl_out) ||
           (ATV_DW.temporalCounter_i3 < 100U))) {
        /* Transition: '<S41>:64' */
        ATV_DW.is_CHG_CTRL = ATV_IN_HVM_ON_m;
        ATV_DW.temporalCounter_i3 = 0U;

        /* Entry 'HVM_ON': '<S41>:66' */
      }
      break;

     case ATV_IN_HVM_ON_m:
      /* During 'HVM_ON': '<S41>:66' */
      if ((!ATV_B.RateTransition4) || ATV_B.hvp_ctrl_out) {
        /* Transition: '<S41>:61' */
        ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
        ATV_DW.temporalCounter_i3 = 0U;

        /* Entry 'CHG_OFF': '<S41>:62' */
        ATV_B.chg_ctrl_out = false;
        ATV_B.hvm_ctrl_out = false;
      } else if (ATV_DW.temporalCounter_i3 >= 150U) {
        /* Transition: '<S41>:63' */
        ATV_DW.is_CHG_CTRL = ATV_IN_HV_ON_o;

        /* Entry 'HV_ON': '<S41>:65' */
      } else {
        ATV_B.chg_ctrl_out = false;
        ATV_B.hvm_ctrl_out = true;
      }
      break;

     default:
      /* During 'HV_ON': '<S41>:65' */
      if ((!ATV_B.RateTransition4) || ATV_B.hvp_ctrl_out) {
        /* Transition: '<S41>:59' */
        /* Transition: '<S41>:60' */
        ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
        ATV_DW.temporalCounter_i3 = 0U;

        /* Entry 'CHG_OFF': '<S41>:62' */
        ATV_B.chg_ctrl_out = false;
        ATV_B.hvm_ctrl_out = false;
      } else {
        ATV_B.chg_ctrl_out = true;
        ATV_B.hvm_ctrl_out = true;
      }
      break;
    }

    /* During 'HEATER_CTRL': '<S41>:72' */
    if (ATV_DW.is_HEATER_CTRL == ATV_IN_HEATER_OFF) {
      ATV_B.heater_ctrl_out = false;

      /* During 'HEATER_OFF': '<S41>:69' */
      if (ATV_B.RateTransition5) {
        /* Transition: '<S41>:78' */
        ATV_DW.is_HEATER_CTRL = ATV_IN_HVM_ON_m;

        /* Entry 'HVM_ON': '<S41>:73' */
        ATV_B.heater_ctrl_out = true;
      }
    } else {
      ATV_B.heater_ctrl_out = true;

      /* During 'HVM_ON': '<S41>:73' */
      if (!ATV_B.RateTransition5) {
        /* Transition: '<S41>:77' */
        ATV_DW.is_HEATER_CTRL = ATV_IN_HEATER_OFF;

        /* Entry 'HEATER_OFF': '<S41>:69' */
        ATV_B.heater_ctrl_out = false;
      }
    }

    /* During 'DRIVE_ENABLE': '<S41>:85' */
    switch (ATV_DW.is_DRIVE_ENABLE) {
     case ATV_IN_DRIVE_ENABLED:
      atv_state_out = 5U;
      ATV_B.en_inv_rear_out = true;
      ATV_B.en_inv_front_out = true;
      ATV_B.en_inv_gen_out = true;

      /* During 'DRIVE_ENABLED': '<S41>:88' */
      if (ATV_DW.is_HV_CTRL != ATV_IN_HV_ON) {
        /* Transition: '<S41>:92' */
        /* Transition: '<S41>:93' */
        /* Transition: '<S41>:94' */
        /* Exit 'DRIVE_ENABLED': '<S41>:88' */
        atv_runLed_out = false;
        ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;

        /* Entry 'IDLE': '<S41>:87' */
        atv_state_out = 4U;
        ATV_B.en_inv_rear_out = false;
        ATV_B.en_inv_front_out = false;
        ATV_B.en_inv_gen_out = false;
      }
      break;

     case ATV_IN_HV_DEL:
      /* During 'HV_DEL': '<S41>:96' */
      if (ATV_DW.temporalCounter_i1_j >= 50U) {
        /* Transition: '<S41>:97' */
        ATV_DW.is_DRIVE_ENABLE = ATV_IN_DRIVE_ENABLED;

        /* Entry 'DRIVE_ENABLED': '<S41>:88' */
        atv_state_out = 5U;
        ATV_B.en_inv_rear_out = true;
        ATV_B.en_inv_front_out = true;
        ATV_B.en_inv_gen_out = true;
        atv_runLed_out = true;
      } else {
        if (ATV_DW.is_HV_CTRL != ATV_IN_HV_ON) {
          /* Transition: '<S41>:86' */
          ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;

          /* Entry 'IDLE': '<S41>:87' */
          atv_state_out = 4U;
          ATV_B.en_inv_rear_out = false;
          ATV_B.en_inv_front_out = false;
          ATV_B.en_inv_gen_out = false;
        }
      }
      break;

     default:
      atv_state_out = 4U;
      ATV_B.en_inv_rear_out = false;
      ATV_B.en_inv_front_out = false;
      ATV_B.en_inv_gen_out = false;

      /* During 'IDLE': '<S41>:87' */
      if (ATV_DW.is_HV_CTRL == ATV_IN_HV_ON) {
        /* Transition: '<S41>:95' */
        ATV_DW.is_DRIVE_ENABLE = ATV_IN_HV_DEL;
        ATV_DW.temporalCounter_i1_j = 0U;
      }
      break;
    }

    /* During 'STARTTRIGGER': '<S41>:119' */
    if (ATV_DW.is_STARTTRIGGER == ATV_IN_STARTTRIGGER_OFF) {
      /* During 'STARTTRIGGER_OFF': '<S41>:117' */
      if (!ATV_B.LogicalOperator3) {
        /* Transition: '<S41>:114' */
        ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_ON;

        /* Entry 'STARTTRIGGER_ON': '<S41>:118' */
        ATV_DW.startBtnArmed = true;
      }
    } else {
      /* During 'STARTTRIGGER_ON': '<S41>:118' */
      if (ATV_B.LogicalOperator3) {
        /* Transition: '<S41>:116' */
        ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_OFF;
      }
    }
  }
}

/* Function for Chart: '<S42>/PUMP LOGIC' */
static real_T ATV_Management(int16_T TInverterHi, int16_T TMotorHi, int16_T TgHi)
{
  real_T PumpSt;

  /* Truth Table Function 'Management': '<S44>:92' */
  /* Condition '#1': '<S44>:92:13' */
  /* Condition '#2': '<S44>:92:17' */
  /* Condition '#3': '<S44>:92:21' */
  /* Condition '#4': '<S44>:92:25' */
  /* Condition '#5': '<S44>:92:29' */
  /* Condition '#6': '<S44>:92:33' */
  if (TInverterHi == 1) {
    /* Decision 'D1': '<S44>:92:35' */
    /* Action '1': '<S44>:92:51' */
    PumpSt = 1.0;
  } else if (TMotorHi == 1) {
    /* Decision 'D2': '<S44>:92:37' */
    /* Action '1': '<S44>:92:51' */
    PumpSt = 1.0;
  } else if (TgHi == 1) {
    /* Decision 'D3': '<S44>:92:39' */
    /* Action '1': '<S44>:92:51' */
    PumpSt = 1.0;
  } else if ((TInverterHi == 0) && (TMotorHi == 0) && (TgHi == 0)) {
    /* Decision 'D4': '<S44>:92:41' */
    /* Action '2': '<S44>:92:57' */
    PumpSt = 0.0;
  } else {
    /* Action '1': '<S44>:92:51' */
    PumpSt = 1.0;
  }

  return PumpSt;
}

/* Function for Chart: '<S37>/VSMGestioneIbrido' */
static void ATV_GestioneIbrido(void)
{
  boolean_T guard1 = false;

  /* During 'GestioneIbrido': '<S72>:166' */
  /* During 'IceSM': '<S72>:191' */
  guard1 = false;
  switch (ATV_DW.is_IceSM) {
   case ATV_IN_AvviamentoIce:
    atv_IceSM = 2U;

    /* During 'AvviamentoIce': '<S72>:275' */
    if (ATV_DW.temporalCounter_i1 >= 300U) {
      /* Transition: '<S72>:278' */
      ATV_B.FS1_out = false;
      ATV_DW.is_IceSM = ATV_IN_TimeoutAvviamentoIce;
      ATV_DW.temporalCounter_i1 = 0U;

      /* Entry 'TimeoutAvviamentoIce': '<S72>:276' */
      ATV_B.tHROTTLEGen_X1000_out = 0U;
      atv_IceSM = 3U;
    } else {
      if (!atv_apu_req_in) {
        /* Transition: '<S72>:332' */
        ATV_B.FS1_out = false;
        ATV_B.tHROTTLEGen_X1000_out = 0U;

        /* Transition: '<S72>:337' */
        /* Transition: '<S72>:338' */
        ATV_DW.is_IceSM = ATV_IN_Inizializzazione;

        /* Entry 'Inizializzazione': '<S72>:279' */
        ATV_DW.IceStartAttempCnt = 0.0;
        atv_IceOn = false;
        atv_IceKey_out = false;
        atv_IceShutdown_out = false;
        atv_IceFault = false;
        ATV_B.GenFwd_out = false;
        atv_IceSM = 0U;
      }
    }
    break;

   case ATV_IN_FuelPumpOff:
    atv_IceKey_out = false;
    atv_IceSM = 10U;

    /* During 'FuelPumpOff': '<S72>:323' */
    if (ATV_DW.temporalCounter_i1 >= 50U) {
      /* Transition: '<S72>:324' */
      /* Transition: '<S72>:282' */
      ATV_DW.is_IceSM = ATV_IN_Inizializzazione;

      /* Entry 'Inizializzazione': '<S72>:279' */
      ATV_DW.IceStartAttempCnt = 0.0;
      atv_IceOn = false;
      atv_IceKey_out = false;
      atv_IceShutdown_out = false;
      atv_IceFault = false;
      ATV_B.GenFwd_out = false;
      atv_IceSM = 0U;
    }
    break;

   case ATV_IN_FuelPumpOn:
    atv_IceKey_out = true;
    ATV_B.GenFwd_out = true;
    atv_IceSM = 1U;

    /* During 'FuelPumpOn': '<S72>:320' */
    if (ATV_DW.temporalCounter_i1 >= 300U) {
      /* Transition: '<S72>:321' */
      ATV_DW.is_IceSM = ATV_IN_AvviamentoIce;
      ATV_DW.temporalCounter_i1 = 0U;

      /* Entry 'AvviamentoIce': '<S72>:275' */
      ATV_B.tHROTTLEGen_X1000_out = atvc_StartThrottleIce;
      atv_IceSM = 2U;
    }
    break;

   case ATV_IN_IceRestartDelay:
    atv_IceSM = 9U;

    /* During 'IceRestartDelay': '<S72>:303' */
    if (ATV_DW.temporalCounter_i1 >= 200U) {
      /* Transition: '<S72>:277' */
      ATV_B.FS1_out = true;
      ATV_DW.is_IceSM = ATV_IN_AvviamentoIce;
      ATV_DW.temporalCounter_i1 = 0U;

      /* Entry 'AvviamentoIce': '<S72>:275' */
      ATV_B.tHROTTLEGen_X1000_out = atvc_StartThrottleIce;
      atv_IceSM = 2U;
    }
    break;

   case ATV_IN_Inizializzazione:
    atv_IceKey_out = false;
    ATV_B.GenFwd_out = false;
    atv_IceSM = 0U;

    /* During 'Inizializzazione': '<S72>:279' */
    if ((ATV_DW.ReqGen_prev != ATV_DW.ReqGen_start) && ATV_DW.ReqGen_start) {
      /* Transition: '<S72>:273' */
      ATV_DW.is_IceSM = ATV_IN_FuelPumpOn;
      ATV_DW.temporalCounter_i1 = 0U;

      /* Entry 'FuelPumpOn': '<S72>:320' */
      atv_IceKey_out = true;
      ATV_B.FS1_out = true;
      ATV_B.GenFwd_out = true;
      atv_IceSM = 1U;
    }
    break;

   case ATV_IN_MonitoraggioIce:
    atv_IceSM = 4U;

    /* During 'MonitoraggioIce': '<S72>:284' */
    if (!atv_apu_req_in) {
      /* Transition: '<S72>:333' */
      /* Transition: '<S72>:335' */
      /* Transition: '<S72>:330' */
      /* Transition: '<S72>:337' */
      /* Transition: '<S72>:338' */
      ATV_DW.is_IceSM = ATV_IN_Inizializzazione;

      /* Entry 'Inizializzazione': '<S72>:279' */
      ATV_DW.IceStartAttempCnt = 0.0;
      atv_IceOn = false;
      atv_IceKey_out = false;
      atv_IceShutdown_out = false;
      atv_IceFault = false;
      ATV_B.GenFwd_out = false;
      atv_IceSM = 0U;
    } else if (ATV_B.RateTransition24 <= atvc_IceOffTh) {
      /* Transition: '<S72>:288' */
      ATV_DW.is_IceSM = ATV_IN_TimeoutAvviamentoIce;
      ATV_DW.temporalCounter_i1 = 0U;

      /* Entry 'TimeoutAvviamentoIce': '<S72>:276' */
      ATV_B.tHROTTLEGen_X1000_out = 0U;
      atv_IceSM = 3U;
    } else {
      if (ATV_DW.temporalCounter_i1 >= 200U) {
        /* Transition: '<S72>:286' */
        atv_IceOn = true;
        ATV_DW.is_IceSM = ATV_IN_MonitoraggioStatoICE;

        /* Entry Internal 'MonitoraggioStatoICE': '<S72>:299' */
        /* Transition: '<S72>:300' */
        ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOn;

        /* Entry 'iCEOn': '<S72>:298' */
        atv_IceFault = false;
        atv_IceSM = 5U;
      }
    }
    break;

   case ATV_IN_MonitoraggioStatoICE:
    /* During 'MonitoraggioStatoICE': '<S72>:299' */
    if (!atv_apu_req_in) {
      /* Transition: '<S72>:295' */
      atv_IceShutdown_out = true;

      /* Exit Internal 'MonitoraggioStatoICE': '<S72>:299' */
      ATV_DW.is_MonitoraggioStatoICE = ATV_IN_NO_ACTIVE_CHILD_f;
      ATV_DW.is_IceSM = ATV_IN_FuelPumpOff;
      ATV_DW.temporalCounter_i1 = 0U;

      /* Entry 'FuelPumpOff': '<S72>:323' */
      atv_IceKey_out = false;
      atv_IceSM = 10U;
    } else {
      switch (ATV_DW.is_MonitoraggioStatoICE) {
       case ATV_IN_DEB:
        atv_IceSM = 6U;

        /* During 'DEB': '<S72>:290' */
        if (ATV_B.RateTransition24 > atvc_IceOnTh) {
          /* Transition: '<S72>:297' */
          ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOn;

          /* Entry 'iCEOn': '<S72>:298' */
          atv_IceFault = false;
          atv_IceSM = 5U;
        } else {
          if (ATV_DW.temporalCounter_i1 >= 100U) {
            /* Transition: '<S72>:304' */
            ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOff;

            /* Entry 'iCEOff': '<S72>:302' */
            atv_IceOn = false;
            atv_IceFault = true;
            atv_IceShutdown_out = true;
            atv_IceSM = 7U;
          }
        }
        break;

       case ATV_IN_iCEOff:
        atv_IceSM = 7U;

        /* During 'iCEOff': '<S72>:302' */
        break;

       default:
        atv_IceSM = 5U;

        /* During 'iCEOn': '<S72>:298' */
        if (ATV_B.RateTransition24 <= atvc_IceOffTh) {
          /* Transition: '<S72>:301' */
          ATV_DW.is_MonitoraggioStatoICE = ATV_IN_DEB;
          ATV_DW.temporalCounter_i1 = 0U;

          /* Entry 'DEB': '<S72>:290' */
          atv_IceSM = 6U;
        }
        break;
      }
    }
    break;

   case ATV_IN_TimeoutAvviamentoIce:
    atv_IceSM = 3U;

    /* During 'TimeoutAvviamentoIce': '<S72>:276' */
    if (ATV_DW.temporalCounter_i1 >= 200U) {
      /* Transition: '<S72>:285' */
      ATV_DW.IceStartAttempCnt++;
      atv_IceShutdown_out = true;

      /* Transition: '<S72>:272' */
      ATV_DW.is_IceSM = ATV_IN_Wait0RPM;

      /* Entry 'Wait0RPM': '<S72>:292' */
      atv_IceSM = 8U;
    } else if (ATV_B.RateTransition24 > atvc_IceOnTh) {
      /* Transition: '<S72>:283' */
      ATV_DW.is_IceSM = ATV_IN_MonitoraggioIce;
      ATV_DW.temporalCounter_i1 = 0U;

      /* Entry 'MonitoraggioIce': '<S72>:284' */
      atv_IceSM = 4U;
    } else {
      if (!atv_apu_req_in) {
        /* Transition: '<S72>:328' */
        /* Transition: '<S72>:330' */
        /* Transition: '<S72>:337' */
        /* Transition: '<S72>:338' */
        ATV_DW.is_IceSM = ATV_IN_Inizializzazione;

        /* Entry 'Inizializzazione': '<S72>:279' */
        ATV_DW.IceStartAttempCnt = 0.0;
        atv_IceOn = false;
        atv_IceKey_out = false;
        atv_IceShutdown_out = false;
        atv_IceFault = false;
        ATV_B.GenFwd_out = false;
        atv_IceSM = 0U;
      }
    }
    break;

   default:
    atv_IceSM = 8U;

    /* During 'Wait0RPM': '<S72>:292' */
    if (ATV_B.RateTransition24 < 10) {
      /* Transition: '<S72>:281' */
      if (!atv_apu_req_in) {
        /* Transition: '<S72>:309' */
        atv_IceShutdown_out = true;

        /* Transition: '<S72>:311' */
        guard1 = true;
      } else if (ATV_DW.IceStartAttempCnt > atvc_IceStartRetry) {
        /* Transition: '<S72>:289' */
        atv_IceFault = true;
        guard1 = true;
      } else {
        /* Transition: '<S72>:296' */
        ATV_DW.is_IceSM = ATV_IN_IceRestartDelay;
        ATV_DW.temporalCounter_i1 = 0U;

        /* Entry 'IceRestartDelay': '<S72>:303' */
        atv_IceSM = 9U;
      }
    }
    break;
  }

  if (guard1) {
    ATV_DW.is_IceSM = ATV_IN_FuelPumpOff;
    ATV_DW.temporalCounter_i1 = 0U;

    /* Entry 'FuelPumpOff': '<S72>:323' */
    atv_IceKey_out = false;
    atv_IceSM = 10U;
  }
}

/* Model output function for TID0 */
static void ATV_output0(void)          /* Sample time: [0.01s, 0.0s] */
{
  real32_T rateLimiterRate;
  boolean_T rtb_Compare;
  uint8_T rtb_Switch_l;
  uint8_T rtb_Gain_d;
  int16_T rtb_MultiportSwitch;
  boolean_T rtb_PumpACtrl;
  real_T rtb_Product;
  real_T rtb_Gain;
  int64m_T tmp;
  int64m_T tmp_0;
  int64m_T tmp_1;
  int64m_T tmp_2;
  uint32_T tmp_3;
  uint32_T tmp_4;
  int96m_T tmp_5;
  int64m_T tmp_6;
  int64m_T tmp_7;
  int64m_T tmp_8;
  int64m_T tmp_9;
  int96m_T tmp_a;
  int64m_T tmp_b;
  int96m_T tmp_c;
  int64m_T tmp_d;
  int96m_T tmp_e;
  int64m_T tmp_f;
  int32_T u0_tmp;
  int32_T u0_tmp_0;
  static int64m_T tmp_g = { { 0U, 0U } /* chunks */
  };

  {                                    /* Sample time: [0.01s, 0.0s] */
    rate_monotonic_scheduler();
  }

  /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput' */
  /* S-Function Block: <S7>/pai_BasicAnalogInput
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XD1, &adc, FALSE);
    ATV_B.pai_BasicAnalogInput = (adc * 5.0) / 4096.0;
  }

  /* Gain: '<S7>/Gain' */
  rtb_Product = floor(1000.0 * ATV_B.pai_BasicAnalogInput);
  if (rtIsNaN(rtb_Product) || rtIsInf(rtb_Product)) {
    rtb_Product = 0.0;
  } else {
    rtb_Product = fmod(rtb_Product, 4.294967296E+9);
  }

  atv_xd1_key_ain = rtb_Product < 0.0 ? -(int32_T)(uint32_T)-rtb_Product :
    (int32_T)(uint32_T)rtb_Product;

  /* End of Gain: '<S7>/Gain' */

  /* RelationalOperator: '<S31>/Compare' incorporates:
   *  Constant: '<S31>/Constant'
   */
  atv_key_signal = (atv_xd1_key_ain > 500);

  /* S-Function (pdx_digital_input): '<S7>/pdx_DigitalInput' */
  /* S-Function Block: <S7>/pdx_DigitalInput
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

  /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput5' */
  /* S-Function Block: <S7>/pai_BasicAnalogInput5
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XC1, &adc, FALSE);
    atv_xc1_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Relay: '<S7>/Relay2' incorporates:
   *  Relay: '<S7>/Relay3'
   */
  rtb_Product = atvc_an_in_sel_th + atvc_an_in_sel_his;
  if (atv_xc1_raw_ain >= rtb_Product) {
    ATV_DW.Relay2_Mode = true;
  } else {
    if (atv_xc1_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
      ATV_DW.Relay2_Mode = false;
    }
  }

  atv_fwd_mode_in = !ATV_DW.Relay2_Mode;

  /* End of Relay: '<S7>/Relay2' */

  /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput6' */
  /* S-Function Block: <S7>/pai_BasicAnalogInput6
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XC4, &adc, FALSE);
    atv_xc4_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Relay: '<S7>/Relay3' */
  if (atv_xc4_raw_ain >= rtb_Product) {
    ATV_DW.Relay3_Mode = true;
  } else {
    if (atv_xc4_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
      ATV_DW.Relay3_Mode = false;
    }
  }

  atv_rwd_mode_in = !ATV_DW.Relay3_Mode;

  /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput4' */
  /* S-Function Block: <S7>/pai_BasicAnalogInput4
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XA3, &adc, FALSE);
    atv_xa3_brake_pedal_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Switch: '<S15>/Switch' incorporates:
   *  Constant: '<S17>/Lower Limit'
   *  Constant: '<S17>/Upper Limit'
   *  Logic: '<S17>/AND'
   *  RelationalOperator: '<S17>/Lower Test'
   *  RelationalOperator: '<S17>/Upper Test'
   */
  if ((0.45 <= atv_xa3_brake_pedal_raw_ain) && (atv_xa3_brake_pedal_raw_ain <=
       4.55)) {
    /* Saturate: '<S15>/Saturation' */
    if (atv_xa3_brake_pedal_raw_ain > 4.5) {
      rtb_Product = 4.5;
    } else if (atv_xa3_brake_pedal_raw_ain < 0.5) {
      rtb_Product = 0.5;
    } else {
      rtb_Product = atv_xa3_brake_pedal_raw_ain;
    }

    /* End of Saturate: '<S15>/Saturation' */

    /* Gain: '<S15>/Gain' incorporates:
     *  Constant: '<S15>/Constant1'
     *  Sum: '<S15>/Add'
     */
    rtb_Product = floor((rtb_Product - 0.5) * 750.0);
    if (rtIsNaN(rtb_Product)) {
      atv_brake_pedalX1000 = 0U;
    } else {
      atv_brake_pedalX1000 = (uint16_T)fmod(rtb_Product, 65536.0);
    }

    /* Saturate: '<S15>/Saturation1' */
    if (atv_brake_pedalX1000 >= 1000) {
      /* Gain: '<S15>/Gain' */
      atv_brake_pedalX1000 = 1000U;
    }

    /* End of Saturate: '<S15>/Saturation1' */
  } else {
    /* Gain: '<S15>/Gain' incorporates:
     *  Constant: '<S15>/Constant'
     */
    atv_brake_pedalX1000 = 0U;
  }

  /* End of Switch: '<S15>/Switch' */

  /* Relay: '<S7>/Relay1' */
  if (atv_brake_pedalX1000 >= (uint16_T)((uint32_T)atvc_brakePedalOn +
       atvc_brakePedalHis)) {
    ATV_DW.Relay1_Mode = true;
  } else {
    if (atv_brake_pedalX1000 <= (uint16_T)((uint32_T)atvc_brakePedalOn -
         atvc_brakePedalHis)) {
      ATV_DW.Relay1_Mode = false;
    }
  }

  atv_brake_pedal_digital_in = ATV_DW.Relay1_Mode;

  /* End of Relay: '<S7>/Relay1' */

  /* Logic: '<S9>/Logical Operator3' incorporates:
   *  Logic: '<S7>/Logical Operator'
   *  Logic: '<S9>/Logical Operator1'
   *  Logic: '<S9>/Logical Operator2'
   *  Logic: '<S9>/Logical Operator4'
   */
  ATV_B.LogicalOperator3 = ((!atv_za3_StartBtn_din) && ((!atv_fwd_mode_in) &&
    (!atv_rwd_mode_in)) && atv_brake_pedal_digital_in);

  /* RateTransition: '<Root>/Rate Transition4' */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition4 = ATV_DW.RateTransition4_Buffer0;

    /* RateTransition: '<Root>/Rate Transition5' */
    ATV_B.RateTransition5 = ATV_DW.RateTransition5_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition4' */

  /* Chart: '<S9>/VSM' */
  if (ATV_DW.temporalCounter_i1_j < 127U) {
    ATV_DW.temporalCounter_i1_j++;
  }

  if (ATV_DW.temporalCounter_i2 < 63U) {
    ATV_DW.temporalCounter_i2++;
  }

  if (ATV_DW.temporalCounter_i3 < 255U) {
    ATV_DW.temporalCounter_i3++;
  }

  /* Gateway: loop_10ms/VSM */
  /* During: loop_10ms/VSM */
  if (ATV_DW.is_active_c3_ATV == 0U) {
    /* Entry: loop_10ms/VSM */
    ATV_DW.is_active_c3_ATV = 1U;

    /* Entry Internal: loop_10ms/VSM */
    /* Transition: '<S41>:4' */
    ATV_DW.is_c3_ATV = ATV_IN_SLEEP;

    /* Entry 'SLEEP': '<S41>:9' */
    atv_state_out = 1U;
    atv_sub_state_out = 0U;
    atv_wakelock_out = false;
    atv_en_dcdc_out = false;
  } else {
    switch (ATV_DW.is_c3_ATV) {
     case ATV_IN_INIT:
      atv_state_out = 3U;
      atv_wakelock_out = true;
      atv_en_dcdc_out = true;

      /* During 'INIT': '<S41>:5' */
      if (!atv_key_signal) {
        /* Transition: '<S41>:17' */
        ATV_DW.is_c3_ATV = ATV_IN_PRE_SLEEP;
        ATV_DW.temporalCounter_i1_j = 0U;

        /* Entry 'PRE_SLEEP': '<S41>:3' */
        atv_state_out = 2U;
        atv_sub_state_out = 0U;
      } else {
        if (ATV_DW.temporalCounter_i1_j >= 100U) {
          /* Transition: '<S41>:22' */
          ATV_DW.is_c3_ATV = ATV_IN_KEY_ON;

          /* Entry 'KEY_ON': '<S41>:20' */
          /* Entry Internal 'KEY_ON': '<S41>:20' */
          /* Entry Internal 'HV_CTRL': '<S41>:34' */
          /* Transition: '<S41>:82' */
          ATV_DW.is_HV_CTRL = ATV_IN_HV_OFF;

          /* Entry 'HV_OFF': '<S41>:52' */
          /* Entry Internal 'CHG_CTRL': '<S41>:68' */
          /* Transition: '<S41>:67' */
          ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
          ATV_DW.temporalCounter_i3 = 0U;

          /* Entry 'CHG_OFF': '<S41>:62' */
          ATV_B.chg_ctrl_out = false;
          ATV_B.hvm_ctrl_out = false;

          /* Entry Internal 'HEATER_CTRL': '<S41>:72' */
          /* Transition: '<S41>:74' */
          ATV_DW.is_HEATER_CTRL = ATV_IN_HEATER_OFF;

          /* Entry 'HEATER_OFF': '<S41>:69' */
          ATV_B.heater_ctrl_out = false;

          /* Entry Internal 'DRIVE_ENABLE': '<S41>:85' */
          /* Transition: '<S41>:91' */
          ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;

          /* Entry 'IDLE': '<S41>:87' */
          atv_state_out = 4U;
          ATV_B.en_inv_rear_out = false;
          ATV_B.en_inv_front_out = false;
          ATV_B.en_inv_gen_out = false;

          /* Entry Internal 'STARTTRIGGER': '<S41>:119' */
          /* Transition: '<S41>:115' */
          ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_OFF;
        }
      }
      break;

     case ATV_IN_KEY_ON:
      ATV_KEY_ON();
      break;

     case ATV_IN_PRE_SLEEP:
      atv_state_out = 2U;

      /* During 'PRE_SLEEP': '<S41>:3' */
      if (atv_key_signal) {
        /* Transition: '<S41>:19' */
        ATV_DW.is_c3_ATV = ATV_IN_INIT;
        ATV_DW.temporalCounter_i1_j = 0U;

        /* Entry 'INIT': '<S41>:5' */
        atv_state_out = 3U;
        atv_sub_state_out = 0U;
        atv_wakelock_out = true;
        atv_en_dcdc_out = true;
      } else {
        if (ATV_DW.temporalCounter_i1_j >= 25U) {
          /* Transition: '<S41>:16' */
          ATV_DW.is_c3_ATV = ATV_IN_SLEEP;

          /* Entry 'SLEEP': '<S41>:9' */
          atv_state_out = 1U;
          atv_sub_state_out = 0U;
          atv_wakelock_out = false;
          atv_en_dcdc_out = false;
        }
      }
      break;

     default:
      atv_state_out = 1U;
      atv_wakelock_out = false;
      atv_en_dcdc_out = false;

      /* During 'SLEEP': '<S41>:9' */
      if (atv_key_signal) {
        /* Transition: '<S41>:12' */
        ATV_DW.is_c3_ATV = ATV_IN_INIT;
        ATV_DW.temporalCounter_i1_j = 0U;

        /* Entry 'INIT': '<S41>:5' */
        atv_state_out = 3U;
        atv_sub_state_out = 0U;
        atv_wakelock_out = true;
        atv_en_dcdc_out = true;
      }
      break;
    }
  }

  /* End of Chart: '<S9>/VSM' */

  /* S-Function (psc_cpu_loading): '<S1>/psc_CpuLoading' */
  /* S-Function Block: <S1>/psc_CpuLoading
   * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  ATV_B.psc_CpuLoading = psc_get_cpu_loading();

  /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage' */
  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    BOOL retval;
    F32 pcx_CANdb_TransmitMessage_in_port_buffer[6];
    F32 * pcx_CANdb_TransmitMessage_in_port_ptr[6];
    static const U8 pcx_CANdb_TransmitMessage_field_start_pos[6] = {
      0, 8, 16, 24, 25, 26, };

    static const U8 pcx_CANdb_TransmitMessage_field_width[6] = {
      8, 8, 8, 1, 1, 1, };

    static const U8 pcx_CANdb_TransmitMessage_field_is_signed[6] = {
      0, 0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage_field_valtype[6] = {
      0, 0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage_field_order[6] = {
      1, 1, 1, 1, 1, 1, };

    static const F32 pcx_CANdb_TransmitMessage_field_eng_min[6] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
      0.0, };

    static const F32 pcx_CANdb_TransmitMessage_field_eng_max[6] = {
      255.0, 255.0, 255.0, 1.0, 1.0,
      1.0, };

    static const F32 pcx_CANdb_TransmitMessage_field_scale[6] = {
      1.0, 1.0, 1.0, 1.0, 1.0,
      1.0, };

    static const F32 pcx_CANdb_TransmitMessage_field_offset[6] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
      0.0, };

    if (pcx_CANdb_TransmitMessage_msg_handle != PCX_CONFIG_ERROR) {
      pcx_CANdb_TransmitMessage_in_port_buffer[0] = atv_state_out;
      pcx_CANdb_TransmitMessage_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage_in_port_buffer[0];
      pcx_CANdb_TransmitMessage_in_port_buffer[1] = atv_sub_state_out;
      pcx_CANdb_TransmitMessage_in_port_ptr[1] =
        &pcx_CANdb_TransmitMessage_in_port_buffer[1];
      pcx_CANdb_TransmitMessage_in_port_buffer[2] = ATV_B.psc_CpuLoading;
      pcx_CANdb_TransmitMessage_in_port_ptr[2] =
        &pcx_CANdb_TransmitMessage_in_port_buffer[2];
      pcx_CANdb_TransmitMessage_in_port_buffer[3] = atv_wakelock_out;
      pcx_CANdb_TransmitMessage_in_port_ptr[3] =
        &pcx_CANdb_TransmitMessage_in_port_buffer[3];
      pcx_CANdb_TransmitMessage_in_port_buffer[4] = atv_en_dcdc_out;
      pcx_CANdb_TransmitMessage_in_port_ptr[4] =
        &pcx_CANdb_TransmitMessage_in_port_buffer[4];
      pcx_CANdb_TransmitMessage_in_port_buffer[5] = atv_runLed_out;
      pcx_CANdb_TransmitMessage_in_port_ptr[5] =
        &pcx_CANdb_TransmitMessage_in_port_buffer[5];
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
                       pcx_CANdb_TransmitMessage_field_offset, 0, 1, 6);

      /* Do a transmit every time we are called, (CT2) */
      retval = pcx_transmit(pcx_CANdb_TransmitMessage_msg_handle, data);
    } else {
      /* error: pcx_declare_message was unsuccessful */
      retval = FALSE;
    }

    ATV_B.pcx_CANdb_TransmitMessage = !retval;
  }

  /* RateTransition: '<S1>/Rate Transition4' incorporates:
   *  RateTransition: '<Root>/Rate Transition6'
   */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition4_b = ATV_B.hvm_ctrl_out;

    /* RateTransition: '<S1>/Rate Transition' */
    ATV_B.RateTransition = ATV_B.hvp_ctrl_out;

    /* RateTransition: '<S1>/Rate Transition1' */
    ATV_B.RateTransition1 = ATV_B.chg_ctrl_out;

    /* RateTransition: '<S1>/Rate Transition2' */
    ATV_B.RateTransition2 = ATV_B.heater_ctrl_out;
    ATV_B.RateTransition6 = ATV_DW.RateTransition6_Buffer0;
  }

  /* End of RateTransition: '<S1>/Rate Transition4' */

  /* Logic: '<S30>/Logical Operator' incorporates:
   *  Constant: '<S30>/atvc_socLimitSave'
   *  Constant: '<S9>/state_Const1'
   *  RelationalOperator: '<S30>/Relational Operator12'
   */
  rtb_Compare = (80 <= atvc_socLimitSave);

  /* Relay: '<S30>/Relay' */
  if (ATV_B.RateTransition6 >= atvc_maxTempMotor) {
    ATV_DW.Relay_Mode = true;
  } else {
    if (ATV_B.RateTransition6 <= atvc_minTempMotor) {
      ATV_DW.Relay_Mode = false;
    }
  }

  /* RateTransition: '<Root>/Rate Transition7' incorporates:
   *  RateTransition: '<Root>/Rate Transition10'
   */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition7 = ATV_DW.RateTransition7_Buffer0;
    ATV_B.RateTransition10 = ATV_DW.RateTransition10_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition7' */

  /* Relay: '<S30>/Relay1' */
  if (ATV_B.RateTransition7 >= atvc_maxTempInv) {
    ATV_DW.Relay1_Mode_h = true;
  } else {
    if (ATV_B.RateTransition7 <= atvc_minTempInv) {
      ATV_DW.Relay1_Mode_h = false;
    }
  }

  /* Relay: '<S30>/Relay2' */
  if (ATV_B.RateTransition10 >= atvc_maxTempMotor) {
    ATV_DW.Relay2_Mode_m = true;
  } else {
    if (ATV_B.RateTransition10 <= atvc_minTempMotor) {
      ATV_DW.Relay2_Mode_m = false;
    }
  }

  /* RateTransition: '<Root>/Rate Transition8' incorporates:
   *  RateTransition: '<Root>/Rate Transition9'
   */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition8 = ATV_DW.RateTransition8_Buffer0;
    ATV_B.RateTransition9 = ATV_DW.RateTransition9_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition8' */

  /* Relay: '<S30>/Relay3' */
  if (ATV_B.RateTransition8 >= atvc_maxTempMotor) {
    ATV_DW.Relay3_Mode_d = true;
  } else {
    if (ATV_B.RateTransition8 <= atvc_minTempMotor) {
      ATV_DW.Relay3_Mode_d = false;
    }
  }

  /* Relay: '<S30>/Relay4' */
  if (ATV_B.RateTransition9 >= atvc_maxTempInv) {
    ATV_DW.Relay4_Mode = true;
  } else {
    if (ATV_B.RateTransition9 <= atvc_minTempInv) {
      ATV_DW.Relay4_Mode = false;
    }
  }

  /* RateTransition: '<Root>/Rate Transition11' */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition11 = ATV_DW.RateTransition11_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition11' */

  /* Relay: '<S30>/Relay5' */
  if (ATV_B.RateTransition11 >= atvc_maxTempInv) {
    ATV_DW.Relay5_Mode = true;
  } else {
    if (ATV_B.RateTransition11 <= atvc_minTempInv) {
      ATV_DW.Relay5_Mode = false;
    }
  }

  /* Chart: '<S42>/PUMP LOGIC' incorporates:
   *  Relay: '<S30>/Relay'
   *  Relay: '<S30>/Relay1'
   *  Relay: '<S30>/Relay2'
   *  Relay: '<S30>/Relay3'
   *  Relay: '<S30>/Relay4'
   *  Relay: '<S30>/Relay5'
   */
  if (ATV_DW.temporalCounter_i1_f < 65535U) {
    ATV_DW.temporalCounter_i1_f++;
  }

  /* Gateway: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
  /* During: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
  if (ATV_DW.is_active_c5_ATV == 0U) {
    /* Entry: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
    ATV_DW.is_active_c5_ATV = 1U;

    /* Entry Internal: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
    /* Entry 'PumpALogic': '<S44>:47' */
    ATV_DW.PumpStA = 0.0;

    /* Entry Internal 'PumpALogic': '<S44>:47' */
    /* Transition: '<S44>:56' */
    ATV_DW.is_PumpALogic = ATV_IN_Off;

    /* Entry 'Off': '<S44>:63' */
    rtb_PumpACtrl = false;

    /* Entry 'PumpBLogic': '<S44>:14' */
    ATV_DW.PumpStB = 0.0;

    /* Entry Internal 'PumpBLogic': '<S44>:14' */
    /* Transition: '<S44>:27' */
    ATV_DW.is_PumpBLogic = ATV_IN_Off;
    ATV_DW.temporalCounter_i1_f = 0U;

    /* Entry 'Off': '<S44>:24' */
    atv_dbg_pumpB_out = false;
  } else {
    /* During 'PumpALogic': '<S44>:47' */
    if (ATV_DW.is_PumpALogic == ATV_IN_Off) {
      rtb_PumpACtrl = false;

      /* During 'Off': '<S44>:63' */
      if (ATV_DW.PumpStA == 1.0) {
        /* Transition: '<S44>:116' */
        ATV_DW.is_PumpALogic = ATV_IN_Run;

        /* Entry 'Run': '<S44>:54' */
        rtb_PumpACtrl = true;
      } else {
        ATV_DW.PumpStA = ATV_Management((int16_T)ATV_DW.Relay1_Mode_h, (int16_T)
          ATV_DW.Relay_Mode, (int16_T)ATV_DW.Relay2_Mode_m);
      }
    } else {
      rtb_PumpACtrl = true;

      /* During 'Run': '<S44>:54' */
      if (ATV_DW.PumpStA == 0.0) {
        /* Transition: '<S44>:62' */
        ATV_DW.is_PumpALogic = ATV_IN_Off;

        /* Entry 'Off': '<S44>:63' */
        rtb_PumpACtrl = false;
      } else {
        ATV_DW.PumpStA = ATV_Management((int16_T)ATV_DW.Relay1_Mode_h, (int16_T)
          ATV_DW.Relay_Mode, (int16_T)ATV_DW.Relay2_Mode_m);
      }
    }

    /* During 'PumpBLogic': '<S44>:14' */
    switch (ATV_DW.is_PumpBLogic) {
     case ATV_IN_Off:
      atv_dbg_pumpB_out = false;

      /* During 'Off': '<S44>:24' */
      if (ATV_DW.PumpStB == 1.0) {
        /* Transition: '<S44>:29' */
        ATV_DW.is_PumpBLogic = ATV_IN_Run;

        /* Entry 'Run': '<S44>:28' */
        atv_dbg_pumpB_out = true;
      } else if (ATV_DW.temporalCounter_i1_f >= 50000U) {
        /* Transition: '<S44>:32' */
        ATV_DW.is_PumpBLogic = ATV_IN_Run60sec;
        ATV_DW.temporalCounter_i1_f = 0U;

        /* Entry 'Run60sec': '<S44>:22' */
        atv_dbg_pumpB_out = true;
      } else {
        ATV_DW.PumpStB = ATV_Management((int16_T)ATV_DW.Relay4_Mode, (int16_T)
          ATV_DW.Relay3_Mode_d, (int16_T)ATV_DW.Relay5_Mode);
      }
      break;

     case ATV_IN_Run:
      atv_dbg_pumpB_out = true;

      /* During 'Run': '<S44>:28' */
      if (ATV_DW.PumpStB == 0.0) {
        /* Transition: '<S44>:25' */
        ATV_DW.is_PumpBLogic = ATV_IN_Off;
        ATV_DW.temporalCounter_i1_f = 0U;

        /* Entry 'Off': '<S44>:24' */
        atv_dbg_pumpB_out = false;
      } else {
        ATV_DW.PumpStB = ATV_Management((int16_T)ATV_DW.Relay4_Mode, (int16_T)
          ATV_DW.Relay3_Mode_d, (int16_T)ATV_DW.Relay5_Mode);
      }
      break;

     default:
      atv_dbg_pumpB_out = true;

      /* During 'Run60sec': '<S44>:22' */
      if (ATV_DW.PumpStB == 1.0) {
        /* Transition: '<S44>:31' */
        /* Transition: '<S44>:34' */
        ATV_DW.is_PumpBLogic = ATV_IN_Run;

        /* Entry 'Run': '<S44>:28' */
        atv_dbg_pumpB_out = true;
      } else if (ATV_DW.temporalCounter_i1_f >= 6000U) {
        /* Transition: '<S44>:26' */
        ATV_DW.is_PumpBLogic = ATV_IN_Off;
        ATV_DW.temporalCounter_i1_f = 0U;

        /* Entry 'Off': '<S44>:24' */
        atv_dbg_pumpB_out = false;
      } else {
        ATV_DW.PumpStB = ATV_Management((int16_T)ATV_DW.Relay4_Mode, (int16_T)
          ATV_DW.Relay3_Mode_d, (int16_T)ATV_DW.Relay5_Mode);
      }
      break;
    }
  }

  /* End of Chart: '<S42>/PUMP LOGIC' */

  /* Switch: '<S42>/Switch' */
  ATV_B.Switch = ((!rtb_Compare) && rtb_PumpACtrl);

  /* RateTransition: '<S1>/Rate Transition3' */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition3 = ATV_B.Switch;

    /* RateTransition: '<S1>/Rate Transition5' */
    ATV_B.RateTransition5_g = atv_dbg_pumpB_out;

    /* RateTransition: '<Root>/Rate Transition12' */
    ATV_B.RateTransition12 = ATV_DW.RateTransition12_Buffer0;
  }

  /* End of RateTransition: '<S1>/Rate Transition3' */

  /* Relay: '<S43>/Relay1' */
  if (ATV_B.RateTransition12 >= atvc_tempSwitchOnFan) {
    ATV_DW.Relay1_Mode_b = true;
  } else {
    if (ATV_B.RateTransition12 <= atvc_tempSwitchOffFan) {
      ATV_DW.Relay1_Mode_b = false;
    }
  }

  /* Switch: '<S42>/Switch1' incorporates:
   *  Constant: '<S42>/FanOff'
   *  Logic: '<S43>/Logical Operator'
   *  Relay: '<S43>/Relay1'
   *  Switch: '<S43>/Switch1'
   */
  if (rtb_Compare) {
    rtb_Switch_l = 0U;
  } else {
    if (atv_dbg_pumpB_out && ATV_DW.Relay1_Mode_b) {
      /* Sum: '<S43>/Add1' incorporates:
       *  Constant: '<S42>/atvc_tempSwitchOnFan'
       *  Switch: '<S43>/Switch1'
       */
      rtb_MultiportSwitch = (int16_T)(ATV_B.RateTransition12 -
        atvc_tempSwitchOnFan);

      /* Saturate: '<S43>/Saturation' incorporates:
       *  Switch: '<S43>/Switch1'
       */
      if (rtb_MultiportSwitch > 20) {
        rtb_MultiportSwitch = 20;
      } else {
        if (rtb_MultiportSwitch < 0) {
          rtb_MultiportSwitch = 0;
        }
      }

      /* End of Saturate: '<S43>/Saturation' */

      /* Product: '<S43>/Product' incorporates:
       *  Constant: '<S43>/Constant'
       *  Switch: '<S43>/Switch1'
       */
      rtb_Product = (real_T)rtb_MultiportSwitch / 20.0;

      /* Gain: '<S43>/Gain' incorporates:
       *  Constant: '<S43>/Constant2'
       *  DataTypeConversion: '<S43>/Data Type Conversion'
       *  Switch: '<S43>/Switch1'
       *  Switch: '<S45>/Switch2'
       */
      rtb_Gain = 0.01 * (real_T)atvc_dcMinFan;

      /* Switch: '<S45>/Switch' incorporates:
       *  RelationalOperator: '<S45>/UpperRelop'
       *  Switch: '<S43>/Switch1'
       *  Switch: '<S45>/Switch2'
       */
      if (rtb_Product < rtb_Gain) {
        rtb_Product = rtb_Gain;
      }

      /* End of Switch: '<S45>/Switch' */
    } else {
      /* Switch: '<S43>/Switch1' incorporates:
       *  Constant: '<S43>/Ventola spenta'
       */
      rtb_Product = 0.0;
    }

    rtb_Switch_l = (uint8_T)(int32_T)fmod((int32_T)floor(rtb_Product), 256.0);
  }

  /* End of Switch: '<S42>/Switch1' */

  /* Gain: '<S1>/Gain' */
  rtb_Gain_d = (uint8_T)(100U * rtb_Switch_l);

  /* RelationalOperator: '<S10>/Compare' incorporates:
   *  Constant: '<S10>/Constant'
   */
  rtb_Compare = (rtb_Gain_d > 0);

  /* RateTransition: '<S1>/Rate Transition6' */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition6_p = rtb_Compare;

    /* RateTransition: '<S1>/Rate Transition7' */
    ATV_B.RateTransition7_p = rtb_Gain_d;
  }

  /* End of RateTransition: '<S1>/Rate Transition6' */

  /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput1' */
  /* S-Function Block: <S7>/pai_BasicAnalogInput1
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XA1, &adc, FALSE);
    atv_xa1_ain_throttle_raw = (adc * 5.0) / 4096.0;
  }

  /* Switch: '<S14>/Switch' incorporates:
   *  Constant: '<S14>/Constant'
   *  Constant: '<S16>/Lower Limit'
   *  Constant: '<S16>/Upper Limit'
   *  Logic: '<S16>/AND'
   *  RelationalOperator: '<S16>/Lower Test'
   *  RelationalOperator: '<S16>/Upper Test'
   */
  if ((0.45 <= atv_xa1_ain_throttle_raw) && (atv_xa1_ain_throttle_raw <= 4.55))
  {
    /* Saturate: '<S14>/Saturation' */
    if (atv_xa1_ain_throttle_raw > 4.5) {
      rtb_Product = 4.5;
    } else if (atv_xa1_ain_throttle_raw < 0.5) {
      rtb_Product = 0.5;
    } else {
      rtb_Product = atv_xa1_ain_throttle_raw;
    }

    /* End of Saturate: '<S14>/Saturation' */

    /* Gain: '<S14>/Gain' incorporates:
     *  Constant: '<S14>/Constant1'
     *  Sum: '<S14>/Add'
     */
    rtb_Product = floor((rtb_Product - 0.5) * 250.0);
    if (rtIsNaN(rtb_Product)) {
      atv_throttleX1000 = 0U;
    } else {
      atv_throttleX1000 = (uint16_T)fmod(rtb_Product, 65536.0);
    }

    /* End of Gain: '<S14>/Gain' */
  } else {
    atv_throttleX1000 = 0U;
  }

  /* End of Switch: '<S14>/Switch' */

  /* RelationalOperator: '<S47>/Relational Operator1' incorporates:
   *  Constant: '<S32>/atvc_throttleNeutralPoint'
   */
  rtb_Compare = (atv_throttleX1000 >= atvc_throttleNeutralPoint);

  /* Constant: '<S32>/atvc_throttleRegOff' */
  atv_throttleRegOff = atvc_throttleRegOff;

  /* Switch: '<S47>/Switch5' incorporates:
   *  Constant: '<S47>/Constant2'
   *  Constant: '<S47>/Constant3'
   *  Switch: '<S47>/Switch1'
   */
  if (ATV_B.en_inv_rear_out) {
    /* Switch: '<S47>/Switch2' incorporates:
     *  Constant: '<S47>/Constant1'
     */
    if (atv_throttleRegOff) {
      /* Switch: '<S47>/Switch4' incorporates:
       *  Constant: '<S53>/Constant'
       */
      if (rtb_Compare) {
        atv_regen_x1000_rear = 0U;
      } else {
        /* Gain: '<S52>/Gain2' */
        tmp_3 = 1000U;

        /* Sum: '<S52>/Add' incorporates:
         *  Constant: '<S32>/atvc_throttleNeutralPoint'
         *  DataTypeConversion: '<S52>/Cast'
         *  DataTypeConversion: '<S52>/Cast1'
         */
        u0_tmp = atvc_throttleNeutralPoint - atv_throttleX1000;

        /* Saturate: '<S52>/Saturation' incorporates:
         *  Sum: '<S52>/Add'
         */
        if (u0_tmp > 1000) {
          /* Gain: '<S52>/Gain2' */
          tmp_4 = 1000U;
        } else if (u0_tmp < 0) {
          /* Gain: '<S52>/Gain2' */
          tmp_4 = 0U;
        } else {
          /* Gain: '<S52>/Gain2' */
          tmp_4 = (uint32_T)u0_tmp;
        }

        /* End of Saturate: '<S52>/Saturation' */

        /* Gain: '<S52>/Gain2' */
        sMultiWordMul(&tmp_3, 1, &tmp_4, 1, &tmp_2.chunks[0U], 2);

        /* Product: '<S52>/Divide3' incorporates:
         *  Constant: '<S32>/atvc_throttleNeutralPoint'
         *  DataTypeConversion: '<S52>/Cast1'
         */
        if (atvc_throttleNeutralPoint == 0) {
          tmp_6 = tmp_g;
          if (sMultiWordGe(&tmp_2.chunks[0U], &tmp_6.chunks[0U], 2)) {
            u0_tmp = MAX_int32_T;
          } else {
            u0_tmp = MIN_int32_T;
          }
        } else {
          sLong2MultiWord(atvc_throttleNeutralPoint, &tmp_6.chunks[0U], 2);
          sMultiWordDivFloor(&tmp_2.chunks[0U], 2, &tmp_6.chunks[0U], 2,
                             &tmp_5.chunks[0U], 3, &tmp_7.chunks[0U], 2,
                             &tmp_8.chunks[0U], 2, &tmp_9.chunks[0U], 2);
          u0_tmp = MultiWord2sLong(&tmp_5.chunks[0U]);
        }

        /* Saturate: '<S52>/Saturation1' incorporates:
         *  Product: '<S52>/Divide3'
         */
        if (u0_tmp > 1000) {
          atv_regen_x1000_rear = 1000U;
        } else if (u0_tmp < 0) {
          atv_regen_x1000_rear = 0U;
        } else {
          atv_regen_x1000_rear = (uint16_T)u0_tmp;
        }

        /* End of Saturate: '<S52>/Saturation1' */
      }

      /* End of Switch: '<S47>/Switch4' */
    } else {
      atv_regen_x1000_rear = 0U;
    }

    /* End of Switch: '<S47>/Switch2' */

    /* Switch: '<S47>/Switch3' incorporates:
     *  Constant: '<S52>/Constant'
     */
    if (rtb_Compare) {
      /* Sum: '<S53>/Add1' incorporates:
       *  Constant: '<S32>/atvc_throttleNeutralPoint'
       *  Constant: '<S53>/Constant1'
       *  DataTypeConversion: '<S53>/Cast'
       */
      u0_tmp = 1000 - atvc_throttleNeutralPoint;

      /* Gain: '<S53>/Gain2' */
      tmp_3 = 1000U;

      /* Sum: '<S53>/Add' incorporates:
       *  Constant: '<S32>/atvc_throttleNeutralPoint'
       *  DataTypeConversion: '<S53>/Cast'
       *  DataTypeConversion: '<S53>/Cast1'
       */
      u0_tmp_0 = atv_throttleX1000 - atvc_throttleNeutralPoint;

      /* Saturate: '<S53>/Saturation' incorporates:
       *  Sum: '<S53>/Add'
       */
      if (u0_tmp_0 > 1000) {
        /* Gain: '<S53>/Gain2' */
        tmp_4 = 1000U;
      } else if (u0_tmp_0 < 0) {
        /* Gain: '<S53>/Gain2' */
        tmp_4 = 0U;
      } else {
        /* Gain: '<S53>/Gain2' */
        tmp_4 = (uint32_T)u0_tmp_0;
      }

      /* End of Saturate: '<S53>/Saturation' */

      /* Gain: '<S53>/Gain2' */
      sMultiWordMul(&tmp_3, 1, &tmp_4, 1, &tmp_1.chunks[0U], 2);

      /* Saturate: '<S53>/Saturation2' incorporates:
       *  Sum: '<S53>/Add1'
       */
      if (u0_tmp < 1) {
        u0_tmp = 1;
      }

      /* End of Saturate: '<S53>/Saturation2' */

      /* Product: '<S53>/Divide3' */
      sLong2MultiWord(u0_tmp, &tmp_7.chunks[0U], 2);
      sMultiWordDivFloor(&tmp_1.chunks[0U], 2, &tmp_7.chunks[0U], 2,
                         &tmp_a.chunks[0U], 3, &tmp_8.chunks[0U], 2,
                         &tmp_9.chunks[0U], 2, &tmp_b.chunks[0U], 2);
      u0_tmp = MultiWord2sLong(&tmp_a.chunks[0U]);

      /* Saturate: '<S53>/Saturation1' incorporates:
       *  Product: '<S53>/Divide3'
       */
      if (u0_tmp > 1000) {
        atv_motoring_x1000_rear = 1000U;
      } else if (u0_tmp < 0) {
        atv_motoring_x1000_rear = 0U;
      } else {
        atv_motoring_x1000_rear = (uint16_T)u0_tmp;
      }

      /* End of Saturate: '<S53>/Saturation1' */
    } else {
      atv_motoring_x1000_rear = 0U;
    }

    /* End of Switch: '<S47>/Switch3' */
  } else {
    atv_regen_x1000_rear = 0U;
    atv_motoring_x1000_rear = 0U;
  }

  /* End of Switch: '<S47>/Switch5' */

  /* Switch: '<S48>/Switch2' incorporates:
   *  Constant: '<S32>/atvc_throttleMaxLimit'
   *  RelationalOperator: '<S48>/LowerRelop1'
   *  Switch: '<S48>/Switch'
   */
  if (atv_motoring_x1000_rear > atvc_throttleMaxLimit) {
    atv_motoring_x1000_rear_limited = atvc_throttleMaxLimit;
  } else {
    atv_motoring_x1000_rear_limited = atv_motoring_x1000_rear;
  }

  /* End of Switch: '<S48>/Switch2' */

  /* DataTypeConversion: '<S39>/Cast2' incorporates:
   *  Constant: '<S9>/atvc_velocityLimitRwd'
   *  DataTypeConversion: '<S39>/Data Type Conversion1'
   *  Gain: '<S39>/Gain2'
   *  Product: '<S39>/Product2'
   */
  ATV_B.Cast2 = (uint16_T)(int32_T)fmod((int32_T)floor(0.277777791F * (real32_T)
    atvc_velocityLimitRwd * 303.25370753692243), 65536.0);

  /* DataTypeConversion: '<S39>/Cast1' incorporates:
   *  Constant: '<S9>/atvc_velocityLimitFwd'
   *  DataTypeConversion: '<S39>/Data Type Conversion'
   *  Gain: '<S39>/Gain1'
   *  Product: '<S39>/Product'
   */
  ATV_B.Cast1 = (uint16_T)(int32_T)fmod((int32_T)floor(0.277777791F * (real32_T)
    atvc_velocityLimitFwd * 303.25370753692243), 65536.0);

  /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage2' */
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
      pcx_CANdb_TransmitMessage2_in_port_buffer[0] = atv_regen_x1000_rear;
      pcx_CANdb_TransmitMessage2_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage2_in_port_buffer[0];
      pcx_CANdb_TransmitMessage2_in_port_buffer[1] =
        atv_motoring_x1000_rear_limited;
      pcx_CANdb_TransmitMessage2_in_port_ptr[1] =
        &pcx_CANdb_TransmitMessage2_in_port_buffer[1];
      pcx_CANdb_TransmitMessage2_in_port_buffer[2] = ATV_B.Cast2;
      pcx_CANdb_TransmitMessage2_in_port_ptr[2] =
        &pcx_CANdb_TransmitMessage2_in_port_buffer[2];
      pcx_CANdb_TransmitMessage2_in_port_buffer[3] = ATV_B.Cast1;
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

  /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput3' */
  /* S-Function Block: <S7>/pai_BasicAnalogInput3
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XD3, &adc, FALSE);
    atv_xd3_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Relay: '<S7>/Relay' */
  if (atv_xd3_raw_ain >= 3.0) {
    ATV_DW.Relay_Mode_b = true;
  } else {
    if (atv_xd3_raw_ain <= 2.0) {
      ATV_DW.Relay_Mode_b = false;
    }
  }

  atv_fs1_in = !ATV_DW.Relay_Mode_b;

  /* End of Relay: '<S7>/Relay' */

  /* Switch: '<S32>/Switch' incorporates:
   *  Logic: '<S32>/Logical Operator1'
   */
  if (atv_motoring_x1000_rear > (uint16_T)(atvc_throttleNeutralPoint + 10U)) {
    atv_fs1_out = atv_fs1_in;
  } else {
    atv_fs1_out = !atv_fs1_in;
  }

  /* End of Switch: '<S32>/Switch' */

  /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage3' incorporates:
   *  Constant: '<S1>/atvc_maxDischCurr'
   *  Constant: '<S1>/atvc_maxRegenCurr'
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
      pcx_CANdb_TransmitMessage3_in_port_buffer[0] = atv_fs1_out;
      pcx_CANdb_TransmitMessage3_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage3_in_port_buffer[0];
      pcx_CANdb_TransmitMessage3_in_port_buffer[1] = atv_rwd_mode_in;
      pcx_CANdb_TransmitMessage3_in_port_ptr[1] =
        &pcx_CANdb_TransmitMessage3_in_port_buffer[1];
      pcx_CANdb_TransmitMessage3_in_port_buffer[2] = atv_fwd_mode_in;
      pcx_CANdb_TransmitMessage3_in_port_ptr[2] =
        &pcx_CANdb_TransmitMessage3_in_port_buffer[2];
      pcx_CANdb_TransmitMessage3_in_port_buffer[3] = atvc_maxRegenCurr;
      pcx_CANdb_TransmitMessage3_in_port_ptr[3] =
        &pcx_CANdb_TransmitMessage3_in_port_buffer[3];
      pcx_CANdb_TransmitMessage3_in_port_buffer[4] = atvc_maxDischCurr;
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

  /* RelationalOperator: '<S46>/Relational Operator1' incorporates:
   *  Constant: '<S32>/atvc_throttleNeutralPoint'
   */
  rtb_Compare = (atv_throttleX1000 >= atvc_throttleNeutralPoint);

  /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput8' */
  /* S-Function Block: <S7>/pai_BasicAnalogInput8
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XE4, &adc, FALSE);
    atv_xe4_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Relay: '<S7>/Relay5' */
  if (atv_xe4_raw_ain >= atvc_an_in_sel_th + atvc_an_in_sel_his) {
    ATV_DW.Relay5_Mode_e = true;
  } else {
    if (atv_xe4_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
      ATV_DW.Relay5_Mode_e = false;
    }
  }

  atv_4wd_din = !ATV_DW.Relay5_Mode_e;

  /* End of Relay: '<S7>/Relay5' */

  /* Switch: '<S32>/Switch4' incorporates:
   *  Constant: '<S32>/Constant4'
   */
  if (atv_4wd_din) {
    /* Switch: '<S46>/Switch5' incorporates:
     *  Constant: '<S46>/Constant2'
     */
    if (ATV_B.en_inv_front_out) {
      /* Switch: '<S46>/Switch2' incorporates:
       *  Constant: '<S46>/Constant1'
       */
      if (atv_throttleRegOff) {
        /* Switch: '<S46>/Switch4' incorporates:
         *  Constant: '<S51>/Constant'
         */
        if (rtb_Compare) {
          atv_regen_x1000_front = 0U;
        } else {
          /* Gain: '<S50>/Gain2' */
          tmp_3 = 1000U;

          /* Sum: '<S50>/Add' incorporates:
           *  Constant: '<S32>/atvc_throttleNeutralPoint'
           *  DataTypeConversion: '<S50>/Cast'
           *  DataTypeConversion: '<S50>/Cast1'
           */
          u0_tmp = atvc_throttleNeutralPoint - atv_throttleX1000;

          /* Saturate: '<S50>/Saturation' incorporates:
           *  Sum: '<S50>/Add'
           */
          if (u0_tmp > 1000) {
            /* Gain: '<S50>/Gain2' */
            tmp_4 = 1000U;
          } else if (u0_tmp < 0) {
            /* Gain: '<S50>/Gain2' */
            tmp_4 = 0U;
          } else {
            /* Gain: '<S50>/Gain2' */
            tmp_4 = (uint32_T)u0_tmp;
          }

          /* End of Saturate: '<S50>/Saturation' */

          /* Gain: '<S50>/Gain2' */
          sMultiWordMul(&tmp_3, 1, &tmp_4, 1, &tmp_0.chunks[0U], 2);

          /* Product: '<S50>/Divide3' incorporates:
           *  Constant: '<S32>/atvc_throttleNeutralPoint'
           *  DataTypeConversion: '<S50>/Cast1'
           */
          if (atvc_throttleNeutralPoint == 0) {
            tmp_8 = tmp_g;
            if (sMultiWordGe(&tmp_0.chunks[0U], &tmp_8.chunks[0U], 2)) {
              u0_tmp = MAX_int32_T;
            } else {
              u0_tmp = MIN_int32_T;
            }
          } else {
            sLong2MultiWord(atvc_throttleNeutralPoint, &tmp_8.chunks[0U], 2);
            sMultiWordDivFloor(&tmp_0.chunks[0U], 2, &tmp_8.chunks[0U], 2,
                               &tmp_c.chunks[0U], 3, &tmp_9.chunks[0U], 2,
                               &tmp_b.chunks[0U], 2, &tmp_d.chunks[0U], 2);
            u0_tmp = MultiWord2sLong(&tmp_c.chunks[0U]);
          }

          /* Saturate: '<S50>/Saturation1' incorporates:
           *  Product: '<S50>/Divide3'
           */
          if (u0_tmp > 1000) {
            atv_regen_x1000_front = 1000U;
          } else if (u0_tmp < 0) {
            atv_regen_x1000_front = 0U;
          } else {
            atv_regen_x1000_front = (uint16_T)u0_tmp;
          }

          /* End of Saturate: '<S50>/Saturation1' */
        }

        /* End of Switch: '<S46>/Switch4' */
      } else {
        atv_regen_x1000_front = 0U;
      }

      /* End of Switch: '<S46>/Switch2' */
    } else {
      atv_regen_x1000_front = 0U;
    }

    /* End of Switch: '<S46>/Switch5' */
  } else {
    atv_regen_x1000_front = 0U;
  }

  /* End of Switch: '<S32>/Switch4' */

  /* Switch: '<S46>/Switch1' incorporates:
   *  Constant: '<S46>/Constant3'
   */
  if (ATV_B.en_inv_front_out) {
    /* Switch: '<S46>/Switch3' incorporates:
     *  Constant: '<S50>/Constant'
     */
    if (rtb_Compare) {
      /* Sum: '<S51>/Add1' incorporates:
       *  Constant: '<S32>/atvc_throttleNeutralPoint'
       *  Constant: '<S51>/Constant1'
       *  DataTypeConversion: '<S51>/Cast'
       */
      u0_tmp = 1000 - atvc_throttleNeutralPoint;

      /* Gain: '<S51>/Gain2' */
      tmp_3 = 1000U;

      /* Sum: '<S51>/Add' incorporates:
       *  Constant: '<S32>/atvc_throttleNeutralPoint'
       *  DataTypeConversion: '<S51>/Cast'
       *  DataTypeConversion: '<S51>/Cast1'
       */
      u0_tmp_0 = atv_throttleX1000 - atvc_throttleNeutralPoint;

      /* Saturate: '<S51>/Saturation' incorporates:
       *  Sum: '<S51>/Add'
       */
      if (u0_tmp_0 > 1000) {
        /* Gain: '<S51>/Gain2' */
        tmp_4 = 1000U;
      } else if (u0_tmp_0 < 0) {
        /* Gain: '<S51>/Gain2' */
        tmp_4 = 0U;
      } else {
        /* Gain: '<S51>/Gain2' */
        tmp_4 = (uint32_T)u0_tmp_0;
      }

      /* End of Saturate: '<S51>/Saturation' */

      /* Gain: '<S51>/Gain2' */
      sMultiWordMul(&tmp_3, 1, &tmp_4, 1, &tmp.chunks[0U], 2);

      /* Saturate: '<S51>/Saturation2' incorporates:
       *  Sum: '<S51>/Add1'
       */
      if (u0_tmp < 1) {
        u0_tmp = 1;
      }

      /* End of Saturate: '<S51>/Saturation2' */

      /* Product: '<S51>/Divide3' */
      sLong2MultiWord(u0_tmp, &tmp_9.chunks[0U], 2);
      sMultiWordDivFloor(&tmp.chunks[0U], 2, &tmp_9.chunks[0U], 2,
                         &tmp_e.chunks[0U], 3, &tmp_b.chunks[0U], 2,
                         &tmp_d.chunks[0U], 2, &tmp_f.chunks[0U], 2);
      u0_tmp = MultiWord2sLong(&tmp_e.chunks[0U]);

      /* Saturate: '<S51>/Saturation1' incorporates:
       *  Product: '<S51>/Divide3'
       */
      if (u0_tmp > 1000) {
        atv_motoring_x1000_front = 1000U;
      } else if (u0_tmp < 0) {
        atv_motoring_x1000_front = 0U;
      } else {
        atv_motoring_x1000_front = (uint16_T)u0_tmp;
      }

      /* End of Saturate: '<S51>/Saturation1' */
    } else {
      atv_motoring_x1000_front = 0U;
    }

    /* End of Switch: '<S46>/Switch3' */
  } else {
    atv_motoring_x1000_front = 0U;
  }

  /* End of Switch: '<S46>/Switch1' */

  /* Switch: '<S32>/Switch3' incorporates:
   *  Constant: '<S32>/Constant2'
   */
  if (atv_4wd_din) {
    atv_motoring_x1000_front_limited = atv_motoring_x1000_front;
  } else {
    atv_motoring_x1000_front_limited = 0U;
  }

  /* End of Switch: '<S32>/Switch3' */

  /* Switch: '<S49>/Switch2' incorporates:
   *  Constant: '<S32>/atvc_throttleMaxLimit'
   *  RelationalOperator: '<S49>/LowerRelop1'
   */
  if (atv_motoring_x1000_front_limited > atvc_throttleMaxLimit) {
    atv_motoring_x1000_front_limited = atvc_throttleMaxLimit;
  }

  /* End of Switch: '<S49>/Switch2' */

  /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage4' */
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
      pcx_CANdb_TransmitMessage4_in_port_buffer[0] = atv_regen_x1000_front;
      pcx_CANdb_TransmitMessage4_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage4_in_port_buffer[0];
      pcx_CANdb_TransmitMessage4_in_port_buffer[1] =
        atv_motoring_x1000_front_limited;
      pcx_CANdb_TransmitMessage4_in_port_ptr[1] =
        &pcx_CANdb_TransmitMessage4_in_port_buffer[1];
      pcx_CANdb_TransmitMessage4_in_port_buffer[2] = ATV_B.Cast2;
      pcx_CANdb_TransmitMessage4_in_port_ptr[2] =
        &pcx_CANdb_TransmitMessage4_in_port_buffer[2];
      pcx_CANdb_TransmitMessage4_in_port_buffer[3] = ATV_B.Cast1;
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
   *  Constant: '<S1>/atvc_maxDischCurr'
   *  Constant: '<S1>/atvc_maxRegenCurr'
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
      pcx_CANdb_TransmitMessage5_in_port_buffer[0] = atv_fs1_out;
      pcx_CANdb_TransmitMessage5_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage5_in_port_buffer[0];
      pcx_CANdb_TransmitMessage5_in_port_buffer[1] = atv_rwd_mode_in;
      pcx_CANdb_TransmitMessage5_in_port_ptr[1] =
        &pcx_CANdb_TransmitMessage5_in_port_buffer[1];
      pcx_CANdb_TransmitMessage5_in_port_buffer[2] = atv_fwd_mode_in;
      pcx_CANdb_TransmitMessage5_in_port_ptr[2] =
        &pcx_CANdb_TransmitMessage5_in_port_buffer[2];
      pcx_CANdb_TransmitMessage5_in_port_buffer[3] = atvc_maxRegenCurr;
      pcx_CANdb_TransmitMessage5_in_port_ptr[3] =
        &pcx_CANdb_TransmitMessage5_in_port_buffer[3];
      pcx_CANdb_TransmitMessage5_in_port_buffer[4] = atvc_maxDischCurr;
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

  /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput7' */
  /* S-Function Block: <S7>/pai_BasicAnalogInput7
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XE2, &adc, FALSE);
    atv_xe2_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Relay: '<S7>/Relay4' */
  if (atv_xe2_raw_ain >= atvc_an_in_sel_th + atvc_an_in_sel_his) {
    ATV_DW.Relay4_Mode_b = true;
  } else {
    if (atv_xe2_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
      ATV_DW.Relay4_Mode_b = false;
    }
  }

  atv_apu_req_in = !ATV_DW.Relay4_Mode_b;

  /* End of Relay: '<S7>/Relay4' */

  /* RateTransition: '<Root>/Rate Transition24' */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition24 = ATV_DW.RateTransition24_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition24' */

  /* Chart: '<S37>/VSMGestioneIbrido' incorporates:
   *  Constant: '<S37>/atvc_RpmEndwarmUp'
   *  RelationalOperator: '<S37>/Relational Operator'
   */
  if (ATV_DW.temporalCounter_i1 < 511U) {
    ATV_DW.temporalCounter_i1++;
  }

  if (ATV_DW.temporalCounter_i2_m < 255U) {
    ATV_DW.temporalCounter_i2_m++;
  }

  /* Gateway: loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido */
  ATV_DW.ReqGen_prev = ATV_DW.ReqGen_start;
  ATV_DW.ReqGen_start = atv_apu_req_in;

  /* During: loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido */
  if (ATV_DW.is_active_c2_ATV == 0U) {
    ATV_DW.ReqGen_prev = atv_apu_req_in;

    /* Entry: loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido */
    ATV_DW.is_active_c2_ATV = 1U;

    /* Entry Internal: loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido */
    /* Entry Internal 'GestioneIbrido': '<S72>:166' */
    /* Transition: '<S72>:192' */
    /* Entry Internal 'IceSM': '<S72>:191' */
    /* Transition: '<S72>:280' */
    ATV_DW.is_IceSM = ATV_IN_Inizializzazione;

    /* Entry 'Inizializzazione': '<S72>:279' */
    ATV_DW.IceStartAttempCnt = 0.0;
    atv_IceOn = false;
    atv_IceKey_out = false;
    atv_IceShutdown_out = false;
    atv_IceFault = false;
    ATV_B.GenFwd_out = false;
    atv_IceSM = 0U;

    /* Entry Internal 'WarmUpIce': '<S72>:168' */
    /* Transition: '<S72>:305' */
    ATV_DW.is_WarmUpIce = ATV_IN_CoolUpTermico;

    /* Entry 'CoolUpTermico': '<S72>:306' */
  } else {
    ATV_GestioneIbrido();

    /* During 'WarmUpIce': '<S72>:168' */
    switch (ATV_DW.is_WarmUpIce) {
     case ATV_IN_CoolUpTermico:
      /* During 'CoolUpTermico': '<S72>:306' */
      if (atv_IceOn) {
        /* Transition: '<S72>:307' */
        ATV_DW.is_WarmUpIce = ATV_IN_WarmUpTermico;

        /* Entry 'WarmUpTermico': '<S72>:102' */
        atv_IceRG = 1U;
        ATV_B.footBrake_X1000_out = atvc_footBrakeWarmUp;
      } else {
        atv_IceRG = 0U;
        ATV_B.footBrake_X1000_out = 0U;
      }
      break;

     case ATV_IN_RegenerativeMode:
      /* During 'RegenerativeMode': '<S72>:167' */
      if (!atv_IceOn) {
        /* Transition: '<S72>:315' */
        /* Exit Internal 'RegenerativeMode': '<S72>:167' */
        ATV_DW.is_WarmUpIce = ATV_IN_CoolUpTermico;

        /* Entry 'CoolUpTermico': '<S72>:306' */
      } else {
        /* During 'Regenerative': '<S72>:225' */
      }
      break;

     case ATV_IN_WaitReg:
      /* During 'WaitReg': '<S72>:346' */
      if (!atv_IceOn) {
        /* Transition: '<S72>:348' */
        /* Transition: '<S72>:350' */
        ATV_DW.is_WarmUpIce = ATV_IN_CoolUpTermico;

        /* Entry 'CoolUpTermico': '<S72>:306' */
      } else {
        if (ATV_DW.temporalCounter_i2_m >= 200U) {
          /* Transition: '<S72>:347' */
          ATV_DW.is_WarmUpIce = ATV_IN_RegenerativeMode;

          /* Entry 'RegenerativeMode': '<S72>:167' */
          /* Entry Internal 'RegenerativeMode': '<S72>:167' */
          /* Transition: '<S72>:344' */
          /* Entry 'Regenerative': '<S72>:225' */
          ATV_B.footBrake_X1000_out = atvc_footBrakeIce;
          atv_IceRG = 3U;
        }
      }
      break;

     default:
      /* During 'WarmUpTermico': '<S72>:102' */
      if (ATV_B.RateTransition24 > atvc_RpmEndWarmUp) {
        /* Transition: '<S72>:106' */
        ATV_DW.is_WarmUpIce = ATV_IN_WaitReg;
        ATV_DW.temporalCounter_i2_m = 0U;

        /* Entry 'WaitReg': '<S72>:346' */
        atv_IceRG = 2U;
      } else {
        if (!atv_IceOn) {
          /* Transition: '<S72>:316' */
          ATV_DW.is_WarmUpIce = ATV_IN_CoolUpTermico;

          /* Entry 'CoolUpTermico': '<S72>:306' */
        }
      }
      break;
    }
  }

  /* End of Chart: '<S37>/VSMGestioneIbrido' */

  /* RateLimiter: '<S37>/Rate Limiter1' */
  u0_tmp = ATV_B.footBrake_X1000_out - ATV_DW.PrevY_k;
  if (u0_tmp > 1) {
    atv_footBrake_X1000_out = (uint16_T)(ATV_DW.PrevY_k + 1);
  } else if (u0_tmp < -20) {
    atv_footBrake_X1000_out = (uint16_T)(ATV_DW.PrevY_k - 20);
  } else {
    atv_footBrake_X1000_out = ATV_B.footBrake_X1000_out;
  }

  ATV_DW.PrevY_k = atv_footBrake_X1000_out;

  /* End of RateLimiter: '<S37>/Rate Limiter1' */

  /* RateLimiter: '<S37>/Rate Limiter' */
  u0_tmp = ATV_B.tHROTTLEGen_X1000_out - ATV_DW.PrevY_l;
  if (u0_tmp > 50) {
    atv_tHROTTLEGen_X1000_out = (uint16_T)(ATV_DW.PrevY_l + 50);
  } else if (u0_tmp < -50) {
    atv_tHROTTLEGen_X1000_out = (uint16_T)(ATV_DW.PrevY_l - 50);
  } else {
    atv_tHROTTLEGen_X1000_out = ATV_B.tHROTTLEGen_X1000_out;
  }

  ATV_DW.PrevY_l = atv_tHROTTLEGen_X1000_out;

  /* End of RateLimiter: '<S37>/Rate Limiter' */

  /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage7' incorporates:
   *  Constant: '<S1>/Constant2'
   *  Constant: '<S1>/Constant3'
   */
  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage7
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    BOOL retval;
    F32 pcx_CANdb_TransmitMessage7_in_port_buffer[4];
    F32 * pcx_CANdb_TransmitMessage7_in_port_ptr[4];
    static const U8 pcx_CANdb_TransmitMessage7_field_start_pos[4] = {
      48, 32, 16, 0, };

    static const U8 pcx_CANdb_TransmitMessage7_field_width[4] = {
      16, 16, 16, 16, };

    static const U8 pcx_CANdb_TransmitMessage7_field_is_signed[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage7_field_valtype[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage7_field_order[4] = {
      1, 1, 1, 1, };

    static const F32 pcx_CANdb_TransmitMessage7_field_eng_min[4] = {
      0.0, 0.0, 0.0, 0.0, };

    static const F32 pcx_CANdb_TransmitMessage7_field_eng_max[4] = {
      1000.0, 1000.0, 20000.0, 20000.0, };

    static const F32 pcx_CANdb_TransmitMessage7_field_scale[4] = {
      1.0, 1.0, 1.0, 1.0, };

    static const F32 pcx_CANdb_TransmitMessage7_field_offset[4] = {
      0.0, 0.0, 0.0, 0.0, };

    if (pcx_CANdb_TransmitMessage7_msg_handle != PCX_CONFIG_ERROR) {
      pcx_CANdb_TransmitMessage7_in_port_buffer[0] = atv_footBrake_X1000_out;
      pcx_CANdb_TransmitMessage7_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage7_in_port_buffer[0];
      pcx_CANdb_TransmitMessage7_in_port_buffer[1] = atv_tHROTTLEGen_X1000_out;
      pcx_CANdb_TransmitMessage7_in_port_ptr[1] =
        &pcx_CANdb_TransmitMessage7_in_port_buffer[1];
      pcx_CANdb_TransmitMessage7_in_port_buffer[2] = 8000.0;
      pcx_CANdb_TransmitMessage7_in_port_ptr[2] =
        &pcx_CANdb_TransmitMessage7_in_port_buffer[2];
      pcx_CANdb_TransmitMessage7_in_port_buffer[3] = 8000.0;
      pcx_CANdb_TransmitMessage7_in_port_ptr[3] =
        &pcx_CANdb_TransmitMessage7_in_port_buffer[3];
      pcx_vdb_pack_msg((const F32 * const *)
                       &pcx_CANdb_TransmitMessage7_in_port_ptr[0], &data[0],
                       pcx_CANdb_TransmitMessage7_field_start_pos,
                       pcx_CANdb_TransmitMessage7_field_width,
                       pcx_CANdb_TransmitMessage7_field_is_signed,
                       pcx_CANdb_TransmitMessage7_field_valtype,
                       pcx_CANdb_TransmitMessage7_field_order,
                       pcx_CANdb_TransmitMessage7_field_eng_min,
                       pcx_CANdb_TransmitMessage7_field_eng_max,
                       pcx_CANdb_TransmitMessage7_field_scale,
                       pcx_CANdb_TransmitMessage7_field_offset, 0, 1, 4);

      /* Do a transmit every time we are called, (CT2) */
      retval = pcx_transmit(pcx_CANdb_TransmitMessage7_msg_handle, data);
    } else {
      /* error: pcx_declare_message was unsuccessful */
      retval = FALSE;
    }

    ATV_B.pcx_CANdb_TransmitMessage7 = !retval;
  }

  /* MultiPortSwitch: '<S37>/Multiport Switch' incorporates:
   *  Constant: '<S37>/atvc_GenWarmUpCurrent'
   *  Constant: '<S37>/const'
   *  Constant: '<S9>/atvc_GenTestCurrent'
   */
  switch (atv_IceRG) {
   case 0:
    rtb_MultiportSwitch = 0;
    break;

   case 1:
    rtb_MultiportSwitch = atvc_GenWarmUpCurrent;
    break;

   case 2:
    rtb_MultiportSwitch = atvc_GenWarmUpCurrent;
    break;

   case 3:
    rtb_MultiportSwitch = atvc_GenTestCurrent;
    break;

   default:
    rtb_MultiportSwitch = 0;
    break;
  }

  /* End of MultiPortSwitch: '<S37>/Multiport Switch' */

  /* RateLimiter: '<S37>/Rate Limiter2' incorporates:
   *  DataTypeConversion: '<S37>/Data Type Conversion'
   */
  rateLimiterRate = (real32_T)rtb_MultiportSwitch - ATV_DW.PrevY;
  if (rateLimiterRate > 1.5F) {
    ATV_DW.PrevY += 1.5F;
  } else if (rateLimiterRate < -3.0F) {
    ATV_DW.PrevY += -3.0F;
  } else {
    ATV_DW.PrevY = rtb_MultiportSwitch;
  }

  /* End of RateLimiter: '<S37>/Rate Limiter2' */

  /* DataTypeConversion: '<S37>/Data Type Conversion1' */
  rateLimiterRate = (real32_T)floor(ATV_DW.PrevY);
  if (rtIsNaNF(rateLimiterRate) || rtIsInfF(rateLimiterRate)) {
    rateLimiterRate = 0.0F;
  } else {
    rateLimiterRate = (real32_T)fmod(rateLimiterRate, 65536.0);
  }

  atv_GenCurrentSetPoint = (int16_T)(rateLimiterRate < 0.0F ? (int32_T)(int16_T)
    -(int16_T)(uint16_T)-rateLimiterRate : (int32_T)(int16_T)(uint16_T)
    rateLimiterRate);

  /* End of DataTypeConversion: '<S37>/Data Type Conversion1' */

  /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage8' incorporates:
   *  Constant: '<S1>/Constant'
   */
  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage8
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    BOOL retval;
    F32 pcx_CANdb_TransmitMessage8_in_port_buffer[5];
    F32 * pcx_CANdb_TransmitMessage8_in_port_ptr[5];
    static const U8 pcx_CANdb_TransmitMessage8_field_start_pos[5] = {
      34, 33, 32, 16, 0, };

    static const U8 pcx_CANdb_TransmitMessage8_field_width[5] = {
      1, 1, 1, 16, 16, };

    static const U8 pcx_CANdb_TransmitMessage8_field_is_signed[5] = {
      0, 0, 0, 1, 1, };

    static const U8 pcx_CANdb_TransmitMessage8_field_valtype[5] = {
      0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage8_field_order[5] = {
      1, 1, 1, 1, 1, };

    static const F32 pcx_CANdb_TransmitMessage8_field_eng_min[5] = {
      0.0, 0.0, 0.0, -32768.0, 0.0,
    };

    static const F32 pcx_CANdb_TransmitMessage8_field_eng_max[5] = {
      1.0, 1.0, 1.0, 0.0, 32767.0,
    };

    static const F32 pcx_CANdb_TransmitMessage8_field_scale[5] = {
      1.0, 1.0, 1.0, 1.0, 1.0,
    };

    static const F32 pcx_CANdb_TransmitMessage8_field_offset[5] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
    };

    if (pcx_CANdb_TransmitMessage8_msg_handle != PCX_CONFIG_ERROR) {
      pcx_CANdb_TransmitMessage8_in_port_buffer[0] = ATV_B.FS1_out;
      pcx_CANdb_TransmitMessage8_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage8_in_port_buffer[0];
      pcx_CANdb_TransmitMessage8_in_port_buffer[1] = 0.0;
      pcx_CANdb_TransmitMessage8_in_port_ptr[1] =
        &pcx_CANdb_TransmitMessage8_in_port_buffer[1];
      pcx_CANdb_TransmitMessage8_in_port_buffer[2] = ATV_B.GenFwd_out;
      pcx_CANdb_TransmitMessage8_in_port_ptr[2] =
        &pcx_CANdb_TransmitMessage8_in_port_buffer[2];
      pcx_CANdb_TransmitMessage8_in_port_buffer[3] = atv_GenCurrentSetPoint;
      pcx_CANdb_TransmitMessage8_in_port_ptr[3] =
        &pcx_CANdb_TransmitMessage8_in_port_buffer[3];
      pcx_CANdb_TransmitMessage8_in_port_buffer[4] = 50.0;
      pcx_CANdb_TransmitMessage8_in_port_ptr[4] =
        &pcx_CANdb_TransmitMessage8_in_port_buffer[4];
      pcx_vdb_pack_msg((const F32 * const *)
                       &pcx_CANdb_TransmitMessage8_in_port_ptr[0], &data[0],
                       pcx_CANdb_TransmitMessage8_field_start_pos,
                       pcx_CANdb_TransmitMessage8_field_width,
                       pcx_CANdb_TransmitMessage8_field_is_signed,
                       pcx_CANdb_TransmitMessage8_field_valtype,
                       pcx_CANdb_TransmitMessage8_field_order,
                       pcx_CANdb_TransmitMessage8_field_eng_min,
                       pcx_CANdb_TransmitMessage8_field_eng_max,
                       pcx_CANdb_TransmitMessage8_field_scale,
                       pcx_CANdb_TransmitMessage8_field_offset, 0, 1, 5);

      /* Do a transmit every time we are called, (CT2) */
      retval = pcx_transmit(pcx_CANdb_TransmitMessage8_msg_handle, data);
    } else {
      /* error: pcx_declare_message was unsuccessful */
      retval = FALSE;
    }

    ATV_B.pcx_CANdb_TransmitMessage8 = !retval;
  }

  /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput' incorporates:
   *  Constant: '<S6>/Constant1'
   */
  /* S-Function Block: <S6>/pdx_DigitalOutput
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

  /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput1' incorporates:
   *  Constant: '<S6>/Constant1'
   */
  /* S-Function Block: <S6>/pdx_DigitalOutput1
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

  /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput2' incorporates:
   *  Constant: '<S6>/Constant1'
   */
  /* S-Function Block: <S6>/pdx_DigitalOutput2
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)atv_IceShutdown_out,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_YB4, state, FALSE);
  }

  /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput3' incorporates:
   *  Constant: '<S6>/Constant1'
   */
  /* S-Function Block: <S6>/pdx_DigitalOutput3
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

  /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput4' incorporates:
   *  Constant: '<S6>/Constant1'
   */
  /* S-Function Block: <S6>/pdx_DigitalOutput4
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

  /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput5' incorporates:
   *  Constant: '<S6>/Constant1'
   */
  /* S-Function Block: <S6>/pdx_DigitalOutput5
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

  /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput6' incorporates:
   *  Constant: '<S6>/Constant1'
   */
  /* S-Function Block: <S6>/pdx_DigitalOutput6
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

  /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput7' incorporates:
   *  Constant: '<S6>/Constant1'
   */
  /* S-Function Block: <S6>/pdx_DigitalOutput7
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

  /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput8' */
  /* S-Function Block: <S6>/pdx_DigitalOutput8
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

  /* S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput9' incorporates:
   *  Constant: '<S6>/Constant1'
   */
  /* S-Function Block: <S6>/pdx_DigitalOutput9
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)atv_IceKey_out,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_ZC1, state, FALSE);
  }

  /* Switch: '<S6>/Switch' incorporates:
   *  Constant: '<S6>/atvc_FanTest'
   */
  if (atvc_FanTest > 0) {
    rtb_Switch_l = atvc_FanTest;
  }

  /* End of Switch: '<S6>/Switch' */

  /* DataTypeConversion: '<S6>/Data Type Conversion' */
  atv_dbg_FAN_out = rtb_Switch_l;

  /* Gain: '<S6>/Gain' */
  ATV_B.Saturation = 0.01 * atv_dbg_FAN_out;

  /* Saturate: '<S6>/Saturation' */
  if (ATV_B.Saturation > 1.0) {
    /* Gain: '<S6>/Gain' */
    ATV_B.Saturation = 1.0;
  } else {
    if (ATV_B.Saturation < 0.0) {
      /* Gain: '<S6>/Gain' */
      ATV_B.Saturation = 0.0;
    }
  }

  /* End of Saturate: '<S6>/Saturation' */

  /* S-Function (pdx_pwm_output): '<S6>/pdx_PWMOutput' incorporates:
   *  Constant: '<S6>/Constant1'
   */
  /*
   * S-Function Block: <S6>/pdx_PWMOutput
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
                          2000.0,
                          dc,
                          0.0,
                          FALSE);
  }

  /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput2' */
  /* S-Function Block: <S7>/pai_BasicAnalogInput2
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XE3, &adc, FALSE);
    ATV_B.pai_BasicAnalogInput2 = (adc * 5.0) / 4096.0;
  }

  /* S-Function (pax_adc_input): '<S7>/pai_BasicAnalogInput9' */
  /* S-Function Block: <S7>/pai_BasicAnalogInput9
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_YG3, &adc, FALSE);
    atv_yg3_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Gain: '<S7>/Gain2' */
  rtb_Product = floor(1000.0 * ATV_B.pai_BasicAnalogInput2);
  if (rtIsNaN(rtb_Product) || rtIsInf(rtb_Product)) {
    rtb_Product = 0.0;
  } else {
    rtb_Product = fmod(rtb_Product, 4.294967296E+9);
  }

  atv_xe3_ain = rtb_Product < 0.0 ? -(int32_T)(uint32_T)-rtb_Product : (int32_T)
    (uint32_T)rtb_Product;

  /* End of Gain: '<S7>/Gain2' */

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
  real_T u0;

  /* S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage1' */
  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage1
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    BOOL retval;
    F32 pcx_CANdb_TransmitMessage1_in_port_buffer[6];
    F32 * pcx_CANdb_TransmitMessage1_in_port_ptr[6];
    static const U8 pcx_CANdb_TransmitMessage1_field_start_pos[6] = {
      16, 8, 0, 24, 32, 40, };

    static const U8 pcx_CANdb_TransmitMessage1_field_width[6] = {
      1, 1, 1, 1, 1, 1, };

    static const U8 pcx_CANdb_TransmitMessage1_field_is_signed[6] = {
      0, 0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage1_field_valtype[6] = {
      0, 0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_TransmitMessage1_field_order[6] = {
      1, 1, 1, 1, 1, 1, };

    static const F32 pcx_CANdb_TransmitMessage1_field_eng_min[6] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
      0.0, };

    static const F32 pcx_CANdb_TransmitMessage1_field_eng_max[6] = {
      1.0, 1.0, 1.0, 1.0, 1.0,
      1.0, };

    static const F32 pcx_CANdb_TransmitMessage1_field_scale[6] = {
      1.0, 1.0, 1.0, 1.0, 1.0,
      1.0, };

    static const F32 pcx_CANdb_TransmitMessage1_field_offset[6] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
      0.0, };

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
      pcx_CANdb_TransmitMessage1_in_port_buffer[5] = 0.0;
      pcx_CANdb_TransmitMessage1_in_port_ptr[5] =
        &pcx_CANdb_TransmitMessage1_in_port_buffer[5];
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
                       pcx_CANdb_TransmitMessage1_field_offset, 0, 1, 6);

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
        ATV_B.pcx_CANdb_ReceiveMessage_o7_p =
          pcx_CANdb_ReceiveMessage_p_out_port_buffer[3];
        ATV_B.pcx_CANdb_ReceiveMessage_o8 =
          pcx_CANdb_ReceiveMessage_p_out_port_buffer[4];
        ATV_B.pcx_CANdb_ReceiveMessage_o9_b =
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

  /* Switch: '<S4>/Switch' incorporates:
   *  Constant: '<S4>/Constant'
   *  Constant: '<S4>/Constant1'
   *  Constant: '<S4>/Constant2'
   *  Constant: '<S4>/Constant3'
   *  Constant: '<S4>/Constant4'
   *  Constant: '<S4>/Constant5'
   *  Constant: '<S4>/Constant6'
   *  Switch: '<S4>/Switch1'
   *  Switch: '<S4>/Switch2'
   *  Switch: '<S4>/Switch3'
   *  Switch: '<S4>/Switch4'
   *  Switch: '<S4>/Switch5'
   *  Switch: '<S4>/Switch6'
   */
  if (ATV_B.sf_Chart_b.out) {
    ATV_B.atv_v_dbg_T_FMot = ATV_B.pcx_CANdb_ReceiveMessage_o4_k;
    ATV_B.atv_v_dbg_T_FInv = ATV_B.pcx_CANdb_ReceiveMessage_o5_c;
    ATV_B.atv_v_dbg_T_RMot = ATV_B.pcx_CANdb_ReceiveMessage_o7_p;
    ATV_B.atv_v_dbg_T_RInv = ATV_B.pcx_CANdb_ReceiveMessage_o6_o;
    ATV_B.atv_v_dbg_T_GMot = ATV_B.pcx_CANdb_ReceiveMessage_o8;
    ATV_B.atv_v_dbg_T_GInv = ATV_B.pcx_CANdb_ReceiveMessage_o9_b;
    ATV_B.atv_v_dbg_T_Rad = ATV_B.pcx_CANdb_ReceiveMessage_o10;
  } else {
    ATV_B.atv_v_dbg_T_FMot = 0;
    ATV_B.atv_v_dbg_T_FInv = 0;
    ATV_B.atv_v_dbg_T_RMot = 0;
    ATV_B.atv_v_dbg_T_RInv = 0;
    ATV_B.atv_v_dbg_T_GMot = 0;
    ATV_B.atv_v_dbg_T_GInv = 0;
    ATV_B.atv_v_dbg_T_Rad = 0;
  }

  /* End of Switch: '<S4>/Switch' */

  /* S-Function (pcx_candb_receive_message): '<S5>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S5>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_f_out_port_buffer[4];
    F32 * pcx_CANdb_ReceiveMessage_f_out_port[4];
    static const U8 pcx_CANdb_ReceiveMessage_f_field_start_pos[4] = {
      56, 48, 32, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_f_field_width[4] = {
      8, 8, 16, 32, };

    static const U8 pcx_CANdb_ReceiveMessage_f_field_is_signed[4] = {
      1, 1, 1, 1, };

    static const U8 pcx_CANdb_ReceiveMessage_f_field_valtype[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_f_field_order[4] = {
      1, 1, 1, 1, };

    static const F32 pcx_CANdb_ReceiveMessage_f_field_eng_min[4] = {
      -128.0, -128.0, -2048.0, -2.14748E+9, };

    static const F32 pcx_CANdb_ReceiveMessage_f_field_eng_max[4] = {
      127.0, 127.0, 2047.94, 2.14748E+9, };

    static const F32 pcx_CANdb_ReceiveMessage_f_field_scale[4] = {
      1.0, 1.0, 0.0625, 1.0, };

    static const F32 pcx_CANdb_ReceiveMessage_f_field_offset[4] = {
      0.0, 0.0, 0.0, 0.0, };

    if (pcx_CANdb_ReceiveMessage_f_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_f_msg_handle,
        data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_g = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_d = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_n = 1;
        pcx_CANdb_ReceiveMessage_f_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_f_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_f_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_f_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_f_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_f_out_port_buffer[2];
        pcx_CANdb_ReceiveMessage_f_out_port[3] = (F32*)
          &pcx_CANdb_ReceiveMessage_f_out_port_buffer[3];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_f_out_port[0], NULL, &data
                           [0], pcx_CANdb_ReceiveMessage_f_field_start_pos,
                           pcx_CANdb_ReceiveMessage_f_field_width,
                           pcx_CANdb_ReceiveMessage_f_field_is_signed,
                           pcx_CANdb_ReceiveMessage_f_field_valtype,
                           pcx_CANdb_ReceiveMessage_f_field_order,
                           pcx_CANdb_ReceiveMessage_f_field_eng_min,
                           pcx_CANdb_ReceiveMessage_f_field_eng_max,
                           pcx_CANdb_ReceiveMessage_f_field_scale,
                           pcx_CANdb_ReceiveMessage_f_field_offset, 0, 1, 4);
        ATV_B.pcx_CANdb_ReceiveMessage_o4_f =
          pcx_CANdb_ReceiveMessage_f_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5_m =
          pcx_CANdb_ReceiveMessage_f_out_port_buffer[1];
        ATV_B.pcx_CANdb_ReceiveMessage_o6_n =
          pcx_CANdb_ReceiveMessage_f_out_port_buffer[2];
        ATV_B.pcx_CANdb_ReceiveMessage_o7 =
          pcx_CANdb_ReceiveMessage_f_out_port_buffer[3];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_n = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_g = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_n = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_d = 0;
    }
  }

  /* Chart: '<S5>/Chart' */
  ATV_Chart(ATV_B.pcx_CANdb_ReceiveMessage_o2_n, &ATV_B.sf_Chart_l,
            &ATV_DW.sf_Chart_l);

  /* Switch: '<S5>/Switch3' incorporates:
   *  Constant: '<S5>/Constant3'
   */
  if (ATV_B.sf_Chart_l.out) {
    u0 = ATV_B.pcx_CANdb_ReceiveMessage_o7;
  } else {
    u0 = 0.0;
  }

  /* End of Switch: '<S5>/Switch3' */

  /* Saturate: '<S5>/Saturation' */
  if (u0 > 32767.0) {
    u0 = 32767.0;
  } else {
    if (u0 < -32767.0) {
      u0 = -32767.0;
    }
  }

  u0 = floor(u0);
  if (rtIsNaN(u0)) {
    u0 = 0.0;
  } else {
    u0 = fmod(u0, 65536.0);
  }

  ATV_B.Saturation_a = (int16_T)(u0 < 0.0 ? (int32_T)(int16_T)-(int16_T)
    (uint16_T)-u0 : (int32_T)(int16_T)(uint16_T)u0);

  /* End of Saturate: '<S5>/Saturation' */

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
        ATV_B.pcx_CANdb_ReceiveMessage_o5_mv =
          pcx_CANdb_ReceiveMessage_e_out_port_buffer[1];
        bms_pack_voltage = pcx_CANdb_ReceiveMessage_e_out_port_buffer[2];
        ATV_B.atv_bms_pack_current = pcx_CANdb_ReceiveMessage_e_out_port_buffer
          [3];
        ATV_B.atv_bms_pack_soh = pcx_CANdb_ReceiveMessage_e_out_port_buffer[4];
        ATV_B.pcx_CANdb_ReceiveMessage_o9 =
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

  /* Update for RateTransition: '<Root>/Rate Transition24' */
  ATV_DW.RateTransition24_Buffer0 = ATV_B.Saturation_a;

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
  /* S-Function (psc_cpu_loading): '<S25>/psc_CpuLoading1' */
  /* S-Function Block: <S25>/psc_CpuLoading1
   * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  atv_cpu_loading = psc_get_cpu_loading();

  /* S-Function (psc_stack_used): '<S25>/psc_StackUsed' */
  /*
   * S-Function Block: <S25>/psc_StackUsed
   * [$Id: psc_stack_used.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  atv_stack_used = psc_get_used_stack_size();

  /* S-Function (pkn_task_duration): '<S25>/pkn_TaskDuration1' */
  /* S-Function Block: <S25>/pkn_TaskDuration1
   * [$Id: pkn_task_duration.tlc 34330 2013-07-01 12:56:28Z sbhattacharya $]
   */
  atv_task_duration_1s = pkn_get_task_duration(pkn_task_1000ms_task_hdl);

  /* S-Function (psc_cpu_loading): '<S25>/psc_CpuLoading2' */
  /* S-Function Block: <S25>/psc_CpuLoading2
   * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  atv_cpu_loading_max = psc_get_max_cpu_loading();

  /* S-Function (pkn_task_duration): '<S25>/pkn_TaskDuration2' */
  /* S-Function Block: <S25>/pkn_TaskDuration2
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
  /* S-Function Block: <S23>/pcfg_Config_M5xx
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

  /* Start for S-Function (pdx_digital_input): '<S7>/pdx_DigitalInput' */

  /* S-Function Block: <S7>/pdx_DigitalInput
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

  /* Start for RateTransition: '<Root>/Rate Transition6' */
  ATV_B.RateTransition6 = 0;

  /* Start for RateTransition: '<Root>/Rate Transition7' */
  ATV_B.RateTransition7 = 0;

  /* Start for RateTransition: '<Root>/Rate Transition10' */
  ATV_B.RateTransition10 = 0;

  /* Start for RateTransition: '<Root>/Rate Transition8' */
  ATV_B.RateTransition8 = 0;

  /* Start for RateTransition: '<Root>/Rate Transition9' */
  ATV_B.RateTransition9 = 0;

  /* Start for RateTransition: '<Root>/Rate Transition11' */
  ATV_B.RateTransition11 = 0;

  /* Start for RateTransition: '<Root>/Rate Transition12' */
  ATV_B.RateTransition12 = 0;

  /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage6' */

  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage6
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage6_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    498);

  /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage2' */

  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage2
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage2_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    817);

  /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage3' incorporates:
   *  Constant: '<S1>/atvc_maxDischCurr'
   *  Constant: '<S1>/atvc_maxRegenCurr'
   */

  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage3
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage3_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    818);

  /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage4' */

  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage4
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage4_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    785);

  /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage5' incorporates:
   *  Constant: '<S1>/atvc_maxDischCurr'
   *  Constant: '<S1>/atvc_maxRegenCurr'
   */

  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage5
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage5_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    786);

  /* Start for RateTransition: '<Root>/Rate Transition24' */
  ATV_B.RateTransition24 = 0;

  /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage7' incorporates:
   *  Constant: '<S1>/Constant2'
   *  Constant: '<S1>/Constant3'
   */

  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage7
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage7_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    801);

  /* Start for S-Function (pcx_candb_transmit_message): '<S1>/pcx_CANdb_TransmitMessage8' incorporates:
   *  Constant: '<S1>/Constant'
   */

  /* S-Function Block: <S1>/pcx_CANdb_TransmitMessage8
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage8_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    802);

  /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput' incorporates:
   *  Constant: '<S6>/Constant1'
   */

  /* S-Function Block: <S6>/pdx_DigitalOutput
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YL4,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput1' incorporates:
   *  Constant: '<S6>/Constant1'
   */

  /* S-Function Block: <S6>/pdx_DigitalOutput1
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YA1,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput2' incorporates:
   *  Constant: '<S6>/Constant1'
   */

  /* S-Function Block: <S6>/pdx_DigitalOutput2
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YB4,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput3' incorporates:
   *  Constant: '<S6>/Constant1'
   */

  /* S-Function Block: <S6>/pdx_DigitalOutput3
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_ZF2,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput4' incorporates:
   *  Constant: '<S6>/Constant1'
   */

  /* S-Function Block: <S6>/pdx_DigitalOutput4
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YA2,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput5' incorporates:
   *  Constant: '<S6>/Constant1'
   */

  /* S-Function Block: <S6>/pdx_DigitalOutput5
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YA3,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput6' incorporates:
   *  Constant: '<S6>/Constant1'
   */

  /* S-Function Block: <S6>/pdx_DigitalOutput6
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YA4,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput7' incorporates:
   *  Constant: '<S6>/Constant1'
   */

  /* S-Function Block: <S6>/pdx_DigitalOutput7
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_ZG2,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput8' */

  /* S-Function Block: <S6>/pdx_DigitalOutput8
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_XD1_ENABLE_PSU_HOLD,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S6>/pdx_DigitalOutput9' incorporates:
   *  Constant: '<S6>/Constant1'
   */

  /* S-Function Block: <S6>/pdx_DigitalOutput9
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_ZC1,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_pwm_output): '<S6>/pdx_PWMOutput' incorporates:
   *  Constant: '<S6>/Constant1'
   */

  /*
   * S-Function Block: <S6>/pdx_PWMOutput
   * [$Id: pdx_pwm_output.tlc 30730 2012-09-29 12:01:15Z jtough $]
   */
  (void) pdx_pwm_output(PIO_FFPOT_YK3,
                        2000.0,
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

  /* Start for S-Function (pcx_candb_receive_message): '<S5>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S5>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_f_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    549);

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

  /* Start for S-Function (pcx_can_config): '<S21>/pcx_CANConfiguration' */

  /* S-Function Block: <S21>/pcx_CANConfiguration
   * [$Id: pcx_can_config.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  pcx_config(PIO_CAN_YE4_YF4_A, PIO_CBAUD_500_KBPS);

  /* Start for S-Function (psc_app_build_date): '<S26>/psc_AppBuildDate' */

  /*
   * S-Function Block: <S26>/psc_AppBuildDate
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

  /* Start for S-Function (psc_app_version): '<S26>/psc_AppVersion' */

  /*
   * S-Function Block: <S26>/psc_AppVersion
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

  /* Start for S-Function (psc_boot_build_date): '<S27>/psc_BootBuildDate' */

  /*
   * S-Function Block: <S27>/psc_BootBuildDate
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

  /* Start for S-Function (psc_boot_version): '<S27>/psc_BootVersion' */

  /*
   * S-Function Block: <S27>/psc_BootVersion
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

  /* Start for S-Function (psc_prg_build_date): '<S28>/psc_PrgBuildDate' */

  /*
   * S-Function Block: <S28>/psc_PrgBuildDate
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

  /* Start for S-Function (psc_prg_version): '<S28>/psc_PrgVersion' */

  /*
   * S-Function Block: <S28>/psc_PrgVersion
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

  /* Start for S-Function (psc_platform_build_date): '<S29>/psc_PlatformBuildDate' */

  /*
   * S-Function Block: <S29>/psc_PlatformBuildDate
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

  /* Start for S-Function (psc_platform_version): '<S29>/psc_PlatformVersion' */

  /*
   * S-Function Block: <S29>/psc_PlatformVersion
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
  ATV_DW.RateTransition6_Buffer0 = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition7' */
  ATV_DW.RateTransition7_Buffer0 = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition10' */
  ATV_DW.RateTransition10_Buffer0 = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition8' */
  ATV_DW.RateTransition8_Buffer0 = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition9' */
  ATV_DW.RateTransition9_Buffer0 = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition11' */
  ATV_DW.RateTransition11_Buffer0 = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition12' */
  ATV_DW.RateTransition12_Buffer0 = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition24' */
  ATV_DW.RateTransition24_Buffer0 = 0;

  /* InitializeConditions for RateLimiter: '<S37>/Rate Limiter1' */
  ATV_DW.PrevY_k = 0U;

  /* InitializeConditions for RateLimiter: '<S37>/Rate Limiter' */
  ATV_DW.PrevY_l = 0U;

  /* InitializeConditions for RateLimiter: '<S37>/Rate Limiter2' */
  ATV_DW.PrevY = 0.0F;

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
  ATV_B.pcx_CANdb_ReceiveMessage_o7_p = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o8 = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o9_b = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o10 = 0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S5>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S5>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_f = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_m = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o6_n = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o7 = 0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S2>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S2>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_n = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_mv = 0;
  bms_pack_voltage = 0;
  ATV_B.atv_bms_pack_current = 0;
  ATV_B.atv_bms_pack_soh = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o9 = 0;

  /* SystemInitialize for Chart: '<S9>/VSM' */
  ATV_DW.is_CHG_CTRL = ATV_IN_NO_ACTIVE_CHILD_f;
  ATV_DW.temporalCounter_i3 = 0U;
  ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_f;
  ATV_DW.is_HEATER_CTRL = ATV_IN_NO_ACTIVE_CHILD_f;
  ATV_DW.is_HV_CTRL = ATV_IN_NO_ACTIVE_CHILD_f;
  ATV_DW.temporalCounter_i2 = 0U;
  ATV_DW.is_STARTTRIGGER = ATV_IN_NO_ACTIVE_CHILD_f;
  ATV_DW.temporalCounter_i1_j = 0U;
  ATV_DW.is_active_c3_ATV = 0U;
  ATV_DW.is_c3_ATV = ATV_IN_NO_ACTIVE_CHILD_f;

  /* SystemInitialize for Chart: '<S42>/PUMP LOGIC' */
  ATV_DW.is_PumpALogic = ATV_IN_NO_ACTIVE_CHILD_f;
  ATV_DW.is_PumpBLogic = ATV_IN_NO_ACTIVE_CHILD_f;
  ATV_DW.temporalCounter_i1_f = 0U;
  ATV_DW.is_active_c5_ATV = 0U;

  /* SystemInitialize for Chart: '<S37>/VSMGestioneIbrido' */
  ATV_DW.is_IceSM = ATV_IN_NO_ACTIVE_CHILD_f;
  ATV_DW.is_MonitoraggioStatoICE = ATV_IN_NO_ACTIVE_CHILD_f;
  ATV_DW.temporalCounter_i1 = 0U;
  ATV_DW.is_WarmUpIce = ATV_IN_NO_ACTIVE_CHILD_f;
  ATV_DW.temporalCounter_i2_m = 0U;
  ATV_DW.is_active_c2_ATV = 0U;

  /* SystemInitialize for Chart: '<S3>/Chart' */
  ATV_Chart_Init(&ATV_DW.sf_Chart);

  /* SystemInitialize for Chart: '<S4>/Chart' */
  ATV_Chart_Init(&ATV_DW.sf_Chart_b);

  /* SystemInitialize for Chart: '<S5>/Chart' */
  ATV_Chart_Init(&ATV_DW.sf_Chart_l);
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
  atv_xc1_raw_ain = 0.0;
  atv_xc4_raw_ain = 0.0;
  atv_xa3_brake_pedal_raw_ain = 0.0;
  atv_xa1_ain_throttle_raw = 0.0;
  atv_xd3_raw_ain = 0.0;
  atv_xe4_raw_ain = 0.0;
  atv_xe2_raw_ain = 0.0;
  atv_dbg_FAN_out = 0.0;
  atv_yg3_raw_ain = 0.0;
  bms_pack_voltage = 0.0;
  atv_stack_used = 0U;
  atv_task_duration_1s = 0U;
  atv_task_duration_1s_max = 0U;
  atv_xd1_key_ain = 0;
  atv_xe3_ain = 0;
  atv_brake_pedalX1000 = 0U;
  atv_throttleX1000 = 0U;
  atv_regen_x1000_rear = 0U;
  atv_motoring_x1000_rear = 0U;
  atv_motoring_x1000_rear_limited = 0U;
  atv_regen_x1000_front = 0U;
  atv_motoring_x1000_front = 0U;
  atv_motoring_x1000_front_limited = 0U;
  atv_footBrake_X1000_out = 0U;
  atv_tHROTTLEGen_X1000_out = 0U;
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
  atv_GenCurrentSetPoint = 0;
  atv_cpu_loading = 0U;
  atv_cpu_loading_max = 0U;
  atv_state_out = 0U;
  atv_sub_state_out = 0U;
  atv_IceSM = 0U;
  atv_IceRG = 0U;
  atv_key_signal = false;
  atv_za3_StartBtn_din = false;
  atv_fwd_mode_in = false;
  atv_rwd_mode_in = false;
  atv_brake_pedal_digital_in = false;
  atv_throttleRegOff = false;
  atv_fs1_in = false;
  atv_fs1_out = false;
  atv_4wd_din = false;
  atv_apu_req_in = false;
  atv_v_dbg_chg_req = false;
  atv_v_dbg_heater_req = false;
  atv_wakelock_out = false;
  atv_runLed_out = false;
  atv_en_dcdc_out = false;
  atv_IceKey_out = false;
  atv_IceShutdown_out = false;
  atv_IceOn = false;
  atv_IceFault = false;
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
  ATV_M->Sizes.numBlocks = (317);      /* Number of blocks */
  ATV_M->Sizes.numBlockIO = (104);     /* Number of block outputs */
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
