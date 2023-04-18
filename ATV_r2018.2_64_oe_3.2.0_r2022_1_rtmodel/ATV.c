/*
 * ATV.c
 *
 * Code generation for model "ATV".
 *
 * Model version              : 6.38
 * Simulink Coder version : 9.0 (R2018b) 24-May-2018
 * C source code generated on : Tue Apr 18 19:34:44 2023
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

/* Named constants for Chart: '<S38>/PUMP LOGIC' */
#define ATV_IN_NO_ACTIVE_CHILD_b       ((uint8_T)0U)
#define ATV_IN_Off                     ((uint8_T)1U)
#define ATV_IN_Run                     ((uint8_T)2U)
#define ATV_IN_Run60sec                ((uint8_T)3U)

/* Named constants for Chart: '<S34>/VSMGestioneIbrido' */
#define ATV_IN_AvviamentoIce           ((uint8_T)1U)
#define ATV_IN_IceFault                ((uint8_T)1U)
#define ATV_IN_Inizializzazione        ((uint8_T)2U)
#define ATV_IN_MonitoraggioICe         ((uint8_T)3U)
#define ATV_IN_ProceduraAvviamento     ((uint8_T)1U)
#define ATV_IN_ProceduraSpegnimento    ((uint8_T)2U)
#define ATV_IN_RegenerativeMode        ((uint8_T)1U)
#define ATV_IN_StarterMode             ((uint8_T)2U)
#define ATV_IN_Step1                   ((uint8_T)1U)
#define ATV_IN_Step2                   ((uint8_T)2U)
#define ATV_IN_Step3                   ((uint8_T)3U)
#define ATV_IN_Step4                   ((uint8_T)4U)
#define ATV_IN_StopAvviamento          ((uint8_T)3U)
#define ATV_IN_TimeoutAvviamentoIce    ((uint8_T)4U)
#define ATV_IN_WarmUpTermico           ((uint8_T)4U)
#define ATV_IN_iCEOff                  ((uint8_T)2U)
#define ATV_IN_iCEOn                   ((uint8_T)3U)

/* Named constants for Chart: '<S8>/VSM' */
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
real_T atv_xc1_raw_ain;                /* '<S6>/pai_BasicAnalogInput5' */
real_T atv_xc4_raw_ain;                /* '<S6>/pai_BasicAnalogInput6' */
real_T atv_xa3_brake_pedal_raw_ain;    /* '<S6>/pai_BasicAnalogInput4' */
real_T atv_dbg_FAN_out;                /* '<S38>/Switch1' */
real_T atv_xa1_ain_throttle_raw;       /* '<S6>/pai_BasicAnalogInput1' */
real_T atv_xe4_raw_ain;                /* '<S6>/pai_BasicAnalogInput8' */
real_T atv_xe2_raw_ain;                /* '<S6>/pai_BasicAnalogInput7' */
real_T atv_xd3_raw_ain;                /* '<S6>/pai_BasicAnalogInput3' */
real_T bms_pack_voltage;               /* '<S2>/pcx_CANdb_ReceiveMessage' */
uint32_T atv_stack_used;               /* '<S24>/psc_StackUsed' */
uint32_T atv_task_duration_1s;         /* '<S24>/pkn_TaskDuration1' */
uint32_T atv_task_duration_1s_max;     /* '<S24>/pkn_TaskDuration2' */
int32_T atv_xd1_key_ain;               /* '<S6>/Gain' */
int32_T atv_xe3_ain;                   /* '<S6>/Gain2' */
uint16_T atv_brake_pedalX1000;         /* '<S14>/Switch' */
uint16_T atv_throttleX1000;            /* '<S13>/Switch' */
uint16_T atv_app_code_year;            /* '<S25>/psc_AppBuildDate' */
uint16_T atv_app_code_month;           /* '<S25>/psc_AppBuildDate' */
uint16_T atv_app_code_day;             /* '<S25>/psc_AppBuildDate' */
uint16_T atv_app_code_major_ver;       /* '<S25>/psc_AppVersion' */
uint16_T atv_app_code_minor_ver;       /* '<S25>/psc_AppVersion' */
uint16_T atv_app_code_subminor_ver;    /* '<S25>/psc_AppVersion' */
uint16_T atv_boot_code_year;           /* '<S26>/psc_BootBuildDate' */
uint16_T atv_boot_code_month;          /* '<S26>/psc_BootBuildDate' */
uint16_T atv_boot_code_day;            /* '<S26>/psc_BootBuildDate' */
uint16_T atv_boot_code_major_ver;      /* '<S26>/psc_BootVersion' */
uint16_T atv_boot_code_minor_ver;      /* '<S26>/psc_BootVersion' */
uint16_T atv_boot_code_subminor_ver;   /* '<S26>/psc_BootVersion' */
uint16_T atv_prg_code_year;            /* '<S27>/psc_PrgBuildDate' */
uint16_T atv_prg_code_month;           /* '<S27>/psc_PrgBuildDate' */
uint16_T atv_prg_code_day;             /* '<S27>/psc_PrgBuildDate' */
uint16_T atv_prg_code_major_ver;       /* '<S27>/psc_PrgVersion' */
uint16_T atv_prg_code_minor_ver;       /* '<S27>/psc_PrgVersion' */
uint16_T atv_prg_code_subminor_ver;    /* '<S27>/psc_PrgVersion' */
uint16_T atv_platform_code_year;       /* '<S28>/psc_PlatformBuildDate' */
uint16_T atv_platform_code_month;      /* '<S28>/psc_PlatformBuildDate' */
uint16_T atv_platform_code_day;        /* '<S28>/psc_PlatformBuildDate' */
uint16_T atv_platform_code_major_ver;  /* '<S28>/psc_PlatformVersion' */
uint16_T atv_platform_code_minor_ver;  /* '<S28>/psc_PlatformVersion' */
uint16_T atv_platform_code_subminor_ver;/* '<S28>/psc_PlatformVersion' */
uint8_T atv_cpu_loading;               /* '<S24>/psc_CpuLoading1' */
uint8_T atv_cpu_loading_max;           /* '<S24>/psc_CpuLoading2' */
uint8_T atv_state_out;                 /* '<S8>/VSM' */
uint8_T atv_sub_state_out;             /* '<S8>/VSM' */
boolean_T atv_key_signal;              /* '<S30>/Compare' */
boolean_T atv_za3_StartBtn_din;        /* '<S6>/pdx_DigitalInput' */
boolean_T atv_fwd_mode_in;             /* '<S6>/Relay2' */
boolean_T atv_rwd_mode_in;             /* '<S6>/Relay3' */
boolean_T atv_brake_pedal_digital_in;  /* '<S6>/Relay1' */
boolean_T atv_fs1_in;                  /* '<S6>/Logical Operator1' */
boolean_T atv_4wd_din;                 /* '<S6>/Relay5' */
boolean_T atv_v_dbg_chg_req;           /* '<S3>/Switch1' */
boolean_T atv_v_dbg_heater_req;        /* '<S3>/Switch2' */
boolean_T atv_apu_req_in;              /* '<S6>/Relay4' */
boolean_T atv_wakelock_out;            /* '<S8>/VSM' */
boolean_T atv_runLed_out;              /* '<S8>/VSM' */
boolean_T atv_en_dcdc_out;             /* '<S8>/VSM' */
boolean_T atv_dbg_pumpB_out;           /* '<S38>/PUMP LOGIC' */

/* Exported block parameters */
OE_CAL real_T atvc_an_in_sel_his = 0.25;/* Variable: atvc_an_in_sel_his
                                         * Referenced by:
                                         *   '<S6>/Relay2'
                                         *   '<S6>/Relay3'
                                         *   '<S6>/Relay4'
                                         *   '<S6>/Relay5'
                                         */
OE_CAL real_T atvc_an_in_sel_th = 2.5; /* Variable: atvc_an_in_sel_th
                                        * Referenced by:
                                        *   '<S6>/Relay2'
                                        *   '<S6>/Relay3'
                                        *   '<S6>/Relay4'
                                        *   '<S6>/Relay5'
                                        */
OE_CAL uint16_T atvc_brakePedalHis = 0U;/* Variable: atvc_brakePedalHis
                                         * Referenced by: '<S6>/Relay1'
                                         */
OE_CAL uint16_T atvc_brakePedalOn = 100U;/* Variable: atvc_brakePedalOn
                                          * Referenced by: '<S6>/Relay1'
                                          */
OE_CAL uint16_T atvc_maxDischCurr = 100U;/* Variable: atvc_maxDischCurr
                                          * Referenced by: '<S1>/atvc_maxDischCurr'
                                          */
OE_CAL uint16_T atvc_maxRegenCurr = 50U;/* Variable: atvc_maxRegenCurr
                                         * Referenced by: '<S1>/atvc_maxRegenCurr'
                                         */
OE_CAL uint16_T atvc_throttleNeutralPoint = 100U;/* Variable: atvc_throttleNeutralPoint
                                                  * Referenced by:
                                                  *   '<S6>/Constant'
                                                  *   '<S31>/atvc_throttleNeutralPoint'
                                                  */
OE_CAL uint8_T atvc_dcMinFan = 30U;    /* Variable: atvc_dcMinFan
                                        * Referenced by: '<S39>/Constant1'
                                        */
OE_CAL uint8_T atvc_maxTempInv = 60U;  /* Variable: atvc_maxTempInv
                                        * Referenced by: '<S29>/atvc_maxTempInv'
                                        */
OE_CAL uint8_T atvc_maxTempMotor = 60U;/* Variable: atvc_maxTempMotor
                                        * Referenced by: '<S29>/atvc_maxTempMotor'
                                        */
OE_CAL uint8_T atvc_minTempInv = 40U;  /* Variable: atvc_minTempInv
                                        * Referenced by: '<S29>/atvc_minTempInv'
                                        */
OE_CAL uint8_T atvc_minTempMotor = 80U;/* Variable: atvc_minTempMotor
                                        * Referenced by: '<S29>/atvc_minTempMotor'
                                        */
OE_CAL uint8_T atvc_socLimitSave = 5U; /* Variable: atvc_socLimitSave
                                        * Referenced by: '<S29>/atvc_socLimitSave'
                                        */
OE_CAL uint8_T atvc_tempSwitchOffFan = 48U;/* Variable: atvc_tempSwitchOffFan
                                            * Referenced by: '<S39>/Relay1'
                                            */
OE_CAL uint8_T atvc_tempSwitchOnFan = 50U;/* Variable: atvc_tempSwitchOnFan
                                           * Referenced by:
                                           *   '<S38>/atvc_tempSwitchOnFan'
                                           *   '<S39>/Relay1'
                                           */
OE_CAL uint8_T atvc_velocityLimitFwd = 10U;/* Variable: atvc_velocityLimitFwd
                                            * Referenced by: '<S8>/atvc_velocityLimitFwd'
                                            */
