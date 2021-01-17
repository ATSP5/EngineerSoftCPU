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
static const char *ng0 = "E:/Adam/GitHubLocallReopsitory/EngineerSoftCPU/APCPU/Decoder.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {255U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {5U, 0U};
static unsigned int ng6[] = {6U, 0U};
static unsigned int ng7[] = {9U, 0U};
static unsigned int ng8[] = {11U, 0U};
static unsigned int ng9[] = {23U, 0U};
static unsigned int ng10[] = {24U, 0U};
static unsigned int ng11[] = {26U, 0U};
static unsigned int ng12[] = {27U, 0U};
static unsigned int ng13[] = {28U, 0U};
static unsigned int ng14[] = {29U, 0U};
static unsigned int ng15[] = {30U, 0U};
static unsigned int ng16[] = {33U, 0U};
static unsigned int ng17[] = {37U, 0U};
static unsigned int ng18[] = {40U, 0U};
static unsigned int ng19[] = {41U, 0U};
static unsigned int ng20[] = {3U, 0U};
static unsigned int ng21[] = {4U, 0U};
static unsigned int ng22[] = {7U, 0U};
static unsigned int ng23[] = {8U, 0U};
static unsigned int ng24[] = {10U, 0U};
static unsigned int ng25[] = {12U, 0U};
static unsigned int ng26[] = {31U, 0U};
static unsigned int ng27[] = {32U, 0U};
static unsigned int ng28[] = {39U, 0U};
static unsigned int ng29[] = {42U, 0U};
static unsigned int ng30[] = {44U, 0U};
static unsigned int ng31[] = {45U, 0U};
static unsigned int ng32[] = {48U, 0U};
static unsigned int ng33[] = {13U, 0U};
static unsigned int ng34[] = {14U, 0U};
static unsigned int ng35[] = {15U, 0U};
static unsigned int ng36[] = {16U, 0U};
static unsigned int ng37[] = {17U, 0U};
static unsigned int ng38[] = {18U, 0U};
static unsigned int ng39[] = {19U, 0U};
static unsigned int ng40[] = {20U, 0U};
static unsigned int ng41[] = {21U, 0U};
static unsigned int ng42[] = {22U, 0U};
static unsigned int ng43[] = {38U, 0U};
static unsigned int ng44[] = {25U, 0U};
static unsigned int ng45[] = {34U, 0U};
static unsigned int ng46[] = {35U, 0U};
static unsigned int ng47[] = {46U, 0U};
static unsigned int ng48[] = {36U, 0U};
static unsigned int ng49[] = {49U, 0U};



static void Always_31_0(char *t0)
{
    char t6[8];
    char t28[8];
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
    char *t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    int t39;
    int t40;
    int t41;
    int t42;
    int t43;
    int t44;
    int t45;
    int t46;
    int t47;
    int t48;
    int t49;
    int t50;
    char *t51;
    int t52;
    char *t53;
    int t54;
    char *t55;
    int t56;
    char *t57;
    int t58;
    char *t59;
    int t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3808);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);

LAB5:    xsi_set_current_line(33, ng0);
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

LAB11:    xsi_set_current_line(79, ng0);

LAB120:    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(81, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 24, 0LL);

LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(34, ng0);

LAB13:    xsi_set_current_line(35, ng0);
    t29 = (t0 + 1368U);
    t30 = *((char **)t29);
    memset(t28, 0, 8);
    t29 = (t28 + 4);
    t31 = (t30 + 4);
    t32 = *((unsigned int *)t30);
    t33 = (t32 >> 0);
    *((unsigned int *)t28) = t33;
    t34 = *((unsigned int *)t31);
    t35 = (t34 >> 0);
    *((unsigned int *)t29) = t35;
    t36 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t36 & 255U);
    t37 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t37 & 255U);
    t38 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t38, t28, 0, 0, 8, 0LL);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 0);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);

LAB14:    t5 = ((char*)((ng2)));
    t39 = xsi_vlog_unsigned_case_compare(t6, 8, t5, 8);
    if (t39 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng3)));
    t39 = xsi_vlog_unsigned_case_compare(t6, 8, t2, 8);
    if (t39 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng4)));
    t39 = xsi_vlog_unsigned_case_compare(t6, 8, t2, 8);
    if (t39 == 1)
        goto LAB19;

