/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/Adam/GitHubLocallReopsitory/EngineerSoftCPU/APCPU/GPReg.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {3U, 0U};
static int ng3[] = {0, 0};
static int ng4[] = {1, 0};
static int ng5[] = {2, 0};
static int ng6[] = {3, 0};
static int ng7[] = {4, 0};
static int ng8[] = {5, 0};
static int ng9[] = {6, 0};
static int ng10[] = {7, 0};



static void Always_36_0(char *t0)
{
    char t6[8];
    char t31[8];
    char t32[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    int t39;
    char *t40;
    unsigned int t41;
    int t42;
    int t43;
    unsigned int t44;
    unsigned int t45;
    int t46;
    int t47;

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4288);
    *((int *)t2) = 1;
    t3 = (t0 + 4000);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);

LAB5:    xsi_set_current_line(38, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(49, ng0);

LAB24:    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(52, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    t4 = (t0 + 3048);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 3048);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = ((char*)((ng3)));
    xsi_vlog_generic_convert_array_indices(t6, t31, t7, t22, 2, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t39 = (!(t9));
    t30 = (t31 + 4);
    t10 = *((unsigned int *)t30);
    t42 = (!(t10));
    t43 = (t39 && t42);
    if (t43 == 1)
        goto LAB25;

LAB26:    xsi_set_current_line(53, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    t4 = (t0 + 3048);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 3048);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = ((char*)((ng4)));
    xsi_vlog_generic_convert_array_indices(t6, t31, t7, t22, 2, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t39 = (!(t9));
    t30 = (t31 + 4);
    t10 = *((unsigned int *)t30);
    t42 = (!(t10));
    t43 = (t39 && t42);
    if (t43 == 1)
        goto LAB27;

LAB28:    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    t4 = (t0 + 3048);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 3048);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = ((char*)((ng5)));
    xsi_vlog_generic_convert_array_indices(t6, t31, t7, t22, 2, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t39 = (!(t9));
    t30 = (t31 + 4);
    t10 = *((unsigned int *)t30);
    t42 = (!(t10));
    t43 = (t39 && t42);
    if (t43 == 1)
        goto LAB29;

LAB30:    xsi_set_current_line(55, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    t4 = (t0 + 3048);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 3048);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t6, t31, t7, t22, 2, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t39 = (!(t9));
    t30 = (t31 + 4);
    t10 = *((unsigned int *)t30);
    t42 = (!(t10));
    t43 = (t39 && t42);
    if (t43 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    t4 = (t0 + 3048);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 3048);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = ((char*)((ng7)));
    xsi_vlog_generic_convert_array_indices(t6, t31, t7, t22, 2, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t39 = (!(t9));
    t30 = (t31 + 4);
    t10 = *((unsigned int *)t30);
    t42 = (!(t10));
    t43 = (t39 && t42);
    if (t43 == 1)
        goto LAB33;

LAB34:    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    t4 = (t0 + 3048);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 3048);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = ((char*)((ng8)));
    xsi_vlog_generic_convert_array_indices(t6, t31, t7, t22, 2, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t39 = (!(t9));
    t30 = (t31 + 4);
    t10 = *((unsigned int *)t30);
    t42 = (!(t10));
    t43 = (t39 && t42);
    if (t43 == 1)
        goto LAB35;

LAB36:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    t4 = (t0 + 3048);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 3048);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = ((char*)((ng9)));
    xsi_vlog_generic_convert_array_indices(t6, t31, t7, t22, 2, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t39 = (!(t9));
    t30 = (t31 + 4);
    t10 = *((unsigned int *)t30);
    t42 = (!(t10));
    t43 = (t39 && t42);
    if (t43 == 1)
        goto LAB37;

LAB38:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    t4 = (t0 + 3048);
    t5 = (t4 + 72U);
    t7 = *((char **)t5);
    t8 = (t0 + 3048);
    t21 = (t8 + 64U);
    t22 = *((char **)t21);
    t28 = ((char*)((ng10)));
    xsi_vlog_generic_convert_array_indices(t6, t31, t7, t22, 2, 1, t28, 32, 1);
    t29 = (t6 + 4);
    t9 = *((unsigned int *)t29);
    t39 = (!(t9));
    t30 = (t31 + 4);
    t10 = *((unsigned int *)t30);
    t42 = (!(t10));
    t43 = (t39 && t42);
    if (t43 == 1)
        goto LAB39;

LAB40:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(39, ng0);

LAB13:    xsi_set_current_line(40, ng0);
    t28 = (t0 + 2168U);
    t29 = *((char **)t28);
    t28 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t28, t29, 0, 0, 1, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3048);
    t7 = (t5 + 72U);
    t8 = *((char **)t7);
    t21 = (t0 + 3048);
    t22 = (t21 + 64U);
    t28 = *((char **)t22);
    t29 = (t0 + 1368U);
    t30 = *((char **)t29);
    xsi_vlog_generic_get_array_select_value(t6, 32, t4, t8, t28, 2, 1, t30, 3, 2);
    t29 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t29, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3048);
    t7 = (t5 + 72U);
    t8 = *((char **)t7);
    t21 = (t0 + 3048);
    t22 = (t21 + 64U);
    t28 = *((char **)t22);
    t29 = (t0 + 1528U);
    t30 = *((char **)t29);
    xsi_vlog_generic_get_array_select_value(t6, 32, t4, t8, t28, 2, 1, t30, 3, 2);
    t29 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t29, t6, 0, 0, 32, 0LL);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t9 = *((unsigned int *)t3);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t4);
    t13 = *((unsigned int *)t5);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB17;

