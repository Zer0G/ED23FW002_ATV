##############################################################################
##
##  Project:        OpenECU
##  Version:        $Id: openecu_grt_r2018b_64.tmf 79081 2020-12-15 15:23:10Z csmith $
##  File:           $URL: https://aetius.ps.local/svn/OpenECU/development/platform/branches/cr28648-3.2.0-FS-r2021-2-rc2/openecu/rtw/c/openecu_grt/openecu_grt_r2018b_64.tmf $
##  Description:    RTW template makefile for building an OpenECU model
##                  (specifically for R2018b).
##
##  Copyright (C) 2018 Pi Innovo
##  This document (program) contains proprietary information
##  which is the property of Pi Innovo
##  The contents of this document (program) must not be copied
##  or disclosed to a third party without the prior agreement
##  of an authorised officer of Pi Innovo
##
##  Notes:          This template makefile is automatically parsed by
##                  the RTW build procedure to create "<model>.mk"
##
##############################################################################

##============== RTW template portion ==========================================
##

#------------------------ Macros read by make_rtw ------------------------------
#
# The following macros are read by the Real-Time Workshop build procedure:
#
#  MAKECMD         - This is the command used to invoke the make utility
#  HOST            - What platform this template makefile is targeted for
#                    (i.e. PC or UNIX)
#  BUILD           - Invoke make from the Real-Time Workshop build procedure
#                    (yes/no)?
#  SYS_TARGET_FILE - Name of system target file.

MAKECMD =                       "%MATLAB%\bin\win64\gmake"
HOST =                          PC
BUILD =                         yes
SYS_TARGET_FILE =               openecu_grt.tlc
COMPILER_TOOL_CHAIN =           default

#---------------------- Tokens expanded by make_rtw ----------------------------
#
# The following tokens, when wrapped with "|>" and "<|" are expanded by the
# Real-Time Workshop build procedure.
#
#  MODEL           - Name of the Simulink block diagram
#  MODULES         - Any additional generated source modules
#  MAKEFILE        - Name of makefile created from template makefile <model>.mk
#  MATLAB_ROOT     - Path to were MATLAB is installed.
#  MATLAB_BIN      - Path to MATLAB executable.
#  S_FUNCTIONS     - List of S-functions.
#  S_FUNCTIONS_LIB - List of S-functions libraries to link.
#  SOLVER          - Solver source file name
#  NUMST           - Number of sample times
#  TID01EQ         - yes (1) r no (0): Are sampling rates of continuous task
#                    (tid=0) and 1st discrete task equal.
#  NCSTATES        - Number of continuous states
#  BUILDARGS       - Options passed in at the command line.
#  MULTITASKING    - yes (1) or no (0): Is solver mode multitasking
#  EXT_MODE        - yes (1) or no (0): Build for external mode
#  ADD_INCLUDES    - series of include directories for s-functions etc.

MODEL                         = ATV
MODULES                       = ATV_data.c rtGetInf.c rtGetNaN.c rt_nonfinite.c
MAKEFILE                      = ATV.mk
MATLAB_ROOT                   = C:\Program Files\MATLAB\R2018b
MATLAB_BIN                    = C:\Program Files\MATLAB\R2018b\bin
S_FUNCTIONS                   = 
S_FUNCTIONS_LIB               = 
SOLVER                        = 
NUMST                         = 5
TID01EQ                       = 0
NCSTATES                      = 0
BUILDARGS                     =  MODELLIB=ATVlib.a EXT_MODE=0 EXTMODE_STATIC_ALLOC=0 TMW_EXTMODE_TESTING=0 EXTMODE_STATIC_ALLOC_SIZE=1000000 EXTMODE_TRANSPORT=0 MAT_FILE=0 MAX_DD_LENGTH=31 CONT_IF_VISION_STRATEGY_FAILS=0 COMBINE_OUTPUT_UPDATE_FCNS=0 INCLUDE_MDL_TERMINATE_FCN=1 MULTI_INSTANCE_CODE=0 MODELREF_TARGET_TYPE=NONE RELATIVE_PATH_TO_ANCHOR=.. ISPROTECTINGMODEL=NOTPROTECTING
MULTITASKING                  = 1
EXT_MODE                      = 0
GEN_IMAGE_SRECORD             = 1
GEN_IMAGE_HEX                 = 1
GEN_ASAP_GENERIC              = 1
GEN_ASAP_VISION               = 1
GEN_ASAP_INCA                 = 1
GEN_ASAP_CANAPE               = 1
GEN_ASAP_CONTROLDESK          = 1
GEN_DTC_DDES                  = 0
GEN_ASAP_OLD                  = 0
GEN_IMAGE_VISION_STRATEGY     = 1
GEN_ASAP_NEED_FLASH_VOLTS     = 0
CHECKSUM_TYPE                 = IPv4
CHECKSUM_REGION               = Application
ADD_INCLUDES                  =  C:\Users\giovanni\OneDrive\Desktop\workspace\Firmware  C:\Users\giovanni\OneDrive\Desktop\workspace\Firmware\ATV_r2018.2_64_oe_3.2.0_r2022_1_rtmodel  $(MATLAB_ROOT)\extern\include  $(MATLAB_ROOT)\simulink\include  $(MATLAB_ROOT)\rtw\c\src  $(MATLAB_ROOT)\rtw\c\src\ext_mode\common 

# Incomplete support for shared utilities

SHARED_SRC      = 
SHARED_SRC_DIR  = 
SHARED_BIN_DIR  = 
SHARED_LIB      = 

# Accept the alternative root and bin directories to resolve directory names with
# spaces.

ALT_MATLAB_ROOT               = C:\PROGRA~1\MATLAB\R2018b
ALT_MATLAB_BIN                = C:\PROGRA~1\MATLAB\R2018b\bin

#-- In the case when directory name contains space ---
ifneq ($(MATLAB_ROOT),$(ALT_MATLAB_ROOT))
MATLAB_ROOT := $(ALT_MATLAB_ROOT)
endif
ifneq ($(MATLAB_BIN),$(ALT_MATLAB_BIN))
MATLAB_BIN := $(ALT_MATLAB_BIN)
endif

##
##============== End of RTW template portion ===================================

GEN_RTW_LIBRARY = 0
PLAT_C_SRC      = rt_nonfinite.c
RTW_C_SRC       = rt_sim.c
MODEL_TUNE_SRC  = $(MODEL).c
USE_RTMODEL     = 1

include $(MODEL)_sup.mk
include $(PLATFORM_ROOT)\mk_model_$(COMPILER).mk

##==============================================================================
## EOF: ATV.mk