LAB20:    t3 = ((char*)((ng5)));
    t40 = xsi_vlog_unsigned_case_compare(t6, 8, t3, 8);
    if (t40 == 1)
        goto LAB21;

LAB22:    t4 = ((char*)((ng6)));
    t41 = xsi_vlog_unsigned_case_compare(t6, 8, t4, 8);
    if (t41 == 1)
        goto LAB23;

LAB24:    t5 = ((char*)((ng7)));
    t42 = xsi_vlog_unsigned_case_compare(t6, 8, t5, 8);
    if (t42 == 1)
        goto LAB25;

LAB26:    t7 = ((char*)((ng8)));
    t43 = xsi_vlog_unsigned_case_compare(t6, 8, t7, 8);
    if (t43 == 1)
        goto LAB27;

LAB28:    t8 = ((char*)((ng9)));
    t44 = xsi_vlog_unsigned_case_compare(t6, 8, t8, 8);
    if (t44 == 1)
        goto LAB29;

LAB30:    t21 = ((char*)((ng10)));
    t45 = xsi_vlog_unsigned_case_compare(t6, 8, t21, 8);
    if (t45 == 1)
        goto LAB31;

LAB32:    t22 = ((char*)((ng11)));
    t46 = xsi_vlog_unsigned_case_compare(t6, 8, t22, 8);
    if (t46 == 1)
        goto LAB33;

LAB34:    t29 = ((char*)((ng12)));
    t47 = xsi_vlog_unsigned_case_compare(t6, 8, t29, 8);
    if (t47 == 1)
        goto LAB35;

LAB36:    t30 = ((char*)((ng13)));
    t48 = xsi_vlog_unsigned_case_compare(t6, 8, t30, 8);
    if (t48 == 1)
        goto LAB37;

LAB38:    t31 = ((char*)((ng14)));
    t49 = xsi_vlog_unsigned_case_compare(t6, 8, t31, 8);
    if (t49 == 1)
        goto LAB39;

LAB40:    t38 = ((char*)((ng15)));
    t50 = xsi_vlog_unsigned_case_compare(t6, 8, t38, 8);
    if (t50 == 1)
        goto LAB41;

LAB42:    t51 = ((char*)((ng16)));
    t52 = xsi_vlog_unsigned_case_compare(t6, 8, t51, 8);
    if (t52 == 1)
        goto LAB43;

LAB44:    t53 = ((char*)((ng17)));
    t54 = xsi_vlog_unsigned_case_compare(t6, 8, t53, 8);
    if (t54 == 1)
        goto LAB45;

LAB46:    t55 = ((char*)((ng18)));
    t56 = xsi_vlog_unsigned_case_compare(t6, 8, t55, 8);
    if (t56 == 1)
        goto LAB47;

LAB48:    t57 = ((char*)((ng19)));
    t58 = xsi_vlog_unsigned_case_compare(t6, 8, t57, 8);
    if (t58 == 1)
        goto LAB49;

LAB50:    t59 = ((char*)((ng20)));
    t60 = xsi_vlog_unsigned_case_compare(t6, 8, t59, 8);
    if (t60 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng21)));
    t39 = xsi_vlog_unsigned_case_compare(t6, 8, t2, 8);
    if (t39 == 1)
        goto LAB53;

LAB54:    t3 = ((char*)((ng22)));
    t40 = xsi_vlog_unsigned_case_compare(t6, 8, t3, 8);
    if (t40 == 1)
        goto LAB55;

LAB56:    t4 = ((char*)((ng23)));
    t41 = xsi_vlog_unsigned_case_compare(t6, 8, t4, 8);
    if (t41 == 1)
        goto LAB57;

LAB58:    t5 = ((char*)((ng24)));
    t42 = xsi_vlog_unsigned_case_compare(t6, 8, t5, 8);
    if (t42 == 1)
        goto LAB59;

LAB60:    t7 = ((char*)((ng25)));
    t43 = xsi_vlog_unsigned_case_compare(t6, 8, t7, 8);
    if (t43 == 1)
        goto LAB61;

