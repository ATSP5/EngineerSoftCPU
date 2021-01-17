<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(31:0)" />
        <signal name="B(31:0)" />
        <signal name="ALU_Sel(7:0)" />
        <signal name="DecoderData(23:0)" />
        <signal name="SelX(2:0)" />
        <signal name="SelY(2:0)" />
        <signal name="SelZ(2:0)" />
        <signal name="XLXN_12(2:0)" />
        <signal name="XLXN_13(31:0)" />
        <signal name="XLXN_14(7:0)" />
        <signal name="XLXN_15(3:0)" />
        <signal name="XLXN_16(7:0)" />
        <signal name="XLXN_17(31:0)" />
        <signal name="XLXN_18(1:0)" />
        <signal name="XLXN_19(2:0)" />
        <signal name="XLXN_20(31:0)" />
        <signal name="ValidMemoryData" />
        <signal name="MemIO(1:0)" />
        <signal name="NewInstruction" />
        <signal name="InstructionBus(31:0)" />
        <signal name="PCAddressBus(31:0)" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="InternalDataBus(31:0)" />
        <signal name="ExternalAddressBus(31:0)" />
        <signal name="ExternalDataBus(31:0)" />
        <signal name="ExternalDrive(2:0)" />
        <signal name="ALUAddressBus(31:0)" />
        <signal name="ExternalExchangeReady" />
        <port polarity="Output" name="A(31:0)" />
        <port polarity="Output" name="B(31:0)" />
        <port polarity="Output" name="ALU_Sel(7:0)" />
        <port polarity="Output" name="DecoderData(23:0)" />
        <port polarity="Output" name="SelX(2:0)" />
        <port polarity="Output" name="SelY(2:0)" />
        <port polarity="Output" name="SelZ(2:0)" />
        <port polarity="Output" name="ValidMemoryData" />
        <port polarity="Output" name="MemIO(1:0)" />
        <port polarity="Output" name="NewInstruction" />
        <port polarity="Output" name="InstructionBus(31:0)" />
        <port polarity="Output" name="PCAddressBus(31:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="BiDirectional" name="InternalDataBus(31:0)" />
        <port polarity="BiDirectional" name="ExternalAddressBus(31:0)" />
        <port polarity="BiDirectional" name="ExternalDataBus(31:0)" />
        <port polarity="Output" name="ExternalDrive(2:0)" />
        <port polarity="Output" name="ALUAddressBus(31:0)" />
        <port polarity="Input" name="ExternalExchangeReady" />
        <blockdef name="ALU">
            <timestamp>2021-1-16T11:31:39</timestamp>
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
            <timestamp>2021-1-17T18:23:54</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="Decoder">
            <timestamp>2021-1-16T10:56:7</timestamp>
            <rect width="416" x="64" y="-320" height="320" />
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
        </blockdef>
        <blockdef name="GPReg">
            <timestamp>2021-1-16T10:56:12</timestamp>
            <rect width="304" x="64" y="-448" height="448" />
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
        </blockdef>
        <blockdef name="SP">
            <timestamp>2021-1-16T10:56:26</timestamp>
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
            <timestamp>2021-1-16T10:56:35</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="PC">
            <timestamp>2021-1-16T10:56:21</timestamp>
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
            <timestamp>2021-1-16T10:56:16</timestamp>
            <rect width="528" x="64" y="-448" height="448" />
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
        </blockdef>
        <block symbolname="ALU" name="XLXI_6">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="clk" name="rst" />
            <blockpin signalname="ValidMemoryData" name="ValidMemData" />
            <blockpin signalname="A(31:0)" name="A(31:0)" />
            <blockpin signalname="B(31:0)" name="B(31:0)" />
            <blockpin signalname="ALU_Sel(7:0)" name="ALU_Sel(7:0)" />
            <blockpin signalname="DecoderData(23:0)" name="DecoderData(23:0)" />
            <blockpin signalname="XLXN_16(7:0)" name="StatusRegisterVelues(7:0)" />
            <blockpin signalname="XLXN_20(31:0)" name="SPAddr(31:0)" />
            <blockpin signalname="InternalDataBus(31:0)" name="DataIO(31:0)" />
            <blockpin signalname="XLXN_17(31:0)" name="SetSP(31:0)" />
            <blockpin signalname="XLXN_18(1:0)" name="InDecSP(1:0)" />
            <blockpin signalname="MemIO(1:0)" name="MemIO(1:0)" />
            <blockpin signalname="ALUAddressBus(31:0)" name="ALUAddr(31:0)" />
            <blockpin signalname="XLXN_19(2:0)" name="MenagePC(2:0)" />
            <blockpin signalname="XLXN_13(31:0)" name="PCSet(31:0)" />
            <blockpin signalname="XLXN_14(7:0)" name="SetSR(7:0)" />
            <blockpin signalname="XLXN_15(3:0)" name="SetAP(3:0)" />
        </block>
        <block symbolname="AP" name="XLXI_7">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_15(3:0)" name="APSet(3:0)" />
            <blockpin name="APSel(2:0)" />
        </block>
        <block symbolname="Decoder" name="XLXI_8">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="InstructionBus(31:0)" name="InstructionBus(31:0)" />
            <blockpin signalname="XLXN_12(2:0)" name="APSelBus(2:0)" />
            <blockpin signalname="ALU_Sel(7:0)" name="AluCode(7:0)" />
            <blockpin signalname="DecoderData(23:0)" name="DecoderData(23:0)" />
            <blockpin signalname="SelX(2:0)" name="RegSelX(2:0)" />
            <blockpin signalname="SelY(2:0)" name="RegSelY(2:0)" />
            <blockpin signalname="SelZ(2:0)" name="RegSelZ(2:0)" />
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
            <blockpin signalname="XLXN_14(7:0)" name="SRSet(7:0)" />
            <blockpin signalname="XLXN_16(7:0)" name="SRData(7:0)" />
        </block>
        <block symbolname="PC" name="XLXI_12">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_13(31:0)" name="PCSet(31:0)" />
            <blockpin signalname="XLXN_19(2:0)" name="PCDrive(2:0)" />
            <blockpin signalname="NewInstruction" name="GetInstruction" />
            <blockpin signalname="PCAddressBus(31:0)" name="PCAddr(31:0)" />
        </block>
        <block symbolname="MemoryController" name="XLXI_13">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="NewInstruction" name="PCGetNewInstruction" />
            <blockpin signalname="ExternalExchangeReady" name="ExternalExchangeReady" />
            <blockpin signalname="PCAddressBus(31:0)" name="PCAddressBus(31:0)" />
            <blockpin signalname="ALUAddressBus(31:0)" name="ALUAddressBus(31:0)" />
            <blockpin signalname="MemIO(1:0)" name="MemoryIOBus(1:0)" />
            <blockpin signalname="ValidMemoryData" name="ValidMemoryData" />
            <blockpin signalname="InstructionBus(31:0)" name="InstructionBus(31:0)" />
            <blockpin signalname="ExternalDrive(2:0)" name="ExternalDrive(2:0)" />
            <blockpin signalname="ExternalDataBus(31:0)" name="ExternalDataBus(31:0)" />
            <blockpin signalname="ExternalAddressBus(31:0)" name="ExternalAddressBus(31:0)" />
            <blockpin signalname="InternalDataBus(31:0)" name="InternalDataBus(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1488" y="1584" name="XLXI_6" orien="R0">
        </instance>
        <instance x="592" y="1696" name="XLXI_9" orien="R0">
        </instance>
        <instance x="2384" y="1136" name="XLXI_10" orien="R0">
        </instance>
        <instance x="2416" y="2096" name="XLXI_11" orien="R0">
        </instance>
        <instance x="2416" y="1472" name="XLXI_12" orien="R0">
        </instance>
        <branch name="B(31:0)">
            <wire x2="1120" y1="1664" y2="1664" x1="1024" />
            <wire x2="1216" y1="1664" y2="1664" x1="1120" />
            <wire x2="1120" y1="1232" y2="1664" x1="1120" />
            <wire x2="1488" y1="1232" y2="1232" x1="1120" />
        </branch>
        <branch name="ALU_Sel(7:0)">
            <wire x2="1104" y1="1920" y2="1920" x1="768" />
            <wire x2="1232" y1="1920" y2="1920" x1="1104" />
            <wire x2="1104" y1="1296" y2="1920" x1="1104" />
            <wire x2="1488" y1="1296" y2="1296" x1="1104" />
        </branch>
        <branch name="DecoderData(23:0)">
            <wire x2="1088" y1="1984" y2="1984" x1="768" />
            <wire x2="1248" y1="1984" y2="1984" x1="1088" />
            <wire x2="1088" y1="1360" y2="1984" x1="1088" />
            <wire x2="1488" y1="1360" y2="1360" x1="1088" />
        </branch>
        <branch name="SelX(2:0)">
            <wire x2="1056" y1="1072" y2="1072" x1="576" />
            <wire x2="1056" y1="1072" y2="2048" x1="1056" />
            <wire x2="1248" y1="2048" y2="2048" x1="1056" />
            <wire x2="576" y1="1072" y2="1408" x1="576" />
            <wire x2="592" y1="1408" y2="1408" x1="576" />
            <wire x2="1056" y1="2048" y2="2048" x1="768" />
        </branch>
        <branch name="SelY(2:0)">
            <wire x2="1040" y1="1120" y2="1120" x1="528" />
            <wire x2="1040" y1="1120" y2="2112" x1="1040" />
            <wire x2="1248" y1="2112" y2="2112" x1="1040" />
            <wire x2="528" y1="1120" y2="1472" x1="528" />
            <wire x2="592" y1="1472" y2="1472" x1="528" />
            <wire x2="1040" y1="2112" y2="2112" x1="768" />
        </branch>
        <branch name="SelZ(2:0)">
            <wire x2="592" y1="1536" y2="1536" x1="576" />
            <wire x2="576" y1="1536" y2="1808" x1="576" />
            <wire x2="832" y1="1808" y2="1808" x1="576" />
            <wire x2="832" y1="1808" y2="2176" x1="832" />
            <wire x2="896" y1="2176" y2="2176" x1="832" />
            <wire x2="832" y1="2176" y2="2176" x1="768" />
        </branch>
        <branch name="XLXN_12(2:0)">
            <wire x2="224" y1="2160" y2="2160" x1="160" />
            <wire x2="160" y1="2160" y2="2288" x1="160" />
            <wire x2="2848" y1="2288" y2="2288" x1="160" />
            <wire x2="2848" y1="1584" y2="1584" x1="2832" />
            <wire x2="2848" y1="1584" y2="2288" x1="2848" />
        </branch>
        <branch name="XLXN_13(31:0)">
            <wire x2="2240" y1="1360" y2="1360" x1="2064" />
            <wire x2="2240" y1="1360" y2="1376" x1="2240" />
            <wire x2="2416" y1="1376" y2="1376" x1="2240" />
        </branch>
        <branch name="XLXN_14(7:0)">
            <wire x2="2240" y1="1424" y2="1424" x1="2064" />
            <wire x2="2240" y1="1424" y2="2064" x1="2240" />
            <wire x2="2416" y1="2064" y2="2064" x1="2240" />
        </branch>
        <branch name="XLXN_15(3:0)">
            <wire x2="2256" y1="1488" y2="1488" x1="2064" />
            <wire x2="2256" y1="1488" y2="1712" x1="2256" />
            <wire x2="2448" y1="1712" y2="1712" x1="2256" />
        </branch>
        <branch name="XLXN_16(7:0)">
            <wire x2="2928" y1="800" y2="800" x1="1440" />
            <wire x2="2928" y1="800" y2="1936" x1="2928" />
            <wire x2="1440" y1="800" y2="1424" x1="1440" />
            <wire x2="1488" y1="1424" y2="1424" x1="1440" />
            <wire x2="2928" y1="1936" y2="1936" x1="2800" />
        </branch>
        <branch name="XLXN_17(31:0)">
            <wire x2="2384" y1="1040" y2="1040" x1="2064" />
        </branch>
        <branch name="XLXN_18(1:0)">
            <wire x2="2384" y1="1104" y2="1104" x1="2064" />
        </branch>
        <branch name="XLXN_19(2:0)">
            <wire x2="2304" y1="1296" y2="1296" x1="2064" />
            <wire x2="2304" y1="1296" y2="1440" x1="2304" />
            <wire x2="2416" y1="1440" y2="1440" x1="2304" />
        </branch>
        <branch name="XLXN_20(31:0)">
            <wire x2="1488" y1="1488" y2="1488" x1="1440" />
            <wire x2="1440" y1="1488" y2="1824" x1="1440" />
            <wire x2="2896" y1="1824" y2="1824" x1="1440" />
            <wire x2="2896" y1="912" y2="912" x1="2832" />
            <wire x2="2896" y1="912" y2="1824" x1="2896" />
        </branch>
        <branch name="ValidMemoryData">
            <wire x2="1456" y1="960" y2="1104" x1="1456" />
            <wire x2="1488" y1="1104" y2="1104" x1="1456" />
            <wire x2="1584" y1="960" y2="960" x1="1456" />
            <wire x2="1584" y1="208" y2="208" x1="1504" />
            <wire x2="1584" y1="208" y2="272" x1="1584" />
            <wire x2="1584" y1="272" y2="960" x1="1584" />
            <wire x2="1680" y1="272" y2="272" x1="1584" />
        </branch>
        <branch name="InstructionBus(31:0)">
            <wire x2="1520" y1="96" y2="96" x1="112" />
            <wire x2="1520" y1="96" y2="160" x1="1520" />
            <wire x2="1520" y1="160" y2="272" x1="1520" />
            <wire x2="1680" y1="160" y2="160" x1="1520" />
            <wire x2="112" y1="96" y2="2080" x1="112" />
            <wire x2="224" y1="2080" y2="2080" x1="112" />
            <wire x2="1520" y1="272" y2="272" x1="1504" />
        </branch>
        <branch name="PCAddressBus(31:0)">
            <wire x2="336" y1="464" y2="464" x1="288" />
            <wire x2="848" y1="464" y2="464" x1="336" />
            <wire x2="336" y1="464" y2="1760" x1="336" />
            <wire x2="2864" y1="1760" y2="1760" x1="336" />
            <wire x2="2864" y1="1440" y2="1440" x1="2848" />
            <wire x2="2864" y1="1440" y2="1760" x1="2864" />
        </branch>
        <instance x="848" y="624" name="XLXI_13" orien="R0">
        </instance>
        <branch name="NewInstruction">
            <wire x2="784" y1="704" y2="704" x1="720" />
            <wire x2="2864" y1="704" y2="704" x1="784" />
            <wire x2="2864" y1="704" y2="1248" x1="2864" />
            <wire x2="848" y1="336" y2="336" x1="784" />
            <wire x2="784" y1="336" y2="704" x1="784" />
            <wire x2="2864" y1="1248" y2="1248" x1="2848" />
        </branch>
        <branch name="MemIO(1:0)">
            <wire x2="496" y1="512" y2="1600" x1="496" />
            <wire x2="592" y1="1600" y2="1600" x1="496" />
            <wire x2="768" y1="512" y2="512" x1="496" />
            <wire x2="768" y1="512" y2="592" x1="768" />
            <wire x2="848" y1="592" y2="592" x1="768" />
            <wire x2="768" y1="48" y2="512" x1="768" />
            <wire x2="2144" y1="48" y2="48" x1="768" />
            <wire x2="2144" y1="48" y2="1168" x1="2144" />
            <wire x2="2272" y1="48" y2="48" x1="2144" />
            <wire x2="2144" y1="1168" y2="1168" x1="2064" />
        </branch>
        <branch name="InternalDataBus(31:0)">
            <wire x2="1760" y1="928" y2="928" x1="560" />
            <wire x2="560" y1="928" y2="1664" x1="560" />
            <wire x2="592" y1="1664" y2="1664" x1="560" />
            <wire x2="1760" y1="528" y2="528" x1="1504" />
            <wire x2="2080" y1="528" y2="528" x1="1760" />
            <wire x2="2080" y1="528" y2="1552" x1="2080" />
            <wire x2="2336" y1="528" y2="528" x1="2080" />
            <wire x2="1760" y1="528" y2="928" x1="1760" />
            <wire x2="2080" y1="1552" y2="1552" x1="2064" />
        </branch>
        <branch name="ExternalAddressBus(31:0)">
            <wire x2="2336" y1="464" y2="464" x1="1504" />
        </branch>
        <branch name="ExternalDataBus(31:0)">
            <wire x2="2320" y1="400" y2="400" x1="1504" />
        </branch>
        <branch name="ExternalDrive(2:0)">
            <wire x2="2336" y1="336" y2="336" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="2336" y="464" name="ExternalAddressBus(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2320" y="400" name="ExternalDataBus(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2336" y="336" name="ExternalDrive(2:0)" orien="R0" />
        <instance x="2448" y="1744" name="XLXI_7" orien="R0">
        </instance>
        <instance x="224" y="2208" name="XLXI_8" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="192" y1="912" y2="1920" x1="192" />
            <wire x2="224" y1="1920" y2="1920" x1="192" />
            <wire x2="512" y1="912" y2="912" x1="192" />
            <wire x2="512" y1="912" y2="1280" x1="512" />
            <wire x2="592" y1="1280" y2="1280" x1="512" />
            <wire x2="800" y1="912" y2="912" x1="512" />
            <wire x2="800" y1="208" y2="208" x1="368" />
            <wire x2="848" y1="208" y2="208" x1="800" />
            <wire x2="800" y1="208" y2="864" x1="800" />
            <wire x2="800" y1="864" y2="912" x1="800" />
            <wire x2="1472" y1="864" y2="864" x1="800" />
            <wire x2="2320" y1="864" y2="864" x1="1472" />
            <wire x2="2320" y1="864" y2="912" x1="2320" />
            <wire x2="2384" y1="912" y2="912" x1="2320" />
            <wire x2="2320" y1="912" y2="1152" x1="2320" />
            <wire x2="2400" y1="1152" y2="1152" x1="2320" />
            <wire x2="2400" y1="1152" y2="1248" x1="2400" />
            <wire x2="2416" y1="1248" y2="1248" x1="2400" />
            <wire x2="2400" y1="1248" y2="1584" x1="2400" />
            <wire x2="2448" y1="1584" y2="1584" x1="2400" />
            <wire x2="2400" y1="1584" y2="1936" x1="2400" />
            <wire x2="2416" y1="1936" y2="1936" x1="2400" />
            <wire x2="1472" y1="864" y2="1040" x1="1472" />
            <wire x2="1488" y1="1040" y2="1040" x1="1472" />
            <wire x2="1472" y1="1040" y2="1616" x1="1472" />
            <wire x2="1488" y1="1616" y2="1616" x1="1472" />
        </branch>
        <branch name="rst">
            <wire x2="144" y1="976" y2="2000" x1="144" />
            <wire x2="224" y1="2000" y2="2000" x1="144" />
            <wire x2="480" y1="976" y2="976" x1="144" />
            <wire x2="480" y1="976" y2="1344" x1="480" />
            <wire x2="592" y1="1344" y2="1344" x1="480" />
            <wire x2="480" y1="272" y2="272" x1="368" />
            <wire x2="848" y1="272" y2="272" x1="480" />
            <wire x2="480" y1="272" y2="752" x1="480" />
            <wire x2="480" y1="752" y2="976" x1="480" />
            <wire x2="2368" y1="752" y2="752" x1="480" />
            <wire x2="2368" y1="752" y2="976" x1="2368" />
            <wire x2="2384" y1="976" y2="976" x1="2368" />
            <wire x2="2368" y1="976" y2="1312" x1="2368" />
            <wire x2="2384" y1="1312" y2="1312" x1="2368" />
            <wire x2="2416" y1="1312" y2="1312" x1="2384" />
            <wire x2="2384" y1="1312" y2="1648" x1="2384" />
            <wire x2="2448" y1="1648" y2="1648" x1="2384" />
            <wire x2="2384" y1="1648" y2="2000" x1="2384" />
            <wire x2="2416" y1="2000" y2="2000" x1="2384" />
        </branch>
        <iomarker fontsize="28" x="464" y="400" name="ExternalExchangeReady" orien="R180" />
        <branch name="ALUAddressBus(31:0)">
            <wire x2="832" y1="144" y2="144" x1="576" />
            <wire x2="832" y1="144" y2="528" x1="832" />
            <wire x2="848" y1="528" y2="528" x1="832" />
            <wire x2="2128" y1="80" y2="80" x1="832" />
            <wire x2="2128" y1="80" y2="1232" x1="2128" />
            <wire x2="832" y1="80" y2="144" x1="832" />
            <wire x2="2128" y1="1232" y2="1232" x1="2064" />
        </branch>
        <branch name="ExternalExchangeReady">
            <wire x2="848" y1="400" y2="400" x1="464" />
        </branch>
        <iomarker fontsize="28" x="368" y="208" name="clk" orien="R180" />
        <iomarker fontsize="28" x="368" y="272" name="rst" orien="R180" />
        <iomarker fontsize="28" x="2336" y="528" name="InternalDataBus(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1680" y="160" name="InstructionBus(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1232" y="1920" name="ALU_Sel(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1248" y="1984" name="DecoderData(23:0)" orien="R0" />
        <iomarker fontsize="28" x="1248" y="2048" name="SelX(2:0)" orien="R0" />
        <iomarker fontsize="28" x="1248" y="2112" name="SelY(2:0)" orien="R0" />
        <iomarker fontsize="28" x="1216" y="1664" name="B(31:0)" orien="R0" />
        <branch name="A(31:0)">
            <wire x2="1072" y1="1280" y2="1280" x1="1024" />
            <wire x2="1072" y1="1168" y2="1280" x1="1072" />
            <wire x2="1120" y1="1168" y2="1168" x1="1072" />
            <wire x2="1488" y1="1168" y2="1168" x1="1120" />
            <wire x2="1120" y1="1040" y2="1168" x1="1120" />
            <wire x2="1184" y1="1040" y2="1040" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="1184" y="1040" name="A(31:0)" orien="R0" />
        <iomarker fontsize="28" x="896" y="2176" name="SelZ(2:0)" orien="R0" />
        <iomarker fontsize="28" x="720" y="704" name="NewInstruction" orien="R180" />
        <iomarker fontsize="28" x="288" y="464" name="PCAddressBus(31:0)" orien="R180" />
        <iomarker fontsize="28" x="576" y="144" name="ALUAddressBus(31:0)" orien="R180" />
        <iomarker fontsize="28" x="2272" y="48" name="MemIO(1:0)" orien="R0" />
        <iomarker fontsize="28" x="1680" y="272" name="ValidMemoryData" orien="R0" />
    </sheet>
</drawing>