OE_CAL uint8_T atvc_velocityLimitRwd = 5U;/* Variable: atvc_velocityLimitRwd
                                           * Referenced by: '<S8>/atvc_velocityLimitRwd'
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
static void ATV_ProceduraAvviamento(void);
static void rate_monotonic_scheduler(void);
PUT_DEBOUNCE_TIME_T pdx_DigitalInput_detm_wrk_data;
PCX_HANDLE_T pcx_CANdb_TransmitMessage_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage1_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage6_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage2_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage3_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage4_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage5_msg_handle;
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

/* Output and update for function-call system: '<S66>/GestioneIbrido.ProceduraAvviamento.StarterMode.IceRun' */
void GestioneIbridoProceduraAvvi(uint16_T rtu_rPMG,
  B_GestioneIbridoProceduraAvvi_T *localB)
{
  /* Switch: '<S67>/Switch' incorporates:
   *  Constant: '<S67>/ATVC_rPMStart'
   *  RelationalOperator: '<S67>/Relational Operator'
   */
  localB->Switch = (rtu_rPMG > 1000);
}

/* Function for Chart: '<S8>/VSM' */
static void ATV_KEY_ON(void)
{
  boolean_T tmp;

  /* During 'KEY_ON': '<S37>:20' */
  tmp = !atv_key_signal;
  if (tmp && (ATV_DW.is_HV_CTRL != ATV_IN_HVM_ON) && (ATV_DW.is_HV_CTRL !=
       ATV_IN_HV_ON) && (ATV_DW.is_HV_CTRL != ATV_IN_HV_WAIT_INV_OFF)) {
    /* Transition: '<S37>:23' */
    /* Transition: '<S37>:25' */
    /* Exit Internal 'KEY_ON': '<S37>:20' */
    /* Exit Internal 'STARTTRIGGER': '<S37>:119' */
    ATV_DW.is_STARTTRIGGER = ATV_IN_NO_ACTIVE_CHILD_b;

    /* Exit Internal 'DRIVE_ENABLE': '<S37>:85' */
    if (ATV_DW.is_DRIVE_ENABLE == ATV_IN_DRIVE_ENABLED) {
      /* Exit 'DRIVE_ENABLED': '<S37>:88' */
      atv_runLed_out = false;
      ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_b;
    } else {
      ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_b;
    }

    /* Exit Internal 'HEATER_CTRL': '<S37>:72' */
    ATV_DW.is_HEATER_CTRL = ATV_IN_NO_ACTIVE_CHILD_b;

    /* Exit Internal 'CHG_CTRL': '<S37>:68' */
    ATV_DW.is_CHG_CTRL = ATV_IN_NO_ACTIVE_CHILD_b;

    /* Exit Internal 'HV_CTRL': '<S37>:34' */
    ATV_DW.is_HV_CTRL = ATV_IN_NO_ACTIVE_CHILD_b;
    ATV_DW.is_c3_ATV = ATV_IN_PRE_SLEEP;
    ATV_DW.temporalCounter_i1_ji = 0U;

    /* Entry 'PRE_SLEEP': '<S37>:3' */
    atv_state_out = 2U;
    atv_sub_state_out = 0U;
  } else {
    /* During 'HV_CTRL': '<S37>:34' */
    switch (ATV_DW.is_HV_CTRL) {
     case ATV_IN_HVM_ON:
      /* During 'HVM_ON': '<S37>:54' */
      if (ATV_DW.temporalCounter_i2_j >= 50U) {
        /* Transition: '<S37>:56' */
        ATV_DW.is_HV_CTRL = ATV_IN_HV_ON;

        /* Entry 'HV_ON': '<S37>:53' */
        atv_sub_state_out = 3U;
        ATV_B.hvp_ctrl_out = true;
        ATV_B.hvm_ctrl_out = true;
      }
      break;

     case ATV_IN_HV_ARMED:
      /* During 'HV_ARMED': '<S37>:83' */
      if (ATV_B.LogicalOperator3 && (!ATV_B.RateTransition4)) {
        /* Transition: '<S37>:51' */
        ATV_DW.is_HV_CTRL = ATV_IN_HVM_ON;
        ATV_DW.temporalCounter_i2_j = 0U;

        /* Entry 'HVM_ON': '<S37>:54' */
        ATV_DW.startBtnArmed = false;
        atv_sub_state_out = 2U;
        ATV_B.hvp_ctrl_out = false;
        ATV_B.hvm_ctrl_out = true;
      }
      break;

     case ATV_IN_HV_OFF:
      /* During 'HV_OFF': '<S37>:52' */
      if ((!ATV_B.LogicalOperator3) && (!ATV_B.RateTransition4)) {
        /* Transition: '<S37>:84' */
        ATV_DW.is_HV_CTRL = ATV_IN_HV_ARMED;

        /* Entry 'HV_ARMED': '<S37>:83' */
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
      /* During 'HV_ON': '<S37>:53' */
      if ((ATV_DW.startBtnArmed && ATV_B.LogicalOperator3) ||
          ATV_B.RateTransition4 || tmp) {
        /* Transition: '<S37>:48' */
        ATV_DW.is_HV_CTRL = ATV_IN_HV_WAIT_INV_OFF;
        ATV_DW.temporalCounter_i2_j = 0U;

        /* Entry 'HV_WAIT_INV_OFF': '<S37>:98' */
        atv_sub_state_out = 4U;
        ATV_B.hvp_ctrl_out = true;
        ATV_B.hvm_ctrl_out = true;
      }
      break;

     default:
      /* During 'HV_WAIT_INV_OFF': '<S37>:98' */
      if (ATV_DW.temporalCounter_i2_j >= 50U) {
        /* Transition: '<S37>:99' */
        /* Transition: '<S37>:47' */
        ATV_DW.is_HV_CTRL = ATV_IN_HV_OFF;

        /* Entry 'HV_OFF': '<S37>:52' */
      }
      break;
    }

    /* During 'CHG_CTRL': '<S37>:68' */
    switch (ATV_DW.is_CHG_CTRL) {
     case ATV_IN_CHG_OFF:
      /* During 'CHG_OFF': '<S37>:62' */
      if (ATV_B.RateTransition4 && ((!ATV_B.hvp_ctrl_out) ||
           (ATV_DW.temporalCounter_i3 < 100U))) {
        /* Transition: '<S37>:64' */
        ATV_DW.is_CHG_CTRL = ATV_IN_HVM_ON_m;
        ATV_DW.temporalCounter_i3 = 0U;

        /* Entry 'HVM_ON': '<S37>:66' */
      }
      break;

     case ATV_IN_HVM_ON_m:
      /* During 'HVM_ON': '<S37>:66' */
      if ((!ATV_B.RateTransition4) || ATV_B.hvp_ctrl_out) {
        /* Transition: '<S37>:61' */
        ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
        ATV_DW.temporalCounter_i3 = 0U;

        /* Entry 'CHG_OFF': '<S37>:62' */
        ATV_B.chg_ctrl_out = false;
        ATV_B.hvm_ctrl_out = false;
      } else if (ATV_DW.temporalCounter_i3 >= 150U) {
        /* Transition: '<S37>:63' */
        ATV_DW.is_CHG_CTRL = ATV_IN_HV_ON_o;

        /* Entry 'HV_ON': '<S37>:65' */
      } else {
        ATV_B.chg_ctrl_out = false;
        ATV_B.hvm_ctrl_out = true;
      }
      break;

     default:
      /* During 'HV_ON': '<S37>:65' */
      if ((!ATV_B.RateTransition4) || ATV_B.hvp_ctrl_out) {
        /* Transition: '<S37>:59' */
        /* Transition: '<S37>:60' */
        ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
        ATV_DW.temporalCounter_i3 = 0U;

        /* Entry 'CHG_OFF': '<S37>:62' */
        ATV_B.chg_ctrl_out = false;
        ATV_B.hvm_ctrl_out = false;
      } else {
        ATV_B.chg_ctrl_out = true;
        ATV_B.hvm_ctrl_out = true;
      }
      break;
    }

    /* During 'HEATER_CTRL': '<S37>:72' */
    if (ATV_DW.is_HEATER_CTRL == ATV_IN_HEATER_OFF) {
      ATV_B.heater_ctrl_out = false;

      /* During 'HEATER_OFF': '<S37>:69' */
      if (ATV_B.RateTransition5) {
        /* Transition: '<S37>:78' */
        ATV_DW.is_HEATER_CTRL = ATV_IN_HVM_ON_m;

        /* Entry 'HVM_ON': '<S37>:73' */
        ATV_B.heater_ctrl_out = true;
      }
    } else {
      ATV_B.heater_ctrl_out = true;

      /* During 'HVM_ON': '<S37>:73' */
      if (!ATV_B.RateTransition5) {
        /* Transition: '<S37>:77' */
        ATV_DW.is_HEATER_CTRL = ATV_IN_HEATER_OFF;

        /* Entry 'HEATER_OFF': '<S37>:69' */
        ATV_B.heater_ctrl_out = false;
      }
    }

    /* During 'DRIVE_ENABLE': '<S37>:85' */
    switch (ATV_DW.is_DRIVE_ENABLE) {
     case ATV_IN_DRIVE_ENABLED:
      atv_state_out = 5U;
      ATV_B.en_inv_rear_out = true;
      ATV_B.en_inv_front_out = true;
      ATV_B.en_inv_gen_out = true;

      /* During 'DRIVE_ENABLED': '<S37>:88' */
      if (ATV_DW.is_HV_CTRL != ATV_IN_HV_ON) {
        /* Transition: '<S37>:92' */
        /* Transition: '<S37>:93' */
        /* Transition: '<S37>:94' */
        /* Exit 'DRIVE_ENABLED': '<S37>:88' */
        atv_runLed_out = false;
        ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;

        /* Entry 'IDLE': '<S37>:87' */
        atv_state_out = 4U;
        ATV_B.en_inv_rear_out = false;
        ATV_B.en_inv_front_out = false;
        ATV_B.en_inv_gen_out = false;
      }
      break;

     case ATV_IN_HV_DEL:
      /* During 'HV_DEL': '<S37>:96' */
      if (ATV_DW.temporalCounter_i1_ji >= 50U) {
        /* Transition: '<S37>:97' */
        ATV_DW.is_DRIVE_ENABLE = ATV_IN_DRIVE_ENABLED;

        /* Entry 'DRIVE_ENABLED': '<S37>:88' */
        atv_state_out = 5U;
        ATV_B.en_inv_rear_out = true;
        ATV_B.en_inv_front_out = true;
        ATV_B.en_inv_gen_out = true;
        atv_runLed_out = true;
      } else {
        if (ATV_DW.is_HV_CTRL != ATV_IN_HV_ON) {
          /* Transition: '<S37>:86' */
          ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;

          /* Entry 'IDLE': '<S37>:87' */
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

      /* During 'IDLE': '<S37>:87' */
      if (ATV_DW.is_HV_CTRL == ATV_IN_HV_ON) {
        /* Transition: '<S37>:95' */
        ATV_DW.is_DRIVE_ENABLE = ATV_IN_HV_DEL;
        ATV_DW.temporalCounter_i1_ji = 0U;
      }
      break;
    }

    /* During 'STARTTRIGGER': '<S37>:119' */
    if (ATV_DW.is_STARTTRIGGER == ATV_IN_STARTTRIGGER_OFF) {
      /* During 'STARTTRIGGER_OFF': '<S37>:117' */
      if (!ATV_B.LogicalOperator3) {
        /* Transition: '<S37>:114' */
        ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_ON;

        /* Entry 'STARTTRIGGER_ON': '<S37>:118' */
        ATV_DW.startBtnArmed = true;
      }
    } else {
      /* During 'STARTTRIGGER_ON': '<S37>:118' */
      if (ATV_B.LogicalOperator3) {
        /* Transition: '<S37>:116' */
        ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_OFF;
      }
    }
  }
}

/* Function for Chart: '<S38>/PUMP LOGIC' */
static real_T ATV_Off(boolean_T TInverterLow, boolean_T TMotorLow)
{
  real_T PumpSt;

  /* Truth Table Function 'Off': '<S40>:77' */
  if (TInverterLow && TMotorLow && ATV_B.RelationalOperator5) {
    /* Condition '#1': '<S40>:77:10' */
    /* Condition '#2': '<S40>:77:14' */
    /* Condition '#3': '<S40>:77:18' */
    /* Action '1': '<S40>:77:30' */
    PumpSt = 0.0;
  } else {
    /* Action '2': '<S40>:77:36' */
    PumpSt = 1.0;
  }

  return PumpSt;
}

/* Function for Chart: '<S38>/PUMP LOGIC' */
static real_T ATV_On(boolean_T TInverterHi, boolean_T TMotorHi)
{
  real_T PumpSt;

  /* Truth Table Function 'On': '<S40>:92' */
  if (TInverterHi) {
    /* Condition '#1': '<S40>:92:10' */
    /* Action '1': '<S40>:92:34' */
    PumpSt = 1.0;
  } else if (TMotorHi) {
    /* Condition '#2': '<S40>:92:14' */
    /* Action '1': '<S40>:92:34' */
    PumpSt = 1.0;
  } else if (ATV_B.RelationalOperator4) {
    /* Condition '#3': '<S40>:92:18' */
    /* Action '1': '<S40>:92:34' */
    PumpSt = 1.0;
  } else {
    /* Action '2': '<S40>:92:40' */
    PumpSt = 0.0;
  }

  return PumpSt;
}

/* Function for Chart: '<S34>/VSMGestioneIbrido' */
static void ATV_ProceduraAvviamento(void)
{
  /* During 'ProceduraAvviamento': '<S66>:191' */
  if (((ATV_DW.ReqGen_prev != ATV_DW.ReqGen_start) && (!ATV_DW.ReqGen_start)) ||
      ATV_DW.ShutDownHybrid) {
    /* Transition: '<S66>:194' */
    /* Exit Internal 'ProceduraAvviamento': '<S66>:191' */
    if (ATV_DW.is_ProceduraAvviamento == ATV_IN_StarterMode) {
      /* Exit Internal 'StarterMode': '<S66>:67' */
      ATV_DW.is_StarterMode = ATV_IN_NO_ACTIVE_CHILD_b;

      /* Exit 'StarterMode': '<S66>:67' */
      ATV_DW.is_ProceduraAvviamento = ATV_IN_NO_ACTIVE_CHILD_b;
    } else {
      /* Exit Internal 'RegenerativeMode': '<S66>:167' */
      ATV_DW.is_RegenerativeMode = ATV_IN_NO_ACTIVE_CHILD_b;
      ATV_DW.is_ProceduraAvviamento = ATV_IN_NO_ACTIVE_CHILD_b;
    }

    ATV_DW.is_GestioneIbrido = ATV_IN_ProceduraSpegnimento;

    /* Entry 'ProceduraSpegnimento': '<S66>:193' */
  } else {
    switch (ATV_DW.is_ProceduraAvviamento) {
     case ATV_IN_RegenerativeMode:
      /* During 'RegenerativeMode': '<S66>:167' */
      switch (ATV_DW.is_RegenerativeMode) {
       case ATV_IN_Step1:
        /* During 'Step1': '<S66>:202' */
        if (ATV_DW.temporalCounter_i1 >= 500U) {
          /* Transition: '<S66>:206' */
          ATV_DW.is_RegenerativeMode = ATV_IN_Step2;
          ATV_DW.temporalCounter_i1 = 0U;

          /* Entry 'Step2': '<S66>:204' */
        }
        break;

       case ATV_IN_Step2:
        /* During 'Step2': '<S66>:204' */
        if (ATV_DW.temporalCounter_i1 >= 500U) {
          /* Transition: '<S66>:207' */
          ATV_DW.is_RegenerativeMode = ATV_IN_Step3;
          ATV_DW.temporalCounter_i1 = 0U;

          /* Entry 'Step3': '<S66>:208' */
        }
        break;

       case ATV_IN_Step3:
        /* During 'Step3': '<S66>:208' */
        if (ATV_DW.temporalCounter_i1 >= 500U) {
          /* Transition: '<S66>:210' */
          ATV_DW.is_RegenerativeMode = ATV_IN_Step4;

          /* Entry 'Step4': '<S66>:209' */
        }
        break;

       default:
        /* During 'Step4': '<S66>:209' */
        break;
      }
      break;

     case ATV_IN_StarterMode:
      /* During 'StarterMode': '<S66>:67' */
      switch (ATV_DW.is_StarterMode) {
       case ATV_IN_AvviamentoIce:
        /* During 'AvviamentoIce': '<S66>:11' */
        if (ATV_DW.temporalCounter_i1 >= 300U) {
          /* Transition: '<S66>:123' */
          ATV_DW.is_StarterMode = ATV_IN_TimeoutAvviamentoIce;
          ATV_DW.temporalCounter_i1 = 0U;

          /* Entry 'TimeoutAvviamentoIce': '<S66>:215' */
        } else {
          /* Simulink Function 'IceRun': '<S66>:114' */
          ATV_B.rPMG = 0U;

          /* Outputs for Function Call SubSystem: '<S66>/GestioneIbrido.ProceduraAvviamento.StarterMode.IceRun' */
          GestioneIbridoProceduraAvvi(ATV_B.rPMG,
            &ATV_B.GestioneIbridoProceduraAvviamen);

          /* End of Outputs for SubSystem: '<S66>/GestioneIbrido.ProceduraAvviamento.StarterMode.IceRun' */
          ATV_DW.IceStatus = ATV_B.GestioneIbridoProceduraAvviamen.Switch;
        }
        break;

       case ATV_IN_Inizializzazione:
        /* During 'Inizializzazione': '<S66>:6' */
        if ((ATV_DW.ReqGen_prev != ATV_DW.ReqGen_start) && ATV_DW.ReqGen_start)
        {
          /* Transition: '<S66>:9' */
          ATV_DW.is_StarterMode = ATV_IN_AvviamentoIce;
          ATV_DW.temporalCounter_i1 = 0U;

          /* Entry 'AvviamentoIce': '<S66>:11' */
        }
        break;

       case ATV_IN_MonitoraggioICe:
        /* During 'MonitoraggioICe': '<S66>:122' */
        if (ATV_DW.temporalCounter_i1 >= 100U) {
          /* Transition: '<S66>:125' */
          ATV_DW.IceOn = true;
          ATV_DW.is_StarterMode = ATV_IN_NO_ACTIVE_CHILD_b;

          /* Exit 'StarterMode': '<S66>:67' */
          ATV_DW.is_ProceduraAvviamento = ATV_IN_StopAvviamento;
          ATV_DW.temporalCounter_i1 = 0U;

          /* Entry 'StopAvviamento': '<S66>:185' */
        } else if ((!ATV_DW.IceStatus) && atv_apu_req_in &&
                   (ATV_DW.temporalCounter_i1 >= 300U)) {
          /* Transition: '<S66>:96' */
          /* Transition: '<S66>:198' */
          /* Transition: '<S66>:196' */
          /* Transition: '<S66>:165' */
          ATV_DW.is_StarterMode = ATV_IN_AvviamentoIce;
          ATV_DW.temporalCounter_i1 = 0U;

          /* Entry 'AvviamentoIce': '<S66>:11' */
        } else {
          /* Simulink Function 'IceRun': '<S66>:114' */
          ATV_B.rPMG = 0U;

          /* Outputs for Function Call SubSystem: '<S66>/GestioneIbrido.ProceduraAvviamento.StarterMode.IceRun' */
          GestioneIbridoProceduraAvvi(ATV_B.rPMG,
            &ATV_B.GestioneIbridoProceduraAvviamen);

          /* End of Outputs for SubSystem: '<S66>/GestioneIbrido.ProceduraAvviamento.StarterMode.IceRun' */
          ATV_DW.IceStatus = ATV_B.GestioneIbridoProceduraAvviamen.Switch;
        }
        break;

       default:
        /* During 'TimeoutAvviamentoIce': '<S66>:215' */
        if ((!ATV_DW.IceStatus) && atv_apu_req_in && (ATV_DW.temporalCounter_i1 >=
             300U)) {
          /* Transition: '<S66>:217' */
          /* Transition: '<S66>:220' */
          /* Transition: '<S66>:196' */
          /* Transition: '<S66>:165' */
          ATV_DW.is_StarterMode = ATV_IN_AvviamentoIce;
          ATV_DW.temporalCounter_i1 = 0U;

          /* Entry 'AvviamentoIce': '<S66>:11' */
        } else if (ATV_DW.IceStatus) {
          /* Transition: '<S66>:216' */
          ATV_DW.is_StarterMode = ATV_IN_MonitoraggioICe;
          ATV_DW.temporalCounter_i1 = 0U;

          /* Entry 'MonitoraggioICe': '<S66>:122' */
        } else {
          /* Simulink Function 'IceRun': '<S66>:114' */
          ATV_B.rPMG = 0U;

          /* Outputs for Function Call SubSystem: '<S66>/GestioneIbrido.ProceduraAvviamento.StarterMode.IceRun' */
          GestioneIbridoProceduraAvvi(ATV_B.rPMG,
            &ATV_B.GestioneIbridoProceduraAvviamen);

          /* End of Outputs for SubSystem: '<S66>/GestioneIbrido.ProceduraAvviamento.StarterMode.IceRun' */
          ATV_DW.IceStatus = ATV_B.GestioneIbridoProceduraAvviamen.Switch;
        }
        break;
      }
      break;

     case ATV_IN_StopAvviamento:
      /* During 'StopAvviamento': '<S66>:185' */
      if (ATV_DW.temporalCounter_i1 >= 50U) {
        /* Transition: '<S66>:186' */
        ATV_DW.is_ProceduraAvviamento = ATV_IN_WarmUpTermico;

        /* Entry 'WarmUpTermico': '<S66>:102' */
      }
      break;

     default:
      /* During 'WarmUpTermico': '<S66>:102' */
      break;
    }
  }
}

/* Model output function for TID0 */
static void ATV_output0(void)          /* Sample time: [0.01s, 0.0s] */
{
  boolean_T rtb_Compare;
  uint8_T rtb_Gain_d;
  real_T rtb_Gain;
  boolean_T RelationalOperator6;
  boolean_T RelationalOperator8;
  boolean_T PumpACtrl;
  int32_T PumpBOn;
  int64m_T tmp;
  int64m_T tmp_0;
  uint32_T tmp_1;
  uint32_T tmp_2;
  int96m_T tmp_3;
  int64m_T tmp_4;
  int64m_T tmp_5;
  int64m_T tmp_6;
  int64m_T tmp_7;
  int96m_T tmp_8;
  int64m_T tmp_9;
  int64m_T tmp_a;
  int32_T u0_tmp;
  static int64m_T tmp_b = { { 0U, 0U } /* chunks */
  };

  boolean_T guard1 = false;

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

  /* RelationalOperator: '<S30>/Compare' incorporates:
   *  Constant: '<S30>/Constant'
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

  /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput5' */
  /* S-Function Block: <S6>/pai_BasicAnalogInput5
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XC1, &adc, FALSE);
    atv_xc1_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Relay: '<S6>/Relay2' incorporates:
   *  Relay: '<S6>/Relay3'
   */
  rtb_Gain = atvc_an_in_sel_th + atvc_an_in_sel_his;
  if (atv_xc1_raw_ain >= rtb_Gain) {
    ATV_DW.Relay2_Mode = true;
  } else {
    if (atv_xc1_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
      ATV_DW.Relay2_Mode = false;
    }
  }

  atv_fwd_mode_in = !ATV_DW.Relay2_Mode;

  /* End of Relay: '<S6>/Relay2' */

  /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput6' */
  /* S-Function Block: <S6>/pai_BasicAnalogInput6
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XC4, &adc, FALSE);
    atv_xc4_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Relay: '<S6>/Relay3' */
  if (atv_xc4_raw_ain >= rtb_Gain) {
    ATV_DW.Relay3_Mode = true;
  } else {
    if (atv_xc4_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
      ATV_DW.Relay3_Mode = false;
    }
  }

  atv_rwd_mode_in = !ATV_DW.Relay3_Mode;

  /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput4' */
  /* S-Function Block: <S6>/pai_BasicAnalogInput4
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XA3, &adc, FALSE);
    atv_xa3_brake_pedal_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Switch: '<S14>/Switch' incorporates:
   *  Constant: '<S16>/Lower Limit'
   *  Constant: '<S16>/Upper Limit'
   *  Logic: '<S16>/AND'
   *  RelationalOperator: '<S16>/Lower Test'
   *  RelationalOperator: '<S16>/Upper Test'
   */
  if ((0.45 <= atv_xa3_brake_pedal_raw_ain) && (atv_xa3_brake_pedal_raw_ain <=
       4.55)) {
    /* Saturate: '<S14>/Saturation' */
    if (atv_xa3_brake_pedal_raw_ain > 4.5) {
      rtb_Gain = 4.5;
    } else if (atv_xa3_brake_pedal_raw_ain < 0.5) {
      rtb_Gain = 0.5;
    } else {
      rtb_Gain = atv_xa3_brake_pedal_raw_ain;
    }

    /* End of Saturate: '<S14>/Saturation' */

    /* Gain: '<S14>/Gain' incorporates:
     *  Constant: '<S14>/Constant1'
     *  Sum: '<S14>/Add'
     */
    rtb_Gain = floor((rtb_Gain - 0.5) * 750.0);
    if (rtIsNaN(rtb_Gain)) {
      atv_brake_pedalX1000 = 0U;
    } else {
      atv_brake_pedalX1000 = (uint16_T)fmod(rtb_Gain, 65536.0);
    }

    /* Saturate: '<S14>/Saturation1' */
    if (atv_brake_pedalX1000 >= 1000) {
      /* Gain: '<S14>/Gain' */
      atv_brake_pedalX1000 = 1000U;
    }

    /* End of Saturate: '<S14>/Saturation1' */
  } else {
    /* Gain: '<S14>/Gain' incorporates:
     *  Constant: '<S14>/Constant'
     */
    atv_brake_pedalX1000 = 0U;
  }

  /* End of Switch: '<S14>/Switch' */

  /* Relay: '<S6>/Relay1' */
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

  /* End of Relay: '<S6>/Relay1' */

  /* Logic: '<S8>/Logical Operator3' incorporates:
   *  Logic: '<S6>/Logical Operator'
   *  Logic: '<S8>/Logical Operator1'
   *  Logic: '<S8>/Logical Operator2'
   *  Logic: '<S8>/Logical Operator4'
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

  /* Chart: '<S8>/VSM' */
  if (ATV_DW.temporalCounter_i1_ji < 127U) {
    ATV_DW.temporalCounter_i1_ji++;
  }

  if (ATV_DW.temporalCounter_i2_j < 63U) {
    ATV_DW.temporalCounter_i2_j++;
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
    /* Transition: '<S37>:4' */
    ATV_DW.is_c3_ATV = ATV_IN_SLEEP;

    /* Entry 'SLEEP': '<S37>:9' */
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

      /* During 'INIT': '<S37>:5' */
      if (!atv_key_signal) {
        /* Transition: '<S37>:17' */
        ATV_DW.is_c3_ATV = ATV_IN_PRE_SLEEP;
        ATV_DW.temporalCounter_i1_ji = 0U;

        /* Entry 'PRE_SLEEP': '<S37>:3' */
        atv_state_out = 2U;
        atv_sub_state_out = 0U;
      } else {
        if (ATV_DW.temporalCounter_i1_ji >= 100U) {
          /* Transition: '<S37>:22' */
          ATV_DW.is_c3_ATV = ATV_IN_KEY_ON;

          /* Entry 'KEY_ON': '<S37>:20' */
          /* Entry Internal 'KEY_ON': '<S37>:20' */
          /* Entry Internal 'HV_CTRL': '<S37>:34' */
          /* Transition: '<S37>:82' */
          ATV_DW.is_HV_CTRL = ATV_IN_HV_OFF;

          /* Entry 'HV_OFF': '<S37>:52' */
          /* Entry Internal 'CHG_CTRL': '<S37>:68' */
          /* Transition: '<S37>:67' */
          ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
          ATV_DW.temporalCounter_i3 = 0U;

          /* Entry 'CHG_OFF': '<S37>:62' */
          ATV_B.chg_ctrl_out = false;
          ATV_B.hvm_ctrl_out = false;

          /* Entry Internal 'HEATER_CTRL': '<S37>:72' */
          /* Transition: '<S37>:74' */
          ATV_DW.is_HEATER_CTRL = ATV_IN_HEATER_OFF;

          /* Entry 'HEATER_OFF': '<S37>:69' */
          ATV_B.heater_ctrl_out = false;

          /* Entry Internal 'DRIVE_ENABLE': '<S37>:85' */
          /* Transition: '<S37>:91' */
          ATV_DW.is_DRIVE_ENABLE = ATV_IN_IDLE;

          /* Entry 'IDLE': '<S37>:87' */
          atv_state_out = 4U;
          ATV_B.en_inv_rear_out = false;
          ATV_B.en_inv_front_out = false;
          ATV_B.en_inv_gen_out = false;

          /* Entry Internal 'STARTTRIGGER': '<S37>:119' */
          /* Transition: '<S37>:115' */
          ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_OFF;
        }
      }
      break;

     case ATV_IN_KEY_ON:
      ATV_KEY_ON();
      break;

     case ATV_IN_PRE_SLEEP:
      atv_state_out = 2U;

      /* During 'PRE_SLEEP': '<S37>:3' */
      if (atv_key_signal) {
        /* Transition: '<S37>:19' */
        ATV_DW.is_c3_ATV = ATV_IN_INIT;
        ATV_DW.temporalCounter_i1_ji = 0U;

        /* Entry 'INIT': '<S37>:5' */
        atv_state_out = 3U;
        atv_sub_state_out = 0U;
        atv_wakelock_out = true;
        atv_en_dcdc_out = true;
      } else {
        if (ATV_DW.temporalCounter_i1_ji >= 25U) {
          /* Transition: '<S37>:16' */
          ATV_DW.is_c3_ATV = ATV_IN_SLEEP;

          /* Entry 'SLEEP': '<S37>:9' */
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

      /* During 'SLEEP': '<S37>:9' */
      if (atv_key_signal) {
        /* Transition: '<S37>:12' */
        ATV_DW.is_c3_ATV = ATV_IN_INIT;
        ATV_DW.temporalCounter_i1_ji = 0U;

        /* Entry 'INIT': '<S37>:5' */
        atv_state_out = 3U;
        atv_sub_state_out = 0U;
        atv_wakelock_out = true;
        atv_en_dcdc_out = true;
      }
      break;
    }
  }

  /* End of Chart: '<S8>/VSM' */

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
   *  RateTransition: '<Root>/Rate Transition10'
   *  RateTransition: '<Root>/Rate Transition6'
   *  RateTransition: '<Root>/Rate Transition7'
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
    ATV_B.RateTransition7 = ATV_DW.RateTransition7_Buffer0;
    ATV_B.RateTransition10 = ATV_DW.RateTransition10_Buffer0;
  }

  /* End of RateTransition: '<S1>/Rate Transition4' */

  /* Logic: '<S29>/Logical Operator' incorporates:
   *  Constant: '<S29>/atvc_socLimitSave'
   *  Constant: '<S8>/state_Const1'
   *  RelationalOperator: '<S29>/Relational Operator12'
   */
  rtb_Compare = (80 <= atvc_socLimitSave);

  /* RelationalOperator: '<S29>/Relational Operator4' incorporates:
   *  Constant: '<S29>/atvc_maxTempMotor'
   */
  ATV_B.RelationalOperator4 = (ATV_B.RateTransition10 > atvc_maxTempMotor);

  /* RelationalOperator: '<S29>/Relational Operator5' incorporates:
   *  Constant: '<S29>/atvc_minTempMotor'
   */
  ATV_B.RelationalOperator5 = (ATV_B.RateTransition10 < atvc_minTempMotor);

  /* RateTransition: '<Root>/Rate Transition8' incorporates:
   *  RateTransition: '<Root>/Rate Transition9'
   */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition8 = ATV_DW.RateTransition8_Buffer0;
    ATV_B.RateTransition9 = ATV_DW.RateTransition9_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition8' */

  /* RelationalOperator: '<S29>/Relational Operator6' incorporates:
   *  Constant: '<S29>/atvc_maxTempMotor'
   */
  RelationalOperator6 = (ATV_B.RateTransition8 > atvc_maxTempMotor);

  /* RelationalOperator: '<S29>/Relational Operator8' incorporates:
   *  Constant: '<S29>/atvc_maxTempInv'
   */
  RelationalOperator8 = (ATV_B.RateTransition9 > atvc_maxTempInv);

  /* RateTransition: '<Root>/Rate Transition11' */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition11 = ATV_DW.RateTransition11_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition11' */

  /* Chart: '<S38>/PUMP LOGIC' incorporates:
   *  Constant: '<S29>/atvc_maxTempInv'
   *  Constant: '<S29>/atvc_maxTempMotor'
   *  Constant: '<S29>/atvc_minTempInv'
   *  Constant: '<S29>/atvc_minTempMotor'
   *  RelationalOperator: '<S29>/Relational Operator'
   *  RelationalOperator: '<S29>/Relational Operator1'
   *  RelationalOperator: '<S29>/Relational Operator2'
   *  RelationalOperator: '<S29>/Relational Operator3'
   *  RelationalOperator: '<S29>/Relational Operator7'
   *  RelationalOperator: '<S29>/Relational Operator9'
   */
  if (ATV_DW.temporalCounter_i1_j < 65535U) {
    ATV_DW.temporalCounter_i1_j++;
  }

  /* Gateway: loop_10ms/COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
  /* During: loop_10ms/COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
  if (ATV_DW.is_active_c6_ATV == 0U) {
    /* Entry: loop_10ms/COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
    ATV_DW.is_active_c6_ATV = 1U;

    /* Entry Internal: loop_10ms/COOLING SYSTEM/GestioneImpiantoRaffreddamento/PUMP LOGIC */
    /* Entry 'PumpALogic': '<S40>:47' */
    ATV_DW.PumpStA = 0.0;

    /* Entry Internal 'PumpALogic': '<S40>:47' */
    /* Transition: '<S40>:56' */
    ATV_DW.is_PumpALogic = ATV_IN_Off;

    /* Entry 'Off': '<S40>:63' */
    PumpACtrl = false;

    /* Entry 'PumpBLogic': '<S40>:14' */
    ATV_DW.PumpStB = 0.0;

    /* Entry Internal 'PumpBLogic': '<S40>:14' */
    /* Transition: '<S40>:27' */
    ATV_DW.is_PumpBLogic = ATV_IN_Off;
    ATV_DW.temporalCounter_i1_j = 0U;

    /* Entry 'Off': '<S40>:24' */
    atv_dbg_pumpB_out = false;
    PumpBOn = 0;
  } else {
    /* During 'PumpALogic': '<S40>:47' */
    if (ATV_DW.is_PumpALogic == ATV_IN_Off) {
      PumpACtrl = false;

      /* During 'Off': '<S40>:63' */
      if (ATV_DW.PumpStA == 1.0) {
        /* Transition: '<S40>:116' */
        ATV_DW.is_PumpALogic = ATV_IN_Run;

        /* Entry 'Run': '<S40>:54' */
        PumpACtrl = true;
      } else {
        ATV_DW.PumpStA = ATV_On(ATV_B.RateTransition7 > atvc_maxTempInv,
          ATV_B.RateTransition6 > atvc_maxTempMotor);
      }
    } else {
      PumpACtrl = true;

      /* During 'Run': '<S40>:54' */
      if (ATV_DW.PumpStA == 0.0) {
        /* Transition: '<S40>:62' */
        ATV_DW.is_PumpALogic = ATV_IN_Off;

        /* Entry 'Off': '<S40>:63' */
        PumpACtrl = false;
      } else {
        ATV_DW.PumpStA = ATV_Off(ATV_B.RateTransition7 < atvc_minTempInv,
          ATV_B.RateTransition6 < atvc_minTempMotor);
      }
    }

    /* During 'PumpBLogic': '<S40>:14' */
    switch (ATV_DW.is_PumpBLogic) {
     case ATV_IN_Off:
      atv_dbg_pumpB_out = false;
      PumpBOn = 0;

      /* During 'Off': '<S40>:24' */
      if (ATV_DW.PumpStB == 1.0) {
        /* Transition: '<S40>:29' */
        ATV_DW.is_PumpBLogic = ATV_IN_Run;

        /* Entry 'Run': '<S40>:28' */
        atv_dbg_pumpB_out = true;
        PumpBOn = 1;
      } else if (ATV_DW.temporalCounter_i1_j >= 50000U) {
        /* Transition: '<S40>:32' */
        ATV_DW.is_PumpBLogic = ATV_IN_Run60sec;
        ATV_DW.temporalCounter_i1_j = 0U;

        /* Entry 'Run60sec': '<S40>:22' */
        atv_dbg_pumpB_out = true;
        PumpBOn = 1;
      } else {
        ATV_DW.PumpStB = ATV_On(RelationalOperator8, RelationalOperator6);
      }
      break;

     case ATV_IN_Run:
      atv_dbg_pumpB_out = true;
      PumpBOn = 1;

      /* During 'Run': '<S40>:28' */
      if (ATV_DW.PumpStB == 0.0) {
        /* Transition: '<S40>:25' */
        ATV_DW.is_PumpBLogic = ATV_IN_Off;
        ATV_DW.temporalCounter_i1_j = 0U;

        /* Entry 'Off': '<S40>:24' */
        atv_dbg_pumpB_out = false;
        PumpBOn = 0;
      } else {
        ATV_DW.PumpStB = ATV_Off(ATV_B.RateTransition9 < atvc_minTempInv,
          ATV_B.RateTransition8 < atvc_minTempMotor);
      }
      break;

     default:
      atv_dbg_pumpB_out = true;
      PumpBOn = 1;

      /* During 'Run60sec': '<S40>:22' */
      if (ATV_DW.PumpStB == 1.0) {
        /* Transition: '<S40>:31' */
        /* Transition: '<S40>:34' */
        ATV_DW.is_PumpBLogic = ATV_IN_Run;

        /* Entry 'Run': '<S40>:28' */
        atv_dbg_pumpB_out = true;
      } else if (ATV_DW.temporalCounter_i1_j >= 9000U) {
        /* Transition: '<S40>:26' */
        ATV_DW.is_PumpBLogic = ATV_IN_Off;
        ATV_DW.temporalCounter_i1_j = 0U;

        /* Entry 'Off': '<S40>:24' */
        atv_dbg_pumpB_out = false;
        PumpBOn = 0;
      } else {
        ATV_DW.PumpStB = ATV_On(RelationalOperator8, RelationalOperator6);
      }
      break;
    }
  }

  /* End of Chart: '<S38>/PUMP LOGIC' */

  /* Switch: '<S38>/Switch' */
  ATV_B.Switch = ((!rtb_Compare) && PumpACtrl);

  /* RateTransition: '<S1>/Rate Transition3' */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition3 = ATV_B.Switch;

    /* RateTransition: '<S1>/Rate Transition5' */
    ATV_B.RateTransition5_g = atv_dbg_pumpB_out;

    /* RateTransition: '<Root>/Rate Transition12' */
    ATV_B.RateTransition12 = ATV_DW.RateTransition12_Buffer0;
  }

  /* End of RateTransition: '<S1>/Rate Transition3' */

  /* Relay: '<S39>/Relay1' */
  if (ATV_B.RateTransition12 >= atvc_tempSwitchOnFan) {
    ATV_DW.Relay1_Mode_e = true;
  } else {
    if (ATV_B.RateTransition12 <= atvc_tempSwitchOffFan) {
      ATV_DW.Relay1_Mode_e = false;
    }
  }

  /* Switch: '<S38>/Switch1' incorporates:
   *  Constant: '<S38>/FanOff'
   *  Logic: '<S39>/Logical Operator'
   *  Relay: '<S39>/Relay1'
   *  Switch: '<S39>/Switch1'
   */
  if (rtb_Compare) {
    atv_dbg_FAN_out = 0.0;
  } else if ((PumpBOn != 0) && ATV_DW.Relay1_Mode_e) {
    /* Sum: '<S39>/Add1' incorporates:
     *  Constant: '<S38>/atvc_tempSwitchOnFan'
     *  Switch: '<S39>/Switch1'
     */
    rtb_Gain_d = (uint8_T)(ATV_B.RateTransition12 - atvc_tempSwitchOnFan);

    /* Saturate: '<S39>/Saturation' incorporates:
     *  Switch: '<S39>/Switch1'
     */
    if (rtb_Gain_d >= 20) {
      rtb_Gain_d = 20U;
    }

    /* End of Saturate: '<S39>/Saturation' */

    /* Product: '<S39>/Product' incorporates:
     *  Constant: '<S39>/Constant'
     *  Switch: '<S39>/Switch1'
     */
    atv_dbg_FAN_out = (real_T)rtb_Gain_d / 20.0;

    /* Gain: '<S39>/Gain' incorporates:
     *  Constant: '<S39>/Constant1'
     *  DataTypeConversion: '<S39>/Data Type Conversion'
     *  Switch: '<S39>/Switch1'
     *  Switch: '<S41>/Switch2'
     */
    rtb_Gain = 0.01 * (real_T)atvc_dcMinFan;

    /* Switch: '<S41>/Switch' incorporates:
     *  RelationalOperator: '<S41>/UpperRelop'
     *  Switch: '<S39>/Switch1'
     *  Switch: '<S41>/Switch2'
     */
    if (atv_dbg_FAN_out < rtb_Gain) {
      atv_dbg_FAN_out = rtb_Gain;
    }

    /* End of Switch: '<S41>/Switch' */
  } else {
    /* Switch: '<S39>/Switch1' incorporates:
     *  Constant: '<S39>/Ventola spenta'
     */
    atv_dbg_FAN_out = 0.0;
  }

  /* End of Switch: '<S38>/Switch1' */

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
  rtb_Compare = (rtb_Gain_d > 0);

  /* RateTransition: '<S1>/Rate Transition6' */
  if (ATV_M->Timing.RateInteraction.TID0_1) {
    ATV_B.RateTransition6_p = rtb_Compare;

    /* RateTransition: '<S1>/Rate Transition7' */
    ATV_B.RateTransition7_p = rtb_Gain_d;
  }

  /* End of RateTransition: '<S1>/Rate Transition6' */

  /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput1' */
  /* S-Function Block: <S6>/pai_BasicAnalogInput1
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XA1, &adc, FALSE);
    atv_xa1_ain_throttle_raw = (adc * 5.0) / 4096.0;
  }

  /* Switch: '<S13>/Switch' incorporates:
   *  Constant: '<S13>/Constant'
   *  Constant: '<S15>/Lower Limit'
   *  Constant: '<S15>/Upper Limit'
   *  Logic: '<S15>/AND'
   *  RelationalOperator: '<S15>/Lower Test'
   *  RelationalOperator: '<S15>/Upper Test'
   */
  if ((0.45 <= atv_xa1_ain_throttle_raw) && (atv_xa1_ain_throttle_raw <= 4.55))
  {
    /* Saturate: '<S13>/Saturation' */
    if (atv_xa1_ain_throttle_raw > 4.5) {
      rtb_Gain = 4.5;
    } else if (atv_xa1_ain_throttle_raw < 0.5) {
      rtb_Gain = 0.5;
    } else {
      rtb_Gain = atv_xa1_ain_throttle_raw;
    }

    /* End of Saturate: '<S13>/Saturation' */

    /* Gain: '<S13>/Gain' incorporates:
     *  Constant: '<S13>/Constant1'
     *  Sum: '<S13>/Add'
     */
    rtb_Gain = floor((rtb_Gain - 0.5) * 250.0);
    if (rtIsNaN(rtb_Gain)) {
      atv_throttleX1000 = 0U;
    } else {
      atv_throttleX1000 = (uint16_T)fmod(rtb_Gain, 65536.0);
    }

    /* End of Gain: '<S13>/Gain' */
  } else {
    atv_throttleX1000 = 0U;
  }

  /* End of Switch: '<S13>/Switch' */

  /* Switch: '<S43>/Switch5' incorporates:
   *  Constant: '<S43>/Constant2'
   *  Constant: '<S43>/Constant3'
   *  Switch: '<S43>/Switch1'
   */
  if (ATV_B.en_inv_rear_out) {
    /* Switch: '<S43>/Switch4' incorporates:
     *  Constant: '<S47>/Constant'
     */
    ATV_B.Switch5 = 0U;

    /* Sum: '<S47>/Add1' incorporates:
     *  Constant: '<S31>/atvc_throttleNeutralPoint'
     *  Constant: '<S47>/Constant1'
     *  DataTypeConversion: '<S47>/Cast'
     *  Switch: '<S43>/Switch3'
     */
    PumpBOn = 1000 - atvc_throttleNeutralPoint;

    /* Gain: '<S47>/Gain2' incorporates:
     *  Switch: '<S43>/Switch3'
     */
    tmp_1 = 1000U;

    /* Sum: '<S47>/Add' incorporates:
     *  Constant: '<S31>/atvc_throttleNeutralPoint'
     *  DataTypeConversion: '<S47>/Cast'
     *  DataTypeConversion: '<S47>/Cast1'
     *  Switch: '<S43>/Switch3'
     */
    u0_tmp = atv_throttleX1000 - atvc_throttleNeutralPoint;

    /* Saturate: '<S47>/Saturation' incorporates:
     *  Sum: '<S47>/Add'
     *  Switch: '<S43>/Switch3'
     */
    if (u0_tmp > 1000) {
      /* Gain: '<S47>/Gain2' */
      tmp_2 = 1000U;
    } else if (u0_tmp < 0) {
      /* Gain: '<S47>/Gain2' */
      tmp_2 = 0U;
    } else {
      /* Gain: '<S47>/Gain2' */
      tmp_2 = (uint32_T)u0_tmp;
    }

    /* End of Saturate: '<S47>/Saturation' */

    /* Gain: '<S47>/Gain2' incorporates:
     *  Switch: '<S43>/Switch3'
     */
    sMultiWordMul(&tmp_1, 1, &tmp_2, 1, &tmp_0.chunks[0U], 2);

    /* Saturate: '<S47>/Saturation2' incorporates:
     *  Sum: '<S47>/Add1'
     *  Switch: '<S43>/Switch3'
     */
    if (PumpBOn < 1) {
      PumpBOn = 1;
    }

    /* End of Saturate: '<S47>/Saturation2' */

    /* Product: '<S47>/Divide3' incorporates:
     *  Switch: '<S43>/Switch3'
     */
    sLong2MultiWord(PumpBOn, &tmp_4.chunks[0U], 2);
    sMultiWordDivFloor(&tmp_0.chunks[0U], 2, &tmp_4.chunks[0U], 2,
                       &tmp_3.chunks[0U], 3, &tmp_5.chunks[0U], 2,
                       &tmp_6.chunks[0U], 2, &tmp_7.chunks[0U], 2);
    PumpBOn = MultiWord2sLong(&tmp_3.chunks[0U]);

    /* Saturate: '<S47>/Saturation1' incorporates:
     *  Product: '<S47>/Divide3'
     *  Switch: '<S43>/Switch3'
     */
    if (PumpBOn > 1000) {
      ATV_B.Switch1 = 1000U;
    } else if (PumpBOn < 0) {
      ATV_B.Switch1 = 0U;
    } else {
      ATV_B.Switch1 = (uint16_T)PumpBOn;
    }

    /* End of Saturate: '<S47>/Saturation1' */
  } else {
    ATV_B.Switch5 = 0U;
    ATV_B.Switch1 = 0U;
  }

  /* End of Switch: '<S43>/Switch5' */

  /* DataTypeConversion: '<S35>/Cast2' incorporates:
   *  Constant: '<S8>/atvc_velocityLimitRwd'
   *  Gain: '<S35>/Gain2'
   *  Product: '<S35>/Product2'
   */
  ATV_B.Cast2 = (uint16_T)(int32_T)fmod((int32_T)floor(142.0 * (real_T)
    atvc_velocityLimitRwd * 0.001953125 * 303.25370753692243), 65536.0);

  /* DataTypeConversion: '<S35>/Cast1' incorporates:
   *  Constant: '<S8>/atvc_velocityLimitFwd'
   *  Gain: '<S35>/Gain1'
   *  Product: '<S35>/Product'
   */
  ATV_B.Cast1 = (uint16_T)(int32_T)fmod((int32_T)floor(142.0 * (real_T)
    atvc_velocityLimitFwd * 0.001953125 * 303.25370753692243), 65536.0);

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
      pcx_CANdb_TransmitMessage2_in_port_buffer[0] = ATV_B.Switch5;
      pcx_CANdb_TransmitMessage2_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage2_in_port_buffer[0];
      pcx_CANdb_TransmitMessage2_in_port_buffer[1] = ATV_B.Switch1;
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

  /* Logic: '<S6>/Logical Operator1' incorporates:
   *  Constant: '<S6>/Constant'
   *  Constant: '<S6>/Constant2'
   *  RelationalOperator: '<S12>/Upper Test'
   *  Sum: '<S6>/Add'
   */
  atv_fs1_in = (atv_throttleX1000 > (uint16_T)(atvc_throttleNeutralPoint + 20U));

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
      pcx_CANdb_TransmitMessage3_in_port_buffer[0] = atv_fs1_in;
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

  /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput8' */
  /* S-Function Block: <S6>/pai_BasicAnalogInput8
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XE4, &adc, FALSE);
    atv_xe4_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Relay: '<S6>/Relay5' */
  if (atv_xe4_raw_ain >= atvc_an_in_sel_th + atvc_an_in_sel_his) {
    ATV_DW.Relay5_Mode = true;
  } else {
    if (atv_xe4_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
      ATV_DW.Relay5_Mode = false;
    }
  }

  atv_4wd_din = !ATV_DW.Relay5_Mode;

  /* End of Relay: '<S6>/Relay5' */

  /* Switch: '<S31>/Switch4' incorporates:
   *  Constant: '<S31>/Constant2'
   *  Constant: '<S31>/Constant4'
   *  Switch: '<S31>/Switch3'
   */
  if (atv_4wd_din) {
    /* Switch: '<S42>/Switch5' incorporates:
     *  Constant: '<S42>/Constant2'
     *  Constant: '<S42>/Constant3'
     *  Switch: '<S42>/Switch1'
     */
    if (ATV_B.en_inv_front_out) {
      /* Switch: '<S42>/Switch4' incorporates:
       *  Constant: '<S31>/atvc_throttleNeutralPoint'
       *  Constant: '<S45>/Constant'
       *  RelationalOperator: '<S42>/Relational Operator1'
       */
      if (atv_throttleX1000 >= atvc_throttleNeutralPoint) {
        ATV_B.Switch4 = 0U;

        /* Sum: '<S45>/Add1' incorporates:
         *  Constant: '<S45>/Constant'
         *  Constant: '<S45>/Constant1'
         *  DataTypeConversion: '<S45>/Cast'
         *  Switch: '<S42>/Switch3'
         */
        PumpBOn = 1000 - atvc_throttleNeutralPoint;

        /* Gain: '<S45>/Gain2' incorporates:
         *  Switch: '<S42>/Switch3'
         */
        tmp_1 = 1000U;

        /* Sum: '<S45>/Add' incorporates:
         *  DataTypeConversion: '<S45>/Cast'
         *  DataTypeConversion: '<S45>/Cast1'
         *  Switch: '<S42>/Switch3'
         */
        u0_tmp = atv_throttleX1000 - atvc_throttleNeutralPoint;

        /* Saturate: '<S45>/Saturation' incorporates:
         *  Sum: '<S45>/Add'
         *  Switch: '<S42>/Switch3'
         */
        if (u0_tmp > 1000) {
          /* Gain: '<S45>/Gain2' */
          tmp_2 = 1000U;
        } else if (u0_tmp < 0) {
          /* Gain: '<S45>/Gain2' */
          tmp_2 = 0U;
        } else {
          /* Gain: '<S45>/Gain2' */
          tmp_2 = (uint32_T)u0_tmp;
        }

        /* End of Saturate: '<S45>/Saturation' */

        /* Gain: '<S45>/Gain2' incorporates:
         *  Switch: '<S42>/Switch3'
         */
        sMultiWordMul(&tmp_1, 1, &tmp_2, 1, &tmp.chunks[0U], 2);

        /* Saturate: '<S45>/Saturation2' incorporates:
         *  Sum: '<S45>/Add1'
         *  Switch: '<S42>/Switch3'
         */
        if (PumpBOn < 1) {
          PumpBOn = 1;
        }

        /* End of Saturate: '<S45>/Saturation2' */

        /* Product: '<S45>/Divide3' incorporates:
         *  Switch: '<S42>/Switch3'
         */
        sLong2MultiWord(PumpBOn, &tmp_6.chunks[0U], 2);
        sMultiWordDivFloor(&tmp.chunks[0U], 2, &tmp_6.chunks[0U], 2,
                           &tmp_8.chunks[0U], 3, &tmp_7.chunks[0U], 2,
                           &tmp_9.chunks[0U], 2, &tmp_a.chunks[0U], 2);
        PumpBOn = MultiWord2sLong(&tmp_8.chunks[0U]);

        /* Saturate: '<S45>/Saturation1' incorporates:
         *  Product: '<S45>/Divide3'
         *  Switch: '<S42>/Switch3'
         */
        if (PumpBOn > 1000) {
          ATV_B.Switch3 = 1000U;
        } else if (PumpBOn < 0) {
          ATV_B.Switch3 = 0U;
        } else {
          ATV_B.Switch3 = (uint16_T)PumpBOn;
        }

        /* End of Saturate: '<S45>/Saturation1' */
      } else {
        /* Gain: '<S44>/Gain2' */
        tmp_1 = 1000U;

        /* Sum: '<S44>/Add' incorporates:
         *  DataTypeConversion: '<S44>/Cast'
         *  DataTypeConversion: '<S44>/Cast1'
         */
        PumpBOn = atvc_throttleNeutralPoint - atv_throttleX1000;

        /* Saturate: '<S44>/Saturation' */
        if (PumpBOn > 1000) {
          /* Gain: '<S44>/Gain2' */
          tmp_2 = 1000U;
        } else if (PumpBOn < 0) {
          /* Gain: '<S44>/Gain2' */
          tmp_2 = 0U;
        } else {
          /* Gain: '<S44>/Gain2' */
          tmp_2 = (uint32_T)PumpBOn;
        }

        /* End of Saturate: '<S44>/Saturation' */

        /* Gain: '<S44>/Gain2' */
        sMultiWordMul(&tmp_1, 1, &tmp_2, 1, &tmp.chunks[0U], 2);

        /* Product: '<S44>/Divide3' incorporates:
         *  DataTypeConversion: '<S44>/Cast1'
         */
        if (atvc_throttleNeutralPoint == 0) {
          tmp_5 = tmp_b;
          if (sMultiWordGe(&tmp.chunks[0U], &tmp_5.chunks[0U], 2)) {
            PumpBOn = MAX_int32_T;
          } else {
            PumpBOn = MIN_int32_T;
          }
        } else {
          sLong2MultiWord(atvc_throttleNeutralPoint, &tmp_5.chunks[0U], 2);
          sMultiWordDivFloor(&tmp.chunks[0U], 2, &tmp_5.chunks[0U], 2,
                             &tmp_8.chunks[0U], 3, &tmp_6.chunks[0U], 2,
                             &tmp_7.chunks[0U], 2, &tmp_9.chunks[0U], 2);
          PumpBOn = MultiWord2sLong(&tmp_8.chunks[0U]);
        }

        /* Saturate: '<S44>/Saturation1' incorporates:
         *  Product: '<S44>/Divide3'
         */
        if (PumpBOn > 1000) {
          ATV_B.Switch4 = 1000U;
        } else if (PumpBOn < 0) {
          ATV_B.Switch4 = 0U;
        } else {
          ATV_B.Switch4 = (uint16_T)PumpBOn;
        }

        /* End of Saturate: '<S44>/Saturation1' */

        /* Switch: '<S42>/Switch3' incorporates:
         *  Constant: '<S44>/Constant'
         */
        ATV_B.Switch3 = 0U;
      }

      /* End of Switch: '<S42>/Switch4' */
    } else {
      ATV_B.Switch4 = 0U;
      ATV_B.Switch3 = 0U;
    }

    /* End of Switch: '<S42>/Switch5' */
  } else {
    ATV_B.Switch4 = 0U;
    ATV_B.Switch3 = 0U;
  }

  /* End of Switch: '<S31>/Switch4' */

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
      pcx_CANdb_TransmitMessage4_in_port_buffer[0] = ATV_B.Switch4;
      pcx_CANdb_TransmitMessage4_in_port_ptr[0] =
        &pcx_CANdb_TransmitMessage4_in_port_buffer[0];
      pcx_CANdb_TransmitMessage4_in_port_buffer[1] = ATV_B.Switch3;
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
      pcx_CANdb_TransmitMessage5_in_port_buffer[0] = atv_fs1_in;
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

  /* S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput8' */
  /* S-Function Block: <S5>/pdx_DigitalOutput8
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

  /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput7' */
  /* S-Function Block: <S6>/pai_BasicAnalogInput7
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XE2, &adc, FALSE);
    atv_xe2_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* S-Function (pax_adc_input): '<S6>/pai_BasicAnalogInput3' */
  /* S-Function Block: <S6>/pai_BasicAnalogInput3
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XD3, &adc, FALSE);
    atv_xd3_raw_ain = (adc * 5.0) / 4096.0;
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

  /* Relay: '<S6>/Relay4' */
  if (atv_xe2_raw_ain >= atvc_an_in_sel_th + atvc_an_in_sel_his) {
    ATV_DW.Relay4_Mode = true;
  } else {
    if (atv_xe2_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
      ATV_DW.Relay4_Mode = false;
    }
  }

  atv_apu_req_in = !ATV_DW.Relay4_Mode;

  /* End of Relay: '<S6>/Relay4' */

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

  /* Chart: '<S34>/VSMGestioneIbrido' incorporates:
   *  Constant: '<S68>/ATVC_iCEShutOff'
   *  RelationalOperator: '<S68>/Relational Operator'
   */
  if (ATV_DW.temporalCounter_i1 < 511U) {
    ATV_DW.temporalCounter_i1++;
  }

  if (ATV_DW.temporalCounter_i2 < 2047U) {
    ATV_DW.temporalCounter_i2++;
  }

  /* Gateway: loop_10ms/HYBRID MANAGEMENT/VSMGestioneIbrido */
  ATV_DW.ReqGen_prev = ATV_DW.ReqGen_start;
  ATV_DW.ReqGen_start = atv_apu_req_in;

  /* During: loop_10ms/HYBRID MANAGEMENT/VSMGestioneIbrido */
  if (ATV_DW.is_active_c2_ATV == 0U) {
    ATV_DW.ReqGen_prev = atv_apu_req_in;

    /* Entry: loop_10ms/HYBRID MANAGEMENT/VSMGestioneIbrido */
    ATV_DW.is_active_c2_ATV = 1U;

    /* Entry Internal: loop_10ms/HYBRID MANAGEMENT/VSMGestioneIbrido */
    ATV_DW.is_active_MonitoraggioStatoICE = 1U;

    /* Entry 'MonitoraggioStatoICE': '<S66>:168' */
    /* Entry Internal 'MonitoraggioStatoICE': '<S66>:168' */
    /* Transition: '<S66>:179' */
    ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOff;

    /* Entry 'iCEOff': '<S66>:169' */
    ATV_DW.IceOn = false;
    ATV_DW.IceFault = false;
    ATV_DW.ShutDownHybrid = false;

    /* Entry Internal 'GestioneIbrido': '<S66>:166' */
    /* Transition: '<S66>:192' */
    ATV_DW.is_GestioneIbrido = ATV_IN_ProceduraAvviamento;

    /* Entry Internal 'ProceduraAvviamento': '<S66>:191' */
    /* Transition: '<S66>:108' */
    ATV_DW.is_ProceduraAvviamento = ATV_IN_StarterMode;

    /* Entry 'StarterMode': '<S66>:67' */
    /* Entry Internal 'StarterMode': '<S66>:67' */
    /* Transition: '<S66>:7' */
    ATV_DW.is_StarterMode = ATV_IN_Inizializzazione;

    /* Entry 'Inizializzazione': '<S66>:6' */
    ATV_DW.IceStatus = false;
  } else {
    /* During 'MonitoraggioStatoICE': '<S66>:168' */
    guard1 = false;
    switch (ATV_DW.is_MonitoraggioStatoICE) {
     case ATV_IN_IceFault:
      /* During 'IceFault': '<S66>:171' */
      if (ATV_DW.temporalCounter_i2 >= 2000U) {
        /* Transition: '<S66>:213' */
        ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOff;

        /* Entry 'iCEOff': '<S66>:169' */
        ATV_DW.IceOn = false;
        ATV_DW.IceFault = false;
        ATV_DW.ShutDownHybrid = false;
      }
      break;

     case ATV_IN_iCEOff:
      /* During 'iCEOff': '<S66>:169' */
      if (ATV_DW.IceOn) {
        /* Transition: '<S66>:178' */
        ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOn;
        ATV_DW.temporalCounter_i2 = 0U;

        /* Entry 'iCEOn': '<S66>:170' */
      } else {
        ATV_DW.IceOn = false;
        ATV_DW.IceFault = false;
        ATV_DW.ShutDownHybrid = false;
      }
      break;

     default:
      /* During 'iCEOn': '<S66>:170' */
      if (ATV_DW.IceFault) {
        /* Transition: '<S66>:177' */
        if (!ATV_DW.IceFault) {
          /* Transition: '<S66>:190' */
          ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOn;
          ATV_DW.temporalCounter_i2 = 0U;

          /* Entry 'iCEOn': '<S66>:170' */
        } else if (ATV_DW.temporalCounter_i2 >= 100U) {
          /* Transition: '<S66>:176' */
          ATV_DW.is_MonitoraggioStatoICE = ATV_IN_IceFault;
          ATV_DW.temporalCounter_i2 = 0U;

          /* Entry 'IceFault': '<S66>:171' */
          ATV_DW.ShutDownHybrid = true;
        } else {
          guard1 = true;
        }
      } else {
        guard1 = true;
      }
      break;
    }

    if (guard1) {
      if (!atv_apu_req_in) {
        /* Transition: '<S66>:214' */
        ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOff;

        /* Entry 'iCEOff': '<S66>:169' */
        ATV_DW.IceOn = false;
        ATV_DW.IceFault = false;
        ATV_DW.ShutDownHybrid = false;
      } else {
        /* Outputs for Function Call SubSystem: '<S66>/MonitoraggioStatoICE.IceCheck' */
        /* Simulink Function 'IceCheck': '<S66>:174' */
        ATV_DW.IceFault = true;

        /* End of Outputs for SubSystem: '<S66>/MonitoraggioStatoICE.IceCheck' */
      }
    }

    /* During 'GestioneIbrido': '<S66>:166' */
    if (ATV_DW.is_GestioneIbrido == ATV_IN_ProceduraAvviamento) {
      ATV_ProceduraAvviamento();
    } else {
      /* During 'ProceduraSpegnimento': '<S66>:193' */
      if ((ATV_DW.ReqGen_prev != ATV_DW.ReqGen_start) && ATV_DW.ReqGen_start &&
          (!ATV_DW.ShutDownHybrid)) {
        /* Transition: '<S66>:211' */
        ATV_DW.is_GestioneIbrido = ATV_IN_ProceduraAvviamento;

        /* Entry Internal 'ProceduraAvviamento': '<S66>:191' */
        /* Transition: '<S66>:108' */
        ATV_DW.is_ProceduraAvviamento = ATV_IN_StarterMode;

        /* Entry 'StarterMode': '<S66>:67' */
        /* Entry Internal 'StarterMode': '<S66>:67' */
        /* Transition: '<S66>:7' */
        ATV_DW.is_StarterMode = ATV_IN_Inizializzazione;

        /* Entry 'Inizializzazione': '<S66>:6' */
        ATV_DW.IceStatus = false;
      }
    }
  }

  /* End of Chart: '<S34>/VSMGestioneIbrido' */
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
  real_T tmp;

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
    tmp = floor(ATV_B.pcx_CANdb_ReceiveMessage_o4_k);
    if (rtIsNaN(tmp) || rtIsInf(tmp)) {
      tmp = 0.0;
    } else {
      tmp = fmod(tmp, 256.0);
    }

    ATV_B.atv_v_dbg_T_FMot = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)
      (uint8_T)-tmp : (int32_T)(uint8_T)tmp);
    tmp = floor(ATV_B.pcx_CANdb_ReceiveMessage_o5_c);
    if (rtIsNaN(tmp) || rtIsInf(tmp)) {
      tmp = 0.0;
    } else {
      tmp = fmod(tmp, 256.0);
    }

    ATV_B.atv_v_dbg_T_FInv = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)
      (uint8_T)-tmp : (int32_T)(uint8_T)tmp);
    tmp = floor(ATV_B.pcx_CANdb_ReceiveMessage_o7);
    if (rtIsNaN(tmp) || rtIsInf(tmp)) {
      tmp = 0.0;
    } else {
      tmp = fmod(tmp, 256.0);
    }

    ATV_B.atv_v_dbg_T_RMot = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)
      (uint8_T)-tmp : (int32_T)(uint8_T)tmp);
    tmp = floor(ATV_B.pcx_CANdb_ReceiveMessage_o6_o);
    if (rtIsNaN(tmp) || rtIsInf(tmp)) {
      tmp = 0.0;
    } else {
      tmp = fmod(tmp, 256.0);
    }

    ATV_B.atv_v_dbg_T_RInv = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)
      (uint8_T)-tmp : (int32_T)(uint8_T)tmp);
    tmp = floor(ATV_B.pcx_CANdb_ReceiveMessage_o8);
    if (rtIsNaN(tmp) || rtIsInf(tmp)) {
      tmp = 0.0;
    } else {
      tmp = fmod(tmp, 256.0);
    }

    ATV_B.atv_v_dbg_T_GMot = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)
      (uint8_T)-tmp : (int32_T)(uint8_T)tmp);
    tmp = floor(ATV_B.pcx_CANdb_ReceiveMessage_o9);
    if (rtIsNaN(tmp) || rtIsInf(tmp)) {
      tmp = 0.0;
    } else {
      tmp = fmod(tmp, 256.0);
    }

    ATV_B.atv_v_dbg_T_GInv = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)
      (uint8_T)-tmp : (int32_T)(uint8_T)tmp);
    tmp = floor(ATV_B.pcx_CANdb_ReceiveMessage_o10);
    if (rtIsNaN(tmp) || rtIsInf(tmp)) {
      tmp = 0.0;
    } else {
      tmp = fmod(tmp, 256.0);
    }

    ATV_B.atv_v_dbg_T_Rad = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)-(int8_T)
      (uint8_T)-tmp : (int32_T)(uint8_T)tmp);
  } else {
    ATV_B.atv_v_dbg_T_FMot = 0U;
    ATV_B.atv_v_dbg_T_FInv = 0U;
    ATV_B.atv_v_dbg_T_RMot = 0U;
    ATV_B.atv_v_dbg_T_RInv = 0U;
    ATV_B.atv_v_dbg_T_GMot = 0U;
    ATV_B.atv_v_dbg_T_GInv = 0U;
    ATV_B.atv_v_dbg_T_Rad = 0U;
  }

  /* End of Switch: '<S4>/Switch' */

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
  /* S-Function (psc_cpu_loading): '<S24>/psc_CpuLoading1' */
  /* S-Function Block: <S24>/psc_CpuLoading1
   * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  atv_cpu_loading = psc_get_cpu_loading();

  /* S-Function (psc_stack_used): '<S24>/psc_StackUsed' */
  /*
   * S-Function Block: <S24>/psc_StackUsed
   * [$Id: psc_stack_used.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  atv_stack_used = psc_get_used_stack_size();

  /* S-Function (pkn_task_duration): '<S24>/pkn_TaskDuration1' */
  /* S-Function Block: <S24>/pkn_TaskDuration1
   * [$Id: pkn_task_duration.tlc 34330 2013-07-01 12:56:28Z sbhattacharya $]
   */
  atv_task_duration_1s = pkn_get_task_duration(pkn_task_1000ms_task_hdl);

  /* S-Function (psc_cpu_loading): '<S24>/psc_CpuLoading2' */
  /* S-Function Block: <S24>/psc_CpuLoading2
   * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  atv_cpu_loading_max = psc_get_max_cpu_loading();

  /* S-Function (pkn_task_duration): '<S24>/pkn_TaskDuration2' */
  /* S-Function Block: <S24>/pkn_TaskDuration2
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
  /* S-Function Block: <S22>/pcfg_Config_M5xx
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

  /* Start for S-Function (pdx_digital_output): '<S5>/pdx_DigitalOutput8' */

  /* S-Function Block: <S5>/pdx_DigitalOutput8
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_XD1_ENABLE_PSU_HOLD,
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

  /* Start for S-Function (pcx_can_config): '<S20>/pcx_CANConfiguration' */

  /* S-Function Block: <S20>/pcx_CANConfiguration
   * [$Id: pcx_can_config.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  pcx_config(PIO_CAN_YE4_YF4_A, PIO_CBAUD_500_KBPS);

  /* Start for S-Function (psc_app_build_date): '<S25>/psc_AppBuildDate' */

  /*
   * S-Function Block: <S25>/psc_AppBuildDate
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

  /* Start for S-Function (psc_app_version): '<S25>/psc_AppVersion' */

  /*
   * S-Function Block: <S25>/psc_AppVersion
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

  /* Start for S-Function (psc_boot_build_date): '<S26>/psc_BootBuildDate' */

  /*
   * S-Function Block: <S26>/psc_BootBuildDate
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

  /* Start for S-Function (psc_boot_version): '<S26>/psc_BootVersion' */

  /*
   * S-Function Block: <S26>/psc_BootVersion
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

  /* Start for S-Function (psc_prg_build_date): '<S27>/psc_PrgBuildDate' */

  /*
   * S-Function Block: <S27>/psc_PrgBuildDate
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

  /* Start for S-Function (psc_prg_version): '<S27>/psc_PrgVersion' */

  /*
   * S-Function Block: <S27>/psc_PrgVersion
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

  /* Start for S-Function (psc_platform_build_date): '<S28>/psc_PlatformBuildDate' */

  /*
   * S-Function Block: <S28>/psc_PlatformBuildDate
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

  /* Start for S-Function (psc_platform_version): '<S28>/psc_PlatformVersion' */

  /*
   * S-Function Block: <S28>/psc_PlatformVersion
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
  ATV_DW.is_CHG_CTRL = ATV_IN_NO_ACTIVE_CHILD_b;
  ATV_DW.temporalCounter_i3 = 0U;
  ATV_DW.is_DRIVE_ENABLE = ATV_IN_NO_ACTIVE_CHILD_b;
  ATV_DW.is_HEATER_CTRL = ATV_IN_NO_ACTIVE_CHILD_b;
  ATV_DW.is_HV_CTRL = ATV_IN_NO_ACTIVE_CHILD_b;
  ATV_DW.temporalCounter_i2_j = 0U;
  ATV_DW.is_STARTTRIGGER = ATV_IN_NO_ACTIVE_CHILD_b;
  ATV_DW.temporalCounter_i1_ji = 0U;
  ATV_DW.is_active_c3_ATV = 0U;
  ATV_DW.is_c3_ATV = ATV_IN_NO_ACTIVE_CHILD_b;

  /* SystemInitialize for Chart: '<S38>/PUMP LOGIC' */
  ATV_DW.is_PumpALogic = ATV_IN_NO_ACTIVE_CHILD_b;
  ATV_DW.is_PumpBLogic = ATV_IN_NO_ACTIVE_CHILD_b;
  ATV_DW.temporalCounter_i1_j = 0U;
  ATV_DW.is_active_c6_ATV = 0U;

  /* SystemInitialize for Chart: '<S3>/Chart' */
  ATV_Chart_Init(&ATV_DW.sf_Chart);

  /* SystemInitialize for Chart: '<S4>/Chart' */
  ATV_Chart_Init(&ATV_DW.sf_Chart_b);

  /* SystemInitialize for Chart: '<S34>/VSMGestioneIbrido' */
  ATV_DW.is_GestioneIbrido = ATV_IN_NO_ACTIVE_CHILD_b;
  ATV_DW.is_ProceduraAvviamento = ATV_IN_NO_ACTIVE_CHILD_b;
  ATV_DW.is_RegenerativeMode = ATV_IN_NO_ACTIVE_CHILD_b;
  ATV_DW.is_StarterMode = ATV_IN_NO_ACTIVE_CHILD_b;
  ATV_DW.temporalCounter_i1 = 0U;
  ATV_DW.is_active_MonitoraggioStatoICE = 0U;
  ATV_DW.is_MonitoraggioStatoICE = ATV_IN_NO_ACTIVE_CHILD_b;
  ATV_DW.temporalCounter_i2 = 0U;
  ATV_DW.is_active_c2_ATV = 0U;
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
  atv_dbg_FAN_out = 0.0;
  atv_xa1_ain_throttle_raw = 0.0;
  atv_xe4_raw_ain = 0.0;
  atv_xe2_raw_ain = 0.0;
  atv_xd3_raw_ain = 0.0;
  bms_pack_voltage = 0.0;
  atv_stack_used = 0U;
  atv_task_duration_1s = 0U;
  atv_task_duration_1s_max = 0U;
  atv_xd1_key_ain = 0;
  atv_xe3_ain = 0;
  atv_brake_pedalX1000 = 0U;
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
  atv_fwd_mode_in = false;
  atv_rwd_mode_in = false;
  atv_brake_pedal_digital_in = false;
  atv_fs1_in = false;
  atv_4wd_din = false;
  atv_v_dbg_chg_req = false;
  atv_v_dbg_heater_req = false;
  atv_apu_req_in = false;
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
  ATV_M->Sizes.numBlocks = (293);      /* Number of blocks */
  ATV_M->Sizes.numBlockIO = (109);     /* Number of block outputs */
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