LAB62:    t8 = ((char*)((ng26)));
    t44 = xsi_vlog_unsigned_case_compare(t6, 8, t8, 8);
    if (t44 == 1)
        goto LAB63;

LAB64:    t21 = ((char*)((ng27)));
    t45 = xsi_vlog_unsigned_case_compare(t6, 8, t21, 8);
    if (t45 == 1)
        goto LAB65;

LAB66:    t22 = ((char*)((ng28)));
    t46 = xsi_vlog_unsigned_case_compare(t6, 8, t22, 8);
    if (t46 == 1)
        goto LAB67;

LAB68:    t29 = ((char*)((ng29)));
    t47 = xsi_vlog_unsigned_case_compare(t6, 8, t29, 8);
    if (t47 == 1)
        goto LAB69;

LAB70:    t30 = ((char*)((ng30)));
    t48 = xsi_vlog_unsigned_case_compare(t6, 8, t30, 8);
    if (t48 == 1)
        goto LAB71;

LAB72:    t31 = ((char*)((ng31)));
    t49 = xsi_vlog_unsigned_case_compare(t6, 8, t31, 8);
    if (t49 == 1)
        goto LAB73;

LAB74:    t38 = ((char*)((ng32)));
    t50 = xsi_vlog_unsigned_case_compare(t6, 8, t38, 8);
    if (t50 == 1)
        goto LAB75;

LAB76:    t51 = ((char*)((ng33)));
    t52 = xsi_vlog_unsigned_case_compare(t6, 8, t51, 8);
    if (t52 == 1)
        goto LAB77;

LAB78:    t2 = ((char*)((ng34)));
    t39 = xsi_vlog_unsigned_case_compare(t6, 8, t2, 8);
    if (t39 == 1)
        goto LAB79;

LAB80:    t3 = ((char*)((ng35)));
    t40 = xsi_vlog_unsigned_case_compare(t6, 8, t3, 8);
    if (t40 == 1)
        goto LAB81;

LAB82:    t4 = ((char*)((ng36)));
    t41 = xsi_vlog_unsigned_case_compare(t6, 8, t4, 8);
    if (t41 == 1)
        goto LAB83;

LAB84:    t5 = ((char*)((ng37)));
    t42 = xsi_vlog_unsigned_case_compare(t6, 8, t5, 8);
    if (t42 == 1)
        goto LAB85;

LAB86:    t2 = ((char*)((ng38)));
    t39 = xsi_vlog_unsigned_case_compare(t6, 8, t2, 8);
    if (t39 == 1)
        goto LAB87;

LAB88:    t3 = ((char*)((ng39)));
    t40 = xsi_vlog_unsigned_case_compare(t6, 8, t3, 8);
    if (t40 == 1)
        goto LAB89;

LAB90:    t4 = ((char*)((ng40)));
    t41 = xsi_vlog_unsigned_case_compare(t6, 8, t4, 8);
    if (t41 == 1)
        goto LAB91;

LAB92:    t5 = ((char*)((ng41)));
    t42 = xsi_vlog_unsigned_case_compare(t6, 8, t5, 8);
    if (t42 == 1)
        goto LAB93;

LAB94:    t7 = ((char*)((ng42)));
    t43 = xsi_vlog_unsigned_case_compare(t6, 8, t7, 8);
    if (t43 == 1)
        goto LAB95;

LAB96:    t8 = ((char*)((ng43)));
    t44 = xsi_vlog_unsigned_case_compare(t6, 8, t8, 8);
    if (t44 == 1)
        goto LAB97;

LAB98:    t21 = ((char*)((ng44)));
    t45 = xsi_vlog_unsigned_case_compare(t6, 8, t21, 8);
    if (t45 == 1)
        goto LAB99;

LAB100:    t2 = ((char*)((ng45)));
    t39 = xsi_vlog_unsigned_case_compare(t6, 8, t2, 8);
    if (t39 == 1)
        goto LAB101;

LAB102:    t3 = ((char*)((ng46)));
    t40 = xsi_vlog_unsigned_case_compare(t6, 8, t3, 8);
    if (t40 == 1)
        goto LAB103;

