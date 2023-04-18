/*
*****************************************************************************
*
*  Project:        OpenECU
*  Version:        $Id: gen_memmap.py 63290 2018-05-07 21:41:44Z dlalonde $
*  File:           $URL: https://aetius.ps.local/svn/OpenECU/development/platform/branches/cr28648-3.2.0-FS-r2021-2-rc2/tools/gen_memmap/gen_memmap.py $
*  Description:    Memory map file for the strategy application.
*
*  Copyright (C) 2018 Pi Innovo
*  This document (program) contains proprietary information
*  which is the property of Pi Innovo
*  The contents of this document (program) must not be copied
*  or disclosed to a third party without the prior agreement
*  of an authorised officer of Pi Innovo
*
*  Notes:          None.
*
*****************************************************************************
*/

MEMORY
{
    /* Internal MPC5746D RAM */

    /* NOTE: from RM 9.2.2 - the only overlay RAM target available is system RAM array0 (0x40000000 - 0x4003FFFF). */
    cal_ram:               origin = 0x40000000, length = 0x020000

    /* NOTE: BAF uses RAM space [0x4007FD00, 0x4007FFFF] on startup/reset */
    data_ram:              origin = 0x40020000, length = 0x060000

    /* The message buffer for the unused flexcan_f peripheral is used for sprg_ram
     * Currently used for SPRG4-7 (16 bytes)
     * NOTE: the flexcan message buffer memory may have control bits that cannot
     *  be set (e.g. writing 0xff results in 0xfe).  This only currently affects SPRG6.
     */
    sprg_ram:              origin = 0xfbec8088, length = 0x000010

    /* From "MPC5746CRM 44.5.13 Bus interface" if CAN_MCR[IRMQ] is cleared the RXIMR memory
     * region is considered general purpose memory.  This consists of 384 bytes of memory
     * which is not cleared during a processor reset.
     *
     * The RXIMR memory for the unused flexcan_f peripheral is used for exception
     * stack frame / register storage, useful for detecting programming errors.
     * Currently uses 212 bytes of GPR/SPR registers.  See memory layout in psy_excep_ram.ppc
     */
    exception_ram:         origin = 0xfbec8880, length = 0x0000d4

    /*** Define Flash memory areas **************************************/

    /* Internal MPC5746D Flash */

    /* Service tool read only region 0 start */
    boot_bh_flash:          origin = 0x00f8c000, length = 0x000100
    boot_header_flash:      origin = 0x00f8c100, length = 0x000400
    boot_excep_flash:       origin = 0x00f8c500, length = 0x000100
    boot_flash:             origin = 0x00f8c600, length = 0x003a00

    pfs_flash_0:            origin = 0x00f90000, length = 0x010000
    pfs_flash_1:            origin = 0x00fa0000, length = 0x010000
    /* Service tool read only region 0 end */

    reserved_flash:         origin = 0x00fb0000, length = 0x010000

    /* Service tool read only region 1 start */
    prg_header_flash:       origin = 0x00fc0000, length = 0x000400
    prg_excep_flash:        origin = 0x00fc0400, length = 0x000100
    prg_pfl_e_flash:        origin = 0x00fc0500, length = 0x0001f8
    prg_pfl_p_flash:        origin = 0x00fc06f8, length = 0x000270
    prg_flash:              origin = 0x00fc0968, length = 0x00f698

    preg_flash:             origin = 0x00fd0000, length = 0x008000
    /* Service tool read only region 1 end */

    unused_rww1_0:          origin = 0x00fd8000, length = 0x008000
    unused_rww0_0:          origin = 0x00fe0000, length = 0x010000
    unused_rww1_1:          origin = 0x00ff0000, length = 0x010000

    /* service tool read-write region start */
    cal_header_flash:        origin = 0x01000000, length = 0x000400
    cal_flash:               origin = 0x01000400, length = 0x020000

    cal_header_flash_mirror: origin = 0x09000000, length = 0x000400
    cal_flash_mirror:        origin = 0x09000400, length = 0x020000

    /* must be on a 0x100 byte boundary */
    app_excep_flash:        origin = 0x01040000, length = 0x000100
    app_reserved_flash:     origin = 0x01040100, length = 0x000F00
    /* must be on a 0x1000 byte boundary */
    app_isr_flash:          origin = 0x01041000, length = 0x000bd0
    app_header_flash:       origin = 0x01041bd0, length = 0x000400

    app_pfl_e_flash:        origin = 0x01041fd0, length = 0x0001f8
    app_pfl_p_flash:        origin = 0x010421c8, length = 0x000270
    app_ram_flash:          origin = 0x01042438, length = 0x000600
    app_pem_flash:          origin = 0x01042a38, length = 0x000880
    app_code_flash:         origin = 0x010432b8 ,length = 0x23cd47
    /* service tool read-write region end */

    /* This tiny region is used to generate labels where the linker
     * doesn't like the use of the SIZEOF command (not clear why).
     */
    app_code_flash_end:     origin = 0x0127ffff, length = 0x000001

    /*** Define processor memory mapped register areas ******************/

    pbridge_b_mmreg:        origin = 0xf8000000, length = 0x004000
    emios_1_mmreg:          origin = 0xfbc38000, length = 0x004000
    adc_1_mmreg:            origin = 0xfbe00000, length = 0x004000
    dspi_1_mmreg:           origin = 0xfbe70000, length = 0x004000
    dspi_3_mmreg:           origin = 0xfbe74000, length = 0x004000
    flexcan_1_mmreg:        origin = 0xfbec0000, length = 0x004000
    flexcan_3_mmreg:        origin = 0xfbec4000, length = 0x004000
    /* flexcan_5_mmreg:        origin = 0xfbec8000, length = 0x004000 used as sprg_ram */
    flexcan_7_mmreg:        origin = 0xfbecc000, length = 0x004000
    fccu_mmreg:             origin = 0xfbf58000, length = 0x004000
    spi_1_mmreg:            origin = 0xfbf9c000, length = 0x004000
    spi_3_mmreg:            origin = 0xfbfa0000, length = 0x004000
    pbridge_a_mmreg:        origin = 0xfc000000, length = 0x004000
    axbs_a_mmreg:           origin = 0xfc004000, length = 0x004000
    smpu_a_mmreg:           origin = 0xfc010000, length = 0x004000
    pflash_mmreg:           origin = 0xfc030000, length = 0x004000
    intc_mmreg:             origin = 0xfc040000, length = 0x004000
    swt_0_mmreg:            origin = 0xfc050000, length = 0x004000
    stm_0_mmreg:            origin = 0xfc068000, length = 0x004000
    dma_0_mmreg:            origin = 0xfc0a0000, length = 0x004000
    bctu_a_mmreg:           origin = 0xffc10000, length = 0x004000
    emios_0_mmreg:          origin = 0xffc38000, length = 0x004000
    adc_0_mmreg:            origin = 0xffe00000, length = 0x004000
    dspi_0_mmreg:           origin = 0xffe70000, length = 0x004000
    dspi_2_mmreg:           origin = 0xffe74000, length = 0x004000
    linflexd_a_mmreg:       origin = 0xffe8C000, length = 0x004000
    flexcan_0_mmreg:        origin = 0xffec0000, length = 0x004000
    flexcan_2_mmreg:        origin = 0xffec4000, length = 0x004000
    flexcan_4_mmreg:        origin = 0xffec8000, length = 0x004000
    flexcan_6_mmreg:        origin = 0xffecc000, length = 0x004000
    stm_hsm_mmreg:          origin = 0xfff2c000, length = 0x004000
    memu_0_a_mmreg:         origin = 0xfff50000, length = 0x004000
    dmamux_0_mmreg:         origin = 0xfff6c000, length = 0x000200
    dmamux_1_mmreg:         origin = 0xfff6c200, length = 0x000200
    pit_mmreg:              origin = 0xfff84000, length = 0x004000
    mc_rgm_a_mmreg:         origin = 0xfffa8000, length = 0x004000
    plldig_mmreg:           origin = 0xfffb0080, length = 0x000040
    sirc_mmreg:             origin = 0xfffb00c0, length = 0x000040
    mc_cgm_mmreg:           origin = 0xfffb0180, length = 0x000780
    mc_me_mmreg:            origin = 0xfffb8000, length = 0x004000
    siul2_mmreg:            origin = 0xfffc0000, length = 0x004000
    spi_0_mmreg:            origin = 0xfffcc000, length = 0x004000
    spi_2_mmreg:            origin = 0xfffd0000, length = 0x004000
    efmc_mmreg:             origin = 0xfffe0000, length = 0x004000

}

    /* Define linker symbols to identify the memory configuration regions to include in the
     * application checksum and the translated address that will be used while generating
     * the final application image
     */
    psy_start_app_region_0      = 0x01040000;
    psy_end_app_region_0        = 0x01040100;
    psy_translate_app_region_0  = 0x01040000;

    psy_start_app_region_1      = 0x01041000;
    psy_end_app_region_1        = 0x01041bd0;
    psy_translate_app_region_1  = 0x01041000;

    psy_start_app_region_2      = 0x01041fd0;
    psy_end_app_region_2        = 0x0127ffff;
    psy_translate_app_region_2  = 0x01041fd0;

    /**** Linker-placed variables ***********************************************/

    /* Place a variable at this RAM location to handle the extra values that cant be stored in
     * SPRG registers.
     */
    psy_sprg_ram                = ADDR(sprg_ram);
    psy_except_ram              = ADDR(exception_ram);

    /* Place various variables at specific memory locations. There are
     * no C definitions for these variables, only C declarations.
     */

    /* Processor memory mapped registers */
    psy_adc_0                   = ADDR(adc_0_mmreg);
    psy_adc_1                   = ADDR(adc_1_mmreg);
    psy_bctu_a                  = ADDR(bctu_a_mmreg);
    psy_emios_0                 = ADDR(emios_0_mmreg);
    psy_emios_1                 = ADDR(emios_1_mmreg);
    psy_mc_cgm                  = ADDR(mc_cgm_mmreg);
    psy_mc_me                   = ADDR(mc_me_mmreg);
    psy_pflash_a                = ADDR(pflash_mmreg);
    psy_plldig                  = ADDR(plldig_mmreg);
    psy_siu                     = ADDR(siul2_mmreg);
    psy_intc                    = ADDR(intc_mmreg);
    psy_pit                     = ADDR(pit_mmreg);
    psy_flexcan_a               = ADDR(flexcan_0_mmreg);
    psy_flexcan_b               = ADDR(flexcan_1_mmreg);
    psy_flexcan_c               = ADDR(flexcan_2_mmreg);
    psy_flexcan_d               = ADDR(flexcan_3_mmreg);
    psy_flexcan_e               = ADDR(flexcan_4_mmreg);
    /* psy_flexcan_f               = ADDR(flexcan_5_mmreg); flexcan_f memory is used for sprg_ram */
    psy_flexcan_g               = ADDR(flexcan_6_mmreg);
    psy_flexcan_h               = ADDR(flexcan_7_mmreg);
    psy_fccu_a                  = ADDR(fccu_mmreg);
    psy_linflexd_a              = ADDR(linflexd_a_mmreg);
    psy_pbridge_a               = ADDR(pbridge_a_mmreg);
    psy_pbridge_b               = ADDR(pbridge_b_mmreg);
    psy_smpu_a                  = ADDR(smpu_a_mmreg);
    psy_sirc                    = ADDR(sirc_mmreg);
    psy_dspi_a                  = ADDR(dspi_0_mmreg);
    psy_dspi_b                  = ADDR(dspi_1_mmreg);
    psy_dspi_c                  = ADDR(dspi_2_mmreg);
    psy_dspi_d                  = ADDR(dspi_3_mmreg);
    psy_spi_e                   = ADDR(spi_0_mmreg);
    psy_spi_f                   = ADDR(spi_1_mmreg);
    psy_spi_g                   = ADDR(spi_2_mmreg);
    psy_spi_h                   = ADDR(spi_3_mmreg);
    psy_stm                     = ADDR(stm_0_mmreg);
    psy_swt_0                   = ADDR(swt_0_mmreg);
    psy_swt_hsm                 = ADDR(stm_hsm_mmreg);
    psy_axbs_a                  = ADDR(axbs_a_mmreg);
    psy_mc_rgm_a                = ADDR(mc_rgm_a_mmreg);
    psy_memu_0_a                = ADDR(memu_0_a_mmreg);
    psy_edma                    = ADDR(dma_0_mmreg);
    psy_edmamux_a               = ADDR(dmamux_0_mmreg);
    psy_edmamux_b               = ADDR(dmamux_1_mmreg);
    psy_c55fmc_a                = ADDR(efmc_mmreg);

    /* Define the internal Flash memory addressing */
    /*    16K UTEST Block */
    pfl_c55_utest_block_start     = 0x00400000;
    /*    16K BAF Block */
    pfl_c55_l1_baf_block_start    = 0x00404000;
    /*    64K HSM Blocks */
    pfl_c55_l7_hsm_block_start    = 0x00610000;
    pfl_c55_l9_hsm_block_start    = 0x00620000;
    /*    16K HSM Blocks */
    pfl_c55_h0_hsm_block_start    = 0x00F80000;
    pfl_c55_h1_hsm_block_start    = 0x00F84000;
    /*    16K Flash Blocks */
    pfl_c55_l0_block_start    = 0x00f8c000; /* boot_bh_flash */
    pfl_c55_m0_block_start    = pfl_c55_l0_block_start + 0x00004000;    /* PFS Partition 1 */
    pfl_c55_m1_block_start    = pfl_c55_l0_block_start + 0x00008000;
    pfl_c55_m2_block_start    = pfl_c55_l0_block_start + 0x0000C000;
    pfl_c55_m3_block_start    = pfl_c55_l0_block_start + 0x00010000;
    pfl_c55_m4_block_start    = pfl_c55_l0_block_start + 0x00014000;    /* PFS Partition 2 */
    pfl_c55_m5_block_start    = pfl_c55_l0_block_start + 0x00018000;
    pfl_c55_m6_block_start    = pfl_c55_l0_block_start + 0x0001C000;
    pfl_c55_m7_block_start    = pfl_c55_l0_block_start + 0x00020000;
    /*    32K Flash Blocks */
    pfl_c55_l2_block_start    = 0x00FC0000;                             /* PRG */
    pfl_c55_l3_block_start    = pfl_c55_l2_block_start + 0x00008000;
    pfl_c55_l4_block_start    = pfl_c55_l2_block_start + 0x00010000;    /* PREG */
    pfl_c55_l5_block_start    = pfl_c55_l2_block_start + 0x00018000;    /* unused */
    /*    64K Flash Blocks */
    pfl_c55_l6_block_start    = pfl_c55_l2_block_start + 0x00020000;    /* unused */
    pfl_c55_l8_block_start    = pfl_c55_l2_block_start + 0x00030000;    /* unused */
    /*    256K Flash Blocks */
    pfl_c55_f256k0_block_start    = 0x01000000;                                 /* Cal Flash */
    pfl_c55_f256k1_block_start    = pfl_c55_f256k0_block_start + 0x00040000;    /* App Flash */
    pfl_c55_f256k2_block_start    = pfl_c55_f256k0_block_start + 0x00080000;
    pfl_c55_f256k3_block_start    = pfl_c55_f256k0_block_start + 0x000C0000;
    pfl_c55_f256k4_block_start    = pfl_c55_f256k0_block_start + 0x00100000;
    pfl_c55_f256k5_block_start    = pfl_c55_f256k0_block_start + 0x00140000;
    pfl_c55_f256k6_block_start    = pfl_c55_f256k0_block_start + 0x00180000;
    pfl_c55_f256k7_block_start    = pfl_c55_f256k0_block_start + 0x001C0000;
    pfl_c55_f256k8_block_start    = pfl_c55_f256k0_block_start + 0x00200000;
    pfl_c55_f256k9_block_start    = pfl_c55_f256k0_block_start + 0x00240000;

