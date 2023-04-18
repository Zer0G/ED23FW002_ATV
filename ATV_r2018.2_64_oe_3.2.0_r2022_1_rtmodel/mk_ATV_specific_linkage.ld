/*
 *****************************************************************************
 *
 *  Project:        OpenECU
 *  File:           mk_ATV_specific_linkage.ld
 *  Description:    (none)
 *
 *  (none)
 *
 *  Notes:          Automatically generated as part of the build process.
 *                  Do not modify.
 *                  Created on: Tue Apr 18 19:35:01 2023 
 *
 *****************************************************************************
 */
/* This auto-generated file must be inserted in the LD file in the app_code_flash
 * group definition, before the ".text_app : { *(.text_vle) }" line.
 * This sets up addresses so that function sizes can be determined for those
 * functions that will be relocated, since C gives no "sizeof" operator for
 * finding the size of functions.
 */

