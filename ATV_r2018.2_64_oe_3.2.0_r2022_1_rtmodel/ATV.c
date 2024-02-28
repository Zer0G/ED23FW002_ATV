/*
 * ATV.c
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

/* Named constants for Chart: '<S4>/Chart' */
#define ATV_IN_NO_ACTIVE_CHILD         ((uint8_T)0U)
#define ATV_IN_NO_RX                   ((uint8_T)1U)
#define ATV_IN_RX                      ((uint8_T)2U)

/* Named constants for Chart: '<S8>/Chart' */
#define ATV_IN_NO_ACTIVE_CHILD_f       ((uint8_T)0U)
#define ATV_IN_NO_RX_d                 ((uint8_T)1U)
#define ATV_IN_RX_i                    ((uint8_T)2U)

/* Named constants for Chart: '<S29>/Chart' */
#define ATV_IN_NO_ACTIVE_CHILD_o       ((uint8_T)0U)
#define ATV_IN_NO_RX_j                 ((uint8_T)1U)
#define ATV_IN_RX_ih                   ((uint8_T)2U)

/* Named constants for Chart: '<S157>/Chart' */
#define ATV_IN_DEB                     ((uint8_T)1U)
#define ATV_IN_NO_ACTIVE_CHILD_m       ((uint8_T)0U)
#define ATV_IN_OFF                     ((uint8_T)2U)
#define ATV_IN_ON                      ((uint8_T)3U)

/* Named constants for Chart: '<S5>/Chart' */
#define ATV_IN_NO_ACTIVE_CHILD_c       ((uint8_T)0U)
#define ATV_IN_NO_RX_b                 ((uint8_T)1U)
#define ATV_IN_RX_f                    ((uint8_T)2U)

/* Named constants for Chart: '<Root>/Chart' */
#define ATV_IN_OFF_a                   ((uint8_T)1U)
#define ATV_IN_ON_a                    ((uint8_T)2U)

/* Named constants for Chart: '<S150>/Chart1' */
#define ATV_IN_FAULT                   ((uint8_T)1U)
#define ATV_IN_OFF_m                   ((uint8_T)2U)
#define ATV_IN_ON_g                    ((uint8_T)3U)
#define ATV_IN_PUMP_DISABLE            ((uint8_T)4U)
#define ATV_IN_SHUTDOWN                ((uint8_T)5U)

/* Named constants for Chart: '<S34>/Chart1' */
#define ATV_IN_APU_OFF                 ((uint8_T)1U)
#define ATV_IN_APU_ON                  ((uint8_T)2U)
#define ATV_IN_DEB1                    ((uint8_T)4U)
#define ATV_IN_DEB_b                   ((uint8_T)3U)
#define ATV_IN_HYBRID                  ((uint8_T)2U)
#define ATV_IN_KEY_ON                  ((uint8_T)1U)
#define ATV_IN_NO                      ((uint8_T)1U)
#define ATV_IN_RUN_MODE                ((uint8_T)2U)
#define ATV_IN_VAL                     ((uint8_T)5U)
#define ATV_IN_VAL1                    ((uint8_T)6U)
#define ATV_IN_YES                     ((uint8_T)2U)
#define ATV_IN_init                    ((uint8_T)3U)

/* Named constants for Chart: '<S141>/VSMGestioneIbrido' */
#define ATV_IN_AvviamentoIce           ((uint8_T)1U)
#define ATV_IN_CoolDownTermico         ((uint8_T)1U)
#define ATV_IN_DEB_d                   ((uint8_T)1U)
#define ATV_IN_FuelPumpOff             ((uint8_T)2U)
#define ATV_IN_FuelPumpOn              ((uint8_T)3U)
#define ATV_IN_ICE_NOT_SETTLE          ((uint8_T)4U)
#define ATV_IN_IceRestartDelay         ((uint8_T)5U)
#define ATV_IN_Inizializzazione        ((uint8_T)6U)
#define ATV_IN_MonitoraggioIce         ((uint8_T)7U)
#define ATV_IN_MonitoraggioStatoICE    ((uint8_T)8U)
#define ATV_IN_WAIT_ICE_OFF            ((uint8_T)9U)
#define ATV_IN_WAIT_NO_LOAD            ((uint8_T)10U)
#define ATV_IN_Wait0RPM                ((uint8_T)11U)
#define ATV_IN_WaitReg                 ((uint8_T)2U)
#define ATV_IN_WarmUpTermico           ((uint8_T)3U)
#define ATV_IN_iCEOff                  ((uint8_T)2U)
#define ATV_IN_iCEOn                   ((uint8_T)3U)
#define ATV_IN_run                     ((uint8_T)4U)

/* Named constants for Chart: '<S34>/VSM' */
#define ATV_IN_APU                     ((uint8_T)1U)
#define ATV_IN_APU_OFF_p               ((uint8_T)2U)
#define ATV_IN_APU_PRE_FAULT           ((uint8_T)1U)
#define ATV_IN_CHARGE                  ((uint8_T)3U)
#define ATV_IN_CHG_OFF                 ((uint8_T)1U)
#define ATV_IN_CURR_MON                ((uint8_T)4U)
#define ATV_IN_DEB_j                   ((uint8_T)2U)
#define ATV_IN_DETECT                  ((uint8_T)2U)
#define ATV_IN_DRIVE_ENABLED           ((uint8_T)3U)
#define ATV_IN_FAULT_a                 ((uint8_T)5U)
#define ATV_IN_FAULT_a4                ((uint8_T)3U)
#define ATV_IN_FAULT_a40               ((uint8_T)4U)
#define ATV_IN_GEN_ENABLED             ((uint8_T)4U)
#define ATV_IN_GEN_ON                  ((uint8_T)5U)
#define ATV_IN_HEATER_OFF              ((uint8_T)1U)
#define ATV_IN_HEATER_ON               ((uint8_T)2U)
#define ATV_IN_HVM_ON                  ((uint8_T)2U)
#define ATV_IN_HVM_ON_m                ((uint8_T)1U)
#define ATV_IN_HV_OFF                  ((uint8_T)2U)
#define ATV_IN_HV_ON                   ((uint8_T)3U)
#define ATV_IN_HV_REQ_APU              ((uint8_T)6U)
#define ATV_IN_HV_REQ_CHARGE           ((uint8_T)7U)
#define ATV_IN_HV_REQ_RUN              ((uint8_T)8U)
#define ATV_IN_HV_WAIT_INV_OFF         ((uint8_T)4U)
#define ATV_IN_ICE_OFF                 ((uint8_T)5U)
#define ATV_IN_IDLE                    ((uint8_T)9U)
#define ATV_IN_IDLE_e                  ((uint8_T)6U)
#define ATV_IN_INIT                    ((uint8_T)10U)
#define ATV_IN_INV_OFF                 ((uint8_T)11U)
#define ATV_IN_INV_PREOP               ((uint8_T)7U)
#define ATV_IN_NO_FLT                  ((uint8_T)2U)
#define ATV_IN_ON_LOW                  ((uint8_T)3U)
#define ATV_IN_PRE_SLEEP               ((uint8_T)12U)
#define ATV_IN_PRE_START               ((uint8_T)7U)
#define ATV_IN_PRE_START_l             ((uint8_T)8U)
#define ATV_IN_RUN                     ((uint8_T)13U)
#define ATV_IN_RUN_e                   ((uint8_T)8U)
#define ATV_IN_SHUTDOWN_ALL            ((uint8_T)9U)
#define ATV_IN_SHUTDOWN_ICE            ((uint8_T)10U)
#define ATV_IN_SLEEP                   ((uint8_T)14U)
#define ATV_IN_STARTTRIGGER_OFF        ((uint8_T)1U)
#define ATV_IN_STARTTRIGGER_ON         ((uint8_T)2U)
#define ATV_IN_WAIT_DISCONNECT         ((uint8_T)15U)

const uint8_T ATV_U8GND = 0U;          /* uint8_T ground */

/* Exported block signals */
real_T atv_xd1_key_ain;                /* '<S28>/Gain' */
real_T atv_xc1_raw_ain;                /* '<S28>/pai_BasicAnalogInput5' */
real_T atv_xc4_raw_ain;                /* '<S28>/pai_BasicAnalogInput6' */
real_T atv_xa3_brake_pedal_raw_ain;    /* '<S28>/pai_BasicAnalogInput4' */
real_T atv_xe2_raw_ain;                /* '<S28>/pai_BasicAnalogInput7' */
real_T atv_yh3_raw_ain;                /* '<S28>/pai_BasicAnalogInput11' */
real_T atv_dbg_FAN_out;                /* '<S25>/Data Type Conversion' */
real_T bms_pack_voltage;               /* '<S4>/pcx_CANdb_ReceiveMessage' */
real_T B_Max_Cell;                     /* '<S6>/pcx_CANdb_ReceiveMessage' */
real_T atv_yb3_raw_ain;                /* '<S28>/pai_BasicAnalogInput10' */
real_T atv_xa1_ain_throttle_raw;       /* '<S28>/pai_BasicAnalogInput1' */
real_T atv_xd3_raw_ain;                /* '<S28>/pai_BasicAnalogInput3' */
real_T atv_HandBrakePos;               /* '<S28>/pai_BasicAnalogInput15' */
real_T atv_xe4_raw_ain;                /* '<S28>/pai_BasicAnalogInput8' */
real_T atv_zd1_ain;                    /* '<S28>/pai_BasicAnalogInput12' */
real_T atv_12v;                        /* '<S28>/Gain1' */
real_T atv_yg3_raw_ain;                /* '<S28>/Moving Average' */
uint32_T atv_fmot_run_timer;           /* '<S139>/Rate Transition1' */
uint32_T atv_ice_run_timer;            /* '<S142>/Rate Transition1' */
uint32_T atv_odometer;                 /* '<S145>/Gain5' */
uint32_T atv_rmot_run_timer;           /* '<S146>/Rate Transition1' */
uint32_T atv_stack_used;               /* '<S119>/psc_StackUsed' */
uint32_T atv_task_duration_1s;         /* '<S119>/pkn_TaskDuration1' */
uint32_T atv_task_duration_1s_max;     /* '<S119>/pkn_TaskDuration2' */
real32_T atv_ze4;                      /* '<S28>/Data Type Conversion1' */
real32_T atv_xd2;                      /* '<S28>/Data Type Conversion3' */
real32_T atv_ze3;                      /* '<S28>/Data Type Conversion' */
real32_T atv_ye2;                      /* '<S25>/Switch' */
real32_T atv_fuel_qty;                 /* '<S141>/Product' */
int32_T atv_xe3_ain;                   /* '<S28>/Gain2' */
int32_T atv_ICE_Start_Timer;           /* '<S32>/Saturation' */
uint16_T atv_brake_pedalX1000;         /* '<S90>/Switch' */
uint16_T atv_max_cell;                 /* '<S6>/Switch1' */
uint16_T atv_min_cell;                 /* '<S6>/Switch5' */
uint16_T atv_throttleX1000;            /* '<S89>/Saturation1' */
uint16_T atv_motoring_x1000_rear;      /* '<S157>/Switch1' */
uint16_T atv_motoring_x1000_front;     /* '<S158>/Switch1' */
uint16_T atv_motoring_x1000_front_final;/* '<S138>/Product1' */
uint16_T atv_motoring_x1000_rear_final;/* '<S138>/Product2' */
uint16_T atv_regen_x1000_front;        /* '<S138>/Product3' */
uint16_T atv_regen_x1000_rear;         /* '<S138>/Product4' */
uint16_T atv_throttleGen_X1000_out;    /* '<S141>/Rate Limiter' */
uint16_T atv_footBrake_X1000_out;      /* '<S141>/Rate Limiter1' */
uint16_T atv_app_code_year;            /* '<S120>/psc_AppBuildDate' */
uint16_T atv_app_code_month;           /* '<S120>/psc_AppBuildDate' */
uint16_T atv_app_code_day;             /* '<S120>/psc_AppBuildDate' */
uint16_T atv_app_code_major_ver;       /* '<S120>/psc_AppVersion' */
uint16_T atv_app_code_minor_ver;       /* '<S120>/psc_AppVersion' */
uint16_T atv_app_code_subminor_ver;    /* '<S120>/psc_AppVersion' */
uint16_T atv_boot_code_year;           /* '<S121>/psc_BootBuildDate' */
uint16_T atv_boot_code_month;          /* '<S121>/psc_BootBuildDate' */
uint16_T atv_boot_code_day;            /* '<S121>/psc_BootBuildDate' */
uint16_T atv_boot_code_major_ver;      /* '<S121>/psc_BootVersion' */
uint16_T atv_boot_code_minor_ver;      /* '<S121>/psc_BootVersion' */
uint16_T atv_boot_code_subminor_ver;   /* '<S121>/psc_BootVersion' */
uint16_T atv_prg_code_year;            /* '<S122>/psc_PrgBuildDate' */
uint16_T atv_prg_code_month;           /* '<S122>/psc_PrgBuildDate' */
uint16_T atv_prg_code_day;             /* '<S122>/psc_PrgBuildDate' */
uint16_T atv_prg_code_major_ver;       /* '<S122>/psc_PrgVersion' */
uint16_T atv_prg_code_minor_ver;       /* '<S122>/psc_PrgVersion' */
uint16_T atv_prg_code_subminor_ver;    /* '<S122>/psc_PrgVersion' */
uint16_T atv_platform_code_year;       /* '<S123>/psc_PlatformBuildDate' */
uint16_T atv_platform_code_month;      /* '<S123>/psc_PlatformBuildDate' */
uint16_T atv_platform_code_day;        /* '<S123>/psc_PlatformBuildDate' */
uint16_T atv_platform_code_major_ver;  /* '<S123>/psc_PlatformVersion' */
uint16_T atv_platform_code_minor_ver;  /* '<S123>/psc_PlatformVersion' */
uint16_T atv_platform_code_subminor_ver;/* '<S123>/psc_PlatformVersion' */
uint16_T atv_reg_current_limit;        /* '<S30>/Saturation' */
uint16_T atv_mtr_current_limit;        /* '<S30>/Saturation1' */
int16_T atv_T_Air;                     /* '<S84>/Data Type Conversion6' */
int16_T atv_RPM_Gen;                   /* '<Root>/Rate Transition24' */
int16_T atv_T_ICE;                     /* '<S168>/Data Type Conversion6' */
int16_T atv_TRad_out;                  /* '<S86>/Data Type Conversion6' */
int16_T atv_TRad;                      /* '<S124>/Divide' */
int16_T atv_TRad_in;                   /* '<S85>/Data Type Conversion6' */
int16_T atv_brake2epedal_split_actual; /* '<S138>/Multiport Switch1' */
int16_T atv_bmsMaxChgCurr;             /* '<S5>/Switch2' */
int16_T atv_GenCurrentSetPoint;        /* '<S141>/Data Type Conversion1' */
int16_T atv_ice_rpm_req;               /* '<S141>/Data Type Conversion5' */
int16_T atv_bmsMaxDisCurr;             /* '<S5>/Switch1' */
uint8_T atv_GenSelProcessed;           /* '<S87>/Merge' */
uint8_T bms_pack_soc;                  /* '<S4>/Data Type Conversion' */
uint8_T bms_rolling_counter;           /* '<S4>/Data Type Conversion1' */
uint8_T atv_fuel_level;                /* '<S28>/1-D Lookup Table' */
uint8_T atv_RegMapSelProcessed;        /* '<S88>/Merge' */
uint8_T atv_regmap;                    /* '<S138>/Saturation3' */
uint8_T atv_map;                       /* '<S138>/Saturation2' */
uint8_T atv_cpu_loading;               /* '<S119>/psc_CpuLoading1' */
uint8_T atv_cpu_loading_max;           /* '<S119>/psc_CpuLoading2' */
uint8_T atv_vehicle_SOC;               /* '<S31>/Data Type Conversion2' */
uint8_T atv_state_out;                 /* '<S34>/VSM' */
uint8_T atv_sub_state_out;             /* '<S34>/VSM' */
uint8_T atv_IceSM;                     /* '<S141>/VSMGestioneIbrido' */
uint8_T atv_IceRG;                     /* '<S141>/VSMGestioneIbrido' */
uint8_T atv_pm_Hybrid;                 /* '<S2>/Merge' */
boolean_T key_signal;                  /* '<S126>/Compare' */
boolean_T atv_za3_StartBtn_din;        /* '<S28>/pdx_DigitalInput' */
boolean_T atv_zc2;                     /* '<S28>/pdx_DigitalInput8' */
boolean_T atv_zc4;                     /* '<S28>/pdx_DigitalInput9' */
boolean_T atv_fwd_mode_in;             /* '<S28>/Relay2' */
boolean_T atv_rwd_mode_in;             /* '<S28>/Relay3' */
boolean_T atv_brake_pedal_digital_in;  /* '<S28>/Relay1' */
boolean_T atv_startConditions;         /* '<S34>/Logical Operator3' */
boolean_T atv_apu_req_in;              /* '<S28>/Relay4' */
boolean_T atv_xf4;                     /* '<S28>/pdx_DigitalInput6' */
boolean_T atv_dbg_pumpA_out;           /* '<S150>/Logical Operator7' */
boolean_T atv_za2;                     /* '<S28>/pdx_DigitalInput7' */
boolean_T atv_runLed_out;              /* '<S34>/Logical Operator13' */
boolean_T atv_zb2;                     /* '<S28>/pdx_DigitalInput4' */
boolean_T atv_zb3;                     /* '<S28>/pdx_DigitalInput5' */
boolean_T atv_yg2;                     /* '<S28>/pdx_DigitalInput1' */
boolean_T atv_yh2;                     /* '<S28>/pdx_DigitalInput2' */
boolean_T atv_yj2;                     /* '<S28>/pdx_DigitalInput3' */
boolean_T atv_chg_present;             /* '<S47>/Relational Operator2' */
boolean_T atv_can_wakeup;              /* '<S48>/Relational Operator2' */
boolean_T atv_v_dbg_chg_req;           /* '<S18>/Switch1' */
boolean_T atv_v_dbg_heater_req;        /* '<S18>/Switch2' */
boolean_T atv_fs1_in;                  /* '<S28>/Relay' */
boolean_T atv_HandBrakeStatus;         /* '<S28>/Logical Operator1' */
boolean_T atv_4wd_din;                 /* '<S28>/Relay5' */
boolean_T atv_fs1_out;                 /* '<S138>/Constant' */
boolean_T atv_fuel_reserve;            /* '<S166>/Compare' */
boolean_T atv_ICE_Start_Timer_Valid;   /* '<S111>/AND' */
boolean_T atv_wakelock_out;            /* '<S34>/VSM' */
boolean_T atv_en_dcdc_out;             /* '<S34>/VSM' */
boolean_T atv_startBtnArmed;           /* '<S34>/VSM' */
boolean_T atv_IceKey_out;              /* '<S141>/VSMGestioneIbrido' */
boolean_T atv_IceShutdown_out;         /* '<S141>/VSMGestioneIbrido' */
boolean_T atv_IceOn;                   /* '<S141>/VSMGestioneIbrido' */
boolean_T atv_IceFault;                /* '<S141>/VSMGestioneIbrido' */
boolean_T atv_PumpBFault;              /* '<S150>/Chart2' */
boolean_T atv_PumpAFault;              /* '<S150>/Chart1' */
boolean_T atv_dbg_pumpB_out;           /* '<S150>/Chart' */
boolean_T atv_yg1;                     /* '<Root>/Chart' */
boolean_T atv_pm_PreOp;                /* '<S2>/Logical Operator' */
boolean_T atv_pm_Stealth;              /* '<S2>/PS0' */
boolean_T atv_pm_Electric;             /* '<S2>/Logical Operator1' */
boolean_T atv_pm_g;                    /* '<S1>/Logical Operator' */
boolean_T atv_pm_s1;                   /* '<S1>/Logical Operator16' */
boolean_T atv_pm_s2;                   /* '<S1>/Logical Operator20' */
boolean_T atv_pm_s3;                   /* '<S1>/Logical Operator25' */
boolean_T atv_pm_2;                    /* '<S1>/Logical Operator3' */
boolean_T atv_pm_1;                    /* '<S1>/Logical Operator4' */
boolean_T atv_pm_0;                    /* '<S1>/Logical Operator7' */

/* Exported block parameters */
OE_CAL real_T atvc_ICE_dragging_time = 8.5;/* Variable: atvc_ICE_dragging_time
                                            * Referenced by: '<S141>/VSMGestioneIbrido'
                                            */
OE_CAL real_T atvc_an_in_sel_his = 0.25;/* Variable: atvc_an_in_sel_his
                                         * Referenced by:
                                         *   '<S28>/Relay2'
                                         *   '<S28>/Relay3'
                                         *   '<S28>/Relay4'
                                         *   '<S28>/Relay5'
                                         */
OE_CAL real_T atvc_an_in_sel_th = 2.5; /* Variable: atvc_an_in_sel_th
                                        * Referenced by:
                                        *   '<S28>/Relay2'
                                        *   '<S28>/Relay3'
                                        *   '<S28>/Relay4'
                                        *   '<S28>/Relay5'
                                        */
OE_CAL real_T atvc_brake_pedal_gain = 1.5;/* Variable: atvc_brake_pedal_gain
                                           * Referenced by: '<S90>/Gain1'
                                           */
OE_CAL real_T atvc_brake_pedal_zero = 0.9;/* Variable: atvc_brake_pedal_zero
                                           * Referenced by: '<S90>/Constant1'
                                           */
OE_CAL real_T atvc_fmot_run_timer = 0.0;/* Variable: atvc_fmot_run_timer
                                         * Referenced by: '<S139>/pnv_AdaptiveScalar'
                                         */
OE_CAL real_T atvc_gear_ratio = 5.88;  /* Variable: atvc_gear_ratio
                                        * Referenced by: '<S145>/Constant1'
                                        */
OE_CAL real_T atvc_ice_run_timer = 0.0;/* Variable: atvc_ice_run_timer
                                        * Referenced by: '<S142>/pnv_AdaptiveScalar'
                                        */
OE_CAL real_T atvc_odometer = 0.0;     /* Variable: atvc_odometer
                                        * Referenced by: '<S145>/pnv_AdaptiveScalar'
                                        */
OE_CAL real_T atvc_rmot_run_timer = 0.0;/* Variable: atvc_rmot_run_timer
                                         * Referenced by: '<S146>/pnv_AdaptiveScalar'
                                         */
OE_CAL real_T atvc_wheel_radius = 0.3907;/* Variable: atvc_wheel_radius
                                          * Referenced by:
                                          *   '<S145>/wheelRad'
                                          *   '<S147>/wheelRad1'
                                          */
OE_CAL real_T atvm_currentfromrpm_x[4] = { 2800.0, 4000.0, 5000.0, 6200.0 } ;/* Variable: atvm_currentfromrpm_x
                                                                      * Referenced by: '<S141>/put_Calmap1d'
                                                                      */

OE_CAL real_T atvm_currentfromrpm_z[4] = { 45.0, 65.0, 85.0, 105.0 } ;/* Variable: atvm_currentfromrpm_z
                                                                      * Referenced by: '<S141>/put_Calmap1d'
                                                                      */

OE_CAL real_T atvm_rpmfromcurrent_x[4] = { 40.0, 60.0, 80.0, 105.0 } ;/* Variable: atvm_rpmfromcurrent_x
                                                                      * Referenced by: '<S141>/put_Calmap1d1'
                                                                      */

OE_CAL real_T atvm_rpmfromcurrent_z[4] = { 2800.0, 4000.0, 5000.0, 6200.0 } ;/* Variable: atvm_rpmfromcurrent_z
                                                                      * Referenced by: '<S141>/put_Calmap1d1'
                                                                      */

OE_CAL real32_T atvc_ICE_ReserveFuel = 2.5F;/* Variable: atvc_ICE_ReserveFuel
                                             * Referenced by: '<S166>/Constant'
                                             */
OE_CAL real32_T atvc_ICE_Tank_Volume = 20.0F;/* Variable: atvc_ICE_Tank_Volume
                                              * Referenced by: '<S141>/const3'
                                              */
OE_CAL real32_T atvc_gen_TEST_PWM = 0.0F;/* Variable: atvc_gen_TEST_PWM
                                          * Referenced by: '<S141>/atvc_test_rpm1'
                                          */
OE_CAL real32_T atvc_gen_start_PID_KI = 0.1F;/* Variable: atvc_gen_start_PID_KI
                                              * Referenced by: '<S315>/Integral Gain'
                                              */
OE_CAL real32_T atvc_gen_start_PID_KP = 0.48F;/* Variable: atvc_gen_start_PID_KP
                                               * Referenced by: '<S342>/Proportional Gain'
                                               */
OE_CAL int16_T atvc_EndWarmUpTemp = 50;/* Variable: atvc_EndWarmUpTemp
                                        * Referenced by: '<S141>/atvc_RpmEndwarmUp'
                                        */
OE_CAL int16_T atvc_GenCurrent0 = -40; /* Variable: atvc_GenCurrent0
                                        * Referenced by: '<S34>/atvc_GenCurrent0'
                                        */
OE_CAL int16_T atvc_GenCurrent1 = -60; /* Variable: atvc_GenCurrent1
                                        * Referenced by: '<S34>/atvc_GenCurrent1'
                                        */
OE_CAL int16_T atvc_GenCurrent2 = -80; /* Variable: atvc_GenCurrent2
                                        * Referenced by: '<S34>/atvc_GenCurrent2'
                                        */
OE_CAL int16_T atvc_GenWarmUpCurrent = -20;/* Variable: atvc_GenWarmUpCurrent
                                            * Referenced by: '<S141>/atvc_GenWarmUpCurrent'
                                            */
OE_CAL int16_T atvc_IceMaxTemp = 105;  /* Variable: atvc_IceMaxTemp
                                        * Referenced by: '<S141>/atvc_IceMaxTemp'
                                        */
OE_CAL int16_T atvc_brake2epedal_split_0 = 0;/* Variable: atvc_brake2epedal_split_0
                                              * Referenced by: '<S138>/atvc_brake2epedal_split'
                                              */
OE_CAL int16_T atvc_brake2epedal_split_1 = 80;/* Variable: atvc_brake2epedal_split_1
                                               * Referenced by: '<S138>/atvc_brake2epedal_split1'
                                               */
OE_CAL int16_T atvc_brake2epedal_split_2 = 175;/* Variable: atvc_brake2epedal_split_2
                                                * Referenced by: '<S138>/atvc_brake2epedal_split2'
                                                */
OE_CAL int16_T atvc_brake2epedal_split_3 = 275;/* Variable: atvc_brake2epedal_split_3
                                                * Referenced by: '<S138>/atvc_brake2epedal_split3'
                                                */
OE_CAL uint16_T atvc_GenWarmUpRPM = 2600U;/* Variable: atvc_GenWarmUpRPM
                                           * Referenced by: '<S141>/atvc_GenWarmUpRPM'
                                           */
OE_CAL uint16_T atvc_IceOffTh = 1500U; /* Variable: atvc_IceOffTh
                                        * Referenced by: '<S141>/VSMGestioneIbrido'
                                        */
OE_CAL uint16_T atvc_IceOnTh = 2300U;  /* Variable: atvc_IceOnTh
                                        * Referenced by: '<S141>/VSMGestioneIbrido'
                                        */
OE_CAL uint16_T atvc_StartThrottleIce = 300U;/* Variable: atvc_StartThrottleIce
                                              * Referenced by: '<S141>/VSMGestioneIbrido'
                                              */
OE_CAL uint16_T atvc_brakePedalHis = 0U;/* Variable: atvc_brakePedalHis
                                         * Referenced by: '<S28>/Relay1'
                                         */
OE_CAL uint16_T atvc_brakePedalOn = 100U;/* Variable: atvc_brakePedalOn
                                          * Referenced by: '<S28>/Relay1'
                                          */
OE_CAL uint16_T atvc_cell_ov = 4200U;  /* Variable: atvc_cell_ov
                                        * Referenced by: '<S79>/Constant'
                                        */
OE_CAL uint16_T atvc_cell_uv = 3000U;  /* Variable: atvc_cell_uv
                                        * Referenced by: '<S78>/Constant'
                                        */
OE_CAL uint16_T atvc_chg_complete = 4050U;/* Variable: atvc_chg_complete
                                           * Referenced by: '<S22>/Constant'
                                           */
OE_CAL uint16_T atvc_chg_target_v = 4150U;/* Variable: atvc_chg_target_v
                                           * Referenced by: '<S19>/Constant'
                                           */
OE_CAL uint16_T atvc_footBrakeIce = 1000U;/* Variable: atvc_footBrakeIce
                                           * Referenced by: '<S141>/VSMGestioneIbrido'
                                           */
OE_CAL uint16_T atvc_footBrakeWarmUp = 1000U;/* Variable: atvc_footBrakeWarmUp
                                              * Referenced by: '<S141>/VSMGestioneIbrido'
                                              */
OE_CAL uint16_T atvc_fs1_throttle_coherency = 150U;/* Variable: atvc_fs1_throttle_coherency
                                                    * Referenced by: '<S156>/Constant'
                                                    */
OE_CAL uint16_T atvc_gen_ramp_up = 300U;/* Variable: atvc_gen_ramp_up
                                         * Referenced by: '<S3>/atvc_gen_ramp_up'
                                         */
OE_CAL uint16_T atvc_gen_start_rpm = 950U;/* Variable: atvc_gen_start_rpm
                                           * Referenced by: '<S267>/atvc_gen_start_rpm'
                                           */
OE_CAL uint16_T atvc_maxDischCurr = 450U;/* Variable: atvc_maxDischCurr
                                          * Referenced by: '<S3>/atvc_maxDischCurr'
                                          */
OE_CAL uint16_T atvc_maxRegenCurr = 150U;/* Variable: atvc_maxRegenCurr
                                          * Referenced by: '<S3>/atvc_maxRegenCurr'
                                          */
OE_CAL uint16_T atvc_max_footbrake_trq = 500U;/* Variable: atvc_max_footbrake_trq
                                               * Referenced by: '<S3>/Constant6'
                                               */
OE_CAL uint16_T atvc_max_gen_neutral_trq = 0U;/* Variable: atvc_max_gen_neutral_trq
                                               * Referenced by: '<S3>/atvc_max_gen_neutral_trq'
                                               */
OE_CAL uint16_T atvc_max_gen_reg_trq = 1000U;/* Variable: atvc_max_gen_reg_trq
                                              * Referenced by: '<S3>/atvc_max_gen_reg_trq'
                                              */
OE_CAL uint16_T atvc_max_gen_trq = 450U;/* Variable: atvc_max_gen_trq
                                         * Referenced by: '<S3>/atvc_max_gen_trq'
                                         */
OE_CAL uint16_T atvc_max_neutralbrake_trq = 0U;/* Variable: atvc_max_neutralbrake_trq
                                                * Referenced by: '<S3>/Constant7'
                                                */
OE_CAL uint16_T atvc_max_trq_front = 1000U;/* Variable: atvc_max_trq_front
                                            * Referenced by: '<S3>/Constant9'
                                            */
OE_CAL uint16_T atvc_max_trq_rear = 1000U;/* Variable: atvc_max_trq_rear
                                           * Referenced by: '<S3>/Constant5'
                                           */
OE_CAL uint16_T atvc_throttleFull = 770U;/* Variable: atvc_throttleFull
                                          * Referenced by: '<S89>/atvc_throttleFull'
                                          */
OE_CAL uint16_T atvc_throttleNeutralPoint = 100U;/* Variable: atvc_throttleNeutralPoint
                                                  * Referenced by: '<S138>/atvc_throttleNeutralPoint'
                                                  */
OE_CAL uint16_T atvc_throttleZero = 300U;/* Variable: atvc_throttleZero
                                          * Referenced by: '<S89>/atvc_throttleZero'
                                          */
OE_CAL boolean_T atvc_ChargeOverride = 0;/* Variable: atvc_ChargeOverride
                                          * Referenced by: '<Root>/Constant3'
                                          */
OE_CAL boolean_T atvc_OverridePumpA = 0;/* Variable: atvc_OverridePumpA
                                         * Referenced by: '<S150>/atvc_OverridePumpA'
                                         */
OE_CAL boolean_T atvc_OverridePumpB = 0;/* Variable: atvc_OverridePumpB
                                         * Referenced by: '<S150>/atvc_OverridePumpB'
                                         */
OE_CAL boolean_T atvc_fmot_run_timer_reset = 0;/* Variable: atvc_fmot_run_timer_reset
                                                * Referenced by: '<S139>/atvc_fmot_run_timer_reset'
                                                */
OE_CAL boolean_T atvc_force_inv_preop = 0;/* Variable: atvc_force_inv_preop
                                           * Referenced by:
                                           *   '<S34>/Constant'
                                           *   '<S138>/Constant10'
                                           */
OE_CAL boolean_T atvc_gen_PWM_Override = 0;/* Variable: atvc_gen_PWM_Override
                                            * Referenced by: '<S141>/atvc_test_rpm2'
                                            */
OE_CAL boolean_T atvc_ice_run_timer_reset = 0;/* Variable: atvc_ice_run_timer_reset
                                               * Referenced by: '<S142>/atvc_ice_run_timer_reset'
                                               */
OE_CAL boolean_T atvc_odometer_reset = 0;/* Variable: atvc_odometer_reset
                                          * Referenced by: '<S145>/atvc_odometer_reset'
                                          */
OE_CAL boolean_T atvc_rmot_run_timer_reset = 0;/* Variable: atvc_rmot_run_timer_reset
                                                * Referenced by: '<S146>/atvc_ice_run_timer_reset'
                                                */
OE_CAL int8_T atvc_HeatingMat_thr = 0; /* Variable: atvc_HeatingMat_thr
                                        * Referenced by: '<S34>/VSM'
                                        */
OE_CAL int8_T atvc_cell_ot = 70;       /* Variable: atvc_cell_ot
                                        * Referenced by: '<S80>/Constant'
                                        */
OE_CAL int8_T atvc_cell_ut = -30;      /* Variable: atvc_cell_ut
                                        * Referenced by: '<S77>/Constant'
                                        */
OE_CAL uint8_T atvc_ErrTempInv = 85U;  /* Variable: atvc_ErrTempInv
                                        * Referenced by:
                                        *   '<S74>/Constant'
                                        *   '<S75>/Constant'
                                        *   '<S76>/Constant'
                                        */
OE_CAL uint8_T atvc_ErrTempMot = 85U;  /* Variable: atvc_ErrTempMot
                                        * Referenced by:
                                        *   '<S71>/Constant'
                                        *   '<S72>/Constant'
                                        *   '<S73>/Constant'
                                        */
OE_CAL uint8_T atvc_IceMaxSOC = 96U;   /* Variable: atvc_IceMaxSOC
                                        * Referenced by: '<S136>/Constant'
                                        */
OE_CAL uint8_T atvc_IceStartRetry = 3U;/* Variable: atvc_IceStartRetry
                                        * Referenced by: '<S141>/VSMGestioneIbrido'
                                        */
OE_CAL uint8_T atvc_IceStartSOC = 50U; /* Variable: atvc_IceStartSOC
                                        * Referenced by:
                                        *   '<S32>/atvc_IceStartSOC'
                                        *   '<S135>/Constant'
                                        */
OE_CAL uint8_T atvc_IceStopSOC = 90U;  /* Variable: atvc_IceStopSOC
                                        * Referenced by: '<S133>/Constant'
                                        */
OE_CAL uint8_T atvc_OverrideFan = 0U;  /* Variable: atvc_OverrideFan
                                        * Referenced by: '<S150>/atvc_OverrideFan'
                                        */
OE_CAL uint8_T atvc_dcMinFan = 30U;    /* Variable: atvc_dcMinFan
                                        * Referenced by:
                                        *   '<S150>/Switch4'
                                        *   '<S154>/atvc_dcMinFan'
                                        */
OE_CAL uint8_T atvc_maxTempInv = 40U;  /* Variable: atvc_maxTempInv
                                        * Referenced by:
                                        *   '<S69>/Constant'
                                        *   '<S124>/Relay1'
                                        *   '<S124>/Relay4'
                                        *   '<S124>/Relay5'
                                        */
OE_CAL uint8_T atvc_maxTempMotor = 65U;/* Variable: atvc_maxTempMotor
                                        * Referenced by:
                                        *   '<S70>/Constant'
                                        *   '<S124>/Relay'
                                        *   '<S124>/Relay2'
                                        *   '<S124>/Relay3'
                                        */
OE_CAL uint8_T atvc_max_soc = 90U;     /* Variable: atvc_max_soc
                                        * Referenced by: '<S31>/atvc_velocityLimitFwd1'
                                        */
OE_CAL uint8_T atvc_minTempInv = 30U;  /* Variable: atvc_minTempInv
                                        * Referenced by:
                                        *   '<S124>/Relay1'
                                        *   '<S124>/Relay4'
                                        *   '<S124>/Relay5'
                                        */
OE_CAL uint8_T atvc_minTempMotor = 60U;/* Variable: atvc_minTempMotor
                                        * Referenced by:
                                        *   '<S124>/Relay'
                                        *   '<S124>/Relay2'
                                        *   '<S124>/Relay3'
                                        */
OE_CAL uint8_T atvc_min_soc = 10U;     /* Variable: atvc_min_soc
                                        * Referenced by: '<S31>/atvc_velocityLimitFwd'
                                        */
OE_CAL uint8_T atvc_tempSwitchOffFan = 42U;/* Variable: atvc_tempSwitchOffFan
                                            * Referenced by: '<S154>/Relay1'
                                            */
OE_CAL uint8_T atvc_tempSwitchOnFan = 44U;/* Variable: atvc_tempSwitchOnFan
                                           * Referenced by:
                                           *   '<S150>/atvc_tempSwitchOnFan'
                                           *   '<S154>/Relay1'
                                           */
OE_CAL uint8_T atvc_velocityLimitFwd = 105U;/* Variable: atvc_velocityLimitFwd
                                             * Referenced by: '<S34>/atvc_velocityLimitFwd'
                                             */
OE_CAL uint8_T atvc_velocityLimitRwd = 30U;/* Variable: atvc_velocityLimitRwd
                                            * Referenced by: '<S34>/atvc_velocityLimitRwd'
                                            */
OE_CAL uint8_T atvv_map[2] = { 0U, 0U } ;/* Variable: atvv_map
                                          * Referenced by:
                                          *   '<S138>/pnv_array2'
                                          *   '<S61>/pnv_array1'
                                          *   '<S61>/pnv_array2'
                                          *   '<S62>/pnv_array1'
                                          *   '<S62>/pnv_array2'
                                          */

/* Block signals (default storage) */
B_ATV_T ATV_B;

/* Block states (default storage) */
DW_ATV_T ATV_DW;

/* Previous zero-crossings (trigger) states */
PrevZCX_ATV_T ATV_PrevZCX;

/* Real-time model */
RT_MODEL_ATV_T ATV_M_;
RT_MODEL_ATV_T *const ATV_M = &ATV_M_;

/* Forward declaration for local functions */
static void ATV_enter_internal_HYBRID(void);
static void ATV_ICE_START_STOP(void);
static void ATV_HV_REQ_RUN(void);
static void ATV_IDLE(void);
static void ATV_INIT(void);
static void ATV_INV_OFF(void);
static void ATV_PRE_SLEEP(void);
static void ATV_PRE_START(void);
static void ATV_RUN(void);
static void ATV_SLEEP(void);
static void ATV_SM(void);
static void ATV_MON(void);
static void ATV_IceSM(void);
static void ATV_SystemCore_release_p(dsp_simulink_MovingAverage_p_T *obj);
static void ATV_SystemCore_delete_p(dsp_simulink_MovingAverage_p_T *obj);
static void matlabCodegenHandle_matlabCod_p(dsp_simulink_MovingAverage_p_T *obj);
static void ATV_SystemCore_release(dsp_simulink_MovingAverage_AT_T *obj);
static void ATV_SystemCore_delete(dsp_simulink_MovingAverage_AT_T *obj);
static void matlabCodegenHandle_matlabCodeg(dsp_simulink_MovingAverage_AT_T *obj);
static void rate_monotonic_scheduler(void);
PCX_HANDLE_T pcx_CANdb_TransmitMessage23_n_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage24_d_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage1_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage10_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage11_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage12_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage13_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage14_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage15_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage2_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage20_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage23_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage3_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage4_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage5_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage19_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage22_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage24_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage26_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage6_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage7_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage8_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage9_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage21_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage25_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage16_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage17_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage18_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage_k_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage_j_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage_a_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage_d_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage_c_msg_handle;
PCX_HANDLE_T pcx_CANdb_TransmitMessage1_b_msg_handle;
PUT_DEBOUNCE_TIME_T pdx_DigitalInput_detm_wrk_data;
PUT_DEBOUNCE_TIME_T pdx_DigitalInput8_detm_wrk_data;
PUT_DEBOUNCE_TIME_T pdx_DigitalInput9_detm_wrk_data;
PUT_DEBOUNCE_TIME_T pdx_DigitalInput6_detm_wrk_data;
PUT_DEBOUNCE_TIME_T pdx_DigitalInput7_detm_wrk_data;
PUT_DEBOUNCE_TIME_T pdx_DigitalInput4_detm_wrk_data;
PUT_DEBOUNCE_TIME_T pdx_DigitalInput5_detm_wrk_data;
PUT_DEBOUNCE_TIME_T pdx_DigitalInput1_detm_wrk_data;
PUT_DEBOUNCE_TIME_T pdx_DigitalInput2_detm_wrk_data;
PUT_DEBOUNCE_TIME_T pdx_DigitalInput3_detm_wrk_data;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_j_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_h_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage1_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_d_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_c_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_f_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_e_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_l_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_es_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_a_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_er_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_g_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_lz_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_i_msg_handle;
PCX_HANDLE_T pcx_CANdb_ReceiveMessage_fn_msg_handle;

#include "rt_sim.h"
#ifdef USE_RTMODEL
#define EXPAND_CONCAT(name1,name2)     name1 ## name2
#define CONCAT(name1,name2)            EXPAND_CONCAT(name1,name2)
#define RT_MODEL                       CONCAT(ATV,_rtModel)

RT_MODEL *S;

#endif

real32_T look1_iflf_binlxpw(real32_T u0, const real32_T bp0[], const real32_T
  table[], uint32_T maxIndex)
{
  real32_T frac;
  uint32_T iRght;
  uint32_T iLeft;
  uint32_T bpIdx;

  /* Column-major Lookup 1-D
     Search method: 'binary'
     Use previous index: 'off'
     Interpolation method: 'Linear point-slope'
     Extrapolation method: 'Linear'
     Use last breakpoint for index at or above upper limit: 'off'
     Remove protection against out-of-range input in generated code: 'off'
   */
  /* Prelookup - Index and Fraction
     Index Search method: 'binary'
     Extrapolation method: 'Linear'
     Use previous index: 'off'
     Use last breakpoint for index at or above upper limit: 'off'
     Remove protection against out-of-range input in generated code: 'off'
   */
  if (u0 <= bp0[0U]) {
    iLeft = 0U;
    frac = (u0 - bp0[0U]) / (bp0[1U] - bp0[0U]);
  } else if (u0 < bp0[maxIndex]) {
    /* Binary Search */
    bpIdx = maxIndex >> 1U;
    iLeft = 0U;
    iRght = maxIndex;
    while (iRght - iLeft > 1U) {
      if (u0 < bp0[bpIdx]) {
        iRght = bpIdx;
      } else {
        iLeft = bpIdx;
      }

      bpIdx = (iRght + iLeft) >> 1U;
    }

    frac = (u0 - bp0[iLeft]) / (bp0[iLeft + 1U] - bp0[iLeft]);
  } else {
    iLeft = maxIndex - 1U;
    frac = (u0 - bp0[maxIndex - 1U]) / (bp0[maxIndex] - bp0[maxIndex - 1U]);
  }

  /* Column-major Interpolation 1-D
     Interpolation method: 'Linear point-slope'
     Use last breakpoint for index at or above upper limit: 'off'
     Overflow mode: 'portable wrapping'
   */
  return (table[iLeft + 1U] - table[iLeft]) * frac + table[iLeft];
}

uint8_T look1_tu8Dd_binlcpw(real_T u0, const real_T bp0[], const uint8_T table[],
  uint32_T maxIndex)
{
  real_T frac;
  uint32_T iRght;
  uint32_T iLeft;
  uint32_T bpIdx;

  /* Column-major Lookup 1-D
     Search method: 'binary'
     Use previous index: 'off'
     Interpolation method: 'Linear point-slope'
     Extrapolation method: 'Clip'
     Use last breakpoint for index at or above upper limit: 'off'
     Remove protection against out-of-range input in generated code: 'off'
   */
  /* Prelookup - Index and Fraction
     Index Search method: 'binary'
     Extrapolation method: 'Clip'
     Use previous index: 'off'
     Use last breakpoint for index at or above upper limit: 'off'
     Remove protection against out-of-range input in generated code: 'off'
   */
  if (u0 <= bp0[0U]) {
    iLeft = 0U;
    frac = 0.0;
  } else if (u0 < bp0[maxIndex]) {
    /* Binary Search */
    bpIdx = maxIndex >> 1U;
    iLeft = 0U;
    iRght = maxIndex;
    while (iRght - iLeft > 1U) {
      if (u0 < bp0[bpIdx]) {
        iRght = bpIdx;
      } else {
        iLeft = bpIdx;
      }

      bpIdx = (iRght + iLeft) >> 1U;
    }

    frac = (u0 - bp0[iLeft]) / (bp0[iLeft + 1U] - bp0[iLeft]);
  } else {
    iLeft = maxIndex - 1U;
    frac = 1.0;
  }

  /* Column-major Interpolation 1-D
     Interpolation method: 'Linear point-slope'
     Use last breakpoint for index at or above upper limit: 'off'
     Overflow mode: 'portable wrapping'
   */
  frac *= (real_T)table[iLeft + 1U] - (real_T)table[iLeft];
  if (frac < 0.0) {
    frac = ceil(frac);
  } else {
    frac = floor(frac);
  }

  if (rtIsNaN(frac) || rtIsInf(frac)) {
    frac = 0.0;
  } else {
    frac = fmod(frac, 256.0);
  }

  return (uint8_T)((uint32_T)(uint8_T)(frac < 0.0 ? (int32_T)(uint8_T)-(int8_T)
    (uint8_T)-frac : (int32_T)(uint8_T)frac) + table[iLeft]);
}

real_T look1_binlcapw(real_T u0, const real_T bp0[], const real_T table[],
                      uint32_T maxIndex)
{
  real_T y;
  real_T frac;
  uint32_T iRght;
  uint32_T iLeft;
  uint32_T bpIdx;

  /* Column-major Lookup 1-D
     Search method: 'binary'
     Use previous index: 'off'
     Interpolation method: 'Linear point-slope'
     Extrapolation method: 'Clip'
     Use last breakpoint for index at or above upper limit: 'on'
     Remove protection against out-of-range input in generated code: 'off'
   */
  /* Prelookup - Index and Fraction
     Index Search method: 'binary'
     Extrapolation method: 'Clip'
     Use previous index: 'off'
     Use last breakpoint for index at or above upper limit: 'on'
     Remove protection against out-of-range input in generated code: 'off'
   */
  if (u0 <= bp0[0U]) {
    iLeft = 0U;
    frac = 0.0;
  } else if (u0 < bp0[maxIndex]) {
    /* Binary Search */
    bpIdx = maxIndex >> 1U;
    iLeft = 0U;
    iRght = maxIndex;
    while (iRght - iLeft > 1U) {
      if (u0 < bp0[bpIdx]) {
        iRght = bpIdx;
      } else {
        iLeft = bpIdx;
      }

      bpIdx = (iRght + iLeft) >> 1U;
    }

    frac = (u0 - bp0[iLeft]) / (bp0[iLeft + 1U] - bp0[iLeft]);
  } else {
    iLeft = maxIndex;
    frac = 0.0;
  }

  /* Column-major Interpolation 1-D
     Interpolation method: 'Linear point-slope'
     Use last breakpoint for index at or above upper limit: 'on'
     Overflow mode: 'portable wrapping'
   */
  if (iLeft == maxIndex) {
    y = table[iLeft];
  } else {
    y = (table[iLeft + 1U] - table[iLeft]) * frac + table[iLeft];
  }

  return y;
}

real_T look1_is16bdtd_binlcpw(int16_T u0, const real_T bp0[], const real_T
  table[], uint32_T maxIndex)
{
  real_T frac;
  uint32_T iRght;
  uint32_T iLeft;
  uint32_T bpIdx;

  /* Column-major Lookup 1-D
     Search method: 'binary'
     Use previous index: 'off'
     Interpolation method: 'Linear point-slope'
     Extrapolation method: 'Clip'
     Use last breakpoint for index at or above upper limit: 'off'
     Remove protection against out-of-range input in generated code: 'off'
   */
  /* Prelookup - Index and Fraction
     Index Search method: 'binary'
     Extrapolation method: 'Clip'
     Use previous index: 'off'
     Use last breakpoint for index at or above upper limit: 'off'
     Remove protection against out-of-range input in generated code: 'off'
   */
  if (u0 < bp0[0U]) {
    iLeft = 0U;
    frac = 0.0;
  } else if (u0 < bp0[maxIndex]) {
    /* Binary Search */
    bpIdx = maxIndex >> 1U;
    iLeft = 0U;
    iRght = maxIndex;
    while (iRght - iLeft > 1U) {
      if (u0 < bp0[bpIdx]) {
        iRght = bpIdx;
      } else {
        iLeft = bpIdx;
      }

      bpIdx = (iRght + iLeft) >> 1U;
    }

    frac = ((real_T)u0 - bp0[iLeft]) / (bp0[iLeft + 1U] - bp0[iLeft]);
  } else {
    iLeft = maxIndex - 1U;
    frac = 1.0;
  }

  /* Column-major Interpolation 1-D
     Interpolation method: 'Linear point-slope'
     Use last breakpoint for index at or above upper limit: 'off'
     Overflow mode: 'portable wrapping'
   */
  return (table[iLeft + 1U] - table[iLeft]) * frac + table[iLeft];
}

real_T look1_binlcpw(real_T u0, const real_T bp0[], const real_T table[],
                     uint32_T maxIndex)
{
  real_T frac;
  uint32_T iRght;
  uint32_T iLeft;
  uint32_T bpIdx;

  /* Column-major Lookup 1-D
     Search method: 'binary'
     Use previous index: 'off'
     Interpolation method: 'Linear point-slope'
     Extrapolation method: 'Clip'
     Use last breakpoint for index at or above upper limit: 'off'
     Remove protection against out-of-range input in generated code: 'off'
   */
  /* Prelookup - Index and Fraction
     Index Search method: 'binary'
     Extrapolation method: 'Clip'
     Use previous index: 'off'
     Use last breakpoint for index at or above upper limit: 'off'
     Remove protection against out-of-range input in generated code: 'off'
   */
  if (u0 <= bp0[0U]) {
    iLeft = 0U;
    frac = 0.0;
  } else if (u0 < bp0[maxIndex]) {
    /* Binary Search */
    bpIdx = maxIndex >> 1U;
    iLeft = 0U;
    iRght = maxIndex;
    while (iRght - iLeft > 1U) {
      if (u0 < bp0[bpIdx]) {
        iRght = bpIdx;
      } else {
        iLeft = bpIdx;
      }

      bpIdx = (iRght + iLeft) >> 1U;
    }

    frac = (u0 - bp0[iLeft]) / (bp0[iLeft + 1U] - bp0[iLeft]);
  } else {
    iLeft = maxIndex - 1U;
    frac = 1.0;
  }

  /* Column-major Interpolation 1-D
     Interpolation method: 'Linear point-slope'
     Use last breakpoint for index at or above upper limit: 'off'
     Overflow mode: 'portable wrapping'
   */
  return (table[iLeft + 1U] - table[iLeft]) * frac + table[iLeft];
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

boolean_T sMultiWordLe(const uint32_T u1[], const uint32_T u2[], int32_T n)
{
  return sMultiWordCmp(u1, u2, n) <= 0;
}

void mul_wide_s32(int32_T in0, int32_T in1, uint32_T *ptrOutBitsHi, uint32_T
                  *ptrOutBitsLo)
{
  uint32_T absIn0;
  uint32_T absIn1;
  uint32_T in0Lo;
  uint32_T in0Hi;
  uint32_T in1Hi;
  uint32_T productHiLo;
  uint32_T productLoHi;
  absIn0 = in0 < 0 ? ~(uint32_T)in0 + 1U : (uint32_T)in0;
  absIn1 = in1 < 0 ? ~(uint32_T)in1 + 1U : (uint32_T)in1;
  in0Hi = absIn0 >> 16U;
  in0Lo = absIn0 & 65535U;
  in1Hi = absIn1 >> 16U;
  absIn0 = absIn1 & 65535U;
  productHiLo = in0Hi * absIn0;
  productLoHi = in0Lo * in1Hi;
  absIn0 *= in0Lo;
  absIn1 = 0U;
  in0Lo = (productLoHi << 16U) + absIn0;
  if (in0Lo < absIn0) {
    absIn1 = 1U;
  }

  absIn0 = in0Lo;
  in0Lo += productHiLo << 16U;
  if (in0Lo < absIn0) {
    absIn1++;
  }

  absIn0 = (((productLoHi >> 16U) + (productHiLo >> 16U)) + in0Hi * in1Hi) +
    absIn1;
  if ((in0 != 0) && ((in1 != 0) && ((in0 > 0) != (in1 > 0)))) {
    absIn0 = ~absIn0;
    in0Lo = ~in0Lo;
    in0Lo++;
    if (in0Lo == 0U) {
      absIn0++;
    }
  }

  *ptrOutBitsHi = absIn0;
  *ptrOutBitsLo = in0Lo;
}

uint32_T mul_us32_hiSR(int32_T a, int32_T b, uint32_T aShift)
{
  uint32_T u32_chi;
  uint32_T u32_clo;
  mul_wide_s32(a, b, &u32_chi, &u32_clo);
  return (uint32_T)((int32_T)u32_chi >> aShift);
}

int32_T div_nde_s32_floor(int32_T numerator, int32_T denominator)
{
  return (((numerator < 0) != (denominator < 0)) && (numerator % denominator !=
           0) ? -1 : 0) + numerator / denominator;
}

int32_T div_s32_floor(int32_T numerator, int32_T denominator)
{
  int32_T quotient;
  uint32_T absNumerator;
  uint32_T absDenominator;
  uint32_T tempAbsQuotient;
  boolean_T quotientNeedsNegation;
  if (denominator == 0) {
    quotient = numerator >= 0 ? MAX_int32_T : MIN_int32_T;

    /* Divide by zero handler */
  } else {
    absNumerator = numerator < 0 ? ~(uint32_T)numerator + 1U : (uint32_T)
      numerator;
    absDenominator = denominator < 0 ? ~(uint32_T)denominator + 1U : (uint32_T)
      denominator;
    quotientNeedsNegation = ((numerator < 0) != (denominator < 0));
    tempAbsQuotient = absNumerator / absDenominator;
    if (quotientNeedsNegation) {
      absNumerator %= absDenominator;
      if (absNumerator > 0U) {
        tempAbsQuotient++;
      }
    }

    quotient = quotientNeedsNegation ? -(int32_T)tempAbsQuotient : (int32_T)
      tempAbsQuotient;
  }

  return quotient;
}

time_T rt_SimUpdateDiscreteEvents(
  int_T rtmNumSampTimes, void *rtmTimingData, int_T *rtmSampleHitPtr, int_T
  *rtmPerTaskSampleHits )
{
  rtmSampleHitPtr[1] = rtmStepTask(ATV_M, 1);
  rtmSampleHitPtr[2] = rtmStepTask(ATV_M, 2);
  rtmSampleHitPtr[3] = rtmStepTask(ATV_M, 3);
  rtmSampleHitPtr[4] = rtmStepTask(ATV_M, 4);
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

  /* tid 0 shares data with slower tid rates: 1, 2, 3, 4 */
  ATV_M->Timing.RateInteraction.TID0_1 = (ATV_M->Timing.TaskCounters.TID[1] == 0);

  /* update PerTaskSampleHits matrix for non-inline sfcn */
  ATV_M->Timing.perTaskSampleHits[1] = ATV_M->Timing.RateInteraction.TID0_1;
  ATV_M->Timing.RateInteraction.TID0_2 = (ATV_M->Timing.TaskCounters.TID[2] == 0);

  /* update PerTaskSampleHits matrix for non-inline sfcn */
  ATV_M->Timing.perTaskSampleHits[2] = ATV_M->Timing.RateInteraction.TID0_2;
  ATV_M->Timing.RateInteraction.TID0_3 = (ATV_M->Timing.TaskCounters.TID[3] == 0);

  /* update PerTaskSampleHits matrix for non-inline sfcn */
  ATV_M->Timing.perTaskSampleHits[3] = ATV_M->Timing.RateInteraction.TID0_3;
  ATV_M->Timing.RateInteraction.TID0_4 = (ATV_M->Timing.TaskCounters.TID[4] == 0);

  /* update PerTaskSampleHits matrix for non-inline sfcn */
  ATV_M->Timing.perTaskSampleHits[4] = ATV_M->Timing.RateInteraction.TID0_4;

  /* Compute which subrates run during the next base time step.  Subrates
   * are an integer multiple of the base rate counter.  Therefore, the subtask
   * counter is reset when it reaches its limit (zero means run).
   */
  (ATV_M->Timing.TaskCounters.TID[1])++;
  if ((ATV_M->Timing.TaskCounters.TID[1]) > 1) {/* Sample time: [0.02s, 0.0s] */
    ATV_M->Timing.TaskCounters.TID[1] = 0;
  }

  (ATV_M->Timing.TaskCounters.TID[2])++;
  if ((ATV_M->Timing.TaskCounters.TID[2]) > 9) {/* Sample time: [0.1s, 0.0s] */
    ATV_M->Timing.TaskCounters.TID[2] = 0;
  }

  (ATV_M->Timing.TaskCounters.TID[3])++;
  if ((ATV_M->Timing.TaskCounters.TID[3]) > 49) {/* Sample time: [0.5s, 0.0s] */
    ATV_M->Timing.TaskCounters.TID[3] = 0;
  }

  (ATV_M->Timing.TaskCounters.TID[4])++;
  if ((ATV_M->Timing.TaskCounters.TID[4]) > 99) {/* Sample time: [1.0s, 0.0s] */
    ATV_M->Timing.TaskCounters.TID[4] = 0;
  }
}

/*
 * System initialize for atomic system:
 *    '<S4>/Chart'
 *    '<S6>/Chart'
 */
void ATV_Chart_Init(DW_Chart_ATV_T *localDW)
{
  localDW->temporalCounter_i1 = 0U;
  localDW->is_active_c4_ATV = 0U;
  localDW->is_c4_ATV = ATV_IN_NO_ACTIVE_CHILD;
}

/*
 * Output and update for atomic system:
 *    '<S4>/Chart'
 *    '<S6>/Chart'
 */
void ATV_Chart(boolean_T rtu_in, B_Chart_ATV_T *localB, DW_Chart_ATV_T *localDW)
{
  /* Chart: '<S4>/Chart' */
  if (localDW->temporalCounter_i1 < 63U) {
    localDW->temporalCounter_i1++;
  }

  /* Gateway: CANBUS_Reception_BMS/Chart */
  /* During: CANBUS_Reception_BMS/Chart */
  if (localDW->is_active_c4_ATV == 0U) {
    /* Entry: CANBUS_Reception_BMS/Chart */
    localDW->is_active_c4_ATV = 1U;

    /* Entry Internal: CANBUS_Reception_BMS/Chart */
    /* Transition: '<S44>:4' */
    localDW->is_c4_ATV = ATV_IN_NO_RX;

    /* Entry 'NO_RX': '<S44>:5' */
    localB->out = false;
  } else if (localDW->is_c4_ATV == ATV_IN_NO_RX) {
    localB->out = false;

    /* During 'NO_RX': '<S44>:5' */
    if (rtu_in) {
      /* Transition: '<S44>:6' */
      localDW->is_c4_ATV = ATV_IN_RX;
      localDW->temporalCounter_i1 = 0U;

      /* Entry 'RX': '<S44>:3' */
      localB->out = true;
    }
  } else {
    localB->out = true;

    /* During 'RX': '<S44>:3' */
    if ((!rtu_in) && (localDW->temporalCounter_i1 >= 50U)) {
      /* Transition: '<S44>:7' */
      localDW->is_c4_ATV = ATV_IN_NO_RX;

      /* Entry 'NO_RX': '<S44>:5' */
      localB->out = false;
    }
  }

  /* End of Chart: '<S4>/Chart' */
}

/*
 * System initialize for atomic system:
 *    '<S8>/Chart'
 *    '<S9>/Chart'
 *    '<S10>/Chart'
 *    '<S12>/Chart'
 *    '<S13>/Chart'
 *    '<S15>/Chart'
 *    '<S16>/Chart'
 *    '<S17>/Chart'
 *    '<S18>/Chart'
 */
void ATV_Chart_d_Init(DW_Chart_ATV_n_T *localDW)
{
  localDW->temporalCounter_i1 = 0U;
  localDW->is_active_c24_ATV = 0U;
  localDW->is_c24_ATV = ATV_IN_NO_ACTIVE_CHILD_f;
}

/*
 * Output and update for atomic system:
 *    '<S8>/Chart'
 *    '<S9>/Chart'
 *    '<S10>/Chart'
 *    '<S12>/Chart'
 *    '<S13>/Chart'
 *    '<S15>/Chart'
 *    '<S16>/Chart'
 *    '<S17>/Chart'
 *    '<S18>/Chart'
 */
void ATV_Chart_o(boolean_T rtu_in, B_Chart_ATV_o_T *localB, DW_Chart_ATV_n_T
                 *localDW)
{
  /* Chart: '<S8>/Chart' */
  if (localDW->temporalCounter_i1 < 7U) {
    localDW->temporalCounter_i1++;
  }

  /* Gateway: CANBUS_Reception_D_STATUS1_FRONT/Chart */
  /* During: CANBUS_Reception_D_STATUS1_FRONT/Chart */
  if (localDW->is_active_c24_ATV == 0U) {
    /* Entry: CANBUS_Reception_D_STATUS1_FRONT/Chart */
    localDW->is_active_c24_ATV = 1U;

    /* Entry Internal: CANBUS_Reception_D_STATUS1_FRONT/Chart */
    /* Transition: '<S49>:4' */
    localDW->is_c24_ATV = ATV_IN_NO_RX_d;

    /* Entry 'NO_RX': '<S49>:5' */
    localB->out = false;
  } else if (localDW->is_c24_ATV == ATV_IN_NO_RX_d) {
    localB->out = false;

    /* During 'NO_RX': '<S49>:5' */
    if (rtu_in) {
      /* Transition: '<S49>:6' */
      localDW->is_c24_ATV = ATV_IN_RX_i;
      localDW->temporalCounter_i1 = 0U;

      /* Entry 'RX': '<S49>:3' */
      localB->out = true;
    }
  } else {
    localB->out = true;

    /* During 'RX': '<S49>:3' */
    if ((!rtu_in) && (localDW->temporalCounter_i1 >= 5U)) {
      /* Transition: '<S49>:7' */
      localDW->is_c24_ATV = ATV_IN_NO_RX_d;

      /* Entry 'NO_RX': '<S49>:5' */
      localB->out = false;
    }
  }

  /* End of Chart: '<S8>/Chart' */
}

/*
 * Output and update for action system:
 *    '<S88>/If Action Subsystem1'
 *    '<S88>/If Action Subsystem4'
 */
void ATV_IfActionSubsystem1(uint8_T *rty_Out1, boolean_T *rty_Out2)
{
  /* Constant: '<S99>/Constant' */
  *rty_Out1 = 2U;

  /* Constant: '<S99>/Constant1' */
  *rty_Out2 = true;
}

/*
 * System initialize for atomic system:
 *    '<S29>/Chart'
 *    '<S29>/Chart1'
 *    '<S29>/Chart2'
 */
void ATV_Chart_o_Init(DW_Chart_ATV_k_T *localDW)
{
  localDW->temporalCounter_i1 = 0U;
  localDW->is_active_c5_ATV = 0U;
  localDW->is_c5_ATV = ATV_IN_NO_ACTIVE_CHILD_o;
}

/*
 * Output and update for atomic system:
 *    '<S29>/Chart'
 *    '<S29>/Chart1'
 *    '<S29>/Chart2'
 */
void ATV_Chart_c(boolean_T rtu_in, B_Chart_ATV_k_T *localB, DW_Chart_ATV_k_T
                 *localDW)
{
  /* Chart: '<S29>/Chart' */
  if (localDW->temporalCounter_i1 < 255U) {
    localDW->temporalCounter_i1++;
  }

  /* Gateway: Subsystem/Chart */
  /* During: Subsystem/Chart */
  if (localDW->is_active_c5_ATV == 0U) {
    /* Entry: Subsystem/Chart */
    localDW->is_active_c5_ATV = 1U;

    /* Entry Internal: Subsystem/Chart */
    /* Transition: '<S105>:4' */
    localDW->is_c5_ATV = ATV_IN_NO_RX_j;

    /* Entry 'NO_RX': '<S105>:5' */
    localB->out = true;
  } else if (localDW->is_c5_ATV == ATV_IN_NO_RX_j) {
    localB->out = true;

    /* During 'NO_RX': '<S105>:5' */
    if (rtu_in) {
      /* Transition: '<S105>:6' */
      localDW->is_c5_ATV = ATV_IN_RX_ih;
      localDW->temporalCounter_i1 = 0U;

      /* Entry 'RX': '<S105>:3' */
      localB->out = false;
    }
  } else {
    localB->out = false;

    /* During 'RX': '<S105>:3' */
    if ((!rtu_in) && (localDW->temporalCounter_i1 >= 150U)) {
      /* Transition: '<S105>:7' */
      localDW->is_c5_ATV = ATV_IN_NO_RX_j;

      /* Entry 'NO_RX': '<S105>:5' */
      localB->out = true;
    }
  }

  /* End of Chart: '<S29>/Chart' */
}

/*
 * System initialize for atomic system:
 *    '<S157>/Chart'
 *    '<S158>/Chart'
 */
void ATV_Chart_a_Init(DW_Chart_ATV_g_T *localDW)
{
  localDW->temporalCounter_i1 = 0U;
  localDW->is_active_c20_ATV = 0U;
  localDW->is_c20_ATV = ATV_IN_NO_ACTIVE_CHILD_m;
}

/*
 * Output and update for atomic system:
 *    '<S157>/Chart'
 *    '<S158>/Chart'
 */
void ATV_Chart_n(boolean_T rtu_in, B_Chart_ATV_e_T *localB, DW_Chart_ATV_g_T
                 *localDW)
{
  /* Chart: '<S157>/Chart' */
  if (localDW->temporalCounter_i1 < 31U) {
    localDW->temporalCounter_i1++;
  }

  /* Gateway: loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE REAR/Chart */
  /* During: loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE REAR/Chart */
  if (localDW->is_active_c20_ATV == 0U) {
    /* Entry: loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE REAR/Chart */
    localDW->is_active_c20_ATV = 1U;

    /* Entry Internal: loop_10ms/DRIVE BY WIRE/DRIVE BY WIRE REAR/Chart */
    /* Transition: '<S159>:2' */
    localDW->is_c20_ATV = ATV_IN_OFF;

    /* Entry 'OFF': '<S159>:1' */
    localB->out = false;
  } else {
    switch (localDW->is_c20_ATV) {
     case ATV_IN_DEB:
      /* During 'DEB': '<S159>:8' */
      if (localDW->temporalCounter_i1 >= 20U) {
        /* Transition: '<S159>:9' */
        localDW->is_c20_ATV = ATV_IN_OFF;

        /* Entry 'OFF': '<S159>:1' */
        localB->out = false;
      }
      break;

     case ATV_IN_OFF:
      localB->out = false;

      /* During 'OFF': '<S159>:1' */
      if (rtu_in) {
        /* Transition: '<S159>:4' */
        localDW->is_c20_ATV = ATV_IN_ON;

        /* Entry 'ON': '<S159>:3' */
        localB->out = true;
      }
      break;

     default:
      localB->out = true;

      /* During 'ON': '<S159>:3' */
      if (!rtu_in) {
        /* Transition: '<S159>:5' */
        localDW->is_c20_ATV = ATV_IN_DEB;
        localDW->temporalCounter_i1 = 0U;
      }
      break;
    }
  }

  /* End of Chart: '<S157>/Chart' */
}

real_T rt_urand_Upu32_Yd_f_pw_snf(uint32_T *u)
{
  uint32_T lo;
  uint32_T hi;

  /* Uniform random number generator (random number between 0 and 1)

     #define IA      16807                      magic multiplier = 7^5
     #define IM      2147483647                 modulus = 2^31-1
     #define IQ      127773                     IM div IA
     #define IR      2836                       IM modulo IA
     #define S       4.656612875245797e-10      reciprocal of 2^31-1
     test = IA * (seed % IQ) - IR * (seed/IQ)
     seed = test < 0 ? (test + IM) : test
     return (seed*S)
   */
  lo = *u % 127773U * 16807U;
  hi = *u / 127773U * 2836U;
  if (lo < hi) {
    *u = 2147483647U - (hi - lo);
  } else {
    *u = lo - hi;
  }

  return (real_T)*u * 4.6566128752457969E-10;
}

real_T rt_nrand_Upu32_Yd_f_pw_snf(uint32_T *u)
{
  real_T y;
  real_T sr;
  real_T si;

  /* Normal (Gaussian) random number generator */
  do {
    sr = 2.0 * rt_urand_Upu32_Yd_f_pw_snf(u) - 1.0;
    si = 2.0 * rt_urand_Upu32_Yd_f_pw_snf(u) - 1.0;
    si = sr * sr + si * si;
  } while (si > 1.0);

  y = sqrt(-2.0 * log(si) / si) * sr;
  return y;
}

/* Function for Chart: '<S34>/Chart1' */
static void ATV_enter_internal_HYBRID(void)
{
  /* Entry Internal 'HYBRID': '<S125>:29' */
  /* Transition: '<S125>:25' */
  if (ATV_B.Switch_k || ATV_B.apu_req_out) {
    /* Transition: '<S125>:27' */
    /* Transition: '<S125>:37' */
    ATV_DW.is_HYBRID = ATV_IN_APU_ON;

    /* Entry 'APU_ON': '<S125>:24' */
    ATV_B.apu_req_out = true;
    ATV_B.warn_low_soc = false;
  } else {
    /* Transition: '<S125>:28' */
    ATV_DW.is_HYBRID = ATV_IN_APU_OFF;

    /* Entry 'APU_OFF': '<S125>:23' */
    ATV_B.apu_req_out = false;
    ATV_B.warn_high_soc = false;
  }
}

/* Function for Chart: '<S34>/Chart1' */
static void ATV_ICE_START_STOP(void)
{
  /* During 'ICE_START_STOP': '<S125>:40' */
  if (ATV_DW.is_ICE_START_STOP == ATV_IN_KEY_ON) {
    /* During 'KEY_ON': '<S125>:12' */
    if (ATV_B.Memory4) {
      /* Transition: '<S125>:15' */
      /* Exit Internal 'KEY_ON': '<S125>:12' */
      ATV_DW.is_KEY_ON = ATV_IN_NO_ACTIVE_CHILD_c;
      ATV_DW.is_ICE_START_STOP = ATV_IN_RUN_MODE;

      /* Entry Internal 'RUN_MODE': '<S125>:13' */
      /* Transition: '<S125>:32' */
      ATV_DW.is_RUN_MODE = ATV_IN_init;
    } else {
      switch (ATV_DW.is_KEY_ON) {
       case ATV_IN_APU_OFF:
        /* During 'APU_OFF': '<S125>:1' */
        if ((ATV_DW.apu_req_btn_in_prev != ATV_DW.apu_req_btn_in_start) &&
            ATV_DW.apu_req_btn_in_start) {
          /* Transition: '<S125>:8' */
          ATV_DW.is_KEY_ON = ATV_IN_VAL;
        } else {
          if ((ATV_DW.apu_off_in_prev != ATV_DW.apu_off_in_start) &&
              ATV_DW.apu_off_in_start) {
            /* Transition: '<S125>:94' */
            ATV_DW.is_KEY_ON = ATV_IN_VAL1;
          }
        }
        break;

       case ATV_IN_APU_ON:
        /* During 'APU_ON': '<S125>:2' */
        if (((ATV_DW.apu_req_btn_in_prev != ATV_DW.apu_req_btn_in_start) &&
             ATV_DW.apu_req_btn_in_start) || ATV_B.Compare_b ||
            (((ATV_DW.apu_off_in_prev != ATV_DW.apu_off_in_start) &&
              (!ATV_DW.apu_off_in_start)) || ATV_B.Compare_b ||
             ((ATV_DW.low_soc_prev != ATV_DW.low_soc_start) &&
              ATV_DW.low_soc_start))) {
          /* Transition: '<S125>:6' */
          /* Transition: '<S125>:93' */
          /* Transition: '<S125>:7' */
          ATV_DW.is_KEY_ON = ATV_IN_APU_OFF;

          /* Entry 'APU_OFF': '<S125>:1' */
          ATV_B.apu_req_out = false;
          ATV_B.warn_high_soc = false;
        }
        break;

       case ATV_IN_DEB_b:
        /* During 'DEB': '<S125>:63' */
        if (ATV_DW.temporalCounter_i1_b >= 25U) {
          /* Transition: '<S125>:64' */
          ATV_DW.is_KEY_ON = ATV_IN_APU_OFF;

          /* Entry 'APU_OFF': '<S125>:1' */
          ATV_B.apu_req_out = false;
          ATV_B.warn_high_soc = false;
        }
        break;

       case ATV_IN_DEB1:
        /* During 'DEB1': '<S125>:97' */
        if (ATV_DW.temporalCounter_i1_b >= 25U) {
          /* Transition: '<S125>:99' */
          ATV_DW.is_KEY_ON = ATV_IN_APU_OFF;

          /* Entry 'APU_OFF': '<S125>:1' */
          ATV_B.apu_req_out = false;
          ATV_B.warn_high_soc = false;
        }
        break;

       case ATV_IN_VAL:
        /* During 'VAL': '<S125>:58' */
        if (ATV_B.Compare_b) {
          /* Transition: '<S125>:60' */
          ATV_B.warn_high_soc = true;
          ATV_DW.is_KEY_ON = ATV_IN_DEB_b;
          ATV_DW.temporalCounter_i1_b = 0U;
        } else {
          /* Transition: '<S125>:59' */
          ATV_DW.is_KEY_ON = ATV_IN_APU_ON;

          /* Entry 'APU_ON': '<S125>:2' */
          ATV_B.apu_req_out = true;
        }
        break;

       default:
        /* During 'VAL1': '<S125>:96' */
        if (ATV_B.Compare_b) {
          /* Transition: '<S125>:95' */
          ATV_B.warn_high_soc = true;
          ATV_DW.is_KEY_ON = ATV_IN_DEB1;
          ATV_DW.temporalCounter_i1_b = 0U;
        } else {
          /* Transition: '<S125>:98' */
          ATV_DW.is_KEY_ON = ATV_IN_APU_ON;

          /* Entry 'APU_ON': '<S125>:2' */
          ATV_B.apu_req_out = true;
        }
        break;
      }
    }
  } else {
    /* During 'RUN_MODE': '<S125>:13' */
    if (!ATV_B.Memory4) {
      /* Transition: '<S125>:19' */
      /* Exit Internal 'RUN_MODE': '<S125>:13' */
      /* Exit Internal 'HYBRID': '<S125>:29' */
      ATV_DW.is_HYBRID = ATV_IN_NO_ACTIVE_CHILD_c;
      ATV_DW.is_RUN_MODE = ATV_IN_NO_ACTIVE_CHILD_c;
      ATV_DW.is_ICE_START_STOP = ATV_IN_KEY_ON;

      /* Entry Internal 'KEY_ON': '<S125>:12' */
      /* Transition: '<S125>:5' */
      ATV_DW.is_KEY_ON = ATV_IN_APU_OFF;

      /* Entry 'APU_OFF': '<S125>:1' */
      ATV_B.apu_req_out = false;
      ATV_B.warn_high_soc = false;
    } else {
      switch (ATV_DW.is_RUN_MODE) {
       case ATV_IN_APU_OFF:
        /* During 'APU_OFF': '<S125>:34' */
        if (ATV_B.Compare_l) {
          /* Transition: '<S125>:49' */
          ATV_DW.is_RUN_MODE = ATV_IN_HYBRID;
          ATV_enter_internal_HYBRID();
        }
        break;

       case ATV_IN_HYBRID:
        /* During 'HYBRID': '<S125>:29' */
        if (!ATV_B.Compare_l) {
          /* Transition: '<S125>:48' */
          /* Exit Internal 'HYBRID': '<S125>:29' */
          ATV_DW.is_HYBRID = ATV_IN_NO_ACTIVE_CHILD_c;
          ATV_DW.is_RUN_MODE = ATV_IN_APU_OFF;

          /* Entry 'APU_OFF': '<S125>:34' */
          ATV_B.apu_req_out = false;
        } else {
          switch (ATV_DW.is_HYBRID) {
           case ATV_IN_APU_OFF:
            /* During 'APU_OFF': '<S125>:23' */
            if (ATV_B.Switch_k && (!ATV_DW.ice_fault)) {
              /* Transition: '<S125>:22' */
              ATV_DW.is_HYBRID = ATV_IN_APU_ON;

              /* Entry 'APU_ON': '<S125>:24' */
              ATV_B.apu_req_out = true;
              ATV_B.warn_low_soc = false;
            } else {
              if ((ATV_DW.apu_req_btn_in_prev != ATV_DW.apu_req_btn_in_start) &&
                  ATV_DW.apu_req_btn_in_start) {
                /* Transition: '<S125>:66' */
                /* Transition: '<S125>:72' */
                ATV_DW.is_HYBRID = ATV_IN_VAL;
              }
            }
            break;

           case ATV_IN_APU_ON:
            /* During 'APU_ON': '<S125>:24' */
            if (ATV_B.Compare || ((ATV_DW.low_soc_prev != ATV_DW.low_soc_start) &&
                                  ATV_DW.low_soc_start)) {
              /* Transition: '<S125>:20' */
              /* Transition: '<S125>:21' */
              ATV_DW.is_HYBRID = ATV_IN_APU_OFF;

              /* Entry 'APU_OFF': '<S125>:23' */
              ATV_B.apu_req_out = false;
              ATV_B.warn_high_soc = false;
            } else {
              if ((ATV_DW.apu_req_btn_in_prev != ATV_DW.apu_req_btn_in_start) &&
                  ATV_DW.apu_req_btn_in_start) {
                /* Transition: '<S125>:81' */
                /* Transition: '<S125>:78' */
                ATV_DW.is_HYBRID = ATV_IN_VAL1;
              }
            }
            break;

           case ATV_IN_DEB_b:
            /* During 'DEB': '<S125>:67' */
            if (ATV_DW.temporalCounter_i1_b >= 25U) {
              /* Transition: '<S125>:90' */
              /* Transition: '<S125>:75' */
              ATV_DW.is_HYBRID = ATV_IN_APU_OFF;

              /* Entry 'APU_OFF': '<S125>:23' */
              ATV_B.apu_req_out = false;
              ATV_B.warn_high_soc = false;
            }
            break;

           case ATV_IN_DEB1:
            /* During 'DEB1': '<S125>:80' */
            if (ATV_DW.temporalCounter_i1_b >= 25U) {
              /* Transition: '<S125>:91' */
              /* Transition: '<S125>:87' */
              ATV_DW.is_HYBRID = ATV_IN_APU_ON;

              /* Entry 'APU_ON': '<S125>:24' */
              ATV_B.apu_req_out = true;
              ATV_B.warn_low_soc = false;
            }
            break;

           case ATV_IN_VAL:
            /* During 'VAL': '<S125>:70' */
            if (ATV_B.Compare) {
              /* Transition: '<S125>:69' */
              ATV_B.warn_high_soc = true;
              ATV_DW.is_HYBRID = ATV_IN_DEB_b;
              ATV_DW.temporalCounter_i1_b = 0U;
            } else {
              /* Transition: '<S125>:68' */
              /* Transition: '<S125>:77' */
              ATV_DW.is_HYBRID = ATV_IN_APU_ON;

              /* Entry 'APU_ON': '<S125>:24' */
              ATV_B.apu_req_out = true;
              ATV_B.warn_low_soc = false;
            }
            break;

           default:
            /* During 'VAL1': '<S125>:83' */
            if (ATV_B.Switch_k) {
              /* Transition: '<S125>:79' */
              ATV_B.warn_low_soc = true;
              ATV_DW.is_HYBRID = ATV_IN_DEB1;
              ATV_DW.temporalCounter_i1_b = 0U;
            } else {
              /* Transition: '<S125>:82' */
              /* Transition: '<S125>:88' */
              ATV_DW.is_HYBRID = ATV_IN_APU_OFF;

              /* Entry 'APU_OFF': '<S125>:23' */
              ATV_B.apu_req_out = false;
              ATV_B.warn_high_soc = false;
            }
            break;
          }
        }
        break;

       default:
        /* During 'init': '<S125>:53' */
        /* Transition: '<S125>:54' */
        if (ATV_B.Compare_l) {
          /* Transition: '<S125>:33' */
          ATV_DW.is_RUN_MODE = ATV_IN_HYBRID;
          ATV_enter_internal_HYBRID();
        } else {
          /* Transition: '<S125>:50' */
          ATV_DW.is_RUN_MODE = ATV_IN_APU_OFF;

          /* Entry 'APU_OFF': '<S125>:34' */
          ATV_B.apu_req_out = false;
        }
        break;
      }
    }
  }
}

/* Function for Chart: '<S34>/VSM' */
static void ATV_HV_REQ_RUN(void)
{
  /* During 'HV_REQ_RUN': '<S149>:169' */
  if (ATV_DW.temporalCounter_i3 >= 150U) {
    /* Transition: '<S149>:185' */
    ATV_DW.HV_Req = false;
    ATV_DW.is_SM = ATV_IN_IDLE;

    /* Entry 'IDLE': '<S149>:20' */
    atv_state_out = 4U;
    atv_sub_state_out = 0U;
    ATV_B.en_inv_rear_out = false;
    ATV_B.en_inv_front_out = false;
    ATV_B.en_inv_gen_out = false;
    ATV_B.apu_start_out = false;
    ATV_B.runLed_out = false;
    ATV_B.chg_shutdown_out = false;
  } else {
    if (ATV_DW.is_HV_CTRL == ATV_IN_HV_ON) {
      /* Transition: '<S149>:184' */
      ATV_DW.is_SM = ATV_IN_RUN;

      /* Entry 'RUN': '<S149>:166' */
      atv_state_out = 6U;

      /* Entry Internal 'RUN': '<S149>:166' */
      /* Transition: '<S149>:176' */
      ATV_DW.is_RUN = ATV_IN_PRE_START_l;
      ATV_DW.temporalCounter_i3 = 0U;

      /* Entry 'PRE_START': '<S149>:174' */
      atv_sub_state_out = 0U;
    }
  }
}

/* Function for Chart: '<S34>/VSM' */
static void ATV_IDLE(void)
{
  atv_state_out = 4U;
  ATV_B.chg_shutdown_out = false;

  /* During 'IDLE': '<S149>:20' */
  if (ATV_DW.is_FAULT_DETECT == ATV_IN_FAULT_a4) {
    /* Transition: '<S149>:358' */
    ATV_DW.is_SM = ATV_IN_FAULT_a;

    /* Entry 'FAULT': '<S149>:168' */
    atv_state_out = MAX_uint8_T;
  } else if (ATV_B.LogicalOperator && (!ATV_B.Compare_bl)) {
    /* Transition: '<S149>:313' */
    ATV_DW.chg_req = true;
    ATV_DW.is_SM = ATV_IN_HV_REQ_CHARGE;
    ATV_DW.temporalCounter_i3 = 0U;

    /* Entry 'HV_REQ_CHARGE': '<S149>:312' */
    atv_sub_state_out = 12U;
  } else if (((ATV_DW.StartBtn_In_prev != ATV_DW.StartBtn_In_start) &&
              ATV_DW.StartBtn_In_start && atv_startBtnArmed &&
              (!ATV_B.LogicalOperator1) && atv_startConditions) ||
             atvc_force_inv_preop) {
    /* Transition: '<S149>:182' */
    ATV_DW.HV_Req = true;
    ATV_DW.is_SM = ATV_IN_HV_REQ_RUN;
    ATV_DW.temporalCounter_i3 = 0U;

    /* Entry 'HV_REQ_RUN': '<S149>:169' */
    atv_sub_state_out = 11U;
  } else if ((ATV_DW.apu_req_in_prev != ATV_DW.apu_req_in_start) &&
             ATV_DW.apu_req_in_start) {
    /* Transition: '<S149>:192' */
    ATV_DW.HV_Req = true;
    ATV_DW.is_SM = ATV_IN_HV_REQ_APU;
    ATV_DW.temporalCounter_i3 = 0U;

    /* Entry 'HV_REQ_APU': '<S149>:193' */
    atv_sub_state_out = 10U;
  } else {
    if ((!key_signal) && (ATV_DW.is_HV_CTRL != ATV_IN_HVM_ON_m) &&
        (ATV_DW.is_HV_CTRL != ATV_IN_HV_ON) && (ATV_DW.is_HV_CTRL !=
         ATV_IN_HV_WAIT_INV_OFF) && (!ATV_B.LogicalOperator)) {
      /* Transition: '<S149>:23' */
      /* Transition: '<S149>:25' */
      /* Transition: '<S149>:164' */
      ATV_DW.is_SM = ATV_IN_PRE_SLEEP;
      ATV_DW.temporalCounter_i3 = 0U;

      /* Entry 'PRE_SLEEP': '<S149>:3' */
      atv_state_out = 2U;
      atv_sub_state_out = 0U;
    }
  }
}

/* Function for Chart: '<S34>/VSM' */
static void ATV_INIT(void)
{
  atv_state_out = 3U;
  atv_wakelock_out = true;
  atv_en_dcdc_out = true;

  /* During 'INIT': '<S149>:5' */
  if ((!key_signal) && (!ATV_B.LogicalOperator) && (!ATV_B.RateTransition38)) {
    /* Transition: '<S149>:17' */
    ATV_DW.is_SM = ATV_IN_PRE_SLEEP;
    ATV_DW.temporalCounter_i3 = 0U;

    /* Entry 'PRE_SLEEP': '<S149>:3' */
    atv_state_out = 2U;
    atv_sub_state_out = 0U;
  } else {
    if (ATV_DW.temporalCounter_i3 >= 100U) {
      /* Transition: '<S149>:22' */
      ATV_DW.is_SM = ATV_IN_IDLE;

      /* Entry 'IDLE': '<S149>:20' */
      atv_state_out = 4U;
      atv_sub_state_out = 0U;
      ATV_B.en_inv_rear_out = false;
      ATV_B.en_inv_front_out = false;
      ATV_B.en_inv_gen_out = false;
      ATV_B.apu_start_out = false;
      ATV_B.runLed_out = false;
      ATV_B.chg_shutdown_out = false;
    }
  }
}

/* Function for Chart: '<S34>/VSM' */
static void ATV_INV_OFF(void)
{
  /* During 'INV_OFF': '<S149>:246' */
  if (ATV_DW.temporalCounter_i3 >= 50U) {
    /* Transition: '<S149>:247' */
    ATV_DW.HV_Req = false;
    ATV_DW.is_SM = ATV_IN_IDLE;

    /* Entry 'IDLE': '<S149>:20' */
    atv_state_out = 4U;
    atv_sub_state_out = 0U;
    ATV_B.en_inv_rear_out = false;
    ATV_B.en_inv_front_out = false;
    ATV_B.en_inv_gen_out = false;
    ATV_B.apu_start_out = false;
    ATV_B.runLed_out = false;
    ATV_B.chg_shutdown_out = false;
  }
}

/* Function for Chart: '<S34>/VSM' */
static void ATV_PRE_SLEEP(void)
{
  atv_state_out = 2U;

  /* During 'PRE_SLEEP': '<S149>:3' */
  if (key_signal || ATV_B.LogicalOperator || ATV_B.RateTransition38) {
    /* Transition: '<S149>:19' */
    ATV_DW.is_SM = ATV_IN_INIT;
    ATV_DW.temporalCounter_i3 = 0U;

    /* Entry 'INIT': '<S149>:5' */
    atv_state_out = 3U;
    atv_sub_state_out = 0U;
    atv_wakelock_out = true;
    atv_en_dcdc_out = true;
    atv_startBtnArmed = false;
  } else {
    if (ATV_DW.temporalCounter_i3 >= 25U) {
      /* Transition: '<S149>:16' */
      ATV_DW.is_SM = ATV_IN_SLEEP;

      /* Entry 'SLEEP': '<S149>:9' */
      atv_state_out = 1U;
      atv_sub_state_out = 0U;
      atv_wakelock_out = false;
      atv_en_dcdc_out = false;
      ATV_DW.HV_Req = false;
    }
  }
}

/* Function for Chart: '<S34>/VSM' */
static void ATV_PRE_START(void)
{
  /* During 'PRE_START': '<S149>:174' */
  if (!ATV_B.apu_req_out) {
    /* Transition: '<S149>:250' */
    /* Transition: '<S149>:265' */
    ATV_DW.is_RUN = ATV_IN_SHUTDOWN_ICE;
    ATV_DW.temporalCounter_i3 = 0U;

    /* Entry 'SHUTDOWN_ICE': '<S149>:248' */
    ATV_B.apu_start_out = false;
    atv_sub_state_out = 6U;
  } else if ((!ATV_B.apu_req_out) && (ATV_DW.temporalCounter_i3 >= 50U)) {
    /* Transition: '<S149>:181' */
    ATV_DW.is_RUN = ATV_IN_DRIVE_ENABLED;

    /* Entry 'DRIVE_ENABLED': '<S149>:175' */
    atv_sub_state_out = 1U;
    ATV_B.en_inv_rear_out = true;
    ATV_B.en_inv_front_out = true;
    ATV_B.en_inv_gen_out = false;
    ATV_B.apu_start_out = false;
    ATV_B.runLed_out = true;
  } else {
    if (ATV_B.apu_req_out) {
      /* Transition: '<S149>:256' */
      /* Transition: '<S149>:261' */
      ATV_DW.is_RUN = ATV_IN_GEN_ON;

      /* Entry 'GEN_ON': '<S149>:230' */
      atv_sub_state_out = 2U;
      ATV_B.en_inv_gen_out = true;

      /* Constant: '<S34>/Constant' */
      ATV_B.apu_start_out = !atvc_force_inv_preop;
      ATV_B.en_inv_rear_out = true;
      ATV_B.en_inv_front_out = true;
      ATV_B.runLed_out = true;
    }
  }
}

/* Function for Chart: '<S34>/VSM' */
static void ATV_RUN(void)
{
  boolean_T tmp;
  atv_state_out = 6U;

  /* Constant: '<S34>/Constant' */
  /* Constant: '<S34>/Constant' */
  /* During 'RUN': '<S149>:166' */
  tmp = !atvc_force_inv_preop;
  if (((ATV_DW.is_FAULT_DETECT == ATV_IN_FAULT_a4) || (ATV_DW.is_RUN ==
        ATV_IN_IDLE_e) || (ATV_DW.is_RUN == ATV_IN_FAULT_a40) || (!key_signal) ||
       ATV_B.LogicalOperator) && tmp) {
    /* Transition: '<S149>:218' */
    ATV_B.apu_start_out = false;

    /* Transition: '<S149>:243' */
    /* Exit Internal 'RUN': '<S149>:166' */
    ATV_DW.is_RUN = ATV_IN_NO_ACTIVE_CHILD_c;
    ATV_DW.is_SM = ATV_IN_APU_OFF_p;
    ATV_DW.temporalCounter_i3 = 0U;
  } else if (ATV_DW.is_RUN == ATV_IN_APU) {
    /* Transition: '<S149>:197' */
    /* Exit Internal 'RUN': '<S149>:166' */
    ATV_DW.is_RUN = ATV_IN_NO_ACTIVE_CHILD_c;
    ATV_DW.is_SM = ATV_IN_APU;

    /* Entry 'APU': '<S149>:165' */
    atv_state_out = 5U;

    /* Entry Internal 'APU': '<S149>:165' */
    /* Transition: '<S149>:222' */
    ATV_DW.is_APU = ATV_IN_PRE_START;
    ATV_DW.temporalCounter_i3 = 0U;

    /* Entry 'PRE_START': '<S149>:220' */
    atv_sub_state_out = 0U;
  } else {
    switch (ATV_DW.is_RUN) {
     case ATV_IN_APU:
      /* During 'APU': '<S149>:216' */
      break;

     case ATV_IN_DEB_j:
      /* During 'DEB': '<S149>:396' */
      if (ATV_DW.temporalCounter_i3 >= 500U) {
        /* Transition: '<S149>:397' */
        /* Transition: '<S149>:294' */
        if (!ATV_B.apu_req_out) {
          /* Transition: '<S149>:295' */
          ATV_DW.is_RUN = ATV_IN_FAULT_a40;

          /* Entry 'FAULT': '<S149>:290' */
          atv_sub_state_out = 5U;
          ATV_B.en_inv_rear_out = false;
          ATV_B.en_inv_front_out = false;
          ATV_B.en_inv_gen_out = false;
          ATV_B.runLed_out = false;
        } else {
          /* Transition: '<S149>:297' */
          /* Transition: '<S149>:298' */
          ATV_DW.is_RUN = ATV_IN_APU;

          /* Entry 'APU': '<S149>:216' */
          atv_sub_state_out = 4U;
          ATV_B.en_inv_rear_out = false;
          ATV_B.en_inv_front_out = false;
          ATV_B.runLed_out = false;
        }
      } else {
        if ((!ATV_B.Memory2) && (!ATV_B.Memory1)) {
          /* Transition: '<S149>:398' */
          ATV_DW.is_RUN = ATV_IN_DRIVE_ENABLED;

          /* Entry 'DRIVE_ENABLED': '<S149>:175' */
          atv_sub_state_out = 1U;
          ATV_B.en_inv_rear_out = true;
          ATV_B.en_inv_front_out = true;
          ATV_B.en_inv_gen_out = false;
          ATV_B.apu_start_out = false;
          ATV_B.runLed_out = true;
        }
      }
      break;

     case ATV_IN_DRIVE_ENABLED:
      /* During 'DRIVE_ENABLED': '<S149>:175' */
      if ((((ATV_DW.StartBtn_In_prev != ATV_DW.StartBtn_In_start) &&
            ATV_DW.StartBtn_In_start && (!ATV_B.apu_req_out)) ||
           ATV_B.LogicalOperator1) && tmp) {
        /* Transition: '<S149>:213' */
        /* Transition: '<S149>:439' */
        ATV_DW.is_RUN = ATV_IN_IDLE_e;

        /* Entry 'IDLE': '<S149>:173' */
        atv_sub_state_out = 3U;
        ATV_B.en_inv_rear_out = false;
        ATV_B.en_inv_front_out = false;
        ATV_B.en_inv_gen_out = false;
        ATV_B.runLed_out = false;
      } else if (((ATV_DW.apu_req_in_prev != ATV_DW.apu_req_in_start) &&
                  ATV_DW.apu_req_in_start) || atvc_force_inv_preop) {
        /* Transition: '<S149>:231' */
        ATV_DW.is_RUN = ATV_IN_GEN_ON;

        /* Entry 'GEN_ON': '<S149>:230' */
        atv_sub_state_out = 2U;
        ATV_B.en_inv_gen_out = true;
        ATV_B.apu_start_out = tmp;
        ATV_B.en_inv_rear_out = true;
        ATV_B.en_inv_front_out = true;
        ATV_B.runLed_out = true;
      } else {
        if (ATV_B.Memory2 || ATV_B.Memory1) {
          /* Transition: '<S149>:291' */
          ATV_DW.is_RUN = ATV_IN_DEB_j;
          ATV_DW.temporalCounter_i3 = 0U;
        }
      }
      break;

     case ATV_IN_FAULT_a40:
      /* During 'FAULT': '<S149>:290' */
      break;

     case ATV_IN_GEN_ON:
      /* During 'GEN_ON': '<S149>:230' */
      if ((ATV_DW.StartBtn_In_prev != ATV_DW.StartBtn_In_start) &&
          ATV_DW.StartBtn_In_start && (!ATV_B.LogicalOperator1) && tmp) {
        /* Transition: '<S149>:431' */
        /* Transition: '<S149>:434' */
        ATV_DW.is_RUN = ATV_IN_SHUTDOWN_ALL;
        ATV_DW.temporalCounter_i3 = 0U;

        /* Entry 'SHUTDOWN_ALL': '<S149>:432' */
        ATV_B.apu_start_out = false;
        atv_sub_state_out = 8U;
      } else if ((ATV_DW.StartBtn_In_prev != ATV_DW.StartBtn_In_start) &&
                 ATV_DW.StartBtn_In_start && ATV_B.LogicalOperator1 && tmp) {
        /* Transition: '<S149>:217' */
        /* Transition: '<S149>:298' */
        ATV_DW.is_RUN = ATV_IN_APU;

        /* Entry 'APU': '<S149>:216' */
        atv_sub_state_out = 4U;
        ATV_B.en_inv_rear_out = false;
        ATV_B.en_inv_front_out = false;
        ATV_B.runLed_out = false;
      } else if ((!ATV_B.apu_req_out) && tmp) {
        /* Transition: '<S149>:233' */
        ATV_DW.is_RUN = ATV_IN_SHUTDOWN_ICE;
        ATV_DW.temporalCounter_i3 = 0U;

        /* Entry 'SHUTDOWN_ICE': '<S149>:248' */
        ATV_B.apu_start_out = false;
        atv_sub_state_out = 6U;
      } else {
        if (atvc_force_inv_preop) {
          /* Transition: '<S149>:407' */
          ATV_DW.is_RUN = ATV_IN_INV_PREOP;

          /* Entry 'INV_PREOP': '<S149>:406' */
          atv_sub_state_out = 7U;
        }
      }
      break;

     case ATV_IN_IDLE_e:
      /* During 'IDLE': '<S149>:173' */
      break;

     case ATV_IN_INV_PREOP:
      /* Constant: '<S34>/Constant' */
      /* During 'INV_PREOP': '<S149>:406' */
      if (!atvc_force_inv_preop) {
        /* Transition: '<S149>:402' */
        /* Transition: '<S149>:404' */
        /* Transition: '<S149>:405' */
        ATV_DW.is_RUN = ATV_IN_IDLE_e;

        /* Entry 'IDLE': '<S149>:173' */
        atv_sub_state_out = 3U;
        ATV_B.en_inv_rear_out = false;
        ATV_B.en_inv_front_out = false;
        ATV_B.en_inv_gen_out = false;
        ATV_B.runLed_out = false;
      }
      break;

     case ATV_IN_PRE_START_l:
      ATV_PRE_START();
      break;

     case ATV_IN_SHUTDOWN_ALL:
      /* During 'SHUTDOWN_ALL': '<S149>:432' */
      if (ATV_DW.temporalCounter_i3 >= 100U) {
        /* Transition: '<S149>:437' */
        /* Transition: '<S149>:439' */
        ATV_DW.is_RUN = ATV_IN_IDLE_e;

        /* Entry 'IDLE': '<S149>:173' */
        atv_sub_state_out = 3U;
        ATV_B.en_inv_rear_out = false;
        ATV_B.en_inv_front_out = false;
        ATV_B.en_inv_gen_out = false;
        ATV_B.runLed_out = false;
      }
      break;

     default:
      /* During 'SHUTDOWN_ICE': '<S149>:248' */
      if (ATV_DW.temporalCounter_i3 >= 100U) {
        /* Transition: '<S149>:251' */
        ATV_DW.is_RUN = ATV_IN_DRIVE_ENABLED;

        /* Entry 'DRIVE_ENABLED': '<S149>:175' */
        atv_sub_state_out = 1U;
        ATV_B.en_inv_rear_out = true;
        ATV_B.en_inv_front_out = true;
        ATV_B.en_inv_gen_out = false;
        ATV_B.apu_start_out = false;
        ATV_B.runLed_out = true;
      }
      break;
    }
  }
}

/* Function for Chart: '<S34>/VSM' */
static void ATV_SLEEP(void)
{
  atv_state_out = 1U;
  atv_wakelock_out = false;
  atv_en_dcdc_out = false;

  /* During 'SLEEP': '<S149>:9' */
  if (key_signal || ATV_B.LogicalOperator || ATV_B.RateTransition38) {
    /* Transition: '<S149>:12' */
    ATV_DW.is_SM = ATV_IN_INIT;
    ATV_DW.temporalCounter_i3 = 0U;

    /* Entry 'INIT': '<S149>:5' */
    atv_state_out = 3U;
    atv_sub_state_out = 0U;
    atv_wakelock_out = true;
    atv_en_dcdc_out = true;
    atv_startBtnArmed = false;
  }
}

/* Function for Chart: '<S34>/VSM' */
static void ATV_SM(void)
{
  boolean_T guard1 = false;

  /* During 'SM': '<S149>:123' */
  guard1 = false;
  switch (ATV_DW.is_SM) {
   case ATV_IN_APU:
    atv_state_out = 5U;

    /* During 'APU': '<S149>:165' */
    if ((ATV_DW.is_APU == ATV_IN_IDLE_e) || (ATV_DW.is_APU == ATV_IN_FAULT_a4) ||
        (!key_signal) || ATV_B.LogicalOperator || (ATV_DW.is_FAULT_DETECT ==
         ATV_IN_FAULT_a4)) {
      /* Transition: '<S149>:227' */
      ATV_B.apu_start_out = false;

      /* Transition: '<S149>:245' */
      /* Exit Internal 'APU': '<S149>:165' */
      ATV_DW.is_APU = ATV_IN_NO_ACTIVE_CHILD_c;
      ATV_DW.is_SM = ATV_IN_APU_OFF_p;
      ATV_DW.temporalCounter_i3 = 0U;
    } else if (ATV_DW.is_APU == ATV_IN_RUN_e) {
      /* Transition: '<S149>:232' */
      /* Exit Internal 'APU': '<S149>:165' */
      ATV_DW.is_APU = ATV_IN_NO_ACTIVE_CHILD_c;
      ATV_DW.is_SM = ATV_IN_RUN;

      /* Entry 'RUN': '<S149>:166' */
      atv_state_out = 6U;

      /* Entry Internal 'RUN': '<S149>:166' */
      /* Transition: '<S149>:176' */
      ATV_DW.is_RUN = ATV_IN_PRE_START_l;
      ATV_DW.temporalCounter_i3 = 0U;

      /* Entry 'PRE_START': '<S149>:174' */
      atv_sub_state_out = 0U;
    } else {
      switch (ATV_DW.is_APU) {
       case ATV_IN_APU_PRE_FAULT:
        /* During 'APU_PRE_FAULT': '<S149>:288' */
        if (ATV_DW.temporalCounter_i3 >= 100U) {
          /* Transition: '<S149>:289' */
          ATV_DW.is_APU = ATV_IN_FAULT_a4;

          /* Entry 'FAULT': '<S149>:286' */
          atv_sub_state_out = 6U;
          ATV_B.en_inv_gen_out = false;
          ATV_B.apu_start_out = false;
        }
        break;

       case ATV_IN_DEB_j:
        /* During 'DEB': '<S149>:391' */
        if (!ATV_B.Memory3) {
          /* Transition: '<S149>:392' */
          /* Transition: '<S149>:394' */
          ATV_DW.is_APU = ATV_IN_GEN_ENABLED;

          /* Entry 'GEN_ENABLED': '<S149>:221' */
          atv_sub_state_out = 1U;
          ATV_B.en_inv_gen_out = true;

          /* Constant: '<S34>/Constant' */
          ATV_B.apu_start_out = !atvc_force_inv_preop;
        } else {
          if (ATV_DW.temporalCounter_i3 >= 500U) {
            /* Transition: '<S149>:395' */
            /* Transition: '<S149>:287' */
            ATV_DW.is_APU = ATV_IN_APU_PRE_FAULT;
            ATV_DW.temporalCounter_i3 = 0U;

            /* Entry 'APU_PRE_FAULT': '<S149>:288' */
            atv_sub_state_out = 5U;
            ATV_B.apu_start_out = false;
          }
        }
        break;

       case ATV_IN_FAULT_a4:
        /* During 'FAULT': '<S149>:286' */
        break;

       case ATV_IN_GEN_ENABLED:
        /* During 'GEN_ENABLED': '<S149>:221' */
        if (ATV_B.Memory3) {
          /* Transition: '<S149>:282' */
          /* Transition: '<S149>:285' */
          ATV_DW.is_APU = ATV_IN_DEB_j;
          ATV_DW.temporalCounter_i3 = 0U;

          /* Entry 'DEB': '<S149>:391' */
          atv_sub_state_out = 7U;
        } else if ((ATV_DW.apu_req_in_prev != ATV_DW.apu_req_in_start) &&
                   (!ATV_DW.apu_req_in_start)) {
          /* Transition: '<S149>:228' */
          ATV_DW.is_APU = ATV_IN_ICE_OFF;
          ATV_DW.temporalCounter_i3 = 0U;

          /* Entry 'ICE_OFF': '<S149>:234' */
          atv_sub_state_out = 2U;
          ATV_B.apu_start_out = false;
        } else {
          if ((ATV_DW.StartBtn_In_prev != ATV_DW.StartBtn_In_start) &&
              ATV_DW.StartBtn_In_start && (!ATV_B.LogicalOperator1)) {
            /* Transition: '<S149>:225' */
            ATV_DW.is_APU = ATV_IN_RUN_e;

            /* Entry 'RUN': '<S149>:226' */
            atv_sub_state_out = 4U;
          }
        }
        break;

       case ATV_IN_ICE_OFF:
        /* During 'ICE_OFF': '<S149>:234' */
        if (ATV_DW.temporalCounter_i3 >= 100U) {
          /* Transition: '<S149>:235' */
          ATV_DW.is_APU = ATV_IN_IDLE_e;

          /* Entry 'IDLE': '<S149>:224' */
          atv_sub_state_out = 3U;
          ATV_B.en_inv_gen_out = false;
          ATV_B.apu_start_out = false;
        }
        break;

       case ATV_IN_IDLE_e:
        /* During 'IDLE': '<S149>:224' */
        break;

       case ATV_IN_PRE_START:
        /* During 'PRE_START': '<S149>:220' */
        if (ATV_DW.temporalCounter_i3 >= 50U) {
          /* Transition: '<S149>:223' */
          ATV_DW.is_APU = ATV_IN_GEN_ENABLED;

          /* Entry 'GEN_ENABLED': '<S149>:221' */
          atv_sub_state_out = 1U;
          ATV_B.en_inv_gen_out = true;

          /* Constant: '<S34>/Constant' */
          ATV_B.apu_start_out = !atvc_force_inv_preop;
        }
        break;

       default:
        /* During 'RUN': '<S149>:226' */
        break;
      }
    }
    break;

   case ATV_IN_APU_OFF_p:
    /* During 'APU_OFF': '<S149>:240' */
    if (ATV_DW.temporalCounter_i3 >= 100U) {
      /* Transition: '<S149>:244' */
      ATV_DW.is_SM = ATV_IN_INV_OFF;
      ATV_DW.temporalCounter_i3 = 0U;

      /* Entry 'INV_OFF': '<S149>:246' */
      ATV_B.en_inv_rear_out = false;
      ATV_B.en_inv_front_out = false;
      ATV_B.en_inv_gen_out = false;
      ATV_B.runLed_out = false;
    }
    break;

   case ATV_IN_CHARGE:
    atv_state_out = 7U;

    /* During 'CHARGE': '<S149>:167' */
    if ((!ATV_B.LogicalOperator) || (ATV_DW.is_FAULT_DETECT == ATV_IN_FAULT_a4))
    {
      /* Transition: '<S149>:323' */
      guard1 = true;
    } else {
      if (ATV_B.Compare_bl) {
        /* Transition: '<S149>:417' */
        ATV_B.chg_complete_out = true;

        /* Transition: '<S149>:419' */
        /* Transition: '<S149>:420' */
        guard1 = true;
      }
    }
    break;

   case ATV_IN_CURR_MON:
    ATV_B.chg_shutdown_out = true;

    /* During 'CURR_MON': '<S149>:411' */
    if (ATV_B.Compare_n || (ATV_DW.temporalCounter_i3 >= 500U)) {
      /* Transition: '<S149>:412' */
      ATV_DW.chg_req = false;
      ATV_DW.is_SM = ATV_IN_WAIT_DISCONNECT;

      /* Entry 'WAIT_DISCONNECT': '<S149>:422' */
      atv_sub_state_out = 14U;
    }
    break;

   case ATV_IN_FAULT_a:
    atv_state_out = MAX_uint8_T;

    /* During 'FAULT': '<S149>:168' */
    if (!key_signal) {
      /* Transition: '<S149>:335' */
      /* Transition: '<S149>:337' */
      /* Transition: '<S149>:339' */
      /* Transition: '<S149>:164' */
      ATV_DW.is_SM = ATV_IN_PRE_SLEEP;
      ATV_DW.temporalCounter_i3 = 0U;

      /* Entry 'PRE_SLEEP': '<S149>:3' */
      atv_state_out = 2U;
      atv_sub_state_out = 0U;
    }
    break;

   case ATV_IN_HV_REQ_APU:
    /* During 'HV_REQ_APU': '<S149>:193' */
    if (ATV_DW.temporalCounter_i3 >= 150U) {
      /* Transition: '<S149>:191' */
      ATV_DW.HV_Req = false;
      ATV_DW.is_SM = ATV_IN_IDLE;

      /* Entry 'IDLE': '<S149>:20' */
      atv_state_out = 4U;
      atv_sub_state_out = 0U;
      ATV_B.en_inv_rear_out = false;
      ATV_B.en_inv_front_out = false;
      ATV_B.en_inv_gen_out = false;
      ATV_B.apu_start_out = false;
      ATV_B.runLed_out = false;
      ATV_B.chg_shutdown_out = false;
    } else {
      if (ATV_DW.is_HV_CTRL == ATV_IN_HV_ON) {
        /* Transition: '<S149>:194' */
        ATV_DW.is_SM = ATV_IN_APU;

        /* Entry 'APU': '<S149>:165' */
        atv_state_out = 5U;

        /* Entry Internal 'APU': '<S149>:165' */
        /* Transition: '<S149>:222' */
        ATV_DW.is_APU = ATV_IN_PRE_START;
        ATV_DW.temporalCounter_i3 = 0U;

        /* Entry 'PRE_START': '<S149>:220' */
        atv_sub_state_out = 0U;
      }
    }
    break;

   case ATV_IN_HV_REQ_CHARGE:
    /* During 'HV_REQ_CHARGE': '<S149>:312' */
    if (ATV_DW.temporalCounter_i3 >= 150U) {
      /* Transition: '<S149>:314' */
      ATV_DW.chg_req = false;
      ATV_DW.is_SM = ATV_IN_IDLE;

      /* Entry 'IDLE': '<S149>:20' */
      atv_state_out = 4U;
      atv_sub_state_out = 0U;
      ATV_B.en_inv_rear_out = false;
      ATV_B.en_inv_front_out = false;
      ATV_B.en_inv_gen_out = false;
      ATV_B.apu_start_out = false;
      ATV_B.runLed_out = false;
      ATV_B.chg_shutdown_out = false;
    } else {
      if (ATV_DW.is_CHG_CTRL == ATV_IN_HV_ON) {
        /* Transition: '<S149>:317' */
        /* Transition: '<S149>:319' */
        /* Transition: '<S149>:320' */
        ATV_DW.is_SM = ATV_IN_CHARGE;

        /* Entry 'CHARGE': '<S149>:167' */
        atv_state_out = 7U;
        atv_sub_state_out = 1U;
      }
    }
    break;

   case ATV_IN_HV_REQ_RUN:
    ATV_HV_REQ_RUN();
    break;

   case ATV_IN_IDLE:
    ATV_IDLE();
    break;

   case ATV_IN_INIT:
    ATV_INIT();
    break;

   case ATV_IN_INV_OFF:
    ATV_INV_OFF();
    break;

   case ATV_IN_PRE_SLEEP:
    ATV_PRE_SLEEP();
    break;

   case ATV_IN_RUN:
    ATV_RUN();
    break;

   case ATV_IN_SLEEP:
    ATV_SLEEP();
    break;

   default:
    /* During 'WAIT_DISCONNECT': '<S149>:422' */
    if (!ATV_B.LogicalOperator) {
      /* Transition: '<S149>:423' */
      ATV_B.chg_complete_out = false;

      /* Transition: '<S149>:326' */
      /* Transition: '<S149>:327' */
      ATV_DW.is_SM = ATV_IN_IDLE;

      /* Entry 'IDLE': '<S149>:20' */
      atv_state_out = 4U;
      atv_sub_state_out = 0U;
      ATV_B.en_inv_rear_out = false;
      ATV_B.en_inv_front_out = false;
      ATV_B.en_inv_gen_out = false;
      ATV_B.apu_start_out = false;
      ATV_B.runLed_out = false;
      ATV_B.chg_shutdown_out = false;
    }
    break;
  }

  if (guard1) {
    ATV_DW.is_SM = ATV_IN_CURR_MON;
    ATV_DW.temporalCounter_i3 = 0U;

    /* Entry 'CURR_MON': '<S149>:411' */
    atv_sub_state_out = 13U;
    ATV_B.chg_shutdown_out = true;
  }
}

/* Function for Chart: '<S34>/VSM' */
static void ATV_MON(void)
{
  int32_T tmp;

  /* During 'MON': '<S149>:124' */
  /* During 'HV_CTRL': '<S149>:161' */
  switch (ATV_DW.is_HV_CTRL) {
   case ATV_IN_HVM_ON_m:
    /* During 'HVM_ON': '<S149>:129' */
    if (ATV_DW.temporalCounter_i2_j >= 10U) {
      /* Transition: '<S149>:142' */
      ATV_DW.is_HV_CTRL = ATV_IN_HV_ON;

      /* Entry 'HV_ON': '<S149>:130' */
      atv_sub_state_out = 3U;
      ATV_B.hvp_ctrl_out = true;
      ATV_B.hvm_ctrl_out = true;
    } else {
      if (!ATV_DW.HV_Req) {
        /* Transition: '<S149>:186' */
        ATV_DW.is_HV_CTRL = ATV_IN_HV_OFF;

        /* Entry 'HV_OFF': '<S149>:126' */
      }
    }
    break;

   case ATV_IN_HV_OFF:
    /* During 'HV_OFF': '<S149>:126' */
    if (ATV_DW.HV_Req) {
      /* Transition: '<S149>:133' */
      ATV_DW.is_HV_CTRL = ATV_IN_HVM_ON_m;
      ATV_DW.temporalCounter_i2_j = 0U;

      /* Entry 'HVM_ON': '<S149>:129' */
      ATV_B.hvp_ctrl_out = false;
      ATV_B.hvm_ctrl_out = true;
    } else {
      ATV_B.hvp_ctrl_out = false;
      ATV_B.hvm_ctrl_out = false;
    }
    break;

   case ATV_IN_HV_ON:
    /* During 'HV_ON': '<S149>:130' */
    if (!ATV_DW.HV_Req) {
      /* Transition: '<S149>:187' */
      ATV_DW.is_HV_CTRL = ATV_IN_HV_WAIT_INV_OFF;
      ATV_DW.temporalCounter_i2_j = 0U;

      /* Entry 'HV_WAIT_INV_OFF': '<S149>:131' */
      atv_sub_state_out = 4U;
      ATV_B.hvp_ctrl_out = true;
      ATV_B.hvm_ctrl_out = true;
    }
    break;

   default:
    /* During 'HV_WAIT_INV_OFF': '<S149>:131' */
    if (ATV_DW.temporalCounter_i2_j >= 50U) {
      /* Transition: '<S149>:150' */
      /* Transition: '<S149>:134' */
      ATV_DW.is_HV_CTRL = ATV_IN_HV_OFF;

      /* Entry 'HV_OFF': '<S149>:126' */
    }
    break;
  }

  /* During 'HEATER_CTRL': '<S149>:125' */
  if (ATV_DW.is_HEATER_CTRL == ATV_IN_HEATER_OFF) {
    ATV_B.heater_disabled = false;

    /* During 'HEATER_OFF': '<S149>:151' */
    if (key_signal && (ATV_B.RateTransition5_l || (ATV_B.Switch3 <
          atvc_HeatingMat_thr))) {
      /* Transition: '<S149>:153' */
      ATV_DW.is_HEATER_CTRL = ATV_IN_HEATER_ON;

      /* Entry Internal 'HEATER_ON': '<S149>:149' */
      /* Transition: '<S149>:453' */
      ATV_DW.is_HEATER_ON = ATV_IN_OFF_a;

      /* Entry 'OFF': '<S149>:452' */
      ATV_B.heater_ctrl_out = false;
      ATV_B.heater_disabled = true;
      ATV_B.heater_warn = true;
    }
  } else {
    /* During 'HEATER_ON': '<S149>:149' */
    tmp = atvc_HeatingMat_thr + 1;
    if (tmp > 127) {
      tmp = 127;
    }

    if ((!key_signal) || ((!ATV_B.RateTransition5_l) && (ATV_B.Switch3 >= tmp)))
    {
      /* Transition: '<S149>:146' */
      /* Exit Internal 'HEATER_ON': '<S149>:149' */
      ATV_DW.is_HEATER_ON = ATV_IN_NO_ACTIVE_CHILD_c;
      ATV_DW.is_HEATER_CTRL = ATV_IN_HEATER_OFF;

      /* Entry 'HEATER_OFF': '<S149>:151' */
      ATV_B.heater_disabled = false;
    } else {
      switch (ATV_DW.is_HEATER_ON) {
       case ATV_IN_OFF_a:
        ATV_B.heater_ctrl_out = false;
        ATV_B.heater_disabled = true;
        ATV_B.heater_warn = true;

        /* During 'OFF': '<S149>:452' */
        if (ATV_B.RateTransition4 >= 20) {
          /* Transition: '<S149>:450' */
          /* Transition: '<S149>:457' */
          ATV_DW.is_HEATER_ON = ATV_IN_ON_a;

          /* Entry 'ON': '<S149>:455' */
          ATV_B.heater_ctrl_out = true;
          ATV_B.heater_disabled = false;
          ATV_B.heater_warn = false;
        } else {
          if (ATV_B.RateTransition4 >= 10) {
            /* Transition: '<S149>:460' */
            ATV_DW.is_HEATER_ON = ATV_IN_ON_LOW;

            /* Entry 'ON_LOW': '<S149>:451' */
            ATV_B.heater_ctrl_out = true;
            ATV_B.heater_disabled = false;
            ATV_B.heater_warn = true;
          }
        }
        break;

       case ATV_IN_ON_a:
        ATV_B.heater_ctrl_out = true;
        ATV_B.heater_disabled = false;
        ATV_B.heater_warn = false;

        /* During 'ON': '<S149>:455' */
        if (ATV_B.RateTransition4 < 20) {
          /* Transition: '<S149>:458' */
          ATV_DW.is_HEATER_ON = ATV_IN_ON_LOW;

          /* Entry 'ON_LOW': '<S149>:451' */
          ATV_B.heater_ctrl_out = true;
          ATV_B.heater_disabled = false;
          ATV_B.heater_warn = true;
        }
        break;

       default:
        ATV_B.heater_ctrl_out = true;
        ATV_B.heater_disabled = false;
        ATV_B.heater_warn = true;

        /* During 'ON_LOW': '<S149>:451' */
        if (ATV_B.RateTransition4 < 10) {
          /* Transition: '<S149>:449' */
          ATV_DW.is_HEATER_ON = ATV_IN_OFF_a;

          /* Entry 'OFF': '<S149>:452' */
          ATV_B.heater_ctrl_out = false;
          ATV_B.heater_disabled = true;
          ATV_B.heater_warn = true;
        } else {
          if (ATV_B.RateTransition4 >= 20) {
            /* Transition: '<S149>:461' */
            ATV_DW.is_HEATER_ON = ATV_IN_ON_a;

            /* Entry 'ON': '<S149>:455' */
            ATV_B.heater_ctrl_out = true;
            ATV_B.heater_disabled = false;
            ATV_B.heater_warn = false;
          }
        }
        break;
      }
    }
  }

  /* During 'STARTTRIGGER': '<S149>:144' */
  if (ATV_DW.is_STARTTRIGGER == ATV_IN_STARTTRIGGER_OFF) {
    /* During 'STARTTRIGGER_OFF': '<S149>:154' */
    if ((ATV_DW.is_SM == ATV_IN_IDLE) && (!ATV_B.atv_StartBtn_din)) {
      /* Transition: '<S149>:238' */
      ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_ON;

      /* Entry 'STARTTRIGGER_ON': '<S149>:147' */
      atv_startBtnArmed = true;
    }
  } else {
    /* During 'STARTTRIGGER_ON': '<S149>:147' */
    if ((ATV_DW.is_SM != ATV_IN_IDLE) || ATV_B.atv_StartBtn_din) {
      /* Transition: '<S149>:409' */
      ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_OFF;
    }
  }

  /* During 'CHG_CTRL': '<S149>:128' */
  switch (ATV_DW.is_CHG_CTRL) {
   case ATV_IN_CHG_OFF:
    /* During 'CHG_OFF': '<S149>:137' */
    if (ATV_B.LogicalOperator && (ATV_DW.temporalCounter_i1_j >= 100U)) {
      /* Transition: '<S149>:155' */
      ATV_DW.is_CHG_CTRL = ATV_IN_HVM_ON;
      ATV_DW.temporalCounter_i1_j = 0U;

      /* Entry 'HVM_ON': '<S149>:160' */
    }
    break;

   case ATV_IN_HVM_ON:
    /* During 'HVM_ON': '<S149>:160' */
    if (!ATV_DW.chg_req) {
      /* Transition: '<S149>:145' */
      ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
      ATV_DW.temporalCounter_i1_j = 0U;

      /* Entry 'CHG_OFF': '<S149>:137' */
      ATV_B.chg_ctrl_out = false;
      ATV_B.hvm_ctrl_out = false;
    } else if (ATV_DW.temporalCounter_i1_j >= 50U) {
      /* Transition: '<S149>:159' */
      ATV_DW.is_CHG_CTRL = ATV_IN_HV_ON;

      /* Entry 'HV_ON': '<S149>:138' */
    } else {
      ATV_B.chg_ctrl_out = false;
      ATV_B.hvm_ctrl_out = true;
    }
    break;

   default:
    /* During 'HV_ON': '<S149>:138' */
    if (!ATV_DW.chg_req) {
      /* Transition: '<S149>:152' */
      /* Transition: '<S149>:141' */
      ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
      ATV_DW.temporalCounter_i1_j = 0U;

      /* Entry 'CHG_OFF': '<S149>:137' */
      ATV_B.chg_ctrl_out = false;
      ATV_B.hvm_ctrl_out = false;
    } else {
      ATV_B.chg_ctrl_out = true;
      ATV_B.hvm_ctrl_out = true;
    }
    break;
  }

  /* During 'FAULT_DETECT': '<S149>:346' */
  switch (ATV_DW.is_FAULT_DETECT) {
   case ATV_IN_DEB_d:
    /* During 'DEB': '<S149>:354' */
    if (ATV_DW.temporalCounter_i4 >= 250U) {
      /* Transition: '<S149>:348' */
      ATV_DW.is_FAULT_DETECT = ATV_IN_FAULT_a4;

      /* Entry 'FAULT': '<S149>:357' */
    } else {
      if (ATV_DW.is_DETECT != ATV_IN_FAULT) {
        /* Transition: '<S149>:356' */
        ATV_DW.is_FAULT_DETECT = ATV_IN_DETECT;

        /* Entry Internal 'DETECT': '<S149>:340' */
        /* Transition: '<S149>:372' */
        ATV_DW.is_DETECT = ATV_IN_NO_FLT;
      }
    }
    break;

   case ATV_IN_DETECT:
    /* During 'DETECT': '<S149>:340' */
    if (ATV_DW.is_DETECT == ATV_IN_FAULT) {
      /* Transition: '<S149>:344' */
      /* Exit Internal 'DETECT': '<S149>:340' */
      ATV_DW.is_DETECT = ATV_IN_NO_ACTIVE_CHILD_c;
      ATV_DW.is_FAULT_DETECT = ATV_IN_DEB_d;
      ATV_DW.temporalCounter_i4 = 0U;
    } else if (ATV_DW.is_DETECT == ATV_IN_FAULT) {
      /* During 'FAULT': '<S149>:373' */
      if ((!ATV_B.Compare_bk) || (!ATV_B.Compare_f) || (!ATV_B.Compare_e) ||
          (!ATV_B.Compare_ln)) {
        /* Transition: '<S149>:376' */
        /* Transition: '<S149>:380' */
        /* Transition: '<S149>:378' */
        /* Transition: '<S149>:375' */
        ATV_DW.is_DETECT = ATV_IN_NO_FLT;
      }
    } else {
      /* During 'NO_FLT': '<S149>:371' */
      if (ATV_B.Compare_ln || ATV_B.Compare_e || ATV_B.Compare_f ||
          ATV_B.Compare_bk) {
        /* Transition: '<S149>:374' */
        /* Transition: '<S149>:379' */
        /* Transition: '<S149>:381' */
        /* Transition: '<S149>:377' */
        ATV_DW.is_DETECT = ATV_IN_FAULT;
      }
    }
    break;

   default:
    /* During 'FAULT': '<S149>:357' */
    if ((ATV_DW.key_signal_prev != ATV_DW.key_signal_start) &&
        (!ATV_DW.key_signal_start)) {
      /* Transition: '<S149>:365' */
      /* Transition: '<S149>:368' */
      /* Transition: '<S149>:369' */
      ATV_DW.is_FAULT_DETECT = ATV_IN_DETECT;

      /* Entry Internal 'DETECT': '<S149>:340' */
      /* Transition: '<S149>:372' */
      ATV_DW.is_DETECT = ATV_IN_NO_FLT;
    }
    break;
  }
}

/* Function for Chart: '<S141>/VSMGestioneIbrido' */
static void ATV_IceSM(void)
{
  uint32_T elapseT_H;
  real32_T rtb_Sum_j5;
  real32_T rtb_Saturation;
  uint32_T IceSMspeed_pid_ice_ELAPS_T_tmp;
  uint32_T elapseT_H_tmp;
  real32_T rtb_Sum_p_tmp;
  boolean_T guard1 = false;

  /* Outputs for Function Call SubSystem: '<S169>/IceSM.speed_pid_ice' */
  /* During 'IceSM': '<S169>:191' */
  /* Simulink Function 'speed_pid_ice': '<S169>:352' */
  IceSMspeed_pid_ice_ELAPS_T_tmp = ATV_M->Timing.clockTick0;
  ATV_DW.IceSMspeed_pid_ice_ELAPS_T[0] = IceSMspeed_pid_ice_ELAPS_T_tmp -
    ATV_DW.IceSMspeed_pid_ice_PREV_T[0];
  elapseT_H_tmp = ATV_M->Timing.clockTickH0;
  elapseT_H = elapseT_H_tmp - ATV_DW.IceSMspeed_pid_ice_PREV_T[1];
  if (ATV_DW.IceSMspeed_pid_ice_PREV_T[0] > IceSMspeed_pid_ice_ELAPS_T_tmp) {
    elapseT_H--;
  }

  ATV_DW.IceSMspeed_pid_ice_ELAPS_T[1] = elapseT_H;
  ATV_DW.IceSMspeed_pid_ice_PREV_T[0] = IceSMspeed_pid_ice_ELAPS_T_tmp;
  ATV_DW.IceSMspeed_pid_ice_PREV_T[1] = elapseT_H_tmp;

  /* DiscreteIntegrator: '<S325>/Integrator' */
  if (ATV_DW.reset_PID || (ATV_DW.Integrator_PrevResetState != 0)) {
    ATV_DW.Integrator_DSTATE = 0.0F;
  }

  /* Gain: '<S342>/Proportional Gain' incorporates:
   *  Constant: '<S267>/atvc_gen_start_rpm'
   *  DataTypeConversion: '<S267>/Data Type Conversion1'
   *  Gain: '<S315>/Integral Gain'
   *  Sum: '<S268>/Sum1'
   */
  rtb_Sum_p_tmp = (real32_T)(atvc_gen_start_rpm - atv_RPM_Gen);

  /* Sum: '<S352>/Sum' incorporates:
   *  DiscreteIntegrator: '<S325>/Integrator'
   *  Gain: '<S342>/Proportional Gain'
   */
  rtb_Sum_j5 = rtb_Sum_p_tmp * atvc_gen_start_PID_KP + ATV_DW.Integrator_DSTATE;

  /* Saturate: '<S346>/Saturation' */
  if (rtb_Sum_j5 > 1000.0F) {
    rtb_Saturation = 1000.0F;
  } else if (rtb_Sum_j5 < 0.0F) {
    rtb_Saturation = 0.0F;
  } else {
    rtb_Saturation = rtb_Sum_j5;
  }

  /* End of Saturate: '<S346>/Saturation' */

  /* Update for DiscreteIntegrator: '<S325>/Integrator' incorporates:
   *  Gain: '<S315>/Integral Gain'
   *  Sum: '<S293>/SumI2'
   *  Sum: '<S293>/SumI4'
   */
  if (!ATV_DW.reset_PID) {
    ATV_DW.Integrator_DSTATE += (rtb_Sum_p_tmp * atvc_gen_start_PID_KI +
      (rtb_Saturation - rtb_Sum_j5)) * (0.01F * (real32_T)
      ATV_DW.IceSMspeed_pid_ice_ELAPS_T[0]);
  }

  ATV_DW.Integrator_PrevResetState = (int8_T)ATV_DW.reset_PID;

  /* End of Update for DiscreteIntegrator: '<S325>/Integrator' */
  /* End of Outputs for SubSystem: '<S169>/IceSM.speed_pid_ice' */
  guard1 = false;
  switch (ATV_DW.is_IceSM) {
   case ATV_IN_AvviamentoIce:
    /* During 'AvviamentoIce': '<S169>:275' */
    if (ATV_DW.temporalCounter_i1 >= (uint32_T)ceil(atvc_ICE_dragging_time *
         100.0)) {
      /* Transition: '<S169>:278' */
      if (ATV_B.tHROTTLEGen_X1000_out > 0) {
        /* Transition: '<S169>:285' */
        ATV_DW.IceStartAttempCnt++;
        atv_IceShutdown_out = true;

        /* Transition: '<S169>:272' */
        /* Exit 'AvviamentoIce': '<S169>:275' */
        ATV_DW.reset_PID = true;
        ATV_DW.is_IceSM = ATV_IN_Wait0RPM;

        /* Entry 'Wait0RPM': '<S169>:292' */
        atv_IceSM = 8U;
        ATV_B.tHROTTLEGen_X1000_out = 0U;
        ATV_B.FS1_out = false;
      } else {
        /* Transition: '<S169>:358' */
        /* Exit 'AvviamentoIce': '<S169>:275' */
        ATV_DW.reset_PID = true;
        ATV_DW.is_IceSM = ATV_IN_MonitoraggioIce;
        ATV_DW.temporalCounter_i1 = 0U;

        /* Entry 'MonitoraggioIce': '<S169>:284' */
        atv_IceSM = 4U;
        ATV_B.tHROTTLEGen_X1000_out = 0U;
        ATV_B.FS1_out = false;
      }
    } else if ((!ATV_B.apu_start_out) || ATV_B.RelationalOperator1) {
      /* Transition: '<S169>:332' */
      atv_IceShutdown_out = true;
      ATV_B.FS1_out = false;
      ATV_B.tHROTTLEGen_X1000_out = 0U;

      /* Transition: '<S169>:337' */
      /* Transition: '<S169>:338' */
      /* Exit 'AvviamentoIce': '<S169>:275' */
      ATV_DW.reset_PID = true;
      ATV_DW.is_IceSM = ATV_IN_WAIT_ICE_OFF;
      ATV_DW.temporalCounter_i1 = 0U;
    } else {
      /* Outputs for Function Call SubSystem: '<S169>/IceSM.speed_pid_ice' */
      /* DataTypeConversion: '<S267>/Data Type Conversion2' */
      rtb_Sum_p_tmp = (real32_T)floor(rtb_Saturation);
      if (rtIsNaNF(rtb_Sum_p_tmp)) {
        ATV_B.tHROTTLEGen_X1000_out = 0U;
      } else {
        ATV_B.tHROTTLEGen_X1000_out = (uint16_T)(real32_T)fmod(rtb_Sum_p_tmp,
          65536.0);
      }

      /* End of DataTypeConversion: '<S267>/Data Type Conversion2' */
      /* End of Outputs for SubSystem: '<S169>/IceSM.speed_pid_ice' */
      atv_IceSM = 2U;
      ATV_B.FS1_out = true;
    }
    break;

   case ATV_IN_FuelPumpOff:
    atv_IceKey_out = false;

    /* During 'FuelPumpOff': '<S169>:323' */
    if (ATV_DW.temporalCounter_i1 >= 500U) {
      /* Transition: '<S169>:324' */
      /* Transition: '<S169>:282' */
      ATV_DW.is_IceSM = ATV_IN_Inizializzazione;

      /* Entry 'Inizializzazione': '<S169>:279' */
      ATV_DW.IceStartAttempCnt = 0.0;
      atv_IceOn = false;
      atv_IceKey_out = false;
      atv_IceShutdown_out = false;
      atv_IceFault = false;
      ATV_B.GenFwd_out = false;
      atv_IceSM = 0U;
      ATV_DW.reset_PID = true;
    }
    break;

   case ATV_IN_FuelPumpOn:
    atv_IceKey_out = true;
    ATV_B.GenFwd_out = true;

    /* During 'FuelPumpOn': '<S169>:320' */
    if (ATV_DW.temporalCounter_i1 >= 300U) {
      /* Transition: '<S169>:321' */
      ATV_DW.is_IceSM = ATV_IN_AvviamentoIce;
      ATV_DW.temporalCounter_i1 = 0U;

      /* Entry 'AvviamentoIce': '<S169>:275' */
      ATV_DW.reset_PID = false;
    }
    break;

   case ATV_IN_ICE_NOT_SETTLE:
    /* During 'ICE_NOT_SETTLE': '<S169>:360' */
    if (atv_RPM_Gen > atvc_IceOnTh) {
      /* Transition: '<S169>:283' */
      ATV_DW.is_IceSM = ATV_IN_MonitoraggioIce;
      ATV_DW.temporalCounter_i1 = 0U;

      /* Entry 'MonitoraggioIce': '<S169>:284' */
      atv_IceSM = 4U;
      ATV_B.tHROTTLEGen_X1000_out = 0U;
      ATV_B.FS1_out = false;
    } else if (!ATV_B.apu_start_out) {
      /* Transition: '<S169>:328' */
      atv_IceShutdown_out = true;

      /* Transition: '<S169>:330' */
      /* Transition: '<S169>:337' */
      /* Transition: '<S169>:338' */
      ATV_DW.is_IceSM = ATV_IN_WAIT_ICE_OFF;
      ATV_DW.temporalCounter_i1 = 0U;
    } else {
      if (ATV_DW.temporalCounter_i1 >= 200U) {
        /* Transition: '<S169>:361' */
        atv_IceOn = false;
        ATV_DW.IceStartAttempCnt++;
        atv_IceShutdown_out = true;

        /* Transition: '<S169>:272' */
        ATV_DW.is_IceSM = ATV_IN_Wait0RPM;

        /* Entry 'Wait0RPM': '<S169>:292' */
        atv_IceSM = 8U;
        ATV_B.tHROTTLEGen_X1000_out = 0U;
        ATV_B.FS1_out = false;
      }
    }
    break;

   case ATV_IN_IceRestartDelay:
    /* During 'IceRestartDelay': '<S169>:303' */
    if (ATV_DW.temporalCounter_i1 >= 200U) {
      /* Transition: '<S169>:277' */
      ATV_DW.is_IceSM = ATV_IN_AvviamentoIce;
      ATV_DW.temporalCounter_i1 = 0U;

      /* Entry 'AvviamentoIce': '<S169>:275' */
      ATV_DW.reset_PID = false;
    }
    break;

   case ATV_IN_Inizializzazione:
    atv_IceKey_out = false;
    ATV_B.GenFwd_out = false;

    /* During 'Inizializzazione': '<S169>:279' */
    if ((ATV_DW.ReqGen_prev != ATV_DW.ReqGen_start) && ATV_DW.ReqGen_start &&
        (!ATV_B.RelationalOperator1)) {
      /* Transition: '<S169>:273' */
      ATV_DW.is_IceSM = ATV_IN_FuelPumpOn;
      ATV_DW.temporalCounter_i1 = 0U;

      /* Entry 'FuelPumpOn': '<S169>:320' */
      atv_IceKey_out = true;
      ATV_B.GenFwd_out = true;
      atv_IceSM = 1U;
    }
    break;

   case ATV_IN_MonitoraggioIce:
    /* During 'MonitoraggioIce': '<S169>:284' */
    if ((!ATV_B.apu_start_out) || ATV_B.RelationalOperator1) {
      /* Transition: '<S169>:333' */
      atv_IceShutdown_out = true;

      /* Transition: '<S169>:335' */
      /* Transition: '<S169>:330' */
      /* Transition: '<S169>:337' */
      /* Transition: '<S169>:338' */
      ATV_DW.is_IceSM = ATV_IN_WAIT_ICE_OFF;
      ATV_DW.temporalCounter_i1 = 0U;
    } else if (atv_RPM_Gen <= atvc_IceOffTh) {
      /* Transition: '<S169>:288' */
      ATV_DW.is_IceSM = ATV_IN_ICE_NOT_SETTLE;
      ATV_DW.temporalCounter_i1 = 0U;
    } else {
      if (ATV_DW.temporalCounter_i1 >= 200U) {
        /* Transition: '<S169>:286' */
        atv_IceOn = !ATV_B.RelationalOperator1;
        ATV_DW.is_IceSM = ATV_IN_MonitoraggioStatoICE;

        /* Entry Internal 'MonitoraggioStatoICE': '<S169>:299' */
        /* Transition: '<S169>:300' */
        ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOn;

        /* Entry 'iCEOn': '<S169>:298' */
        atv_IceFault = false;
        atv_IceSM = 5U;
      }
    }
    break;

   case ATV_IN_MonitoraggioStatoICE:
    /* During 'MonitoraggioStatoICE': '<S169>:299' */
    if ((!ATV_B.apu_start_out) || (!atv_IceOn) || ATV_B.RelationalOperator1) {
      /* Transition: '<S169>:295' */
      /* Exit Internal 'MonitoraggioStatoICE': '<S169>:299' */
      ATV_DW.is_MonitoraggioStatoICE = ATV_IN_NO_ACTIVE_CHILD_c;
      ATV_DW.is_IceSM = ATV_IN_WAIT_NO_LOAD;
      ATV_DW.temporalCounter_i1 = 0U;

      /* Entry 'WAIT_NO_LOAD': '<S169>:378' */
      ATV_B.IceReduceLoad = true;
    } else {
      switch (ATV_DW.is_MonitoraggioStatoICE) {
       case ATV_IN_DEB_d:
        /* During 'DEB': '<S169>:290' */
        if (atv_RPM_Gen > atvc_IceOnTh) {
          /* Transition: '<S169>:297' */
          ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOn;

          /* Entry 'iCEOn': '<S169>:298' */
          atv_IceFault = false;
          atv_IceSM = 5U;
        } else {
          if (ATV_DW.temporalCounter_i1 >= 100U) {
            /* Transition: '<S169>:304' */
            ATV_DW.is_MonitoraggioStatoICE = ATV_IN_iCEOff;

            /* Entry 'iCEOff': '<S169>:302' */
            atv_IceOn = false;
            atv_IceFault = true;
            atv_IceShutdown_out = true;
            atv_IceSM = 7U;
          }
        }
        break;

       case ATV_IN_iCEOff:
        /* During 'iCEOff': '<S169>:302' */
        break;

       default:
        /* During 'iCEOn': '<S169>:298' */
        if (atv_RPM_Gen <= atvc_IceOffTh) {
          /* Transition: '<S169>:301' */
          ATV_DW.is_MonitoraggioStatoICE = ATV_IN_DEB_d;
          ATV_DW.temporalCounter_i1 = 0U;

          /* Entry 'DEB': '<S169>:290' */
          atv_IceSM = 6U;
        }
        break;
      }
    }
    break;

   case ATV_IN_WAIT_ICE_OFF:
    /* During 'WAIT_ICE_OFF': '<S169>:365' */
    if (ATV_DW.temporalCounter_i1 >= 500U) {
      /* Transition: '<S169>:366' */
      ATV_DW.is_IceSM = ATV_IN_Inizializzazione;

      /* Entry 'Inizializzazione': '<S169>:279' */
      ATV_DW.IceStartAttempCnt = 0.0;
      atv_IceOn = false;
      atv_IceKey_out = false;
      atv_IceShutdown_out = false;
      atv_IceFault = false;
      ATV_B.GenFwd_out = false;
      atv_IceSM = 0U;
      ATV_DW.reset_PID = true;
    }
    break;

   case ATV_IN_WAIT_NO_LOAD:
    /* During 'WAIT_NO_LOAD': '<S169>:378' */
    if (ATV_DW.temporalCounter_i1 >= 20U) {
      /* Transition: '<S169>:381' */
      atv_IceShutdown_out = true;

      /* Exit 'WAIT_NO_LOAD': '<S169>:378' */
      ATV_B.IceReduceLoad = false;
      ATV_DW.is_IceSM = ATV_IN_FuelPumpOff;
      ATV_DW.temporalCounter_i1 = 0U;

      /* Entry 'FuelPumpOff': '<S169>:323' */
      atv_IceKey_out = false;
      atv_IceSM = 10U;
    }
    break;

   default:
    /* During 'Wait0RPM': '<S169>:292' */
    if (atv_RPM_Gen < 10) {
      /* Transition: '<S169>:281' */
      if ((!ATV_B.apu_start_out) || ATV_B.RelationalOperator1) {
        /* Transition: '<S169>:309' */
        atv_IceShutdown_out = true;

        /* Transition: '<S169>:311' */
        guard1 = true;
      } else if ((ATV_DW.IceStartAttempCnt > atvc_IceStartRetry) ||
                 ATV_B.RelationalOperator1) {
        /* Transition: '<S169>:289' */
        atv_IceFault = true;
        guard1 = true;
      } else {
        /* Transition: '<S169>:296' */
        ATV_DW.is_IceSM = ATV_IN_IceRestartDelay;
        ATV_DW.temporalCounter_i1 = 0U;

        /* Entry 'IceRestartDelay': '<S169>:303' */
        atv_IceSM = 9U;
        atv_IceShutdown_out = false;
      }
    }
    break;
  }

  if (guard1) {
    ATV_DW.is_IceSM = ATV_IN_FuelPumpOff;
    ATV_DW.temporalCounter_i1 = 0U;

    /* Entry 'FuelPumpOff': '<S169>:323' */
    atv_IceKey_out = false;
    atv_IceSM = 10U;
  }
}

real_T rt_remd_snf(real_T u0, real_T u1)
{
  real_T y;
  real_T u1_0;
  if (rtIsNaN(u0) || rtIsInf(u0) || (rtIsNaN(u1) || rtIsInf(u1))) {
    y = (rtNaN);
  } else {
    if (u1 < 0.0) {
      u1_0 = ceil(u1);
    } else {
      u1_0 = floor(u1);
    }

    if ((u1 != 0.0) && (u1 != u1_0)) {
      u1_0 = fabs(u0 / u1);
      if (fabs(u1_0 - floor(u1_0 + 0.5)) <= DBL_EPSILON * u1_0) {
        y = 0.0 * u0;
      } else {
        y = fmod(u0, u1);
      }
    } else {
      y = fmod(u0, u1);
    }
  }

  return y;
}

static void ATV_SystemCore_release_p(dsp_simulink_MovingAverage_p_T *obj)
{
  dsp_private_SlidingWindowAv_p_T *obj_0;
  if ((obj->isInitialized == 1) && obj->isSetupComplete) {
    obj_0 = obj->pStatistic;
    if (obj_0->isInitialized == 1) {
      obj_0->isInitialized = 2;
    }

    obj->NumChannels = -1;
  }
}

static void ATV_SystemCore_delete_p(dsp_simulink_MovingAverage_p_T *obj)
{
  ATV_SystemCore_release_p(obj);
}

static void matlabCodegenHandle_matlabCod_p(dsp_simulink_MovingAverage_p_T *obj)
{
  if (!obj->matlabCodegenIsDeleted) {
    obj->matlabCodegenIsDeleted = true;
    ATV_SystemCore_delete_p(obj);
  }
}

static void ATV_SystemCore_release(dsp_simulink_MovingAverage_AT_T *obj)
{
  dsp_private_SlidingWindowAver_T *obj_0;
  if ((obj->isInitialized == 1) && obj->isSetupComplete) {
    obj_0 = obj->pStatistic;
    if (obj_0->isInitialized == 1) {
      obj_0->isInitialized = 2;
    }

    obj->NumChannels = -1;
  }
}

static void ATV_SystemCore_delete(dsp_simulink_MovingAverage_AT_T *obj)
{
  ATV_SystemCore_release(obj);
}

static void matlabCodegenHandle_matlabCodeg(dsp_simulink_MovingAverage_AT_T *obj)
{
  if (!obj->matlabCodegenIsDeleted) {
    obj->matlabCodegenIsDeleted = true;
    ATV_SystemCore_delete(obj);
  }
}

/* Model output function for TID0 */
static void ATV_output0(void)          /* Sample time: [0.01s, 0.0s] */
{
  real32_T cumRevIndex;
  real32_T csum;
  real32_T csumrev[19];
  real32_T z;
  int16_T rtb_UnaryMinus_d;
  int16_T rtb_Memory;
  int8_T rtb_Switch4_i;
  real32_T rtb_Gain1_j;
  boolean_T rtb_LogicalOperator11_b;
  boolean_T rtb_AND_e;
  boolean_T rtb_AND_j;
  boolean_T rtb_Compare;
  boolean_T rtb_Compare_c;
  boolean_T rtb_Compare_e1;
  uint8_T rtb_Switch4;
  real_T rtb_MultiportSwitch1;
  int32_T rtb_atvc_ice_run_timer_reset_k;
  int32_T rtb_Integrator_j;
  uint16_T rtb_Saturation1_g;
  real_T rtb_DiscreteTimeIntegrator;
  int32_T rtb_atvc_fmot_run_timer_reset;
  uint16_T rtb_Saturation;
  real_T rtb_Switch_e;
  real_T rtb_Filter;
  uint32_T rtb_Merge;
  int32_T rtb_Add5;
  uint16_T rtb_Product_d;
  int64m_T rtb_Product;
  int64m_T tmp;
  int64m_T tmp_0;
  int64m_T tmp_1;
  int64m_T tmp_2;
  uint32_T tmp_3;
  int96m_T tmp_4;
  int64m_T tmp_5;
  int64m_T tmp_6;
  int64m_T tmp_7;
  int64m_T tmp_8;
  int96m_T tmp_9;
  int64m_T tmp_a;
  int96m_T tmp_b;
  int64m_T tmp_c;
  int96m_T tmp_d;
  int64m_T tmp_e;
  int32_T u0;
  real_T tmp_f;
  int8_T rtb_Switch4_l;
  uint8_T tmp_g;
  real_T rtb_MultiportSwitch_0;
  boolean_T atv_pm_g_tmp_tmp;
  static int64m_T tmp_h = { { 100000U, 0U }/* chunks */
  };

  static int64m_T tmp_i = { { 0U, 0U } /* chunks */
  };

  {                                    /* Sample time: [0.01s, 0.0s] */
    rate_monotonic_scheduler();
  }

  /* RateTransition: '<Root>/Rate Transition6' incorporates:
   *  RateTransition: '<Root>/Rate Transition7'
   */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition6_a = ATV_DW.RateTransition6_Buffer0_i;
    ATV_B.RateTransition7 = ATV_DW.RateTransition7_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition6' */

  /* Relay: '<S124>/Relay' */
  if (ATV_B.RateTransition6_a >= atvc_maxTempMotor) {
    ATV_DW.Relay_Mode = true;
  } else {
    if (ATV_B.RateTransition6_a <= atvc_minTempMotor) {
      ATV_DW.Relay_Mode = false;
    }
  }

  /* Relay: '<S124>/Relay1' */
  if (ATV_B.RateTransition7 >= atvc_maxTempInv) {
    ATV_DW.Relay1_Mode = true;
  } else {
    if (ATV_B.RateTransition7 <= atvc_minTempInv) {
      ATV_DW.Relay1_Mode = false;
    }
  }

  /* RateTransition: '<Root>/Rate Transition10' incorporates:
   *  RateTransition: '<Root>/Rate Transition11'
   */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition10 = ATV_DW.RateTransition10_Buffer0;
    ATV_B.RateTransition11_n = ATV_DW.RateTransition11_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition10' */

  /* Relay: '<S124>/Relay2' */
  if (ATV_B.RateTransition10 >= atvc_maxTempMotor) {
    ATV_DW.Relay2_Mode = true;
  } else {
    if (ATV_B.RateTransition10 <= atvc_minTempMotor) {
      ATV_DW.Relay2_Mode = false;
    }
  }

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput13' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput13
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_YJ3, &adc, FALSE);
    ATV_B.atv_yj3_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* DataTypeConversion: '<S84>/Data Type Conversion8' */
  rtb_Gain1_j = (real32_T)ATV_B.atv_yj3_raw_ain;

  /* Lookup_n-D: '<S84>/Tensione-->Temperatura1' */
  rtb_Gain1_j = look1_iflf_binlxpw(rtb_Gain1_j, ATV_ConstP.pooled24,
    ATV_ConstP.pooled23, 19U);

  /* DataTypeConversion: '<S84>/Data Type Conversion6' */
  rtb_Gain1_j = (real32_T)floor(rtb_Gain1_j);
  if (rtIsNaNF(rtb_Gain1_j) || rtIsInfF(rtb_Gain1_j)) {
    rtb_Gain1_j = 0.0F;
  } else {
    rtb_Gain1_j = (real32_T)fmod(rtb_Gain1_j, 65536.0);
  }

  atv_T_Air = (int16_T)(rtb_Gain1_j < 0.0F ? (int32_T)(int16_T)-(int16_T)
                        (uint16_T)-rtb_Gain1_j : (int32_T)(int16_T)(uint16_T)
                        rtb_Gain1_j);

  /* End of DataTypeConversion: '<S84>/Data Type Conversion6' */

  /* Product: '<S124>/Divide1' */
  rtb_UnaryMinus_d = (int16_T)div_nde_s32_floor(atv_T_Air, 10);

  /* Sum: '<S124>/Add' */
  rtb_Memory = (int16_T)(ATV_B.RateTransition11_n - rtb_UnaryMinus_d);

  /* Relay: '<S124>/Relay8' */
  if (rtb_Memory >= 10) {
    ATV_DW.Relay8_Mode = true;
  } else {
    if (rtb_Memory <= 8) {
      ATV_DW.Relay8_Mode = false;
    }
  }

  /* Sum: '<S124>/Add2' */
  rtb_Memory = (int16_T)(ATV_B.RateTransition7 - rtb_UnaryMinus_d);

  /* Relay: '<S124>/Relay6' */
  if (rtb_Memory >= 10) {
    ATV_DW.Relay6_Mode = true;
  } else {
    if (rtb_Memory <= 8) {
      ATV_DW.Relay6_Mode = false;
    }
  }

  /* RateTransition: '<Root>/Rate Transition26' incorporates:
   *  RateTransition: '<Root>/Rate Transition27'
   */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition26 = ATV_DW.RateTransition26_Buffer0;
    ATV_B.rear_motor_speed = ATV_DW.RateTransition27_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition26' */

  /* Logic: '<S143>/AND' incorporates:
   *  Constant: '<S143>/Lower Limit'
   *  Constant: '<S143>/Upper Limit'
   *  RelationalOperator: '<S143>/Lower Test'
   *  RelationalOperator: '<S143>/Upper Test'
   */
  rtb_AND_j = ((-250 <= ATV_B.RateTransition26) && (ATV_B.RateTransition26 <=
    250));

  /* Logic: '<S144>/AND' incorporates:
   *  Constant: '<S144>/Lower Limit'
   *  Constant: '<S144>/Upper Limit'
   *  RelationalOperator: '<S144>/Lower Test'
   *  RelationalOperator: '<S144>/Upper Test'
   */
  rtb_AND_e = ((-250 <= ATV_B.rear_motor_speed) && (ATV_B.rear_motor_speed <=
    250));

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XD1, &adc, FALSE);
    ATV_B.pai_BasicAnalogInput = (adc * 5.0) / 4096.0;
  }

  /* Gain: '<S28>/Gain' */
  atv_xd1_key_ain = 6.73170731 * ATV_B.pai_BasicAnalogInput;

  /* RelationalOperator: '<S126>/Compare' incorporates:
   *  Constant: '<S126>/Constant'
   */
  key_signal = (atv_xd1_key_ain > 12.0);

  /* S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput' */
  /* S-Function Block: <S28>/pdx_DigitalInput
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

  /* Logic: '<S28>/Logical Operator' */
  ATV_B.atv_StartBtn_din = !atv_za3_StartBtn_din;

  /* S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput8' */
  /* S-Function Block: <S28>/pdx_DigitalInput8
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  {
    uint8_T state;
    (void) pdx_digital_input(PIO_DIN_ZC2, &state, FALSE);
    put_debounce_by_time(state,
                         0.01,
                         1,
                         0.05,
                         0.1,
                         &state,
                         &pdx_DigitalInput8_detm_wrk_data);
    atv_zc2 = state;
  }

  /* S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput9' */
  /* S-Function Block: <S28>/pdx_DigitalInput9
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  {
    uint8_T state;
    (void) pdx_digital_input(PIO_DIN_ZC4, &state, FALSE);
    put_debounce_by_time(state,
                         0.01,
                         1,
                         0.05,
                         0.1,
                         &state,
                         &pdx_DigitalInput9_detm_wrk_data);
    atv_zc4 = state;
  }

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput17' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput17
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_ZE4_MONITOR_V, &adc, FALSE);
    ATV_B.pai_BasicAnalogInput17 = (adc * 5.0) / 4096.0;
  }

  /* DataTypeConversion: '<S28>/Data Type Conversion1' */
  atv_ze4 = (real32_T)ATV_B.pai_BasicAnalogInput17;

  /* RelationalOperator: '<S82>/Compare' incorporates:
   *  Constant: '<S82>/Constant'
   */
  rtb_Compare = (atv_ze4 > 2.0F);

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput18' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput18
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XD2, &adc, FALSE);
    ATV_B.pai_BasicAnalogInput18 = (adc * 5.0) / 4096.0;
  }

  /* DataTypeConversion: '<S28>/Data Type Conversion3' */
  atv_xd2 = (real32_T)ATV_B.pai_BasicAnalogInput18;

  /* RelationalOperator: '<S83>/Compare' incorporates:
   *  Constant: '<S83>/Constant'
   */
  rtb_Compare_c = (atv_xd2 < 2.0F);

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput16' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput16
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_ZE3_MONITOR_V, &adc, FALSE);
    ATV_B.pai_BasicAnalogInput16 = (adc * 5.0) / 4096.0;
  }

  /* DataTypeConversion: '<S28>/Data Type Conversion' */
  atv_ze3 = (real32_T)ATV_B.pai_BasicAnalogInput16;

  /* RelationalOperator: '<S81>/Compare' incorporates:
   *  Constant: '<S81>/Constant'
   */
  rtb_Compare_e1 = (atv_ze3 > 2.5F);

  /* Outputs for Atomic SubSystem: '<Root>/Atomic Subsystem' */
  /* Logic: '<S1>/Logical Operator2' incorporates:
   *  Logic: '<S1>/Logical Operator6'
   */
  atv_pm_g_tmp_tmp = !atv_zc4;

  /* Logic: '<S1>/Logical Operator' incorporates:
   *  Logic: '<S1>/Logical Operator1'
   *  Logic: '<S1>/Logical Operator16'
   *  Logic: '<S1>/Logical Operator2'
   *  Logic: '<S1>/Logical Operator20'
   *  Logic: '<S1>/Logical Operator25'
   *  Logic: '<S1>/Logical Operator7'
   */
  rtb_LogicalOperator11_b = (atv_pm_g_tmp_tmp && (!atv_zc2));
  atv_pm_g = (rtb_LogicalOperator11_b && rtb_Compare);

  /* Logic: '<S1>/Logical Operator16' incorporates:
   *  Logic: '<S1>/Logical Operator13'
   *  Logic: '<S1>/Logical Operator14'
   */
  atv_pm_s1 = (rtb_LogicalOperator11_b && (!rtb_Compare) && (!rtb_Compare_c) &&
               rtb_Compare_e1);

  /* Logic: '<S1>/Logical Operator20' incorporates:
   *  Logic: '<S1>/Logical Operator15'
   *  Logic: '<S1>/Logical Operator21'
   */
  atv_pm_s2 = (rtb_LogicalOperator11_b && (!rtb_Compare) && rtb_Compare_c &&
               (!rtb_Compare_e1));

  /* Logic: '<S1>/Logical Operator25' incorporates:
   *  Logic: '<S1>/Logical Operator23'
   */
  atv_pm_s3 = (rtb_LogicalOperator11_b && (!rtb_Compare) && rtb_Compare_c &&
               rtb_Compare_e1);

  /* Logic: '<S1>/Logical Operator3' */
  atv_pm_2 = (atv_zc4 && atv_zc2 && rtb_Compare);

  /* Logic: '<S1>/Logical Operator4' */
  atv_pm_1 = (atv_pm_g_tmp_tmp && atv_zc2 && rtb_Compare);

  /* Logic: '<S1>/Logical Operator7' incorporates:
   *  Logic: '<S1>/Logical Operator10'
   *  Logic: '<S1>/Logical Operator11'
   *  Logic: '<S1>/Logical Operator12'
   */
  atv_pm_0 = (rtb_LogicalOperator11_b && (!rtb_Compare) && (!rtb_Compare_c) && (
    !rtb_Compare_e1));

  /* End of Outputs for SubSystem: '<Root>/Atomic Subsystem' */

  /* Outputs for Atomic SubSystem: '<Root>/Atomic Subsystem1' */
  /* Logic: '<S2>/Logical Operator' */
  atv_pm_PreOp = (atv_pm_g || atv_pm_1 || atv_pm_2);

  /* Logic: '<S2>/Logical Operator2' */
  rtb_Compare_c = (atv_pm_1 || atv_pm_2);

  /* Inport: '<S2>/PS0' */
  atv_pm_Stealth = atv_pm_0;

  /* Logic: '<S2>/Logical Operator1' */
  atv_pm_Electric = (atv_pm_Stealth || atv_pm_s1);

  /* If: '<S2>/If' incorporates:
   *  Constant: '<S35>/Constant'
   *  Constant: '<S36>/Constant'
   *  Constant: '<S38>/Constant'
   */
  if (atv_pm_s2) {
    /* Outputs for IfAction SubSystem: '<S2>/If Action Subsystem' incorporates:
     *  ActionPort: '<S35>/Action Port'
     */
    atv_pm_Hybrid = 1U;

    /* End of Outputs for SubSystem: '<S2>/If Action Subsystem' */
  } else if (atv_pm_s3) {
    /* Outputs for IfAction SubSystem: '<S2>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S36>/Action Port'
     */
    atv_pm_Hybrid = 2U;

    /* End of Outputs for SubSystem: '<S2>/If Action Subsystem1' */
  } else {
    /* Outputs for IfAction SubSystem: '<S2>/If Action Subsystem3' incorporates:
     *  ActionPort: '<S38>/Action Port'
     */
    atv_pm_Hybrid = 0U;

    /* End of Outputs for SubSystem: '<S2>/If Action Subsystem3' */
  }

  /* End of If: '<S2>/If' */
  /* End of Outputs for SubSystem: '<Root>/Atomic Subsystem1' */

  /* Logic: '<Root>/Logical Operator1' */
  ATV_B.LogicalOperator1 = (rtb_Compare_c || atv_pm_PreOp);

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput5' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput5
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XC1, &adc, FALSE);
    atv_xc1_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Relay: '<S28>/Relay2' incorporates:
   *  Relay: '<S28>/Relay3'
   *  Relay: '<S28>/Relay4'
   *  Relay: '<S28>/Relay5'
   */
  rtb_MultiportSwitch_0 = atvc_an_in_sel_th + atvc_an_in_sel_his;
  if (atv_xc1_raw_ain >= rtb_MultiportSwitch_0) {
    ATV_DW.Relay2_Mode_g = true;
  } else {
    if (atv_xc1_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
      ATV_DW.Relay2_Mode_g = false;
    }
  }

  atv_fwd_mode_in = !ATV_DW.Relay2_Mode_g;

  /* End of Relay: '<S28>/Relay2' */

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput6' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput6
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XC4, &adc, FALSE);
    atv_xc4_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Relay: '<S28>/Relay3' */
  if (atv_xc4_raw_ain >= rtb_MultiportSwitch_0) {
    ATV_DW.Relay3_Mode = true;
  } else {
    if (atv_xc4_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
      ATV_DW.Relay3_Mode = false;
    }
  }

  atv_rwd_mode_in = !ATV_DW.Relay3_Mode;

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput4' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput4
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XA3, &adc, FALSE);
    atv_xa3_brake_pedal_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Switch: '<S90>/Switch' incorporates:
   *  Constant: '<S104>/Lower Limit'
   *  Constant: '<S104>/Upper Limit'
   *  Constant: '<S90>/Constant'
   *  Logic: '<S104>/AND'
   *  RelationalOperator: '<S104>/Lower Test'
   *  RelationalOperator: '<S104>/Upper Test'
   */
  if ((0.45 <= atv_xa3_brake_pedal_raw_ain) && (atv_xa3_brake_pedal_raw_ain <=
       4.55)) {
    /* Saturate: '<S90>/Saturation' */
    if (atv_xa3_brake_pedal_raw_ain > 4.5) {
      tmp_f = 4.5;
    } else if (atv_xa3_brake_pedal_raw_ain < 0.5) {
      tmp_f = 0.5;
    } else {
      tmp_f = atv_xa3_brake_pedal_raw_ain;
    }

    /* End of Saturate: '<S90>/Saturation' */

    /* Gain: '<S90>/Gain' incorporates:
     *  Constant: '<S90>/Constant1'
     *  Gain: '<S90>/Gain1'
     *  Sum: '<S90>/Add'
     */
    rtb_MultiportSwitch1 = (tmp_f - atvc_brake_pedal_zero) *
      atvc_brake_pedal_gain * 750.0;

    /* Saturate: '<S90>/Saturation1' */
    if (rtb_MultiportSwitch1 > 1000.0) {
      rtb_MultiportSwitch1 = 1000.0;
    } else {
      if (rtb_MultiportSwitch1 < 0.0) {
        rtb_MultiportSwitch1 = 0.0;
      }
    }

    tmp_f = floor(rtb_MultiportSwitch1);
    if (rtIsNaN(tmp_f)) {
      atv_brake_pedalX1000 = 0U;
    } else {
      atv_brake_pedalX1000 = (uint16_T)fmod(tmp_f, 65536.0);
    }

    /* End of Saturate: '<S90>/Saturation1' */
  } else {
    atv_brake_pedalX1000 = 0U;
  }

  /* End of Switch: '<S90>/Switch' */

  /* Relay: '<S28>/Relay1' */
  if (atv_brake_pedalX1000 >= (uint16_T)((uint32_T)atvc_brakePedalOn +
       atvc_brakePedalHis)) {
    ATV_DW.Relay1_Mode_b = true;
  } else {
    if (atv_brake_pedalX1000 <= (uint16_T)((uint32_T)atvc_brakePedalOn -
         atvc_brakePedalHis)) {
      ATV_DW.Relay1_Mode_b = false;
    }
  }

  atv_brake_pedal_digital_in = ATV_DW.Relay1_Mode_b;

  /* End of Relay: '<S28>/Relay1' */

  /* Logic: '<S34>/Logical Operator3' incorporates:
   *  Logic: '<S34>/Logical Operator1'
   *  Logic: '<S34>/Logical Operator2'
   *  Logic: '<S34>/Logical Operator4'
   */
  atv_startConditions = ((!atv_fwd_mode_in) && (!atv_rwd_mode_in) &&
    atv_brake_pedal_digital_in);

  /* RateTransition: '<Root>/Rate Transition4' incorporates:
   *  RateTransition: '<Root>/Rate Transition5'
   */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition4_f = ATV_DW.RateTransition4_Buffer0_f;

    /* RateTransition: '<Root>/Rate Transition37' */
    ATV_B.RateTransition37 = ATV_DW.RateTransition37_Buffer0;
    ATV_B.RateTransition5_l = ATV_DW.RateTransition5_Buffer0_c;
  }

  /* End of RateTransition: '<Root>/Rate Transition4' */

  /* Logic: '<Root>/Logical Operator' incorporates:
   *  Constant: '<Root>/Constant3'
   */
  ATV_B.LogicalOperator = (atvc_ChargeOverride || ATV_B.RateTransition4_f ||
    ATV_B.RateTransition37);

  /* Memory: '<S34>/Memory1' */
  ATV_B.Memory1 = ATV_DW.Memory1_PreviousInput_m;

  /* Memory: '<S34>/Memory2' */
  ATV_B.Memory2 = ATV_DW.Memory2_PreviousInput;

  /* Memory: '<S34>/Memory3' */
  ATV_B.Memory3 = ATV_DW.Memory3_PreviousInput;

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput7' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput7
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XE2, &adc, FALSE);
    atv_xe2_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Relay: '<S28>/Relay4' */
  if (atv_xe2_raw_ain >= rtb_MultiportSwitch_0) {
    ATV_DW.Relay4_Mode = true;
  } else {
    if (atv_xe2_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
      ATV_DW.Relay4_Mode = false;
    }
  }

  atv_apu_req_in = ATV_DW.Relay4_Mode;

  /* Logic: '<S34>/Logical Operator' incorporates:
   *  Memory: '<S34>/Memory'
   */
  rtb_Compare_e1 = !ATV_DW.Memory_PreviousInput_l;

  /* Memory: '<S34>/Memory4' */
  ATV_B.Memory4 = ATV_DW.Memory4_PreviousInput;

  /* RateTransition: '<S4>/Rate Transition4' */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition4 = ATV_DW.RateTransition4_Buffer0;
  }

  /* End of RateTransition: '<S4>/Rate Transition4' */

  /* RelationalOperator: '<S133>/Compare' incorporates:
   *  Constant: '<S133>/Constant'
   */
  ATV_B.Compare = (ATV_B.RateTransition4 >= atvc_IceStopSOC);

  /* RelationalOperator: '<S128>/Compare' incorporates:
   *  Constant: '<S128>/Constant'
   */
  rtb_Compare = (atv_pm_Hybrid > 1);

  /* Switch: '<S34>/Switch' incorporates:
   *  Constant: '<S135>/Constant'
   *  Logic: '<S34>/Logical Operator8'
   *  RelationalOperator: '<S135>/Compare'
   */
  if (rtb_Compare) {
    ATV_B.Switch_k = !ATV_B.Compare;
  } else {
    ATV_B.Switch_k = (ATV_B.RateTransition4 <= atvc_IceStartSOC);
  }

  /* End of Switch: '<S34>/Switch' */

  /* RelationalOperator: '<S136>/Compare' incorporates:
   *  Constant: '<S136>/Constant'
   */
  ATV_B.Compare_b = (ATV_B.RateTransition4 >= atvc_IceMaxSOC);

  /* RelationalOperator: '<S137>/Compare' incorporates:
   *  Constant: '<S137>/Constant'
   */
  ATV_B.Compare_l = (atv_pm_Hybrid > 0);

  /* Chart: '<S34>/Chart1' incorporates:
   *  Memory: '<S34>/Memory5'
   */
  if (ATV_DW.temporalCounter_i1_b < 31U) {
    ATV_DW.temporalCounter_i1_b++;
  }

  /* Gateway: loop_10ms/Chart1 */
  ATV_DW.apu_req_btn_in_prev = ATV_DW.apu_req_btn_in_start;
  ATV_DW.apu_req_btn_in_start = atv_apu_req_in;
  ATV_DW.apu_off_in_prev = ATV_DW.apu_off_in_start;
  ATV_DW.apu_off_in_start = rtb_Compare_c;
  ATV_DW.low_soc_prev = ATV_DW.low_soc_start;
  ATV_DW.low_soc_start = rtb_Compare_e1;
  ATV_DW.key_signal_prev_o = ATV_DW.key_signal_start_i;
  ATV_DW.key_signal_start_i = ATV_B.Switch_k;
  ATV_DW.ice_fault_in_prev = ATV_DW.ice_fault_in_start;
  ATV_DW.ice_fault_in_start = key_signal;
  ATV_DW.apu_req_sel_in_prev = ATV_DW.apu_req_sel_in_start;
  ATV_DW.apu_req_sel_in_start = ATV_DW.Memory5_PreviousInput;

  /* During: loop_10ms/Chart1 */
  if (ATV_DW.is_active_c25_ATV == 0U) {
    ATV_DW.apu_req_btn_in_prev = atv_apu_req_in;
    ATV_DW.apu_off_in_prev = rtb_Compare_c;
    ATV_DW.low_soc_prev = rtb_Compare_e1;
    ATV_DW.key_signal_prev_o = ATV_B.Switch_k;
    ATV_DW.ice_fault_in_prev = key_signal;
    ATV_DW.apu_req_sel_in_prev = ATV_DW.Memory5_PreviousInput;

    /* Entry: loop_10ms/Chart1 */
    ATV_DW.is_active_c25_ATV = 1U;

    /* Entry Internal: loop_10ms/Chart1 */
    /* Entry Internal 'ICE_START_STOP': '<S125>:40' */
    /* Transition: '<S125>:14' */
    ATV_DW.is_ICE_START_STOP = ATV_IN_KEY_ON;

    /* Entry Internal 'KEY_ON': '<S125>:12' */
    /* Transition: '<S125>:5' */
    ATV_DW.is_KEY_ON = ATV_IN_APU_OFF;

    /* Entry 'APU_OFF': '<S125>:1' */
    ATV_B.apu_req_out = false;
    ATV_B.warn_high_soc = false;

    /* Entry Internal 'FAULT_DETECTION': '<S125>:41' */
    /* Transition: '<S125>:43' */
    ATV_DW.is_FAULT_DETECTION = ATV_IN_NO;

    /* Entry 'NO': '<S125>:42' */
    ATV_DW.ice_fault = false;
  } else {
    ATV_ICE_START_STOP();

    /* During 'FAULT_DETECTION': '<S125>:41' */
    if (ATV_DW.is_FAULT_DETECTION == ATV_IN_NO) {
      /* During 'NO': '<S125>:42' */
      if ((ATV_DW.apu_req_sel_in_prev != ATV_DW.apu_req_sel_in_start) &&
          ATV_DW.apu_req_sel_in_start) {
        /* Transition: '<S125>:46' */
        ATV_DW.is_FAULT_DETECTION = ATV_IN_YES;

        /* Entry 'YES': '<S125>:44' */
        ATV_DW.ice_fault = true;
      }
    } else {
      /* During 'YES': '<S125>:44' */
      if (((ATV_DW.apu_req_btn_in_prev != ATV_DW.apu_req_btn_in_start) &&
           ATV_DW.apu_req_btn_in_start) || ((ATV_DW.ice_fault_in_prev !=
            ATV_DW.ice_fault_in_start) && ATV_DW.ice_fault_in_start) ||
          ((ATV_DW.key_signal_prev_o != ATV_DW.key_signal_start_i) &&
           ATV_DW.key_signal_start_i)) {
        /* Transition: '<S125>:45' */
        /* Transition: '<S125>:56' */
        /* Transition: '<S125>:55' */
        ATV_DW.is_FAULT_DETECTION = ATV_IN_NO;

        /* Entry 'NO': '<S125>:42' */
        ATV_DW.ice_fault = false;
      }
    }
  }

  /* End of Chart: '<S34>/Chart1' */

  /* RateTransition: '<S6>/Rate Transition6' */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition6 = ATV_DW.RateTransition6_Buffer0;

    /* RateTransition: '<S6>/Rate Transition27' */
    ATV_B.RateTransition27 = ATV_DW.RateTransition27_Buffer0_b;
  }

  /* End of RateTransition: '<S6>/Rate Transition6' */

  /* Chart: '<S6>/Chart' */
  ATV_Chart(ATV_B.RateTransition27, &ATV_B.sf_Chart_j, &ATV_DW.sf_Chart_j);

  /* RateTransition: '<S6>/Rate Transition5' */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition5 = ATV_DW.RateTransition5_Buffer0;
  }

  /* End of RateTransition: '<S6>/Rate Transition5' */

  /* Switch: '<S6>/Switch1' incorporates:
   *  Constant: '<S6>/Constant1'
   *  Constant: '<S6>/Constant5'
   *  Gain: '<S6>/Gain'
   *  Gain: '<S6>/Gain1'
   *  Switch: '<S6>/Switch5'
   */
  if (ATV_B.sf_Chart_j.out) {
    /* Gain: '<S6>/Gain1' */
    tmp_f = floor(1000.0 * ATV_B.RateTransition6);
    if (rtIsNaN(tmp_f) || rtIsInf(tmp_f)) {
      tmp_f = 0.0;
    } else {
      tmp_f = fmod(tmp_f, 65536.0);
    }

    atv_max_cell = (uint16_T)(tmp_f < 0.0 ? (int32_T)(uint16_T)-(int16_T)
      (uint16_T)-tmp_f : (int32_T)(uint16_T)tmp_f);

    /* Gain: '<S6>/Gain' incorporates:
     *  Gain: '<S6>/Gain1'
     */
    tmp_f = floor(1000.0 * ATV_B.RateTransition5);
    if (rtIsNaN(tmp_f) || rtIsInf(tmp_f)) {
      tmp_f = 0.0;
    } else {
      tmp_f = fmod(tmp_f, 65536.0);
    }

    atv_min_cell = (uint16_T)(tmp_f < 0.0 ? (int32_T)(uint16_T)-(int16_T)
      (uint16_T)-tmp_f : (int32_T)(uint16_T)tmp_f);
  } else {
    atv_max_cell = 0U;
    atv_min_cell = 0U;
  }

  /* End of Switch: '<S6>/Switch1' */

  /* MinMax: '<S27>/MinMax2' */
  if (atv_max_cell > atv_min_cell) {
    rtb_Product_d = atv_max_cell;
  } else {
    rtb_Product_d = atv_min_cell;
  }

  /* End of MinMax: '<S27>/MinMax2' */

  /* RelationalOperator: '<S79>/Compare' incorporates:
   *  Constant: '<S79>/Constant'
   */
  ATV_B.Compare_ln = (rtb_Product_d > atvc_cell_ov);

  /* MinMax: '<S27>/MinMax4' */
  if (atv_max_cell < atv_min_cell) {
    rtb_Product_d = atv_max_cell;
  } else {
    rtb_Product_d = atv_min_cell;
  }

  /* End of MinMax: '<S27>/MinMax4' */

  /* RelationalOperator: '<S78>/Compare' incorporates:
   *  Constant: '<S78>/Constant'
   */
  ATV_B.Compare_bk = (rtb_Product_d < atvc_cell_uv);

  /* RateTransition: '<S6>/Rate Transition1' incorporates:
   *  RateTransition: '<S6>/Rate Transition2'
   */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition1 = ATV_DW.RateTransition1_Buffer0;
    ATV_B.RateTransition2 = ATV_DW.RateTransition2_Buffer0;
  }

  /* End of RateTransition: '<S6>/Rate Transition1' */

  /* Switch: '<S6>/Switch4' incorporates:
   *  Constant: '<S6>/Constant3'
   *  Constant: '<S6>/Constant4'
   *  Switch: '<S6>/Switch3'
   */
  if (ATV_B.sf_Chart_j.out) {
    tmp_f = floor(ATV_B.RateTransition1);
    if (rtIsNaN(tmp_f) || rtIsInf(tmp_f)) {
      tmp_f = 0.0;
    } else {
      tmp_f = fmod(tmp_f, 256.0);
    }

    rtb_Switch4_i = (int8_T)(tmp_f < 0.0 ? (int32_T)(int8_T)-(int8_T)(uint8_T)
      -tmp_f : (int32_T)(int8_T)(uint8_T)tmp_f);
    tmp_f = floor(ATV_B.RateTransition2);
    if (rtIsNaN(tmp_f) || rtIsInf(tmp_f)) {
      tmp_f = 0.0;
    } else {
      tmp_f = fmod(tmp_f, 256.0);
    }

    ATV_B.Switch3 = (int8_T)(tmp_f < 0.0 ? (int32_T)(int8_T)-(int8_T)(uint8_T)
      -tmp_f : (int32_T)(int8_T)(uint8_T)tmp_f);
  } else {
    rtb_Switch4_i = 0;
    ATV_B.Switch3 = 0;
  }

  /* End of Switch: '<S6>/Switch4' */

  /* MinMax: '<S27>/MinMax1' */
  if (rtb_Switch4_i > ATV_B.Switch3) {
    rtb_Switch4_l = rtb_Switch4_i;
  } else {
    rtb_Switch4_l = ATV_B.Switch3;
  }

  /* End of MinMax: '<S27>/MinMax1' */

  /* RelationalOperator: '<S80>/Compare' incorporates:
   *  Constant: '<S80>/Constant'
   */
  ATV_B.Compare_e = (rtb_Switch4_l > atvc_cell_ot);

  /* MinMax: '<S27>/MinMax3' */
  if (rtb_Switch4_i >= ATV_B.Switch3) {
    rtb_Switch4_i = ATV_B.Switch3;
  }

  /* End of MinMax: '<S27>/MinMax3' */

  /* RelationalOperator: '<S77>/Compare' incorporates:
   *  Constant: '<S77>/Constant'
   */
  ATV_B.Compare_f = (rtb_Switch4_i < atvc_cell_ut);

  /* RelationalOperator: '<S22>/Compare' incorporates:
   *  Constant: '<S22>/Constant'
   */
  ATV_B.Compare_bl = (atv_max_cell >= atvc_chg_complete);

  /* RateTransition: '<S4>/Rate Transition3' */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition3 = ATV_DW.RateTransition3_Buffer0;

    /* RateTransition: '<S4>/Rate Transition27' */
    ATV_B.RateTransition27_k = ATV_DW.RateTransition27_Buffer0_f;
  }

  /* End of RateTransition: '<S4>/Rate Transition3' */

  /* Chart: '<S4>/Chart' */
  ATV_Chart(ATV_B.RateTransition27_k, &ATV_B.sf_Chart, &ATV_DW.sf_Chart);

  /* Switch: '<S4>/Switch2' incorporates:
   *  Constant: '<S4>/Constant2'
   */
  if (ATV_B.sf_Chart.out) {
    tmp_f = floor(ATV_B.RateTransition3);
    if (rtIsNaN(tmp_f) || rtIsInf(tmp_f)) {
      tmp_f = 0.0;
    } else {
      tmp_f = fmod(tmp_f, 65536.0);
    }

    rtb_Memory = (int16_T)(tmp_f < 0.0 ? (int32_T)(int16_T)-(int16_T)(uint16_T)
      -tmp_f : (int32_T)(int16_T)(uint16_T)tmp_f);
  } else {
    rtb_Memory = 0;
  }

  /* End of Switch: '<S4>/Switch2' */

  /* Abs: '<Root>/Abs' */
  if (rtb_Memory < 0) {
    rtb_Memory = (int16_T)-rtb_Memory;
  }

  /* End of Abs: '<Root>/Abs' */

  /* RelationalOperator: '<S24>/Compare' incorporates:
   *  Constant: '<S24>/Constant'
   */
  ATV_B.Compare_n = (rtb_Memory <= 5);

  /* RateTransition: '<Root>/Rate Transition38' */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition38 = ATV_DW.RateTransition38_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition38' */

  /* Chart: '<S34>/VSM' */
  if (ATV_DW.temporalCounter_i1_j < 127U) {
    ATV_DW.temporalCounter_i1_j++;
  }

  if (ATV_DW.temporalCounter_i2_j < 63U) {
    ATV_DW.temporalCounter_i2_j++;
  }

  if (ATV_DW.temporalCounter_i3 < 511U) {
    ATV_DW.temporalCounter_i3++;
  }

  if (ATV_DW.temporalCounter_i4 < 255U) {
    ATV_DW.temporalCounter_i4++;
  }

  /* Gateway: loop_10ms/VSM */
  ATV_DW.apu_req_in_prev = ATV_DW.apu_req_in_start;
  ATV_DW.apu_req_in_start = ATV_B.apu_req_out;
  ATV_DW.StartBtn_In_prev = ATV_DW.StartBtn_In_start;
  ATV_DW.StartBtn_In_start = ATV_B.atv_StartBtn_din;
  ATV_DW.key_signal_prev = ATV_DW.key_signal_start;
  ATV_DW.key_signal_start = key_signal;

  /* During: loop_10ms/VSM */
  if (ATV_DW.is_active_c3_ATV == 0U) {
    ATV_DW.apu_req_in_prev = ATV_B.apu_req_out;
    ATV_DW.StartBtn_In_prev = ATV_B.atv_StartBtn_din;
    ATV_DW.key_signal_prev = key_signal;

    /* Entry: loop_10ms/VSM */
    ATV_DW.is_active_c3_ATV = 1U;

    /* Entry Internal: loop_10ms/VSM */
    /* Entry Internal 'SM': '<S149>:123' */
    /* Transition: '<S149>:4' */
    ATV_DW.is_SM = ATV_IN_SLEEP;

    /* Entry 'SLEEP': '<S149>:9' */
    atv_state_out = 1U;
    atv_sub_state_out = 0U;
    atv_wakelock_out = false;
    atv_en_dcdc_out = false;
    ATV_DW.HV_Req = false;

    /* Entry Internal 'MON': '<S149>:124' */
    /* Entry Internal 'HV_CTRL': '<S149>:161' */
    /* Transition: '<S149>:132' */
    ATV_DW.is_HV_CTRL = ATV_IN_HV_OFF;

    /* Entry 'HV_OFF': '<S149>:126' */
    /* Entry Internal 'HEATER_CTRL': '<S149>:125' */
    /* Transition: '<S149>:140' */
    ATV_DW.is_HEATER_CTRL = ATV_IN_HEATER_OFF;

    /* Entry 'HEATER_OFF': '<S149>:151' */
    ATV_B.heater_disabled = false;

    /* Entry Internal 'STARTTRIGGER': '<S149>:144' */
    /* Transition: '<S149>:143' */
    ATV_DW.is_STARTTRIGGER = ATV_IN_STARTTRIGGER_OFF;

    /* Entry Internal 'CHG_CTRL': '<S149>:128' */
    /* Transition: '<S149>:139' */
    ATV_DW.is_CHG_CTRL = ATV_IN_CHG_OFF;
    ATV_DW.temporalCounter_i1_j = 0U;

    /* Entry 'CHG_OFF': '<S149>:137' */
    ATV_B.chg_ctrl_out = false;
    ATV_B.hvm_ctrl_out = false;

    /* Entry Internal 'FAULT_DETECT': '<S149>:346' */
    /* Transition: '<S149>:345' */
    ATV_DW.is_FAULT_DETECT = ATV_IN_DETECT;

    /* Entry Internal 'DETECT': '<S149>:340' */
    /* Transition: '<S149>:372' */
    ATV_DW.is_DETECT = ATV_IN_NO_FLT;
  } else {
    ATV_SM();
    ATV_MON();
  }

  /* End of Chart: '<S34>/VSM' */

  /* Logic: '<S34>/Logical Operator11' incorporates:
   *  Logic: '<S34>/Logical Operator10'
   *  Logic: '<S34>/Logical Operator12'
   *  Logic: '<S34>/Logical Operator5'
   */
  rtb_LogicalOperator11_b = (((!rtb_AND_j) || (!rtb_AND_e)) &&
    (ATV_B.en_inv_front_out || ATV_B.en_inv_rear_out || ATV_B.en_inv_gen_out));

  /* Logic: '<S150>/Logical Operator4' incorporates:
   *  Logic: '<S150>/Logical Operator2'
   *  Relay: '<S124>/Relay'
   *  Relay: '<S124>/Relay1'
   *  Relay: '<S124>/Relay2'
   *  Relay: '<S124>/Relay6'
   *  Relay: '<S124>/Relay8'
   */
  rtb_Compare_c = ((ATV_DW.Relay_Mode || ATV_DW.Relay1_Mode ||
                    ATV_DW.Relay2_Mode || ATV_DW.Relay8_Mode ||
                    ATV_DW.Relay6_Mode) && rtb_LogicalOperator11_b);

  /* S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput6' */
  /* S-Function Block: <S28>/pdx_DigitalInput6
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  {
    uint8_T state;
    (void) pdx_digital_input(PIO_DIN_XF4, &state, FALSE);
    put_debounce_by_time(state,
                         0.01,
                         1,
                         0.05,
                         0.1,
                         &state,
                         &pdx_DigitalInput6_detm_wrk_data);
    atv_xf4 = state;
  }

  /* Chart: '<S150>/Chart1' */
  if (ATV_DW.temporalCounter_i1_o < 255U) {
    ATV_DW.temporalCounter_i1_o++;
  }

  /* Gateway: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/Chart1 */
  ATV_DW.fault_in_prev_h = ATV_DW.fault_in_start_c;
  ATV_DW.fault_in_start_c = atv_xf4;

  /* During: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/Chart1 */
  if (ATV_DW.is_active_c21_ATV == 0U) {
    ATV_DW.fault_in_prev_h = atv_xf4;

    /* Entry: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/Chart1 */
    ATV_DW.is_active_c21_ATV = 1U;

    /* Entry Internal: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/Chart1 */
    /* Transition: '<S152>:2' */
    ATV_DW.is_c21_ATV = ATV_IN_OFF_m;

    /* Entry 'OFF': '<S152>:1' */
    ATV_DW.attemp_n = 0;
    ATV_B.Out_i = false;
    atv_PumpAFault = false;
  } else {
    switch (ATV_DW.is_c21_ATV) {
     case ATV_IN_FAULT:
      /* During 'FAULT': '<S152>:13' */
      if (!rtb_Compare_c) {
        /* Transition: '<S152>:22' */
        /* Transition: '<S152>:32' */
        ATV_DW.is_c21_ATV = ATV_IN_OFF_m;

        /* Entry 'OFF': '<S152>:1' */
        ATV_DW.attemp_n = 0;
        ATV_B.Out_i = false;
        atv_PumpAFault = false;
      } else if ((ATV_DW.fault_in_prev_h != ATV_DW.fault_in_start_c) &&
                 (!ATV_DW.fault_in_start_c)) {
        /* Transition: '<S152>:15' */
        ATV_DW.is_c21_ATV = ATV_IN_ON_g;

        /* Entry 'ON': '<S152>:9' */
        ATV_B.Out_i = true;
      } else {
        if (ATV_DW.temporalCounter_i1_o >= 100U) {
          /* Transition: '<S152>:17' */
          ATV_DW.is_c21_ATV = ATV_IN_SHUTDOWN;
          ATV_DW.temporalCounter_i1_o = 0U;

          /* Entry 'SHUTDOWN': '<S152>:16' */
          ATV_B.Out_i = false;
        }
      }
      break;

     case ATV_IN_OFF_m:
      ATV_B.Out_i = false;
      atv_PumpAFault = false;

      /* During 'OFF': '<S152>:1' */
      if (rtb_Compare_c) {
        /* Transition: '<S152>:10' */
        ATV_DW.is_c21_ATV = ATV_IN_ON_g;

        /* Entry 'ON': '<S152>:9' */
        ATV_B.Out_i = true;
      }
      break;

     case ATV_IN_ON_g:
      ATV_B.Out_i = true;

      /* During 'ON': '<S152>:9' */
      if (!rtb_Compare_c) {
        /* Transition: '<S152>:11' */
        ATV_DW.is_c21_ATV = ATV_IN_OFF_m;

        /* Entry 'OFF': '<S152>:1' */
        ATV_DW.attemp_n = 0;
        ATV_B.Out_i = false;
        atv_PumpAFault = false;
      } else {
        if ((ATV_DW.fault_in_prev_h != ATV_DW.fault_in_start_c) &&
            ATV_DW.fault_in_start_c) {
          /* Transition: '<S152>:14' */
          ATV_DW.is_c21_ATV = ATV_IN_FAULT;
          ATV_DW.temporalCounter_i1_o = 0U;
        }
      }
      break;

     case ATV_IN_PUMP_DISABLE:
      atv_PumpAFault = true;

      /* During 'PUMP_DISABLE': '<S152>:39' */
      if (!rtb_Compare_c) {
        /* Transition: '<S152>:41' */
        /* Transition: '<S152>:44' */
        /* Transition: '<S152>:45' */
        ATV_DW.is_c21_ATV = ATV_IN_OFF_m;

        /* Entry 'OFF': '<S152>:1' */
        ATV_DW.attemp_n = 0;
        ATV_B.Out_i = false;
        atv_PumpAFault = false;
      }
      break;

     default:
      ATV_B.Out_i = false;

      /* During 'SHUTDOWN': '<S152>:16' */
      if (ATV_DW.temporalCounter_i1_o >= 200U) {
        /* Transition: '<S152>:21' */
        u0 = ATV_DW.attemp_n + 1;
        if (u0 > 32767) {
          u0 = 32767;
        }

        ATV_DW.attemp_n = (int16_T)u0;

        /* Transition: '<S152>:37' */
        if (ATV_DW.attemp_n >= 2) {
          /* Transition: '<S152>:40' */
          ATV_DW.is_c21_ATV = ATV_IN_PUMP_DISABLE;

          /* Entry 'PUMP_DISABLE': '<S152>:39' */
          atv_PumpAFault = true;
        } else {
          /* Transition: '<S152>:38' */
          ATV_DW.is_c21_ATV = ATV_IN_ON_g;

          /* Entry 'ON': '<S152>:9' */
          ATV_B.Out_i = true;
        }
      } else {
        if (!rtb_Compare_c) {
          /* Transition: '<S152>:28' */
          /* Transition: '<S152>:31' */
          /* Transition: '<S152>:32' */
          ATV_DW.is_c21_ATV = ATV_IN_OFF_m;

          /* Entry 'OFF': '<S152>:1' */
          ATV_DW.attemp_n = 0;
          ATV_B.Out_i = false;
          atv_PumpAFault = false;
        }
      }
      break;
    }
  }

  /* End of Chart: '<S150>/Chart1' */

  /* Logic: '<S150>/Logical Operator7' incorporates:
   *  Constant: '<S150>/atvc_OverridePumpA'
   *  Logic: '<S150>/Logical Operator'
   */
  atv_dbg_pumpA_out = ((atvc_OverridePumpA || ATV_B.Out_i) && key_signal);

  /* S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /* S-Function Block: <S25>/pdx_DigitalOutput
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)atv_dbg_pumpA_out,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_ZB1, state, FALSE);
  }

  /* RateTransition: '<Root>/Rate Transition8' incorporates:
   *  RateTransition: '<Root>/Rate Transition9'
   */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition8 = ATV_DW.RateTransition8_Buffer0;
    ATV_B.RateTransition9 = ATV_DW.RateTransition9_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition8' */

  /* Relay: '<S124>/Relay3' */
  if (ATV_B.RateTransition8 >= atvc_maxTempMotor) {
    ATV_DW.Relay3_Mode_h = true;
  } else {
    if (ATV_B.RateTransition8 <= atvc_minTempMotor) {
      ATV_DW.Relay3_Mode_h = false;
    }
  }

  /* Relay: '<S124>/Relay4' */
  if (ATV_B.RateTransition9 >= atvc_maxTempInv) {
    ATV_DW.Relay4_Mode_j = true;
  } else {
    if (ATV_B.RateTransition9 <= atvc_minTempInv) {
      ATV_DW.Relay4_Mode_j = false;
    }
  }

  /* Relay: '<S124>/Relay5' */
  if (ATV_B.RateTransition11_n >= atvc_maxTempInv) {
    ATV_DW.Relay5_Mode = true;
  } else {
    if (ATV_B.RateTransition11_n <= atvc_minTempInv) {
      ATV_DW.Relay5_Mode = false;
    }
  }

  rtb_Compare_c = ATV_DW.Relay5_Mode;

  /* End of Relay: '<S124>/Relay5' */

  /* Sum: '<S124>/Add1' */
  rtb_UnaryMinus_d = (int16_T)(ATV_B.RateTransition9 - rtb_UnaryMinus_d);

  /* Relay: '<S124>/Relay7' */
  if (rtb_UnaryMinus_d >= 10) {
    ATV_DW.Relay7_Mode = true;
  } else {
    if (rtb_UnaryMinus_d <= 8) {
      ATV_DW.Relay7_Mode = false;
    }
  }

  rtb_Compare_e1 = ATV_DW.Relay7_Mode;

  /* End of Relay: '<S124>/Relay7' */

  /* Logic: '<S150>/Logical Operator5' incorporates:
   *  Logic: '<S150>/Logical Operator3'
   *  Relay: '<S124>/Relay3'
   *  Relay: '<S124>/Relay4'
   */
  rtb_Compare_c = ((ATV_DW.Relay3_Mode_h || ATV_DW.Relay4_Mode_j ||
                    rtb_Compare_c || rtb_Compare_e1) && rtb_LogicalOperator11_b);

  /* S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput7' */
  /* S-Function Block: <S28>/pdx_DigitalInput7
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  {
    uint8_T state;
    (void) pdx_digital_input(PIO_DIN_ZA2, &state, FALSE);
    put_debounce_by_time(state,
                         0.01,
                         1,
                         0.05,
                         0.1,
                         &state,
                         &pdx_DigitalInput7_detm_wrk_data);
    atv_za2 = state;
  }

  /* Chart: '<S150>/Chart2' */
  if (ATV_DW.temporalCounter_i1_l < 255U) {
    ATV_DW.temporalCounter_i1_l++;
  }

  /* Gateway: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/Chart2 */
  ATV_DW.fault_in_prev = ATV_DW.fault_in_start;
  ATV_DW.fault_in_start = atv_za2;

  /* During: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/Chart2 */
  if (ATV_DW.is_active_c22_ATV == 0U) {
    ATV_DW.fault_in_prev = atv_za2;

    /* Entry: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/Chart2 */
    ATV_DW.is_active_c22_ATV = 1U;

    /* Entry Internal: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/Chart2 */
    /* Transition: '<S153>:2' */
    ATV_DW.is_c22_ATV = ATV_IN_OFF_m;

    /* Entry 'OFF': '<S153>:1' */
    ATV_DW.attemp = 0;
    ATV_B.Out = false;
    atv_PumpBFault = false;
  } else {
    switch (ATV_DW.is_c22_ATV) {
     case ATV_IN_FAULT:
      /* During 'FAULT': '<S153>:13' */
      if (!rtb_Compare_c) {
        /* Transition: '<S153>:22' */
        /* Transition: '<S153>:32' */
        ATV_DW.is_c22_ATV = ATV_IN_OFF_m;

        /* Entry 'OFF': '<S153>:1' */
        ATV_DW.attemp = 0;
        ATV_B.Out = false;
        atv_PumpBFault = false;
      } else if ((ATV_DW.fault_in_prev != ATV_DW.fault_in_start) &&
                 (!ATV_DW.fault_in_start)) {
        /* Transition: '<S153>:15' */
        ATV_DW.is_c22_ATV = ATV_IN_ON_g;

        /* Entry 'ON': '<S153>:9' */
        ATV_B.Out = true;
      } else {
        if (ATV_DW.temporalCounter_i1_l >= 100U) {
          /* Transition: '<S153>:17' */
          ATV_DW.is_c22_ATV = ATV_IN_SHUTDOWN;
          ATV_DW.temporalCounter_i1_l = 0U;

          /* Entry 'SHUTDOWN': '<S153>:16' */
          ATV_B.Out = false;
        }
      }
      break;

     case ATV_IN_OFF_m:
      ATV_B.Out = false;
      atv_PumpBFault = false;

      /* During 'OFF': '<S153>:1' */
      if (rtb_Compare_c) {
        /* Transition: '<S153>:10' */
        ATV_DW.is_c22_ATV = ATV_IN_ON_g;

        /* Entry 'ON': '<S153>:9' */
        ATV_B.Out = true;
      }
      break;

     case ATV_IN_ON_g:
      ATV_B.Out = true;

      /* During 'ON': '<S153>:9' */
      if (!rtb_Compare_c) {
        /* Transition: '<S153>:11' */
        ATV_DW.is_c22_ATV = ATV_IN_OFF_m;

        /* Entry 'OFF': '<S153>:1' */
        ATV_DW.attemp = 0;
        ATV_B.Out = false;
        atv_PumpBFault = false;
      } else {
        if ((ATV_DW.fault_in_prev != ATV_DW.fault_in_start) &&
            ATV_DW.fault_in_start) {
          /* Transition: '<S153>:14' */
          ATV_DW.is_c22_ATV = ATV_IN_FAULT;
          ATV_DW.temporalCounter_i1_l = 0U;
        }
      }
      break;

     case ATV_IN_PUMP_DISABLE:
      atv_PumpBFault = true;

      /* During 'PUMP_DISABLE': '<S153>:39' */
      if (!rtb_Compare_c) {
        /* Transition: '<S153>:41' */
        /* Transition: '<S153>:44' */
        /* Transition: '<S153>:45' */
        ATV_DW.is_c22_ATV = ATV_IN_OFF_m;

        /* Entry 'OFF': '<S153>:1' */
        ATV_DW.attemp = 0;
        ATV_B.Out = false;
        atv_PumpBFault = false;
      }
      break;

     default:
      ATV_B.Out = false;

      /* During 'SHUTDOWN': '<S153>:16' */
      if (ATV_DW.temporalCounter_i1_l >= 200U) {
        /* Transition: '<S153>:21' */
        u0 = ATV_DW.attemp + 1;
        if (u0 > 32767) {
          u0 = 32767;
        }

        ATV_DW.attemp = (int16_T)u0;

        /* Transition: '<S153>:37' */
        if (ATV_DW.attemp >= 2) {
          /* Transition: '<S153>:40' */
          ATV_DW.is_c22_ATV = ATV_IN_PUMP_DISABLE;

          /* Entry 'PUMP_DISABLE': '<S153>:39' */
          atv_PumpBFault = true;
        } else {
          /* Transition: '<S153>:38' */
          ATV_DW.is_c22_ATV = ATV_IN_ON_g;

          /* Entry 'ON': '<S153>:9' */
          ATV_B.Out = true;
        }
      } else {
        if (!rtb_Compare_c) {
          /* Transition: '<S153>:28' */
          /* Transition: '<S153>:31' */
          /* Transition: '<S153>:32' */
          ATV_DW.is_c22_ATV = ATV_IN_OFF_m;

          /* Entry 'OFF': '<S153>:1' */
          ATV_DW.attemp = 0;
          ATV_B.Out = false;
          atv_PumpBFault = false;
        }
      }
      break;
    }
  }

  /* End of Chart: '<S150>/Chart2' */

  /* Logic: '<S150>/Logical Operator6' incorporates:
   *  Constant: '<S150>/atvc_OverridePumpB'
   *  Logic: '<S150>/Logical Operator1'
   */
  rtb_Compare_e1 = ((atvc_OverridePumpB || ATV_B.Out) && key_signal);

  /* Chart: '<S150>/Chart' */
  if (ATV_DW.temporalCounter_i1_h < 63U) {
    ATV_DW.temporalCounter_i1_h++;
  }

  /* Gateway: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/Chart */
  /* During: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/Chart */
  if (ATV_DW.is_active_c18_ATV == 0U) {
    /* Entry: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/Chart */
    ATV_DW.is_active_c18_ATV = 1U;

    /* Entry Internal: loop_10ms/ COOLING SYSTEM/GestioneImpiantoRaffreddamento/Chart */
    /* Transition: '<S151>:2' */
    ATV_DW.is_c18_ATV = ATV_IN_OFF_a;
    ATV_DW.temporalCounter_i1_h = 0U;

    /* Entry 'OFF': '<S151>:1' */
    atv_dbg_pumpB_out = false;
  } else if (ATV_DW.is_c18_ATV == ATV_IN_OFF_a) {
    atv_dbg_pumpB_out = false;

    /* During 'OFF': '<S151>:1' */
    if (rtb_Compare_e1 && (ATV_DW.temporalCounter_i1_h >= 50U)) {
      /* Transition: '<S151>:4' */
      ATV_DW.is_c18_ATV = ATV_IN_ON_a;

      /* Entry 'ON': '<S151>:3' */
      atv_dbg_pumpB_out = true;
    }
  } else {
    atv_dbg_pumpB_out = true;

    /* During 'ON': '<S151>:3' */
    if (!rtb_Compare_e1) {
      /* Transition: '<S151>:5' */
      ATV_DW.is_c18_ATV = ATV_IN_OFF_a;
      ATV_DW.temporalCounter_i1_h = 0U;

      /* Entry 'OFF': '<S151>:1' */
      atv_dbg_pumpB_out = false;
    }
  }

  /* End of Chart: '<S150>/Chart' */

  /* S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput1' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /* S-Function Block: <S25>/pdx_DigitalOutput1
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

  /* RateTransition: '<Root>/Rate Transition48' */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition48 = ATV_DW.RateTransition48_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition48' */

  /* Logic: '<S34>/Logical Operator6' */
  ATV_B.atv_run_mode = (ATV_B.runLed_out && ATV_B.RateTransition48);

  /* Logic: '<S25>/Logical Operator' */
  ATV_B.LogicalOperator_i = (atv_rwd_mode_in && ATV_B.atv_run_mode);

  /* S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput10' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /* S-Function Block: <S25>/pdx_DigitalOutput10
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)ATV_B.LogicalOperator_i,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_ZF3, state, FALSE);
  }

  /* S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput11' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /* S-Function Block: <S25>/pdx_DigitalOutput11
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)atv_brake_pedal_digital_in,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_YM4, state, FALSE);
  }

  /* S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput12' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /* S-Function Block: <S25>/pdx_DigitalOutput12
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)ATV_B.apu_req_out,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_ZE2, state, FALSE);
  }

  /* Chart: '<Root>/Chart' */
  if (ATV_DW.temporalCounter_i1_c < 127U) {
    ATV_DW.temporalCounter_i1_c++;
  }

  /* Gateway: Chart */
  /* During: Chart */
  if (ATV_DW.is_active_c15_ATV == 0U) {
    /* Entry: Chart */
    ATV_DW.is_active_c15_ATV = 1U;

    /* Entry Internal: Chart */
    /* Transition: '<S20>:4' */
    ATV_DW.is_c15_ATV = ATV_IN_OFF_a;
    ATV_DW.temporalCounter_i1_c = 0U;

    /* Entry 'OFF': '<S20>:3' */
    atv_yg1 = false;
  } else if (ATV_DW.is_c15_ATV == ATV_IN_OFF_a) {
    atv_yg1 = false;

    /* During 'OFF': '<S20>:3' */
    if (atv_pm_Stealth && (ATV_DW.temporalCounter_i1_c >= 100U)) {
      /* Transition: '<S20>:6' */
      ATV_DW.is_c15_ATV = ATV_IN_ON_a;

      /* Entry 'ON': '<S20>:5' */
      atv_yg1 = true;
    }
  } else {
    atv_yg1 = true;

    /* During 'ON': '<S20>:5' */
    if (!atv_pm_Stealth) {
      /* Transition: '<S20>:7' */
      ATV_DW.is_c15_ATV = ATV_IN_OFF_a;
      ATV_DW.temporalCounter_i1_c = 0U;

      /* Entry 'OFF': '<S20>:3' */
      atv_yg1 = false;
    }
  }

  /* End of Chart: '<Root>/Chart' */

  /* S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput13' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /* S-Function Block: <S25>/pdx_DigitalOutput13
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)atv_yg1,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_YG1, state, FALSE);
  }

  /* RateTransition: '<Root>/Rate Transition24' */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    atv_RPM_Gen = ATV_DW.RateTransition24_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition24' */

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput11' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput11
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_YH3, &adc, FALSE);
    atv_yh3_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* DataTypeConversion: '<S168>/Data Type Conversion8' */
  rtb_Gain1_j = (real32_T)atv_yh3_raw_ain;

  /* Lookup_n-D: '<S168>/Tensione-->Temperatura' */
  rtb_Gain1_j = look1_iflf_binlxpw(rtb_Gain1_j,
    ATV_ConstP.TensioneTemperatura_bp01Data,
    ATV_ConstP.TensioneTemperatura_tableData, 20U);

  /* MATLABSystem: '<S168>/Moving Average' */
  if (ATV_DW.obj_n.TunablePropsChanged) {
    ATV_DW.obj_n.TunablePropsChanged = false;
  }

  if (ATV_DW.obj_n.pStatistic->isInitialized != 1) {
    ATV_DW.obj_n.pStatistic->isSetupComplete = false;
    ATV_DW.obj_n.pStatistic->isInitialized = 1;
    ATV_DW.obj_n.pStatistic->pCumSum = 0.0F;
    ATV_DW.obj_n.pStatistic->pCumRevIndex = 1.0F;
    ATV_DW.obj_n.pStatistic->isSetupComplete = true;
    ATV_DW.obj_n.pStatistic->pCumSum = 0.0F;
    memset(&ATV_DW.obj_n.pStatistic->pCumSumRev[0], 0, 19U * sizeof(real32_T));
    ATV_DW.obj_n.pStatistic->pCumRevIndex = 1.0F;
  }

  cumRevIndex = ATV_DW.obj_n.pStatistic->pCumRevIndex;
  csum = ATV_DW.obj_n.pStatistic->pCumSum;
  for (u0 = 0; u0 < 19; u0++) {
    csumrev[u0] = ATV_DW.obj_n.pStatistic->pCumSumRev[u0];
  }

  csum += rtb_Gain1_j;
  rtb_Add5 = (int32_T)cumRevIndex - 1;
  z = csumrev[rtb_Add5] + csum;
  csumrev[rtb_Add5] = rtb_Gain1_j;
  if (cumRevIndex != 19.0F) {
    cumRevIndex++;
  } else {
    cumRevIndex = 1.0F;
    csum = 0.0F;
    for (rtb_Add5 = 17; rtb_Add5 >= 0; rtb_Add5--) {
      csumrev[rtb_Add5] += csumrev[rtb_Add5 + 1];
    }
  }

  ATV_DW.obj_n.pStatistic->pCumSum = csum;
  memcpy(&ATV_DW.obj_n.pStatistic->pCumSumRev[0], &csumrev[0], 19U * sizeof
         (real32_T));
  ATV_DW.obj_n.pStatistic->pCumRevIndex = cumRevIndex;

  /* DataTypeConversion: '<S168>/Data Type Conversion6' incorporates:
   *  MATLABSystem: '<S168>/Moving Average'
   */
  rtb_Gain1_j = (real32_T)floor(z / 20.0F);
  if (rtIsNaNF(rtb_Gain1_j) || rtIsInfF(rtb_Gain1_j)) {
    rtb_Gain1_j = 0.0F;
  } else {
    rtb_Gain1_j = (real32_T)fmod(rtb_Gain1_j, 65536.0);
  }

  atv_T_ICE = (int16_T)(rtb_Gain1_j < 0.0F ? (int32_T)(int16_T)-(int16_T)
                        (uint16_T)-rtb_Gain1_j : (int32_T)(int16_T)(uint16_T)
                        rtb_Gain1_j);

  /* End of DataTypeConversion: '<S168>/Data Type Conversion6' */

  /* RelationalOperator: '<S141>/Relational Operator1' incorporates:
   *  Constant: '<S141>/atvc_IceMaxTemp'
   */
  ATV_B.RelationalOperator1 = (atv_T_ICE > atvc_IceMaxTemp);

  /* Chart: '<S141>/VSMGestioneIbrido' incorporates:
   *  Constant: '<S141>/atvc_RpmEndwarmUp'
   *  RelationalOperator: '<S141>/Relational Operator'
   */
  if (ATV_DW.temporalCounter_i1 < MAX_uint32_T) {
    ATV_DW.temporalCounter_i1++;
  }

  if (ATV_DW.temporalCounter_i2 < 2047U) {
    ATV_DW.temporalCounter_i2++;
  }

  /* Gateway: loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido */
  ATV_DW.ReqGen_prev = ATV_DW.ReqGen_start;
  ATV_DW.ReqGen_start = ATV_B.apu_start_out;

  /* During: loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido */
  if (ATV_DW.is_active_c2_ATV == 0U) {
    ATV_DW.ReqGen_prev = ATV_B.apu_start_out;

    /* Entry: loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido */
    ATV_DW.is_active_c2_ATV = 1U;

    /* Entry Internal: loop_10ms/HYBRID MANAGEMENT_Rev1_1/VSMGestioneIbrido */
    /* Entry Internal 'WarmUpIce': '<S169>:168' */
    /* Transition: '<S169>:305' */
    ATV_DW.is_WarmUpIce = ATV_IN_CoolDownTermico;

    /* Entry 'CoolDownTermico': '<S169>:306' */
    ATV_DW.is_active_IceSM = 1U;

    /* Entry 'IceSM': '<S169>:191' */
    /* Entry Internal 'IceSM': '<S169>:191' */
    /* Transition: '<S169>:280' */
    ATV_DW.is_IceSM = ATV_IN_Inizializzazione;

    /* Entry 'Inizializzazione': '<S169>:279' */
    ATV_DW.IceStartAttempCnt = 0.0;
    atv_IceOn = false;
    atv_IceKey_out = false;
    atv_IceShutdown_out = false;
    atv_IceFault = false;
    ATV_B.GenFwd_out = false;
    atv_IceSM = 0U;
    ATV_DW.reset_PID = true;
  } else {
    /* During 'WarmUpIce': '<S169>:168' */
    switch (ATV_DW.is_WarmUpIce) {
     case ATV_IN_CoolDownTermico:
      /* During 'CoolDownTermico': '<S169>:306' */
      if (atv_IceOn) {
        /* Transition: '<S169>:307' */
        ATV_DW.is_WarmUpIce = ATV_IN_WarmUpTermico;
        ATV_DW.temporalCounter_i2 = 0U;

        /* Entry 'WarmUpTermico': '<S169>:102' */
        atv_IceRG = 1U;
        ATV_B.footBrake_X1000_out = atvc_footBrakeWarmUp;
      } else {
        atv_IceRG = 0U;
        ATV_B.footBrake_X1000_out = 0U;
      }
      break;

     case ATV_IN_WaitReg:
      /* During 'WaitReg': '<S169>:346' */
      if (!atv_IceOn) {
        /* Transition: '<S169>:348' */
        /* Transition: '<S169>:350' */
        ATV_DW.is_WarmUpIce = ATV_IN_CoolDownTermico;

        /* Entry 'CoolDownTermico': '<S169>:306' */
      } else {
        if (ATV_DW.temporalCounter_i2 >= 500U) {
          /* Transition: '<S169>:347' */
          ATV_DW.is_WarmUpIce = ATV_IN_run;

          /* Entry 'run': '<S169>:167' */
          ATV_B.footBrake_X1000_out = atvc_footBrakeIce;
          atv_IceRG = 3U;
        }
      }
      break;

     case ATV_IN_WarmUpTermico:
      /* During 'WarmUpTermico': '<S169>:102' */
      if ((atv_T_ICE > atvc_EndWarmUpTemp) && (ATV_DW.temporalCounter_i2 >=
           1500U)) {
        /* Transition: '<S169>:106' */
        ATV_DW.is_WarmUpIce = ATV_IN_WaitReg;
        ATV_DW.temporalCounter_i2 = 0U;

        /* Entry 'WaitReg': '<S169>:346' */
        atv_IceRG = 2U;
      } else {
        if (!atv_IceOn) {
          /* Transition: '<S169>:316' */
          ATV_DW.is_WarmUpIce = ATV_IN_CoolDownTermico;

          /* Entry 'CoolDownTermico': '<S169>:306' */
        }
      }
      break;

     default:
      /* During 'run': '<S169>:167' */
      if (!atv_IceOn) {
        /* Transition: '<S169>:315' */
        ATV_DW.is_WarmUpIce = ATV_IN_CoolDownTermico;

        /* Entry 'CoolDownTermico': '<S169>:306' */
      } else {
        ATV_B.footBrake_X1000_out = atvc_footBrakeIce;
        atv_IceRG = 3U;
      }
      break;
    }

    ATV_IceSM();
  }

  /* End of Chart: '<S141>/VSMGestioneIbrido' */

  /* S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput2' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /* S-Function Block: <S25>/pdx_DigitalOutput2
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

  /* S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput3' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /* S-Function Block: <S25>/pdx_DigitalOutput3
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

  /* S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput4' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /* S-Function Block: <S25>/pdx_DigitalOutput4
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)ATV_B.en_inv_front_out,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_YA2, state, FALSE);
  }

  /* S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput5' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /* S-Function Block: <S25>/pdx_DigitalOutput5
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

  /* S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput6' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /* S-Function Block: <S25>/pdx_DigitalOutput6
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

  /* Logic: '<S34>/Logical Operator13' incorporates:
   *  Logic: '<S34>/Logical Operator15'
   */
  atv_runLed_out = (ATV_B.atv_run_mode && (!atv_yg1));

  /* S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput7' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /* S-Function Block: <S25>/pdx_DigitalOutput7
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

  /* S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput8' */
  /* S-Function Block: <S25>/pdx_DigitalOutput8
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

  /* S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput9' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /* S-Function Block: <S25>/pdx_DigitalOutput9
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

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput9' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput9
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_YG3, &adc, FALSE);
    ATV_B.atv_yg3_raw_ain_h = (adc * 5.0) / 4096.0;
  }

  /* DataTypeConversion: '<S86>/Data Type Conversion8' */
  rtb_Gain1_j = (real32_T)ATV_B.atv_yg3_raw_ain_h;

  /* Lookup_n-D: '<S86>/Tensione-->Temperatura' */
  rtb_Gain1_j = look1_iflf_binlxpw(rtb_Gain1_j, ATV_ConstP.pooled24,
    ATV_ConstP.pooled23, 19U);

  /* DataTypeConversion: '<S86>/Data Type Conversion6' */
  rtb_Gain1_j = (real32_T)floor(rtb_Gain1_j);
  if (rtIsNaNF(rtb_Gain1_j) || rtIsInfF(rtb_Gain1_j)) {
    rtb_Gain1_j = 0.0F;
  } else {
    rtb_Gain1_j = (real32_T)fmod(rtb_Gain1_j, 65536.0);
  }

  atv_TRad_out = (int16_T)(rtb_Gain1_j < 0.0F ? (int32_T)(int16_T)-(int16_T)
    (uint16_T)-rtb_Gain1_j : (int32_T)(int16_T)(uint16_T)rtb_Gain1_j);

  /* End of DataTypeConversion: '<S86>/Data Type Conversion6' */

  /* Product: '<S124>/Divide' */
  atv_TRad = (int16_T)div_nde_s32_floor(atv_TRad_out, 10);

  /* Relay: '<S154>/Relay1' */
  if (atv_TRad >= atvc_tempSwitchOnFan) {
    ATV_DW.Relay1_Mode_n = true;
  } else {
    if (atv_TRad <= atvc_tempSwitchOffFan) {
      ATV_DW.Relay1_Mode_n = false;
    }
  }

  /* Switch: '<S150>/Switch4' incorporates:
   *  Constant: '<S150>/atvc_OverrideFan'
   *  Logic: '<S154>/Logical Operator'
   *  Relay: '<S154>/Relay1'
   *  Switch: '<S154>/Switch1'
   */
  if (atvc_OverrideFan > atvc_dcMinFan) {
    rtb_Switch4 = atvc_OverrideFan;
  } else if (rtb_Compare_c && ATV_DW.Relay1_Mode_n) {
    /* Saturate: '<S154>/Saturation' incorporates:
     *  Constant: '<S150>/atvc_tempSwitchOnFan'
     *  Sum: '<S154>/Add1'
     *  Switch: '<S154>/Switch1'
     */
    u0 = (int16_T)(atv_TRad - atvc_tempSwitchOnFan);
    if (u0 > 20) {
      u0 = 20;
    } else {
      if (u0 < 0) {
        u0 = 0;
      }
    }

    /* End of Saturate: '<S154>/Saturation' */

    /* Product: '<S154>/Product' incorporates:
     *  Switch: '<S154>/Switch1'
     */
    rtb_Product_d = (uint16_T)(u0 * 5U);

    /* Switch: '<S155>/Switch' incorporates:
     *  Constant: '<S154>/atvc_dcMinFan'
     *  RelationalOperator: '<S155>/UpperRelop'
     *  Switch: '<S154>/Switch1'
     *  Switch: '<S155>/Switch2'
     */
    if (rtb_Product_d < atvc_dcMinFan) {
      rtb_Switch4 = atvc_dcMinFan;
    } else {
      rtb_Switch4 = (uint8_T)rtb_Product_d;
    }

    /* End of Switch: '<S155>/Switch' */
  } else {
    /* Switch: '<S154>/Switch1' incorporates:
     *  Constant: '<S154>/Ventola spenta'
     */
    rtb_Switch4 = 0U;
  }

  /* End of Switch: '<S150>/Switch4' */

  /* DataTypeConversion: '<S25>/Data Type Conversion' */
  atv_dbg_FAN_out = rtb_Switch4;

  /* Gain: '<S25>/Gain' */
  ATV_B.Saturation = 0.01 * atv_dbg_FAN_out;

  /* Saturate: '<S25>/Saturation' */
  if (ATV_B.Saturation > 1.0) {
    /* Gain: '<S25>/Gain' */
    ATV_B.Saturation = 1.0;
  } else {
    if (ATV_B.Saturation < 0.0) {
      /* Gain: '<S25>/Gain' */
      ATV_B.Saturation = 0.0;
    }
  }

  /* End of Saturate: '<S25>/Saturation' */

  /* S-Function (pdx_pwm_output): '<S25>/pdx_PWMOutput' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /*
   * S-Function Block: <S25>/pdx_PWMOutput
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

  /* Constant: '<S141>/atvc_test_rpm2' */
  rtb_Gain1_j = atvc_gen_PWM_Override;

  /* S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput4' */
  /* S-Function Block: <S28>/pdx_DigitalInput4
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  {
    uint8_T state;
    (void) pdx_digital_input(PIO_DIN_ZB2, &state, FALSE);
    put_debounce_by_time(state,
                         0.01,
                         0,
                         0.05,
                         0.1,
                         &state,
                         &pdx_DigitalInput4_detm_wrk_data);
    atv_zb2 = state;
  }

  /* S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput5' */
  /* S-Function Block: <S28>/pdx_DigitalInput5
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  {
    uint8_T state;
    (void) pdx_digital_input(PIO_DIN_ZB3, &state, FALSE);
    put_debounce_by_time(state,
                         0.01,
                         0,
                         0.05,
                         0.1,
                         &state,
                         &pdx_DigitalInput5_detm_wrk_data);
    atv_zb3 = state;
  }

  /* If: '<S87>/If' incorporates:
   *  Constant: '<S94>/Constant'
   *  Constant: '<S95>/Constant'
   *  Constant: '<S96>/Constant'
   *  Constant: '<S97>/Constant'
   */
  if (atv_zb2 && atv_zb3) {
    /* Outputs for IfAction SubSystem: '<S87>/If Action Subsystem' incorporates:
     *  ActionPort: '<S94>/Action Port'
     */
    atv_GenSelProcessed = 1U;

    /* End of Outputs for SubSystem: '<S87>/If Action Subsystem' */
  } else if ((!atv_zb2) && atv_zb3) {
    /* Outputs for IfAction SubSystem: '<S87>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S95>/Action Port'
     */
    atv_GenSelProcessed = 2U;

    /* End of Outputs for SubSystem: '<S87>/If Action Subsystem1' */
  } else if (atv_zb2 && (!atv_zb3)) {
    /* Outputs for IfAction SubSystem: '<S87>/If Action Subsystem2' incorporates:
     *  ActionPort: '<S96>/Action Port'
     */
    atv_GenSelProcessed = 3U;

    /* End of Outputs for SubSystem: '<S87>/If Action Subsystem2' */
  } else {
    /* Outputs for IfAction SubSystem: '<S87>/If Action Subsystem4' incorporates:
     *  ActionPort: '<S97>/Action Port'
     */
    atv_GenSelProcessed = MAX_uint8_T;

    /* End of Outputs for SubSystem: '<S87>/If Action Subsystem4' */
  }

  /* End of If: '<S87>/If' */

  /* Outputs for Atomic SubSystem: '<Root>/Atomic Subsystem1' */
  /* If: '<S2>/If1' incorporates:
   *  Constant: '<S37>/Constant'
   *  Constant: '<S39>/Constant'
   *  Constant: '<S40>/Constant'
   */
  if (atv_pm_1) {
    /* Outputs for IfAction SubSystem: '<S2>/If Action Subsystem2' incorporates:
     *  ActionPort: '<S37>/Action Port'
     */
    tmp_g = 1U;

    /* End of Outputs for SubSystem: '<S2>/If Action Subsystem2' */
  } else if (atv_pm_2) {
    /* Outputs for IfAction SubSystem: '<S2>/If Action Subsystem4' incorporates:
     *  ActionPort: '<S39>/Action Port'
     */
    tmp_g = 2U;

    /* End of Outputs for SubSystem: '<S2>/If Action Subsystem4' */
  } else {
    /* Outputs for IfAction SubSystem: '<S2>/If Action Subsystem5' incorporates:
     *  ActionPort: '<S40>/Action Port'
     */
    tmp_g = 0U;

    /* End of Outputs for SubSystem: '<S2>/If Action Subsystem5' */
  }

  /* End of If: '<S2>/If1' */
  /* End of Outputs for SubSystem: '<Root>/Atomic Subsystem1' */

  /* Switch: '<S34>/Switch1' incorporates:
   *  Constant: '<S129>/Constant'
   *  Constant: '<S134>/Constant'
   *  Constant: '<S34>/hybrid2_setpoint'
   *  Constant: '<S34>/hybrid2_setpoint1'
   *  Logic: '<S34>/Logical Operator14'
   *  RelationalOperator: '<S129>/Compare'
   *  RelationalOperator: '<S134>/Compare'
   *  Switch: '<S34>/Switch2'
   */
  if ((tmp_g > 1) || rtb_Compare) {
    rtb_Memory = 3;
  } else if (atv_GenSelProcessed <= 3) {
    /* Switch: '<S34>/Switch2' */
    rtb_Memory = atv_GenSelProcessed;
  } else {
    rtb_Memory = 2;
  }

  /* End of Switch: '<S34>/Switch1' */

  /* MultiPortSwitch: '<S34>/Multiport Switch' incorporates:
   *  Constant: '<S34>/atvc_GenCurrent0'
   *  Constant: '<S34>/atvc_GenCurrent1'
   *  Constant: '<S34>/atvc_GenCurrent2'
   */
  switch (rtb_Memory) {
   case 1:
    rtb_Memory = atvc_GenCurrent0;
    break;

   case 2:
    rtb_Memory = atvc_GenCurrent1;
    break;

   case 3:
    rtb_Memory = atvc_GenCurrent2;
    break;

   default:
    rtb_Memory = atvc_GenCurrent1;
    break;
  }

  /* End of MultiPortSwitch: '<S34>/Multiport Switch' */

  /* UnaryMinus: '<S141>/Unary Minus1' */
  ATV_B.UnaryMinus1 = (int16_T)-rtb_Memory;

  /* S-Function (put_calmap1d): '<S141>/put_Calmap1d1' */
  /* S-Function Block: <S141>/put_Calmap1d1
   * [$Id: put_calmap1d.tlc 46682 2015-05-20 19:09:48Z egriwicki $]
   */
  put_cal_map_1d_f32
    (
     ATV_B.UnaryMinus1,
     4,
     atvm_rpmfromcurrent_x,
     atvm_rpmfromcurrent_z,
     &ATV_B.put_Calmap1d1
     );

  /* RateLimiter: '<S141>/Rate Limiter4' */
  rtb_DiscreteTimeIntegrator = ATV_B.put_Calmap1d1 - ATV_DW.PrevY;
  if (rtb_DiscreteTimeIntegrator > 2.5) {
    ATV_DW.PrevY += 2.5;
  } else if (rtb_DiscreteTimeIntegrator < -2.5) {
    ATV_DW.PrevY += -2.5;
  } else {
    ATV_DW.PrevY = ATV_B.put_Calmap1d1;
  }

  /* End of RateLimiter: '<S141>/Rate Limiter4' */

  /* MultiPortSwitch: '<S141>/Multiport Switch1' incorporates:
   *  Constant: '<S141>/atvc_GenWarmUpRPM'
   *  Constant: '<S141>/const1'
   */
  switch (atv_IceRG) {
   case 0:
    rtb_MultiportSwitch1 = atvc_GenWarmUpRPM;
    break;

   case 1:
    rtb_MultiportSwitch1 = atvc_GenWarmUpRPM;
    break;

   case 2:
    rtb_MultiportSwitch1 = atvc_GenWarmUpRPM;
    break;

   case 3:
    rtb_MultiportSwitch1 = ATV_DW.PrevY;
    break;

   default:
    rtb_MultiportSwitch1 = 0.0;
    break;
  }

  /* End of MultiPortSwitch: '<S141>/Multiport Switch1' */

  /* Switch: '<S141>/Switch1' */
  if (rtb_Gain1_j > 0.0F) {
    /* DataTypeConversion: '<S141>/Data Type Conversion3' incorporates:
     *  Constant: '<S141>/atvc_test_rpm1'
     */
    ATV_B.DataTypeConversion3 = atvc_gen_TEST_PWM;
  } else {
    /* DataTypeConversion: '<S141>/Data Type Conversion3' incorporates:
     *  Lookup_n-D: '<S141>/1-D Lookup Table'
     */
    ATV_B.DataTypeConversion3 = (real32_T)look1_binlcpw(rtb_MultiportSwitch1,
      ATV_ConstP.uDLookupTable_bp01Data, ATV_ConstP.uDLookupTable_tableData, 9U);
  }

  /* End of Switch: '<S141>/Switch1' */

  /* S-Function (pdx_pwm_output): '<S25>/pdx_PWMOutput1' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /*
   * S-Function Block: <S25>/pdx_PWMOutput1
   * [$Id: pdx_pwm_output.tlc 30730 2012-09-29 12:01:15Z jtough $]
   */
  {
    F32 dc;
    put_dutycycle_processing(ATV_B.DataTypeConversion3,
      0,
      (U8)false,
      0.0,
      (0.0),
      (1.0),
      &dc);
    (void) pdx_pwm_output(PIO_FFPOT_YB2,
                          2000.0,
                          dc,
                          0.0,
                          FALSE);
  }

  /* S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput1' */
  /* S-Function Block: <S28>/pdx_DigitalInput1
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  {
    uint8_T state;
    (void) pdx_digital_input(PIO_DIN_YG2, &state, FALSE);
    put_debounce_by_time(state,
                         0.01,
                         0,
                         0.05,
                         0.1,
                         &state,
                         &pdx_DigitalInput1_detm_wrk_data);
    atv_yg2 = state;
  }

  /* S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput2' */
  /* S-Function Block: <S28>/pdx_DigitalInput2
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  {
    uint8_T state;
    (void) pdx_digital_input(PIO_DIN_YH2, &state, FALSE);
    put_debounce_by_time(state,
                         0.01,
                         0,
                         0.05,
                         0.1,
                         &state,
                         &pdx_DigitalInput2_detm_wrk_data);
    atv_yh2 = state;
  }

  /* S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput3' */
  /* S-Function Block: <S28>/pdx_DigitalInput3
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  {
    uint8_T state;
    (void) pdx_digital_input(PIO_DIN_YJ2, &state, FALSE);
    put_debounce_by_time(state,
                         0.01,
                         0,
                         0.05,
                         0.1,
                         &state,
                         &pdx_DigitalInput3_detm_wrk_data);
    atv_yj2 = state;
  }

  /* If: '<S88>/If' incorporates:
   *  Constant: '<S100>/Constant'
   *  Constant: '<S100>/Constant1'
   *  Constant: '<S101>/Constant'
   *  Constant: '<S101>/Constant1'
   *  Constant: '<S98>/Constant'
   *  Constant: '<S98>/Constant1'
   */
  rtb_Compare = (atv_yg2 && atv_yh2);
  if (rtb_Compare && atv_yj2) {
    /* Outputs for IfAction SubSystem: '<S88>/If Action Subsystem' incorporates:
     *  ActionPort: '<S98>/Action Port'
     */
    atv_RegMapSelProcessed = 1U;
    rtb_Compare_e1 = true;

    /* End of Outputs for SubSystem: '<S88>/If Action Subsystem' */
  } else if ((!atv_yg2) && atv_yh2 && atv_yj2) {
    /* Outputs for IfAction SubSystem: '<S88>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S99>/Action Port'
     */
    ATV_IfActionSubsystem1(&atv_RegMapSelProcessed, &rtb_Compare_e1);

    /* End of Outputs for SubSystem: '<S88>/If Action Subsystem1' */
  } else if (rtb_Compare && (!atv_yj2)) {
    /* Outputs for IfAction SubSystem: '<S88>/If Action Subsystem2' incorporates:
     *  ActionPort: '<S100>/Action Port'
     */
    atv_RegMapSelProcessed = 3U;
    rtb_Compare_e1 = false;

    /* End of Outputs for SubSystem: '<S88>/If Action Subsystem2' */
  } else if (atv_yg2 && (!atv_yh2) && atv_yj2) {
    /* Outputs for IfAction SubSystem: '<S88>/If Action Subsystem3' incorporates:
     *  ActionPort: '<S101>/Action Port'
     */
    atv_RegMapSelProcessed = 4U;
    rtb_Compare_e1 = false;

    /* End of Outputs for SubSystem: '<S88>/If Action Subsystem3' */
  } else {
    /* Outputs for IfAction SubSystem: '<S88>/If Action Subsystem4' incorporates:
     *  ActionPort: '<S102>/Action Port'
     */
    ATV_IfActionSubsystem1(&atv_RegMapSelProcessed, &rtb_Compare_e1);

    /* End of Outputs for SubSystem: '<S88>/If Action Subsystem4' */
  }

  /* End of If: '<S88>/If' */

  /* Switch: '<S25>/Switch' */
  atv_ye2 = rtb_Compare_e1;

  /* S-Function (pdx_pwm_output): '<S25>/pdx_PWMOutput2' incorporates:
   *  Constant: '<S25>/Constant1'
   */
  /*
   * S-Function Block: <S25>/pdx_PWMOutput2
   * [$Id: pdx_pwm_output.tlc 30730 2012-09-29 12:01:15Z jtough $]
   */
  {
    F32 dc;
    put_dutycycle_processing(atv_ye2,
      0,
      (U8)false,
      0.0,
      (0.0),
      (1.0),
      &dc);
    (void) pdx_pwm_output(PIO_FFPOT_YE2,
                          2000.0,
                          dc,
                          0.0,
                          FALSE);
  }

  /* Logic: '<S4>/Logical Operator' */
  ATV_B.LogicalOperator_n = !ATV_B.sf_Chart.out;

  /* RateTransition: '<S4>/Rate Transition6' */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition6_o = ATV_DW.RateTransition6_Buffer0_j;
  }

  /* End of RateTransition: '<S4>/Rate Transition6' */

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput1' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput1
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XA1, &adc, FALSE);
    atv_xa1_ain_throttle_raw = (adc * 5.0) / 4096.0;
  }

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput2' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput2
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XE3, &adc, FALSE);
    ATV_B.pai_BasicAnalogInput2 = (adc * 5.0) / 4096.0;
  }

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput3' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput3
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XD3, &adc, FALSE);
    atv_xd3_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput15' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput15
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XE3, &adc, FALSE);
    atv_HandBrakePos = (adc * 5.0) / 4096.0;
  }

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput8' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput8
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_XE4, &adc, FALSE);
    atv_xe4_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput12' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput12
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_ZD1_MONITOR_V, &adc, FALSE);
    atv_zd1_ain = (adc * 5.0) / 4096.0;
  }

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput14' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput14
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_YF3, &adc, FALSE);
    ATV_B.atv_yf3_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* RateTransition: '<S28>/Rate Transition' incorporates:
   *  RateTransition: '<S28>/Rate Transition1'
   */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.atv_yg3_raw_ain_c = ATV_DW.RateTransition_Buffer0;
    ATV_B.atv_yg3_raw_ain_o = atv_xd1_key_ain;
  }

  /* End of RateTransition: '<S28>/Rate Transition' */

  /* Lookup_n-D: '<S28>/1-D Lookup Table' */
  atv_fuel_level = look1_tu8Dd_binlcpw(ATV_B.atv_yg3_raw_ain_c,
    ATV_ConstP.uDLookupTable_bp01Data_d, ATV_ConstP.uDLookupTable_tableData_b,
    1U);

  /* Switch: '<S89>/Switch' incorporates:
   *  Constant: '<S103>/Lower Limit'
   *  Constant: '<S103>/Upper Limit'
   *  Constant: '<S89>/Constant'
   *  Logic: '<S103>/AND'
   *  RelationalOperator: '<S103>/Lower Test'
   *  RelationalOperator: '<S103>/Upper Test'
   */
  if ((0.45 <= atv_xa1_ain_throttle_raw) && (atv_xa1_ain_throttle_raw <= 4.55))
  {
    /* Saturate: '<S89>/Saturation' */
    if (atv_xa1_ain_throttle_raw > 4.5) {
      tmp_f = 4.5;
    } else if (atv_xa1_ain_throttle_raw < 0.5) {
      tmp_f = 0.5;
    } else {
      tmp_f = atv_xa1_ain_throttle_raw;
    }

    /* End of Saturate: '<S89>/Saturation' */

    /* Gain: '<S89>/Gain' incorporates:
     *  Constant: '<S89>/Constant1'
     *  Sum: '<S89>/Add'
     */
    tmp_f = floor((tmp_f - 0.5) * 2500.0);
    if (rtIsNaN(tmp_f)) {
      rtb_atvc_ice_run_timer_reset_k = 0;
    } else {
      rtb_atvc_ice_run_timer_reset_k = (int32_T)(uint32_T)fmod(tmp_f,
        4.294967296E+9);
    }

    /* End of Gain: '<S89>/Gain' */
  } else {
    rtb_atvc_ice_run_timer_reset_k = 0;
  }

  /* End of Switch: '<S89>/Switch' */

  /* Gain: '<S89>/Gain3' incorporates:
   *  Constant: '<S89>/atvc_throttleZero'
   *  Gain: '<S89>/Gain2'
   *  Sum: '<S89>/Add2'
   */
  rtb_atvc_ice_run_timer_reset_k = (rtb_atvc_ice_run_timer_reset_k - (uint16_T)
    (10U * atvc_throttleZero)) * 100;

  /* Product: '<S89>/Divide' incorporates:
   *  Constant: '<S89>/atvc_throttleFull'
   *  Constant: '<S89>/atvc_throttleZero'
   *  Sum: '<S89>/Add1'
   */
  u0 = div_s32_floor(rtb_atvc_ice_run_timer_reset_k, (uint16_T)
                     (atvc_throttleFull - atvc_throttleZero));

  /* Saturate: '<S89>/Saturation1' */
  if (u0 > 1000) {
    atv_throttleX1000 = 1000U;
  } else if (u0 < 0) {
    atv_throttleX1000 = 0U;
  } else {
    atv_throttleX1000 = (uint16_T)u0;
  }

  /* End of Saturate: '<S89>/Saturation1' */

  /* Gain: '<S28>/Gain2' */
  tmp_f = floor(1000.0 * ATV_B.pai_BasicAnalogInput2);
  if (rtIsNaN(tmp_f) || rtIsInf(tmp_f)) {
    tmp_f = 0.0;
  } else {
    tmp_f = fmod(tmp_f, 4.294967296E+9);
  }

  atv_xe3_ain = tmp_f < 0.0 ? -(int32_T)(uint32_T)-tmp_f : (int32_T)(uint32_T)
    tmp_f;

  /* End of Gain: '<S28>/Gain2' */

  /* Relay: '<S28>/Relay' */
  if (atv_xd3_raw_ain >= 3.0) {
    ATV_DW.Relay_Mode_b = true;
  } else {
    if (atv_xd3_raw_ain <= 2.0) {
      ATV_DW.Relay_Mode_b = false;
    }
  }

  atv_fs1_in = !ATV_DW.Relay_Mode_b;

  /* End of Relay: '<S28>/Relay' */

  /* Relay: '<S28>/Relay7' */
  if (atv_brake_pedalX1000 >= 500) {
    ATV_DW.Relay7_Mode_o = true;
  } else {
    if (atv_brake_pedalX1000 <= 200) {
      ATV_DW.Relay7_Mode_o = false;
    }
  }

  /* Relay: '<S28>/Relay6' */
  if (atv_HandBrakePos >= 3.7) {
    ATV_DW.Relay6_Mode_c = true;
  } else {
    if (atv_HandBrakePos <= 3.5) {
      ATV_DW.Relay6_Mode_c = false;
    }
  }

  /* Logic: '<S28>/Logical Operator1' incorporates:
   *  Relay: '<S28>/Relay6'
   *  Relay: '<S28>/Relay7'
   */
  atv_HandBrakeStatus = (ATV_DW.Relay7_Mode_o && (!ATV_DW.Relay6_Mode_c));

  /* Relay: '<S28>/Relay5' */
  if (atv_xe4_raw_ain >= rtb_MultiportSwitch_0) {
    ATV_DW.Relay5_Mode_e = true;
  } else {
    if (atv_xe4_raw_ain <= atvc_an_in_sel_th - atvc_an_in_sel_his) {
      ATV_DW.Relay5_Mode_e = false;
    }
  }

  atv_4wd_din = !ATV_DW.Relay5_Mode_e;

  /* Gain: '<S28>/Gain1' */
  atv_12v = 6.73170731 * atv_zd1_ain;

  /* DataTypeConversion: '<S85>/Data Type Conversion8' */
  rtb_Gain1_j = (real32_T)ATV_B.atv_yf3_raw_ain;

  /* Lookup_n-D: '<S85>/Tensione-->Temperatura1' */
  rtb_Gain1_j = look1_iflf_binlxpw(rtb_Gain1_j, ATV_ConstP.pooled24,
    ATV_ConstP.pooled23, 19U);

  /* DataTypeConversion: '<S85>/Data Type Conversion6' */
  rtb_Gain1_j = (real32_T)floor(rtb_Gain1_j);
  if (rtIsNaNF(rtb_Gain1_j) || rtIsInfF(rtb_Gain1_j)) {
    rtb_Gain1_j = 0.0F;
  } else {
    rtb_Gain1_j = (real32_T)fmod(rtb_Gain1_j, 65536.0);
  }

  atv_TRad_in = (int16_T)(rtb_Gain1_j < 0.0F ? (int32_T)(int16_T)-(int16_T)
    (uint16_T)-rtb_Gain1_j : (int32_T)(int16_T)(uint16_T)rtb_Gain1_j);

  /* End of DataTypeConversion: '<S85>/Data Type Conversion6' */

  /* S-Function (pnv_adaptive_checksum): '<S34>/pnv_AdaptiveChecksum' */
  /* S-Function Block: <S34>/pnv_AdaptiveChecksum
   * [$Id: pnv_adaptive_checksum.tlc 48772 2015-11-04 16:51:23Z sborders $]
   */
  {
    static U8 pnv_prev_input = FALSE;  /* holds state of input flag from previous iteration */
    if (ATV_B.LogicalOperator_pn && !pnv_prev_input) {
      /* Trigger input has changed from FALSE to TRUE so attempt to
       * commit the data to non-volatile store (called function prevents
       * repeated writes when no change in data has occurred).
       */
      pnv_commit_to_store();
      pfs_flush_all();
    }

    /* Update copy of flag from previous iteration. */
    pnv_prev_input = ATV_B.LogicalOperator_pn;
  }

  /* S-Function (pnv_array): '<S138>/pnv_array2' incorporates:
   *  Constant: '<S138>/Constant6'
   *  Constant: '<S138>/Constant9'
   */
  /*
   * S-Function Block: <S138>/pnv_array2
   * [$Id: pnv_array.tlc 46682 2015-05-20 19:09:48Z egriwicki $]
   */
  {
    U8 valid_index;
    pnv_array
      (
       ((uint8_T)0U),                  /* index */
       (void*)(uint8_T*)&ATV_U8GND,    /* new value */
       (BOOL)false,                    /* change */
       (BOOL)false,                    /* reset */
       1,                              /* number of bytes per element */
       2,                              /* number of array elements */
       atvv_map,                       /* pointer to the default map's z axis */
       &valid_index,                   /* valid index */
       (void*)&ATV_B.pnv_array2_o2     /* array output, possibly modified */
       );
    ATV_B.pnv_array2_o1 = valid_index;
  }

  /* Lookup_n-D: '<S138>/1-D Lookup Table1' */
  rtb_Switch_e = look1_is16bdtd_binlcpw(ATV_B.rear_motor_speed,
    ATV_ConstP.uDLookupTable1_bp01Data, ATV_ConstP.uDLookupTable1_tableData, 6U);

  /* Lookup_n-D: '<S138>/1-D Lookup Table2' */
  rtb_Filter = look1_is16bdtd_binlcpw(ATV_B.rear_motor_speed,
    ATV_ConstP.uDLookupTable2_bp01Data, ATV_ConstP.uDLookupTable2_tableData, 6U);

  /* Memory: '<S157>/Memory' */
  rtb_Compare_e1 = ATV_DW.Memory_PreviousInput_l4;

  /* Product: '<S138>/Product' incorporates:
   *  Constant: '<S138>/atvc_throttleNeutralPoint'
   *  DataTypeConversion: '<S138>/Data Type Conversion2'
   *  Lookup_n-D: '<S138>/1-D Lookup Table'
   */
  rtb_DiscreteTimeIntegrator = (real_T)atvc_throttleNeutralPoint
    * look1_binlcapw(ATV_B.rear_motor_speed, ATV_ConstP.uDLookupTable_bp01Data_m,
                     ATV_ConstP.uDLookupTable_tableData_n, 2U);

  /* DataTypeConversion: '<S161>/Cast' incorporates:
   *  DataTypeConversion: '<S161>/Cast3'
   *  DataTypeConversion: '<S164>/Cast'
   *  DataTypeConversion: '<S164>/Cast3'
   */
  rtb_MultiportSwitch_0 = floor(rtb_DiscreteTimeIntegrator);
  if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
    tmp_f = 0.0;
  } else {
    tmp_f = fmod(rtb_MultiportSwitch_0, 4.294967296E+9);
  }

  rtb_atvc_ice_run_timer_reset_k = tmp_f < 0.0 ? -(int32_T)(uint32_T)-tmp_f :
    (int32_T)(uint32_T)tmp_f;

  /* End of DataTypeConversion: '<S161>/Cast' */

  /* Sum: '<S161>/Add' incorporates:
   *  DataTypeConversion: '<S161>/Cast1'
   */
  u0 = atv_throttleX1000 - rtb_atvc_ice_run_timer_reset_k;

  /* Sum: '<S161>/Add1' incorporates:
   *  Constant: '<S161>/Constant1'
   */
  rtb_atvc_ice_run_timer_reset_k = 1000 - rtb_atvc_ice_run_timer_reset_k;

  /* Saturate: '<S161>/Saturation2' */
  if (rtb_atvc_ice_run_timer_reset_k > 1000) {
    rtb_atvc_ice_run_timer_reset_k = 1000;
  } else {
    if (rtb_atvc_ice_run_timer_reset_k < 1) {
      rtb_atvc_ice_run_timer_reset_k = 1;
    }
  }

  /* End of Saturate: '<S161>/Saturation2' */

  /* Gain: '<S161>/Gain2' */
  rtb_Merge = 1000U;

  /* Saturate: '<S161>/Saturation' */
  if (u0 > 1000) {
    /* Gain: '<S161>/Gain2' */
    tmp_3 = 1000U;
  } else if (u0 < 0) {
    /* Gain: '<S161>/Gain2' */
    tmp_3 = 0U;
  } else {
    /* Gain: '<S161>/Gain2' */
    tmp_3 = (uint32_T)u0;
  }

  /* End of Saturate: '<S161>/Saturation' */

  /* Gain: '<S161>/Gain2' */
  sMultiWordMul(&rtb_Merge, 1, &tmp_3, 1, &tmp_2.chunks[0U], 2);

  /* Product: '<S161>/Divide3' */
  sLong2MultiWord(rtb_atvc_ice_run_timer_reset_k, &tmp_5.chunks[0U], 2);
  sMultiWordDivFloor(&tmp_2.chunks[0U], 2, &tmp_5.chunks[0U], 2, &tmp_4.chunks
                     [0U], 3, &tmp_6.chunks[0U], 2, &tmp_7.chunks[0U], 2,
                     &tmp_8.chunks[0U], 2);
  u0 = MultiWord2sLong(&tmp_4.chunks[0U]);

  /* DataTypeConversion: '<S161>/Cast3' */
  if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
    tmp_f = 0.0;
  } else {
    tmp_f = fmod(rtb_MultiportSwitch_0, 4.294967296E+9);
  }

  rtb_Integrator_j = tmp_f < 0.0 ? -(int32_T)(uint32_T)-tmp_f : (int32_T)
    (uint32_T)tmp_f;

  /* DataTypeConversion: '<S161>/Cast2' */
  rtb_atvc_ice_run_timer_reset_k = atv_throttleX1000;

  /* Sum: '<S161>/Add2' */
  rtb_atvc_ice_run_timer_reset_k = rtb_Integrator_j -
    rtb_atvc_ice_run_timer_reset_k;

  /* Saturate: '<S161>/Saturation3' */
  if (rtb_atvc_ice_run_timer_reset_k > 1000) {
    rtb_atvc_ice_run_timer_reset_k = 1000;
  } else {
    if (rtb_atvc_ice_run_timer_reset_k < 0) {
      rtb_atvc_ice_run_timer_reset_k = 0;
    }
  }

  /* End of Saturate: '<S161>/Saturation3' */

  /* Gain: '<S161>/Gain1' */
  tmp_3 = (uint32_T)rtb_atvc_ice_run_timer_reset_k;
  sMultiWordMul(&rtb_Merge, 1, &tmp_3, 1, &tmp_1.chunks[0U], 2);

  /* Product: '<S161>/Divide4' */
  if (rtb_Integrator_j == 0) {
    tmp_6 = tmp_i;
    if (sMultiWordGe(&tmp_1.chunks[0U], &tmp_6.chunks[0U], 2)) {
      rtb_atvc_ice_run_timer_reset_k = MAX_int32_T;
    } else {
      rtb_atvc_ice_run_timer_reset_k = MIN_int32_T;
    }
  } else {
    sLong2MultiWord(rtb_Integrator_j, &tmp_6.chunks[0U], 2);
    sMultiWordDivFloor(&tmp_1.chunks[0U], 2, &tmp_6.chunks[0U], 2,
                       &tmp_9.chunks[0U], 3, &tmp_7.chunks[0U], 2,
                       &tmp_8.chunks[0U], 2, &tmp_a.chunks[0U], 2);
    rtb_atvc_ice_run_timer_reset_k = MultiWord2sLong(&tmp_9.chunks[0U]);
  }

  /* End of Product: '<S161>/Divide4' */

  /* Saturate: '<S138>/Saturation3' */
  if (atv_RegMapSelProcessed < 4) {
    atv_regmap = atv_RegMapSelProcessed;
  } else {
    atv_regmap = 4U;
  }

  /* End of Saturate: '<S138>/Saturation3' */

  /* MultiPortSwitch: '<S138>/Multiport Switch1' incorporates:
   *  Constant: '<S138>/atvc_brake2epedal_split'
   *  Constant: '<S138>/atvc_brake2epedal_split1'
   *  Constant: '<S138>/atvc_brake2epedal_split2'
   *  Constant: '<S138>/atvc_brake2epedal_split3'
   */
  switch (atv_regmap) {
   case 1:
    atv_brake2epedal_split_actual = atvc_brake2epedal_split_0;
    break;

   case 2:
    atv_brake2epedal_split_actual = atvc_brake2epedal_split_1;
    break;

   case 3:
    atv_brake2epedal_split_actual = atvc_brake2epedal_split_2;
    break;

   case 4:
    atv_brake2epedal_split_actual = atvc_brake2epedal_split_3;
    break;

   default:
    atv_brake2epedal_split_actual = atvc_brake2epedal_split_1;
    break;
  }

  /* End of MultiPortSwitch: '<S138>/Multiport Switch1' */

  /* Product: '<S161>/Divide7' incorporates:
   *  Product: '<S161>/Divide6'
   */
  rtb_atvc_ice_run_timer_reset_k = div_nde_s32_floor
    (rtb_atvc_ice_run_timer_reset_k * atv_brake2epedal_split_actual, 1000);

  /* Product: '<S161>/Divide2' incorporates:
   *  Constant: '<S161>/Constant5'
   *  Product: '<S161>/Divide1'
   *  Sum: '<S161>/Add3'
   */
  rtb_atvc_fmot_run_timer_reset = div_nde_s32_floor((int16_T)(1000 -
    atv_brake2epedal_split_actual) * atv_brake_pedalX1000, 1000);

  /* Saturate: '<S161>/Saturation1' incorporates:
   *  Product: '<S161>/Divide3'
   */
  if (u0 > 1000) {
    u0 = 1000;
  } else {
    if (u0 < 0) {
      u0 = 0;
    }
  }

  /* Sum: '<S161>/Add5' incorporates:
   *  Gain: '<S161>/Gain3'
   *  Saturate: '<S161>/Saturation1'
   *  Sum: '<S161>/Add4'
   */
  rtb_Add5 = (int16_T)u0 - ((rtb_atvc_ice_run_timer_reset_k +
    rtb_atvc_fmot_run_timer_reset) << 1);

  /* Switch: '<S161>/Switch1' incorporates:
   *  Constant: '<S161>/Constant2'
   */
  if (rtb_Add5 > 0) {
    rtb_Saturation1_g = (uint16_T)rtb_Add5;
  } else {
    rtb_Saturation1_g = 0U;
  }

  /* End of Switch: '<S161>/Switch1' */

  /* RelationalOperator: '<S160>/Compare' incorporates:
   *  Constant: '<S160>/Constant'
   */
  ATV_B.Compare_bt = (rtb_Saturation1_g <= 0);

  /* Chart: '<S157>/Chart' incorporates:
   *  Logic: '<S157>/Logical Operator'
   *  Logic: '<S157>/Logical Operator2'
   */
  ATV_Chart_n((!rtb_Compare_e1) && ATV_B.Compare_bt, &ATV_B.sf_Chart_n,
              &ATV_DW.sf_Chart_n);

  /* Switch: '<S157>/Switch1' incorporates:
   *  Constant: '<S157>/Constant3'
   */
  if (ATV_B.en_inv_rear_out) {
    atv_motoring_x1000_rear = rtb_Saturation1_g;
  } else {
    atv_motoring_x1000_rear = 0U;
  }

  /* End of Switch: '<S157>/Switch1' */

  /* Switch: '<S157>/Switch2' incorporates:
   *  Constant: '<S157>/Constant1'
   *  Logic: '<S157>/Logical Operator3'
   *  Switch: '<S157>/Switch5'
   */
  if (ATV_B.sf_Chart_n.out && rtb_AND_e) {
    rtb_Saturation1_g = 100U;
  } else if (ATV_B.en_inv_rear_out) {
    /* UnaryMinus: '<S161>/Unary Minus' incorporates:
     *  Switch: '<S157>/Switch5'
     */
    rtb_Add5 = -rtb_Add5;

    /* Switch: '<S161>/Switch2' incorporates:
     *  Constant: '<S161>/Constant6'
     *  Switch: '<S157>/Switch5'
     */
    if (rtb_Add5 < 0) {
      rtb_Add5 = 0;
    }

    /* End of Switch: '<S161>/Switch2' */

    /* Switch: '<S157>/Switch5' incorporates:
     *  Product: '<S161>/Divide5'
     */
    rtb_Saturation1_g = (uint16_T)(rtb_Add5 >> 1);
  } else {
    /* Switch: '<S157>/Switch5' incorporates:
     *  Constant: '<S157>/Constant2'
     */
    rtb_Saturation1_g = 0U;
  }

  /* End of Switch: '<S157>/Switch2' */

  /* Memory: '<S158>/Memory' */
  rtb_Compare_e1 = ATV_DW.Memory_PreviousInput_lr;

  /* DataTypeConversion: '<S164>/Cast1' */
  rtb_atvc_fmot_run_timer_reset = atv_throttleX1000;

  /* DataTypeConversion: '<S164>/Cast' */
  if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
    tmp_f = 0.0;
  } else {
    tmp_f = fmod(rtb_MultiportSwitch_0, 4.294967296E+9);
  }

  rtb_Integrator_j = tmp_f < 0.0 ? -(int32_T)(uint32_T)-tmp_f : (int32_T)
    (uint32_T)tmp_f;

  /* Sum: '<S164>/Add' */
  rtb_atvc_fmot_run_timer_reset -= rtb_Integrator_j;

  /* Saturate: '<S164>/Saturation' */
  if (rtb_atvc_fmot_run_timer_reset > 1000) {
    rtb_atvc_fmot_run_timer_reset = 1000;
  } else {
    if (rtb_atvc_fmot_run_timer_reset < 0) {
      rtb_atvc_fmot_run_timer_reset = 0;
    }
  }

  /* End of Saturate: '<S164>/Saturation' */

  /* Sum: '<S164>/Add1' incorporates:
   *  Constant: '<S164>/Constant1'
   */
  rtb_Integrator_j = 1000 - rtb_Integrator_j;

  /* Saturate: '<S164>/Saturation2' */
  if (rtb_Integrator_j > 1000) {
    rtb_Integrator_j = 1000;
  } else {
    if (rtb_Integrator_j < 1) {
      rtb_Integrator_j = 1;
    }
  }

  /* End of Saturate: '<S164>/Saturation2' */

  /* Gain: '<S164>/Gain2' */
  tmp_3 = (uint32_T)rtb_atvc_fmot_run_timer_reset;
  sMultiWordMul(&rtb_Merge, 1, &tmp_3, 1, &tmp_0.chunks[0U], 2);

  /* Product: '<S164>/Divide3' */
  sLong2MultiWord(rtb_Integrator_j, &tmp_7.chunks[0U], 2);
  sMultiWordDivFloor(&tmp_0.chunks[0U], 2, &tmp_7.chunks[0U], 2, &tmp_b.chunks
                     [0U], 3, &tmp_8.chunks[0U], 2, &tmp_a.chunks[0U], 2,
                     &tmp_c.chunks[0U], 2);
  rtb_atvc_fmot_run_timer_reset = MultiWord2sLong(&tmp_b.chunks[0U]);

  /* Saturate: '<S164>/Saturation1' */
  if (rtb_atvc_fmot_run_timer_reset > 1000) {
    rtb_Add5 = 1000;
  } else if (rtb_atvc_fmot_run_timer_reset < 0) {
    rtb_Add5 = 0;
  } else {
    rtb_Add5 = rtb_atvc_fmot_run_timer_reset;
  }

  /* DataTypeConversion: '<S164>/Cast3' */
  if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
    rtb_MultiportSwitch_0 = 0.0;
  } else {
    rtb_MultiportSwitch_0 = fmod(rtb_MultiportSwitch_0, 4.294967296E+9);
  }

  rtb_atvc_fmot_run_timer_reset = rtb_MultiportSwitch_0 < 0.0 ? -(int32_T)
    (uint32_T)-rtb_MultiportSwitch_0 : (int32_T)(uint32_T)rtb_MultiportSwitch_0;

  /* Sum: '<S164>/Add2' incorporates:
   *  DataTypeConversion: '<S164>/Cast2'
   */
  u0 = rtb_atvc_fmot_run_timer_reset - atv_throttleX1000;

  /* Saturate: '<S164>/Saturation3' */
  if (u0 > 1000) {
    /* Gain: '<S164>/Gain1' */
    tmp_3 = 1000U;
  } else if (u0 < 0) {
    /* Gain: '<S164>/Gain1' */
    tmp_3 = 0U;
  } else {
    /* Gain: '<S164>/Gain1' */
    tmp_3 = (uint32_T)u0;
  }

  /* End of Saturate: '<S164>/Saturation3' */

  /* Gain: '<S164>/Gain1' */
  sMultiWordMul(&rtb_Merge, 1, &tmp_3, 1, &tmp.chunks[0U], 2);

  /* Product: '<S164>/Divide4' */
  if (rtb_atvc_fmot_run_timer_reset == 0) {
    tmp_8 = tmp_i;
    if (sMultiWordGe(&tmp.chunks[0U], &tmp_8.chunks[0U], 2)) {
      u0 = MAX_int32_T;
    } else {
      u0 = MIN_int32_T;
    }
  } else {
    sLong2MultiWord(rtb_atvc_fmot_run_timer_reset, &tmp_8.chunks[0U], 2);
    sMultiWordDivFloor(&tmp.chunks[0U], 2, &tmp_8.chunks[0U], 2, &tmp_d.chunks
                       [0U], 3, &tmp_a.chunks[0U], 2, &tmp_c.chunks[0U], 2,
                       &tmp_e.chunks[0U], 2);
    u0 = MultiWord2sLong(&tmp_d.chunks[0U]);
  }

  /* Product: '<S164>/Divide6' incorporates:
   *  Product: '<S164>/Divide4'
   */
  rtb_atvc_fmot_run_timer_reset = u0 * atv_brake2epedal_split_actual;

  /* Product: '<S164>/Divide7' */
  rtb_Integrator_j = div_nde_s32_floor(rtb_atvc_fmot_run_timer_reset, 1000);

  /* Product: '<S164>/Divide1' incorporates:
   *  Constant: '<S164>/Constant5'
   *  Sum: '<S164>/Add3'
   */
  rtb_atvc_fmot_run_timer_reset = (int16_T)(1000 - atv_brake2epedal_split_actual)
    * atv_brake_pedalX1000;

  /* Product: '<S164>/Divide2' */
  rtb_atvc_ice_run_timer_reset_k = div_nde_s32_floor
    (rtb_atvc_fmot_run_timer_reset, 1000);

  /* Sum: '<S164>/Add5' incorporates:
   *  Gain: '<S164>/Gain3'
   *  Saturate: '<S164>/Saturation1'
   *  Sum: '<S164>/Add4'
   */
  rtb_Add5 = (int16_T)rtb_Add5 - ((rtb_Integrator_j +
    rtb_atvc_ice_run_timer_reset_k) << 1);

  /* Switch: '<S164>/Switch1' incorporates:
   *  Constant: '<S164>/Constant2'
   */
  if (rtb_Add5 > 0) {
    rtb_Saturation = (uint16_T)rtb_Add5;
  } else {
    rtb_Saturation = 0U;
  }

  /* End of Switch: '<S164>/Switch1' */

  /* RelationalOperator: '<S163>/Compare' incorporates:
   *  Constant: '<S163>/Constant'
   */
  ATV_B.Compare_p = (rtb_Saturation <= 0);

  /* Chart: '<S158>/Chart' incorporates:
   *  Logic: '<S158>/Logical Operator'
   *  Logic: '<S158>/Logical Operator1'
   */
  ATV_Chart_n((!rtb_Compare_e1) && ATV_B.Compare_p, &ATV_B.sf_Chart_p,
              &ATV_DW.sf_Chart_p);

  /* Switch: '<S158>/Switch1' incorporates:
   *  Constant: '<S158>/Constant3'
   */
  if (ATV_B.en_inv_front_out) {
    atv_motoring_x1000_front = rtb_Saturation;
  } else {
    atv_motoring_x1000_front = 0U;
  }

  /* End of Switch: '<S158>/Switch1' */

  /* Switch: '<S158>/Switch2' incorporates:
   *  Constant: '<S158>/Constant1'
   *  Logic: '<S158>/Logical Operator2'
   *  Switch: '<S158>/Switch5'
   */
  if (ATV_B.sf_Chart_p.out && rtb_AND_j) {
    rtb_Saturation = 100U;
  } else if (ATV_B.en_inv_front_out) {
    /* UnaryMinus: '<S164>/Unary Minus' incorporates:
     *  Switch: '<S158>/Switch5'
     */
    rtb_Add5 = -rtb_Add5;

    /* Switch: '<S164>/Switch2' incorporates:
     *  Constant: '<S164>/Constant6'
     *  Switch: '<S158>/Switch5'
     */
    if (rtb_Add5 < 0) {
      rtb_Add5 = 0;
    }

    /* End of Switch: '<S164>/Switch2' */

    /* Switch: '<S158>/Switch5' incorporates:
     *  Product: '<S164>/Divide5'
     */
    rtb_Saturation = (uint16_T)(rtb_Add5 >> 1);
  } else {
    /* Switch: '<S158>/Switch5' incorporates:
     *  Constant: '<S158>/Constant2'
     */
    rtb_Saturation = 0U;
  }

  /* End of Switch: '<S158>/Switch2' */

  /* Logic: '<S138>/Logical Operator2' incorporates:
   *  Constant: '<S138>/Constant10'
   *  Constant: '<S156>/Constant'
   *  Logic: '<S138>/Logical Operator'
   *  Logic: '<S138>/Logical Operator1'
   *  RelationalOperator: '<S156>/Compare'
   */
  ATV_B.LogicalOperator2 = (((atv_throttleX1000 > atvc_fs1_throttle_coherency) &&
    (!atv_fs1_in)) || atvc_force_inv_preop);

  /* Switch: '<S138>/Switch5' incorporates:
   *  Constant: '<S138>/Constant1'
   *  Constant: '<S138>/Constant2'
   *  Switch: '<S138>/Switch3'
   */
  if (ATV_B.LogicalOperator2) {
    rtb_Product_d = 0U;
  } else if (atv_4wd_din) {
    /* Switch: '<S138>/Switch3' */
    rtb_Product_d = atv_motoring_x1000_front;
  } else {
    rtb_Product_d = 0U;
  }

  /* End of Switch: '<S138>/Switch5' */

  /* Product: '<S138>/Product1' */
  rtb_MultiportSwitch_0 = floor((real_T)rtb_Product_d * rtb_Switch_e);
  if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
    rtb_MultiportSwitch_0 = 0.0;
  } else {
    rtb_MultiportSwitch_0 = fmod(rtb_MultiportSwitch_0, 65536.0);
  }

  atv_motoring_x1000_front_final = (uint16_T)(rtb_MultiportSwitch_0 < 0.0 ?
    (int32_T)(uint16_T)-(int16_T)(uint16_T)-rtb_MultiportSwitch_0 : (int32_T)
    (uint16_T)rtb_MultiportSwitch_0);

  /* End of Product: '<S138>/Product1' */

  /* Switch: '<S138>/Switch2' incorporates:
   *  Constant: '<S138>/Constant5'
   */
  if (ATV_B.LogicalOperator2) {
    rtb_Product_d = 0U;
  } else {
    rtb_Product_d = atv_motoring_x1000_rear;
  }

  /* End of Switch: '<S138>/Switch2' */

  /* Product: '<S138>/Product2' */
  rtb_MultiportSwitch_0 = floor(rtb_Switch_e * (real_T)rtb_Product_d);
  if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
    rtb_MultiportSwitch_0 = 0.0;
  } else {
    rtb_MultiportSwitch_0 = fmod(rtb_MultiportSwitch_0, 65536.0);
  }

  atv_motoring_x1000_rear_final = (uint16_T)(rtb_MultiportSwitch_0 < 0.0 ?
    (int32_T)(uint16_T)-(int16_T)(uint16_T)-rtb_MultiportSwitch_0 : (int32_T)
    (uint16_T)rtb_MultiportSwitch_0);

  /* End of Product: '<S138>/Product2' */

  /* Saturate: '<S138>/Saturation' */
  if (rtb_Saturation >= 1000) {
    rtb_Saturation = 1000U;
  }

  /* End of Saturate: '<S138>/Saturation' */

  /* Product: '<S138>/Product3' */
  rtb_MultiportSwitch_0 = floor(rtb_Filter * (real_T)rtb_Saturation);
  if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
    rtb_MultiportSwitch_0 = 0.0;
  } else {
    rtb_MultiportSwitch_0 = fmod(rtb_MultiportSwitch_0, 65536.0);
  }

  atv_regen_x1000_front = (uint16_T)(rtb_MultiportSwitch_0 < 0.0 ? (int32_T)
    (uint16_T)-(int16_T)(uint16_T)-rtb_MultiportSwitch_0 : (int32_T)(uint16_T)
    rtb_MultiportSwitch_0);

  /* End of Product: '<S138>/Product3' */

  /* Saturate: '<S138>/Saturation1' */
  if (rtb_Saturation1_g >= 1000) {
    rtb_Saturation1_g = 1000U;
  }

  /* End of Saturate: '<S138>/Saturation1' */

  /* Product: '<S138>/Product4' */
  rtb_MultiportSwitch_0 = floor(rtb_Filter * (real_T)rtb_Saturation1_g);
  if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
    rtb_MultiportSwitch_0 = 0.0;
  } else {
    rtb_MultiportSwitch_0 = fmod(rtb_MultiportSwitch_0, 65536.0);
  }

  atv_regen_x1000_rear = (uint16_T)(rtb_MultiportSwitch_0 < 0.0 ? (int32_T)
    (uint16_T)-(int16_T)(uint16_T)-rtb_MultiportSwitch_0 : (int32_T)(uint16_T)
    rtb_MultiportSwitch_0);

  /* End of Product: '<S138>/Product4' */

  /* Saturate: '<S138>/Saturation2' */
  if (ATV_B.pnv_array2_o2 < 3) {
    atv_map = ATV_B.pnv_array2_o2;
  } else {
    atv_map = 3U;
  }

  /* End of Saturate: '<S138>/Saturation2' */

  /* RelationalOperator: '<S132>/Compare' incorporates:
   *  Constant: '<S132>/Constant'
   */
  rtb_Compare_e1 = (atv_state_out > 2);

  /* RateTransition: '<S139>/Rate Transition3' incorporates:
   *  Constant: '<S139>/Constant10'
   */
  if (ATV_M->Timing.RateInteraction.TID0_4) {
    ATV_B.RateTransition3_o = 1.0;

    /* RateTransition: '<S139>/Rate Transition4' incorporates:
     *  Constant: '<S139>/Constant10'
     */
    ATV_B.RateTransition4_a = ATV_B.en_inv_front_out;
  }

  /* End of RateTransition: '<S139>/Rate Transition3' */

  /* Constant: '<S139>/atvc_fmot_run_timer_reset' */
  rtb_atvc_fmot_run_timer_reset = atvc_fmot_run_timer_reset;

  /* RateTransition: '<S139>/Rate Transition5' incorporates:
   *  RateTransition: '<S139>/Rate Transition2'
   */
  if (ATV_M->Timing.RateInteraction.TID0_4) {
    ATV_B.RateTransition5_m = rtb_Compare_e1;
    ATV_B.RateTransition2_j = rtb_atvc_fmot_run_timer_reset;

    /* RateTransition: '<S139>/Rate Transition1' */
    atv_fmot_run_timer = ATV_DW.RateTransition1_Buffer0_b;
  }

  /* End of RateTransition: '<S139>/Rate Transition5' */

  /* S-Function (put_calmap1d): '<S141>/put_Calmap1d' */
  /* S-Function Block: <S141>/put_Calmap1d
   * [$Id: put_calmap1d.tlc 46682 2015-05-20 19:09:48Z egriwicki $]
   */
  put_cal_map_1d_f32
    (
     atv_RPM_Gen,
     4,
     atvm_currentfromrpm_x,
     atvm_currentfromrpm_z,
     &ATV_B.put_Calmap1d
     );

  /* MultiPortSwitch: '<S141>/Multiport Switch' incorporates:
   *  Constant: '<S141>/atvc_GenWarmUpCurrent'
   *  Constant: '<S141>/const'
   *  DataTypeConversion: '<S141>/Data Type Conversion2'
   */
  switch (atv_IceRG) {
   case 0:
    rtb_Memory = -10;
    break;

   case 1:
    rtb_Memory = atvc_GenWarmUpCurrent;
    break;

   case 2:
    rtb_Memory = atvc_GenWarmUpCurrent;
    break;

   case 3:
    /* MinMax: '<S141>/MinMax1' incorporates:
     *  UnaryMinus: '<S141>/Unary Minus'
     */
    if ((rtb_Memory > -ATV_B.put_Calmap1d) || rtIsNaN(-ATV_B.put_Calmap1d)) {
      rtb_MultiportSwitch_0 = rtb_Memory;
    } else {
      rtb_MultiportSwitch_0 = -ATV_B.put_Calmap1d;
    }

    /* End of MinMax: '<S141>/MinMax1' */

    /* DataTypeConversion: '<S141>/Data Type Conversion2' */
    rtb_MultiportSwitch_0 = floor(rtb_MultiportSwitch_0);
    if (rtIsInf(rtb_MultiportSwitch_0)) {
      rtb_MultiportSwitch_0 = 0.0;
    } else {
      rtb_MultiportSwitch_0 = fmod(rtb_MultiportSwitch_0, 65536.0);
    }

    rtb_Memory = (int16_T)(rtb_MultiportSwitch_0 < 0.0 ? (int32_T)(int16_T)
      -(int16_T)(uint16_T)-rtb_MultiportSwitch_0 : (int32_T)(int16_T)(uint16_T)
      rtb_MultiportSwitch_0);
    break;

   default:
    rtb_Memory = -10;
    break;
  }

  /* End of MultiPortSwitch: '<S141>/Multiport Switch' */

  /* DataTypeConversion: '<S141>/Data Type Conversion' */
  rtb_Gain1_j = rtb_Memory;

  /* RateLimiter: '<S141>/Rate Limiter2' */
  cumRevIndex = rtb_Gain1_j - ATV_DW.PrevY_d;
  if (cumRevIndex > 0.03F) {
    rtb_Gain1_j = ATV_DW.PrevY_d + 0.03F;
  } else {
    if (cumRevIndex < -0.02F) {
      rtb_Gain1_j = ATV_DW.PrevY_d + -0.02F;
    }
  }

  ATV_DW.PrevY_d = rtb_Gain1_j;

  /* End of RateLimiter: '<S141>/Rate Limiter2' */

  /* RateTransition: '<S5>/Rate Transition3' */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition3_a = ATV_DW.RateTransition3_Buffer0_j;

    /* RateTransition: '<S5>/Rate Transition27' */
    ATV_B.RateTransition27_a = ATV_DW.RateTransition27_Buffer0_fl;
  }

  /* End of RateTransition: '<S5>/Rate Transition3' */

  /* Chart: '<S5>/Chart' */
  if (ATV_DW.temporalCounter_i1_a < 127U) {
    ATV_DW.temporalCounter_i1_a++;
  }

  /* Gateway: CANBUS_Reception_BMS1/Chart */
  /* During: CANBUS_Reception_BMS1/Chart */
  if (ATV_DW.is_active_c9_ATV == 0U) {
    /* Entry: CANBUS_Reception_BMS1/Chart */
    ATV_DW.is_active_c9_ATV = 1U;

    /* Entry Internal: CANBUS_Reception_BMS1/Chart */
    /* Transition: '<S45>:4' */
    ATV_DW.is_c9_ATV = ATV_IN_NO_RX_b;

    /* Entry 'NO_RX': '<S45>:5' */
    rtb_AND_j = false;
  } else if (ATV_DW.is_c9_ATV == ATV_IN_NO_RX_b) {
    rtb_AND_j = false;

    /* During 'NO_RX': '<S45>:5' */
    if (ATV_B.RateTransition27_a) {
      /* Transition: '<S45>:6' */
      ATV_DW.is_c9_ATV = ATV_IN_RX_f;
      ATV_DW.temporalCounter_i1_a = 0U;

      /* Entry 'RX': '<S45>:3' */
      rtb_AND_j = true;
    }
  } else {
    rtb_AND_j = true;

    /* During 'RX': '<S45>:3' */
    if ((!ATV_B.RateTransition27_a) && (ATV_DW.temporalCounter_i1_a >= 100U)) {
      /* Transition: '<S45>:7' */
      ATV_DW.is_c9_ATV = ATV_IN_NO_RX_b;

      /* Entry 'NO_RX': '<S45>:5' */
      rtb_AND_j = false;
    }
  }

  /* End of Chart: '<S5>/Chart' */

  /* Switch: '<S5>/Switch2' incorporates:
   *  Constant: '<S5>/Constant2'
   */
  if (rtb_AND_j) {
    rtb_MultiportSwitch_0 = floor(ATV_B.RateTransition3_a);
    if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
      rtb_MultiportSwitch_0 = 0.0;
    } else {
      rtb_MultiportSwitch_0 = fmod(rtb_MultiportSwitch_0, 65536.0);
    }

    atv_bmsMaxChgCurr = (int16_T)(rtb_MultiportSwitch_0 < 0.0 ? (int32_T)
      (int16_T)-(int16_T)(uint16_T)-rtb_MultiportSwitch_0 : (int32_T)(int16_T)
      (uint16_T)rtb_MultiportSwitch_0);
  } else {
    atv_bmsMaxChgCurr = 0;
  }

  /* End of Switch: '<S5>/Switch2' */

  /* Switch: '<S141>/Switch' incorporates:
   *  Constant: '<S141>/const2'
   */
  if (ATV_B.IceReduceLoad) {
    rtb_Gain1_j = 0.0F;
  } else {
    /* Gain: '<S141>/Gain' incorporates:
     *  Constant: '<S141>/atvc_RpmEndwarmUp'
     *  Sum: '<S141>/Add'
     */
    rtb_Add5 = (int16_T)(atvc_EndWarmUpTemp - atv_RPM_Gen) * 19661;

    /* Saturate: '<S141>/Saturation' */
    u0 = rtb_Add5 >> 1;
    if (u0 >= -327680) {
      rtb_Memory = -5;
    } else if (u0 <= -16384000) {
      rtb_Memory = -250;
    } else {
      rtb_Memory = (int16_T)(rtb_Add5 >> 17);
    }

    /* End of Saturate: '<S141>/Saturation' */

    /* MinMax: '<S141>/MinMax' incorporates:
     *  UnaryMinus: '<S141>/Unary Minus3'
     */
    if ((rtb_Memory > rtb_Gain1_j) || rtIsNaNF(rtb_Gain1_j)) {
      rtb_Gain1_j = rtb_Memory;
    }

    cumRevIndex = (int16_T)-atv_bmsMaxChgCurr;
    if (!(rtb_Gain1_j > cumRevIndex)) {
      rtb_Gain1_j = cumRevIndex;
    }

    /* End of MinMax: '<S141>/MinMax' */
  }

  /* End of Switch: '<S141>/Switch' */

  /* RateLimiter: '<S141>/Rate Limiter3' */
  cumRevIndex = rtb_Gain1_j - ATV_DW.PrevY_a;
  if (cumRevIndex > 0.4F) {
    rtb_Gain1_j = ATV_DW.PrevY_a + 0.4F;
  } else {
    if (cumRevIndex < -0.15F) {
      rtb_Gain1_j = ATV_DW.PrevY_a + -0.15F;
    }
  }

  ATV_DW.PrevY_a = rtb_Gain1_j;

  /* End of RateLimiter: '<S141>/Rate Limiter3' */

  /* DataTypeConversion: '<S141>/Data Type Conversion1' */
  rtb_Gain1_j = (real32_T)floor(rtb_Gain1_j);
  if (rtIsNaNF(rtb_Gain1_j) || rtIsInfF(rtb_Gain1_j)) {
    rtb_Gain1_j = 0.0F;
  } else {
    rtb_Gain1_j = (real32_T)fmod(rtb_Gain1_j, 65536.0);
  }

  atv_GenCurrentSetPoint = (int16_T)(rtb_Gain1_j < 0.0F ? (int32_T)(int16_T)
    -(int16_T)(uint16_T)-rtb_Gain1_j : (int32_T)(int16_T)(uint16_T)rtb_Gain1_j);

  /* End of DataTypeConversion: '<S141>/Data Type Conversion1' */

  /* DataTypeConversion: '<S141>/Data Type Conversion5' */
  rtb_MultiportSwitch_0 = floor(rtb_MultiportSwitch1);
  if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
    rtb_MultiportSwitch_0 = 0.0;
  } else {
    rtb_MultiportSwitch_0 = fmod(rtb_MultiportSwitch_0, 65536.0);
  }

  atv_ice_rpm_req = (int16_T)(rtb_MultiportSwitch_0 < 0.0 ? (int32_T)(int16_T)
    -(int16_T)(uint16_T)-rtb_MultiportSwitch_0 : (int32_T)(int16_T)(uint16_T)
    rtb_MultiportSwitch_0);

  /* End of DataTypeConversion: '<S141>/Data Type Conversion5' */

  /* Gain: '<S234>/Filter Coefficient' incorporates:
   *  DiscreteIntegrator: '<S206>/Filter'
   *  Gain: '<S201>/Derivative Gain'
   *  Sum: '<S206>/SumD'
   */
  ATV_B.FilterCoefficient = (0.0 - ATV_DW.Filter_DSTATE) * 10.0;

  /* Sum: '<S254>/Sum' incorporates:
   *  DiscreteIntegrator: '<S224>/Integrator'
   */
  rtb_MultiportSwitch1 = (real_T)ATV_DW.Integrator_DSTATE_b *
    9.332636185032189E-304 + ATV_B.FilterCoefficient;

  /* Saturate: '<S245>/Saturation' */
  if (rtb_MultiportSwitch1 > 15.0) {
    /* DataTypeConversion: '<S141>/Data Type Conversion6' */
    rtb_Gain1_j = 15.0F;
  } else if (rtb_MultiportSwitch1 < -15.0) {
    /* DataTypeConversion: '<S141>/Data Type Conversion6' */
    rtb_Gain1_j = -15.0F;
  } else {
    /* DataTypeConversion: '<S141>/Data Type Conversion6' */
    rtb_Gain1_j = (real32_T)rtb_MultiportSwitch1;
  }

  /* End of Saturate: '<S245>/Saturation' */

  /* Gain: '<S214>/Integral Gain' */
  ATV_B.IntegralGain = 0;

  /* RateLimiter: '<S141>/Rate Limiter' */
  u0 = ATV_B.tHROTTLEGen_X1000_out - ATV_DW.PrevY_l;
  if (u0 > 100) {
    atv_throttleGen_X1000_out = (uint16_T)(ATV_DW.PrevY_l + 100);
  } else if (u0 < -100) {
    atv_throttleGen_X1000_out = (uint16_T)(ATV_DW.PrevY_l - 100);
  } else {
    atv_throttleGen_X1000_out = ATV_B.tHROTTLEGen_X1000_out;
  }

  ATV_DW.PrevY_l = atv_throttleGen_X1000_out;

  /* End of RateLimiter: '<S141>/Rate Limiter' */

  /* RateLimiter: '<S141>/Rate Limiter1' */
  u0 = ATV_B.footBrake_X1000_out - ATV_DW.PrevY_k;
  if (u0 > 1) {
    atv_footBrake_X1000_out = (uint16_T)(ATV_DW.PrevY_k + 1);
  } else if (u0 < -20) {
    atv_footBrake_X1000_out = (uint16_T)(ATV_DW.PrevY_k - 20);
  } else {
    atv_footBrake_X1000_out = ATV_B.footBrake_X1000_out;
  }

  ATV_DW.PrevY_k = atv_footBrake_X1000_out;

  /* End of RateLimiter: '<S141>/Rate Limiter1' */

  /* UnaryMinus: '<S141>/Unary Minus2' */
  rtb_Gain1_j = -rtb_Gain1_j;

  /* Saturate: '<S141>/Saturation1' */
  rtb_Gain1_j = (real32_T)floor(rtb_Gain1_j);
  if (rtIsNaNF(rtb_Gain1_j)) {
    rtb_Gain1_j = 0.0F;
  } else {
    rtb_Gain1_j = (real32_T)fmod(rtb_Gain1_j, 65536.0);
  }

  ATV_B.Saturation1 = (int16_T)(rtb_Gain1_j < 0.0F ? (int32_T)(int16_T)-(int16_T)
    (uint16_T)-rtb_Gain1_j : (int32_T)(int16_T)(uint16_T)rtb_Gain1_j);

  /* End of Saturate: '<S141>/Saturation1' */

  /* DataTypeConversion: '<S141>/Data Type Conversion8' */
  rtb_Gain1_j = atv_fuel_level;

  /* Product: '<S141>/Product' incorporates:
   *  Constant: '<S141>/const3'
   *  Gain: '<S141>/Gain2'
   */
  atv_fuel_qty = 0.01F * rtb_Gain1_j * atvc_ICE_Tank_Volume;

  /* RelationalOperator: '<S166>/Compare' incorporates:
   *  Constant: '<S166>/Constant'
   */
  atv_fuel_reserve = (atv_fuel_qty < atvc_ICE_ReserveFuel);

  /* Constant: '<S142>/atvc_ice_run_timer_reset' */
  rtb_atvc_ice_run_timer_reset_k = atvc_ice_run_timer_reset;

  /* RateTransition: '<S142>/Rate Transition3' incorporates:
   *  Constant: '<S142>/Constant10'
   *  RateTransition: '<S142>/Rate Transition2'
   */
  if (ATV_M->Timing.RateInteraction.TID0_4) {
    ATV_B.RateTransition3_p = 1.0;

    /* RateTransition: '<S142>/Rate Transition' incorporates:
     *  Constant: '<S142>/Constant10'
     */
    ATV_B.RateTransition = atv_IceOn;

    /* RateTransition: '<S142>/Rate Transition4' */
    ATV_B.RateTransition4_n = rtb_Compare_e1;
    ATV_B.RateTransition2_m = rtb_atvc_ice_run_timer_reset_k;

    /* RateTransition: '<S142>/Rate Transition1' */
    atv_ice_run_timer = ATV_DW.RateTransition1_Buffer0_k;
  }

  /* End of RateTransition: '<S142>/Rate Transition3' */

  /* Memory: '<S145>/Memory4' */
  ATV_B.Memory4_o = ATV_DW.Memory4_PreviousInput_o;

  /* Memory: '<S371>/Memory1' */
  rtb_Compare_c = ATV_DW.Memory1_PreviousInput_om;

  /* Logic: '<S145>/Logical Operator' incorporates:
   *  Logic: '<S371>/Logical Operator'
   *  Logic: '<S371>/Logical Operator1'
   */
  ATV_B.LogicalOperator_m = ((!ATV_B.Memory4_o) && rtb_Compare_c &&
    rtb_Compare_e1);

  /* Constant: '<S145>/atvc_odometer_reset' */
  ATV_B.atvc_odometer_reset_o = atvc_odometer_reset;

  /* Memory: '<S372>/Memory1' */
  rtb_Add5 = ATV_DW.Memory1_PreviousInput_o;

  /* Logic: '<S372>/Logical Operator' incorporates:
   *  Logic: '<S372>/Logical Operator1'
   */
  ATV_B.LogicalOperator_mo = ((ATV_B.atvc_odometer_reset_o == 0) && (rtb_Add5 !=
    0));

  /* S-Function (pnv_adaptive_scalar): '<S145>/pnv_AdaptiveScalar' incorporates:
   *  Constant: '<S145>/Constant10'
   */
  /*
   * S-Function Block: <S145>/pnv_AdaptiveScalar
   * [$Id: pnv_adaptive_scalar.tlc 46682 2015-05-20 19:09:48Z egriwicki $]
   */
  pnv_adap_scalar_f32
    (
     1.0,
     ATV_B.LogicalOperator_m,
     ATV_B.LogicalOperator_mo,
     &atvc_odometer,
     &ATV_B.pnv_AdaptiveScalar_g
     );

  /* Abs: '<S145>/Abs1' */
  if (ATV_B.RateTransition26 < 0) {
    rtb_Memory = (int16_T)-ATV_B.RateTransition26;
  } else {
    rtb_Memory = ATV_B.RateTransition26;
  }

  /* End of Abs: '<S145>/Abs1' */

  /* Abs: '<S145>/Abs' */
  if (ATV_B.rear_motor_speed < 0) {
    rtb_UnaryMinus_d = (int16_T)-ATV_B.rear_motor_speed;
  } else {
    rtb_UnaryMinus_d = ATV_B.rear_motor_speed;
  }

  /* End of Abs: '<S145>/Abs' */

  /* Product: '<S145>/Divide' incorporates:
   *  Constant: '<S145>/Constant'
   *  Sum: '<S145>/Add'
   */
  rtb_Gain1_j = (real32_T)(rtb_Memory + rtb_UnaryMinus_d) / 2.0F;

  /* Product: '<S145>/Product' incorporates:
   *  Constant: '<S145>/Constant1'
   *  Constant: '<S145>/Constant5'
   *  Constant: '<S145>/Constant6'
   *  Constant: '<S145>/wheelRad'
   *  DataTypeConversion: '<S145>/Data Type Conversion'
   *  Product: '<S145>/Product1'
   */
  ATV_B.Product = 1.0 / atvc_gear_ratio / 3.6 / 9.5492965855137211 *
    atvc_wheel_radius * rtb_Gain1_j;

  /* Gain: '<S145>/Gain1' incorporates:
   *  Gain: '<S145>/Gain'
   *  Gain: '<S145>/Gain3'
   */
  ATV_B.Gain1 = 36.0 * ATV_B.Product * 105.0 * 0.001;

  /* DataTypeConversion: '<S145>/Data Type Conversion1' */
  rtb_MultiportSwitch_0 = floor(ATV_B.Gain1);
  if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
    rtb_MultiportSwitch_0 = 0.0;
  } else {
    rtb_MultiportSwitch_0 = fmod(rtb_MultiportSwitch_0, 65536.0);
  }

  ATV_B.DataTypeConversion1 = (int16_T)(rtb_MultiportSwitch_0 < 0.0 ? (int32_T)
    (int16_T)-(int16_T)(uint16_T)-rtb_MultiportSwitch_0 : (int32_T)(int16_T)
    (uint16_T)rtb_MultiportSwitch_0);

  /* End of DataTypeConversion: '<S145>/Data Type Conversion1' */

  /* DataTypeConversion: '<S145>/Data Type Conversion3' */
  rtb_MultiportSwitch_0 = floor(ATV_B.pnv_AdaptiveScalar_g);
  if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
    rtb_MultiportSwitch_0 = 0.0;
  } else {
    rtb_MultiportSwitch_0 = fmod(rtb_MultiportSwitch_0, 4.294967296E+9);
  }

  /* DiscreteIntegrator: '<S145>/Discrete-Time Integrator' */
  if (ATV_B.LogicalOperator_mo && (ATV_DW.DiscreteTimeIntegrator_PrevRese <= 0))
  {
    ATV_DW.DiscreteTimeIntegrator_DSTATE = 0.0;
  }

  /* Gain: '<S145>/Gain5' incorporates:
   *  DataTypeConversion: '<S145>/Data Type Conversion3'
   */
  atv_odometer = mul_us32_hiSR(858993459, rtb_MultiportSwitch_0 < 0.0 ?
    -(int32_T)(uint32_T)-rtb_MultiportSwitch_0 : (int32_T)(uint32_T)
    rtb_MultiportSwitch_0, 1U);

  /* Math: '<S145>/Math Function' incorporates:
   *  Constant: '<S145>/Constant9'
   *  DiscreteIntegrator: '<S145>/Discrete-Time Integrator'
   */
  rtb_Switch_e = rt_remd_snf(ATV_DW.DiscreteTimeIntegrator_DSTATE, 100.0);

  /* Logic: '<S373>/FixPt Logical Operator' incorporates:
   *  Constant: '<S145>/Constant3'
   *  Constant: '<S145>/Constant4'
   *  RelationalOperator: '<S373>/Lower Test'
   *  RelationalOperator: '<S373>/Upper Test'
   */
  ATV_B.FixPtLogicalOperator = ((90.0 < rtb_Switch_e) && (rtb_Switch_e < 99.0));

  /* RateTransition: '<S146>/Rate Transition3' incorporates:
   *  Constant: '<S146>/Constant10'
   *  Constant: '<S146>/atvc_ice_run_timer_reset'
   *  RateTransition: '<S146>/Rate Transition2'
   */
  if (ATV_M->Timing.RateInteraction.TID0_4) {
    ATV_B.RateTransition3_d = 1.0;

    /* RateTransition: '<S146>/Rate Transition4' incorporates:
     *  Constant: '<S146>/Constant10'
     */
    ATV_B.RateTransition4_e = ATV_B.en_inv_rear_out;

    /* RateTransition: '<S146>/Rate Transition5' */
    ATV_B.RateTransition5_b = rtb_Compare_e1;
    ATV_B.RateTransition2_k = atvc_rmot_run_timer_reset;

    /* RateTransition: '<S146>/Rate Transition1' incorporates:
     *  Constant: '<S146>/atvc_ice_run_timer_reset'
     */
    atv_rmot_run_timer = ATV_DW.RateTransition1_Buffer0_i;
  }

  /* End of RateTransition: '<S146>/Rate Transition3' */

  /* RelationalOperator: '<S127>/Compare' */
  ATV_B.Compare_k = atv_4wd_din;

  /* RelationalOperator: '<S130>/Compare' */
  ATV_B.Compare_m = !atv_4wd_din;

  /* Memory: '<S140>/Memory1' */
  rtb_Compare_c = ATV_DW.Memory1_PreviousInput_e;

  /* DiscretePulseGenerator: '<S34>/Pulse Generator' */
  rtb_Switch_e = ((ATV_DW.clockTickCounter < 1) && (ATV_DW.clockTickCounter >= 0));
  if (ATV_DW.clockTickCounter >= 23999) {
    ATV_DW.clockTickCounter = 0;
  } else {
    ATV_DW.clockTickCounter++;
  }

  /* End of DiscretePulseGenerator: '<S34>/Pulse Generator' */

  /* Logic: '<S34>/Logical Operator7' incorporates:
   *  Constant: '<S131>/Constant'
   *  RelationalOperator: '<S131>/Compare'
   */
  ATV_B.LogicalOperator7 = ((atv_state_out == 2) || (rtb_Switch_e != 0.0));

  /* Logic: '<S140>/Logical Operator' incorporates:
   *  Logic: '<S140>/Logical Operator1'
   */
  ATV_B.LogicalOperator_pn = ((!rtb_Compare_c) && ATV_B.LogicalOperator7);

  /* Product: '<S147>/Product1' incorporates:
   *  Constant: '<S147>/Constant1'
   *  Constant: '<S147>/Constant5'
   *  Constant: '<S147>/Constant6'
   *  Constant: '<S147>/wheelRad1'
   */
  rtb_Switch_e = 119.6335876233159 / atvc_wheel_radius;

  /* DataTypeConversion: '<S147>/Data Type Conversion' incorporates:
   *  Constant: '<S34>/atvc_velocityLimitFwd'
   */
  rtb_Gain1_j = atvc_velocityLimitFwd;

  /* Gain: '<S147>/Gain1' */
  rtb_Gain1_j *= 0.277777791F;

  /* DataTypeConversion: '<S147>/Cast1' incorporates:
   *  Product: '<S147>/Product'
   */
  rtb_MultiportSwitch_0 = floor(rtb_Switch_e * rtb_Gain1_j);
  if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
    rtb_MultiportSwitch_0 = 0.0;
  } else {
    rtb_MultiportSwitch_0 = fmod(rtb_MultiportSwitch_0, 65536.0);
  }

  ATV_B.Cast1 = (uint16_T)(rtb_MultiportSwitch_0 < 0.0 ? (int32_T)(uint16_T)
    -(int16_T)(uint16_T)-rtb_MultiportSwitch_0 : (int32_T)(uint16_T)
    rtb_MultiportSwitch_0);

  /* End of DataTypeConversion: '<S147>/Cast1' */

  /* DataTypeConversion: '<S147>/Data Type Conversion1' incorporates:
   *  Constant: '<S34>/atvc_velocityLimitRwd'
   */
  rtb_Gain1_j = atvc_velocityLimitRwd;

  /* Gain: '<S147>/Gain2' */
  rtb_Gain1_j *= 0.277777791F;

  /* DataTypeConversion: '<S147>/Cast2' incorporates:
   *  Product: '<S147>/Product2'
   */
  rtb_MultiportSwitch_0 = floor(rtb_Switch_e * rtb_Gain1_j);
  if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
    rtb_MultiportSwitch_0 = 0.0;
  } else {
    rtb_MultiportSwitch_0 = fmod(rtb_MultiportSwitch_0, 65536.0);
  }

  ATV_B.Cast2 = (uint16_T)(rtb_MultiportSwitch_0 < 0.0 ? (int32_T)(uint16_T)
    -(int16_T)(uint16_T)-rtb_MultiportSwitch_0 : (int32_T)(uint16_T)
    rtb_MultiportSwitch_0);

  /* End of DataTypeConversion: '<S147>/Cast2' */

  /* RateTransition: '<S5>/Rate Transition6' */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition6_e = ATV_DW.RateTransition6_Buffer0_p;
  }

  /* End of RateTransition: '<S5>/Rate Transition6' */

  /* Switch: '<S5>/Switch1' incorporates:
   *  Constant: '<S5>/Constant1'
   */
  if (rtb_AND_j) {
    rtb_MultiportSwitch_0 = floor(ATV_B.RateTransition6_e);
    if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
      rtb_MultiportSwitch_0 = 0.0;
    } else {
      rtb_MultiportSwitch_0 = fmod(rtb_MultiportSwitch_0, 65536.0);
    }

    atv_bmsMaxDisCurr = (int16_T)(rtb_MultiportSwitch_0 < 0.0 ? (int32_T)
      (int16_T)-(int16_T)(uint16_T)-rtb_MultiportSwitch_0 : (int32_T)(int16_T)
      (uint16_T)rtb_MultiportSwitch_0);
  } else {
    atv_bmsMaxDisCurr = 0;
  }

  /* End of Switch: '<S5>/Switch1' */

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

  /* S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput13' incorporates:
   *  Constant: '<Root>/Constant1'
   */
  /* S-Function Block: <Root>/pdx_DigitalOutput13
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)true,
                         (U8)0,
                         (U8)false,
                         (U8)1.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_XD4, state, FALSE);
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

  /* S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput5' incorporates:
   *  Constant: '<Root>/Constant'
   */
  /* S-Function Block: <Root>/pdx_DigitalOutput5
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)false,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_XG3_DISABLE, state, FALSE);
  }

  /* S-Function (pnv_status): '<Root>/pnv_Status' */
  /*
   * S-Function Block: <Root>/pnv_Status
   * [$Id: pnv_status.tlc 32567 2013-02-12 09:45:02Z amcmillan $]
   */
  ATV_B.pnv_Status_o1 = pnv_is_ram_adap_csum_valid();
  ATV_B.pnv_Status_o2 = pnv_is_flash_adap_csum_valid();

  /* RateTransition: '<Root>/Rate Transition33' */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition33 = ATV_DW.RateTransition33_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition33' */

  /* Chart: '<S29>/Chart' incorporates:
   *  Logic: '<S29>/Logical Operator'
   *  Logic: '<S29>/Logical Operator1'
   */
  ATV_Chart_c(ATV_B.RateTransition33 || (!ATV_B.en_inv_front_out),
              &ATV_B.sf_Chart_cv, &ATV_DW.sf_Chart_cv);

  /* RateTransition: '<Root>/Rate Transition35' */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition35 = ATV_DW.RateTransition35_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition35' */

  /* Chart: '<S29>/Chart1' incorporates:
   *  Logic: '<S29>/Logical Operator3'
   *  Logic: '<S29>/Logical Operator4'
   */
  ATV_Chart_c(ATV_B.RateTransition35 || (!ATV_B.en_inv_rear_out),
              &ATV_B.sf_Chart1, &ATV_DW.sf_Chart1);

  /* RateTransition: '<Root>/Rate Transition34' */
  if (ATV_M->Timing.RateInteraction.TID0_2) {
    ATV_B.RateTransition34 = ATV_DW.RateTransition34_Buffer0;
  }

  /* End of RateTransition: '<Root>/Rate Transition34' */

  /* Chart: '<S29>/Chart2' incorporates:
   *  Logic: '<S29>/Logical Operator6'
   *  Logic: '<S29>/Logical Operator7'
   */
  ATV_Chart_c(ATV_B.RateTransition34 || (!ATV_B.en_inv_gen_out),
              &ATV_B.sf_Chart2, &ATV_DW.sf_Chart2);

  /* RelationalOperator: '<S71>/Compare' incorporates:
   *  Constant: '<S71>/Constant'
   */
  ATV_B.Compare_c = (ATV_B.RateTransition6_a > atvc_ErrTempMot);

  /* RelationalOperator: '<S72>/Compare' incorporates:
   *  Constant: '<S72>/Constant'
   */
  ATV_B.Compare_ex = (ATV_B.RateTransition8 > atvc_ErrTempMot);

  /* RelationalOperator: '<S73>/Compare' incorporates:
   *  Constant: '<S73>/Constant'
   */
  ATV_B.Compare_fw = (ATV_B.RateTransition10 > atvc_ErrTempMot);

  /* RelationalOperator: '<S74>/Compare' incorporates:
   *  Constant: '<S74>/Constant'
   */
  ATV_B.Compare_lc = (ATV_B.RateTransition7 > atvc_ErrTempInv);

  /* RelationalOperator: '<S75>/Compare' incorporates:
   *  Constant: '<S75>/Constant'
   */
  ATV_B.Compare_ew = (ATV_B.RateTransition9 > atvc_ErrTempInv);

  /* RelationalOperator: '<S76>/Compare' incorporates:
   *  Constant: '<S76>/Constant'
   */
  ATV_B.Compare_mq = (ATV_B.RateTransition11_n > atvc_ErrTempInv);

  /* MinMax: '<S21>/MinMax' */
  if (ATV_B.RateTransition6_a > ATV_B.RateTransition8) {
    rtb_Memory = ATV_B.RateTransition6_a;
  } else {
    rtb_Memory = ATV_B.RateTransition8;
  }

  if (rtb_Memory <= ATV_B.RateTransition10) {
    rtb_Memory = ATV_B.RateTransition10;
  }

  /* End of MinMax: '<S21>/MinMax' */

  /* RelationalOperator: '<S70>/Compare' incorporates:
   *  Constant: '<S70>/Constant'
   */
  ATV_B.Compare_g = (rtb_Memory > atvc_maxTempMotor);

  /* MinMax: '<S21>/MinMax1' */
  if (ATV_B.RateTransition7 > ATV_B.RateTransition9) {
    rtb_Memory = ATV_B.RateTransition7;
  } else {
    rtb_Memory = ATV_B.RateTransition9;
  }

  if (rtb_Memory <= ATV_B.RateTransition11_n) {
    rtb_Memory = ATV_B.RateTransition11_n;
  }

  /* End of MinMax: '<S21>/MinMax1' */

  /* RelationalOperator: '<S69>/Compare' incorporates:
   *  Constant: '<S69>/Constant'
   */
  ATV_B.Compare_o = (rtb_Memory > atvc_maxTempInv);

  /* Product: '<S30>/Divide' incorporates:
   *  Constant: '<S30>/Constant'
   *  Sum: '<S30>/Add'
   */
  rtb_MultiportSwitch1 = (real_T)(int16_T)(atv_bmsMaxChgCurr +
    atv_GenCurrentSetPoint) / 2.0;

  /* Saturate: '<S30>/Saturation' */
  if (rtb_MultiportSwitch1 > 1000.0) {
    rtb_MultiportSwitch1 = 1000.0;
  } else {
    if (rtb_MultiportSwitch1 < 0.0) {
      rtb_MultiportSwitch1 = 0.0;
    }
  }

  atv_reg_current_limit = (uint16_T)(int32_T)fmod((int32_T)floor
    (rtb_MultiportSwitch1), 65536.0);

  /* End of Saturate: '<S30>/Saturation' */

  /* Switch: '<S30>/Switch' incorporates:
   *  Constant: '<S30>/Constant1'
   *  Constant: '<S30>/Constant2'
   */
  if (atv_4wd_din) {
    u0 = 2;
  } else {
    u0 = 1;
  }

  /* End of Switch: '<S30>/Switch' */

  /* Product: '<S30>/Divide1' */
  rtb_MultiportSwitch1 = (real_T)atv_bmsMaxDisCurr / (real_T)u0;

  /* Saturate: '<S30>/Saturation1' */
  if (rtb_MultiportSwitch1 > 1000.0) {
    rtb_MultiportSwitch1 = 1000.0;
  } else {
    if (rtb_MultiportSwitch1 < 0.0) {
      rtb_MultiportSwitch1 = 0.0;
    }
  }

  atv_mtr_current_limit = (uint16_T)(int32_T)fmod((int32_T)floor
    (rtb_MultiportSwitch1), 65536.0);

  /* End of Saturate: '<S30>/Saturation1' */

  /* DataTypeConversion: '<S31>/Data Type Conversion3' incorporates:
   *  Constant: '<S31>/atvc_velocityLimitFwd1'
   */
  rtb_Gain1_j = atvc_max_soc;

  /* DataTypeConversion: '<S31>/Data Type Conversion1' */
  cumRevIndex = ATV_B.RateTransition4;

  /* Product: '<S31>/Divide' incorporates:
   *  Constant: '<S31>/atvc_velocityLimitFwd'
   *  DataTypeConversion: '<S31>/Data Type Conversion4'
   *  Gain: '<S31>/Gain'
   *  Sum: '<S31>/Subtract'
   *  Sum: '<S31>/Subtract1'
   */
  cumRevIndex = (cumRevIndex - (real32_T)atvc_min_soc) * 100.0F / (rtb_Gain1_j -
    (real32_T)atvc_min_soc);

  /* Switch: '<S108>/Switch2' incorporates:
   *  RelationalOperator: '<S108>/LowerRelop1'
   */
  if (!(cumRevIndex > rtb_Gain1_j)) {
    /* Switch: '<S108>/Switch' incorporates:
     *  Constant: '<S31>/atvc_velocityLimitFwd'
     *  DataTypeConversion: '<S31>/Data Type Conversion4'
     *  RelationalOperator: '<S108>/UpperRelop'
     */
    if (cumRevIndex < atvc_min_soc) {
      rtb_Gain1_j = atvc_min_soc;
    } else {
      rtb_Gain1_j = cumRevIndex;
    }

    /* End of Switch: '<S108>/Switch' */
  }

  /* End of Switch: '<S108>/Switch2' */

  /* DataTypeConversion: '<S31>/Data Type Conversion2' */
  rtb_Gain1_j = (real32_T)floor(rtb_Gain1_j);
  if (rtIsNaNF(rtb_Gain1_j)) {
    atv_vehicle_SOC = 0U;
  } else {
    atv_vehicle_SOC = (uint8_T)(real32_T)fmod(rtb_Gain1_j, 256.0);
  }

  /* End of DataTypeConversion: '<S31>/Data Type Conversion2' */

  /* Outputs for Enabled SubSystem: '<Root>/CANBUS_Output_Processing' incorporates:
   *  EnablePort: '<S3>/Enable'
   */
  /* RelationalOperator: '<S23>/Compare' incorporates:
   *  Constant: '<S23>/Constant'
   */
  if (atv_state_out > 2) {
    if (!ATV_DW.CANBUS_Output_Processing_MODE) {
      ATV_DW.CANBUS_Output_Processing_MODE = true;
    }

    /* S-Function (psc_cpu_loading): '<S3>/psc_CpuLoading' */
    /* S-Function Block: <S3>/psc_CpuLoading
     * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
     */
    ATV_B.psc_CpuLoading = psc_get_cpu_loading();

    /* RelationalOperator: '<S3>/Relational Operator' incorporates:
     *  Constant: '<S3>/Constant10'
     */
    ATV_B.RelationalOperator_l = (atv_state_out == 7);

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage_in_port_buffer[20];
      F32 * pcx_CANdb_TransmitMessage_in_port_ptr[20];
      static const U8 pcx_CANdb_TransmitMessage_field_start_pos[20] = {
        0, 8, 16, 25, 26, 27, 24, 28, 29, 30,
        31, 32, 33, 35, 34, 36, 39, 40, 41, 42,
      };

      static const U8 pcx_CANdb_TransmitMessage_field_width[20] = {
        8, 8, 8, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 3, 1, 1, 1, 1,
      };

      static const U8 pcx_CANdb_TransmitMessage_field_is_signed[20] = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      };

      static const U8 pcx_CANdb_TransmitMessage_field_valtype[20] = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      };

      static const U8 pcx_CANdb_TransmitMessage_field_order[20] = {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
      };

      static const F32 pcx_CANdb_TransmitMessage_field_eng_min[20] = {
        0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0,
      };

      static const F32 pcx_CANdb_TransmitMessage_field_eng_max[20] = {
        255.0, 255.0, 255.0, 1.0, 1.0,
        1.0, 1.0, 1.0, 1.0, 1.0,
        1.0, 1.0, 1.0, 1.0, 1.0,
        7.0, 1.0, 1.0, 1.0, 1.0,
      };

      static const F32 pcx_CANdb_TransmitMessage_field_scale[20] = {
        1.0, 1.0, 1.0, 1.0, 1.0,
        1.0, 1.0, 1.0, 1.0, 1.0,
        1.0, 1.0, 1.0, 1.0, 1.0,
        1.0, 1.0, 1.0, 1.0, 1.0,
      };

      static const F32 pcx_CANdb_TransmitMessage_field_offset[20] = {
        0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0,
      };

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
        pcx_CANdb_TransmitMessage_in_port_buffer[5] = ATV_B.atv_run_mode;
        pcx_CANdb_TransmitMessage_in_port_ptr[5] =
          &pcx_CANdb_TransmitMessage_in_port_buffer[5];
        pcx_CANdb_TransmitMessage_in_port_buffer[6] = key_signal;
        pcx_CANdb_TransmitMessage_in_port_ptr[6] =
          &pcx_CANdb_TransmitMessage_in_port_buffer[6];
        pcx_CANdb_TransmitMessage_in_port_buffer[7] = atv_fwd_mode_in;
        pcx_CANdb_TransmitMessage_in_port_ptr[7] =
          &pcx_CANdb_TransmitMessage_in_port_buffer[7];
        pcx_CANdb_TransmitMessage_in_port_buffer[8] = atv_rwd_mode_in;
        pcx_CANdb_TransmitMessage_in_port_ptr[8] =
          &pcx_CANdb_TransmitMessage_in_port_buffer[8];
        pcx_CANdb_TransmitMessage_in_port_buffer[9] = ATV_B.Compare_m;
        pcx_CANdb_TransmitMessage_in_port_ptr[9] =
          &pcx_CANdb_TransmitMessage_in_port_buffer[9];
        pcx_CANdb_TransmitMessage_in_port_buffer[10] = ATV_B.Compare_k;
        pcx_CANdb_TransmitMessage_in_port_ptr[10] =
          &pcx_CANdb_TransmitMessage_in_port_buffer[10];
        pcx_CANdb_TransmitMessage_in_port_buffer[11] = atv_HandBrakeStatus;
        pcx_CANdb_TransmitMessage_in_port_ptr[11] =
          &pcx_CANdb_TransmitMessage_in_port_buffer[11];
        pcx_CANdb_TransmitMessage_in_port_buffer[12] = ATV_B.atv_StartBtn_din;
        pcx_CANdb_TransmitMessage_in_port_ptr[12] =
          &pcx_CANdb_TransmitMessage_in_port_buffer[12];
        pcx_CANdb_TransmitMessage_in_port_buffer[13] = ATV_B.chg_complete_out;
        pcx_CANdb_TransmitMessage_in_port_ptr[13] =
          &pcx_CANdb_TransmitMessage_in_port_buffer[13];
        pcx_CANdb_TransmitMessage_in_port_buffer[14] =
          ATV_B.RelationalOperator_l;
        pcx_CANdb_TransmitMessage_in_port_ptr[14] =
          &pcx_CANdb_TransmitMessage_in_port_buffer[14];
        pcx_CANdb_TransmitMessage_in_port_buffer[15] = atv_regmap;
        pcx_CANdb_TransmitMessage_in_port_ptr[15] =
          &pcx_CANdb_TransmitMessage_in_port_buffer[15];
        pcx_CANdb_TransmitMessage_in_port_buffer[16] = ATV_B.apu_req_out;
        pcx_CANdb_TransmitMessage_in_port_ptr[16] =
          &pcx_CANdb_TransmitMessage_in_port_buffer[16];
        pcx_CANdb_TransmitMessage_in_port_buffer[17] = ATV_B.heater_warn;
        pcx_CANdb_TransmitMessage_in_port_ptr[17] =
          &pcx_CANdb_TransmitMessage_in_port_buffer[17];
        pcx_CANdb_TransmitMessage_in_port_buffer[18] = ATV_B.heater_disabled;
        pcx_CANdb_TransmitMessage_in_port_ptr[18] =
          &pcx_CANdb_TransmitMessage_in_port_buffer[18];
        pcx_CANdb_TransmitMessage_in_port_buffer[19] = atv_yg1;
        pcx_CANdb_TransmitMessage_in_port_ptr[19] =
          &pcx_CANdb_TransmitMessage_in_port_buffer[19];
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
                         pcx_CANdb_TransmitMessage_field_offset, 0, 1, 20);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage_h = !retval;
    }

    /* RateTransition: '<S3>/Rate Transition4' */
    if (ATV_M->Timing.RateInteraction.TID0_2) {
      ATV_B.RateTransition4_b = ATV_B.hvm_ctrl_out;

      /* RateTransition: '<S3>/Rate Transition' */
      ATV_B.RateTransition_b = ATV_B.hvp_ctrl_out;

      /* RateTransition: '<S3>/Rate Transition1' */
      ATV_B.RateTransition1_m = ATV_B.chg_ctrl_out;

      /* RateTransition: '<S3>/Rate Transition2' */
      ATV_B.RateTransition2_h = ATV_B.heater_ctrl_out;

      /* RateTransition: '<S3>/Rate Transition8' */
      ATV_B.RateTransition8_a = ATV_B.en_inv_front_out;

      /* RateTransition: '<S3>/Rate Transition9' */
      ATV_B.RateTransition9_i = ATV_B.en_inv_rear_out;

      /* RateTransition: '<S3>/Rate Transition10' */
      ATV_B.RateTransition10_g = ATV_B.en_inv_gen_out;
    }

    /* End of RateTransition: '<S3>/Rate Transition4' */

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage10' incorporates:
     *  Constant: '<S3>/Constant1'
     *  Constant: '<S3>/Constant12'
     *  Constant: '<S3>/Constant5'
     */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage10
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage10_in_port_buffer[3];
      F32 * pcx_CANdb_TransmitMessage10_in_port_ptr[3];
      static const U8 pcx_CANdb_TransmitMessage10_field_start_pos[3] = {
        32, 16, 0, };

      static const U8 pcx_CANdb_TransmitMessage10_field_width[3] = {
        16, 16, 16, };

      static const U8 pcx_CANdb_TransmitMessage10_field_is_signed[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage10_field_valtype[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage10_field_order[3] = {
        1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage10_field_eng_min[3] = {
        0.0, 0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage10_field_eng_max[3] = {
        65535.0, 65535.0, 65535.0, };

      static const F32 pcx_CANdb_TransmitMessage10_field_scale[3] = {
        1.0, 1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage10_field_offset[3] = {
        0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage10_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage10_in_port_buffer[0] = 10000.0;
        pcx_CANdb_TransmitMessage10_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage10_in_port_buffer[0];
        pcx_CANdb_TransmitMessage10_in_port_buffer[1] = 20000.0;
        pcx_CANdb_TransmitMessage10_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage10_in_port_buffer[1];
        pcx_CANdb_TransmitMessage10_in_port_buffer[2] = atvc_max_trq_rear;
        pcx_CANdb_TransmitMessage10_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage10_in_port_buffer[2];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage10_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage10_field_start_pos,
                         pcx_CANdb_TransmitMessage10_field_width,
                         pcx_CANdb_TransmitMessage10_field_is_signed,
                         pcx_CANdb_TransmitMessage10_field_valtype,
                         pcx_CANdb_TransmitMessage10_field_order,
                         pcx_CANdb_TransmitMessage10_field_eng_min,
                         pcx_CANdb_TransmitMessage10_field_eng_max,
                         pcx_CANdb_TransmitMessage10_field_scale,
                         pcx_CANdb_TransmitMessage10_field_offset, 0, 1, 3);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage10_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage10 = !retval;
    }

    /* Switch: '<S3>/Switch' incorporates:
     *  Constant: '<S157>/Constant'
     *  Constant: '<S3>/Constant4'
     *  Constant: '<S3>/Constant7'
     *  RelationalOperator: '<S157>/Relational Operator2'
     */
    if (rtb_DiscreteTimeIntegrator > 0.0) {
      ATV_B.Switch = 0.0;
    } else {
      ATV_B.Switch = atvc_max_neutralbrake_trq;
    }

    /* End of Switch: '<S3>/Switch' */

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage11' incorporates:
     *  Constant: '<S3>/Constant12'
     */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage11
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage11_in_port_buffer[3];
      F32 * pcx_CANdb_TransmitMessage11_in_port_ptr[3];
      static const U8 pcx_CANdb_TransmitMessage11_field_start_pos[3] = {
        32, 16, 0, };

      static const U8 pcx_CANdb_TransmitMessage11_field_width[3] = {
        16, 16, 16, };

      static const U8 pcx_CANdb_TransmitMessage11_field_is_signed[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage11_field_valtype[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage11_field_order[3] = {
        1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage11_field_eng_min[3] = {
        0.0, 0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage11_field_eng_max[3] = {
        65535.0, 65535.0, 65535.0, };

      static const F32 pcx_CANdb_TransmitMessage11_field_scale[3] = {
        1.0, 1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage11_field_offset[3] = {
        0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage11_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage11_in_port_buffer[0] = 10000.0;
        pcx_CANdb_TransmitMessage11_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage11_in_port_buffer[0];
        pcx_CANdb_TransmitMessage11_in_port_buffer[1] = 10000.0;
        pcx_CANdb_TransmitMessage11_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage11_in_port_buffer[1];
        pcx_CANdb_TransmitMessage11_in_port_buffer[2] = ATV_B.Switch;
        pcx_CANdb_TransmitMessage11_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage11_in_port_buffer[2];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage11_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage11_field_start_pos,
                         pcx_CANdb_TransmitMessage11_field_width,
                         pcx_CANdb_TransmitMessage11_field_is_signed,
                         pcx_CANdb_TransmitMessage11_field_valtype,
                         pcx_CANdb_TransmitMessage11_field_order,
                         pcx_CANdb_TransmitMessage11_field_eng_min,
                         pcx_CANdb_TransmitMessage11_field_eng_max,
                         pcx_CANdb_TransmitMessage11_field_scale,
                         pcx_CANdb_TransmitMessage11_field_offset, 0, 1, 3);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage11_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage11 = !retval;
    }

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage12' incorporates:
     *  Constant: '<S3>/Constant12'
     *  Constant: '<S3>/Constant6'
     */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage12
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage12_in_port_buffer[3];
      F32 * pcx_CANdb_TransmitMessage12_in_port_ptr[3];
      static const U8 pcx_CANdb_TransmitMessage12_field_start_pos[3] = {
        32, 16, 0, };

      static const U8 pcx_CANdb_TransmitMessage12_field_width[3] = {
        16, 16, 16, };

      static const U8 pcx_CANdb_TransmitMessage12_field_is_signed[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage12_field_valtype[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage12_field_order[3] = {
        1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage12_field_eng_min[3] = {
        0.0, 0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage12_field_eng_max[3] = {
        65535.0, 65535.0, 65535.0, };

      static const F32 pcx_CANdb_TransmitMessage12_field_scale[3] = {
        1.0, 1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage12_field_offset[3] = {
        0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage12_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage12_in_port_buffer[0] = 10000.0;
        pcx_CANdb_TransmitMessage12_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage12_in_port_buffer[0];
        pcx_CANdb_TransmitMessage12_in_port_buffer[1] = 10000.0;
        pcx_CANdb_TransmitMessage12_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage12_in_port_buffer[1];
        pcx_CANdb_TransmitMessage12_in_port_buffer[2] = atvc_max_footbrake_trq;
        pcx_CANdb_TransmitMessage12_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage12_in_port_buffer[2];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage12_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage12_field_start_pos,
                         pcx_CANdb_TransmitMessage12_field_width,
                         pcx_CANdb_TransmitMessage12_field_is_signed,
                         pcx_CANdb_TransmitMessage12_field_valtype,
                         pcx_CANdb_TransmitMessage12_field_order,
                         pcx_CANdb_TransmitMessage12_field_eng_min,
                         pcx_CANdb_TransmitMessage12_field_eng_max,
                         pcx_CANdb_TransmitMessage12_field_scale,
                         pcx_CANdb_TransmitMessage12_field_offset, 0, 1, 3);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage12_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage12 = !retval;
    }

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage13' incorporates:
     *  Constant: '<S3>/Constant1'
     *  Constant: '<S3>/Constant12'
     *  Constant: '<S3>/Constant9'
     */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage13
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage13_in_port_buffer[3];
      F32 * pcx_CANdb_TransmitMessage13_in_port_ptr[3];
      static const U8 pcx_CANdb_TransmitMessage13_field_start_pos[3] = {
        32, 16, 0, };

      static const U8 pcx_CANdb_TransmitMessage13_field_width[3] = {
        16, 16, 16, };

      static const U8 pcx_CANdb_TransmitMessage13_field_is_signed[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage13_field_valtype[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage13_field_order[3] = {
        1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage13_field_eng_min[3] = {
        0.0, 0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage13_field_eng_max[3] = {
        65535.0, 65535.0, 65535.0, };

      static const F32 pcx_CANdb_TransmitMessage13_field_scale[3] = {
        1.0, 1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage13_field_offset[3] = {
        0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage13_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage13_in_port_buffer[0] = 10000.0;
        pcx_CANdb_TransmitMessage13_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage13_in_port_buffer[0];
        pcx_CANdb_TransmitMessage13_in_port_buffer[1] = 20000.0;
        pcx_CANdb_TransmitMessage13_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage13_in_port_buffer[1];
        pcx_CANdb_TransmitMessage13_in_port_buffer[2] = atvc_max_trq_front;
        pcx_CANdb_TransmitMessage13_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage13_in_port_buffer[2];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage13_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage13_field_start_pos,
                         pcx_CANdb_TransmitMessage13_field_width,
                         pcx_CANdb_TransmitMessage13_field_is_signed,
                         pcx_CANdb_TransmitMessage13_field_valtype,
                         pcx_CANdb_TransmitMessage13_field_order,
                         pcx_CANdb_TransmitMessage13_field_eng_min,
                         pcx_CANdb_TransmitMessage13_field_eng_max,
                         pcx_CANdb_TransmitMessage13_field_scale,
                         pcx_CANdb_TransmitMessage13_field_offset, 0, 1, 3);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage13_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage13 = !retval;
    }

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage14' incorporates:
     *  Constant: '<S3>/Constant12'
     */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage14
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage14_in_port_buffer[3];
      F32 * pcx_CANdb_TransmitMessage14_in_port_ptr[3];
      static const U8 pcx_CANdb_TransmitMessage14_field_start_pos[3] = {
        32, 16, 0, };

      static const U8 pcx_CANdb_TransmitMessage14_field_width[3] = {
        16, 16, 16, };

      static const U8 pcx_CANdb_TransmitMessage14_field_is_signed[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage14_field_valtype[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage14_field_order[3] = {
        1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage14_field_eng_min[3] = {
        0.0, 0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage14_field_eng_max[3] = {
        65535.0, 65535.0, 65535.0, };

      static const F32 pcx_CANdb_TransmitMessage14_field_scale[3] = {
        1.0, 1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage14_field_offset[3] = {
        0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage14_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage14_in_port_buffer[0] = 10000.0;
        pcx_CANdb_TransmitMessage14_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage14_in_port_buffer[0];
        pcx_CANdb_TransmitMessage14_in_port_buffer[1] = 10000.0;
        pcx_CANdb_TransmitMessage14_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage14_in_port_buffer[1];
        pcx_CANdb_TransmitMessage14_in_port_buffer[2] = ATV_B.Switch;
        pcx_CANdb_TransmitMessage14_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage14_in_port_buffer[2];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage14_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage14_field_start_pos,
                         pcx_CANdb_TransmitMessage14_field_width,
                         pcx_CANdb_TransmitMessage14_field_is_signed,
                         pcx_CANdb_TransmitMessage14_field_valtype,
                         pcx_CANdb_TransmitMessage14_field_order,
                         pcx_CANdb_TransmitMessage14_field_eng_min,
                         pcx_CANdb_TransmitMessage14_field_eng_max,
                         pcx_CANdb_TransmitMessage14_field_scale,
                         pcx_CANdb_TransmitMessage14_field_offset, 0, 1, 3);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage14_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage14 = !retval;
    }

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage15' incorporates:
     *  Constant: '<S3>/Constant12'
     *  Constant: '<S3>/Constant6'
     */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage15
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage15_in_port_buffer[3];
      F32 * pcx_CANdb_TransmitMessage15_in_port_ptr[3];
      static const U8 pcx_CANdb_TransmitMessage15_field_start_pos[3] = {
        32, 16, 0, };

      static const U8 pcx_CANdb_TransmitMessage15_field_width[3] = {
        16, 16, 16, };

      static const U8 pcx_CANdb_TransmitMessage15_field_is_signed[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage15_field_valtype[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage15_field_order[3] = {
        1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage15_field_eng_min[3] = {
        0.0, 0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage15_field_eng_max[3] = {
        65535.0, 65535.0, 65535.0, };

      static const F32 pcx_CANdb_TransmitMessage15_field_scale[3] = {
        1.0, 1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage15_field_offset[3] = {
        0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage15_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage15_in_port_buffer[0] = 10000.0;
        pcx_CANdb_TransmitMessage15_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage15_in_port_buffer[0];
        pcx_CANdb_TransmitMessage15_in_port_buffer[1] = 10000.0;
        pcx_CANdb_TransmitMessage15_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage15_in_port_buffer[1];
        pcx_CANdb_TransmitMessage15_in_port_buffer[2] = atvc_max_footbrake_trq;
        pcx_CANdb_TransmitMessage15_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage15_in_port_buffer[2];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage15_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage15_field_start_pos,
                         pcx_CANdb_TransmitMessage15_field_width,
                         pcx_CANdb_TransmitMessage15_field_is_signed,
                         pcx_CANdb_TransmitMessage15_field_valtype,
                         pcx_CANdb_TransmitMessage15_field_order,
                         pcx_CANdb_TransmitMessage15_field_eng_min,
                         pcx_CANdb_TransmitMessage15_field_eng_max,
                         pcx_CANdb_TransmitMessage15_field_scale,
                         pcx_CANdb_TransmitMessage15_field_offset, 0, 1, 3);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage15_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage15 = !retval;
    }

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage2' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage2
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
        65535.0, 65535.0, 65535.0, 65535.0, };

      static const F32 pcx_CANdb_TransmitMessage2_field_scale[4] = {
        1.0, 1.0, 1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage2_field_offset[4] = {
        0.0, 0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage2_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage2_in_port_buffer[0] = atv_regen_x1000_rear;
        pcx_CANdb_TransmitMessage2_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage2_in_port_buffer[0];
        pcx_CANdb_TransmitMessage2_in_port_buffer[1] =
          atv_motoring_x1000_rear_final;
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

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage20' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage20
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage20_in_port_buffer[4];
      F32 * pcx_CANdb_TransmitMessage20_in_port_ptr[4];
      static const U8 pcx_CANdb_TransmitMessage20_field_start_pos[4] = {
        0, 32, 48, 16, };

      static const U8 pcx_CANdb_TransmitMessage20_field_width[4] = {
        16, 16, 16, 16, };

      static const U8 pcx_CANdb_TransmitMessage20_field_is_signed[4] = {
        0, 0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage20_field_valtype[4] = {
        0, 0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage20_field_order[4] = {
        1, 1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage20_field_eng_min[4] = {
        0.0, 0.0, 0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage20_field_eng_max[4] = {
        6553.5, 6553.5, 6553.5, 6553.5, };

      static const F32 pcx_CANdb_TransmitMessage20_field_scale[4] = {
        0.1, 0.1, 0.1, 0.1, };

      static const F32 pcx_CANdb_TransmitMessage20_field_offset[4] = {
        0.0, 0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage20_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage20_in_port_buffer[0] = atv_throttleX1000;
        pcx_CANdb_TransmitMessage20_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage20_in_port_buffer[0];
        pcx_CANdb_TransmitMessage20_in_port_buffer[1] = atv_regen_x1000_rear;
        pcx_CANdb_TransmitMessage20_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage20_in_port_buffer[1];
        pcx_CANdb_TransmitMessage20_in_port_buffer[2] = atv_brake_pedalX1000;
        pcx_CANdb_TransmitMessage20_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage20_in_port_buffer[2];
        pcx_CANdb_TransmitMessage20_in_port_buffer[3] =
          atv_motoring_x1000_front_final;
        pcx_CANdb_TransmitMessage20_in_port_ptr[3] =
          &pcx_CANdb_TransmitMessage20_in_port_buffer[3];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage20_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage20_field_start_pos,
                         pcx_CANdb_TransmitMessage20_field_width,
                         pcx_CANdb_TransmitMessage20_field_is_signed,
                         pcx_CANdb_TransmitMessage20_field_valtype,
                         pcx_CANdb_TransmitMessage20_field_order,
                         pcx_CANdb_TransmitMessage20_field_eng_min,
                         pcx_CANdb_TransmitMessage20_field_eng_max,
                         pcx_CANdb_TransmitMessage20_field_scale,
                         pcx_CANdb_TransmitMessage20_field_offset, 0, 1, 4);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage20_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage20 = !retval;
    }

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage23' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage23
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage23_in_port_buffer[2];
      F32 * pcx_CANdb_TransmitMessage23_in_port_ptr[2];
      static const U8 pcx_CANdb_TransmitMessage23_field_start_pos[2] = {
        0, 12, };

      static const U8 pcx_CANdb_TransmitMessage23_field_width[2] = {
        12, 12, };

      static const U8 pcx_CANdb_TransmitMessage23_field_is_signed[2] = {
        0, 0, };

      static const U8 pcx_CANdb_TransmitMessage23_field_valtype[2] = {
        0, 0, };

      static const U8 pcx_CANdb_TransmitMessage23_field_order[2] = {
        1, 1, };

      static const F32 pcx_CANdb_TransmitMessage23_field_eng_min[2] = {
        0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage23_field_eng_max[2] = {
        40.95, 40.95, };

      static const F32 pcx_CANdb_TransmitMessage23_field_scale[2] = {
        0.01, 0.01, };

      static const F32 pcx_CANdb_TransmitMessage23_field_offset[2] = {
        0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage23_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage23_in_port_buffer[0] = atv_xd1_key_ain;
        pcx_CANdb_TransmitMessage23_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage23_in_port_buffer[0];
        pcx_CANdb_TransmitMessage23_in_port_buffer[1] = atv_12v;
        pcx_CANdb_TransmitMessage23_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage23_in_port_buffer[1];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage23_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage23_field_start_pos,
                         pcx_CANdb_TransmitMessage23_field_width,
                         pcx_CANdb_TransmitMessage23_field_is_signed,
                         pcx_CANdb_TransmitMessage23_field_valtype,
                         pcx_CANdb_TransmitMessage23_field_order,
                         pcx_CANdb_TransmitMessage23_field_eng_min,
                         pcx_CANdb_TransmitMessage23_field_eng_max,
                         pcx_CANdb_TransmitMessage23_field_scale,
                         pcx_CANdb_TransmitMessage23_field_offset, 0, 1, 2);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage23_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage23 = !retval;
    }

    /* UnaryMinus: '<S3>/Unary Minus2' incorporates:
     *  DataTypeConversion: '<S3>/Data Type Conversion2'
     */
    rtb_Memory = (int16_T)-(int16_T)atv_reg_current_limit;

    /* UnaryMinus: '<S3>/Unary Minus' incorporates:
     *  Constant: '<S3>/atvc_maxRegenCurr'
     *  DataTypeConversion: '<S3>/Data Type Conversion'
     */
    ATV_B.Saturation_d = (int16_T)-(int16_T)atvc_maxRegenCurr;

    /* MinMax: '<S3>/MinMax1' */
    if (rtb_Memory > ATV_B.Saturation_d) {
      /* UnaryMinus: '<S3>/Unary Minus' */
      ATV_B.Saturation_d = rtb_Memory;
    }

    /* End of MinMax: '<S3>/MinMax1' */

    /* Saturate: '<S3>/Saturation' */
    if (ATV_B.Saturation_d > 0) {
      /* UnaryMinus: '<S3>/Unary Minus' */
      ATV_B.Saturation_d = 0;
    } else {
      if (ATV_B.Saturation_d < -225) {
        /* UnaryMinus: '<S3>/Unary Minus' */
        ATV_B.Saturation_d = -225;
      }
    }

    /* End of Saturate: '<S3>/Saturation' */

    /* MinMax: '<S3>/MinMax' incorporates:
     *  Constant: '<S3>/atvc_maxDischCurr'
     */
    if (atv_mtr_current_limit < atvc_maxDischCurr) {
      ATV_B.MinMax = atv_mtr_current_limit;
    } else {
      ATV_B.MinMax = atvc_maxDischCurr;
    }

    /* End of MinMax: '<S3>/MinMax' */

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage3' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage3
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
        0.0, 0.0, 0.0, -32768.0, -32768.0,
      };

      static const F32 pcx_CANdb_TransmitMessage3_field_eng_max[5] = {
        1.0, 1.0, 1.0, 32767.0, 32767.0,
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
        pcx_CANdb_TransmitMessage3_in_port_buffer[3] = ATV_B.Saturation_d;
        pcx_CANdb_TransmitMessage3_in_port_ptr[3] =
          &pcx_CANdb_TransmitMessage3_in_port_buffer[3];
        pcx_CANdb_TransmitMessage3_in_port_buffer[4] = ATV_B.MinMax;
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

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage4' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage4
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
        65535.0, 65535.0, 65535.0, 65535.0, };

      static const F32 pcx_CANdb_TransmitMessage4_field_scale[4] = {
        1.0, 1.0, 1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage4_field_offset[4] = {
        0.0, 0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage4_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage4_in_port_buffer[0] = atv_regen_x1000_front;
        pcx_CANdb_TransmitMessage4_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage4_in_port_buffer[0];
        pcx_CANdb_TransmitMessage4_in_port_buffer[1] =
          atv_motoring_x1000_front_final;
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

    /* Saturate: '<S3>/Saturation1' */
    if (ATV_B.MinMax < 1000) {
      ATV_B.Saturation1_j = (int16_T)ATV_B.MinMax;
    } else {
      ATV_B.Saturation1_j = 1000;
    }

    /* End of Saturate: '<S3>/Saturation1' */

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage5' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage5
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
        0.0, 0.0, 0.0, -32768.0, -32768.0,
      };

      static const F32 pcx_CANdb_TransmitMessage5_field_eng_max[5] = {
        1.0, 1.0, 1.0, 32767.0, 32767.0,
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
        pcx_CANdb_TransmitMessage5_in_port_buffer[3] = ATV_B.Saturation_d;
        pcx_CANdb_TransmitMessage5_in_port_ptr[3] =
          &pcx_CANdb_TransmitMessage5_in_port_buffer[3];
        pcx_CANdb_TransmitMessage5_in_port_buffer[4] = ATV_B.Saturation1_j;
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

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage19' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage19
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage19_in_port_buffer[20];
      F32 * pcx_CANdb_TransmitMessage19_in_port_ptr[20];
      static const U8 pcx_CANdb_TransmitMessage19_field_start_pos[20] = {
        0, 8, 1, 16, 17, 18, 24, 25, 26, 27,
        28, 29, 30, 31, 9, 10, 3, 2, 33, 32,
      };

      static const U8 pcx_CANdb_TransmitMessage19_field_width[20] = {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
      };

      static const U8 pcx_CANdb_TransmitMessage19_field_is_signed[20] = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      };

      static const U8 pcx_CANdb_TransmitMessage19_field_valtype[20] = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
      };

      static const U8 pcx_CANdb_TransmitMessage19_field_order[20] = {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
      };

      static const F32 pcx_CANdb_TransmitMessage19_field_eng_min[20] = {
        0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0,
      };

      static const F32 pcx_CANdb_TransmitMessage19_field_eng_max[20] = {
        1.0, 1.0, 1.0, 1.0, 1.0,
        1.0, 1.0, 1.0, 1.0, 1.0,
        1.0, 1.0, 1.0, 1.0, 1.0,
        1.0, 1.0, 1.0, 1.0, 1.0,
      };

      static const F32 pcx_CANdb_TransmitMessage19_field_scale[20] = {
        1.0, 1.0, 1.0, 1.0, 1.0,
        1.0, 1.0, 1.0, 1.0, 1.0,
        1.0, 1.0, 1.0, 1.0, 1.0,
        1.0, 1.0, 1.0, 1.0, 1.0,
      };

      static const F32 pcx_CANdb_TransmitMessage19_field_offset[20] = {
        0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0,
      };

      if (pcx_CANdb_TransmitMessage19_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage19_in_port_buffer[0] = 0.0;
        pcx_CANdb_TransmitMessage19_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[0];
        pcx_CANdb_TransmitMessage19_in_port_buffer[1] = ATV_B.LogicalOperator_n;
        pcx_CANdb_TransmitMessage19_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[1];
        pcx_CANdb_TransmitMessage19_in_port_buffer[2] = ATV_B.LogicalOperator2;
        pcx_CANdb_TransmitMessage19_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[2];
        pcx_CANdb_TransmitMessage19_in_port_buffer[3] = ATV_B.sf_Chart_cv.out;
        pcx_CANdb_TransmitMessage19_in_port_ptr[3] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[3];
        pcx_CANdb_TransmitMessage19_in_port_buffer[4] = ATV_B.sf_Chart1.out;
        pcx_CANdb_TransmitMessage19_in_port_ptr[4] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[4];
        pcx_CANdb_TransmitMessage19_in_port_buffer[5] = ATV_B.sf_Chart2.out;
        pcx_CANdb_TransmitMessage19_in_port_ptr[5] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[5];
        pcx_CANdb_TransmitMessage19_in_port_buffer[6] = ATV_B.Compare_c;
        pcx_CANdb_TransmitMessage19_in_port_ptr[6] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[6];
        pcx_CANdb_TransmitMessage19_in_port_buffer[7] = ATV_B.Compare_ex;
        pcx_CANdb_TransmitMessage19_in_port_ptr[7] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[7];
        pcx_CANdb_TransmitMessage19_in_port_buffer[8] = ATV_B.Compare_fw;
        pcx_CANdb_TransmitMessage19_in_port_ptr[8] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[8];
        pcx_CANdb_TransmitMessage19_in_port_buffer[9] = ATV_B.Compare_lc;
        pcx_CANdb_TransmitMessage19_in_port_ptr[9] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[9];
        pcx_CANdb_TransmitMessage19_in_port_buffer[10] = ATV_B.Compare_ew;
        pcx_CANdb_TransmitMessage19_in_port_ptr[10] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[10];
        pcx_CANdb_TransmitMessage19_in_port_buffer[11] = ATV_B.Compare_mq;
        pcx_CANdb_TransmitMessage19_in_port_ptr[11] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[11];
        pcx_CANdb_TransmitMessage19_in_port_buffer[12] = ATV_B.Compare_g;
        pcx_CANdb_TransmitMessage19_in_port_ptr[12] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[12];
        pcx_CANdb_TransmitMessage19_in_port_buffer[13] = ATV_B.Compare_o;
        pcx_CANdb_TransmitMessage19_in_port_ptr[13] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[13];
        pcx_CANdb_TransmitMessage19_in_port_buffer[14] =
          ATV_B.RelationalOperator1;
        pcx_CANdb_TransmitMessage19_in_port_ptr[14] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[14];
        pcx_CANdb_TransmitMessage19_in_port_buffer[15] = atv_IceFault;
        pcx_CANdb_TransmitMessage19_in_port_ptr[15] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[15];
        pcx_CANdb_TransmitMessage19_in_port_buffer[16] = atv_PumpAFault;
        pcx_CANdb_TransmitMessage19_in_port_ptr[16] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[16];
        pcx_CANdb_TransmitMessage19_in_port_buffer[17] = atv_PumpBFault;
        pcx_CANdb_TransmitMessage19_in_port_ptr[17] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[17];
        pcx_CANdb_TransmitMessage19_in_port_buffer[18] = ATV_B.warn_high_soc;
        pcx_CANdb_TransmitMessage19_in_port_ptr[18] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[18];
        pcx_CANdb_TransmitMessage19_in_port_buffer[19] = ATV_B.warn_low_soc;
        pcx_CANdb_TransmitMessage19_in_port_ptr[19] =
          &pcx_CANdb_TransmitMessage19_in_port_buffer[19];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage19_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage19_field_start_pos,
                         pcx_CANdb_TransmitMessage19_field_width,
                         pcx_CANdb_TransmitMessage19_field_is_signed,
                         pcx_CANdb_TransmitMessage19_field_valtype,
                         pcx_CANdb_TransmitMessage19_field_order,
                         pcx_CANdb_TransmitMessage19_field_eng_min,
                         pcx_CANdb_TransmitMessage19_field_eng_max,
                         pcx_CANdb_TransmitMessage19_field_scale,
                         pcx_CANdb_TransmitMessage19_field_offset, 0, 1, 20);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage19_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage19 = !retval;
    }

    /* UnaryMinus: '<S3>/Unary Minus1' */
    ATV_B.UnaryMinus1_l = (int16_T)-atv_GenCurrentSetPoint;

    /* Switch: '<S4>/Switch1' incorporates:
     *  Constant: '<S4>/Constant1'
     */
    if (ATV_B.sf_Chart.out) {
      rtb_MultiportSwitch_0 = floor(ATV_B.RateTransition6_o);
      if (rtIsNaN(rtb_MultiportSwitch_0) || rtIsInf(rtb_MultiportSwitch_0)) {
        rtb_MultiportSwitch_0 = 0.0;
      } else {
        rtb_MultiportSwitch_0 = fmod(rtb_MultiportSwitch_0, 65536.0);
      }

      rtb_Memory = (int16_T)(rtb_MultiportSwitch_0 < 0.0 ? (int32_T)(int16_T)
        -(int16_T)(uint16_T)-rtb_MultiportSwitch_0 : (int32_T)(int16_T)(uint16_T)
        rtb_MultiportSwitch_0);
    } else {
      rtb_Memory = 0;
    }

    /* End of Switch: '<S4>/Switch1' */

    /* Product: '<S3>/Divide' */
    ATV_B.Divide = ATV_B.UnaryMinus1_l * rtb_Memory;

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage22' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage22
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage22_in_port_buffer[8];
      F32 * pcx_CANdb_TransmitMessage22_in_port_ptr[8];
      static const U8 pcx_CANdb_TransmitMessage22_field_start_pos[8] = {
        16, 0, 32, 24, 42, 8, 56, 15, };

      static const U8 pcx_CANdb_TransmitMessage22_field_width[8] = {
        8, 8, 10, 8, 14, 7, 8, 1, };

      static const U8 pcx_CANdb_TransmitMessage22_field_is_signed[8] = {
        1, 0, 0, 0, 0, 0, 1, 0, };

      static const U8 pcx_CANdb_TransmitMessage22_field_valtype[8] = {
        0, 0, 0, 0, 0, 0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage22_field_order[8] = {
        1, 1, 1, 1, 1, 1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage22_field_eng_min[8] = {
        -128.0, -40.0, 0.0, 0.0, 0.0,
        0.0, -128.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage22_field_eng_max[8] = {
        127.0, 215.0, 102.3, 25.5, 16383.0,
        127.0, 127.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage22_field_scale[8] = {
        1.0, 1.0, 0.1, 0.1, 1.0,
        1.0, 1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage22_field_offset[8] = {
        0.0, -40.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage22_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage22_in_port_buffer[0] = ATV_B.UnaryMinus1_l;
        pcx_CANdb_TransmitMessage22_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage22_in_port_buffer[0];
        pcx_CANdb_TransmitMessage22_in_port_buffer[1] = atv_T_ICE;
        pcx_CANdb_TransmitMessage22_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage22_in_port_buffer[1];
        pcx_CANdb_TransmitMessage22_in_port_buffer[2] = ATV_B.Divide;
        pcx_CANdb_TransmitMessage22_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage22_in_port_buffer[2];
        pcx_CANdb_TransmitMessage22_in_port_buffer[3] = 0.0;
        pcx_CANdb_TransmitMessage22_in_port_ptr[3] =
          &pcx_CANdb_TransmitMessage22_in_port_buffer[3];
        pcx_CANdb_TransmitMessage22_in_port_buffer[4] = atv_ice_rpm_req;
        pcx_CANdb_TransmitMessage22_in_port_ptr[4] =
          &pcx_CANdb_TransmitMessage22_in_port_buffer[4];
        pcx_CANdb_TransmitMessage22_in_port_buffer[5] = atv_fuel_level;
        pcx_CANdb_TransmitMessage22_in_port_ptr[5] =
          &pcx_CANdb_TransmitMessage22_in_port_buffer[5];
        pcx_CANdb_TransmitMessage22_in_port_buffer[6] = ATV_B.Saturation1;
        pcx_CANdb_TransmitMessage22_in_port_ptr[6] =
          &pcx_CANdb_TransmitMessage22_in_port_buffer[6];
        pcx_CANdb_TransmitMessage22_in_port_buffer[7] = atv_fuel_reserve;
        pcx_CANdb_TransmitMessage22_in_port_ptr[7] =
          &pcx_CANdb_TransmitMessage22_in_port_buffer[7];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage22_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage22_field_start_pos,
                         pcx_CANdb_TransmitMessage22_field_width,
                         pcx_CANdb_TransmitMessage22_field_is_signed,
                         pcx_CANdb_TransmitMessage22_field_valtype,
                         pcx_CANdb_TransmitMessage22_field_order,
                         pcx_CANdb_TransmitMessage22_field_eng_min,
                         pcx_CANdb_TransmitMessage22_field_eng_max,
                         pcx_CANdb_TransmitMessage22_field_scale,
                         pcx_CANdb_TransmitMessage22_field_offset, 0, 1, 8);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage22_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage22 = !retval;
    }

    /* Gain: '<S3>/Gain1' */
    rtb_Gain1_j = 0.1F * (real32_T)atv_TRad_in;

    /* RateTransition: '<S3>/Rate Transition11' incorporates:
     *  Gain: '<S3>/Gain4'
     *  RateTransition: '<S3>/Rate Transition17'
     */
    if (ATV_M->Timing.RateInteraction.TID0_2) {
      ATV_B.RateTransition11 = 0.1F * (real32_T)atv_TRad_out;
      ATV_B.RateTransition17 = rtb_Gain1_j;
    }

    /* End of RateTransition: '<S3>/Rate Transition11' */

    /* Gain: '<S3>/Gain3' */
    rtb_Gain1_j = 0.1F * (real32_T)atv_T_Air;

    /* RateTransition: '<S3>/Rate Transition12' */
    if (ATV_M->Timing.RateInteraction.TID0_2) {
      ATV_B.RateTransition12 = rtb_Gain1_j;
    }

    /* End of RateTransition: '<S3>/Rate Transition12' */

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage26' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage26
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage26_in_port_buffer[3];
      F32 * pcx_CANdb_TransmitMessage26_in_port_ptr[3];
      static const U8 pcx_CANdb_TransmitMessage26_field_start_pos[3] = {
        0, 24, 8, };

      static const U8 pcx_CANdb_TransmitMessage26_field_width[3] = {
        8, 16, 16, };

      static const U8 pcx_CANdb_TransmitMessage26_field_is_signed[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage26_field_valtype[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage26_field_order[3] = {
        1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage26_field_eng_min[3] = {
        0.0, 0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage26_field_eng_max[3] = {
        255.0, 655.35, 65535.0, };

      static const F32 pcx_CANdb_TransmitMessage26_field_scale[3] = {
        1.0, 0.01, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage26_field_offset[3] = {
        0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage26_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage26_in_port_buffer[0] = atv_vehicle_SOC;
        pcx_CANdb_TransmitMessage26_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage26_in_port_buffer[0];
        pcx_CANdb_TransmitMessage26_in_port_buffer[1] = atv_fuel_qty;
        pcx_CANdb_TransmitMessage26_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage26_in_port_buffer[1];
        pcx_CANdb_TransmitMessage26_in_port_buffer[2] = 0.0;
        pcx_CANdb_TransmitMessage26_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage26_in_port_buffer[2];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage26_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage26_field_start_pos,
                         pcx_CANdb_TransmitMessage26_field_width,
                         pcx_CANdb_TransmitMessage26_field_is_signed,
                         pcx_CANdb_TransmitMessage26_field_valtype,
                         pcx_CANdb_TransmitMessage26_field_order,
                         pcx_CANdb_TransmitMessage26_field_eng_min,
                         pcx_CANdb_TransmitMessage26_field_eng_max,
                         pcx_CANdb_TransmitMessage26_field_scale,
                         pcx_CANdb_TransmitMessage26_field_offset, 0, 1, 3);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage26_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage26 = !retval;
    }

    /* Gain: '<S3>/Gain' */
    rtb_Switch4 = (uint8_T)(100U * rtb_Switch4);

    /* RelationalOperator: '<S41>/Compare' incorporates:
     *  Constant: '<S41>/Constant'
     */
    rtb_Compare_c = (rtb_Switch4 > 0);

    /* RateTransition: '<S3>/Rate Transition3' incorporates:
     *  RateTransition: '<S3>/Rate Transition6'
     */
    if (ATV_M->Timing.RateInteraction.TID0_2) {
      ATV_B.RateTransition3_j = atv_dbg_pumpA_out;

      /* RateTransition: '<S3>/Rate Transition5' */
      ATV_B.RateTransition5_g = atv_dbg_pumpB_out;
      ATV_B.RateTransition6_p = rtb_Compare_c;

      /* RateTransition: '<S3>/Rate Transition7' */
      ATV_B.RateTransition7_p = rtb_Switch4;
    }

    /* End of RateTransition: '<S3>/Rate Transition3' */

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage7' incorporates:
     *  Constant: '<S3>/Constant2'
     *  Constant: '<S3>/Constant3'
     */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage7
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
        65535.0, 65535.0, 65535.0, 65535.0, };

      static const F32 pcx_CANdb_TransmitMessage7_field_scale[4] = {
        1.0, 1.0, 1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage7_field_offset[4] = {
        0.0, 0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage7_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage7_in_port_buffer[0] = atv_footBrake_X1000_out;
        pcx_CANdb_TransmitMessage7_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage7_in_port_buffer[0];
        pcx_CANdb_TransmitMessage7_in_port_buffer[1] = atv_throttleGen_X1000_out;
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

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage8' incorporates:
     *  Constant: '<S3>/Constant'
     */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage8
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
        0.0, 0.0, 0.0, -32768.0, -32768.0,
      };

      static const F32 pcx_CANdb_TransmitMessage8_field_eng_max[5] = {
        1.0, 1.0, 1.0, 32767.0, 32767.0,
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
        pcx_CANdb_TransmitMessage8_in_port_buffer[4] = 100.0;
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

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage9' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage9
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage9_in_port_buffer[4];
      F32 * pcx_CANdb_TransmitMessage9_in_port_ptr[4];
      static const U8 pcx_CANdb_TransmitMessage9_field_start_pos[4] = {
        0, 16, 32, 56, };

      static const U8 pcx_CANdb_TransmitMessage9_field_width[4] = {
        16, 16, 24, 1, };

      static const U8 pcx_CANdb_TransmitMessage9_field_is_signed[4] = {
        1, 0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage9_field_valtype[4] = {
        0, 0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage9_field_order[4] = {
        1, 1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage9_field_eng_min[4] = {
        -327.68, 0.0, 0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage9_field_eng_max[4] = {
        327.67, 65535.0, 1.67772E+6, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage9_field_scale[4] = {
        0.01, 1.0, 0.1, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage9_field_offset[4] = {
        0.0, 0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage9_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage9_in_port_buffer[0] = ATV_B.Gain1;
        pcx_CANdb_TransmitMessage9_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage9_in_port_buffer[0];
        pcx_CANdb_TransmitMessage9_in_port_buffer[1] = ATV_B.DataTypeConversion1;
        pcx_CANdb_TransmitMessage9_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage9_in_port_buffer[1];
        pcx_CANdb_TransmitMessage9_in_port_buffer[2] = atv_odometer;
        pcx_CANdb_TransmitMessage9_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage9_in_port_buffer[2];
        pcx_CANdb_TransmitMessage9_in_port_buffer[3] =
          ATV_B.FixPtLogicalOperator;
        pcx_CANdb_TransmitMessage9_in_port_ptr[3] =
          &pcx_CANdb_TransmitMessage9_in_port_buffer[3];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage9_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage9_field_start_pos,
                         pcx_CANdb_TransmitMessage9_field_width,
                         pcx_CANdb_TransmitMessage9_field_is_signed,
                         pcx_CANdb_TransmitMessage9_field_valtype,
                         pcx_CANdb_TransmitMessage9_field_order,
                         pcx_CANdb_TransmitMessage9_field_eng_min,
                         pcx_CANdb_TransmitMessage9_field_eng_max,
                         pcx_CANdb_TransmitMessage9_field_scale,
                         pcx_CANdb_TransmitMessage9_field_offset, 0, 1, 4);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage9_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage9 = !retval;
    }

    /* RateTransition: '<S3>/Rate Transition16' */
    if (ATV_M->Timing.RateInteraction.TID0_1) {
      ATV_B.RateTransition16 = ATV_B.rear_motor_speed;
    }

    /* End of RateTransition: '<S3>/Rate Transition16' */

    /* Product: '<S3>/Divide1' incorporates:
     *  Constant: '<S3>/Constant11'
     */
    ATV_B.Divide1 = (real_T)atv_ice_run_timer / 3600.0;

    /* Product: '<S3>/Divide2' incorporates:
     *  Constant: '<S3>/Constant11'
     */
    ATV_B.Divide2 = (real_T)atv_fmot_run_timer / 3600.0;

    /* Product: '<S3>/Divide3' incorporates:
     *  Constant: '<S3>/Constant11'
     */
    ATV_B.Divide3 = (real_T)atv_rmot_run_timer / 3600.0;

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage25' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage25
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage25_in_port_buffer[5];
      F32 * pcx_CANdb_TransmitMessage25_in_port_ptr[5];
      static const U8 pcx_CANdb_TransmitMessage25_field_start_pos[5] = {
        0, 16, 32, 48, 63, };

      static const U8 pcx_CANdb_TransmitMessage25_field_width[5] = {
        16, 16, 16, 15, 1, };

      static const U8 pcx_CANdb_TransmitMessage25_field_is_signed[5] = {
        0, 0, 0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage25_field_valtype[5] = {
        0, 0, 0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage25_field_order[5] = {
        1, 1, 1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage25_field_eng_min[5] = {
        0.0, 0.0, 0.0, 0.0, 0.0,
      };

      static const F32 pcx_CANdb_TransmitMessage25_field_eng_max[5] = {
        65535.0, 65535.0, 65535.0, 32767.0, 1.0,
      };

      static const F32 pcx_CANdb_TransmitMessage25_field_scale[5] = {
        1.0, 1.0, 1.0, 1.0, 1.0,
      };

      static const F32 pcx_CANdb_TransmitMessage25_field_offset[5] = {
        0.0, 0.0, 0.0, 0.0, 0.0,
      };

      if (pcx_CANdb_TransmitMessage25_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage25_in_port_buffer[0] = ATV_B.Divide1;
        pcx_CANdb_TransmitMessage25_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage25_in_port_buffer[0];
        pcx_CANdb_TransmitMessage25_in_port_buffer[1] = ATV_B.Divide2;
        pcx_CANdb_TransmitMessage25_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage25_in_port_buffer[1];
        pcx_CANdb_TransmitMessage25_in_port_buffer[2] = ATV_B.Divide3;
        pcx_CANdb_TransmitMessage25_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage25_in_port_buffer[2];
        pcx_CANdb_TransmitMessage25_in_port_buffer[3] = 0.0;
        pcx_CANdb_TransmitMessage25_in_port_ptr[3] =
          &pcx_CANdb_TransmitMessage25_in_port_buffer[3];
        pcx_CANdb_TransmitMessage25_in_port_buffer[4] = 0.0;
        pcx_CANdb_TransmitMessage25_in_port_ptr[4] =
          &pcx_CANdb_TransmitMessage25_in_port_buffer[4];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage25_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage25_field_start_pos,
                         pcx_CANdb_TransmitMessage25_field_width,
                         pcx_CANdb_TransmitMessage25_field_is_signed,
                         pcx_CANdb_TransmitMessage25_field_valtype,
                         pcx_CANdb_TransmitMessage25_field_order,
                         pcx_CANdb_TransmitMessage25_field_eng_min,
                         pcx_CANdb_TransmitMessage25_field_eng_max,
                         pcx_CANdb_TransmitMessage25_field_scale,
                         pcx_CANdb_TransmitMessage25_field_offset, 0, 1, 5);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage25_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage25 = !retval;
    }

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage16' incorporates:
     *  Constant: '<S3>/atvc_max_gen_trq'
     */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage16
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage16_in_port_buffer[3];
      F32 * pcx_CANdb_TransmitMessage16_in_port_ptr[3];
      static const U8 pcx_CANdb_TransmitMessage16_field_start_pos[3] = {
        32, 16, 0, };

      static const U8 pcx_CANdb_TransmitMessage16_field_width[3] = {
        16, 16, 16, };

      static const U8 pcx_CANdb_TransmitMessage16_field_is_signed[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage16_field_valtype[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage16_field_order[3] = {
        1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage16_field_eng_min[3] = {
        0.0, 0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage16_field_eng_max[3] = {
        65535.0, 65535.0, 65535.0, };

      static const F32 pcx_CANdb_TransmitMessage16_field_scale[3] = {
        1.0, 1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage16_field_offset[3] = {
        0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage16_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage16_in_port_buffer[0] = 0.0;
        pcx_CANdb_TransmitMessage16_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage16_in_port_buffer[0];
        pcx_CANdb_TransmitMessage16_in_port_buffer[1] = 0.0;
        pcx_CANdb_TransmitMessage16_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage16_in_port_buffer[1];
        pcx_CANdb_TransmitMessage16_in_port_buffer[2] = atvc_max_gen_trq;
        pcx_CANdb_TransmitMessage16_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage16_in_port_buffer[2];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage16_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage16_field_start_pos,
                         pcx_CANdb_TransmitMessage16_field_width,
                         pcx_CANdb_TransmitMessage16_field_is_signed,
                         pcx_CANdb_TransmitMessage16_field_valtype,
                         pcx_CANdb_TransmitMessage16_field_order,
                         pcx_CANdb_TransmitMessage16_field_eng_min,
                         pcx_CANdb_TransmitMessage16_field_eng_max,
                         pcx_CANdb_TransmitMessage16_field_scale,
                         pcx_CANdb_TransmitMessage16_field_offset, 0, 1, 3);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage16_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage16 = !retval;
    }

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage17' incorporates:
     *  Constant: '<S3>/atvc_max_gen_neutral_trq'
     */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage17
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage17_in_port_buffer[3];
      F32 * pcx_CANdb_TransmitMessage17_in_port_ptr[3];
      static const U8 pcx_CANdb_TransmitMessage17_field_start_pos[3] = {
        32, 16, 0, };

      static const U8 pcx_CANdb_TransmitMessage17_field_width[3] = {
        16, 16, 16, };

      static const U8 pcx_CANdb_TransmitMessage17_field_is_signed[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage17_field_valtype[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage17_field_order[3] = {
        1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage17_field_eng_min[3] = {
        0.0, 0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage17_field_eng_max[3] = {
        65535.0, 65535.0, 65535.0, };

      static const F32 pcx_CANdb_TransmitMessage17_field_scale[3] = {
        1.0, 1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage17_field_offset[3] = {
        0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage17_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage17_in_port_buffer[0] = 0.0;
        pcx_CANdb_TransmitMessage17_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage17_in_port_buffer[0];
        pcx_CANdb_TransmitMessage17_in_port_buffer[1] = 0.0;
        pcx_CANdb_TransmitMessage17_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage17_in_port_buffer[1];
        pcx_CANdb_TransmitMessage17_in_port_buffer[2] = atvc_max_gen_neutral_trq;
        pcx_CANdb_TransmitMessage17_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage17_in_port_buffer[2];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage17_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage17_field_start_pos,
                         pcx_CANdb_TransmitMessage17_field_width,
                         pcx_CANdb_TransmitMessage17_field_is_signed,
                         pcx_CANdb_TransmitMessage17_field_valtype,
                         pcx_CANdb_TransmitMessage17_field_order,
                         pcx_CANdb_TransmitMessage17_field_eng_min,
                         pcx_CANdb_TransmitMessage17_field_eng_max,
                         pcx_CANdb_TransmitMessage17_field_scale,
                         pcx_CANdb_TransmitMessage17_field_offset, 0, 1, 3);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage17_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage17 = !retval;
    }

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage18' incorporates:
     *  Constant: '<S3>/atvc_gen_ramp_up'
     *  Constant: '<S3>/atvc_max_gen_reg_trq'
     */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage18
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage18_in_port_buffer[3];
      F32 * pcx_CANdb_TransmitMessage18_in_port_ptr[3];
      static const U8 pcx_CANdb_TransmitMessage18_field_start_pos[3] = {
        32, 16, 0, };

      static const U8 pcx_CANdb_TransmitMessage18_field_width[3] = {
        16, 16, 16, };

      static const U8 pcx_CANdb_TransmitMessage18_field_is_signed[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage18_field_valtype[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage18_field_order[3] = {
        1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage18_field_eng_min[3] = {
        0.0, 0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage18_field_eng_max[3] = {
        65535.0, 65535.0, 65535.0, };

      static const F32 pcx_CANdb_TransmitMessage18_field_scale[3] = {
        1.0, 1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage18_field_offset[3] = {
        0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage18_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage18_in_port_buffer[0] = 0.0;
        pcx_CANdb_TransmitMessage18_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage18_in_port_buffer[0];
        pcx_CANdb_TransmitMessage18_in_port_buffer[1] = atvc_gen_ramp_up;
        pcx_CANdb_TransmitMessage18_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage18_in_port_buffer[1];
        pcx_CANdb_TransmitMessage18_in_port_buffer[2] = atvc_max_gen_reg_trq;
        pcx_CANdb_TransmitMessage18_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage18_in_port_buffer[2];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage18_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage18_field_start_pos,
                         pcx_CANdb_TransmitMessage18_field_width,
                         pcx_CANdb_TransmitMessage18_field_is_signed,
                         pcx_CANdb_TransmitMessage18_field_valtype,
                         pcx_CANdb_TransmitMessage18_field_order,
                         pcx_CANdb_TransmitMessage18_field_eng_min,
                         pcx_CANdb_TransmitMessage18_field_eng_max,
                         pcx_CANdb_TransmitMessage18_field_scale,
                         pcx_CANdb_TransmitMessage18_field_offset, 0, 1, 3);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage18_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage18 = !retval;
    }

    /* RateTransition: '<S3>/Rate Transition15' incorporates:
     *  Constant: '<S3>/Constant8'
     */
    if (ATV_M->Timing.RateInteraction.TID0_1) {
      ATV_B.RateTransition15 = true;
    }

    /* End of RateTransition: '<S3>/Rate Transition15' */
  } else {
    if (ATV_DW.CANBUS_Output_Processing_MODE) {
      ATV_DW.CANBUS_Output_Processing_MODE = false;
    }
  }

  /* End of RelationalOperator: '<S23>/Compare' */
  /* End of Outputs for SubSystem: '<Root>/CANBUS_Output_Processing' */

  /* RateTransition: '<Root>/Rate Transition40' */
  if (ATV_M->Timing.RateInteraction.TID0_3) {
    ATV_B.RateTransition40 = ATV_B.RateTransition37;

    /* RateTransition: '<Root>/Rate Transition39' */
    ATV_B.RateTransition39 = atv_max_cell;

    /* RateTransition: '<Root>/Rate Transition41' */
    ATV_B.RateTransition41 = ATV_B.chg_shutdown_out;
  }

  /* End of RateTransition: '<Root>/Rate Transition40' */

  /* DataTypeConversion: '<S32>/Data Type Conversion1' */
  ATV_B.DataTypeConversion1_i = atv_vehicle_SOC;

  /* If: '<S32>/If' incorporates:
   *  Memory: '<S32>/Memory'
   *  Sum: '<S32>/Subtract'
   */
  if ((int16_T)(ATV_DW.Memory_PreviousInput_f - ATV_B.DataTypeConversion1_i) ==
      1) {
    ATV_DW.If_ActiveSubsystem = 0;

    /* Outputs for IfAction SubSystem: '<S32>/If Action Subsystem' incorporates:
     *  ActionPort: '<S109>/Action Port'
     */
    /* S-Function (ptm_real_time): '<S109>/ptm_RealTime' */
    /*
     * S-Function Block: <S109>/ptm_RealTime
     * [$Id: ptm_real_time.tlc 34330 2013-07-01 12:56:28Z sbhattacharya $]
     */
    ATV_B.ptm_RealTime = ptm_s_time_diff_update((U32*)
      &ATV_DW.ptm_RealTime_DWORK1);

    /* Memory: '<S109>/Memory' */
    ATV_B.Memory = ATV_DW.Memory_PreviousInput;

    /* Sum: '<S109>/Subtract' */
    rtb_Merge = ATV_B.ptm_RealTime - ATV_B.Memory;

    /* End of Outputs for SubSystem: '<S32>/If Action Subsystem' */
  } else {
    ATV_DW.If_ActiveSubsystem = 1;

    /* Outputs for IfAction SubSystem: '<S32>/If Action Subsystem1' incorporates:
     *  ActionPort: '<S110>/Action Port'
     */
    /* Sum: '<S110>/Subtract' */
    rtb_Merge = ATV_B.ptm_RealTime - ATV_B.Memory;

    /* End of Outputs for SubSystem: '<S32>/If Action Subsystem1' */
  }

  /* End of If: '<S32>/If' */

  /* Product: '<S32>/Product' incorporates:
   *  Constant: '<S32>/atvc_IceStartSOC'
   *  DataTypeConversion: '<S32>/Data Type Conversion2'
   *  DataTypeConversion: '<S32>/Data Type Conversion3'
   *  DataTypeConversion: '<S32>/Data Type Conversion4'
   *  Sum: '<S32>/Subtract1'
   */
  tmp_3 = (uint32_T)(atv_vehicle_SOC - atvc_IceStartSOC);
  sMultiWordMul(&rtb_Merge, 1, &tmp_3, 1, &rtb_Product.chunks[0U], 2);

  /* RelationalOperator: '<S111>/Lower Test' incorporates:
   *  Constant: '<S111>/Lower Limit'
   */
  tmp_a = ATV_ConstP.LowerLimit_Value;

  /* RelationalOperator: '<S111>/Upper Test' incorporates:
   *  Constant: '<S111>/Upper Limit'
   */
  tmp_c = ATV_ConstP.UpperLimit_Value;

  /* Logic: '<S111>/AND' incorporates:
   *  RelationalOperator: '<S111>/Lower Test'
   *  RelationalOperator: '<S111>/Upper Test'
   */
  atv_ICE_Start_Timer_Valid = (sMultiWordLe(&tmp_a.chunks[0U],
    &rtb_Product.chunks[0U], 2) && sMultiWordLe(&rtb_Product.chunks[0U],
    &tmp_c.chunks[0U], 2));

  /* Saturate: '<S32>/Saturation' */
  tmp_e = tmp_h;
  if (sMultiWordGe(&rtb_Product.chunks[0U], &tmp_e.chunks[0U], 2)) {
    atv_ICE_Start_Timer = 100000;
  } else {
    tmp_2 = tmp_i;
    if (sMultiWordLe(&rtb_Product.chunks[0U], &tmp_2.chunks[0U], 2)) {
      atv_ICE_Start_Timer = 0;
    } else {
      atv_ICE_Start_Timer = MultiWord2sLong(&rtb_Product.chunks[0U]);
    }
  }

  /* End of Saturate: '<S32>/Saturation' */
}

/* Model update function for TID0 */
static void ATV_update0(void)          /* Sample time: [0.01s, 0.0s] */
{
  /* Update for Memory: '<S34>/Memory1' */
  ATV_DW.Memory1_PreviousInput_m = ATV_B.sf_Chart_cv.out;

  /* Update for Memory: '<S34>/Memory2' */
  ATV_DW.Memory2_PreviousInput = ATV_B.sf_Chart1.out;

  /* Update for Memory: '<S34>/Memory3' */
  ATV_DW.Memory3_PreviousInput = ATV_B.sf_Chart2.out;

  /* Update for Memory: '<S34>/Memory' */
  ATV_DW.Memory_PreviousInput_l = atv_IceOn;

  /* Update for Memory: '<S34>/Memory4' */
  ATV_DW.Memory4_PreviousInput = ATV_B.atv_run_mode;

  /* Update for Memory: '<S34>/Memory5' */
  ATV_DW.Memory5_PreviousInput = atv_IceFault;

  /* Update for Memory: '<S157>/Memory' */
  ATV_DW.Memory_PreviousInput_l4 = ATV_B.Compare_bt;

  /* Update for Memory: '<S158>/Memory' */
  ATV_DW.Memory_PreviousInput_lr = ATV_B.Compare_p;

  /* Update for DiscreteIntegrator: '<S224>/Integrator' */
  ATV_DW.Integrator_DSTATE_b += ATV_B.IntegralGain;

  /* Update for DiscreteIntegrator: '<S206>/Filter' */
  ATV_DW.Filter_DSTATE += 0.01 * ATV_B.FilterCoefficient;

  /* Update for Memory: '<S145>/Memory4' */
  ATV_DW.Memory4_PreviousInput_o = ATV_B.FixPtLogicalOperator;

  /* Update for Memory: '<S371>/Memory1' */
  ATV_DW.Memory1_PreviousInput_om = ATV_B.Memory4_o;

  /* Update for Memory: '<S372>/Memory1' */
  ATV_DW.Memory1_PreviousInput_o = ATV_B.atvc_odometer_reset_o;

  /* Update for DiscreteIntegrator: '<S145>/Discrete-Time Integrator' */
  ATV_DW.DiscreteTimeIntegrator_DSTATE += 0.01 * ATV_B.Product;
  ATV_DW.DiscreteTimeIntegrator_PrevRese = (int8_T)ATV_B.LogicalOperator_mo;

  /* Update for Memory: '<S140>/Memory1' */
  ATV_DW.Memory1_PreviousInput_e = ATV_B.LogicalOperator7;

  /* Update for Memory: '<S32>/Memory' */
  ATV_DW.Memory_PreviousInput_f = ATV_B.DataTypeConversion1_i;

  /* Update for If: '<S32>/If' */
  if (ATV_DW.If_ActiveSubsystem == 0) {
    /* Update for IfAction SubSystem: '<S32>/If Action Subsystem' incorporates:
     *  ActionPort: '<S109>/Action Port'
     */
    /* Update for Memory: '<S109>/Memory' */
    ATV_DW.Memory_PreviousInput = ATV_B.ptm_RealTime;

    /* End of Update for SubSystem: '<S32>/If Action Subsystem' */
  }

  /* End of Update for If: '<S32>/If' */

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
static void ATV_output1(void)          /* Sample time: [0.02s, 0.0s] */
{
  boolean_T rtb_out;
  real_T tmp;

  /* S-Function (pcx_candb_receive_message): '<S11>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S11>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_c_out_port_buffer[1];
    F32 * pcx_CANdb_ReceiveMessage_c_out_port[1];
    static const U8 pcx_CANdb_ReceiveMessage_c_field_start_pos[1] = {
      55, };

    static const U8 pcx_CANdb_ReceiveMessage_c_field_width[1] = {
      16, };

    static const U8 pcx_CANdb_ReceiveMessage_c_field_is_signed[1] = {
      0, };

    static const U8 pcx_CANdb_ReceiveMessage_c_field_valtype[1] = {
      0, };

    static const U8 pcx_CANdb_ReceiveMessage_c_field_order[1] = {
      0, };

    static const F32 pcx_CANdb_ReceiveMessage_c_field_eng_min[1] = {
      0.0, };

    static const F32 pcx_CANdb_ReceiveMessage_c_field_eng_max[1] = {
      65535.0, };

    static const F32 pcx_CANdb_ReceiveMessage_c_field_scale[1] = {
      1.0, };

    static const F32 pcx_CANdb_ReceiveMessage_c_field_offset[1] = {
      0.0, };

    if (pcx_CANdb_ReceiveMessage_c_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_c_msg_handle,
        data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_h = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_d = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_o = 1;
        pcx_CANdb_ReceiveMessage_c_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_c_out_port_buffer[0];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_c_out_port[0], NULL, &data
                           [0], pcx_CANdb_ReceiveMessage_c_field_start_pos,
                           pcx_CANdb_ReceiveMessage_c_field_width,
                           pcx_CANdb_ReceiveMessage_c_field_is_signed,
                           pcx_CANdb_ReceiveMessage_c_field_valtype,
                           pcx_CANdb_ReceiveMessage_c_field_order,
                           pcx_CANdb_ReceiveMessage_c_field_eng_min,
                           pcx_CANdb_ReceiveMessage_c_field_eng_max,
                           pcx_CANdb_ReceiveMessage_c_field_scale,
                           pcx_CANdb_ReceiveMessage_c_field_offset, 0, 1, 1);
        ATV_B.pcx_CANdb_ReceiveMessage_o4_ni =
          pcx_CANdb_ReceiveMessage_c_out_port_buffer[0];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_o = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_h = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_o = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_d = 0;
    }
  }

  /* Chart: '<S11>/Chart' */
  if (ATV_DW.temporalCounter_i1_o5 < 31U) {
    ATV_DW.temporalCounter_i1_o5++;
  }

  /* Gateway: CANBUS_Reception_D_STATUS2_FRONT2/Chart */
  /* During: CANBUS_Reception_D_STATUS2_FRONT2/Chart */
  if (ATV_DW.is_active_c14_ATV == 0U) {
    /* Entry: CANBUS_Reception_D_STATUS2_FRONT2/Chart */
    ATV_DW.is_active_c14_ATV = 1U;

    /* Entry Internal: CANBUS_Reception_D_STATUS2_FRONT2/Chart */
    /* Transition: '<S54>:4' */
    ATV_DW.is_c14_ATV = ATV_IN_NO_RX_b;

    /* Entry 'NO_RX': '<S54>:5' */
    rtb_out = false;
  } else if (ATV_DW.is_c14_ATV == ATV_IN_NO_RX_b) {
    rtb_out = false;

    /* During 'NO_RX': '<S54>:5' */
    if (ATV_B.pcx_CANdb_ReceiveMessage_o2_o) {
      /* Transition: '<S54>:6' */
      ATV_DW.is_c14_ATV = ATV_IN_RX_f;
      ATV_DW.temporalCounter_i1_o5 = 0U;

      /* Entry 'RX': '<S54>:3' */
      rtb_out = true;
    }
  } else {
    rtb_out = true;

    /* During 'RX': '<S54>:3' */
    if ((!ATV_B.pcx_CANdb_ReceiveMessage_o2_o) && (ATV_DW.temporalCounter_i1_o5 >=
         25U)) {
      /* Transition: '<S54>:7' */
      ATV_DW.is_c14_ATV = ATV_IN_NO_RX_b;

      /* Entry 'NO_RX': '<S54>:5' */
      rtb_out = false;
    }
  }

  /* End of Chart: '<S11>/Chart' */

  /* Switch: '<S11>/Switch' incorporates:
   *  Constant: '<S11>/Constant'
   */
  if (rtb_out) {
    ATV_B.Switch_m = ATV_B.pcx_CANdb_ReceiveMessage_o4_ni;
  } else {
    ATV_B.Switch_m = 0U;
  }

  /* End of Switch: '<S11>/Switch' */

  /* Outputs for Enabled SubSystem: '<Root>/CANBUS_Output_Processing' incorporates:
   *  EnablePort: '<S3>/Enable'
   */
  if (ATV_DW.CANBUS_Output_Processing_MODE) {
    /* Switch: '<S3>/Switch1' incorporates:
     *  Constant: '<S3>/const'
     *  RandomNumber: '<S3>/Random Number'
     *  Sum: '<S3>/Add'
     */
    if (ATV_B.RateTransition16 > 1500) {
      tmp = ATV_B.RateTransition16;
    } else {
      tmp = 1500.0 + ATV_DW.NextOutput;
    }

    /* End of Switch: '<S3>/Switch1' */

    /* Gain: '<S3>/Gain2' */
    ATV_B.Gain2 = 4.0 * tmp;

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage21' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage21
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage21_in_port_buffer[2];
      F32 * pcx_CANdb_TransmitMessage21_in_port_ptr[2];
      static const U8 pcx_CANdb_TransmitMessage21_field_start_pos[2] = {
        55, 7, };

      static const U8 pcx_CANdb_TransmitMessage21_field_width[2] = {
        16, 16, };

      static const U8 pcx_CANdb_TransmitMessage21_field_is_signed[2] = {
        0, 0, };

      static const U8 pcx_CANdb_TransmitMessage21_field_valtype[2] = {
        0, 0, };

      static const U8 pcx_CANdb_TransmitMessage21_field_order[2] = {
        0, 0, };

      static const F32 pcx_CANdb_TransmitMessage21_field_eng_min[2] = {
        0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage21_field_eng_max[2] = {
        65535.0, 65535.0, };

      static const F32 pcx_CANdb_TransmitMessage21_field_scale[2] = {
        1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage21_field_offset[2] = {
        0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage21_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage21_in_port_buffer[0] = ATV_B.Switch_m;
        pcx_CANdb_TransmitMessage21_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage21_in_port_buffer[0];
        pcx_CANdb_TransmitMessage21_in_port_buffer[1] = ATV_B.Gain2;
        pcx_CANdb_TransmitMessage21_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage21_in_port_buffer[1];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage21_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage21_field_start_pos,
                         pcx_CANdb_TransmitMessage21_field_width,
                         pcx_CANdb_TransmitMessage21_field_is_signed,
                         pcx_CANdb_TransmitMessage21_field_valtype,
                         pcx_CANdb_TransmitMessage21_field_order,
                         pcx_CANdb_TransmitMessage21_field_eng_min,
                         pcx_CANdb_TransmitMessage21_field_eng_max,
                         pcx_CANdb_TransmitMessage21_field_scale,
                         pcx_CANdb_TransmitMessage21_field_offset, 0, 1, 2);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage21_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage21 = !retval;
    }

    /* If: '<S3>/If1' */
    if (ATV_B.RateTransition15) {
      /* Outputs for IfAction SubSystem: '<S3>/If Action Subsystem2' incorporates:
       *  ActionPort: '<S42>/Action Port'
       */
      /* S-Function (pcx_candb_transmit_message): '<S42>/pcx_CANdb_TransmitMessage23' */
      /* S-Function Block: <S42>/pcx_CANdb_TransmitMessage23
       * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
       */
      {
        U8 data[8];
        BOOL retval;
        F32 pcx_CANdb_TransmitMessage23_n_in_port_buffer[1];
        F32 * pcx_CANdb_TransmitMessage23_n_in_port_ptr[1];
        static const U8 pcx_CANdb_TransmitMessage23_n_field_start_pos[1] = {
          0, };

        static const U8 pcx_CANdb_TransmitMessage23_n_field_width[1] = {
          1, };

        static const U8 pcx_CANdb_TransmitMessage23_n_field_is_signed[1] = {
          0, };

        static const U8 pcx_CANdb_TransmitMessage23_n_field_valtype[1] = {
          0, };

        static const U8 pcx_CANdb_TransmitMessage23_n_field_order[1] = {
          1, };

        static const F32 pcx_CANdb_TransmitMessage23_n_field_eng_min[1] = {
          0.0, };

        static const F32 pcx_CANdb_TransmitMessage23_n_field_eng_max[1] = {
          1.0, };

        static const F32 pcx_CANdb_TransmitMessage23_n_field_scale[1] = {
          1.0, };

        static const F32 pcx_CANdb_TransmitMessage23_n_field_offset[1] = {
          0.0, };

        if (pcx_CANdb_TransmitMessage23_n_msg_handle != PCX_CONFIG_ERROR) {
          pcx_CANdb_TransmitMessage23_n_in_port_buffer[0] = 0.0;
          pcx_CANdb_TransmitMessage23_n_in_port_ptr[0] =
            &pcx_CANdb_TransmitMessage23_n_in_port_buffer[0];
          pcx_vdb_pack_msg((const F32 * const *)
                           &pcx_CANdb_TransmitMessage23_n_in_port_ptr[0], &data
                           [0], pcx_CANdb_TransmitMessage23_n_field_start_pos,
                           pcx_CANdb_TransmitMessage23_n_field_width,
                           pcx_CANdb_TransmitMessage23_n_field_is_signed,
                           pcx_CANdb_TransmitMessage23_n_field_valtype,
                           pcx_CANdb_TransmitMessage23_n_field_order,
                           pcx_CANdb_TransmitMessage23_n_field_eng_min,
                           pcx_CANdb_TransmitMessage23_n_field_eng_max,
                           pcx_CANdb_TransmitMessage23_n_field_scale,
                           pcx_CANdb_TransmitMessage23_n_field_offset, 0, 1, 1);

          /* Do a transmit every time we are called, (CT2) */
          retval = pcx_transmit(pcx_CANdb_TransmitMessage23_n_msg_handle, data);
        } else {
          /* error: pcx_declare_message was unsuccessful */
          retval = FALSE;
        }

        ATV_B.pcx_CANdb_TransmitMessage23_p = !retval;
      }

      /* S-Function (pcx_candb_transmit_message): '<S42>/pcx_CANdb_TransmitMessage24' */
      /* S-Function Block: <S42>/pcx_CANdb_TransmitMessage24
       * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
       */
      {
        U8 data[8];
        BOOL retval;
        F32 pcx_CANdb_TransmitMessage24_d_in_port_buffer[1];
        F32 * pcx_CANdb_TransmitMessage24_d_in_port_ptr[1];
        static const U8 pcx_CANdb_TransmitMessage24_d_field_start_pos[1] = {
          0, };

        static const U8 pcx_CANdb_TransmitMessage24_d_field_width[1] = {
          1, };

        static const U8 pcx_CANdb_TransmitMessage24_d_field_is_signed[1] = {
          0, };

        static const U8 pcx_CANdb_TransmitMessage24_d_field_valtype[1] = {
          0, };

        static const U8 pcx_CANdb_TransmitMessage24_d_field_order[1] = {
          1, };

        static const F32 pcx_CANdb_TransmitMessage24_d_field_eng_min[1] = {
          0.0, };

        static const F32 pcx_CANdb_TransmitMessage24_d_field_eng_max[1] = {
          1.0, };

        static const F32 pcx_CANdb_TransmitMessage24_d_field_scale[1] = {
          1.0, };

        static const F32 pcx_CANdb_TransmitMessage24_d_field_offset[1] = {
          0.0, };

        if (pcx_CANdb_TransmitMessage24_d_msg_handle != PCX_CONFIG_ERROR) {
          pcx_CANdb_TransmitMessage24_d_in_port_buffer[0] = 0.0;
          pcx_CANdb_TransmitMessage24_d_in_port_ptr[0] =
            &pcx_CANdb_TransmitMessage24_d_in_port_buffer[0];
          pcx_vdb_pack_msg((const F32 * const *)
                           &pcx_CANdb_TransmitMessage24_d_in_port_ptr[0], &data
                           [0], pcx_CANdb_TransmitMessage24_d_field_start_pos,
                           pcx_CANdb_TransmitMessage24_d_field_width,
                           pcx_CANdb_TransmitMessage24_d_field_is_signed,
                           pcx_CANdb_TransmitMessage24_d_field_valtype,
                           pcx_CANdb_TransmitMessage24_d_field_order,
                           pcx_CANdb_TransmitMessage24_d_field_eng_min,
                           pcx_CANdb_TransmitMessage24_d_field_eng_max,
                           pcx_CANdb_TransmitMessage24_d_field_scale,
                           pcx_CANdb_TransmitMessage24_d_field_offset, 0, 1, 1);

          /* Do a transmit every time we are called, (CT2) */
          retval = pcx_transmit(pcx_CANdb_TransmitMessage24_d_msg_handle, data);
        } else {
          /* error: pcx_declare_message was unsuccessful */
          retval = FALSE;
        }

        ATV_B.pcx_CANdb_TransmitMessage24_f = !retval;
      }

      /* End of Outputs for SubSystem: '<S3>/If Action Subsystem2' */
    }

    /* End of If: '<S3>/If1' */
  }

  /* End of Outputs for SubSystem: '<Root>/CANBUS_Output_Processing' */
}

/* Model update function for TID1 */
static void ATV_update1(void)          /* Sample time: [0.02s, 0.0s] */
{
  /* Update for Enabled SubSystem: '<Root>/CANBUS_Output_Processing' incorporates:
   *  EnablePort: '<S3>/Enable'
   */
  if (ATV_DW.CANBUS_Output_Processing_MODE) {
    /* Update for RandomNumber: '<S3>/Random Number' */
    ATV_DW.NextOutput = rt_nrand_Upu32_Yd_f_pw_snf(&ATV_DW.RandSeed) *
      22.360679774997898;
  }

  /* End of Update for SubSystem: '<Root>/CANBUS_Output_Processing' */

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
static void ATV_output2(void)          /* Sample time: [0.1s, 0.0s] */
{
  real_T cumRevIndex;
  real_T csum;
  real_T csumrev[99];
  real_T z;
  real_T rtb_Switch;
  int32_T z_tmp;

  /* S-Function (pcx_candb_receive_message): '<S4>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S4>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_out_port_buffer[6];
    F32 * pcx_CANdb_ReceiveMessage_out_port[6];
    static const U8 pcx_CANdb_ReceiveMessage_field_start_pos[6] = {
      7, 15, 16, 32, 55, 63, };

    static const U8 pcx_CANdb_ReceiveMessage_field_width[6] = {
      8, 8, 16, 16, 8, 8, };

    static const U8 pcx_CANdb_ReceiveMessage_field_is_signed[6] = {
      0, 0, 0, 1, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_field_valtype[6] = {
      0, 0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_field_order[6] = {
      0, 0, 1, 1, 0, 0, };

    static const F32 pcx_CANdb_ReceiveMessage_field_eng_min[6] = {
      0.0, 0.0, 0.0, -3276.8, 0.0,
      1720.0, };

    static const F32 pcx_CANdb_ReceiveMessage_field_eng_max[6] = {
      255.0, 127.5, 6553.5, 3276.7, 255.0,
      1975.0, };

    static const F32 pcx_CANdb_ReceiveMessage_field_scale[6] = {
      1.0, 0.5, 0.1, 0.1, 1.0,
      1.0, };

    static const F32 pcx_CANdb_ReceiveMessage_field_offset[6] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
      1720.0, };

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
        pcx_CANdb_ReceiveMessage_out_port[3] = (F32*)
          &pcx_CANdb_ReceiveMessage_out_port_buffer[3];
        pcx_CANdb_ReceiveMessage_out_port[4] = (F32*)
          &pcx_CANdb_ReceiveMessage_out_port_buffer[4];
        pcx_CANdb_ReceiveMessage_out_port[5] = (F32*)
          &pcx_CANdb_ReceiveMessage_out_port_buffer[5];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_out_port[0], NULL, &data[0],
                           pcx_CANdb_ReceiveMessage_field_start_pos,
                           pcx_CANdb_ReceiveMessage_field_width,
                           pcx_CANdb_ReceiveMessage_field_is_signed,
                           pcx_CANdb_ReceiveMessage_field_valtype,
                           pcx_CANdb_ReceiveMessage_field_order,
                           pcx_CANdb_ReceiveMessage_field_eng_min,
                           pcx_CANdb_ReceiveMessage_field_eng_max,
                           pcx_CANdb_ReceiveMessage_field_scale,
                           pcx_CANdb_ReceiveMessage_field_offset, 0, 1, 6);
        ATV_B.bms_rolling_counter_e = pcx_CANdb_ReceiveMessage_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5 =
          pcx_CANdb_ReceiveMessage_out_port_buffer[1];
        bms_pack_voltage = pcx_CANdb_ReceiveMessage_out_port_buffer[2];
        ATV_B.atv_bms_pack_current = pcx_CANdb_ReceiveMessage_out_port_buffer[3];
        ATV_B.atv_bms_pack_soh = pcx_CANdb_ReceiveMessage_out_port_buffer[4];
        ATV_B.bms_pack_voltage_e = pcx_CANdb_ReceiveMessage_out_port_buffer[5];
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

  /* DataTypeConversion: '<S4>/Data Type Conversion' */
  rtb_Switch = floor(ATV_B.pcx_CANdb_ReceiveMessage_o5);
  if (rtIsNaN(rtb_Switch) || rtIsInf(rtb_Switch)) {
    rtb_Switch = 0.0;
  } else {
    rtb_Switch = fmod(rtb_Switch, 256.0);
  }

  bms_pack_soc = (uint8_T)(rtb_Switch < 0.0 ? (int32_T)(uint8_T)-(int8_T)
    (uint8_T)-rtb_Switch : (int32_T)(uint8_T)rtb_Switch);

  /* End of DataTypeConversion: '<S4>/Data Type Conversion' */

  /* DataTypeConversion: '<S4>/Data Type Conversion1' */
  rtb_Switch = floor(ATV_B.bms_rolling_counter_e);
  if (rtIsNaN(rtb_Switch) || rtIsInf(rtb_Switch)) {
    rtb_Switch = 0.0;
  } else {
    rtb_Switch = fmod(rtb_Switch, 256.0);
  }

  bms_rolling_counter = (uint8_T)(rtb_Switch < 0.0 ? (int32_T)(uint8_T)-(int8_T)
    (uint8_T)-rtb_Switch : (int32_T)(uint8_T)rtb_Switch);

  /* End of DataTypeConversion: '<S4>/Data Type Conversion1' */

  /* S-Function (pcx_candb_receive_message): '<S6>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S6>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_j_out_port_buffer[6];
    F32 * pcx_CANdb_ReceiveMessage_j_out_port[6];
    static const U8 pcx_CANdb_ReceiveMessage_j_field_start_pos[6] = {
      0, 23, 24, 47, 48, 56, };

    static const U8 pcx_CANdb_ReceiveMessage_j_field_width[6] = {
      16, 8, 16, 8, 8, 8, };

    static const U8 pcx_CANdb_ReceiveMessage_j_field_is_signed[6] = {
      0, 0, 0, 0, 1, 1, };

    static const U8 pcx_CANdb_ReceiveMessage_j_field_valtype[6] = {
      0, 0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_j_field_order[6] = {
      1, 0, 1, 0, 1, 1, };

    static const F32 pcx_CANdb_ReceiveMessage_j_field_eng_min[6] = {
      0.0, 0.0, 0.0, 0.0, -128.0,
      -128.0, };

    static const F32 pcx_CANdb_ReceiveMessage_j_field_eng_max[6] = {
      65.535, 2550.0, 6.5535, 255.0, 127.0,
      127.0, };

    static const F32 pcx_CANdb_ReceiveMessage_j_field_scale[6] = {
      0.001, 10.0, 0.0001, 1.0, 1.0,
      1.0, };

    static const F32 pcx_CANdb_ReceiveMessage_j_field_offset[6] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
      0.0, };

    if (pcx_CANdb_ReceiveMessage_j_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_j_msg_handle,
        data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_m = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_k = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_k = 1;
        pcx_CANdb_ReceiveMessage_j_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_j_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_j_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_j_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_j_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_j_out_port_buffer[2];
        pcx_CANdb_ReceiveMessage_j_out_port[3] = (F32*)
          &pcx_CANdb_ReceiveMessage_j_out_port_buffer[3];
        pcx_CANdb_ReceiveMessage_j_out_port[4] = (F32*)
          &pcx_CANdb_ReceiveMessage_j_out_port_buffer[4];
        pcx_CANdb_ReceiveMessage_j_out_port[5] = (F32*)
          &pcx_CANdb_ReceiveMessage_j_out_port_buffer[5];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_j_out_port[0], NULL, &data
                           [0], pcx_CANdb_ReceiveMessage_j_field_start_pos,
                           pcx_CANdb_ReceiveMessage_j_field_width,
                           pcx_CANdb_ReceiveMessage_j_field_is_signed,
                           pcx_CANdb_ReceiveMessage_j_field_valtype,
                           pcx_CANdb_ReceiveMessage_j_field_order,
                           pcx_CANdb_ReceiveMessage_j_field_eng_min,
                           pcx_CANdb_ReceiveMessage_j_field_eng_max,
                           pcx_CANdb_ReceiveMessage_j_field_scale,
                           pcx_CANdb_ReceiveMessage_j_field_offset, 0, 1, 6);
        ATV_B.B_Min_Cell = pcx_CANdb_ReceiveMessage_j_out_port_buffer[0];
        ATV_B.B_Min_Cell_ID = pcx_CANdb_ReceiveMessage_j_out_port_buffer[1];
        B_Max_Cell = pcx_CANdb_ReceiveMessage_j_out_port_buffer[2];
        ATV_B.B_Max_Cell_ID = pcx_CANdb_ReceiveMessage_j_out_port_buffer[3];
        ATV_B.B_Min_Temp = pcx_CANdb_ReceiveMessage_j_out_port_buffer[4];
        ATV_B.B_Max_Temp = pcx_CANdb_ReceiveMessage_j_out_port_buffer[5];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_k = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_m = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_k = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_k = 0;
    }
  }

  /* S-Function (pcx_candb_receive_message): '<S7>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S7>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_h_out_port_buffer[3];
    F32 * pcx_CANdb_ReceiveMessage_h_out_port[3];
    static const U8 pcx_CANdb_ReceiveMessage_h_field_start_pos[3] = {
      23, 39, 55, };

    static const U8 pcx_CANdb_ReceiveMessage_h_field_width[3] = {
      16, 16, 16, };

    static const U8 pcx_CANdb_ReceiveMessage_h_field_is_signed[3] = {
      0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_h_field_valtype[3] = {
      0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_h_field_order[3] = {
      0, 0, 0, };

    static const F32 pcx_CANdb_ReceiveMessage_h_field_eng_min[3] = {
      0.0, 0.0, 0.0, };

    static const F32 pcx_CANdb_ReceiveMessage_h_field_eng_max[3] = {
      6553.5, 6553.5, 6553.5, };

    static const F32 pcx_CANdb_ReceiveMessage_h_field_scale[3] = {
      0.1, 0.1, 0.1, };

    static const F32 pcx_CANdb_ReceiveMessage_h_field_offset[3] = {
      0.0, 0.0, 0.0, };

    if (pcx_CANdb_ReceiveMessage_h_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_h_msg_handle,
        data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_mn = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_i = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_a = 1;
        pcx_CANdb_ReceiveMessage_h_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_h_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_h_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_h_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_h_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_h_out_port_buffer[2];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_h_out_port[0], NULL, &data
                           [0], pcx_CANdb_ReceiveMessage_h_field_start_pos,
                           pcx_CANdb_ReceiveMessage_h_field_width,
                           pcx_CANdb_ReceiveMessage_h_field_is_signed,
                           pcx_CANdb_ReceiveMessage_h_field_valtype,
                           pcx_CANdb_ReceiveMessage_h_field_order,
                           pcx_CANdb_ReceiveMessage_h_field_eng_min,
                           pcx_CANdb_ReceiveMessage_h_field_eng_max,
                           pcx_CANdb_ReceiveMessage_h_field_scale,
                           pcx_CANdb_ReceiveMessage_h_field_offset, 0, 1, 3);
        ATV_B.pcx_CANdb_ReceiveMessage_o4 =
          pcx_CANdb_ReceiveMessage_h_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5_g =
          pcx_CANdb_ReceiveMessage_h_out_port_buffer[1];
        ATV_B.pcx_CANdb_ReceiveMessage_o6 =
          pcx_CANdb_ReceiveMessage_h_out_port_buffer[2];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_a = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_mn = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_a = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_i = 0;
    }
  }

  /* S-Function (pcx_candb_receive_message): '<S7>/pcx_CANdb_ReceiveMessage1' */
  /* S-Function Block: <S7>/pcx_CANdb_ReceiveMessage1
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage1_out_port_buffer[1];
    F32 * pcx_CANdb_ReceiveMessage1_out_port[1];
    static const U8 pcx_CANdb_ReceiveMessage1_field_start_pos[1] = {
      0, };

    static const U8 pcx_CANdb_ReceiveMessage1_field_width[1] = {
      8, };

    static const U8 pcx_CANdb_ReceiveMessage1_field_is_signed[1] = {
      0, };

    static const U8 pcx_CANdb_ReceiveMessage1_field_valtype[1] = {
      0, };

    static const U8 pcx_CANdb_ReceiveMessage1_field_order[1] = {
      1, };

    static const F32 pcx_CANdb_ReceiveMessage1_field_eng_min[1] = {
      0.0, };

    static const F32 pcx_CANdb_ReceiveMessage1_field_eng_max[1] = {
      255.0, };

    static const F32 pcx_CANdb_ReceiveMessage1_field_scale[1] = {
      1.0, };

    static const F32 pcx_CANdb_ReceiveMessage1_field_offset[1] = {
      0.0, };

    if (pcx_CANdb_ReceiveMessage1_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage1_msg_handle,
        data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage1_o1 = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage1_o3 = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage1_o2 = 1;
        pcx_CANdb_ReceiveMessage1_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage1_out_port_buffer[0];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage1_out_port[0], NULL, &data[0],
                           pcx_CANdb_ReceiveMessage1_field_start_pos,
                           pcx_CANdb_ReceiveMessage1_field_width,
                           pcx_CANdb_ReceiveMessage1_field_is_signed,
                           pcx_CANdb_ReceiveMessage1_field_valtype,
                           pcx_CANdb_ReceiveMessage1_field_order,
                           pcx_CANdb_ReceiveMessage1_field_eng_min,
                           pcx_CANdb_ReceiveMessage1_field_eng_max,
                           pcx_CANdb_ReceiveMessage1_field_scale,
                           pcx_CANdb_ReceiveMessage1_field_offset, 0, 1, 1);
        ATV_B.pcx_CANdb_ReceiveMessage1_o4 =
          pcx_CANdb_ReceiveMessage1_out_port_buffer[0];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage1_o2 = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage1_o1 = 1;
      ATV_B.pcx_CANdb_ReceiveMessage1_o2 = 0;
      ATV_B.pcx_CANdb_ReceiveMessage1_o3 = 0;
    }
  }

  /* Switch: '<S47>/Switch2' incorporates:
   *  Constant: '<S7>/Constant7'
   *  DataTypeConversion: '<S47>/Data Type Conversion'
   *  SampleTimeMath: '<S47>/Sample Time'
   *  Sum: '<S47>/Sum'
   *  Sum: '<S47>/Sum1'
   *  UnitDelay: '<S47>/Unit Delay3'
   *
   * About '<S47>/Sample Time':
   *  y = K where K = ( w * Ts )
   */
  if (ATV_B.pcx_CANdb_ReceiveMessage_o2_a) {
    ATV_B.Saturateatthreshold_n = 8.6000003814697266;
  } else {
    ATV_B.Saturateatthreshold_n = ATV_DW.UnitDelay3_DSTATE - 0.10000038146972656;
  }

  /* End of Switch: '<S47>/Switch2' */

  /* RelationalOperator: '<S47>/Relational Operator2' incorporates:
   *  Constant: '<S47>/Constant2'
   */
  atv_chg_present = (ATV_B.Saturateatthreshold_n >= 0.0);

  /* Switch: '<S47>/Saturate at threshold' incorporates:
   *  UnitDelay: '<S47>/Unit Delay3'
   */
  if (atv_chg_present) {
    ATV_B.Saturateatthreshold = ATV_B.Saturateatthreshold_n;
  } else {
    ATV_B.Saturateatthreshold = ATV_DW.UnitDelay3_DSTATE;
  }

  /* End of Switch: '<S47>/Saturate at threshold' */

  /* Switch: '<S48>/Switch2' incorporates:
   *  Constant: '<S7>/Constant1'
   *  DataTypeConversion: '<S48>/Data Type Conversion'
   *  SampleTimeMath: '<S48>/Sample Time'
   *  Sum: '<S48>/Sum'
   *  Sum: '<S48>/Sum1'
   *  UnitDelay: '<S48>/Unit Delay3'
   *
   * About '<S48>/Sample Time':
   *  y = K where K = ( w * Ts )
   */
  if (ATV_B.pcx_CANdb_ReceiveMessage1_o2) {
    ATV_B.Saturateatthreshold_n = 0.60000038146972656;
  } else {
    ATV_B.Saturateatthreshold_n = ATV_DW.UnitDelay3_DSTATE_p -
      0.10000038146972656;
  }

  /* End of Switch: '<S48>/Switch2' */

  /* RelationalOperator: '<S48>/Relational Operator2' incorporates:
   *  Constant: '<S48>/Constant2'
   */
  atv_can_wakeup = (ATV_B.Saturateatthreshold_n >= 0.0);

  /* Switch: '<S48>/Saturate at threshold' incorporates:
   *  UnitDelay: '<S48>/Unit Delay3'
   */
  if (!atv_can_wakeup) {
    ATV_B.Saturateatthreshold_n = ATV_DW.UnitDelay3_DSTATE_p;
  }

  /* End of Switch: '<S48>/Saturate at threshold' */

  /* S-Function (pcx_candb_receive_message): '<S10>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S10>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_d_out_port_buffer[4];
    F32 * pcx_CANdb_ReceiveMessage_d_out_port[4];
    static const U8 pcx_CANdb_ReceiveMessage_d_field_start_pos[4] = {
      56, 48, 32, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_d_field_width[4] = {
      8, 8, 16, 32, };

    static const U8 pcx_CANdb_ReceiveMessage_d_field_is_signed[4] = {
      1, 1, 1, 1, };

    static const U8 pcx_CANdb_ReceiveMessage_d_field_valtype[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_d_field_order[4] = {
      1, 1, 1, 1, };

    static const F32 pcx_CANdb_ReceiveMessage_d_field_eng_min[4] = {
      -128.0, -128.0, -2048.0, -2.14748E+9, };

    static const F32 pcx_CANdb_ReceiveMessage_d_field_eng_max[4] = {
      127.0, 127.0, 2047.94, 2.14748E+9, };

    static const F32 pcx_CANdb_ReceiveMessage_d_field_scale[4] = {
      1.0, 1.0, 0.0625, 1.0, };

    static const F32 pcx_CANdb_ReceiveMessage_d_field_offset[4] = {
      0.0, 0.0, 0.0, 0.0, };

    if (pcx_CANdb_ReceiveMessage_d_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_d_msg_handle,
        data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_md = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_g = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_e = 1;
        pcx_CANdb_ReceiveMessage_d_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_d_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_d_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_d_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_d_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_d_out_port_buffer[2];
        pcx_CANdb_ReceiveMessage_d_out_port[3] = (F32*)
          &pcx_CANdb_ReceiveMessage_d_out_port_buffer[3];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_d_out_port[0], NULL, &data
                           [0], pcx_CANdb_ReceiveMessage_d_field_start_pos,
                           pcx_CANdb_ReceiveMessage_d_field_width,
                           pcx_CANdb_ReceiveMessage_d_field_is_signed,
                           pcx_CANdb_ReceiveMessage_d_field_valtype,
                           pcx_CANdb_ReceiveMessage_d_field_order,
                           pcx_CANdb_ReceiveMessage_d_field_eng_min,
                           pcx_CANdb_ReceiveMessage_d_field_eng_max,
                           pcx_CANdb_ReceiveMessage_d_field_scale,
                           pcx_CANdb_ReceiveMessage_d_field_offset, 0, 1, 4);
        ATV_B.pcx_CANdb_ReceiveMessage_o4_f =
          pcx_CANdb_ReceiveMessage_d_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5_e =
          pcx_CANdb_ReceiveMessage_d_out_port_buffer[1];
        ATV_B.pcx_CANdb_ReceiveMessage_o6_o =
          pcx_CANdb_ReceiveMessage_d_out_port_buffer[2];
        ATV_B.pcx_CANdb_ReceiveMessage_o7 =
          pcx_CANdb_ReceiveMessage_d_out_port_buffer[3];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_e = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_md = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_e = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_g = 0;
    }
  }

  /* Chart: '<S10>/Chart' */
  ATV_Chart_o(ATV_B.pcx_CANdb_ReceiveMessage_o2_e, &ATV_B.sf_Chart_jt,
              &ATV_DW.sf_Chart_jt);

  /* Switch: '<S10>/Switch3' incorporates:
   *  Constant: '<S10>/Constant3'
   */
  if (ATV_B.sf_Chart_jt.out) {
    rtb_Switch = ATV_B.pcx_CANdb_ReceiveMessage_o7;
  } else {
    rtb_Switch = 0.0;
  }

  /* End of Switch: '<S10>/Switch3' */

  /* Saturate: '<S10>/Saturation' */
  if (rtb_Switch > 32767.0) {
    rtb_Switch = 32767.0;
  } else {
    if (rtb_Switch < -32767.0) {
      rtb_Switch = -32767.0;
    }
  }

  rtb_Switch = floor(rtb_Switch);
  if (rtIsNaN(rtb_Switch)) {
    rtb_Switch = 0.0;
  } else {
    rtb_Switch = fmod(rtb_Switch, 65536.0);
  }

  ATV_B.Saturation_e = (int16_T)(rtb_Switch < 0.0 ? (int32_T)(int16_T)-(int16_T)
    (uint16_T)-rtb_Switch : (int32_T)(int16_T)(uint16_T)rtb_Switch);

  /* End of Saturate: '<S10>/Saturation' */

  /* Switch: '<S10>/Switch1' incorporates:
   *  Constant: '<S10>/Constant1'
   */
  if (ATV_B.sf_Chart_jt.out) {
    rtb_Switch = floor(ATV_B.pcx_CANdb_ReceiveMessage_o5_e);
    if (rtIsNaN(rtb_Switch) || rtIsInf(rtb_Switch)) {
      rtb_Switch = 0.0;
    } else {
      rtb_Switch = fmod(rtb_Switch, 65536.0);
    }

    ATV_B.Switch1 = (int16_T)(rtb_Switch < 0.0 ? (int32_T)(int16_T)-(int16_T)
      (uint16_T)-rtb_Switch : (int32_T)(int16_T)(uint16_T)rtb_Switch);
  } else {
    ATV_B.Switch1 = 0;
  }

  /* End of Switch: '<S10>/Switch1' */

  /* S-Function (pcx_candb_receive_message): '<S12>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S12>/pcx_CANdb_ReceiveMessage
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
      ATV_B.pcx_CANdb_ReceiveMessage_o3_dp = (0 != (pcxf_rx_receive_status &
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
        ATV_B.pcx_CANdb_ReceiveMessage_o4_fz =
          pcx_CANdb_ReceiveMessage_f_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5_m =
          pcx_CANdb_ReceiveMessage_f_out_port_buffer[1];
        ATV_B.pcx_CANdb_ReceiveMessage_o6_n =
          pcx_CANdb_ReceiveMessage_f_out_port_buffer[2];
        ATV_B.pcx_CANdb_ReceiveMessage_o7_g =
          pcx_CANdb_ReceiveMessage_f_out_port_buffer[3];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_n = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_g = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_n = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_dp = 0;
    }
  }

  /* Chart: '<S12>/Chart' */
  ATV_Chart_o(ATV_B.pcx_CANdb_ReceiveMessage_o2_n, &ATV_B.sf_Chart_l,
              &ATV_DW.sf_Chart_l);

  /* Switch: '<S12>/Switch3' incorporates:
   *  Constant: '<S12>/Constant3'
   */
  if (ATV_B.sf_Chart_l.out) {
    rtb_Switch = ATV_B.pcx_CANdb_ReceiveMessage_o7_g;
  } else {
    rtb_Switch = 0.0;
  }

  /* End of Switch: '<S12>/Switch3' */

  /* Saturate: '<S12>/Saturation' */
  if (rtb_Switch > 32767.0) {
    rtb_Switch = 32767.0;
  } else {
    if (rtb_Switch < -32767.0) {
      rtb_Switch = -32767.0;
    }
  }

  rtb_Switch = floor(rtb_Switch);
  if (rtIsNaN(rtb_Switch)) {
    rtb_Switch = 0.0;
  } else {
    rtb_Switch = fmod(rtb_Switch, 65536.0);
  }

  ATV_B.Saturation_a = (int16_T)(rtb_Switch < 0.0 ? (int32_T)(int16_T)-(int16_T)
    (uint16_T)-rtb_Switch : (int32_T)(int16_T)(uint16_T)rtb_Switch);

  /* End of Saturate: '<S12>/Saturation' */

  /* Switch: '<S12>/Switch1' incorporates:
   *  Constant: '<S12>/Constant1'
   */
  if (ATV_B.sf_Chart_l.out) {
    rtb_Switch = floor(ATV_B.pcx_CANdb_ReceiveMessage_o5_m);
    if (rtIsNaN(rtb_Switch) || rtIsInf(rtb_Switch)) {
      rtb_Switch = 0.0;
    } else {
      rtb_Switch = fmod(rtb_Switch, 65536.0);
    }

    ATV_B.Switch1_j = (int16_T)(rtb_Switch < 0.0 ? (int32_T)(int16_T)-(int16_T)
      (uint16_T)-rtb_Switch : (int32_T)(int16_T)(uint16_T)rtb_Switch);
  } else {
    ATV_B.Switch1_j = 0;
  }

  /* End of Switch: '<S12>/Switch1' */

  /* S-Function (pcx_candb_receive_message): '<S13>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S13>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_e_out_port_buffer[4];
    F32 * pcx_CANdb_ReceiveMessage_e_out_port[4];
    static const U8 pcx_CANdb_ReceiveMessage_e_field_start_pos[4] = {
      56, 48, 32, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_e_field_width[4] = {
      8, 8, 16, 32, };

    static const U8 pcx_CANdb_ReceiveMessage_e_field_is_signed[4] = {
      1, 1, 1, 1, };

    static const U8 pcx_CANdb_ReceiveMessage_e_field_valtype[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_e_field_order[4] = {
      1, 1, 1, 1, };

    static const F32 pcx_CANdb_ReceiveMessage_e_field_eng_min[4] = {
      -128.0, -128.0, -2048.0, -2.14748E+9, };

    static const F32 pcx_CANdb_ReceiveMessage_e_field_eng_max[4] = {
      127.0, 127.0, 2047.94, 2.14748E+9, };

    static const F32 pcx_CANdb_ReceiveMessage_e_field_scale[4] = {
      1.0, 1.0, 0.0625, 1.0, };

    static const F32 pcx_CANdb_ReceiveMessage_e_field_offset[4] = {
      0.0, 0.0, 0.0, 0.0, };

    if (pcx_CANdb_ReceiveMessage_e_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_e_msg_handle,
        data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_k = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_kd = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_b = 1;
        pcx_CANdb_ReceiveMessage_e_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_e_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_e_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_e_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_e_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_e_out_port_buffer[2];
        pcx_CANdb_ReceiveMessage_e_out_port[3] = (F32*)
          &pcx_CANdb_ReceiveMessage_e_out_port_buffer[3];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_e_out_port[0], NULL, &data
                           [0], pcx_CANdb_ReceiveMessage_e_field_start_pos,
                           pcx_CANdb_ReceiveMessage_e_field_width,
                           pcx_CANdb_ReceiveMessage_e_field_is_signed,
                           pcx_CANdb_ReceiveMessage_e_field_valtype,
                           pcx_CANdb_ReceiveMessage_e_field_order,
                           pcx_CANdb_ReceiveMessage_e_field_eng_min,
                           pcx_CANdb_ReceiveMessage_e_field_eng_max,
                           pcx_CANdb_ReceiveMessage_e_field_scale,
                           pcx_CANdb_ReceiveMessage_e_field_offset, 0, 1, 4);
        ATV_B.pcx_CANdb_ReceiveMessage_o4_l =
          pcx_CANdb_ReceiveMessage_e_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5_k =
          pcx_CANdb_ReceiveMessage_e_out_port_buffer[1];
        ATV_B.pcx_CANdb_ReceiveMessage_o6_eb =
          pcx_CANdb_ReceiveMessage_e_out_port_buffer[2];
        ATV_B.pcx_CANdb_ReceiveMessage_o7_gf =
          pcx_CANdb_ReceiveMessage_e_out_port_buffer[3];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_b = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_k = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_b = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_kd = 0;
    }
  }

  /* Chart: '<S13>/Chart' */
  ATV_Chart_o(ATV_B.pcx_CANdb_ReceiveMessage_o2_b, &ATV_B.sf_Chart_a,
              &ATV_DW.sf_Chart_a);

  /* Switch: '<S13>/Switch3' incorporates:
   *  Constant: '<S13>/Constant3'
   */
  if (ATV_B.sf_Chart_a.out) {
    rtb_Switch = ATV_B.pcx_CANdb_ReceiveMessage_o7_gf;
  } else {
    rtb_Switch = 0.0;
  }

  /* End of Switch: '<S13>/Switch3' */

  /* Saturate: '<S13>/Saturation' */
  if (rtb_Switch > 32767.0) {
    rtb_Switch = 32767.0;
  } else {
    if (rtb_Switch < -32767.0) {
      rtb_Switch = -32767.0;
    }
  }

  rtb_Switch = floor(rtb_Switch);
  if (rtIsNaN(rtb_Switch)) {
    rtb_Switch = 0.0;
  } else {
    rtb_Switch = fmod(rtb_Switch, 65536.0);
  }

  ATV_B.Saturation_k = (int16_T)(rtb_Switch < 0.0 ? (int32_T)(int16_T)-(int16_T)
    (uint16_T)-rtb_Switch : (int32_T)(int16_T)(uint16_T)rtb_Switch);

  /* End of Saturate: '<S13>/Saturation' */

  /* Switch: '<S13>/Switch1' incorporates:
   *  Constant: '<S13>/Constant1'
   */
  if (ATV_B.sf_Chart_a.out) {
    rtb_Switch = floor(ATV_B.pcx_CANdb_ReceiveMessage_o5_k);
    if (rtIsNaN(rtb_Switch) || rtIsInf(rtb_Switch)) {
      rtb_Switch = 0.0;
    } else {
      rtb_Switch = fmod(rtb_Switch, 65536.0);
    }

    ATV_B.Switch1_l = (int16_T)(rtb_Switch < 0.0 ? (int32_T)(int16_T)-(int16_T)
      (uint16_T)-rtb_Switch : (int32_T)(int16_T)(uint16_T)rtb_Switch);
  } else {
    ATV_B.Switch1_l = 0;
  }

  /* End of Switch: '<S13>/Switch1' */

  /* S-Function (pcx_candb_receive_message): '<S15>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S15>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_l_out_port_buffer[4];
    F32 * pcx_CANdb_ReceiveMessage_l_out_port[4];
    static const U8 pcx_CANdb_ReceiveMessage_l_field_start_pos[4] = {
      48, 32, 16, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_l_field_width[4] = {
      16, 16, 16, 16, };

    static const U8 pcx_CANdb_ReceiveMessage_l_field_is_signed[4] = {
      0, 1, 1, 1, };

    static const U8 pcx_CANdb_ReceiveMessage_l_field_valtype[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_l_field_order[4] = {
      1, 1, 1, 1, };

    static const F32 pcx_CANdb_ReceiveMessage_l_field_eng_min[4] = {
      0.0, -32768.0, -12800.0, -2048.0, };

    static const F32 pcx_CANdb_ReceiveMessage_l_field_eng_max[4] = {
      3906.19, 32767.0, 12799.6, 2047.94, };

    static const F32 pcx_CANdb_ReceiveMessage_l_field_scale[4] = {
      0.0596046, 1.0, 0.390625, 0.0625, };

    static const F32 pcx_CANdb_ReceiveMessage_l_field_offset[4] = {
      0.0, 0.0, 0.0, 0.0, };

    if (pcx_CANdb_ReceiveMessage_l_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_l_msg_handle,
        data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_d = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_ig = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_nk = 1;
        pcx_CANdb_ReceiveMessage_l_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_l_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_l_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_l_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_l_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_l_out_port_buffer[2];
        pcx_CANdb_ReceiveMessage_l_out_port[3] = (F32*)
          &pcx_CANdb_ReceiveMessage_l_out_port_buffer[3];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_l_out_port[0], NULL, &data
                           [0], pcx_CANdb_ReceiveMessage_l_field_start_pos,
                           pcx_CANdb_ReceiveMessage_l_field_width,
                           pcx_CANdb_ReceiveMessage_l_field_is_signed,
                           pcx_CANdb_ReceiveMessage_l_field_valtype,
                           pcx_CANdb_ReceiveMessage_l_field_order,
                           pcx_CANdb_ReceiveMessage_l_field_eng_min,
                           pcx_CANdb_ReceiveMessage_l_field_eng_max,
                           pcx_CANdb_ReceiveMessage_l_field_scale,
                           pcx_CANdb_ReceiveMessage_l_field_offset, 0, 1, 4);
        ATV_B.pcx_CANdb_ReceiveMessage_o4_e =
          pcx_CANdb_ReceiveMessage_l_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5_c =
          pcx_CANdb_ReceiveMessage_l_out_port_buffer[1];
        ATV_B.pcx_CANdb_ReceiveMessage_o6_a =
          pcx_CANdb_ReceiveMessage_l_out_port_buffer[2];
        ATV_B.pcx_CANdb_ReceiveMessage_o7_i =
          pcx_CANdb_ReceiveMessage_l_out_port_buffer[3];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_nk = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_d = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_nk = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_ig = 0;
    }
  }

  /* Chart: '<S15>/Chart' */
  ATV_Chart_o(ATV_B.pcx_CANdb_ReceiveMessage_o2_nk, &ATV_B.sf_Chart_m,
              &ATV_DW.sf_Chart_m);

  /* Switch: '<S15>/Switch1' incorporates:
   *  Constant: '<S15>/Constant1'
   */
  if (ATV_B.sf_Chart_m.out) {
    rtb_Switch = floor(ATV_B.pcx_CANdb_ReceiveMessage_o5_c);
    if (rtIsNaN(rtb_Switch) || rtIsInf(rtb_Switch)) {
      rtb_Switch = 0.0;
    } else {
      rtb_Switch = fmod(rtb_Switch, 65536.0);
    }

    ATV_B.Switch1_e = (int16_T)(rtb_Switch < 0.0 ? (int32_T)(int16_T)-(int16_T)
      (uint16_T)-rtb_Switch : (int32_T)(int16_T)(uint16_T)rtb_Switch);
  } else {
    ATV_B.Switch1_e = 0;
  }

  /* End of Switch: '<S15>/Switch1' */

  /* S-Function (pcx_candb_receive_message): '<S16>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S16>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_es_out_port_buffer[4];
    F32 * pcx_CANdb_ReceiveMessage_es_out_port[4];
    static const U8 pcx_CANdb_ReceiveMessage_es_field_start_pos[4] = {
      48, 32, 16, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_es_field_width[4] = {
      16, 16, 16, 16, };

    static const U8 pcx_CANdb_ReceiveMessage_es_field_is_signed[4] = {
      0, 1, 1, 1, };

    static const U8 pcx_CANdb_ReceiveMessage_es_field_valtype[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_es_field_order[4] = {
      1, 1, 1, 1, };

    static const F32 pcx_CANdb_ReceiveMessage_es_field_eng_min[4] = {
      0.0, -32768.0, -12800.0, -2048.0, };

    static const F32 pcx_CANdb_ReceiveMessage_es_field_eng_max[4] = {
      3906.19, 32767.0, 12799.6, 2047.94, };

    static const F32 pcx_CANdb_ReceiveMessage_es_field_scale[4] = {
      0.0596046, 1.0, 0.390625, 0.0625, };

    static const F32 pcx_CANdb_ReceiveMessage_es_field_offset[4] = {
      0.0, 0.0, 0.0, 0.0, };

    if (pcx_CANdb_ReceiveMessage_es_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive
        (pcx_CANdb_ReceiveMessage_es_msg_handle, data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_c = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_h = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_i = 1;
        pcx_CANdb_ReceiveMessage_es_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_es_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_es_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_es_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_es_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_es_out_port_buffer[2];
        pcx_CANdb_ReceiveMessage_es_out_port[3] = (F32*)
          &pcx_CANdb_ReceiveMessage_es_out_port_buffer[3];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_es_out_port[0], NULL,
                           &data[0], pcx_CANdb_ReceiveMessage_es_field_start_pos,
                           pcx_CANdb_ReceiveMessage_es_field_width,
                           pcx_CANdb_ReceiveMessage_es_field_is_signed,
                           pcx_CANdb_ReceiveMessage_es_field_valtype,
                           pcx_CANdb_ReceiveMessage_es_field_order,
                           pcx_CANdb_ReceiveMessage_es_field_eng_min,
                           pcx_CANdb_ReceiveMessage_es_field_eng_max,
                           pcx_CANdb_ReceiveMessage_es_field_scale,
                           pcx_CANdb_ReceiveMessage_es_field_offset, 0, 1, 4);
        ATV_B.pcx_CANdb_ReceiveMessage_o4_j =
          pcx_CANdb_ReceiveMessage_es_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5_p =
          pcx_CANdb_ReceiveMessage_es_out_port_buffer[1];
        ATV_B.pcx_CANdb_ReceiveMessage_o6_i =
          pcx_CANdb_ReceiveMessage_es_out_port_buffer[2];
        ATV_B.pcx_CANdb_ReceiveMessage_o7_o =
          pcx_CANdb_ReceiveMessage_es_out_port_buffer[3];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_i = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_c = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_i = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_h = 0;
    }
  }

  /* Chart: '<S16>/Chart' */
  ATV_Chart_o(ATV_B.pcx_CANdb_ReceiveMessage_o2_i, &ATV_B.sf_Chart_d0,
              &ATV_DW.sf_Chart_d0);

  /* Switch: '<S16>/Switch1' incorporates:
   *  Constant: '<S16>/Constant1'
   */
  if (ATV_B.sf_Chart_d0.out) {
    rtb_Switch = floor(ATV_B.pcx_CANdb_ReceiveMessage_o5_p);
    if (rtIsNaN(rtb_Switch) || rtIsInf(rtb_Switch)) {
      rtb_Switch = 0.0;
    } else {
      rtb_Switch = fmod(rtb_Switch, 65536.0);
    }

    ATV_B.Switch1_h = (int16_T)(rtb_Switch < 0.0 ? (int32_T)(int16_T)-(int16_T)
      (uint16_T)-rtb_Switch : (int32_T)(int16_T)(uint16_T)rtb_Switch);
  } else {
    ATV_B.Switch1_h = 0;
  }

  /* End of Switch: '<S16>/Switch1' */

  /* S-Function (pcx_candb_receive_message): '<S17>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S17>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_a_out_port_buffer[4];
    F32 * pcx_CANdb_ReceiveMessage_a_out_port[4];
    static const U8 pcx_CANdb_ReceiveMessage_a_field_start_pos[4] = {
      48, 32, 16, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_a_field_width[4] = {
      16, 16, 16, 16, };

    static const U8 pcx_CANdb_ReceiveMessage_a_field_is_signed[4] = {
      0, 1, 1, 1, };

    static const U8 pcx_CANdb_ReceiveMessage_a_field_valtype[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_a_field_order[4] = {
      1, 1, 1, 1, };

    static const F32 pcx_CANdb_ReceiveMessage_a_field_eng_min[4] = {
      0.0, -32768.0, -12800.0, -2048.0, };

    static const F32 pcx_CANdb_ReceiveMessage_a_field_eng_max[4] = {
      3906.19, 32767.0, 12799.6, 2047.94, };

    static const F32 pcx_CANdb_ReceiveMessage_a_field_scale[4] = {
      0.0596046, 1.0, 0.390625, 0.0625, };

    static const F32 pcx_CANdb_ReceiveMessage_a_field_offset[4] = {
      0.0, 0.0, 0.0, 0.0, };

    if (pcx_CANdb_ReceiveMessage_a_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_a_msg_handle,
        data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_m1 = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_iz = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_d = 1;
        pcx_CANdb_ReceiveMessage_a_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_a_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_a_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_a_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_a_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_a_out_port_buffer[2];
        pcx_CANdb_ReceiveMessage_a_out_port[3] = (F32*)
          &pcx_CANdb_ReceiveMessage_a_out_port_buffer[3];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_a_out_port[0], NULL, &data
                           [0], pcx_CANdb_ReceiveMessage_a_field_start_pos,
                           pcx_CANdb_ReceiveMessage_a_field_width,
                           pcx_CANdb_ReceiveMessage_a_field_is_signed,
                           pcx_CANdb_ReceiveMessage_a_field_valtype,
                           pcx_CANdb_ReceiveMessage_a_field_order,
                           pcx_CANdb_ReceiveMessage_a_field_eng_min,
                           pcx_CANdb_ReceiveMessage_a_field_eng_max,
                           pcx_CANdb_ReceiveMessage_a_field_scale,
                           pcx_CANdb_ReceiveMessage_a_field_offset, 0, 1, 4);
        ATV_B.pcx_CANdb_ReceiveMessage_o4_ly =
          pcx_CANdb_ReceiveMessage_a_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5_i =
          pcx_CANdb_ReceiveMessage_a_out_port_buffer[1];
        ATV_B.pcx_CANdb_ReceiveMessage_o6_e =
          pcx_CANdb_ReceiveMessage_a_out_port_buffer[2];
        ATV_B.pcx_CANdb_ReceiveMessage_o7_d =
          pcx_CANdb_ReceiveMessage_a_out_port_buffer[3];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_d = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_m1 = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_d = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_iz = 0;
    }
  }

  /* Chart: '<S17>/Chart' */
  ATV_Chart_o(ATV_B.pcx_CANdb_ReceiveMessage_o2_d, &ATV_B.sf_Chart_e,
              &ATV_DW.sf_Chart_e);

  /* Switch: '<S17>/Switch1' incorporates:
   *  Constant: '<S17>/Constant1'
   */
  if (ATV_B.sf_Chart_e.out) {
    rtb_Switch = floor(ATV_B.pcx_CANdb_ReceiveMessage_o5_i);
    if (rtIsNaN(rtb_Switch) || rtIsInf(rtb_Switch)) {
      rtb_Switch = 0.0;
    } else {
      rtb_Switch = fmod(rtb_Switch, 65536.0);
    }

    ATV_B.Switch1_f = (int16_T)(rtb_Switch < 0.0 ? (int32_T)(int16_T)-(int16_T)
      (uint16_T)-rtb_Switch : (int32_T)(int16_T)(uint16_T)rtb_Switch);
  } else {
    ATV_B.Switch1_f = 0;
  }

  /* End of Switch: '<S17>/Switch1' */

  /* S-Function (pcx_candb_receive_message): '<S18>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S18>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_er_out_port_buffer[3];
    F32 * pcx_CANdb_ReceiveMessage_er_out_port[3];
    static const U8 pcx_CANdb_ReceiveMessage_er_field_start_pos[3] = {
      0, 8, 16, };

    static const U8 pcx_CANdb_ReceiveMessage_er_field_width[3] = {
      1, 1, 1, };

    static const U8 pcx_CANdb_ReceiveMessage_er_field_is_signed[3] = {
      0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_er_field_valtype[3] = {
      0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_er_field_order[3] = {
      1, 1, 1, };

    static const F32 pcx_CANdb_ReceiveMessage_er_field_eng_min[3] = {
      0.0, 0.0, 0.0, };

    static const F32 pcx_CANdb_ReceiveMessage_er_field_eng_max[3] = {
      1.0, 1.0, 1.0, };

    static const F32 pcx_CANdb_ReceiveMessage_er_field_scale[3] = {
      1.0, 1.0, 1.0, };

    static const F32 pcx_CANdb_ReceiveMessage_er_field_offset[3] = {
      0.0, 0.0, 0.0, };

    if (pcx_CANdb_ReceiveMessage_er_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive
        (pcx_CANdb_ReceiveMessage_er_msg_handle, data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_i = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_p = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_g = 1;
        pcx_CANdb_ReceiveMessage_er_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_er_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_er_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_er_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_er_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_er_out_port_buffer[2];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_er_out_port[0], NULL,
                           &data[0], pcx_CANdb_ReceiveMessage_er_field_start_pos,
                           pcx_CANdb_ReceiveMessage_er_field_width,
                           pcx_CANdb_ReceiveMessage_er_field_is_signed,
                           pcx_CANdb_ReceiveMessage_er_field_valtype,
                           pcx_CANdb_ReceiveMessage_er_field_order,
                           pcx_CANdb_ReceiveMessage_er_field_eng_min,
                           pcx_CANdb_ReceiveMessage_er_field_eng_max,
                           pcx_CANdb_ReceiveMessage_er_field_scale,
                           pcx_CANdb_ReceiveMessage_er_field_offset, 0, 1, 3);
        ATV_B.pcx_CANdb_ReceiveMessage_o4_a =
          pcx_CANdb_ReceiveMessage_er_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5_d =
          pcx_CANdb_ReceiveMessage_er_out_port_buffer[1];
        ATV_B.pcx_CANdb_ReceiveMessage_o6_k =
          pcx_CANdb_ReceiveMessage_er_out_port_buffer[2];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_g = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_i = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_g = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_p = 0;
    }
  }

  /* Chart: '<S18>/Chart' */
  ATV_Chart_o(ATV_B.pcx_CANdb_ReceiveMessage_o2_g, &ATV_B.sf_Chart_ju,
              &ATV_DW.sf_Chart_ju);

  /* Switch: '<S18>/Switch1' */
  atv_v_dbg_chg_req = (ATV_B.sf_Chart_ju.out &&
                       (ATV_B.pcx_CANdb_ReceiveMessage_o5_d != 0.0));

  /* Switch: '<S18>/Switch2' */
  atv_v_dbg_heater_req = (ATV_B.sf_Chart_ju.out &&
    (ATV_B.pcx_CANdb_ReceiveMessage_o6_k != 0.0));

  /* S-Function (pax_adc_input): '<S28>/pai_BasicAnalogInput10' */
  /* S-Function Block: <S28>/pai_BasicAnalogInput10
   * [$Id: pax_adc_input.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  {
    int16_T adc;
    (void) pax_adc_input(PIO_AIN_YB3, &adc, FALSE);
    atv_yb3_raw_ain = (adc * 5.0) / 4096.0;
  }

  /* Switch: '<S28>/Switch' incorporates:
   *  Constant: '<S28>/Constant'
   */
  if (ATV_B.atv_yg3_raw_ain_o > 12.0) {
    rtb_Switch = atv_yb3_raw_ain;
  } else {
    rtb_Switch = 1.0;
  }

  /* End of Switch: '<S28>/Switch' */

  /* MATLABSystem: '<S28>/Moving Average' */
  if (ATV_DW.obj.TunablePropsChanged) {
    ATV_DW.obj.TunablePropsChanged = false;
  }

  if (ATV_DW.obj.pStatistic->isInitialized != 1) {
    ATV_DW.obj.pStatistic->isSetupComplete = false;
    ATV_DW.obj.pStatistic->isInitialized = 1;
    ATV_DW.obj.pStatistic->pCumSum = 0.0;
    ATV_DW.obj.pStatistic->pCumRevIndex = 1.0;
    ATV_DW.obj.pStatistic->isSetupComplete = true;
    ATV_DW.obj.pStatistic->pCumSum = 0.0;
    memset(&ATV_DW.obj.pStatistic->pCumSumRev[0], 0, 99U * sizeof(real_T));
    ATV_DW.obj.pStatistic->pCumRevIndex = 1.0;
  }

  cumRevIndex = ATV_DW.obj.pStatistic->pCumRevIndex;
  csum = ATV_DW.obj.pStatistic->pCumSum;
  for (z_tmp = 0; z_tmp < 99; z_tmp++) {
    csumrev[z_tmp] = ATV_DW.obj.pStatistic->pCumSumRev[z_tmp];
  }

  csum += rtb_Switch;
  z_tmp = (int32_T)cumRevIndex - 1;
  z = csumrev[z_tmp] + csum;
  csumrev[z_tmp] = rtb_Switch;
  if (cumRevIndex != 99.0) {
    cumRevIndex++;
  } else {
    cumRevIndex = 1.0;
    csum = 0.0;
    for (z_tmp = 97; z_tmp >= 0; z_tmp--) {
      csumrev[z_tmp] += csumrev[z_tmp + 1];
    }
  }

  ATV_DW.obj.pStatistic->pCumSum = csum;
  memcpy(&ATV_DW.obj.pStatistic->pCumSumRev[0], &csumrev[0], 99U * sizeof(real_T));
  ATV_DW.obj.pStatistic->pCumRevIndex = cumRevIndex;
  atv_yg3_raw_ain = z / 100.0;

  /* End of MATLABSystem: '<S28>/Moving Average' */

  /* S-Function (pcx_candb_receive_message): '<S5>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S5>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_g_out_port_buffer[4];
    F32 * pcx_CANdb_ReceiveMessage_g_out_port[4];
    static const U8 pcx_CANdb_ReceiveMessage_g_field_start_pos[4] = {
      0, 16, 32, 48, };

    static const U8 pcx_CANdb_ReceiveMessage_g_field_width[4] = {
      16, 16, 16, 16, };

    static const U8 pcx_CANdb_ReceiveMessage_g_field_is_signed[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_g_field_valtype[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_g_field_order[4] = {
      1, 1, 1, 1, };

    static const F32 pcx_CANdb_ReceiveMessage_g_field_eng_min[4] = {
      0.0, 0.0, 0.0, 0.0, };

    static const F32 pcx_CANdb_ReceiveMessage_g_field_eng_max[4] = {
      65535.0, 65535.0, 65535.0, 65535.0, };

    static const F32 pcx_CANdb_ReceiveMessage_g_field_scale[4] = {
      1.0, 1.0, 1.0, 1.0, };

    static const F32 pcx_CANdb_ReceiveMessage_g_field_offset[4] = {
      0.0, 0.0, 0.0, 0.0, };

    if (pcx_CANdb_ReceiveMessage_g_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_g_msg_handle,
        data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_a = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_l = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_gq = 1;
        pcx_CANdb_ReceiveMessage_g_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_g_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_g_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_g_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_g_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_g_out_port_buffer[2];
        pcx_CANdb_ReceiveMessage_g_out_port[3] = (F32*)
          &pcx_CANdb_ReceiveMessage_g_out_port_buffer[3];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_g_out_port[0], NULL, &data
                           [0], pcx_CANdb_ReceiveMessage_g_field_start_pos,
                           pcx_CANdb_ReceiveMessage_g_field_width,
                           pcx_CANdb_ReceiveMessage_g_field_is_signed,
                           pcx_CANdb_ReceiveMessage_g_field_valtype,
                           pcx_CANdb_ReceiveMessage_g_field_order,
                           pcx_CANdb_ReceiveMessage_g_field_eng_min,
                           pcx_CANdb_ReceiveMessage_g_field_eng_max,
                           pcx_CANdb_ReceiveMessage_g_field_scale,
                           pcx_CANdb_ReceiveMessage_g_field_offset, 0, 1, 4);
        ATV_B.pcx_CANdb_ReceiveMessage_o4_p =
          pcx_CANdb_ReceiveMessage_g_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5_mt =
          pcx_CANdb_ReceiveMessage_g_out_port_buffer[1];
        ATV_B.pcx_CANdb_ReceiveMessage_o6_m =
          pcx_CANdb_ReceiveMessage_g_out_port_buffer[2];
        ATV_B.pcx_CANdb_ReceiveMessage_o7_ig =
          pcx_CANdb_ReceiveMessage_g_out_port_buffer[3];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_gq = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_a = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_gq = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_l = 0;
    }
  }

  /* S-Function (pcx_candb_receive_message): '<S8>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S8>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_lz_out_port_buffer[4];
    F32 * pcx_CANdb_ReceiveMessage_lz_out_port[4];
    static const U8 pcx_CANdb_ReceiveMessage_lz_field_start_pos[4] = {
      48, 32, 16, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_lz_field_width[4] = {
      16, 16, 16, 16, };

    static const U8 pcx_CANdb_ReceiveMessage_lz_field_is_signed[4] = {
      0, 1, 1, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_lz_field_valtype[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_lz_field_order[4] = {
      1, 1, 1, 1, };

    static const F32 pcx_CANdb_ReceiveMessage_lz_field_eng_min[4] = {
      0.0, -128.0, -2048.0, 0.0, };

    static const F32 pcx_CANdb_ReceiveMessage_lz_field_eng_max[4] = {
      65535.0, 127.996, 2047.94, 4095.94, };

    static const F32 pcx_CANdb_ReceiveMessage_lz_field_scale[4] = {
      1.0, 0.00390625, 0.0625, 0.0625, };

    static const F32 pcx_CANdb_ReceiveMessage_lz_field_offset[4] = {
      0.0, 0.0, 0.0, 0.0, };

    if (pcx_CANdb_ReceiveMessage_lz_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive
        (pcx_CANdb_ReceiveMessage_lz_msg_handle, data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_ht = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_gf = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_et = 1;
        pcx_CANdb_ReceiveMessage_lz_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_lz_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_lz_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_lz_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_lz_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_lz_out_port_buffer[2];
        pcx_CANdb_ReceiveMessage_lz_out_port[3] = (F32*)
          &pcx_CANdb_ReceiveMessage_lz_out_port_buffer[3];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_lz_out_port[0], NULL,
                           &data[0], pcx_CANdb_ReceiveMessage_lz_field_start_pos,
                           pcx_CANdb_ReceiveMessage_lz_field_width,
                           pcx_CANdb_ReceiveMessage_lz_field_is_signed,
                           pcx_CANdb_ReceiveMessage_lz_field_valtype,
                           pcx_CANdb_ReceiveMessage_lz_field_order,
                           pcx_CANdb_ReceiveMessage_lz_field_eng_min,
                           pcx_CANdb_ReceiveMessage_lz_field_eng_max,
                           pcx_CANdb_ReceiveMessage_lz_field_scale,
                           pcx_CANdb_ReceiveMessage_lz_field_offset, 0, 1, 4);
        ATV_B.pcx_CANdb_ReceiveMessage_o4_o =
          pcx_CANdb_ReceiveMessage_lz_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5_dy =
          pcx_CANdb_ReceiveMessage_lz_out_port_buffer[1];
        ATV_B.pcx_CANdb_ReceiveMessage_o6_ns =
          pcx_CANdb_ReceiveMessage_lz_out_port_buffer[2];
        ATV_B.pcx_CANdb_ReceiveMessage_o7_l =
          pcx_CANdb_ReceiveMessage_lz_out_port_buffer[3];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_et = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_ht = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_et = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_gf = 0;
    }
  }

  /* Chart: '<S8>/Chart' */
  ATV_Chart_o(ATV_B.pcx_CANdb_ReceiveMessage_o2_et, &ATV_B.sf_Chart_o,
              &ATV_DW.sf_Chart_o);

  /* S-Function (pcx_candb_receive_message): '<S9>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S9>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_i_out_port_buffer[4];
    F32 * pcx_CANdb_ReceiveMessage_i_out_port[4];
    static const U8 pcx_CANdb_ReceiveMessage_i_field_start_pos[4] = {
      48, 32, 16, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_i_field_width[4] = {
      16, 16, 16, 16, };

    static const U8 pcx_CANdb_ReceiveMessage_i_field_is_signed[4] = {
      0, 1, 1, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_i_field_valtype[4] = {
      0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_i_field_order[4] = {
      1, 1, 1, 1, };

    static const F32 pcx_CANdb_ReceiveMessage_i_field_eng_min[4] = {
      0.0, -128.0, -2048.0, 0.0, };

    static const F32 pcx_CANdb_ReceiveMessage_i_field_eng_max[4] = {
      65535.0, 127.996, 2047.94, 4095.94, };

    static const F32 pcx_CANdb_ReceiveMessage_i_field_scale[4] = {
      1.0, 0.00390625, 0.0625, 0.0625, };

    static const F32 pcx_CANdb_ReceiveMessage_i_field_offset[4] = {
      0.0, 0.0, 0.0, 0.0, };

    if (pcx_CANdb_ReceiveMessage_i_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive(pcx_CANdb_ReceiveMessage_i_msg_handle,
        data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_dy = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_n = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_gi = 1;
        pcx_CANdb_ReceiveMessage_i_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_i_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_i_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_i_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_i_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_i_out_port_buffer[2];
        pcx_CANdb_ReceiveMessage_i_out_port[3] = (F32*)
          &pcx_CANdb_ReceiveMessage_i_out_port_buffer[3];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_i_out_port[0], NULL, &data
                           [0], pcx_CANdb_ReceiveMessage_i_field_start_pos,
                           pcx_CANdb_ReceiveMessage_i_field_width,
                           pcx_CANdb_ReceiveMessage_i_field_is_signed,
                           pcx_CANdb_ReceiveMessage_i_field_valtype,
                           pcx_CANdb_ReceiveMessage_i_field_order,
                           pcx_CANdb_ReceiveMessage_i_field_eng_min,
                           pcx_CANdb_ReceiveMessage_i_field_eng_max,
                           pcx_CANdb_ReceiveMessage_i_field_scale,
                           pcx_CANdb_ReceiveMessage_i_field_offset, 0, 1, 4);
        ATV_B.pcx_CANdb_ReceiveMessage_o4_n =
          pcx_CANdb_ReceiveMessage_i_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5_l =
          pcx_CANdb_ReceiveMessage_i_out_port_buffer[1];
        ATV_B.pcx_CANdb_ReceiveMessage_o6_j =
          pcx_CANdb_ReceiveMessage_i_out_port_buffer[2];
        ATV_B.pcx_CANdb_ReceiveMessage_o7_m =
          pcx_CANdb_ReceiveMessage_i_out_port_buffer[3];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_gi = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_dy = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_gi = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_n = 0;
    }
  }

  /* Chart: '<S9>/Chart' */
  ATV_Chart_o(ATV_B.pcx_CANdb_ReceiveMessage_o2_gi, &ATV_B.sf_Chart_c,
              &ATV_DW.sf_Chart_c);

  /* Logic: '<S9>/Logical Operator' incorporates:
   *  Constant: '<S52>/Constant'
   *  RelationalOperator: '<S52>/Compare'
   */
  ATV_B.LogicalOperator_g = (ATV_B.sf_Chart_c.out &&
    (ATV_B.pcx_CANdb_ReceiveMessage_o4_n == 0.0));

  /* S-Function (pdd_data_output): '<Root>/pdd_DataOutput2' incorporates:
   *  Constant: '<Root>/Constant4'
   */
  /* S-Function Block: <Root>/pdd_DataOutput2
   * [$Id: pdd_data_output.tlc 62873 2018-04-11 21:32:30Z cyoung $]
   */
  {
    (void)pdd_data_output(PIO_DDOT_YE4_YF4_SEL_WAKE_ID_MASK,
                          1.0,
                          FALSE);
  }

  /* S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput4' incorporates:
   *  Constant: '<Root>/Constant5'
   */
  /* S-Function Block: <Root>/pdx_DigitalOutput4
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  {
    uint8_T state;
    put_state_processing((U8)1.0,
                         (U8)0,
                         (U8)false,
                         (U8)0.0,
                         &state);
    (void) pdx_digital_output(PIO_DOT_YE4_YF4_ENABLE_SELECTIVE_WAKE, state,
      FALSE);
  }

  /* S-Function (pdd_data_output): '<Root>/pdd_DataOutput1' incorporates:
   *  Constant: '<Root>/Constant6'
   */
  /* S-Function Block: <Root>/pdd_DataOutput1
   * [$Id: pdd_data_output.tlc 62873 2018-04-11 21:32:30Z cyoung $]
   */
  {
    (void)pdd_data_output(PIO_DDOT_YE4_YF4_SEL_WAKE_ID,
                          932.0,
                          FALSE);
  }

  /* S-Function (pcx_candb_receive_message): '<S14>/pcx_CANdb_ReceiveMessage' */
  /* S-Function Block: <S14>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  {
    U8 data[8];
    U32 timestamp;
    S8 pcxf_rx_receive_status;
    F32 pcx_CANdb_ReceiveMessage_fn_out_port_buffer[9];
    F32 * pcx_CANdb_ReceiveMessage_fn_out_port[9];
    static const U8 pcx_CANdb_ReceiveMessage_fn_field_start_pos[9] = {
      0, 7, 8, 16, 24, 32, 40, 48, 56, };

    static const U8 pcx_CANdb_ReceiveMessage_fn_field_width[9] = {
      7, 1, 8, 8, 8, 8, 8, 8, 8, };

    static const U8 pcx_CANdb_ReceiveMessage_fn_field_is_signed[9] = {
      0, 0, 0, 0, 0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_fn_field_valtype[9] = {
      0, 0, 0, 0, 0, 0, 0, 0, 0, };

    static const U8 pcx_CANdb_ReceiveMessage_fn_field_order[9] = {
      1, 1, 1, 1, 1, 1, 1, 1, 1, };

    static const F32 pcx_CANdb_ReceiveMessage_fn_field_eng_min[9] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
      0.0, 0.0, 0.0, 0.0, };

    static const F32 pcx_CANdb_ReceiveMessage_fn_field_eng_max[9] = {
      127.0, 1.0, 255.0, 255.0, 255.0,
      255.0, 255.0, 255.0, 255.0, };

    static const F32 pcx_CANdb_ReceiveMessage_fn_field_scale[9] = {
      1.0, 1.0, 1.0, 1.0, 1.0,
      1.0, 1.0, 1.0, 1.0, };

    static const F32 pcx_CANdb_ReceiveMessage_fn_field_offset[9] = {
      0.0, 0.0, 0.0, 0.0, 0.0,
      0.0, 0.0, 0.0, 0.0, };

    if (pcx_CANdb_ReceiveMessage_fn_msg_handle != PCX_CONFIG_ERROR) {
      pcxf_rx_receive_status = pcx_receive
        (pcx_CANdb_ReceiveMessage_fn_msg_handle, data, &timestamp);
      ATV_B.pcx_CANdb_ReceiveMessage_o1_kr = (0 != (pcxf_rx_receive_status &
        PCX_RX_ERROR));
      ATV_B.pcx_CANdb_ReceiveMessage_o3_j = (0 != (pcxf_rx_receive_status &
        PCX_RX_OVERRUN));

      /* decompose message into fields */
      if (pcxf_rx_receive_status & PCX_RX_DATA) {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_c = 1;
        pcx_CANdb_ReceiveMessage_fn_out_port[0] = (F32*)
          &pcx_CANdb_ReceiveMessage_fn_out_port_buffer[0];
        pcx_CANdb_ReceiveMessage_fn_out_port[1] = (F32*)
          &pcx_CANdb_ReceiveMessage_fn_out_port_buffer[1];
        pcx_CANdb_ReceiveMessage_fn_out_port[2] = (F32*)
          &pcx_CANdb_ReceiveMessage_fn_out_port_buffer[2];
        pcx_CANdb_ReceiveMessage_fn_out_port[3] = (F32*)
          &pcx_CANdb_ReceiveMessage_fn_out_port_buffer[3];
        pcx_CANdb_ReceiveMessage_fn_out_port[4] = (F32*)
          &pcx_CANdb_ReceiveMessage_fn_out_port_buffer[4];
        pcx_CANdb_ReceiveMessage_fn_out_port[5] = (F32*)
          &pcx_CANdb_ReceiveMessage_fn_out_port_buffer[5];
        pcx_CANdb_ReceiveMessage_fn_out_port[6] = (F32*)
          &pcx_CANdb_ReceiveMessage_fn_out_port_buffer[6];
        pcx_CANdb_ReceiveMessage_fn_out_port[7] = (F32*)
          &pcx_CANdb_ReceiveMessage_fn_out_port_buffer[7];
        pcx_CANdb_ReceiveMessage_fn_out_port[8] = (F32*)
          &pcx_CANdb_ReceiveMessage_fn_out_port_buffer[8];
        pcx_vdb_unpack_msg(&pcx_CANdb_ReceiveMessage_fn_out_port[0], NULL,
                           &data[0], pcx_CANdb_ReceiveMessage_fn_field_start_pos,
                           pcx_CANdb_ReceiveMessage_fn_field_width,
                           pcx_CANdb_ReceiveMessage_fn_field_is_signed,
                           pcx_CANdb_ReceiveMessage_fn_field_valtype,
                           pcx_CANdb_ReceiveMessage_fn_field_order,
                           pcx_CANdb_ReceiveMessage_fn_field_eng_min,
                           pcx_CANdb_ReceiveMessage_fn_field_eng_max,
                           pcx_CANdb_ReceiveMessage_fn_field_scale,
                           pcx_CANdb_ReceiveMessage_fn_field_offset, 0, 1, 9);
        ATV_B.pcx_CANdb_ReceiveMessage_o4_i =
          pcx_CANdb_ReceiveMessage_fn_out_port_buffer[0];
        ATV_B.pcx_CANdb_ReceiveMessage_o5_b =
          pcx_CANdb_ReceiveMessage_fn_out_port_buffer[1];
        ATV_B.pcx_CANdb_ReceiveMessage_o6_ec =
          pcx_CANdb_ReceiveMessage_fn_out_port_buffer[2];
        ATV_B.pcx_CANdb_ReceiveMessage_o7_c =
          pcx_CANdb_ReceiveMessage_fn_out_port_buffer[3];
        ATV_B.pcx_CANdb_ReceiveMessage_o8 =
          pcx_CANdb_ReceiveMessage_fn_out_port_buffer[4];
        ATV_B.pcx_CANdb_ReceiveMessage_o9 =
          pcx_CANdb_ReceiveMessage_fn_out_port_buffer[5];
        ATV_B.pcx_CANdb_ReceiveMessage_o10 =
          pcx_CANdb_ReceiveMessage_fn_out_port_buffer[6];
        ATV_B.pcx_CANdb_ReceiveMessage_o11 =
          pcx_CANdb_ReceiveMessage_fn_out_port_buffer[7];
        ATV_B.pcx_CANdb_ReceiveMessage_o12 =
          pcx_CANdb_ReceiveMessage_fn_out_port_buffer[8];
      } else {
        ATV_B.pcx_CANdb_ReceiveMessage_o2_c = 0;
      }
    } else {
      /* error: pcx_declare_message was unsuccessful */
      ATV_B.pcx_CANdb_ReceiveMessage_o1_kr = 1;
      ATV_B.pcx_CANdb_ReceiveMessage_o2_c = 0;
      ATV_B.pcx_CANdb_ReceiveMessage_o3_j = 0;
    }
  }

  /* Outputs for Triggered SubSystem: '<S14>/Triggered Subsystem' incorporates:
   *  TriggerPort: '<S57>/Trigger'
   */
  if (ATV_B.pcx_CANdb_ReceiveMessage_o2_c &&
      (ATV_PrevZCX.TriggeredSubsystem_Trig_ZCE != POS_ZCSIG)) {
    /* SwitchCase: '<S57>/Switch Case' */
    if (ATV_B.pcx_CANdb_ReceiveMessage_o4_i < 0.0) {
      rtb_Switch = ceil(ATV_B.pcx_CANdb_ReceiveMessage_o4_i);
    } else {
      rtb_Switch = floor(ATV_B.pcx_CANdb_ReceiveMessage_o4_i);
    }

    if (rtIsNaN(rtb_Switch) || rtIsInf(rtb_Switch)) {
      rtb_Switch = 0.0;
    } else {
      rtb_Switch = fmod(rtb_Switch, 4.294967296E+9);
    }

    if ((rtb_Switch < 0.0 ? -(int32_T)(uint32_T)-rtb_Switch : (int32_T)(uint32_T)
         rtb_Switch) == 1) {
      /* Outputs for IfAction SubSystem: '<S57>/Switch Case Action Subsystem' incorporates:
       *  ActionPort: '<S58>/Action Port'
       */
      /* If: '<S58>/If' */
      if ((ATV_B.pcx_CANdb_ReceiveMessage_o6_ec <= 3) &&
          (ATV_B.pcx_CANdb_ReceiveMessage_o7_c <= 3)) {
        /* Outputs for IfAction SubSystem: '<S58>/If Action Subsystem' incorporates:
         *  ActionPort: '<S60>/Action Port'
         */
        /* If: '<S60>/If' */
        if (ATV_B.pcx_CANdb_ReceiveMessage_o5_b > 0.0) {
          /* Outputs for IfAction SubSystem: '<S60>/If Action Subsystem' incorporates:
           *  ActionPort: '<S62>/Action Port'
           */
          /* S-Function (pnv_array): '<S62>/pnv_array2' incorporates:
           *  Constant: '<S62>/Constant2'
           *  Constant: '<S62>/Constant3'
           *  Constant: '<S62>/Constant6'
           */
          /*
           * S-Function Block: <S62>/pnv_array2
           * [$Id: pnv_array.tlc 46682 2015-05-20 19:09:48Z egriwicki $]
           */
          {
            U8 valid_index;
            pnv_array
              (
               ((uint8_T)0U),          /* index */
               (void*)&ATV_B.pcx_CANdb_ReceiveMessage_o6_ec, /* new value */
               (BOOL)true,             /* change */
               (BOOL)false,            /* reset */
               1,                      /* number of bytes per element */
               2,                      /* number of array elements */
               atvv_map,               /* pointer to the default map's z axis */
               &valid_index,           /* valid index */
               (void*)&ATV_B.pnv_array2_o2_md /* array output, possibly modified */
               );
            ATV_B.pnv_array2_o1_c = valid_index;
          }

          /* Saturate: '<S62>/Saturation1' */
          if (ATV_B.pnv_array2_o2_md < 3) {
            ATV_B.Saturation1_n = ATV_B.pnv_array2_o2_md;
          } else {
            ATV_B.Saturation1_n = 3U;
          }

          /* End of Saturate: '<S62>/Saturation1' */

          /* S-Function (pnv_array): '<S62>/pnv_array1' incorporates:
           *  Constant: '<S62>/Constant4'
           *  Constant: '<S62>/Constant5'
           *  Constant: '<S62>/Constant7'
           */
          /*
           * S-Function Block: <S62>/pnv_array1
           * [$Id: pnv_array.tlc 46682 2015-05-20 19:09:48Z egriwicki $]
           */
          {
            U8 valid_index;
            pnv_array
              (
               ((uint8_T)1U),          /* index */
               (void*)&ATV_B.pcx_CANdb_ReceiveMessage_o7_c, /* new value */
               (BOOL)true,             /* change */
               (BOOL)false,            /* reset */
               1,                      /* number of bytes per element */
               2,                      /* number of array elements */
               atvv_map,               /* pointer to the default map's z axis */
               &valid_index,           /* valid index */
               (void*)&ATV_B.pnv_array1_o2_c /* array output, possibly modified */
               );
            ATV_B.pnv_array1_o1_n = valid_index;
          }

          /* Saturate: '<S62>/Saturation3' */
          if (ATV_B.pnv_array1_o2_c < 3) {
            ATV_B.Saturation3 = ATV_B.pnv_array1_o2_c;
          } else {
            ATV_B.Saturation3 = 3U;
          }

          /* End of Saturate: '<S62>/Saturation3' */

          /* S-Function (pcx_candb_transmit_message): '<S62>/pcx_CANdb_TransmitMessage' incorporates:
           *  Constant: '<S62>/Constant'
           *  Constant: '<S62>/Constant1'
           */
          /* S-Function Block: <S62>/pcx_CANdb_TransmitMessage
           * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
           */
          {
            U8 data[8];
            BOOL retval;
            F32 pcx_CANdb_TransmitMessage_k_in_port_buffer[9];
            F32 * pcx_CANdb_TransmitMessage_k_in_port_ptr[9];
            static const U8 pcx_CANdb_TransmitMessage_k_field_start_pos[9] = {
              0, 7, 8, 16, 24, 32, 40, 48, 56, };

            static const U8 pcx_CANdb_TransmitMessage_k_field_width[9] = {
              7, 1, 8, 8, 8, 8, 8, 8, 8, };

            static const U8 pcx_CANdb_TransmitMessage_k_field_is_signed[9] = {
              0, 0, 0, 0, 0, 0, 0, 0, 0, };

            static const U8 pcx_CANdb_TransmitMessage_k_field_valtype[9] = {
              0, 0, 0, 0, 0, 0, 0, 0, 0, };

            static const U8 pcx_CANdb_TransmitMessage_k_field_order[9] = {
              1, 1, 1, 1, 1, 1, 1, 1, 1, };

            static const F32 pcx_CANdb_TransmitMessage_k_field_eng_min[9] = {
              0.0, 0.0, 0.0, 0.0, 0.0,
              0.0, 0.0, 0.0, 0.0, };

            static const F32 pcx_CANdb_TransmitMessage_k_field_eng_max[9] = {
              127.0, 1.0, 255.0, 255.0, 255.0,
              255.0, 255.0, 255.0, 255.0, };

            static const F32 pcx_CANdb_TransmitMessage_k_field_scale[9] = {
              1.0, 1.0, 1.0, 1.0, 1.0,
              1.0, 1.0, 1.0, 1.0, };

            static const F32 pcx_CANdb_TransmitMessage_k_field_offset[9] = {
              0.0, 0.0, 0.0, 0.0, 0.0,
              0.0, 0.0, 0.0, 0.0, };

            if (pcx_CANdb_TransmitMessage_k_msg_handle != PCX_CONFIG_ERROR) {
              pcx_CANdb_TransmitMessage_k_in_port_buffer[0] = 1.0;
              pcx_CANdb_TransmitMessage_k_in_port_ptr[0] =
                &pcx_CANdb_TransmitMessage_k_in_port_buffer[0];
              pcx_CANdb_TransmitMessage_k_in_port_buffer[1] = 0.0;
              pcx_CANdb_TransmitMessage_k_in_port_ptr[1] =
                &pcx_CANdb_TransmitMessage_k_in_port_buffer[1];
              pcx_CANdb_TransmitMessage_k_in_port_buffer[2] =
                ATV_B.Saturation1_n;
              pcx_CANdb_TransmitMessage_k_in_port_ptr[2] =
                &pcx_CANdb_TransmitMessage_k_in_port_buffer[2];
              pcx_CANdb_TransmitMessage_k_in_port_buffer[3] = ATV_B.Saturation3;
              pcx_CANdb_TransmitMessage_k_in_port_ptr[3] =
                &pcx_CANdb_TransmitMessage_k_in_port_buffer[3];
              pcx_CANdb_TransmitMessage_k_in_port_buffer[4] = 0.0;
              pcx_CANdb_TransmitMessage_k_in_port_ptr[4] =
                &pcx_CANdb_TransmitMessage_k_in_port_buffer[4];
              pcx_CANdb_TransmitMessage_k_in_port_buffer[5] = 0.0;
              pcx_CANdb_TransmitMessage_k_in_port_ptr[5] =
                &pcx_CANdb_TransmitMessage_k_in_port_buffer[5];
              pcx_CANdb_TransmitMessage_k_in_port_buffer[6] = 0.0;
              pcx_CANdb_TransmitMessage_k_in_port_ptr[6] =
                &pcx_CANdb_TransmitMessage_k_in_port_buffer[6];
              pcx_CANdb_TransmitMessage_k_in_port_buffer[7] = 0.0;
              pcx_CANdb_TransmitMessage_k_in_port_ptr[7] =
                &pcx_CANdb_TransmitMessage_k_in_port_buffer[7];
              pcx_CANdb_TransmitMessage_k_in_port_buffer[8] = 0.0;
              pcx_CANdb_TransmitMessage_k_in_port_ptr[8] =
                &pcx_CANdb_TransmitMessage_k_in_port_buffer[8];
              pcx_vdb_pack_msg((const F32 * const *)
                               &pcx_CANdb_TransmitMessage_k_in_port_ptr[0],
                               &data[0],
                               pcx_CANdb_TransmitMessage_k_field_start_pos,
                               pcx_CANdb_TransmitMessage_k_field_width,
                               pcx_CANdb_TransmitMessage_k_field_is_signed,
                               pcx_CANdb_TransmitMessage_k_field_valtype,
                               pcx_CANdb_TransmitMessage_k_field_order,
                               pcx_CANdb_TransmitMessage_k_field_eng_min,
                               pcx_CANdb_TransmitMessage_k_field_eng_max,
                               pcx_CANdb_TransmitMessage_k_field_scale,
                               pcx_CANdb_TransmitMessage_k_field_offset, 0, 1, 9);

              /* Do a transmit every time we are called, (CT2) */
              retval = pcx_transmit(pcx_CANdb_TransmitMessage_k_msg_handle, data);
            } else {
              /* error: pcx_declare_message was unsuccessful */
              retval = FALSE;
            }

            ATV_B.pcx_CANdb_TransmitMessage_n = !retval;
          }

          /* End of Outputs for SubSystem: '<S60>/If Action Subsystem' */
        } else {
          /* Outputs for IfAction SubSystem: '<S60>/If Action Subsystem1' incorporates:
           *  ActionPort: '<S63>/Action Port'
           */
          /* S-Function (pcx_candb_transmit_message): '<S63>/pcx_CANdb_TransmitMessage' incorporates:
           *  Constant: '<S63>/Constant'
           *  Constant: '<S63>/Constant1'
           */
          /* S-Function Block: <S63>/pcx_CANdb_TransmitMessage
           * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
           */
          {
            U8 data[8];
            BOOL retval;
            F32 pcx_CANdb_TransmitMessage_j_in_port_buffer[9];
            F32 * pcx_CANdb_TransmitMessage_j_in_port_ptr[9];
            static const U8 pcx_CANdb_TransmitMessage_j_field_start_pos[9] = {
              0, 7, 8, 16, 24, 32, 40, 48, 56, };

            static const U8 pcx_CANdb_TransmitMessage_j_field_width[9] = {
              7, 1, 8, 8, 8, 8, 8, 8, 8, };

            static const U8 pcx_CANdb_TransmitMessage_j_field_is_signed[9] = {
              0, 0, 0, 0, 0, 0, 0, 0, 0, };

            static const U8 pcx_CANdb_TransmitMessage_j_field_valtype[9] = {
              0, 0, 0, 0, 0, 0, 0, 0, 0, };

            static const U8 pcx_CANdb_TransmitMessage_j_field_order[9] = {
              1, 1, 1, 1, 1, 1, 1, 1, 1, };

            static const F32 pcx_CANdb_TransmitMessage_j_field_eng_min[9] = {
              0.0, 0.0, 0.0, 0.0, 0.0,
              0.0, 0.0, 0.0, 0.0, };

            static const F32 pcx_CANdb_TransmitMessage_j_field_eng_max[9] = {
              127.0, 1.0, 255.0, 255.0, 255.0,
              255.0, 255.0, 255.0, 255.0, };

            static const F32 pcx_CANdb_TransmitMessage_j_field_scale[9] = {
              1.0, 1.0, 1.0, 1.0, 1.0,
              1.0, 1.0, 1.0, 1.0, };

            static const F32 pcx_CANdb_TransmitMessage_j_field_offset[9] = {
              0.0, 0.0, 0.0, 0.0, 0.0,
              0.0, 0.0, 0.0, 0.0, };

            if (pcx_CANdb_TransmitMessage_j_msg_handle != PCX_CONFIG_ERROR) {
              pcx_CANdb_TransmitMessage_j_in_port_buffer[0] = 1.0;
              pcx_CANdb_TransmitMessage_j_in_port_ptr[0] =
                &pcx_CANdb_TransmitMessage_j_in_port_buffer[0];
              pcx_CANdb_TransmitMessage_j_in_port_buffer[1] = 0.0;
              pcx_CANdb_TransmitMessage_j_in_port_ptr[1] =
                &pcx_CANdb_TransmitMessage_j_in_port_buffer[1];
              pcx_CANdb_TransmitMessage_j_in_port_buffer[2] = 0.0;
              pcx_CANdb_TransmitMessage_j_in_port_ptr[2] =
                &pcx_CANdb_TransmitMessage_j_in_port_buffer[2];
              pcx_CANdb_TransmitMessage_j_in_port_buffer[3] = 0.0;
              pcx_CANdb_TransmitMessage_j_in_port_ptr[3] =
                &pcx_CANdb_TransmitMessage_j_in_port_buffer[3];
              pcx_CANdb_TransmitMessage_j_in_port_buffer[4] = 0.0;
              pcx_CANdb_TransmitMessage_j_in_port_ptr[4] =
                &pcx_CANdb_TransmitMessage_j_in_port_buffer[4];
              pcx_CANdb_TransmitMessage_j_in_port_buffer[5] = 0.0;
              pcx_CANdb_TransmitMessage_j_in_port_ptr[5] =
                &pcx_CANdb_TransmitMessage_j_in_port_buffer[5];
              pcx_CANdb_TransmitMessage_j_in_port_buffer[6] = 0.0;
              pcx_CANdb_TransmitMessage_j_in_port_ptr[6] =
                &pcx_CANdb_TransmitMessage_j_in_port_buffer[6];
              pcx_CANdb_TransmitMessage_j_in_port_buffer[7] = 0.0;
              pcx_CANdb_TransmitMessage_j_in_port_ptr[7] =
                &pcx_CANdb_TransmitMessage_j_in_port_buffer[7];
              pcx_CANdb_TransmitMessage_j_in_port_buffer[8] = 0.0;
              pcx_CANdb_TransmitMessage_j_in_port_ptr[8] =
                &pcx_CANdb_TransmitMessage_j_in_port_buffer[8];
              pcx_vdb_pack_msg((const F32 * const *)
                               &pcx_CANdb_TransmitMessage_j_in_port_ptr[0],
                               &data[0],
                               pcx_CANdb_TransmitMessage_j_field_start_pos,
                               pcx_CANdb_TransmitMessage_j_field_width,
                               pcx_CANdb_TransmitMessage_j_field_is_signed,
                               pcx_CANdb_TransmitMessage_j_field_valtype,
                               pcx_CANdb_TransmitMessage_j_field_order,
                               pcx_CANdb_TransmitMessage_j_field_eng_min,
                               pcx_CANdb_TransmitMessage_j_field_eng_max,
                               pcx_CANdb_TransmitMessage_j_field_scale,
                               pcx_CANdb_TransmitMessage_j_field_offset, 0, 1, 9);

              /* Do a transmit every time we are called, (CT2) */
              retval = pcx_transmit(pcx_CANdb_TransmitMessage_j_msg_handle, data);
            } else {
              /* error: pcx_declare_message was unsuccessful */
              retval = FALSE;
            }

            ATV_B.pcx_CANdb_TransmitMessage_l = !retval;
          }

          /* End of Outputs for SubSystem: '<S60>/If Action Subsystem1' */
        }

        /* End of If: '<S60>/If' */
        /* End of Outputs for SubSystem: '<S58>/If Action Subsystem' */
      } else {
        /* Outputs for IfAction SubSystem: '<S58>/If Action Subsystem1' incorporates:
         *  ActionPort: '<S61>/Action Port'
         */
        /* S-Function (pnv_array): '<S61>/pnv_array2' incorporates:
         *  Constant: '<S61>/Constant6'
         *  Constant: '<S61>/Constant9'
         */
        /*
         * S-Function Block: <S61>/pnv_array2
         * [$Id: pnv_array.tlc 46682 2015-05-20 19:09:48Z egriwicki $]
         */
        {
          U8 valid_index;
          pnv_array
            (
             ((uint8_T)0U),            /* index */
             (void*)(uint8_T*)&ATV_U8GND, /* new value */
             (BOOL)false,              /* change */
             (BOOL)false,              /* reset */
             1,                        /* number of bytes per element */
             2,                        /* number of array elements */
             atvv_map,                 /* pointer to the default map's z axis */
             &valid_index,             /* valid index */
             (void*)&ATV_B.pnv_array2_o2_m /* array output, possibly modified */
             );
          ATV_B.pnv_array2_o1_g = valid_index;
        }

        /* S-Function (pnv_array): '<S61>/pnv_array1' incorporates:
         *  Constant: '<S61>/Constant6'
         *  Constant: '<S61>/Constant7'
         */
        /*
         * S-Function Block: <S61>/pnv_array1
         * [$Id: pnv_array.tlc 46682 2015-05-20 19:09:48Z egriwicki $]
         */
        {
          U8 valid_index;
          pnv_array
            (
             ((uint8_T)1U),            /* index */
             (void*)(uint8_T*)&ATV_U8GND, /* new value */
             (BOOL)false,              /* change */
             (BOOL)false,              /* reset */
             1,                        /* number of bytes per element */
             2,                        /* number of array elements */
             atvv_map,                 /* pointer to the default map's z axis */
             &valid_index,             /* valid index */
             (void*)&ATV_B.pnv_array1_o2 /* array output, possibly modified */
             );
          ATV_B.pnv_array1_o1 = valid_index;
        }

        /* S-Function (pcx_candb_transmit_message): '<S61>/pcx_CANdb_TransmitMessage' incorporates:
         *  Constant: '<S61>/Constant'
         *  Constant: '<S61>/Constant1'
         */
        /* S-Function Block: <S61>/pcx_CANdb_TransmitMessage
         * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
         */
        {
          U8 data[8];
          BOOL retval;
          F32 pcx_CANdb_TransmitMessage_a_in_port_buffer[9];
          F32 * pcx_CANdb_TransmitMessage_a_in_port_ptr[9];
          static const U8 pcx_CANdb_TransmitMessage_a_field_start_pos[9] = {
            0, 7, 8, 16, 24, 32, 40, 48, 56, };

          static const U8 pcx_CANdb_TransmitMessage_a_field_width[9] = {
            7, 1, 8, 8, 8, 8, 8, 8, 8, };

          static const U8 pcx_CANdb_TransmitMessage_a_field_is_signed[9] = {
            0, 0, 0, 0, 0, 0, 0, 0, 0, };

          static const U8 pcx_CANdb_TransmitMessage_a_field_valtype[9] = {
            0, 0, 0, 0, 0, 0, 0, 0, 0, };

          static const U8 pcx_CANdb_TransmitMessage_a_field_order[9] = {
            1, 1, 1, 1, 1, 1, 1, 1, 1, };

          static const F32 pcx_CANdb_TransmitMessage_a_field_eng_min[9] = {
            0.0, 0.0, 0.0, 0.0, 0.0,
            0.0, 0.0, 0.0, 0.0, };

          static const F32 pcx_CANdb_TransmitMessage_a_field_eng_max[9] = {
            127.0, 1.0, 255.0, 255.0, 255.0,
            255.0, 255.0, 255.0, 255.0, };

          static const F32 pcx_CANdb_TransmitMessage_a_field_scale[9] = {
            1.0, 1.0, 1.0, 1.0, 1.0,
            1.0, 1.0, 1.0, 1.0, };

          static const F32 pcx_CANdb_TransmitMessage_a_field_offset[9] = {
            0.0, 0.0, 0.0, 0.0, 0.0,
            0.0, 0.0, 0.0, 0.0, };

          if (pcx_CANdb_TransmitMessage_a_msg_handle != PCX_CONFIG_ERROR) {
            pcx_CANdb_TransmitMessage_a_in_port_buffer[0] = 1.0;
            pcx_CANdb_TransmitMessage_a_in_port_ptr[0] =
              &pcx_CANdb_TransmitMessage_a_in_port_buffer[0];
            pcx_CANdb_TransmitMessage_a_in_port_buffer[1] = 1.0;
            pcx_CANdb_TransmitMessage_a_in_port_ptr[1] =
              &pcx_CANdb_TransmitMessage_a_in_port_buffer[1];
            pcx_CANdb_TransmitMessage_a_in_port_buffer[2] =
              ATV_B.pnv_array2_o2_m;
            pcx_CANdb_TransmitMessage_a_in_port_ptr[2] =
              &pcx_CANdb_TransmitMessage_a_in_port_buffer[2];
            pcx_CANdb_TransmitMessage_a_in_port_buffer[3] = ATV_B.pnv_array1_o2;
            pcx_CANdb_TransmitMessage_a_in_port_ptr[3] =
              &pcx_CANdb_TransmitMessage_a_in_port_buffer[3];
            pcx_CANdb_TransmitMessage_a_in_port_buffer[4] = 0.0;
            pcx_CANdb_TransmitMessage_a_in_port_ptr[4] =
              &pcx_CANdb_TransmitMessage_a_in_port_buffer[4];
            pcx_CANdb_TransmitMessage_a_in_port_buffer[5] = 0.0;
            pcx_CANdb_TransmitMessage_a_in_port_ptr[5] =
              &pcx_CANdb_TransmitMessage_a_in_port_buffer[5];
            pcx_CANdb_TransmitMessage_a_in_port_buffer[6] = 0.0;
            pcx_CANdb_TransmitMessage_a_in_port_ptr[6] =
              &pcx_CANdb_TransmitMessage_a_in_port_buffer[6];
            pcx_CANdb_TransmitMessage_a_in_port_buffer[7] = 0.0;
            pcx_CANdb_TransmitMessage_a_in_port_ptr[7] =
              &pcx_CANdb_TransmitMessage_a_in_port_buffer[7];
            pcx_CANdb_TransmitMessage_a_in_port_buffer[8] = 0.0;
            pcx_CANdb_TransmitMessage_a_in_port_ptr[8] =
              &pcx_CANdb_TransmitMessage_a_in_port_buffer[8];
            pcx_vdb_pack_msg((const F32 * const *)
                             &pcx_CANdb_TransmitMessage_a_in_port_ptr[0], &data
                             [0], pcx_CANdb_TransmitMessage_a_field_start_pos,
                             pcx_CANdb_TransmitMessage_a_field_width,
                             pcx_CANdb_TransmitMessage_a_field_is_signed,
                             pcx_CANdb_TransmitMessage_a_field_valtype,
                             pcx_CANdb_TransmitMessage_a_field_order,
                             pcx_CANdb_TransmitMessage_a_field_eng_min,
                             pcx_CANdb_TransmitMessage_a_field_eng_max,
                             pcx_CANdb_TransmitMessage_a_field_scale,
                             pcx_CANdb_TransmitMessage_a_field_offset, 0, 1, 9);

            /* Do a transmit every time we are called, (CT2) */
            retval = pcx_transmit(pcx_CANdb_TransmitMessage_a_msg_handle, data);
          } else {
            /* error: pcx_declare_message was unsuccessful */
            retval = FALSE;
          }

          ATV_B.pcx_CANdb_TransmitMessage_f = !retval;
        }

        /* End of Outputs for SubSystem: '<S58>/If Action Subsystem1' */
      }

      /* End of If: '<S58>/If' */
      /* End of Outputs for SubSystem: '<S57>/Switch Case Action Subsystem' */
    } else {
      /* Outputs for IfAction SubSystem: '<S57>/Switch Case Action Subsystem1' incorporates:
       *  ActionPort: '<S59>/Action Port'
       */
      /* S-Function (pcx_candb_transmit_message): '<S59>/pcx_CANdb_TransmitMessage' incorporates:
       *  Constant: '<S59>/Constant'
       */
      /* S-Function Block: <S59>/pcx_CANdb_TransmitMessage
       * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
       */
      {
        U8 data[8];
        BOOL retval;
        F32 pcx_CANdb_TransmitMessage_d_in_port_buffer[9];
        F32 * pcx_CANdb_TransmitMessage_d_in_port_ptr[9];
        static const U8 pcx_CANdb_TransmitMessage_d_field_start_pos[9] = {
          0, 7, 8, 16, 24, 32, 40, 48, 56, };

        static const U8 pcx_CANdb_TransmitMessage_d_field_width[9] = {
          7, 1, 8, 8, 8, 8, 8, 8, 8, };

        static const U8 pcx_CANdb_TransmitMessage_d_field_is_signed[9] = {
          0, 0, 0, 0, 0, 0, 0, 0, 0, };

        static const U8 pcx_CANdb_TransmitMessage_d_field_valtype[9] = {
          0, 0, 0, 0, 0, 0, 0, 0, 0, };

        static const U8 pcx_CANdb_TransmitMessage_d_field_order[9] = {
          1, 1, 1, 1, 1, 1, 1, 1, 1, };

        static const F32 pcx_CANdb_TransmitMessage_d_field_eng_min[9] = {
          0.0, 0.0, 0.0, 0.0, 0.0,
          0.0, 0.0, 0.0, 0.0, };

        static const F32 pcx_CANdb_TransmitMessage_d_field_eng_max[9] = {
          127.0, 1.0, 255.0, 255.0, 255.0,
          255.0, 255.0, 255.0, 255.0, };

        static const F32 pcx_CANdb_TransmitMessage_d_field_scale[9] = {
          1.0, 1.0, 1.0, 1.0, 1.0,
          1.0, 1.0, 1.0, 1.0, };

        static const F32 pcx_CANdb_TransmitMessage_d_field_offset[9] = {
          0.0, 0.0, 0.0, 0.0, 0.0,
          0.0, 0.0, 0.0, 0.0, };

        if (pcx_CANdb_TransmitMessage_d_msg_handle != PCX_CONFIG_ERROR) {
          pcx_CANdb_TransmitMessage_d_in_port_buffer[0] =
            ATV_B.pcx_CANdb_ReceiveMessage_o4_i;
          pcx_CANdb_TransmitMessage_d_in_port_ptr[0] =
            &pcx_CANdb_TransmitMessage_d_in_port_buffer[0];
          pcx_CANdb_TransmitMessage_d_in_port_buffer[1] = 1.0;
          pcx_CANdb_TransmitMessage_d_in_port_ptr[1] =
            &pcx_CANdb_TransmitMessage_d_in_port_buffer[1];
          pcx_CANdb_TransmitMessage_d_in_port_buffer[2] = 0.0;
          pcx_CANdb_TransmitMessage_d_in_port_ptr[2] =
            &pcx_CANdb_TransmitMessage_d_in_port_buffer[2];
          pcx_CANdb_TransmitMessage_d_in_port_buffer[3] = 0.0;
          pcx_CANdb_TransmitMessage_d_in_port_ptr[3] =
            &pcx_CANdb_TransmitMessage_d_in_port_buffer[3];
          pcx_CANdb_TransmitMessage_d_in_port_buffer[4] = 0.0;
          pcx_CANdb_TransmitMessage_d_in_port_ptr[4] =
            &pcx_CANdb_TransmitMessage_d_in_port_buffer[4];
          pcx_CANdb_TransmitMessage_d_in_port_buffer[5] = 0.0;
          pcx_CANdb_TransmitMessage_d_in_port_ptr[5] =
            &pcx_CANdb_TransmitMessage_d_in_port_buffer[5];
          pcx_CANdb_TransmitMessage_d_in_port_buffer[6] = 0.0;
          pcx_CANdb_TransmitMessage_d_in_port_ptr[6] =
            &pcx_CANdb_TransmitMessage_d_in_port_buffer[6];
          pcx_CANdb_TransmitMessage_d_in_port_buffer[7] = 0.0;
          pcx_CANdb_TransmitMessage_d_in_port_ptr[7] =
            &pcx_CANdb_TransmitMessage_d_in_port_buffer[7];
          pcx_CANdb_TransmitMessage_d_in_port_buffer[8] = 0.0;
          pcx_CANdb_TransmitMessage_d_in_port_ptr[8] =
            &pcx_CANdb_TransmitMessage_d_in_port_buffer[8];
          pcx_vdb_pack_msg((const F32 * const *)
                           &pcx_CANdb_TransmitMessage_d_in_port_ptr[0], &data[0],
                           pcx_CANdb_TransmitMessage_d_field_start_pos,
                           pcx_CANdb_TransmitMessage_d_field_width,
                           pcx_CANdb_TransmitMessage_d_field_is_signed,
                           pcx_CANdb_TransmitMessage_d_field_valtype,
                           pcx_CANdb_TransmitMessage_d_field_order,
                           pcx_CANdb_TransmitMessage_d_field_eng_min,
                           pcx_CANdb_TransmitMessage_d_field_eng_max,
                           pcx_CANdb_TransmitMessage_d_field_scale,
                           pcx_CANdb_TransmitMessage_d_field_offset, 0, 1, 9);

          /* Do a transmit every time we are called, (CT2) */
          retval = pcx_transmit(pcx_CANdb_TransmitMessage_d_msg_handle, data);
        } else {
          /* error: pcx_declare_message was unsuccessful */
          retval = FALSE;
        }

        ATV_B.pcx_CANdb_TransmitMessage_e = !retval;
      }

      /* End of Outputs for SubSystem: '<S57>/Switch Case Action Subsystem1' */
    }

    /* End of SwitchCase: '<S57>/Switch Case' */
  }

  ATV_PrevZCX.TriggeredSubsystem_Trig_ZCE = ATV_B.pcx_CANdb_ReceiveMessage_o2_c;

  /* End of Outputs for SubSystem: '<S14>/Triggered Subsystem' */

  /* Outputs for Enabled SubSystem: '<Root>/CANBUS_Output_Processing' incorporates:
   *  EnablePort: '<S3>/Enable'
   */
  if (ATV_DW.CANBUS_Output_Processing_MODE) {
    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage1' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage1
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage1_in_port_buffer[9];
      F32 * pcx_CANdb_TransmitMessage1_in_port_ptr[9];
      static const U8 pcx_CANdb_TransmitMessage1_field_start_pos[9] = {
        16, 8, 0, 24, 32, 40, 56, 57, 58, };

      static const U8 pcx_CANdb_TransmitMessage1_field_width[9] = {
        1, 1, 1, 1, 1, 1, 1, 1, 1, };

      static const U8 pcx_CANdb_TransmitMessage1_field_is_signed[9] = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage1_field_valtype[9] = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage1_field_order[9] = {
        1, 1, 1, 1, 1, 1, 1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage1_field_eng_min[9] = {
        0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage1_field_eng_max[9] = {
        1.0, 1.0, 1.0, 1.0, 1.0,
        1.0, 1.0, 1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage1_field_scale[9] = {
        1.0, 1.0, 1.0, 1.0, 1.0,
        1.0, 1.0, 1.0, 1.0, };

      static const F32 pcx_CANdb_TransmitMessage1_field_offset[9] = {
        0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage1_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage1_in_port_buffer[0] = ATV_B.RateTransition4_b;
        pcx_CANdb_TransmitMessage1_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage1_in_port_buffer[0];
        pcx_CANdb_TransmitMessage1_in_port_buffer[1] = ATV_B.RateTransition_b;
        pcx_CANdb_TransmitMessage1_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage1_in_port_buffer[1];
        pcx_CANdb_TransmitMessage1_in_port_buffer[2] = ATV_B.RateTransition1_m;
        pcx_CANdb_TransmitMessage1_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage1_in_port_buffer[2];
        pcx_CANdb_TransmitMessage1_in_port_buffer[3] = ATV_B.RateTransition2_h;
        pcx_CANdb_TransmitMessage1_in_port_ptr[3] =
          &pcx_CANdb_TransmitMessage1_in_port_buffer[3];
        pcx_CANdb_TransmitMessage1_in_port_buffer[4] = ATV_B.RateTransition2_h;
        pcx_CANdb_TransmitMessage1_in_port_ptr[4] =
          &pcx_CANdb_TransmitMessage1_in_port_buffer[4];
        pcx_CANdb_TransmitMessage1_in_port_buffer[5] = 0.0;
        pcx_CANdb_TransmitMessage1_in_port_ptr[5] =
          &pcx_CANdb_TransmitMessage1_in_port_buffer[5];
        pcx_CANdb_TransmitMessage1_in_port_buffer[6] = ATV_B.RateTransition8_a;
        pcx_CANdb_TransmitMessage1_in_port_ptr[6] =
          &pcx_CANdb_TransmitMessage1_in_port_buffer[6];
        pcx_CANdb_TransmitMessage1_in_port_buffer[7] = ATV_B.RateTransition9_i;
        pcx_CANdb_TransmitMessage1_in_port_ptr[7] =
          &pcx_CANdb_TransmitMessage1_in_port_buffer[7];
        pcx_CANdb_TransmitMessage1_in_port_buffer[8] = ATV_B.RateTransition10_g;
        pcx_CANdb_TransmitMessage1_in_port_ptr[8] =
          &pcx_CANdb_TransmitMessage1_in_port_buffer[8];
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
                         pcx_CANdb_TransmitMessage1_field_offset, 0, 1, 9);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage1_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage1_p = !retval;
    }

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage24' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage24
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage24_in_port_buffer[3];
      F32 * pcx_CANdb_TransmitMessage24_in_port_ptr[3];
      static const U8 pcx_CANdb_TransmitMessage24_field_start_pos[3] = {
        0, 32, 16, };

      static const U8 pcx_CANdb_TransmitMessage24_field_width[3] = {
        16, 16, 16, };

      static const U8 pcx_CANdb_TransmitMessage24_field_is_signed[3] = {
        1, 1, 1, };

      static const U8 pcx_CANdb_TransmitMessage24_field_valtype[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage24_field_order[3] = {
        1, 1, 1, };

      static const F32 pcx_CANdb_TransmitMessage24_field_eng_min[3] = {
        -3276.8, -3276.8, -3276.8, };

      static const F32 pcx_CANdb_TransmitMessage24_field_eng_max[3] = {
        3276.7, 3276.7, 3276.7, };

      static const F32 pcx_CANdb_TransmitMessage24_field_scale[3] = {
        0.1, 0.1, 0.1, };

      static const F32 pcx_CANdb_TransmitMessage24_field_offset[3] = {
        0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage24_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage24_in_port_buffer[0] = ATV_B.RateTransition11;
        pcx_CANdb_TransmitMessage24_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage24_in_port_buffer[0];
        pcx_CANdb_TransmitMessage24_in_port_buffer[1] = ATV_B.RateTransition17;
        pcx_CANdb_TransmitMessage24_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage24_in_port_buffer[1];
        pcx_CANdb_TransmitMessage24_in_port_buffer[2] = ATV_B.RateTransition12;
        pcx_CANdb_TransmitMessage24_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage24_in_port_buffer[2];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage24_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage24_field_start_pos,
                         pcx_CANdb_TransmitMessage24_field_width,
                         pcx_CANdb_TransmitMessage24_field_is_signed,
                         pcx_CANdb_TransmitMessage24_field_valtype,
                         pcx_CANdb_TransmitMessage24_field_order,
                         pcx_CANdb_TransmitMessage24_field_eng_min,
                         pcx_CANdb_TransmitMessage24_field_eng_max,
                         pcx_CANdb_TransmitMessage24_field_scale,
                         pcx_CANdb_TransmitMessage24_field_offset, 0, 1, 3);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage24_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage24 = !retval;
    }

    /* S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage6' */
    /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage6
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
        pcx_CANdb_TransmitMessage6_in_port_buffer[0] = ATV_B.RateTransition3_j;
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
  }

  /* End of Outputs for SubSystem: '<Root>/CANBUS_Output_Processing' */
}

/* Model update function for TID2 */
static void ATV_update2(void)          /* Sample time: [0.1s, 0.0s] */
{
  /* Update for RateTransition: '<Root>/Rate Transition6' */
  ATV_DW.RateTransition6_Buffer0_i = ATV_B.Switch1_e;

  /* Update for RateTransition: '<Root>/Rate Transition7' */
  ATV_DW.RateTransition7_Buffer0 = ATV_B.Switch1;

  /* Update for RateTransition: '<Root>/Rate Transition10' */
  ATV_DW.RateTransition10_Buffer0 = ATV_B.Switch1_h;

  /* Update for RateTransition: '<Root>/Rate Transition11' */
  ATV_DW.RateTransition11_Buffer0 = ATV_B.Switch1_j;

  /* Update for RateTransition: '<Root>/Rate Transition26' */
  ATV_DW.RateTransition26_Buffer0 = ATV_B.Saturation_e;

  /* Update for RateTransition: '<Root>/Rate Transition27' */
  ATV_DW.RateTransition27_Buffer0 = ATV_B.Saturation_k;

  /* Update for RateTransition: '<Root>/Rate Transition4' */
  ATV_DW.RateTransition4_Buffer0_f = atv_v_dbg_chg_req;

  /* Update for RateTransition: '<Root>/Rate Transition37' */
  ATV_DW.RateTransition37_Buffer0 = atv_chg_present;

  /* Update for RateTransition: '<Root>/Rate Transition5' */
  ATV_DW.RateTransition5_Buffer0_c = atv_v_dbg_heater_req;

  /* Update for RateTransition: '<S4>/Rate Transition4' */
  ATV_DW.RateTransition4_Buffer0 = bms_pack_soc;

  /* Update for RateTransition: '<S6>/Rate Transition6' */
  ATV_DW.RateTransition6_Buffer0 = B_Max_Cell;

  /* Update for RateTransition: '<S6>/Rate Transition27' */
  ATV_DW.RateTransition27_Buffer0_b = ATV_B.pcx_CANdb_ReceiveMessage_o2_k;

  /* Update for RateTransition: '<S6>/Rate Transition5' */
  ATV_DW.RateTransition5_Buffer0 = ATV_B.B_Min_Cell;

  /* Update for RateTransition: '<S6>/Rate Transition1' */
  ATV_DW.RateTransition1_Buffer0 = ATV_B.B_Max_Temp;

  /* Update for RateTransition: '<S6>/Rate Transition2' */
  ATV_DW.RateTransition2_Buffer0 = ATV_B.B_Min_Temp;

  /* Update for RateTransition: '<S4>/Rate Transition3' */
  ATV_DW.RateTransition3_Buffer0 = ATV_B.atv_bms_pack_current;

  /* Update for RateTransition: '<S4>/Rate Transition27' */
  ATV_DW.RateTransition27_Buffer0_f = ATV_B.pcx_CANdb_ReceiveMessage_o2;

  /* Update for RateTransition: '<Root>/Rate Transition38' */
  ATV_DW.RateTransition38_Buffer0 = atv_can_wakeup;

  /* Update for RateTransition: '<Root>/Rate Transition8' */
  ATV_DW.RateTransition8_Buffer0 = ATV_B.Switch1_f;

  /* Update for RateTransition: '<Root>/Rate Transition9' */
  ATV_DW.RateTransition9_Buffer0 = ATV_B.Switch1_l;

  /* Update for RateTransition: '<Root>/Rate Transition48' */
  ATV_DW.RateTransition48_Buffer0 = ATV_B.LogicalOperator_g;

  /* Update for RateTransition: '<Root>/Rate Transition24' */
  ATV_DW.RateTransition24_Buffer0 = ATV_B.Saturation_a;

  /* Update for RateTransition: '<S4>/Rate Transition6' */
  ATV_DW.RateTransition6_Buffer0_j = bms_pack_voltage;

  /* Update for UnitDelay: '<S47>/Unit Delay3' */
  ATV_DW.UnitDelay3_DSTATE = ATV_B.Saturateatthreshold;

  /* Update for UnitDelay: '<S48>/Unit Delay3' */
  ATV_DW.UnitDelay3_DSTATE_p = ATV_B.Saturateatthreshold_n;

  /* Update for RateTransition: '<S28>/Rate Transition' */
  ATV_DW.RateTransition_Buffer0 = atv_yg3_raw_ain;

  /* Update for RateTransition: '<S5>/Rate Transition3' */
  ATV_DW.RateTransition3_Buffer0_j = ATV_B.pcx_CANdb_ReceiveMessage_o5_mt;

  /* Update for RateTransition: '<S5>/Rate Transition27' */
  ATV_DW.RateTransition27_Buffer0_fl = ATV_B.pcx_CANdb_ReceiveMessage_o2_gq;

  /* Update for RateTransition: '<S5>/Rate Transition6' */
  ATV_DW.RateTransition6_Buffer0_p = ATV_B.pcx_CANdb_ReceiveMessage_o4_p;

  /* Update for RateTransition: '<Root>/Rate Transition33' */
  ATV_DW.RateTransition33_Buffer0 = ATV_B.pcx_CANdb_ReceiveMessage_o2_b;

  /* Update for RateTransition: '<Root>/Rate Transition35' */
  ATV_DW.RateTransition35_Buffer0 = ATV_B.pcx_CANdb_ReceiveMessage_o2_e;

  /* Update for RateTransition: '<Root>/Rate Transition34' */
  ATV_DW.RateTransition34_Buffer0 = ATV_B.pcx_CANdb_ReceiveMessage_o2_n;

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

/* Model output function for TID3 */
static void ATV_output3(void)          /* Sample time: [0.5s, 0.0s] */
{
  int32_T rtb_Gain_ie;
  real32_T tmp;

  /* Outputs for Atomic SubSystem: '<Root>/CHARGER_CONTROL' */
  /* Switch: '<S19>/Switch' incorporates:
   *  Constant: '<S19>/Constant1'
   *  Logic: '<S19>/Logical Operator'
   *  Logic: '<S19>/Logical Operator1'
   */
  if (ATV_B.RateTransition40 && (!ATV_B.RateTransition41)) {
    /* Sum: '<S19>/Subtract' incorporates:
     *  Constant: '<S19>/Constant'
     *  DataTypeConversion: '<Root>/Data Type Conversion'
     *  DataTypeConversion: '<S19>/Data Type Conversion'
     */
    tmp = (real32_T)fmod((real32_T)((int16_T)atvc_chg_target_v - (int16_T)
      ATV_B.RateTransition39), 65536.0);

    /* Gain: '<S19>/Gain' incorporates:
     *  Sum: '<S19>/Subtract'
     */
    rtb_Gain_ie = (tmp < 0.0F ? (int32_T)(int16_T)-(int16_T)(uint16_T)-tmp :
                   (int32_T)(int16_T)(uint16_T)tmp) << 14;

    /* Saturate: '<S19>/Saturation' */
    if (rtb_Gain_ie > 3276800) {
      ATV_B.Switch_p = 100.0F;
    } else if (rtb_Gain_ie < 0) {
      ATV_B.Switch_p = 0.0F;
    } else {
      ATV_B.Switch_p = (real32_T)rtb_Gain_ie * 3.05175781E-5F;
    }

    /* End of Saturate: '<S19>/Saturation' */

    /* Outputs for Enabled SubSystem: '<S19>/Enabled Subsystem' incorporates:
     *  EnablePort: '<S68>/Enable'
     */
    /* S-Function (pcx_candb_transmit_message): '<S68>/pcx_CANdb_TransmitMessage' */
    /* S-Function Block: <S68>/pcx_CANdb_TransmitMessage
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage_c_in_port_buffer[1];
      F32 * pcx_CANdb_TransmitMessage_c_in_port_ptr[1];
      static const U8 pcx_CANdb_TransmitMessage_c_field_start_pos[1] = {
        55, };

      static const U8 pcx_CANdb_TransmitMessage_c_field_width[1] = {
        16, };

      static const U8 pcx_CANdb_TransmitMessage_c_field_is_signed[1] = {
        0, };

      static const U8 pcx_CANdb_TransmitMessage_c_field_valtype[1] = {
        0, };

      static const U8 pcx_CANdb_TransmitMessage_c_field_order[1] = {
        0, };

      static const F32 pcx_CANdb_TransmitMessage_c_field_eng_min[1] = {
        0.0, };

      static const F32 pcx_CANdb_TransmitMessage_c_field_eng_max[1] = {
        6553.5, };

      static const F32 pcx_CANdb_TransmitMessage_c_field_scale[1] = {
        0.1, };

      static const F32 pcx_CANdb_TransmitMessage_c_field_offset[1] = {
        0.0, };

      if (pcx_CANdb_TransmitMessage_c_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage_c_in_port_buffer[0] = ATV_B.Switch_p;
        pcx_CANdb_TransmitMessage_c_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage_c_in_port_buffer[0];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage_c_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage_c_field_start_pos,
                         pcx_CANdb_TransmitMessage_c_field_width,
                         pcx_CANdb_TransmitMessage_c_field_is_signed,
                         pcx_CANdb_TransmitMessage_c_field_valtype,
                         pcx_CANdb_TransmitMessage_c_field_order,
                         pcx_CANdb_TransmitMessage_c_field_eng_min,
                         pcx_CANdb_TransmitMessage_c_field_eng_max,
                         pcx_CANdb_TransmitMessage_c_field_scale,
                         pcx_CANdb_TransmitMessage_c_field_offset, 0, 1, 1);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage_c_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage = !retval;
    }

    /* S-Function (pcx_candb_transmit_message): '<S68>/pcx_CANdb_TransmitMessage1' incorporates:
     *  Constant: '<S68>/Constant'
     *  Constant: '<S68>/Constant1'
     *  Constant: '<S68>/Constant2'
     */
    /* S-Function Block: <S68>/pcx_CANdb_TransmitMessage1
     * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
     */
    {
      U8 data[8];
      BOOL retval;
      F32 pcx_CANdb_TransmitMessage1_b_in_port_buffer[3];
      F32 * pcx_CANdb_TransmitMessage1_b_in_port_ptr[3];
      static const U8 pcx_CANdb_TransmitMessage1_b_field_start_pos[3] = {
        7, 23, 55, };

      static const U8 pcx_CANdb_TransmitMessage1_b_field_width[3] = {
        16, 16, 16, };

      static const U8 pcx_CANdb_TransmitMessage1_b_field_is_signed[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage1_b_field_valtype[3] = {
        0, 0, 0, };

      static const U8 pcx_CANdb_TransmitMessage1_b_field_order[3] = {
        0, 0, 0, };

      static const F32 pcx_CANdb_TransmitMessage1_b_field_eng_min[3] = {
        0.0, 0.0, 0.0, };

      static const F32 pcx_CANdb_TransmitMessage1_b_field_eng_max[3] = {
        6553.5, 6553.5, 6553.5, };

      static const F32 pcx_CANdb_TransmitMessage1_b_field_scale[3] = {
        0.1, 0.1, 0.1, };

      static const F32 pcx_CANdb_TransmitMessage1_b_field_offset[3] = {
        0.0, 0.0, 0.0, };

      if (pcx_CANdb_TransmitMessage1_b_msg_handle != PCX_CONFIG_ERROR) {
        pcx_CANdb_TransmitMessage1_b_in_port_buffer[0] = 80.0;
        pcx_CANdb_TransmitMessage1_b_in_port_ptr[0] =
          &pcx_CANdb_TransmitMessage1_b_in_port_buffer[0];
        pcx_CANdb_TransmitMessage1_b_in_port_buffer[1] = 110.0;
        pcx_CANdb_TransmitMessage1_b_in_port_ptr[1] =
          &pcx_CANdb_TransmitMessage1_b_in_port_buffer[1];
        pcx_CANdb_TransmitMessage1_b_in_port_buffer[2] = 50.0;
        pcx_CANdb_TransmitMessage1_b_in_port_ptr[2] =
          &pcx_CANdb_TransmitMessage1_b_in_port_buffer[2];
        pcx_vdb_pack_msg((const F32 * const *)
                         &pcx_CANdb_TransmitMessage1_b_in_port_ptr[0], &data[0],
                         pcx_CANdb_TransmitMessage1_b_field_start_pos,
                         pcx_CANdb_TransmitMessage1_b_field_width,
                         pcx_CANdb_TransmitMessage1_b_field_is_signed,
                         pcx_CANdb_TransmitMessage1_b_field_valtype,
                         pcx_CANdb_TransmitMessage1_b_field_order,
                         pcx_CANdb_TransmitMessage1_b_field_eng_min,
                         pcx_CANdb_TransmitMessage1_b_field_eng_max,
                         pcx_CANdb_TransmitMessage1_b_field_scale,
                         pcx_CANdb_TransmitMessage1_b_field_offset, 0, 1, 3);

        /* Do a transmit every time we are called, (CT2) */
        retval = pcx_transmit(pcx_CANdb_TransmitMessage1_b_msg_handle, data);
      } else {
        /* error: pcx_declare_message was unsuccessful */
        retval = FALSE;
      }

      ATV_B.pcx_CANdb_TransmitMessage1 = !retval;
    }

    /* End of Outputs for SubSystem: '<S19>/Enabled Subsystem' */
  } else {
    ATV_B.Switch_p = 0.0F;
  }

  /* End of Switch: '<S19>/Switch' */
  /* End of Outputs for SubSystem: '<Root>/CHARGER_CONTROL' */
}

/* Model update function for TID3 */
static void ATV_update3(void)          /* Sample time: [0.5s, 0.0s] */
{
  /* Update absolute time */
  /* The "clockTick3" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick3"
   * and "Timing.stepSize3". Size of "clockTick3" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick3 and the high bits
   * Timing.clockTickH3. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++ATV_M->Timing.clockTick3)) {
    ++ATV_M->Timing.clockTickH3;
  }

  ATV_M->Timing.t[3] = ATV_M->Timing.clockTick3 * ATV_M->Timing.stepSize3 +
    ATV_M->Timing.clockTickH3 * ATV_M->Timing.stepSize3 * 4294967296.0;
}

/* Model output function for TID4 */
static void ATV_output4(void)          /* Sample time: [1.0s, 0.0s] */
{
  real_T tmp;

  /* Logic: '<S139>/Logical Operator' */
  ATV_B.LogicalOperator_a = (ATV_B.RateTransition4_a && ATV_B.RateTransition5_m);

  /* Logic: '<S165>/Logical Operator' incorporates:
   *  Logic: '<S165>/Logical Operator1'
   *  Memory: '<S165>/Memory1'
   */
  ATV_B.LogicalOperator_l = ((ATV_B.RateTransition2_j == 0) &&
    (ATV_DW.Memory1_PreviousInput != 0));

  /* S-Function (pnv_adaptive_scalar): '<S139>/pnv_AdaptiveScalar' */
  /*
   * S-Function Block: <S139>/pnv_AdaptiveScalar
   * [$Id: pnv_adaptive_scalar.tlc 46682 2015-05-20 19:09:48Z egriwicki $]
   */
  pnv_adap_scalar_f32
    (
     ATV_B.RateTransition3_o,
     ATV_B.LogicalOperator_a,
     ATV_B.LogicalOperator_l,
     &atvc_fmot_run_timer,
     &ATV_B.pnv_AdaptiveScalar
     );

  /* DataTypeConversion: '<S139>/Data Type Conversion' */
  tmp = floor(ATV_B.pnv_AdaptiveScalar);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 4.294967296E+9);
  }

  ATV_B.DataTypeConversion = tmp < 0.0 ? (uint32_T)-(int32_T)(uint32_T)-tmp :
    (uint32_T)tmp;

  /* End of DataTypeConversion: '<S139>/Data Type Conversion' */

  /* Logic: '<S142>/Logical Operator' */
  ATV_B.LogicalOperator_ic = (ATV_B.RateTransition && ATV_B.RateTransition4_n);

  /* Logic: '<S370>/Logical Operator' incorporates:
   *  Logic: '<S370>/Logical Operator1'
   *  Memory: '<S370>/Memory1'
   */
  ATV_B.LogicalOperator_ne = ((ATV_B.RateTransition2_m == 0) &&
    (ATV_DW.Memory1_PreviousInput_d != 0));

  /* S-Function (pnv_adaptive_scalar): '<S142>/pnv_AdaptiveScalar' */
  /*
   * S-Function Block: <S142>/pnv_AdaptiveScalar
   * [$Id: pnv_adaptive_scalar.tlc 46682 2015-05-20 19:09:48Z egriwicki $]
   */
  pnv_adap_scalar_f32
    (
     ATV_B.RateTransition3_p,
     ATV_B.LogicalOperator_ic,
     ATV_B.LogicalOperator_ne,
     &atvc_ice_run_timer,
     &ATV_B.pnv_AdaptiveScalar_h
     );

  /* DataTypeConversion: '<S142>/Data Type Conversion' */
  tmp = floor(ATV_B.pnv_AdaptiveScalar_h);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 4.294967296E+9);
  }

  ATV_B.DataTypeConversion_e = tmp < 0.0 ? (uint32_T)-(int32_T)(uint32_T)-tmp :
    (uint32_T)tmp;

  /* End of DataTypeConversion: '<S142>/Data Type Conversion' */

  /* Logic: '<S146>/Logical Operator' */
  ATV_B.LogicalOperator_f = (ATV_B.RateTransition4_e && ATV_B.RateTransition5_b);

  /* Logic: '<S374>/Logical Operator' incorporates:
   *  Logic: '<S374>/Logical Operator1'
   *  Memory: '<S374>/Memory1'
   */
  ATV_B.LogicalOperator_j = ((ATV_B.RateTransition2_k == 0) &&
    (ATV_DW.Memory1_PreviousInput_c != 0));

  /* S-Function (pnv_adaptive_scalar): '<S146>/pnv_AdaptiveScalar' */
  /*
   * S-Function Block: <S146>/pnv_AdaptiveScalar
   * [$Id: pnv_adaptive_scalar.tlc 46682 2015-05-20 19:09:48Z egriwicki $]
   */
  pnv_adap_scalar_f32
    (
     ATV_B.RateTransition3_d,
     ATV_B.LogicalOperator_f,
     ATV_B.LogicalOperator_j,
     &atvc_rmot_run_timer,
     &ATV_B.pnv_AdaptiveScalar_k
     );

  /* DataTypeConversion: '<S146>/Data Type Conversion' */
  tmp = floor(ATV_B.pnv_AdaptiveScalar_k);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 4.294967296E+9);
  }

  ATV_B.DataTypeConversion_eb = tmp < 0.0 ? (uint32_T)-(int32_T)(uint32_T)-tmp :
    (uint32_T)tmp;

  /* End of DataTypeConversion: '<S146>/Data Type Conversion' */

  /* S-Function (psc_cpu_loading): '<S119>/psc_CpuLoading1' */
  /* S-Function Block: <S119>/psc_CpuLoading1
   * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  atv_cpu_loading = psc_get_cpu_loading();

  /* S-Function (psc_stack_used): '<S119>/psc_StackUsed' */
  /*
   * S-Function Block: <S119>/psc_StackUsed
   * [$Id: psc_stack_used.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  atv_stack_used = psc_get_used_stack_size();

  /* S-Function (pkn_task_duration): '<S119>/pkn_TaskDuration1' */
  /* S-Function Block: <S119>/pkn_TaskDuration1
   * [$Id: pkn_task_duration.tlc 34330 2013-07-01 12:56:28Z sbhattacharya $]
   */
  atv_task_duration_1s = pkn_get_task_duration(pkn_task_1000ms_task_hdl);

  /* S-Function (psc_cpu_loading): '<S119>/psc_CpuLoading2' */
  /* S-Function Block: <S119>/psc_CpuLoading2
   * [$Id: psc_cpu_loading.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  atv_cpu_loading_max = psc_get_max_cpu_loading();

  /* S-Function (pkn_task_duration): '<S119>/pkn_TaskDuration2' */
  /* S-Function Block: <S119>/pkn_TaskDuration2
   * [$Id: pkn_task_duration.tlc 34330 2013-07-01 12:56:28Z sbhattacharya $]
   */
  atv_task_duration_1s_max = pkn_get_max_task_duration(pkn_task_1000ms_task_hdl);
}

/* Model update function for TID4 */
static void ATV_update4(void)          /* Sample time: [1.0s, 0.0s] */
{
  /* Update for Memory: '<S165>/Memory1' */
  ATV_DW.Memory1_PreviousInput = ATV_B.RateTransition2_j;

  /* Update for RateTransition: '<S139>/Rate Transition1' */
  ATV_DW.RateTransition1_Buffer0_b = ATV_B.DataTypeConversion;

  /* Update for Memory: '<S370>/Memory1' */
  ATV_DW.Memory1_PreviousInput_d = ATV_B.RateTransition2_m;

  /* Update for RateTransition: '<S142>/Rate Transition1' */
  ATV_DW.RateTransition1_Buffer0_k = ATV_B.DataTypeConversion_e;

  /* Update for Memory: '<S374>/Memory1' */
  ATV_DW.Memory1_PreviousInput_c = ATV_B.RateTransition2_k;

  /* Update for RateTransition: '<S146>/Rate Transition1' */
  ATV_DW.RateTransition1_Buffer0_i = ATV_B.DataTypeConversion_eb;

  /* Update absolute time */
  /* The "clockTick4" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick4"
   * and "Timing.stepSize4". Size of "clockTick4" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick4 and the high bits
   * Timing.clockTickH4. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++ATV_M->Timing.clockTick4)) {
    ++ATV_M->Timing.clockTickH4;
  }

  ATV_M->Timing.t[4] = ATV_M->Timing.clockTick4 * ATV_M->Timing.stepSize4 +
    ATV_M->Timing.clockTickH4 * ATV_M->Timing.stepSize4 * 4294967296.0;
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

   case 3 :
    ATV_output3();
    break;

   case 4 :
    ATV_output4();
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

   case 3 :
    ATV_update3();
    break;

   case 4 :
    ATV_update4();
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
  /* S-Function Block: <S117>/pcfg_Config_M5xx
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
    PIO_CFG_MIOS_CLOCK_SELECT_FAST);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_0C,
    PIO_CFG_MIOS_CLOCK_SELECT_FAST);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_0F,
    PIO_CFG_MIOS_CLOCK_SELECT_FAST);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_1A,
    PIO_CFG_MIOS_CLOCK_SELECT_FAST);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_ZG4,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);
  (void) pcfg_setup_pwm_clock_m5xx(PIO_POT_INT_PWM_FREQ_1F,
    PIO_CFG_MIOS_CLOCK_SELECT_SLOW);

  /* Start for RateTransition: '<Root>/Rate Transition6' */
  ATV_B.RateTransition6_a = 0;

  /* Start for RateTransition: '<Root>/Rate Transition7' */
  ATV_B.RateTransition7 = 0;

  /* Start for RateTransition: '<Root>/Rate Transition10' */
  ATV_B.RateTransition10 = 0;

  /* Start for RateTransition: '<Root>/Rate Transition11' */
  ATV_B.RateTransition11_n = 0;

  /* Start for RateTransition: '<Root>/Rate Transition26' */
  ATV_B.RateTransition26 = 0;

  /* Start for RateTransition: '<Root>/Rate Transition27' */
  ATV_B.rear_motor_speed = 0;

  /* Start for S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput' */

  /* S-Function Block: <S28>/pdx_DigitalInput
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  (void) pdx_digital_input(PIO_DIN_ZA3, NULL, TRUE);
  put_debounce_by_time_init(&pdx_DigitalInput_detm_wrk_data);

  /* Start for S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput8' */

  /* S-Function Block: <S28>/pdx_DigitalInput8
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  (void) pdx_digital_input(PIO_DIN_ZC2, NULL, TRUE);
  put_debounce_by_time_init(&pdx_DigitalInput8_detm_wrk_data);

  /* Start for S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput9' */

  /* S-Function Block: <S28>/pdx_DigitalInput9
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  (void) pdx_digital_input(PIO_DIN_ZC4, NULL, TRUE);
  put_debounce_by_time_init(&pdx_DigitalInput9_detm_wrk_data);

  /* Start for RateTransition: '<Root>/Rate Transition4' */
  ATV_B.RateTransition4_f = false;

  /* Start for RateTransition: '<Root>/Rate Transition37' */
  ATV_B.RateTransition37 = false;

  /* Start for RateTransition: '<Root>/Rate Transition5' */
  ATV_B.RateTransition5_l = false;

  /* Start for RateTransition: '<S4>/Rate Transition4' */
  ATV_B.RateTransition4 = 0U;

  /* Start for RateTransition: '<S6>/Rate Transition6' */
  ATV_B.RateTransition6 = 0.0;

  /* Start for RateTransition: '<S6>/Rate Transition27' */
  ATV_B.RateTransition27 = false;

  /* Start for RateTransition: '<S6>/Rate Transition5' */
  ATV_B.RateTransition5 = 0.0;

  /* Start for RateTransition: '<S6>/Rate Transition1' */
  ATV_B.RateTransition1 = 0.0;

  /* Start for RateTransition: '<S6>/Rate Transition2' */
  ATV_B.RateTransition2 = 0.0;

  /* Start for RateTransition: '<S4>/Rate Transition3' */
  ATV_B.RateTransition3 = 0.0;

  /* Start for RateTransition: '<S4>/Rate Transition27' */
  ATV_B.RateTransition27_k = false;

  /* Start for RateTransition: '<Root>/Rate Transition38' */
  ATV_B.RateTransition38 = false;

  /* Start for S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput6' */

  /* S-Function Block: <S28>/pdx_DigitalInput6
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  (void) pdx_digital_input(PIO_DIN_XF4, NULL, TRUE);
  put_debounce_by_time_init(&pdx_DigitalInput6_detm_wrk_data);

  /* Start for S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /* S-Function Block: <S25>/pdx_DigitalOutput
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_ZB1,
    (U8)0.0,
    TRUE);

  /* Start for RateTransition: '<Root>/Rate Transition8' */
  ATV_B.RateTransition8 = 0;

  /* Start for RateTransition: '<Root>/Rate Transition9' */
  ATV_B.RateTransition9 = 0;

  /* Start for S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput7' */

  /* S-Function Block: <S28>/pdx_DigitalInput7
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  (void) pdx_digital_input(PIO_DIN_ZA2, NULL, TRUE);
  put_debounce_by_time_init(&pdx_DigitalInput7_detm_wrk_data);

  /* Start for S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput1' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /* S-Function Block: <S25>/pdx_DigitalOutput1
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YA1,
    (U8)0.0,
    TRUE);

  /* Start for RateTransition: '<Root>/Rate Transition48' */
  ATV_B.RateTransition48 = false;

  /* Start for S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput10' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /* S-Function Block: <S25>/pdx_DigitalOutput10
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_ZF3,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput11' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /* S-Function Block: <S25>/pdx_DigitalOutput11
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YM4,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput12' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /* S-Function Block: <S25>/pdx_DigitalOutput12
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_ZE2,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput13' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /* S-Function Block: <S25>/pdx_DigitalOutput13
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YG1,
    (U8)0.0,
    TRUE);

  /* Start for MATLABSystem: '<S168>/Moving Average' */
  ATV_DW.obj_n.matlabCodegenIsDeleted = true;
  ATV_DW.obj_n.isInitialized = 0;
  ATV_DW.obj_n.NumChannels = -1;
  ATV_DW.obj_n.matlabCodegenIsDeleted = false;
  ATV_DW.objisempty = true;
  ATV_DW.obj_n.isSetupComplete = false;
  ATV_DW.obj_n.isInitialized = 1;
  ATV_DW.obj_n.NumChannels = 1;
  ATV_DW.gobj_0_l.isInitialized = 0;
  ATV_DW.obj_n.pStatistic = &ATV_DW.gobj_0_l;
  ATV_DW.obj_n.isSetupComplete = true;
  ATV_DW.obj_n.TunablePropsChanged = false;

  /* Start for S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput2' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /* S-Function Block: <S25>/pdx_DigitalOutput2
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YB4,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput3' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /* S-Function Block: <S25>/pdx_DigitalOutput3
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_ZF2,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput4' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /* S-Function Block: <S25>/pdx_DigitalOutput4
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YA2,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput5' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /* S-Function Block: <S25>/pdx_DigitalOutput5
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YA3,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput6' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /* S-Function Block: <S25>/pdx_DigitalOutput6
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YA4,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput7' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /* S-Function Block: <S25>/pdx_DigitalOutput7
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_ZG2,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput8' */

  /* S-Function Block: <S25>/pdx_DigitalOutput8
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_XD1_ENABLE_PSU_HOLD,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_digital_output): '<S25>/pdx_DigitalOutput9' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /* S-Function Block: <S25>/pdx_DigitalOutput9
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_ZC1,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdx_pwm_output): '<S25>/pdx_PWMOutput' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /*
   * S-Function Block: <S25>/pdx_PWMOutput
   * [$Id: pdx_pwm_output.tlc 30730 2012-09-29 12:01:15Z jtough $]
   */
  (void) pdx_pwm_output(PIO_FFPOT_YK3,
                        2000.0,
                        0.0,
                        0.0,
                        TRUE);

  /* Start for S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput4' */

  /* S-Function Block: <S28>/pdx_DigitalInput4
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  (void) pdx_digital_input(PIO_DIN_ZB2, NULL, TRUE);
  put_debounce_by_time_init(&pdx_DigitalInput4_detm_wrk_data);

  /* Start for S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput5' */

  /* S-Function Block: <S28>/pdx_DigitalInput5
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  (void) pdx_digital_input(PIO_DIN_ZB3, NULL, TRUE);
  put_debounce_by_time_init(&pdx_DigitalInput5_detm_wrk_data);

  /* Start for S-Function (pdx_pwm_output): '<S25>/pdx_PWMOutput1' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /*
   * S-Function Block: <S25>/pdx_PWMOutput1
   * [$Id: pdx_pwm_output.tlc 30730 2012-09-29 12:01:15Z jtough $]
   */
  (void) pdx_pwm_output(PIO_FFPOT_YB2,
                        2000.0,
                        0.0,
                        0.0,
                        TRUE);

  /* Start for S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput1' */

  /* S-Function Block: <S28>/pdx_DigitalInput1
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  (void) pdx_digital_input(PIO_DIN_YG2, NULL, TRUE);
  put_debounce_by_time_init(&pdx_DigitalInput1_detm_wrk_data);

  /* Start for S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput2' */

  /* S-Function Block: <S28>/pdx_DigitalInput2
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  (void) pdx_digital_input(PIO_DIN_YH2, NULL, TRUE);
  put_debounce_by_time_init(&pdx_DigitalInput2_detm_wrk_data);

  /* Start for S-Function (pdx_digital_input): '<S28>/pdx_DigitalInput3' */

  /* S-Function Block: <S28>/pdx_DigitalInput3
   * [$Id: pdx_digital_input.tlc 54280 2017-01-04 16:13:49Z sborders $]
   */
  (void) pdx_digital_input(PIO_DIN_YJ2, NULL, TRUE);
  put_debounce_by_time_init(&pdx_DigitalInput3_detm_wrk_data);

  /* Start for S-Function (pdx_pwm_output): '<S25>/pdx_PWMOutput2' incorporates:
   *  Constant: '<S25>/Constant1'
   */

  /*
   * S-Function Block: <S25>/pdx_PWMOutput2
   * [$Id: pdx_pwm_output.tlc 30730 2012-09-29 12:01:15Z jtough $]
   */
  (void) pdx_pwm_output(PIO_FFPOT_YE2,
                        2000.0,
                        0.0,
                        0.0,
                        TRUE);

  /* Start for S-Function (pcx_candb_receive_message): '<S4>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S4>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    320);

  /* Start for RateTransition: '<S4>/Rate Transition6' */
  ATV_B.RateTransition6_o = 0.0;

  /* Start for S-Function (pcx_candb_receive_message): '<S6>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S6>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_j_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    322);

  /* Start for S-Function (pcx_candb_receive_message): '<S7>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S7>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_h_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    932);

  /* Start for S-Function (pcx_candb_receive_message): '<S7>/pcx_CANdb_ReceiveMessage1' */

  /* S-Function Block: <S7>/pcx_CANdb_ReceiveMessage1
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage1_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    933);

  /* Start for S-Function (pcx_candb_receive_message): '<S10>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S10>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_d_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    533);

  /* Start for S-Function (pcx_candb_receive_message): '<S11>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S11>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_c_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    816);

  /* Start for S-Function (pcx_candb_receive_message): '<S12>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S12>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_f_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    549);

  /* Start for S-Function (pcx_candb_receive_message): '<S13>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S13>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_e_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    565);

  /* Start for S-Function (pcx_candb_receive_message): '<S15>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S15>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_l_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    535);

  /* Start for S-Function (pcx_candb_receive_message): '<S16>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S16>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_es_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    551);

  /* Start for S-Function (pcx_candb_receive_message): '<S17>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S17>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_a_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    567);

  /* Start for S-Function (pcx_candb_receive_message): '<S18>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S18>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_er_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    496);

  /* Start for RateTransition: '<S28>/Rate Transition' */
  ATV_B.atv_yg3_raw_ain_c = 0.0;

  /* Start for MATLABSystem: '<S28>/Moving Average' */
  ATV_DW.obj.matlabCodegenIsDeleted = true;
  ATV_DW.obj.isInitialized = 0;
  ATV_DW.obj.NumChannels = -1;
  ATV_DW.obj.matlabCodegenIsDeleted = false;
  ATV_DW.objisempty_p = true;
  ATV_DW.obj.isSetupComplete = false;
  ATV_DW.obj.isInitialized = 1;
  ATV_DW.obj.NumChannels = 1;
  ATV_DW.gobj_0.isInitialized = 0;
  ATV_DW.obj.pStatistic = &ATV_DW.gobj_0;
  ATV_DW.obj.isSetupComplete = true;
  ATV_DW.obj.TunablePropsChanged = false;

  /* Start for Constant: '<S138>/Constant' */
  atv_fs1_out = true;

  /* Start for RateTransition: '<S5>/Rate Transition3' */
  ATV_B.RateTransition3_a = 0.0;

  /* Start for RateTransition: '<S5>/Rate Transition27' */
  ATV_B.RateTransition27_a = false;

  /* Start for S-Function (pcx_candb_receive_message): '<S5>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S5>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_g_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    325);

  /* Start for RateTransition: '<S5>/Rate Transition6' */
  ATV_B.RateTransition6_e = 0.0;

  /* Start for S-Function (pcx_candb_receive_message): '<S8>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S8>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_lz_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    532);

  /* Start for S-Function (pcx_candb_receive_message): '<S9>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S9>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_i_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    564);

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

  /* Start for S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput13' incorporates:
   *  Constant: '<Root>/Constant1'
   */

  /* S-Function Block: <Root>/pdx_DigitalOutput13
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_XD4,
    (U8)1.0,
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

  /* Start for S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput5' incorporates:
   *  Constant: '<Root>/Constant'
   */

  /* S-Function Block: <Root>/pdx_DigitalOutput5
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_XG3_DISABLE,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdd_data_output): '<Root>/pdd_DataOutput2' incorporates:
   *  Constant: '<Root>/Constant4'
   */

  /* S-Function Block: <Root>/pdd_DataOutput2
   * [$Id: pdd_data_output.tlc 62873 2018-04-11 21:32:30Z cyoung $]
   */
  {
    (void)pdd_data_output(PIO_DDOT_YE4_YF4_SEL_WAKE_ID_MASK,
                          0.0,
                          TRUE);
  }

  /* Start for S-Function (pdx_digital_output): '<Root>/pdx_DigitalOutput4' incorporates:
   *  Constant: '<Root>/Constant5'
   */

  /* S-Function Block: <Root>/pdx_DigitalOutput4
   * [$Id: pdx_digital_output.tlc 79707 2021-02-15 22:39:02Z csmith $]
   */
  (void) pdx_digital_output(PIO_DOT_YE4_YF4_ENABLE_SELECTIVE_WAKE,
    (U8)0.0,
    TRUE);

  /* Start for S-Function (pdd_data_output): '<Root>/pdd_DataOutput1' incorporates:
   *  Constant: '<Root>/Constant6'
   */

  /* S-Function Block: <Root>/pdd_DataOutput1
   * [$Id: pdd_data_output.tlc 62873 2018-04-11 21:32:30Z cyoung $]
   */
  {
    (void)pdd_data_output(PIO_DDOT_YE4_YF4_SEL_WAKE_ID,
                          0.0,
                          TRUE);
  }

  /* Start for S-Function (pcx_candb_receive_message): '<S14>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S14>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_ReceiveMessage_fn_msg_handle = pcx_declare_message(PCX_RX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    511);

  /* Start for Triggered SubSystem: '<S14>/Triggered Subsystem' */
  /* Start for IfAction SubSystem: '<S57>/Switch Case Action Subsystem' */
  /* Start for IfAction SubSystem: '<S58>/If Action Subsystem' */
  /* Start for IfAction SubSystem: '<S60>/If Action Subsystem' */
  /* Start for S-Function (pcx_candb_transmit_message): '<S62>/pcx_CANdb_TransmitMessage' incorporates:
   *  Constant: '<S62>/Constant'
   *  Constant: '<S62>/Constant1'
   */

  /* S-Function Block: <S62>/pcx_CANdb_TransmitMessage
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage_k_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    510);

  /* End of Start for SubSystem: '<S60>/If Action Subsystem' */

  /* Start for IfAction SubSystem: '<S60>/If Action Subsystem1' */
  /* Start for S-Function (pcx_candb_transmit_message): '<S63>/pcx_CANdb_TransmitMessage' incorporates:
   *  Constant: '<S63>/Constant'
   *  Constant: '<S63>/Constant1'
   */

  /* S-Function Block: <S63>/pcx_CANdb_TransmitMessage
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage_j_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    510);

  /* End of Start for SubSystem: '<S60>/If Action Subsystem1' */
  /* End of Start for SubSystem: '<S58>/If Action Subsystem' */

  /* Start for IfAction SubSystem: '<S58>/If Action Subsystem1' */
  /* Start for S-Function (pcx_candb_transmit_message): '<S61>/pcx_CANdb_TransmitMessage' incorporates:
   *  Constant: '<S61>/Constant'
   *  Constant: '<S61>/Constant1'
   */

  /* S-Function Block: <S61>/pcx_CANdb_TransmitMessage
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage_a_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    510);

  /* End of Start for SubSystem: '<S58>/If Action Subsystem1' */
  /* End of Start for SubSystem: '<S57>/Switch Case Action Subsystem' */

  /* Start for IfAction SubSystem: '<S57>/Switch Case Action Subsystem1' */
  /* Start for S-Function (pcx_candb_transmit_message): '<S59>/pcx_CANdb_TransmitMessage' incorporates:
   *  Constant: '<S59>/Constant'
   */

  /* S-Function Block: <S59>/pcx_CANdb_TransmitMessage
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage_d_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    510);

  /* End of Start for SubSystem: '<S57>/Switch Case Action Subsystem1' */
  /* End of Start for SubSystem: '<S14>/Triggered Subsystem' */

  /* Start for S-Function (pcx_can_config): '<S115>/pcx_CANConfiguration' */

  /* S-Function Block: <S115>/pcx_CANConfiguration
   * [$Id: pcx_can_config.tlc 30151 2012-08-08 15:30:35Z gbartlett $]
   */
  pcx_config(PIO_CAN_YE4_YF4_A, PIO_CBAUD_500_KBPS);

  /* Start for S-Function (psc_app_build_date): '<S120>/psc_AppBuildDate' */

  /*
   * S-Function Block: <S120>/psc_AppBuildDate
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

  /* Start for S-Function (psc_app_version): '<S120>/psc_AppVersion' */

  /*
   * S-Function Block: <S120>/psc_AppVersion
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

  /* Start for S-Function (psc_boot_build_date): '<S121>/psc_BootBuildDate' */

  /*
   * S-Function Block: <S121>/psc_BootBuildDate
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

  /* Start for S-Function (psc_boot_version): '<S121>/psc_BootVersion' */

  /*
   * S-Function Block: <S121>/psc_BootVersion
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

  /* Start for S-Function (psc_prg_build_date): '<S122>/psc_PrgBuildDate' */

  /*
   * S-Function Block: <S122>/psc_PrgBuildDate
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

  /* Start for S-Function (psc_prg_version): '<S122>/psc_PrgVersion' */

  /*
   * S-Function Block: <S122>/psc_PrgVersion
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

  /* Start for S-Function (psc_platform_build_date): '<S123>/psc_PlatformBuildDate' */

  /*
   * S-Function Block: <S123>/psc_PlatformBuildDate
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

  /* Start for S-Function (psc_platform_version): '<S123>/psc_PlatformVersion' */

  /*
   * S-Function Block: <S123>/psc_PlatformVersion
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

  /* Start for RateTransition: '<Root>/Rate Transition33' */
  ATV_B.RateTransition33 = false;

  /* Start for RateTransition: '<Root>/Rate Transition35' */
  ATV_B.RateTransition35 = false;

  /* Start for RateTransition: '<Root>/Rate Transition34' */
  ATV_B.RateTransition34 = false;

  /* Start for Enabled SubSystem: '<Root>/CANBUS_Output_Processing' */
  ATV_DW.CANBUS_Output_Processing_MODE = false;

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    256);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage1' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage1
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage1_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    335);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage10' incorporates:
   *  Constant: '<S3>/Constant1'
   *  Constant: '<S3>/Constant12'
   *  Constant: '<S3>/Constant5'
   */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage10
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage10_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    819);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage11' incorporates:
   *  Constant: '<S3>/Constant12'
   */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage11
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage11_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    820);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage12' incorporates:
   *  Constant: '<S3>/Constant12'
   *  Constant: '<S3>/Constant6'
   */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage12
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage12_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    821);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage13' incorporates:
   *  Constant: '<S3>/Constant1'
   *  Constant: '<S3>/Constant12'
   *  Constant: '<S3>/Constant9'
   */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage13
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage13_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    787);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage14' incorporates:
   *  Constant: '<S3>/Constant12'
   */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage14
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage14_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    788);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage15' incorporates:
   *  Constant: '<S3>/Constant12'
   *  Constant: '<S3>/Constant6'
   */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage15
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage15_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    789);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage2' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage2
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage2_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    817);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage20' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage20
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage20_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    272);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage23' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage23
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage23_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    260);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage3' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage3
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage3_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    818);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage4' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage4
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage4_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    785);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage5' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage5
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage5_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    786);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage19' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage19
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage19_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    271);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage22' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage22
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage22_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    259);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage24' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage24
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage24_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    261);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage26' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage26
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage26_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    263);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage6' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage6
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage6_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    498);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage7' incorporates:
   *  Constant: '<S3>/Constant2'
   *  Constant: '<S3>/Constant3'
   */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage7
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage7_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    801);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage8' incorporates:
   *  Constant: '<S3>/Constant'
   */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage8
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage8_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    802);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage9' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage9
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage9_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    257);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage21' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage21
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage21_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    258);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage25' */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage25
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage25_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    262);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage16' incorporates:
   *  Constant: '<S3>/atvc_max_gen_trq'
   */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage16
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage16_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    803);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage17' incorporates:
   *  Constant: '<S3>/atvc_max_gen_neutral_trq'
   */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage17
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage17_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    804);

  /* Start for S-Function (pcx_candb_transmit_message): '<S3>/pcx_CANdb_TransmitMessage18' incorporates:
   *  Constant: '<S3>/atvc_gen_ramp_up'
   *  Constant: '<S3>/atvc_max_gen_reg_trq'
   */

  /* S-Function Block: <S3>/pcx_CANdb_TransmitMessage18
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage18_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    805);

  /* Start for IfAction SubSystem: '<S3>/If Action Subsystem2' */
  /* Start for S-Function (pcx_candb_transmit_message): '<S42>/pcx_CANdb_TransmitMessage23' */

  /* S-Function Block: <S42>/pcx_CANdb_TransmitMessage23
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage23_n_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    776);

  /* Start for S-Function (pcx_candb_transmit_message): '<S42>/pcx_CANdb_TransmitMessage24' */

  /* S-Function Block: <S42>/pcx_CANdb_TransmitMessage24
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage24_d_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    1302);

  /* End of Start for SubSystem: '<S3>/If Action Subsystem2' */
  /* End of Start for SubSystem: '<Root>/CANBUS_Output_Processing' */

  /* Start for Atomic SubSystem: '<Root>/CHARGER_CONTROL' */
  /* Start for Enabled SubSystem: '<S19>/Enabled Subsystem' */
  /* Start for S-Function (pcx_candb_transmit_message): '<S68>/pcx_CANdb_TransmitMessage' */

  /* S-Function Block: <S68>/pcx_CANdb_TransmitMessage
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage_c_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    1729);

  /* Start for S-Function (pcx_candb_transmit_message): '<S68>/pcx_CANdb_TransmitMessage1' incorporates:
   *  Constant: '<S68>/Constant'
   *  Constant: '<S68>/Constant1'
   *  Constant: '<S68>/Constant2'
   */

  /* S-Function Block: <S68>/pcx_CANdb_TransmitMessage1
   * [$Id: pcx_candb_transmit_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  pcx_CANdb_TransmitMessage1_b_msg_handle = pcx_declare_message(PCX_TX_MSG,
    PIO_CAN_YE4_YF4_A,
    0,
    8,
    1910);

  /* End of Start for SubSystem: '<S19>/Enabled Subsystem' */
  /* End of Start for SubSystem: '<Root>/CHARGER_CONTROL' */

  /* Start for If: '<S32>/If' */
  ATV_DW.If_ActiveSubsystem = -1;

  /* Start for IfAction SubSystem: '<S32>/If Action Subsystem' */
  /* Start for S-Function (ptm_real_time): '<S109>/ptm_RealTime' */

  /*
   * S-Function Block: <S109>/ptm_RealTime
   * [$Id: ptm_real_time.tlc 34330 2013-07-01 12:56:28Z sbhattacharya $]
   */
  ATV_DW.ptm_RealTime_DWORK1 = ptm_get_s_time();

  /* End of Start for SubSystem: '<S32>/If Action Subsystem' */

  /* ConstCode for Constant: '<S138>/Constant' */
  atv_fs1_out = true;
  ATV_PrevZCX.TriggeredSubsystem_Trig_ZCE = POS_ZCSIG;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition6' */
  ATV_DW.RateTransition6_Buffer0_i = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition7' */
  ATV_DW.RateTransition7_Buffer0 = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition10' */
  ATV_DW.RateTransition10_Buffer0 = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition11' */
  ATV_DW.RateTransition11_Buffer0 = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition26' */
  ATV_DW.RateTransition26_Buffer0 = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition27' */
  ATV_DW.RateTransition27_Buffer0 = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition4' */
  ATV_DW.RateTransition4_Buffer0_f = false;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition37' */
  ATV_DW.RateTransition37_Buffer0 = false;

  /* InitializeConditions for Memory: '<S34>/Memory1' */
  ATV_DW.Memory1_PreviousInput_m = false;

  /* InitializeConditions for Memory: '<S34>/Memory2' */
  ATV_DW.Memory2_PreviousInput = false;

  /* InitializeConditions for Memory: '<S34>/Memory3' */
  ATV_DW.Memory3_PreviousInput = false;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition5' */
  ATV_DW.RateTransition5_Buffer0_c = false;

  /* InitializeConditions for Memory: '<S34>/Memory' */
  ATV_DW.Memory_PreviousInput_l = false;

  /* InitializeConditions for Memory: '<S34>/Memory4' */
  ATV_DW.Memory4_PreviousInput = false;

  /* InitializeConditions for RateTransition: '<S4>/Rate Transition4' */
  ATV_DW.RateTransition4_Buffer0 = 0U;

  /* InitializeConditions for Memory: '<S34>/Memory5' */
  ATV_DW.Memory5_PreviousInput = false;

  /* InitializeConditions for RateTransition: '<S6>/Rate Transition6' */
  ATV_DW.RateTransition6_Buffer0 = 0.0;

  /* InitializeConditions for RateTransition: '<S6>/Rate Transition27' */
  ATV_DW.RateTransition27_Buffer0_b = false;

  /* InitializeConditions for RateTransition: '<S6>/Rate Transition5' */
  ATV_DW.RateTransition5_Buffer0 = 0.0;

  /* InitializeConditions for RateTransition: '<S6>/Rate Transition1' */
  ATV_DW.RateTransition1_Buffer0 = 0.0;

  /* InitializeConditions for RateTransition: '<S6>/Rate Transition2' */
  ATV_DW.RateTransition2_Buffer0 = 0.0;

  /* InitializeConditions for RateTransition: '<S4>/Rate Transition3' */
  ATV_DW.RateTransition3_Buffer0 = 0.0;

  /* InitializeConditions for RateTransition: '<S4>/Rate Transition27' */
  ATV_DW.RateTransition27_Buffer0_f = false;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition38' */
  ATV_DW.RateTransition38_Buffer0 = false;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition8' */
  ATV_DW.RateTransition8_Buffer0 = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition9' */
  ATV_DW.RateTransition9_Buffer0 = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition48' */
  ATV_DW.RateTransition48_Buffer0 = false;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition24' */
  ATV_DW.RateTransition24_Buffer0 = 0;

  /* InitializeConditions for RateLimiter: '<S141>/Rate Limiter4' */
  ATV_DW.PrevY = 0.0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S4>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S4>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.bms_rolling_counter_e = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5 = 0;
  bms_pack_voltage = 0;
  ATV_B.atv_bms_pack_current = 0;
  ATV_B.atv_bms_pack_soh = 0;
  ATV_B.bms_pack_voltage_e = 0;

  /* InitializeConditions for RateTransition: '<S4>/Rate Transition6' */
  ATV_DW.RateTransition6_Buffer0_j = 0.0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S6>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S6>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.B_Min_Cell = 0;
  ATV_B.B_Min_Cell_ID = 0;
  B_Max_Cell = 0;
  ATV_B.B_Max_Cell_ID = 0;
  ATV_B.B_Min_Temp = 0;
  ATV_B.B_Max_Temp = 0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S7>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S7>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4 = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_g = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o6 = 0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S7>/pcx_CANdb_ReceiveMessage1' */

  /* S-Function Block: <S7>/pcx_CANdb_ReceiveMessage1
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage1_o4 = 0;

  /* InitializeConditions for UnitDelay: '<S47>/Unit Delay3' */
  ATV_DW.UnitDelay3_DSTATE = 0.0;

  /* InitializeConditions for UnitDelay: '<S48>/Unit Delay3' */
  ATV_DW.UnitDelay3_DSTATE_p = 0.0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S10>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S10>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_f = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_e = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o6_o = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o7 = 0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S11>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S11>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_ni = 0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S12>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S12>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_fz = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_m = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o6_n = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o7_g = 0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S13>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S13>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_l = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_k = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o6_eb = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o7_gf = 0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S15>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S15>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_e = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_c = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o6_a = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o7_i = 0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S16>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S16>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_j = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_p = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o6_i = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o7_o = 0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S17>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S17>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_ly = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_i = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o6_e = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o7_d = 0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S18>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S18>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_a = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_d = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o6_k = 0;

  /* InitializeConditions for RateTransition: '<S28>/Rate Transition' */
  ATV_DW.RateTransition_Buffer0 = 0.0;

  /* InitializeConditions for Memory: '<S157>/Memory' */
  ATV_DW.Memory_PreviousInput_l4 = false;

  /* InitializeConditions for Memory: '<S158>/Memory' */
  ATV_DW.Memory_PreviousInput_lr = false;

  /* InitializeConditions for Memory: '<S165>/Memory1' */
  ATV_DW.Memory1_PreviousInput = 0;

  /* InitializeConditions for RateTransition: '<S139>/Rate Transition1' */
  ATV_DW.RateTransition1_Buffer0_b = 0U;

  /* InitializeConditions for RateLimiter: '<S141>/Rate Limiter2' */
  ATV_DW.PrevY_d = 0.0F;

  /* InitializeConditions for RateTransition: '<S5>/Rate Transition3' */
  ATV_DW.RateTransition3_Buffer0_j = 0.0;

  /* InitializeConditions for RateTransition: '<S5>/Rate Transition27' */
  ATV_DW.RateTransition27_Buffer0_fl = false;

  /* InitializeConditions for RateLimiter: '<S141>/Rate Limiter3' */
  ATV_DW.PrevY_a = 0.0F;

  /* InitializeConditions for DiscreteIntegrator: '<S224>/Integrator' */
  ATV_DW.Integrator_DSTATE_b = 0;

  /* InitializeConditions for DiscreteIntegrator: '<S206>/Filter' */
  ATV_DW.Filter_DSTATE = 0.0;

  /* InitializeConditions for RateLimiter: '<S141>/Rate Limiter' */
  ATV_DW.PrevY_l = 0U;

  /* InitializeConditions for RateLimiter: '<S141>/Rate Limiter1' */
  ATV_DW.PrevY_k = 0U;

  /* InitializeConditions for Memory: '<S370>/Memory1' */
  ATV_DW.Memory1_PreviousInput_d = 0;

  /* InitializeConditions for RateTransition: '<S142>/Rate Transition1' */
  ATV_DW.RateTransition1_Buffer0_k = 0U;

  /* InitializeConditions for Memory: '<S145>/Memory4' */
  ATV_DW.Memory4_PreviousInput_o = false;

  /* InitializeConditions for Memory: '<S371>/Memory1' */
  ATV_DW.Memory1_PreviousInput_om = false;

  /* InitializeConditions for Memory: '<S372>/Memory1' */
  ATV_DW.Memory1_PreviousInput_o = 0;

  /* InitializeConditions for DiscreteIntegrator: '<S145>/Discrete-Time Integrator' */
  ATV_DW.DiscreteTimeIntegrator_DSTATE = 0.0;
  ATV_DW.DiscreteTimeIntegrator_PrevRese = 2;

  /* InitializeConditions for Memory: '<S374>/Memory1' */
  ATV_DW.Memory1_PreviousInput_c = 0;

  /* InitializeConditions for RateTransition: '<S146>/Rate Transition1' */
  ATV_DW.RateTransition1_Buffer0_i = 0U;

  /* InitializeConditions for Memory: '<S140>/Memory1' */
  ATV_DW.Memory1_PreviousInput_e = false;

  /* InitializeConditions for DiscretePulseGenerator: '<S34>/Pulse Generator' */
  ATV_DW.clockTickCounter = -6000;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S5>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S5>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_p = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_mt = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o6_m = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o7_ig = 0;

  /* InitializeConditions for RateTransition: '<S5>/Rate Transition6' */
  ATV_DW.RateTransition6_Buffer0_p = 0.0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S8>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S8>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_o = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_dy = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o6_ns = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o7_l = 0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S9>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S9>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_n = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_l = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o6_j = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o7_m = 0;

  /* InitializeConditions for S-Function (pcx_candb_receive_message): '<S14>/pcx_CANdb_ReceiveMessage' */

  /* S-Function Block: <S14>/pcx_CANdb_ReceiveMessage
   * [$Id: pcx_candb_receive_message.tlc 69985 2019-02-26 16:57:42Z jprewett $]
   */
  ATV_B.pcx_CANdb_ReceiveMessage_o4_i = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o5_b = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o6_ec = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o7_c = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o8 = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o9 = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o10 = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o11 = 0;
  ATV_B.pcx_CANdb_ReceiveMessage_o12 = 0;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition33' */
  ATV_DW.RateTransition33_Buffer0 = false;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition35' */
  ATV_DW.RateTransition35_Buffer0 = false;

  /* InitializeConditions for RateTransition: '<Root>/Rate Transition34' */
  ATV_DW.RateTransition34_Buffer0 = false;

  /* InitializeConditions for Memory: '<S32>/Memory' */
  ATV_DW.Memory_PreviousInput_f = 0;

  /* SystemInitialize for Chart: '<S34>/Chart1' */
  ATV_DW.is_FAULT_DETECTION = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.is_ICE_START_STOP = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.is_KEY_ON = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.is_RUN_MODE = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.is_HYBRID = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.temporalCounter_i1_b = 0U;
  ATV_DW.is_active_c25_ATV = 0U;

  /* SystemInitialize for Chart: '<S6>/Chart' */
  ATV_Chart_Init(&ATV_DW.sf_Chart_j);

  /* SystemInitialize for Chart: '<S4>/Chart' */
  ATV_Chart_Init(&ATV_DW.sf_Chart);

  /* SystemInitialize for Chart: '<S34>/VSM' */
  ATV_DW.is_CHG_CTRL = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.temporalCounter_i1_j = 0U;
  ATV_DW.is_FAULT_DETECT = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.temporalCounter_i4 = 0U;
  ATV_DW.is_DETECT = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.is_HEATER_CTRL = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.is_HEATER_ON = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.is_HV_CTRL = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.temporalCounter_i2_j = 0U;
  ATV_DW.is_STARTTRIGGER = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.is_SM = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.is_APU = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.is_RUN = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.temporalCounter_i3 = 0U;
  ATV_DW.is_active_c3_ATV = 0U;

  /* SystemInitialize for Chart: '<S150>/Chart1' */
  ATV_DW.temporalCounter_i1_o = 0U;
  ATV_DW.is_active_c21_ATV = 0U;
  ATV_DW.is_c21_ATV = ATV_IN_NO_ACTIVE_CHILD_c;

  /* SystemInitialize for Chart: '<S150>/Chart2' */
  ATV_DW.temporalCounter_i1_l = 0U;
  ATV_DW.is_active_c22_ATV = 0U;
  ATV_DW.is_c22_ATV = ATV_IN_NO_ACTIVE_CHILD_c;

  /* SystemInitialize for Chart: '<S150>/Chart' */
  ATV_DW.temporalCounter_i1_h = 0U;
  ATV_DW.is_active_c18_ATV = 0U;
  ATV_DW.is_c18_ATV = ATV_IN_NO_ACTIVE_CHILD_c;

  /* SystemInitialize for Chart: '<Root>/Chart' */
  ATV_DW.temporalCounter_i1_c = 0U;
  ATV_DW.is_active_c15_ATV = 0U;
  ATV_DW.is_c15_ATV = ATV_IN_NO_ACTIVE_CHILD_c;

  /* InitializeConditions for MATLABSystem: '<S168>/Moving Average' */
  if (ATV_DW.obj_n.pStatistic->isInitialized == 1) {
    ATV_DW.obj_n.pStatistic->pCumSum = 0.0F;
    memset(&ATV_DW.obj_n.pStatistic->pCumSumRev[0], 0, 19U * sizeof(real32_T));
    ATV_DW.obj_n.pStatistic->pCumRevIndex = 1.0F;
  }

  /* End of InitializeConditions for MATLABSystem: '<S168>/Moving Average' */
  ATV_DW.is_active_IceSM = 0U;
  ATV_DW.is_IceSM = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.is_MonitoraggioStatoICE = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.temporalCounter_i1 = 0U;
  ATV_DW.is_WarmUpIce = ATV_IN_NO_ACTIVE_CHILD_c;
  ATV_DW.temporalCounter_i2 = 0U;
  ATV_DW.is_active_c2_ATV = 0U;

  /* SystemInitialize for Chart: '<S141>/VSMGestioneIbrido' incorporates:
   *  SubSystem: '<S169>/IceSM.speed_pid_ice'
   */
  ATV_DW.IceSMspeed_pid_ice_PREV_T[0] = ATV_M->Timing.clockTick0;
  ATV_DW.IceSMspeed_pid_ice_PREV_T[1] = ATV_M->Timing.clockTickH0;

  /* InitializeConditions for DiscreteIntegrator: '<S325>/Integrator' */
  ATV_DW.Integrator_DSTATE = 0.0F;
  ATV_DW.Integrator_PrevResetState = 0;

  /* SystemInitialize for Chart: '<S10>/Chart' */
  ATV_Chart_d_Init(&ATV_DW.sf_Chart_jt);

  /* SystemInitialize for Chart: '<S11>/Chart' */
  ATV_DW.temporalCounter_i1_o5 = 0U;
  ATV_DW.is_active_c14_ATV = 0U;
  ATV_DW.is_c14_ATV = ATV_IN_NO_ACTIVE_CHILD_c;

  /* SystemInitialize for Chart: '<S12>/Chart' */
  ATV_Chart_d_Init(&ATV_DW.sf_Chart_l);

  /* SystemInitialize for Chart: '<S13>/Chart' */
  ATV_Chart_d_Init(&ATV_DW.sf_Chart_a);

  /* SystemInitialize for Chart: '<S15>/Chart' */
  ATV_Chart_d_Init(&ATV_DW.sf_Chart_m);

  /* SystemInitialize for Chart: '<S16>/Chart' */
  ATV_Chart_d_Init(&ATV_DW.sf_Chart_d0);

  /* SystemInitialize for Chart: '<S17>/Chart' */
  ATV_Chart_d_Init(&ATV_DW.sf_Chart_e);

  /* SystemInitialize for Chart: '<S18>/Chart' */
  ATV_Chart_d_Init(&ATV_DW.sf_Chart_ju);

  /* InitializeConditions for MATLABSystem: '<S28>/Moving Average' */
  if (ATV_DW.obj.pStatistic->isInitialized == 1) {
    ATV_DW.obj.pStatistic->pCumSum = 0.0;
    memset(&ATV_DW.obj.pStatistic->pCumSumRev[0], 0, 99U * sizeof(real_T));
    ATV_DW.obj.pStatistic->pCumRevIndex = 1.0;
  }

  /* End of InitializeConditions for MATLABSystem: '<S28>/Moving Average' */

  /* SystemInitialize for Chart: '<S157>/Chart' */
  ATV_Chart_a_Init(&ATV_DW.sf_Chart_n);

  /* SystemInitialize for Chart: '<S158>/Chart' */
  ATV_Chart_a_Init(&ATV_DW.sf_Chart_p);

  /* SystemInitialize for Chart: '<S5>/Chart' */
  ATV_DW.temporalCounter_i1_a = 0U;
  ATV_DW.is_active_c9_ATV = 0U;
  ATV_DW.is_c9_ATV = ATV_IN_NO_ACTIVE_CHILD_c;

  /* SystemInitialize for Chart: '<S8>/Chart' */
  ATV_Chart_d_Init(&ATV_DW.sf_Chart_o);

  /* SystemInitialize for Chart: '<S9>/Chart' */
  ATV_Chart_d_Init(&ATV_DW.sf_Chart_c);

  /* SystemInitialize for Chart: '<S29>/Chart' */
  ATV_Chart_o_Init(&ATV_DW.sf_Chart_cv);

  /* SystemInitialize for Chart: '<S29>/Chart1' */
  ATV_Chart_o_Init(&ATV_DW.sf_Chart1);

  /* SystemInitialize for Chart: '<S29>/Chart2' */
  ATV_Chart_o_Init(&ATV_DW.sf_Chart2);

  /* SystemInitialize for Enabled SubSystem: '<Root>/CANBUS_Output_Processing' */
  /* InitializeConditions for RandomNumber: '<S3>/Random Number' */
  ATV_DW.RandSeed = 1144108930U;
  ATV_DW.NextOutput = rt_nrand_Upu32_Yd_f_pw_snf(&ATV_DW.RandSeed) *
    22.360679774997898;

  /* End of SystemInitialize for SubSystem: '<Root>/CANBUS_Output_Processing' */

  /* SystemInitialize for IfAction SubSystem: '<S32>/If Action Subsystem' */
  /* InitializeConditions for Memory: '<S109>/Memory' */
  ATV_DW.Memory_PreviousInput = 0U;

  /* End of SystemInitialize for SubSystem: '<S32>/If Action Subsystem' */
}

/* Model terminate function */
static void ATV_terminate(void)
{
  /* Terminate for MATLABSystem: '<S168>/Moving Average' */
  matlabCodegenHandle_matlabCod_p(&ATV_DW.obj_n);

  /* Terminate for MATLABSystem: '<S28>/Moving Average' */
  matlabCodegenHandle_matlabCodeg(&ATV_DW.obj);
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
    int_T i;
    for (i = 0; i < 5; i++) {
      mdlTsMap[i] = i;
    }

    ATV_M->Timing.sampleTimeTaskIDPtr = (&mdlTsMap[0]);
    ATV_M->Timing.sampleTimes = (&ATV_M->Timing.sampleTimesArray[0]);
    ATV_M->Timing.offsetTimes = (&ATV_M->Timing.offsetTimesArray[0]);

    /* task periods */
    ATV_M->Timing.sampleTimes[0] = (0.01);
    ATV_M->Timing.sampleTimes[1] = (0.02);
    ATV_M->Timing.sampleTimes[2] = (0.1);
    ATV_M->Timing.sampleTimes[3] = (0.5);
    ATV_M->Timing.sampleTimes[4] = (1.0);

    /* task offsets */
    ATV_M->Timing.offsetTimes[0] = (0.0);
    ATV_M->Timing.offsetTimes[1] = (0.0);
    ATV_M->Timing.offsetTimes[2] = (0.0);
    ATV_M->Timing.offsetTimes[3] = (0.0);
    ATV_M->Timing.offsetTimes[4] = (0.0);
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
  ATV_M->Timing.stepSize1 = 0.02;
  ATV_M->Timing.stepSize2 = 0.1;
  ATV_M->Timing.stepSize3 = 0.5;
  ATV_M->Timing.stepSize4 = 1.0;
  ATV_M->solverInfoPtr = (&ATV_M->solverInfo);
  ATV_M->Timing.stepSize = (0.01);
  rtsiSetFixedStepSize(&ATV_M->solverInfo, 0.01);
  rtsiSetSolverMode(&ATV_M->solverInfo, SOLVER_MODE_MULTITASKING);

  /* block I/O */
  ATV_M->blockIO = ((void *) &ATV_B);
  (void) memset(((void *) &ATV_B), 0,
                sizeof(B_ATV_T));

  /* exported global signals */
  atv_xd1_key_ain = 0.0;
  atv_xc1_raw_ain = 0.0;
  atv_xc4_raw_ain = 0.0;
  atv_xa3_brake_pedal_raw_ain = 0.0;
  atv_xe2_raw_ain = 0.0;
  atv_yh3_raw_ain = 0.0;
  atv_dbg_FAN_out = 0.0;
  bms_pack_voltage = 0.0;
  B_Max_Cell = 0.0;
  atv_yb3_raw_ain = 0.0;
  atv_xa1_ain_throttle_raw = 0.0;
  atv_xd3_raw_ain = 0.0;
  atv_HandBrakePos = 0.0;
  atv_xe4_raw_ain = 0.0;
  atv_zd1_ain = 0.0;
  atv_12v = 0.0;
  atv_yg3_raw_ain = 0.0;
  atv_fmot_run_timer = 0U;
  atv_ice_run_timer = 0U;
  atv_odometer = 0U;
  atv_rmot_run_timer = 0U;
  atv_stack_used = 0U;
  atv_task_duration_1s = 0U;
  atv_task_duration_1s_max = 0U;
  atv_ze4 = 0.0F;
  atv_xd2 = 0.0F;
  atv_ze3 = 0.0F;
  atv_ye2 = 0.0F;
  atv_fuel_qty = 0.0F;
  atv_xe3_ain = 0;
  atv_ICE_Start_Timer = 0;
  atv_brake_pedalX1000 = 0U;
  atv_max_cell = 0U;
  atv_min_cell = 0U;
  atv_throttleX1000 = 0U;
  atv_motoring_x1000_rear = 0U;
  atv_motoring_x1000_front = 0U;
  atv_motoring_x1000_front_final = 0U;
  atv_motoring_x1000_rear_final = 0U;
  atv_regen_x1000_front = 0U;
  atv_regen_x1000_rear = 0U;
  atv_throttleGen_X1000_out = 0U;
  atv_footBrake_X1000_out = 0U;
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
  atv_reg_current_limit = 0U;
  atv_mtr_current_limit = 0U;
  atv_T_Air = 0;
  atv_RPM_Gen = 0;
  atv_T_ICE = 0;
  atv_TRad_out = 0;
  atv_TRad = 0;
  atv_TRad_in = 0;
  atv_brake2epedal_split_actual = 0;
  atv_bmsMaxChgCurr = 0;
  atv_GenCurrentSetPoint = 0;
  atv_ice_rpm_req = 0;
  atv_bmsMaxDisCurr = 0;
  atv_GenSelProcessed = 0U;
  bms_pack_soc = 0U;
  bms_rolling_counter = 0U;
  atv_fuel_level = 0U;
  atv_RegMapSelProcessed = 0U;
  atv_regmap = 0U;
  atv_map = 0U;
  atv_cpu_loading = 0U;
  atv_cpu_loading_max = 0U;
  atv_vehicle_SOC = 0U;
  atv_state_out = 0U;
  atv_sub_state_out = 0U;
  atv_IceSM = 0U;
  atv_IceRG = 0U;
  atv_pm_Hybrid = 0U;
  key_signal = false;
  atv_za3_StartBtn_din = false;
  atv_zc2 = false;
  atv_zc4 = false;
  atv_fwd_mode_in = false;
  atv_rwd_mode_in = false;
  atv_brake_pedal_digital_in = false;
  atv_startConditions = false;
  atv_apu_req_in = false;
  atv_xf4 = false;
  atv_dbg_pumpA_out = false;
  atv_za2 = false;
  atv_runLed_out = false;
  atv_zb2 = false;
  atv_zb3 = false;
  atv_yg2 = false;
  atv_yh2 = false;
  atv_yj2 = false;
  atv_chg_present = false;
  atv_can_wakeup = false;
  atv_v_dbg_chg_req = false;
  atv_v_dbg_heater_req = false;
  atv_fs1_in = false;
  atv_HandBrakeStatus = false;
  atv_4wd_din = false;
  atv_fs1_out = true;
  atv_fuel_reserve = false;
  atv_ICE_Start_Timer_Valid = false;
  atv_wakelock_out = false;
  atv_en_dcdc_out = false;
  atv_startBtnArmed = false;
  atv_IceKey_out = false;
  atv_IceShutdown_out = false;
  atv_IceOn = false;
  atv_IceFault = false;
  atv_PumpBFault = false;
  atv_PumpAFault = false;
  atv_dbg_pumpB_out = false;
  atv_yg1 = false;
  atv_pm_PreOp = false;
  atv_pm_Stealth = false;
  atv_pm_Electric = false;
  atv_pm_g = false;
  atv_pm_s1 = false;
  atv_pm_s2 = false;
  atv_pm_s3 = false;
  atv_pm_2 = false;
  atv_pm_1 = false;
  atv_pm_0 = false;

  /* states (dwork) */
  ATV_M->dwork = ((void *) &ATV_DW);
  (void) memset((void *)&ATV_DW, 0,
                sizeof(DW_ATV_T));

  /* Initialize Sizes */
  ATV_M->Sizes.numContStates = (0);    /* Number of continuous states */
  ATV_M->Sizes.numY = (0);             /* Number of model outputs */
  ATV_M->Sizes.numU = (0);             /* Number of model inputs */
  ATV_M->Sizes.sysDirFeedThru = (0);   /* The model is not direct feedthrough */
  ATV_M->Sizes.numSampTimes = (5);     /* Number of sample times */
  ATV_M->Sizes.numBlocks = (1068);     /* Number of blocks */
  ATV_M->Sizes.numBlockIO = (398);     /* Number of block outputs */
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
void pkn_20ms_model_task(void)
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
void pkn_100ms_model_task(void)
{
  MdlOutputs(2);
  MdlUpdate(2);
  rt_SimUpdateDiscreteTaskTime(rtmGetTPtr(S),
    rtmGetTimingData(S), 2);
}

/*
 *****************************************************************************
 *  Purpose:        Handle a periodic rate iteration of the model.
 *  Returns:        void
 *  Notes:          None.
 *****************************************************************************
 */
void pkn_500ms_model_task(void)
{
  MdlOutputs(3);
  MdlUpdate(3);
  rt_SimUpdateDiscreteTaskTime(rtmGetTPtr(S),
    rtmGetTimingData(S), 3);
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
  MdlOutputs(4);
  MdlUpdate(4);
  rt_SimUpdateDiscreteTaskTime(rtmGetTPtr(S),
    rtmGetTimingData(S), 4);
}