/*
 *****************************************************************************
 *
 *  Project:        OpenECU
 *  Version:        $Id: mk_model_diab_ld.template 82365 2021-11-25 15:58:14Z cwartnaby $
 *  File:           $URL: https://aetius.ps.local/svn/OpenECU/development/platform/branches/cr28648-3.2.0-FS-r2021-2-rc2/targets/common_mpc5746d/mk_model_diab_ld.template $
 *  Description:    Linker file for the strategy application.
 *
 *  Copyright (C) 2016 Pi Innovo
 *  This document (program) contains proprietary information
 *  which is the property of Pi Innovo
 *  The contents of this document (program) must not be copied
 *  or disclosed to a third party without the prior agreement
 *  of an authorised officer of Pi Innovo
 *
 *  Notes:          None.
 *
 *****************************************************************************
 */

SECTIONS
{
        GROUP :
        {
                /* Allocate the first address of the internal Flash */
                pfl_c55_addr_start = .;
                /* Read-only section 0: boot and pfs */
                pccp_flash_addr_start_ro = .;

        } > boot_bh_flash

        GROUP :
        {
                /* Provide a link to the boot header */
                pbt_header = .;

        } > boot_header_flash

        GROUP :
        {
                pfs_start_flash_0 = .;

                . = ADDR(pfs_flash_0) + SIZEOF(pfs_flash_0) - 1;
                pfs_end_flash_0   = .;

        } > pfs_flash_0

        GROUP :
        {
                pfs_start_flash_1 = .;

                . = ADDR(pfs_flash_1) + SIZEOF(pfs_flash_1) - 1;
                pfs_end_flash_1   = .;
                pccp_flash_addr_end_ro = .;

        } > pfs_flash_1

        GROUP :
        {
                /* This is required by the boot module. */
                prg_header = .;

                /* Read-only section 1: prg and preg*/
                pccp_flash_addr_start_ro_1 = .;

        } > prg_header_flash

        GROUP :
        {
                pccp_shadow_a_addr_start_rw = .;
                preg_config_addr_start = .;

                . = ADDR(preg_flash) + SIZEOF(preg_flash) - 1;
                pccp_shadow_a_addr_end_rw = .;
                preg_config_addr_end = .;
                pccp_flash_addr_end_ro_1 = .;

        } > preg_flash

        GROUP :
        {

                /* Pull in the platform header */
                .text_app : { platform_diab_5_9_6_7.a["psc_header_*.o"](.text_vle) }

        } > app_header_flash

        GROUP :
        {
                /* Link in the exception handlers.
                 * The memory map aligns this on an appropriate boundary.
                 */
                pkn_start_excep_code  = .;
                psy_start_used_code = .;
                .text_app : { platform_diab_5_9_6_7.a["pkn_exception_traps_*.o"](.text_vle) }

        } > app_excep_flash

        GROUP :
        {
                /* Link in the interrupt handlers.
                 * The memory map aligns this on an appropriate boundary.
                 */
                pkn_start_isr_code  = .;
                .text_app : { platform_diab_5_9_6_7.a["pkn_interrupt_traps_*.o"](.text_vle) }

        } > app_isr_flash

        GROUP :
        {
                pfl_start_ram_code_e = .;
                . = ADDR(app_pfl_e_flash) + SIZEOF(app_pfl_e_flash);
                pfl_end_ram_code_e = .;

        } > app_pfl_e_flash

        GROUP :
        {
                pfl_start_ram_code_p = .;
                . = ADDR(app_pfl_p_flash) + SIZEOF(app_pfl_p_flash);
                pfl_end_ram_code_p = .;

        } > app_pfl_p_flash

        GROUP :
        {
            /* pem does some memory remapping, so we have to make sure its own
             * code and data is located somewhere it doesn't attempt to remap
             */
            .text_app : { platform_diab_5_9_6_7.a[pem_cal_ram.o](.text_vle) }

        } > app_pem_flash


        GROUP :
        {
            /* Declare first byte of internal Flash that can be reprogrammed */
            pccp_flash_addr_start_rw = .;
            tool_start_cal_header = .;
        } > cal_header_flash

        GROUP :
        {
            tool_start_cal_body = .;

        } > cal_flash

        GROUP :
        {
                /* Link in calibration header */
                psy_start_used_cal = .;
                pccp_cal_addr_start = .;

                .cal_sec LOAD(ADDR(cal_header_flash)) : { *(.cal_header_sec) }

        } > cal_header_flash_mirror

        GROUP :
        {
                /* Link in constant initialised variables */
                cal_sec_start = .;
                .cal_sec                    LOAD(ADDR(cal_flash))    : { *(.cal_sec) }
                cal_other_start = .;
                .cal_sec                    LOAD(ADDR(cal_flash) + (cal_other_start - cal_sec_start))          : { *(.other_sec) }
                cal_sdata2_start = .;
                .sdata2                     LOAD(ADDR(cal_flash) + (cal_sdata2_start - cal_sec_start))         : { *(.sdata2) }

                pnv_start_used_cal_adap = .;
                .cal_sec                    LOAD(ADDR(cal_flash) + (pnv_start_used_cal_adap - cal_sec_start))  : { *(.cal_adap) }  /* default data for pnv parameters */
                pnv_end_used_cal_adap = .;

                psy_end_used_cal = .;

                psy_start_free_cal = .;
                . = ADDR(cal_flash_mirror) + SIZEOF(cal_flash_mirror) - 1;
                psy_end_free_cal   = .;
                pccp_cal_addr_end  = .;

        } > cal_flash_mirror

        GROUP :
        {
                pfl_c55_reserved_addr_start = .;

                . = ADDR(reserved_flash) + SIZEOF(reserved_flash) - 1;
                pfl_c55_reserved_addr_end = .;

        } > reserved_flash

        GROUP :
        {
                /* Define the start of calibration RAM (may not be present on PCB). */
                pem_start_cal_ram = .;
                psc_ram_addr_start  = .;
                psy_start_used_ram  = .;
                pccp_ram_addr_start = .;

                . = ADDR(cal_ram) + SIZEOF(cal_ram) - 1;
                pem_end_cal_ram = .;
        } > cal_ram

        GROUP :
        {
                psc_last_sp         = .;

                /* Shared stack space here. If stack overflows,
                 * it will overflow into a non-mapped memory area,
                 * and the processor will raise a checkstop.
                 */
                .bss : { *(.bss_stack) }

                /* Create initial address for application stack.
                 */
                psc_initial_sp = .;

                /* Import initialised variables. These get copied from
                 * read-only memory to RAM at startup. The LOAD syntax
                 * is used to identify where the data will be copied to
                 * on startup.
                 */
                __diab_data_rw_start = .;
                .data LOAD(__diab_data_ro_start) : {}
                .sdata (DATA) LOAD(ADDR(.sdata) - ADDR(.data) + __diab_data_ro_start) : {}
                __diab_data_rw_end   = .;

                /* Place the PFL routines _as if_ they were in RAM,
                 * but actually store them in ROM. They are copied from ROM
                 * to RAM before use.
                 */

                pfl_ram_code_e_location = .;
                .text_app LOAD(pfl_start_ram_code_e) : { pfl_ssd_c55_vle_drv_erase.o(.text_vle) }
                . = pfl_ram_code_e_location + SIZEOF(app_pfl_e_flash);

                pfl_ram_code_p_location = .;
                .text_app LOAD(pfl_start_ram_code_p) : { pfl_ssd_c55_vle_drv_prog.o(.text_vle) }
                . = pfl_ram_code_p_location + SIZEOF(app_pfl_p_flash);

                /* Import variables to be initialised to zero at startup */
                __diab_bss_start = .;
                .sbss : { *(.sbss) }
                .bss : { *(.bss) }
                __diab_bss_end   = .;

                /* Import non-volatile adaptive variables.
                 *
                 * For this target, set the copy address to be the same as the
                 * actual RAM address, because on this target the copy does not occur
                 * but the symbol needs to be resolved.
                 */
                pnv_start_copy_fl_adap = .;
                pnv_start_used_adap = .;
                . += pnv_end_used_cal_adap - pnv_start_used_cal_adap;
                pnv_end_used_adap   = .;

                /* Import non-volatile diagnostic trouble code variables.
                 *
                 * For this target, set the copy address to be the same as the
                 * actual RAM address, because on this target the copy does not occur
                 * but the symbol needs to be resolved.
                 */
                pdtc_start_copy_fl_dtcs = .;
                pdtc_start_used_dtcs = .;
                .dtcs : { *(.dtcs) }
                pdtc_end_used_dtcs   = .;

                /* The rest is unused */
                psy_end_used_ram   = .;
                psy_start_free_ram = .;
                . = ADDR(data_ram) + SIZEOF(data_ram) - 1;
                psy_end_free_ram   = .;
                psc_ram_addr_end  = .;
                pccp_ram_addr_end  = .;

        } > data_ram

        /* The LOAD directives for code-to-be-run-out-of-RAM (psc_start_ram_code,
         * pfl_start_ram_code_e and pfl_start_ram_code_p) only seem to work if the
         * app_code_flash group below comes after the data_ram group above.
         */
        GROUP :
        {
                /* Insert all functions here which need to be placed explicitly */
                /* APP_CODE_FLASH_INSERT */
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


                /* Link in all remaining functions. */
                .text_app : { *(.text_vle) }

                /* Create label to copy initialised variables from during
                 * startup. Although not explicit here, the linker places
                 * the initialisation data at this address so this must
                 * be the last item in the group.
                 */
                __diab_data_ro_start = .;

        } > app_code_flash

        GROUP :
        {
                /* Move to the end of this flash region and label it as required.
                 * This is no longer included in the app_code_flash group itself,
                 * because the ADDR + SIZEOF trick fails when the data_ram group
                 * is put in front of the app_code_flash group.
                 */
                pfl_c55_addr_end     = .;
                pccp_flash_addr_end_rw = .;
                psy_end_free_code    = .;

        } > app_code_flash_end

}

/* Define the size of SRAM to initialise, divided by the size of each write
 * (written as 4 bytes * 32 registers at a time).
 */
psc_ram_mword_size  = 0x00040000 / 4 / 32; /* Init full internal RAM even if some reserved for cals */

/* Can't do the necessary arithmetic in the section groups
 * above, so unfortunately bring the calculation out here.
 */
psy_end_used_code   = __diab_data_ro_start + (__diab_data_rw_end - __diab_data_rw_start);
psy_start_free_code = __diab_data_ro_start + (__diab_data_rw_end - __diab_data_rw_start);
psy_len_used_code   = psy_end_used_code - psy_start_used_code;
psy_len_used_cal    = psy_end_used_cal  - psy_start_used_cal;
psy_len_used_ram    = psy_end_used_ram  - psy_start_used_ram;
psy_len_total_code  = psy_end_free_code - psy_start_used_code + 1;
psy_len_total_cal   = psy_end_free_cal  - psy_start_used_cal  + 1;
psy_len_total_ram   = psy_end_free_ram  - psy_start_used_ram  + 1;
ASSERT (psy_end_used_code <= psy_end_free_code, "Total code size exceeds the space available")