LAB14:    if (t18 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t6) = 1;

LAB17:    t8 = (t6 + 4);
    t23 = *((unsigned int *)t8);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB18;

LAB19:
LAB20:    goto LAB12;

LAB16:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(44, ng0);

LAB21:    xsi_set_current_line(45, ng0);
    t21 = (t0 + 2008U);
    t22 = *((char **)t21);
    t21 = (t0 + 3048);
    t28 = (t0 + 3048);
    t29 = (t28 + 72U);
    t30 = *((char **)t29);
    t33 = (t0 + 3048);
    t34 = (t33 + 64U);
    t35 = *((char **)t34);
    t36 = (t0 + 1688U);
    t37 = *((char **)t36);
    xsi_vlog_generic_convert_array_indices(t31, t32, t30, t35, 2, 1, t37, 3, 2);
    t36 = (t31 + 4);
    t38 = *((unsigned int *)t36);
    t39 = (!(t38));
    t40 = (t32 + 4);
    t41 = *((unsigned int *)t40);
    t42 = (!(t41));
    t43 = (t39 && t42);
    if (t43 == 1)
        goto LAB22;

LAB23:    goto LAB20;

LAB22:    t44 = *((unsigned int *)t31);
    t45 = *((unsigned int *)t32);
    t46 = (t44 - t45);
    t47 = (t46 + 1);
    xsi_vlogvar_wait_assign_value(t21, t22, 0, *((unsigned int *)t32), t47, 0LL);
    goto LAB23;

LAB25:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t31);
    t46 = (t11 - t12);
    t47 = (t46 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t31), t47, 0LL);
    goto LAB26;

LAB27:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t31);
    t46 = (t11 - t12);
    t47 = (t46 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t31), t47, 0LL);
    goto LAB28;

LAB29:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t31);
    t46 = (t11 - t12);
    t47 = (t46 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t31), t47, 0LL);
    goto LAB30;

LAB31:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t31);
    t46 = (t11 - t12);
    t47 = (t46 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t31), t47, 0LL);
    goto LAB32;

LAB33:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t31);
    t46 = (t11 - t12);
    t47 = (t46 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t31), t47, 0LL);
    goto LAB34;

LAB35:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t31);
    t46 = (t11 - t12);
    t47 = (t46 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t31), t47, 0LL);
    goto LAB36;

LAB37:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t31);
    t46 = (t11 - t12);
    t47 = (t46 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t31), t47, 0LL);
    goto LAB38;

LAB39:    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t31);
    t46 = (t11 - t12);
    t47 = (t46 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t31), t47, 0LL);
    goto LAB40;

}


extern void work_m_00000000001686137507_1297782092_init()
{
	static char *pe[] = {(void *)Always_36_0};
	xsi_register_didat("work_m_00000000001686137507_1297782092", "isim/MainCPU_MainCPU_sch_tb_isim_beh.exe.sim/work/m_00000000001686137507_1297782092.didat");
	xsi_register_executes(pe);
}