LAB104:    t2 = ((char*)((ng47)));
    t39 = xsi_vlog_unsigned_case_compare(t6, 8, t2, 8);
    if (t39 == 1)
        goto LAB105;

LAB106:    t3 = ((char*)((ng48)));
    t40 = xsi_vlog_unsigned_case_compare(t6, 8, t3, 8);
    if (t40 == 1)
        goto LAB107;

LAB108:    t2 = ((char*)((ng49)));
    t39 = xsi_vlog_unsigned_case_compare(t6, 8, t2, 8);
    if (t39 == 1)
        goto LAB109;

LAB110:
LAB111:    goto LAB12;

LAB15:    xsi_set_current_line(38, ng0);

LAB112:    goto LAB111;

LAB17:    xsi_set_current_line(41, ng0);

LAB113:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 1368U);
    t4 = *((char **)t3);
    memset(t28, 0, 8);
    t3 = (t28 + 4);
    t5 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 8);
    *((unsigned int *)t28) = t10;
    t11 = *((unsigned int *)t5);
    t12 = (t11 >> 8);
    *((unsigned int *)t3) = t12;
    t13 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t13 & 16777215U);
    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 16777215U);
    t7 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t7, t28, 0, 0, 24, 0LL);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 3, 0LL);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 3, 0LL);
    goto LAB111;

LAB19:    goto LAB17;

LAB21:    goto LAB17;

LAB23:    goto LAB17;

LAB25:    goto LAB17;

LAB27:    goto LAB17;

LAB29:    goto LAB17;

LAB31:    goto LAB17;

LAB33:    goto LAB17;

LAB35:    goto LAB17;

LAB37:    goto LAB17;

LAB39:    goto LAB17;

LAB41:    goto LAB17;

LAB43:    goto LAB17;

LAB45:    goto LAB17;

LAB47:    goto LAB17;

LAB49:    goto LAB17;

LAB51:    xsi_set_current_line(47, ng0);

LAB114:    xsi_set_current_line(48, ng0);
    t61 = (t0 + 1368U);
    t62 = *((char **)t61);
    memset(t28, 0, 8);
    t61 = (t28 + 4);
    t63 = (t62 + 4);
    t9 = *((unsigned int *)t62);
    t10 = (t9 >> 8);
    *((unsigned int *)t28) = t10;
    t11 = *((unsigned int *)t63);
    t12 = (t11 >> 8);
    *((unsigned int *)t61) = t12;
    t13 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t13 & 7U);
    t14 = *((unsigned int *)t61);
    *((unsigned int *)t61) = (t14 & 7U);
    t64 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t64, t28, 0, 0, 3, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t28, 0, 8);
    t2 = (t28 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 11);
    *((unsigned int *)t28) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 11);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t13 & 7U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 7U);
    t5 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t5, t28, 0, 0, 3, 0LL);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t28, 0, 8);
    t2 = (t28 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 14);
    *((unsigned int *)t28) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 14);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t13 & 7U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 7U);
    t5 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t5, t28, 0, 0, 3, 0LL);
    goto LAB111;

LAB53:    goto LAB51;

LAB55:    goto LAB51;

LAB57:    goto LAB51;

LAB59:    goto LAB51;

LAB61:    goto LAB51;

LAB63:    goto LAB51;

LAB65:    goto LAB51;

LAB67:    goto LAB51;

LAB69:    goto LAB51;

LAB71:    goto LAB51;

LAB73:    goto LAB51;

LAB75:    goto LAB51;

LAB77:    xsi_set_current_line(53, ng0);

LAB115:    xsi_set_current_line(54, ng0);
    t53 = (t0 + 1368U);
    t55 = *((char **)t53);
    memset(t28, 0, 8);
    t53 = (t28 + 4);
    t57 = (t55 + 4);
    t9 = *((unsigned int *)t55);
    t10 = (t9 >> 8);
    *((unsigned int *)t28) = t10;
    t11 = *((unsigned int *)t57);
    t12 = (t11 >> 8);
    *((unsigned int *)t53) = t12;
    t13 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t13 & 7U);
    t14 = *((unsigned int *)t53);
    *((unsigned int *)t53) = (t14 & 7U);
    t59 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t59, t28, 0, 0, 3, 0LL);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t28, 0, 8);
    t2 = (t28 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 11);
    *((unsigned int *)t28) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 11);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t13 & 63U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 63U);
    t5 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t5, t28, 0, 0, 24, 0LL);
    goto LAB111;

