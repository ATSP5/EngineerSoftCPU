<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="B(31:0)" />
        <signal name="ALUSel(7:0)" />
        <signal name="SelX(2:0)" />
        <signal name="SelY(2:0)" />
        <signal name="SelZ(2:0)" />
        <signal name="XLXN_13(31:0)" />
        <signal name="SRSet(7:0)" />
        <signal name="APSet(3:0)" />
        <signal name="XLXN_16(7:0)" />
        <signal name="XLXN_17(31:0)" />
        <signal name="XLXN_18(1:0)" />
        <signal name="XLXN_20(31:0)" />
        <signal name="ValidMemoryData" />
        <signal name="InstructionBus(31:0)" />
        <signal name="PCAddressBus(31:0)" />
        <signal name="GetInstruction" />
        <signal name="MemIO(1:0)" />
        <signal name="InternalDataBus(31:0)" />
        <signal name="ExternalAddressBus(31:0)" />
        <signal name="ExternalDataBus(31:0)" />
        <signal name="ExternalDrive(2:0)" />
        <signal name="ALUAddressBus(31:0)" />
        <signal name="APSel(2:0)" />
        <signal name="PCDrive(2:0)" />
        <signal name="A(31:0)" />
        <signal name="DecoderData(23:0)" />
        <signal name="ALUrst" />
        <signal name="XLXN_267" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="ExternalExchangeReady" />
        <signal name="XLXN_278" />
        <signal name="XLXN_279" />
        <signal name="XLXN_280" />
        <signal name="XLXN_282" />
        <signal name="XLXN_284" />
        <port polarity="Output" name="B(31:0)" />
        <port polarity="Output" name="ALUSel(7:0)" />
        <port polarity="Output" name="SelX(2:0)" />
        <port polarity="Output" name="SelY(2:0)" />
        <port polarity="Output" name="SelZ(2:0)" />
        <port polarity="Output" name="SRSet(7:0)" />
        <port polarity="Output" name="APSet(3:0)" />
        <port polarity="Output" name="ValidMemoryData" />
        <port polarity="Output" name="InstructionBus(31:0)" />
        <port polarity="Output" name="PCAddressBus(31:0)" />
        <port polarity="Output" name="GetInstruction" />
        <port polarity="Output" name="MemIO(1:0)" />
        <port polarity="BiDirectional" name="InternalDataBus(31:0)" />
        <port polarity="BiDirectional" name="ExternalAddressBus(31:0)" />
        <port polarity="BiDirectional" name="ExternalDataBus(31:0)" />
        <port polarity="Output" name="ExternalDrive(2:0)" />
        <port polarity="Output" name="ALUAddressBus(31:0)" />
        <port polarity="Output" name="APSel(2:0)" />
        <port polarity="Output" name="PCDrive(2:0)" />
        <port polarity="Output" name="A(31:0)" />
        <port polarity="Output" name="DecoderData(23:0)" />
        <port polarity="Output" name="ALUrst" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="ExternalExchangeReady" />
        <port polarity="Output" name="XLXN_280" />
        <blockdef name="ALU">
            <timestamp>2021-1-18T15:10:5</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
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
            <rect width="448" x="64" y="-576" height="640" />
        </blockdef>
        <blockdef name="AP">
            <timestamp>2021-1-18T15:22:42</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Decoder">
            <timestamp>2021-1-19T16:42:3</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="544" y1="32" y2="32" x1="480" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="480" y="-300" height="24" />
            <line x2="544" y1="-288" y2="-288" x1="480" />
            <rect width="64" x="480" y="-236" height="24" />
            <line x2="544" y1="-224" y2="-224" x1="480" />
            <rect width="64" x="480" y="-172" height="24" />
            <line x2="544" y1="-160" y2="-160" x1="480" />
            <rect width="64" x="480" y="-108" height="24" />
            <line x2="544" y1="-96" y2="-96" x1="480" />
            <rect width="64" x="480" y="-44" height="24" />
            <line x2="544" y1="-32" y2="-32" x1="480" />
            <rect width="416" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="GPReg">
            <timestamp>2021-1-19T16:42:11</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-428" height="24" />
            <line x2="432" y1="-416" y2="-416" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="304" x="64" y="-448" height="512" />
        </blockdef>
        <blockdef name="SP">
            <timestamp>2021-1-18T15:10:34</timestamp>
            <rect width="320" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
        </blockdef>
        <blockdef name="SR">
            <timestamp>2021-1-18T15:10:41</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="PC">
            <timestamp>2021-1-18T15:10:53</timestamp>
            <rect width="304" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-224" y2="-224" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <blockdef name="MemoryController">
            <timestamp>2021-1-19T16:41:54</timestamp>
            <line x2="656" y1="32" y2="32" x1="592" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="656" y1="-416" y2="-416" x1="592" />
            <rect width="64" x="592" y="-364" height="24" />
            <line x2="656" y1="-352" y2="-352" x1="592" />
            <rect width="64" x="592" y="-300" height="24" />
            <line x2="656" y1="-288" y2="-288" x1="592" />
            <rect width="64" x="592" y="-236" height="24" />
            <line x2="656" y1="-224" y2="-224" x1="592" />
            <rect width="64" x="592" y="-172" height="24" />
            <line x2="656" y1="-160" y2="-160" x1="592" />
            <rect width="64" x="592" y="-108" height="24" />
            <line x2="656" y1="-96" y2="-96" x1="592" />
            <rect width="528" x="64" y="-448" height="512" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="ALU" name="XLXI_6">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ALUrst" name="rst" />
            <blockpin signalname="ValidMemoryData" name="ValidMemData" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="ALUSel(7:0)" name="ALU_Sel(7:0)" />
            <blockpin signalname="DecoderData(23:0)" name="DecoderData(23:0)" />
            <blockpin signalname="XLXN_16(7:0)" name="StatusRegisterVelues(7:0)" />
            <blockpin signalname="XLXN_20(31:0)" name="SPAddr(31:0)" />
            <blockpin signalname="InternalDataBus(31:0)" name="DataIO(31:0)" />
            <blockpin signalname="XLXN_17(31:0)" name="SetSP(31:0)" />
            <blockpin signalname="XLXN_18(1:0)" name="InDecSP(1:0)" />
            <blockpin signalname="MemIO(1:0)" name="MemIO(1:0)" />
            <blockpin signalname="ALUAddressBus(31:0)" name="ALUAddr(31:0)" />
            <blockpin signalname="PCDrive(2:0)" name="MenagePC(2:0)" />
            <blockpin signalname="XLXN_13(31:0)" name="PCSet(31:0)" />
            <blockpin signalname="SRSet(7:0)" name="SetSR(7:0)" />
            <blockpin signalname="APSet(3:0)" name="SetAP(3:0)" />
        </block>
        <block symbolname="GPReg" name="XLXI_9">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SelX(2:0)" name="SelX(2:0)" />
            <blockpin signalname="SelY(2:0)" name="SelY(2:0)" />
            <blockpin signalname="SelZ(2:0)" name="SelZ(2:0)" />
            <blockpin signalname="MemIO(1:0)" name="MemInstruction(1:0)" />
            <blockpin signalname="InternalDataBus(31:0)" name="MemData(31:0)" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="XLXN_279" name="DataACKIn" />
            <blockpin signalname="XLXN_280" name="DataACKOut" />
        </block>
        <block symbolname="SP" name="XLXI_10">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_17(31:0)" name="SPSet(31:0)" />
            <blockpin signalname="XLXN_18(1:0)" name="SPDrive(1:0)" />
            <blockpin signalname="XLXN_20(31:0)" name="SPOutput(31:0)" />
        </block>
        <block symbolname="SR" name="XLXI_11">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SRSet(7:0)" name="SRSet(7:0)" />
            <blockpin signalname="XLXN_16(7:0)" name="SRData(7:0)" />
        </block>
        <block symbolname="PC" name="XLXI_12">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_13(31:0)" name="PCSet(31:0)" />
            <blockpin signalname="PCDrive(2:0)" name="PCDrive(2:0)" />
            <blockpin signalname="GetInstruction" name="GetInstruction" />
            <blockpin signalname="PCAddressBus(31:0)" name="PCAddr(31:0)" />
        </block>
        <block symbolname="MemoryController" name="XLXI_13">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="GetInstruction" name="PCGetNewInstruction" />
            <blockpin signalname="ExternalExchangeReady" name="ExternalExchangeReady" />
            <blockpin signalname="PCAddressBus(31:0)" name="PCAddressBus(31:0)" />
            <blockpin signalname="ALUAddressBus(31:0)" name="ALUAddressBus(31:0)" />
            <blockpin signalname="MemIO(1:0)" name="MemoryIOBus(1:0)" />
            <blockpin signalname="ExternalDataBus(31:0)" name="ExternalDataBus(31:0)" />
            <blockpin signalname="ExternalAddressBus(31:0)" name="ExternalAddressBus(31:0)" />
            <blockpin signalname="InternalDataBus(31:0)" name="InternalDataBus(31:0)" />
            <blockpin signalname="ValidMemoryData" name="ValidMemoryData" />
            <blockpin signalname="InstructionBus(31:0)" name="InstructionBus(31:0)" />
            <blockpin signalname="ExternalDrive(2:0)" name="ExternalDrive(2:0)" />
            <blockpin signalname="XLXN_278" name="ExchangeACK" />
        </block>
        <block symbolname="AP" name="XLXI_7">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="APSet(3:0)" name="APSet(3:0)" />
            <blockpin signalname="APSel(2:0)" name="APSel(2:0)" />
        </block>
        <block symbolname="Decoder" name="XLXI_8">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="InstructionBus(31:0)" name="InstructionBus(31:0)" />
            <blockpin signalname="APSel(2:0)" name="APSelBus(2:0)" />
            <blockpin signalname="ALUSel(7:0)" name="AluCode(7:0)" />
            <blockpin signalname="DecoderData(23:0)" name="DecoderData(23:0)" />
            <blockpin signalname="SelX(2:0)" name="RegSelX(2:0)" />
            <blockpin signalname="SelY(2:0)" name="RegSelY(2:0)" />
            <blockpin signalname="SelZ(2:0)" name="RegSelZ(2:0)" />
            <blockpin signalname="XLXN_278" name="DataACKIn" />
            <blockpin signalname="XLXN_279" name="DataACKOut" />
        </block>
        <block symbolname="inv" name="XLXI_55">
            <blockpin signalname="XLXN_280" name="I" />
            <blockpin signalname="XLXN_284" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_57">
            <blockpin signalname="GetInstruction" name="I0" />
            <blockpin signalname="XLXN_284" name="I1" />
            <blockpin signalname="rst" name="I2" />
            <blockpin signalname="ExternalExchangeReady" name="I3" />
            <blockpin signalname="ALUrst" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1824" y="1680" name="XLXI_6" orien="R0">
        </instance>
        <instance x="928" y="1792" name="XLXI_9" orien="R0">
        </instance>
        <instance x="2720" y="1232" name="XLXI_10" orien="R0">
        </instance>
        <instance x="2752" y="2192" name="XLXI_11" orien="R0">
        </instance>
        <instance x="2752" y="1568" name="XLXI_12" orien="R0">
        </instance>
        <branch name="B(31:0)">
            <wire x2="1456" y1="1760" y2="1760" x1="1360" />
            <wire x2="1552" y1="1760" y2="1760" x1="1456" />
            <wire x2="1456" y1="1328" y2="1760" x1="1456" />
            <wire x2="1824" y1="1328" y2="1328" x1="1456" />
        </branch>
        <branch name="ALUSel(7:0)">
            <wire x2="1440" y1="2016" y2="2016" x1="1104" />
            <wire x2="1568" y1="2016" y2="2016" x1="1440" />
            <wire x2="1440" y1="1392" y2="2016" x1="1440" />
            <wire x2="1824" y1="1392" y2="1392" x1="1440" />
        </branch>
        <branch name="SelX(2:0)">
            <wire x2="1392" y1="1168" y2="1168" x1="912" />
            <wire x2="1392" y1="1168" y2="2144" x1="1392" />
            <wire x2="1584" y1="2144" y2="2144" x1="1392" />
            <wire x2="912" y1="1168" y2="1504" x1="912" />
            <wire x2="928" y1="1504" y2="1504" x1="912" />
            <wire x2="1392" y1="2144" y2="2144" x1="1104" />
        </branch>
        <branch name="SelZ(2:0)">
            <wire x2="928" y1="1632" y2="1632" x1="912" />
            <wire x2="912" y1="1632" y2="1904" x1="912" />
            <wire x2="1168" y1="1904" y2="1904" x1="912" />
            <wire x2="1168" y1="1904" y2="2272" x1="1168" />
            <wire x2="1232" y1="2272" y2="2272" x1="1168" />
            <wire x2="1168" y1="2272" y2="2272" x1="1104" />
        </branch>
        <branch name="XLXN_13(31:0)">
            <wire x2="2576" y1="1456" y2="1456" x1="2400" />
            <wire x2="2576" y1="1456" y2="1472" x1="2576" />
            <wire x2="2752" y1="1472" y2="1472" x1="2576" />
        </branch>
        <branch name="SRSet(7:0)">
            <wire x2="2576" y1="1520" y2="1520" x1="2400" />
            <wire x2="2576" y1="1520" y2="2160" x1="2576" />
            <wire x2="2752" y1="2160" y2="2160" x1="2576" />
            <wire x2="2576" y1="2160" y2="2256" x1="2576" />
            <wire x2="2624" y1="2256" y2="2256" x1="2576" />
        </branch>
        <branch name="APSet(3:0)">
            <wire x2="2464" y1="2080" y2="2080" x1="2032" />
            <wire x2="2032" y1="2080" y2="2176" x1="2032" />
            <wire x2="2064" y1="2176" y2="2176" x1="2032" />
            <wire x2="2592" y1="1584" y2="1584" x1="2400" />
            <wire x2="2592" y1="1584" y2="1712" x1="2592" />
            <wire x2="2592" y1="1712" y2="1808" x1="2592" />
            <wire x2="2784" y1="1808" y2="1808" x1="2592" />
            <wire x2="2464" y1="1712" y2="2080" x1="2464" />
            <wire x2="2592" y1="1712" y2="1712" x1="2464" />
        </branch>
        <branch name="XLXN_16(7:0)">
            <wire x2="3264" y1="896" y2="896" x1="1776" />
            <wire x2="3264" y1="896" y2="2032" x1="3264" />
            <wire x2="1776" y1="896" y2="1520" x1="1776" />
            <wire x2="1824" y1="1520" y2="1520" x1="1776" />
            <wire x2="3264" y1="2032" y2="2032" x1="3136" />
        </branch>
        <branch name="XLXN_17(31:0)">
            <wire x2="2720" y1="1136" y2="1136" x1="2400" />
        </branch>
        <branch name="XLXN_18(1:0)">
            <wire x2="2720" y1="1200" y2="1200" x1="2400" />
        </branch>
        <branch name="XLXN_20(31:0)">
            <wire x2="1824" y1="1584" y2="1584" x1="1776" />
            <wire x2="1776" y1="1584" y2="1920" x1="1776" />
            <wire x2="3232" y1="1920" y2="1920" x1="1776" />
            <wire x2="3232" y1="1008" y2="1008" x1="3168" />
            <wire x2="3232" y1="1008" y2="1920" x1="3232" />
        </branch>
        <branch name="ValidMemoryData">
            <wire x2="1792" y1="1056" y2="1200" x1="1792" />
            <wire x2="1824" y1="1200" y2="1200" x1="1792" />
            <wire x2="1920" y1="1056" y2="1056" x1="1792" />
            <wire x2="1920" y1="304" y2="304" x1="1840" />
            <wire x2="1920" y1="304" y2="368" x1="1920" />
            <wire x2="1920" y1="368" y2="1056" x1="1920" />
            <wire x2="2016" y1="368" y2="368" x1="1920" />
        </branch>
        <branch name="InstructionBus(31:0)">
            <wire x2="1856" y1="192" y2="192" x1="448" />
            <wire x2="1856" y1="192" y2="256" x1="1856" />
            <wire x2="1856" y1="256" y2="368" x1="1856" />
            <wire x2="2016" y1="256" y2="256" x1="1856" />
            <wire x2="448" y1="192" y2="2176" x1="448" />
            <wire x2="560" y1="2176" y2="2176" x1="448" />
            <wire x2="1856" y1="368" y2="368" x1="1840" />
        </branch>
        <branch name="PCAddressBus(31:0)">
            <wire x2="672" y1="560" y2="560" x1="368" />
            <wire x2="1184" y1="560" y2="560" x1="672" />
            <wire x2="672" y1="560" y2="1856" x1="672" />
            <wire x2="3200" y1="1856" y2="1856" x1="672" />
            <wire x2="3200" y1="1536" y2="1536" x1="3184" />
            <wire x2="3200" y1="1536" y2="1856" x1="3200" />
        </branch>
        <instance x="1184" y="720" name="XLXI_13" orien="R0">
        </instance>
        <branch name="GetInstruction">
            <wire x2="1120" y1="800" y2="800" x1="1056" />
            <wire x2="1680" y1="800" y2="800" x1="1120" />
            <wire x2="3200" y1="800" y2="800" x1="1680" />
            <wire x2="3200" y1="800" y2="1344" x1="3200" />
            <wire x2="1680" y1="800" y2="992" x1="1680" />
            <wire x2="1184" y1="432" y2="432" x1="1120" />
            <wire x2="1120" y1="432" y2="800" x1="1120" />
            <wire x2="1136" y1="944" y2="992" x1="1136" />
            <wire x2="1680" y1="992" y2="992" x1="1136" />
            <wire x2="1152" y1="944" y2="944" x1="1136" />
            <wire x2="1152" y1="944" y2="976" x1="1152" />
            <wire x2="1184" y1="976" y2="976" x1="1152" />
            <wire x2="3200" y1="1344" y2="1344" x1="3184" />
        </branch>
        <branch name="MemIO(1:0)">
            <wire x2="832" y1="608" y2="1696" x1="832" />
            <wire x2="928" y1="1696" y2="1696" x1="832" />
            <wire x2="1104" y1="608" y2="608" x1="832" />
            <wire x2="1104" y1="608" y2="688" x1="1104" />
            <wire x2="1184" y1="688" y2="688" x1="1104" />
            <wire x2="1104" y1="144" y2="608" x1="1104" />
            <wire x2="2480" y1="144" y2="144" x1="1104" />
            <wire x2="2480" y1="144" y2="1264" x1="2480" />
            <wire x2="2608" y1="144" y2="144" x1="2480" />
            <wire x2="2480" y1="1264" y2="1264" x1="2400" />
        </branch>
        <branch name="InternalDataBus(31:0)">
            <wire x2="2096" y1="1024" y2="1024" x1="896" />
            <wire x2="896" y1="1024" y2="1760" x1="896" />
            <wire x2="928" y1="1760" y2="1760" x1="896" />
            <wire x2="2096" y1="624" y2="624" x1="1840" />
            <wire x2="2416" y1="624" y2="624" x1="2096" />
            <wire x2="2416" y1="624" y2="1648" x1="2416" />
            <wire x2="2672" y1="624" y2="624" x1="2416" />
            <wire x2="2096" y1="624" y2="1024" x1="2096" />
            <wire x2="2416" y1="1648" y2="1648" x1="2400" />
        </branch>
        <branch name="ExternalAddressBus(31:0)">
            <wire x2="2672" y1="560" y2="560" x1="1840" />
        </branch>
        <branch name="ExternalDataBus(31:0)">
            <wire x2="2656" y1="496" y2="496" x1="1840" />
        </branch>
        <branch name="ExternalDrive(2:0)">
            <wire x2="2672" y1="432" y2="432" x1="1840" />
        </branch>
        <instance x="2784" y="1840" name="XLXI_7" orien="R0">
        </instance>
        <instance x="560" y="2304" name="XLXI_8" orien="R0">
        </instance>
        <branch name="ALUAddressBus(31:0)">
            <wire x2="1168" y1="240" y2="240" x1="384" />
            <wire x2="1168" y1="240" y2="624" x1="1168" />
            <wire x2="1184" y1="624" y2="624" x1="1168" />
            <wire x2="2464" y1="176" y2="176" x1="1168" />
            <wire x2="2464" y1="176" y2="1328" x1="2464" />
            <wire x2="1168" y1="176" y2="240" x1="1168" />
            <wire x2="2464" y1="1328" y2="1328" x1="2400" />
        </branch>
        <branch name="APSel(2:0)">
            <wire x2="560" y1="2256" y2="2256" x1="496" />
            <wire x2="496" y1="2256" y2="2400" x1="496" />
            <wire x2="3216" y1="2400" y2="2400" x1="496" />
            <wire x2="3264" y1="2400" y2="2400" x1="3216" />
            <wire x2="3216" y1="1680" y2="1680" x1="3168" />
            <wire x2="3216" y1="1680" y2="2400" x1="3216" />
        </branch>
        <branch name="PCDrive(2:0)">
            <wire x2="2480" y1="1392" y2="1392" x1="2400" />
            <wire x2="2672" y1="1392" y2="1392" x1="2480" />
            <wire x2="2672" y1="1392" y2="1536" x1="2672" />
            <wire x2="2752" y1="1536" y2="1536" x1="2672" />
            <wire x2="2496" y1="1360" y2="1360" x1="2480" />
            <wire x2="2480" y1="1360" y2="1392" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2672" y="560" name="ExternalAddressBus(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2656" y="496" name="ExternalDataBus(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2672" y="432" name="ExternalDrive(2:0)" orien="R0" />
        <iomarker fontsize="28" x="800" y="496" name="ExternalExchangeReady" orien="R180" />
        <iomarker fontsize="28" x="704" y="304" name="clk" orien="R180" />
        <iomarker fontsize="28" x="704" y="368" name="rst" orien="R180" />
        <iomarker fontsize="28" x="2672" y="624" name="InternalDataBus(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2016" y="256" name="InstructionBus(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1568" y="2016" name="ALUSel(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1584" y="2144" name="SelX(2:0)" orien="R0" />
        <iomarker fontsize="28" x="1584" y="2208" name="SelY(2:0)" orien="R0" />
        <iomarker fontsize="28" x="1552" y="1760" name="B(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1232" y="2272" name="SelZ(2:0)" orien="R0" />
        <iomarker fontsize="28" x="1056" y="800" name="GetInstruction" orien="R180" />
        <iomarker fontsize="28" x="2608" y="144" name="MemIO(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2016" y="368" name="ValidMemoryData" orien="R0" />
        <iomarker fontsize="28" x="3264" y="2400" name="APSel(2:0)" orien="R0" />
        <iomarker fontsize="28" x="368" y="560" name="PCAddressBus(31:0)" orien="R180" />
        <iomarker fontsize="28" x="384" y="240" name="ALUAddressBus(31:0)" orien="R180" />
        <iomarker fontsize="28" x="2496" y="1360" name="PCDrive(2:0)" orien="R0" />
        <iomarker fontsize="28" x="2624" y="2256" name="SRSet(7:0)" orien="R0" />
        <iomarker fontsize="28" x="2064" y="2176" name="APSet(3:0)" orien="R0" />
        <branch name="A(31:0)">
            <wire x2="1440" y1="1376" y2="1376" x1="1360" />
            <wire x2="1440" y1="1168" y2="1264" x1="1440" />
            <wire x2="1440" y1="1264" y2="1376" x1="1440" />
            <wire x2="1824" y1="1264" y2="1264" x1="1440" />
            <wire x2="1488" y1="1168" y2="1168" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1168" name="A(31:0)" orien="R0" />
        <branch name="DecoderData(23:0)">
            <wire x2="1424" y1="2080" y2="2080" x1="1104" />
            <wire x2="1568" y1="2080" y2="2080" x1="1424" />
            <wire x2="1424" y1="1456" y2="2080" x1="1424" />
            <wire x2="1824" y1="1456" y2="1456" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="1568" y="2080" name="DecoderData(23:0)" orien="R0" />
        <branch name="ALUrst">
            <wire x2="1648" y1="880" y2="880" x1="1440" />
            <wire x2="1728" y1="880" y2="880" x1="1648" />
            <wire x2="1728" y1="880" y2="1712" x1="1728" />
            <wire x2="1824" y1="1712" y2="1712" x1="1728" />
            <wire x2="1728" y1="1712" y2="1808" x1="1728" />
            <wire x2="1872" y1="1808" y2="1808" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1872" y="1808" name="ALUrst" orien="R0" />
        <branch name="clk">
            <wire x2="816" y1="1008" y2="1008" x1="528" />
            <wire x2="1712" y1="1008" y2="1008" x1="816" />
            <wire x2="1712" y1="1008" y2="1136" x1="1712" />
            <wire x2="1824" y1="1136" y2="1136" x1="1712" />
            <wire x2="2592" y1="1008" y2="1008" x1="1712" />
            <wire x2="2720" y1="1008" y2="1008" x1="2592" />
            <wire x2="528" y1="1008" y2="1376" x1="528" />
            <wire x2="528" y1="1376" y2="2016" x1="528" />
            <wire x2="560" y1="2016" y2="2016" x1="528" />
            <wire x2="928" y1="1376" y2="1376" x1="528" />
            <wire x2="816" y1="304" y2="304" x1="704" />
            <wire x2="1184" y1="304" y2="304" x1="816" />
            <wire x2="816" y1="304" y2="1008" x1="816" />
            <wire x2="2592" y1="992" y2="1008" x1="2592" />
            <wire x2="2704" y1="992" y2="992" x1="2592" />
            <wire x2="2704" y1="992" y2="1344" x1="2704" />
            <wire x2="2752" y1="1344" y2="1344" x1="2704" />
            <wire x2="2704" y1="1344" y2="1680" x1="2704" />
            <wire x2="2784" y1="1680" y2="1680" x1="2704" />
            <wire x2="2704" y1="1680" y2="2032" x1="2704" />
            <wire x2="2752" y1="2032" y2="2032" x1="2704" />
        </branch>
        <branch name="rst">
            <wire x2="912" y1="416" y2="416" x1="416" />
            <wire x2="416" y1="416" y2="880" x1="416" />
            <wire x2="416" y1="880" y2="1072" x1="416" />
            <wire x2="416" y1="1072" y2="1440" x1="416" />
            <wire x2="928" y1="1440" y2="1440" x1="416" />
            <wire x2="416" y1="1440" y2="1568" x1="416" />
            <wire x2="416" y1="1568" y2="2096" x1="416" />
            <wire x2="560" y1="2096" y2="2096" x1="416" />
            <wire x2="2640" y1="1072" y2="1072" x1="416" />
            <wire x2="2720" y1="1072" y2="1072" x1="2640" />
            <wire x2="2640" y1="1072" y2="1296" x1="2640" />
            <wire x2="2736" y1="1296" y2="1296" x1="2640" />
            <wire x2="2736" y1="1296" y2="1408" x1="2736" />
            <wire x2="2752" y1="1408" y2="1408" x1="2736" />
            <wire x2="2736" y1="1408" y2="1744" x1="2736" />
            <wire x2="2736" y1="1744" y2="2096" x1="2736" />
            <wire x2="2752" y1="2096" y2="2096" x1="2736" />
            <wire x2="2784" y1="1744" y2="1744" x1="2736" />
            <wire x2="432" y1="880" y2="880" x1="416" />
            <wire x2="432" y1="688" y2="880" x1="432" />
            <wire x2="1088" y1="688" y2="688" x1="432" />
            <wire x2="1088" y1="688" y2="816" x1="1088" />
            <wire x2="1120" y1="816" y2="816" x1="1088" />
            <wire x2="1152" y1="816" y2="816" x1="1120" />
            <wire x2="1152" y1="816" y2="848" x1="1152" />
            <wire x2="1184" y1="848" y2="848" x1="1152" />
            <wire x2="912" y1="368" y2="368" x1="704" />
            <wire x2="1184" y1="368" y2="368" x1="912" />
            <wire x2="912" y1="368" y2="416" x1="912" />
        </branch>
        <branch name="ExternalExchangeReady">
            <wire x2="976" y1="496" y2="496" x1="800" />
            <wire x2="1184" y1="496" y2="496" x1="976" />
            <wire x2="976" y1="480" y2="496" x1="976" />
            <wire x2="1072" y1="480" y2="480" x1="976" />
            <wire x2="1072" y1="480" y2="784" x1="1072" />
            <wire x2="1184" y1="784" y2="784" x1="1072" />
        </branch>
        <branch name="XLXN_278">
            <wire x2="560" y1="2336" y2="2336" x1="512" />
            <wire x2="512" y1="2336" y2="2432" x1="512" />
            <wire x2="2448" y1="2432" y2="2432" x1="512" />
            <wire x2="2448" y1="752" y2="752" x1="1840" />
            <wire x2="2448" y1="752" y2="2432" x1="2448" />
        </branch>
        <branch name="XLXN_279">
            <wire x2="848" y1="1264" y2="1824" x1="848" />
            <wire x2="928" y1="1824" y2="1824" x1="848" />
            <wire x2="1408" y1="1264" y2="1264" x1="848" />
            <wire x2="1408" y1="1264" y2="2336" x1="1408" />
            <wire x2="1408" y1="2336" y2="2336" x1="1104" />
        </branch>
        <branch name="XLXN_280">
            <wire x2="912" y1="880" y2="880" x1="848" />
            <wire x2="848" y1="880" y2="960" x1="848" />
            <wire x2="1760" y1="960" y2="960" x1="848" />
            <wire x2="1760" y1="960" y2="1824" x1="1760" />
            <wire x2="1760" y1="1824" y2="1824" x1="1360" />
        </branch>
        <branch name="SelY(2:0)">
            <wire x2="1376" y1="1216" y2="1216" x1="864" />
            <wire x2="1376" y1="1216" y2="1824" x1="1376" />
            <wire x2="1376" y1="1824" y2="2208" x1="1376" />
            <wire x2="1584" y1="2208" y2="2208" x1="1376" />
            <wire x2="864" y1="1216" y2="1568" x1="864" />
            <wire x2="928" y1="1568" y2="1568" x1="864" />
            <wire x2="1376" y1="2208" y2="2208" x1="1104" />
        </branch>
        <instance x="912" y="912" name="XLXI_55" orien="R0" />
        <instance x="1184" y="1040" name="XLXI_57" orien="R0" />
        <branch name="XLXN_284">
            <wire x2="1152" y1="880" y2="880" x1="1136" />
            <wire x2="1152" y1="880" y2="912" x1="1152" />
            <wire x2="1184" y1="912" y2="912" x1="1152" />
        </branch>
    </sheet>
</drawing>