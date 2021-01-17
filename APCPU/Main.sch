<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <blockdef name="AP">
            <timestamp>2021-1-16T10:56:2</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2021-1-16T11:0:36</timestamp>
            <rect width="448" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="512" y="-556" height="24" />
            <line x2="576" y1="-544" y2="-544" x1="512" />
            <rect width="64" x="512" y="-492" height="24" />
            <line x2="576" y1="-480" y2="-480" x1="512" />
            <rect width="64" x="512" y="-428" height="24" />
            <line x2="576" y1="-416" y2="-416" x1="512" />
            <rect width="64" x="512" y="-364" height="24" />
            <line x2="576" y1="-352" y2="-352" x1="512" />
            <rect width="64" x="512" y="-300" height="24" />
            <line x2="576" y1="-288" y2="-288" x1="512" />
            <rect width="64" x="512" y="-236" height="24" />
            <line x2="576" y1="-224" y2="-224" x1="512" />
            <rect width="64" x="512" y="-172" height="24" />
            <line x2="576" y1="-160" y2="-160" x1="512" />
            <rect width="64" x="512" y="-108" height="24" />
            <line x2="576" y1="-96" y2="-96" x1="512" />
            <rect width="64" x="512" y="-44" height="24" />
            <line x2="576" y1="-32" y2="-32" x1="512" />
        </blockdef>
        <block symbolname="AP" name="XLXI_2">
            <blockpin name="clk" />
            <blockpin name="rst" />
            <blockpin name="APSet(3:0)" />
            <blockpin name="APSel(3:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_3">
            <blockpin name="clk" />
            <blockpin name="ValidMemData" />
            <blockpin name="A(31:0)" />
            <blockpin name="B(31:0)" />
            <blockpin name="ALU_Sel(7:0)" />
            <blockpin name="DecoderData(23:0)" />
            <blockpin name="StatusRegisterVelues(7:0)" />
            <blockpin name="SPAddr(31:0)" />
            <blockpin name="SetSP(31:0)" />
            <blockpin name="InDecSP(1:0)" />
            <blockpin name="MemIO(1:0)" />
            <blockpin name="ALUAddr(31:0)" />
            <blockpin name="MenagePC(2:0)" />
            <blockpin name="PCSet(31:0)" />
            <blockpin name="SetSR(7:0)" />
            <blockpin name="SetAP(3:0)" />
            <blockpin name="DataIO(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1408" y="1904" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1264" y="1264" name="XLXI_3" orien="R0">
        </instance>
    </sheet>
</drawing>