LAB79:    goto LAB77;

LAB81:    goto LAB77;

LAB83:    goto LAB77;

LAB85:    xsi_set_current_line(58, ng0);

LAB116:    xsi_set_current_line(59, ng0);
    t7 = (t0 + 1368U);
    t8 = *((char **)t7);
    memset(t28, 0, 8);
    t7 = (t28 + 4);
    t21 = (t8 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (t9 >> 8);
    *((unsigned int *)t28) = t10;
    t11 = *((unsigned int *)t21);
    t12 = (t11 >> 8);
    *((unsigned int *)t7) = t12;
    t13 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t13 & 7U);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 & 7U);
    t22 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t22, t28, 0, 0, 3, 0LL);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t28, 0, 8);
    t2 = (t28 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 11);
    *((unsigned int *)t28) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 11);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t13 & 7U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 7U);
    t5 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t5, t28, 0, 0, 3, 0LL);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t28, 0, 8);
    t2 = (t28 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 8);
    *((unsigned int *)t28) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 8);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t13 & 7U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 7U);
    t5 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t5, t28, 0, 0, 3, 0LL);
    goto LAB111;

LAB87:    goto LAB85;

LAB89:    goto LAB85;

LAB91:    goto LAB85;

LAB93:    goto LAB85;

LAB95:    goto LAB85;

LAB97:    goto LAB85;

LAB99:    xsi_set_current_line(64, ng0);

LAB117:    xsi_set_current_line(65, ng0);
    t22 = (t0 + 1368U);
    t29 = *((char **)t22);
    memset(t28, 0, 8);
    t22 = (t28 + 4);
    t30 = (t29 + 4);
    t9 = *((unsigned int *)t29);
    t10 = (t9 >> 8);
    *((unsigned int *)t28) = t10;
    t11 = *((unsigned int *)t30);
    t12 = (t11 >> 8);
    *((unsigned int *)t22) = t12;
    t13 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t13 & 7U);
    t14 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t14 & 7U);
    t31 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t31, t28, 0, 0, 3, 0LL);
    goto LAB111;

LAB101:    goto LAB99;

LAB103:    xsi_set_current_line(68, ng0);

LAB118:    xsi_set_current_line(69, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    memset(t28, 0, 8);
    t4 = (t28 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 8);
    *((unsigned int *)t28) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 8);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t13 & 7U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 7U);
    t8 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t8, t28, 0, 0, 3, 0LL);
    goto LAB111;

LAB105:    goto LAB103;

LAB107:    xsi_set_current_line(72, ng0);

LAB119:    xsi_set_current_line(73, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    memset(t28, 0, 8);
    t4 = (t28 + 4);
    t7 = (t5 + 4);
    t9 = *((unsigned int *)t5);
    t10 = (t9 >> 8);
    *((unsigned int *)t28) = t10;
    t11 = *((unsigned int *)t7);
    t12 = (t11 >> 8);
    *((unsigned int *)t4) = t12;
    t13 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t13 & 7U);
    t14 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t14 & 7U);
    t8 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t8, t28, 0, 0, 3, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t28, 0, 8);
    t2 = (t28 + 4);
    t4 = (t3 + 4);
    t9 = *((unsigned int *)t3);
    t10 = (t9 >> 11);
    *((unsigned int *)t28) = t10;
    t11 = *((unsigned int *)t4);
    t12 = (t11 >> 11);
    *((unsigned int *)t2) = t12;
    t13 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t13 & 7U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 7U);
    t5 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t5, t28, 0, 0, 3, 0LL);
    goto LAB111;

LAB109:    goto LAB107;

}


extern void work_m_00000000000791666768_2035480523_init()
{
	static char *pe[] = {(void *)Always_31_0};
	xsi_register_didat("work_m_00000000000791666768_2035480523", "isim/MainCPU_MainCPU_sch_tb_isim_beh.exe.sim/work/m_00000000000791666768_2035480523.didat");
	xsi_register_executes(pe);
}
