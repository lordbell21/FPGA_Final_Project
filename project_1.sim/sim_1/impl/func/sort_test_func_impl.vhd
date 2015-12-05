-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Fri Dec 04 22:45:53 2015
-- Host        : DESKTOP-5NU1JBU running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               G:/Users/Steven/FPGADesignProjects/final_project/project_1/project_1.sim/sim_1/impl/func/sort_test_func_impl.vhd
-- Design      : Interface
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_TX_CTRL is
  port (
    tx_OBUF : out STD_LOGIC;
    \FSM_sequential_uartState_reg[2]\ : out STD_LOGIC;
    \FSM_sequential_uartState_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_uartState_reg[0]\ : out STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC;
    \FSM_sequential_uartState_reg[0]_0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    done_load_reg : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_uartState_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_uartState_reg[0]_1\ : in STD_LOGIC;
    \reset_cntr_reg[12]\ : in STD_LOGIC;
    \reset_cntr_reg[4]\ : in STD_LOGIC;
    \reset_cntr_reg[10]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end UART_TX_CTRL;

architecture STRUCTURE of UART_TX_CTRL is
  signal \FSM_sequential_uartState[2]_i_3_n_0\ : STD_LOGIC;
  signal \bitIndex[0]_i_5_n_0\ : STD_LOGIC;
  signal bitIndex_reg : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \bitIndex_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitIndex_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \bitIndex_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \bitIndex_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \bitIndex_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \bitIndex_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \bitIndex_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \bitIndex_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \bitIndex_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \bitIndex_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \bitIndex_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \bitIndex_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \bitIndex_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \bitIndex_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \bitIndex_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \bitIndex_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \bitIndex_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \bitIndex_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \bitIndex_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \bitIndex_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \bitIndex_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \bitIndex_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \bitIndex_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \bitIndex_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \bitTmr[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitTmr[0]_i_6_n_0\ : STD_LOGIC;
  signal bitTmr_reg : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \bitTmr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \bitTmr_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \bitTmr_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \bitTmr_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \bitTmr_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \bitTmr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \bitTmr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \bitTmr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \bitTmr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \bitTmr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \bitTmr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \bitTmr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \bitTmr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \bitTmr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \bitTmr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \bitTmr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \bitTmr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal dy : STD_LOGIC;
  signal txBit_i_2_n_0 : STD_LOGIC;
  signal txBit_i_3_n_0 : STD_LOGIC;
  signal txBit_i_4_n_0 : STD_LOGIC;
  signal txBit_i_5_n_0 : STD_LOGIC;
  signal txData : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \txState[0]_i_1_n_0\ : STD_LOGIC;
  signal \txState[0]_i_2_n_0\ : STD_LOGIC;
  signal \txState[0]_i_3_n_0\ : STD_LOGIC;
  signal \txState[0]_i_4_n_0\ : STD_LOGIC;
  signal \txState[0]_i_5_n_0\ : STD_LOGIC;
  signal \txState[0]_i_6_n_0\ : STD_LOGIC;
  signal \txState[0]_i_7_n_0\ : STD_LOGIC;
  signal \txState[0]_i_8_n_0\ : STD_LOGIC;
  signal \txState[0]_i_9_n_0\ : STD_LOGIC;
  signal \txState[1]_i_1_n_0\ : STD_LOGIC;
  signal \txState[1]_i_2_n_0\ : STD_LOGIC;
  signal \txState[1]_i_3_n_0\ : STD_LOGIC;
  signal \txState_reg_n_0_[0]\ : STD_LOGIC;
  signal \txState_reg_n_0_[1]\ : STD_LOGIC;
  signal \NLW_bitIndex_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_bitIndex_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_bitIndex_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_bitIndex_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_bitIndex_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_bitIndex_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_bitIndex_reg[28]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_bitIndex_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_bitIndex_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_bitTmr_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_bitTmr_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_bitTmr_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bitTmr_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_bitTmr_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\FSM_sequential_uartState[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAA8BBA8"
    )
        port map (
      I0 => \FSM_sequential_uartState_reg[0]_1\,
      I1 => \FSM_sequential_uartState[2]_i_3_n_0\,
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => done_load_reg,
      O => \FSM_sequential_uartState_reg[0]\
    );
\FSM_sequential_uartState[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAA8B8A8"
    )
        port map (
      I0 => \FSM_sequential_uartState_reg[1]_0\,
      I1 => \FSM_sequential_uartState[2]_i_3_n_0\,
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => done_load_reg,
      O => \FSM_sequential_uartState_reg[1]\
    );
\FSM_sequential_uartState[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAABBBAB8AA888A8"
    )
        port map (
      I0 => \FSM_sequential_uartState_reg[0]_0\,
      I1 => \FSM_sequential_uartState[2]_i_3_n_0\,
      I2 => \out\(1),
      I3 => \out\(0),
      I4 => done_load_reg,
      I5 => in0(2),
      O => \FSM_sequential_uartState_reg[2]\
    );
\FSM_sequential_uartState[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B38383838383838"
    )
        port map (
      I0 => dy,
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \reset_cntr_reg[12]\,
      I4 => \reset_cntr_reg[4]\,
      I5 => \reset_cntr_reg[10]\,
      O => \FSM_sequential_uartState[2]_i_3_n_0\
    );
\bitIndex[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bitIndex_reg(0),
      O => \bitIndex[0]_i_5_n_0\
    );
\bitIndex_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[0]_i_1_n_7\,
      Q => bitIndex_reg(0),
      R => dy
    );
\bitIndex_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bitIndex_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_bitIndex_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \bitIndex_reg[0]_i_1_n_4\,
      O(2) => \bitIndex_reg[0]_i_1_n_5\,
      O(1) => \bitIndex_reg[0]_i_1_n_6\,
      O(0) => \bitIndex_reg[0]_i_1_n_7\,
      S(3 downto 1) => bitIndex_reg(3 downto 1),
      S(0) => \bitIndex[0]_i_5_n_0\
    );
\bitIndex_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[8]_i_1_n_5\,
      Q => bitIndex_reg(10),
      R => dy
    );
\bitIndex_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[8]_i_1_n_4\,
      Q => bitIndex_reg(11),
      R => dy
    );
\bitIndex_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[12]_i_1_n_7\,
      Q => bitIndex_reg(12),
      R => dy
    );
\bitIndex_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitIndex_reg[8]_i_1_n_0\,
      CO(3) => \bitIndex_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_bitIndex_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \bitIndex_reg[12]_i_1_n_4\,
      O(2) => \bitIndex_reg[12]_i_1_n_5\,
      O(1) => \bitIndex_reg[12]_i_1_n_6\,
      O(0) => \bitIndex_reg[12]_i_1_n_7\,
      S(3 downto 0) => bitIndex_reg(15 downto 12)
    );
\bitIndex_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[12]_i_1_n_6\,
      Q => bitIndex_reg(13),
      R => dy
    );
\bitIndex_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[12]_i_1_n_5\,
      Q => bitIndex_reg(14),
      R => dy
    );
\bitIndex_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[12]_i_1_n_4\,
      Q => bitIndex_reg(15),
      R => dy
    );
\bitIndex_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[16]_i_1_n_7\,
      Q => bitIndex_reg(16),
      R => dy
    );
\bitIndex_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitIndex_reg[12]_i_1_n_0\,
      CO(3) => \bitIndex_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_bitIndex_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \bitIndex_reg[16]_i_1_n_4\,
      O(2) => \bitIndex_reg[16]_i_1_n_5\,
      O(1) => \bitIndex_reg[16]_i_1_n_6\,
      O(0) => \bitIndex_reg[16]_i_1_n_7\,
      S(3 downto 0) => bitIndex_reg(19 downto 16)
    );
\bitIndex_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[16]_i_1_n_6\,
      Q => bitIndex_reg(17),
      R => dy
    );
\bitIndex_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[16]_i_1_n_5\,
      Q => bitIndex_reg(18),
      R => dy
    );
\bitIndex_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[16]_i_1_n_4\,
      Q => bitIndex_reg(19),
      R => dy
    );
\bitIndex_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[0]_i_1_n_6\,
      Q => bitIndex_reg(1),
      R => dy
    );
\bitIndex_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[20]_i_1_n_7\,
      Q => bitIndex_reg(20),
      R => dy
    );
\bitIndex_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitIndex_reg[16]_i_1_n_0\,
      CO(3) => \bitIndex_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_bitIndex_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \bitIndex_reg[20]_i_1_n_4\,
      O(2) => \bitIndex_reg[20]_i_1_n_5\,
      O(1) => \bitIndex_reg[20]_i_1_n_6\,
      O(0) => \bitIndex_reg[20]_i_1_n_7\,
      S(3 downto 0) => bitIndex_reg(23 downto 20)
    );
\bitIndex_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[20]_i_1_n_6\,
      Q => bitIndex_reg(21),
      R => dy
    );
\bitIndex_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[20]_i_1_n_5\,
      Q => bitIndex_reg(22),
      R => dy
    );
\bitIndex_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[20]_i_1_n_4\,
      Q => bitIndex_reg(23),
      R => dy
    );
\bitIndex_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[24]_i_1_n_7\,
      Q => bitIndex_reg(24),
      R => dy
    );
\bitIndex_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitIndex_reg[20]_i_1_n_0\,
      CO(3) => \bitIndex_reg[24]_i_1_n_0\,
      CO(2 downto 0) => \NLW_bitIndex_reg[24]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \bitIndex_reg[24]_i_1_n_4\,
      O(2) => \bitIndex_reg[24]_i_1_n_5\,
      O(1) => \bitIndex_reg[24]_i_1_n_6\,
      O(0) => \bitIndex_reg[24]_i_1_n_7\,
      S(3 downto 0) => bitIndex_reg(27 downto 24)
    );
\bitIndex_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[24]_i_1_n_6\,
      Q => bitIndex_reg(25),
      R => dy
    );
\bitIndex_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[24]_i_1_n_5\,
      Q => bitIndex_reg(26),
      R => dy
    );
\bitIndex_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[24]_i_1_n_4\,
      Q => bitIndex_reg(27),
      R => dy
    );
\bitIndex_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[28]_i_1_n_7\,
      Q => bitIndex_reg(28),
      R => dy
    );
\bitIndex_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitIndex_reg[24]_i_1_n_0\,
      CO(3 downto 0) => \NLW_bitIndex_reg[28]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \NLW_bitIndex_reg[28]_i_1_O_UNCONNECTED\(3),
      O(2) => \bitIndex_reg[28]_i_1_n_5\,
      O(1) => \bitIndex_reg[28]_i_1_n_6\,
      O(0) => \bitIndex_reg[28]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => bitIndex_reg(30 downto 28)
    );
\bitIndex_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[28]_i_1_n_6\,
      Q => bitIndex_reg(29),
      R => dy
    );
\bitIndex_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[0]_i_1_n_5\,
      Q => bitIndex_reg(2),
      R => dy
    );
\bitIndex_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[28]_i_1_n_5\,
      Q => bitIndex_reg(30),
      R => dy
    );
\bitIndex_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[0]_i_1_n_4\,
      Q => bitIndex_reg(3),
      R => dy
    );
\bitIndex_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[4]_i_1_n_7\,
      Q => bitIndex_reg(4),
      R => dy
    );
\bitIndex_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitIndex_reg[0]_i_1_n_0\,
      CO(3) => \bitIndex_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_bitIndex_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \bitIndex_reg[4]_i_1_n_4\,
      O(2) => \bitIndex_reg[4]_i_1_n_5\,
      O(1) => \bitIndex_reg[4]_i_1_n_6\,
      O(0) => \bitIndex_reg[4]_i_1_n_7\,
      S(3 downto 0) => bitIndex_reg(7 downto 4)
    );
\bitIndex_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[4]_i_1_n_6\,
      Q => bitIndex_reg(5),
      R => dy
    );
\bitIndex_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[4]_i_1_n_5\,
      Q => bitIndex_reg(6),
      R => dy
    );
\bitIndex_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[4]_i_1_n_4\,
      Q => bitIndex_reg(7),
      R => dy
    );
\bitIndex_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[8]_i_1_n_7\,
      Q => bitIndex_reg(8),
      R => dy
    );
\bitIndex_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitIndex_reg[4]_i_1_n_0\,
      CO(3) => \bitIndex_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_bitIndex_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \bitIndex_reg[8]_i_1_n_4\,
      O(2) => \bitIndex_reg[8]_i_1_n_5\,
      O(1) => \bitIndex_reg[8]_i_1_n_6\,
      O(0) => \bitIndex_reg[8]_i_1_n_7\,
      S(3 downto 0) => bitIndex_reg(11 downto 8)
    );
\bitIndex_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => \bitIndex_reg[8]_i_1_n_6\,
      Q => bitIndex_reg(9),
      R => dy
    );
\bitTmr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200020002FFFF"
    )
        port map (
      I0 => bitTmr_reg(4),
      I1 => bitTmr_reg(6),
      I2 => \txState[1]_i_2_n_0\,
      I3 => \txState[1]_i_3_n_0\,
      I4 => \txState_reg_n_0_[0]\,
      I5 => \txState_reg_n_0_[1]\,
      O => \bitTmr[0]_i_1_n_0\
    );
\bitTmr[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bitTmr_reg(0),
      O => \bitTmr[0]_i_6_n_0\
    );
\bitTmr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \bitTmr_reg[0]_i_2_n_7\,
      Q => bitTmr_reg(0),
      R => \bitTmr[0]_i_1_n_0\
    );
\bitTmr_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bitTmr_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_bitTmr_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \bitTmr_reg[0]_i_2_n_4\,
      O(2) => \bitTmr_reg[0]_i_2_n_5\,
      O(1) => \bitTmr_reg[0]_i_2_n_6\,
      O(0) => \bitTmr_reg[0]_i_2_n_7\,
      S(3 downto 1) => bitTmr_reg(3 downto 1),
      S(0) => \bitTmr[0]_i_6_n_0\
    );
\bitTmr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \bitTmr_reg[8]_i_1_n_5\,
      Q => bitTmr_reg(10),
      R => \bitTmr[0]_i_1_n_0\
    );
\bitTmr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \bitTmr_reg[8]_i_1_n_4\,
      Q => bitTmr_reg(11),
      R => \bitTmr[0]_i_1_n_0\
    );
\bitTmr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \bitTmr_reg[12]_i_1_n_7\,
      Q => bitTmr_reg(12),
      R => \bitTmr[0]_i_1_n_0\
    );
\bitTmr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitTmr_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_bitTmr_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 2) => \NLW_bitTmr_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \bitTmr_reg[12]_i_1_n_6\,
      O(0) => \bitTmr_reg[12]_i_1_n_7\,
      S(3) => '0',
      S(2) => '0',
      S(1 downto 0) => bitTmr_reg(13 downto 12)
    );
\bitTmr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \bitTmr_reg[12]_i_1_n_6\,
      Q => bitTmr_reg(13),
      R => \bitTmr[0]_i_1_n_0\
    );
\bitTmr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \bitTmr_reg[0]_i_2_n_6\,
      Q => bitTmr_reg(1),
      R => \bitTmr[0]_i_1_n_0\
    );
\bitTmr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \bitTmr_reg[0]_i_2_n_5\,
      Q => bitTmr_reg(2),
      R => \bitTmr[0]_i_1_n_0\
    );
\bitTmr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \bitTmr_reg[0]_i_2_n_4\,
      Q => bitTmr_reg(3),
      R => \bitTmr[0]_i_1_n_0\
    );
\bitTmr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \bitTmr_reg[4]_i_1_n_7\,
      Q => bitTmr_reg(4),
      R => \bitTmr[0]_i_1_n_0\
    );
\bitTmr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitTmr_reg[0]_i_2_n_0\,
      CO(3) => \bitTmr_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_bitTmr_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \bitTmr_reg[4]_i_1_n_4\,
      O(2) => \bitTmr_reg[4]_i_1_n_5\,
      O(1) => \bitTmr_reg[4]_i_1_n_6\,
      O(0) => \bitTmr_reg[4]_i_1_n_7\,
      S(3 downto 0) => bitTmr_reg(7 downto 4)
    );
\bitTmr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \bitTmr_reg[4]_i_1_n_6\,
      Q => bitTmr_reg(5),
      R => \bitTmr[0]_i_1_n_0\
    );
\bitTmr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \bitTmr_reg[4]_i_1_n_5\,
      Q => bitTmr_reg(6),
      R => \bitTmr[0]_i_1_n_0\
    );
\bitTmr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \bitTmr_reg[4]_i_1_n_4\,
      Q => bitTmr_reg(7),
      R => \bitTmr[0]_i_1_n_0\
    );
\bitTmr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \bitTmr_reg[8]_i_1_n_7\,
      Q => bitTmr_reg(8),
      R => \bitTmr[0]_i_1_n_0\
    );
\bitTmr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \bitTmr_reg[4]_i_1_n_0\,
      CO(3) => \bitTmr_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_bitTmr_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \bitTmr_reg[8]_i_1_n_4\,
      O(2) => \bitTmr_reg[8]_i_1_n_5\,
      O(1) => \bitTmr_reg[8]_i_1_n_6\,
      O(0) => \bitTmr_reg[8]_i_1_n_7\,
      S(3 downto 0) => bitTmr_reg(11 downto 8)
    );
\bitTmr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \bitTmr_reg[8]_i_1_n_6\,
      Q => bitTmr_reg(9),
      R => \bitTmr[0]_i_1_n_0\
    );
txBit_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \txState_reg_n_0_[1]\,
      I1 => \txState_reg_n_0_[0]\,
      O => dy
    );
txBit_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \txState_reg_n_0_[0]\,
      I1 => \txState_reg_n_0_[1]\,
      O => txBit_i_2_n_0
    );
txBit_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F002F2F0F002020"
    )
        port map (
      I0 => bitIndex_reg(0),
      I1 => bitIndex_reg(1),
      I2 => bitIndex_reg(3),
      I3 => txBit_i_4_n_0,
      I4 => bitIndex_reg(2),
      I5 => txBit_i_5_n_0,
      O => txBit_i_3_n_0
    );
txBit_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => txData(7),
      I1 => txData(6),
      I2 => bitIndex_reg(1),
      I3 => txData(5),
      I4 => bitIndex_reg(0),
      I5 => txData(4),
      O => txBit_i_4_n_0
    );
txBit_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => txData(3),
      I1 => txData(2),
      I2 => bitIndex_reg(1),
      I3 => bitIndex_reg(0),
      I4 => txData(1),
      O => txBit_i_5_n_0
    );
txBit_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => txBit_i_2_n_0,
      D => txBit_i_3_n_0,
      Q => tx_OBUF,
      S => dy
    );
\txData_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => Q(0),
      Q => txData(1),
      R => '0'
    );
\txData_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => Q(1),
      Q => txData(2),
      R => '0'
    );
\txData_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => Q(2),
      Q => txData(3),
      R => '0'
    );
\txData_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => Q(3),
      Q => txData(4),
      R => '0'
    );
\txData_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => Q(4),
      Q => txData(5),
      R => '0'
    );
\txData_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => Q(5),
      Q => txData(6),
      R => '0'
    );
\txData_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => E(0),
      D => Q(6),
      Q => txData(7),
      R => '0'
    );
\txState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \txState[0]_i_2_n_0\,
      I1 => bitIndex_reg(28),
      I2 => bitIndex_reg(8),
      I3 => \txState[0]_i_3_n_0\,
      I4 => \txState[0]_i_4_n_0\,
      I5 => \txState_reg_n_0_[0]\,
      O => \txState[0]_i_1_n_0\
    );
\txState[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \txState[0]_i_5_n_0\,
      I1 => \txState[0]_i_6_n_0\,
      I2 => \txState[0]_i_7_n_0\,
      I3 => \txState[0]_i_8_n_0\,
      O => \txState[0]_i_2_n_0\
    );
\txState[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => bitIndex_reg(15),
      I1 => bitIndex_reg(12),
      I2 => bitIndex_reg(17),
      I3 => bitIndex_reg(21),
      I4 => bitIndex_reg(2),
      I5 => bitIndex_reg(1),
      O => \txState[0]_i_3_n_0\
    );
\txState[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECECECECECECEFE"
    )
        port map (
      I0 => E(0),
      I1 => \txState_reg_n_0_[0]\,
      I2 => \txState_reg_n_0_[1]\,
      I3 => \txState[0]_i_9_n_0\,
      I4 => \txState[1]_i_2_n_0\,
      I5 => \txState[1]_i_3_n_0\,
      O => \txState[0]_i_4_n_0\
    );
\txState[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => bitIndex_reg(18),
      I1 => bitIndex_reg(20),
      I2 => bitIndex_reg(4),
      I3 => bitIndex_reg(25),
      I4 => bitIndex_reg(6),
      I5 => bitIndex_reg(19),
      O => \txState[0]_i_5_n_0\
    );
\txState[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => bitIndex_reg(22),
      I1 => bitIndex_reg(7),
      I2 => bitIndex_reg(14),
      I3 => bitIndex_reg(26),
      I4 => bitIndex_reg(0),
      I5 => bitIndex_reg(23),
      O => \txState[0]_i_6_n_0\
    );
\txState[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => bitIndex_reg(3),
      I1 => bitIndex_reg(11),
      I2 => bitIndex_reg(30),
      I3 => \txState_reg_n_0_[1]\,
      I4 => bitIndex_reg(27),
      I5 => bitIndex_reg(10),
      O => \txState[0]_i_7_n_0\
    );
\txState[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => bitIndex_reg(29),
      I1 => bitIndex_reg(9),
      I2 => bitIndex_reg(24),
      I3 => bitIndex_reg(13),
      I4 => bitIndex_reg(5),
      I5 => bitIndex_reg(16),
      O => \txState[0]_i_8_n_0\
    );
\txState[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => bitTmr_reg(6),
      I1 => bitTmr_reg(4),
      O => \txState[0]_i_9_n_0\
    );
\txState[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFDFFFF0000"
    )
        port map (
      I0 => bitTmr_reg(4),
      I1 => bitTmr_reg(6),
      I2 => \txState[1]_i_2_n_0\,
      I3 => \txState[1]_i_3_n_0\,
      I4 => \txState_reg_n_0_[0]\,
      I5 => \txState_reg_n_0_[1]\,
      O => \txState[1]_i_1_n_0\
    );
\txState[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => bitTmr_reg(9),
      I1 => bitTmr_reg(10),
      I2 => bitTmr_reg(0),
      I3 => bitTmr_reg(13),
      I4 => bitTmr_reg(1),
      I5 => bitTmr_reg(11),
      O => \txState[1]_i_2_n_0\
    );
\txState[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => bitTmr_reg(5),
      I1 => bitTmr_reg(12),
      I2 => bitTmr_reg(8),
      I3 => bitTmr_reg(7),
      I4 => bitTmr_reg(3),
      I5 => bitTmr_reg(2),
      O => \txState[1]_i_3_n_0\
    );
\txState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \txState[0]_i_1_n_0\,
      Q => \txState_reg_n_0_[0]\,
      R => '0'
    );
\txState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \txState[1]_i_1_n_0\,
      Q => \txState_reg_n_0_[1]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bin2bcd is
  port (
    \FSM_sequential_stringState_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_stringState_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_stringState_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    state_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tempStr_reg[6][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tempStr_reg[15][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tempStr_reg[7][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tempStr_reg[8][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tempStr_reg[9][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tempStr_reg[10][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tempStr_reg[11][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tempStr_reg[12][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tempStr_reg[13][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tempStr_reg[4][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tempStr_reg[5][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tempStr_reg[0][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tempStr_reg[2][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tempStr_reg[3][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \tempStr_reg[1][3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    start_ascii_conv_reg : out STD_LOGIC;
    \out_string_count_reg[2]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    in0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \completion_reg[0]\ : in STD_LOGIC;
    done_sort : in STD_LOGIC;
    \FSM_sequential_stringState_reg[1]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \out_string_count_reg[0]\ : in STD_LOGIC;
    start_ascii_conv_reg_0 : in STD_LOGIC;
    \out_string_count_reg[3]\ : in STD_LOGIC;
    \out_string_count_reg[3]_0\ : in STD_LOGIC;
    \dat_reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_data : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset_IBUF : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC
  );
end bin2bcd;

architecture STRUCTURE of bin2bcd is
  signal \FSM_sequential_stringState[2]_i_3_n_0\ : STD_LOGIC;
  signal \bcd0_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \bcd0_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \bcd0_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \bcd0_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \bcd0_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \bcd0_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \bcd0_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \bcd0_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal bcd1_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bcd1_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \bcd1_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \bcd1_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \bcd1_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal done_tick : STD_LOGIC;
  signal n_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \n_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \n_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \n_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \n_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \n_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal out_string_count0 : STD_LOGIC;
  signal \out_string_count[4]_i_5_n_0\ : STD_LOGIC;
  signal p2s_next : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \p2s_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \p2s_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \p2s_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \p2s_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \p2s_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \p2s_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \p2s_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \p2s_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \p2s_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \^state_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \state_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \state_reg[1]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bcd0_reg[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bcd0_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bcd0_reg[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bcd0_reg[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bcd1_reg[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bcd1_reg[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bcd1_reg[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \n_reg[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \n_reg[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \p2s_reg[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \p2s_reg[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \p2s_reg[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \p2s_reg[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \p2s_reg[7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \state_reg[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \state_reg[1]_i_1\ : label is "soft_lutpair5";
begin
  state_reg(0) <= \^state_reg\(0);
\FSM_sequential_stringState[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A2CCCC"
    )
        port map (
      I0 => \out_string_count_reg[2]\,
      I1 => \out\(0),
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \FSM_sequential_stringState[2]_i_3_n_0\,
      O => \FSM_sequential_stringState_reg[0]\
    );
\FSM_sequential_stringState[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"06AA"
    )
        port map (
      I0 => \out\(1),
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => \FSM_sequential_stringState[2]_i_3_n_0\,
      O => \FSM_sequential_stringState_reg[1]\
    );
\FSM_sequential_stringState[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04AA"
    )
        port map (
      I0 => \out\(2),
      I1 => \out\(1),
      I2 => \out_string_count_reg[2]\,
      I3 => \FSM_sequential_stringState[2]_i_3_n_0\,
      O => \FSM_sequential_stringState_reg[2]\
    );
\FSM_sequential_stringState[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05EA05EF05EA05EA"
    )
        port map (
      I0 => \out\(1),
      I1 => done_tick,
      I2 => \out\(0),
      I3 => \out\(2),
      I4 => \completion_reg[0]\,
      I5 => done_sort,
      O => \FSM_sequential_stringState[2]_i_3_n_0\
    );
\bcd0_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg\(0),
      I1 => \p2s_reg_reg_n_0_[7]\,
      O => \bcd0_reg[0]_i_1_n_0\
    );
\bcd0_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A082828"
    )
        port map (
      I0 => \^state_reg\(0),
      I1 => \bcd0_reg_reg_n_0_[3]\,
      I2 => \bcd0_reg_reg_n_0_[0]\,
      I3 => \bcd0_reg_reg_n_0_[1]\,
      I4 => \bcd0_reg_reg_n_0_[2]\,
      O => \bcd0_reg[1]_i_1_n_0\
    );
\bcd0_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88228808"
    )
        port map (
      I0 => \^state_reg\(0),
      I1 => \bcd0_reg_reg_n_0_[1]\,
      I2 => \bcd0_reg_reg_n_0_[2]\,
      I3 => \bcd0_reg_reg_n_0_[0]\,
      I4 => \bcd0_reg_reg_n_0_[3]\,
      O => \bcd0_reg[2]_i_1_n_0\
    );
\bcd0_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080808A0"
    )
        port map (
      I0 => \^state_reg\(0),
      I1 => \bcd0_reg_reg_n_0_[3]\,
      I2 => \bcd0_reg_reg_n_0_[2]\,
      I3 => \bcd0_reg_reg_n_0_[1]\,
      I4 => \bcd0_reg_reg_n_0_[0]\,
      O => \bcd0_reg[3]_i_1_n_0\
    );
\bcd0_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \bcd0_reg[0]_i_1_n_0\,
      Q => \bcd0_reg_reg_n_0_[0]\
    );
\bcd0_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \bcd0_reg[1]_i_1_n_0\,
      Q => \bcd0_reg_reg_n_0_[1]\
    );
\bcd0_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \bcd0_reg[2]_i_1_n_0\,
      Q => \bcd0_reg_reg_n_0_[2]\
    );
\bcd0_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \bcd0_reg[3]_i_1_n_0\,
      Q => \bcd0_reg_reg_n_0_[3]\
    );
\bcd1_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222A8880"
    )
        port map (
      I0 => \^state_reg\(0),
      I1 => \bcd0_reg_reg_n_0_[2]\,
      I2 => \bcd0_reg_reg_n_0_[1]\,
      I3 => \bcd0_reg_reg_n_0_[0]\,
      I4 => \bcd0_reg_reg_n_0_[3]\,
      O => bcd1_next(0)
    );
\bcd1_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A082828"
    )
        port map (
      I0 => \^state_reg\(0),
      I1 => \bcd1_reg_reg_n_0_[3]\,
      I2 => \bcd1_reg_reg_n_0_[0]\,
      I3 => \bcd1_reg_reg_n_0_[1]\,
      I4 => \bcd1_reg_reg_n_0_[2]\,
      O => bcd1_next(1)
    );
\bcd1_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88228808"
    )
        port map (
      I0 => \^state_reg\(0),
      I1 => \bcd1_reg_reg_n_0_[1]\,
      I2 => \bcd1_reg_reg_n_0_[2]\,
      I3 => \bcd1_reg_reg_n_0_[0]\,
      I4 => \bcd1_reg_reg_n_0_[3]\,
      O => bcd1_next(2)
    );
\bcd1_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"080808A0"
    )
        port map (
      I0 => \^state_reg\(0),
      I1 => \bcd1_reg_reg_n_0_[3]\,
      I2 => \bcd1_reg_reg_n_0_[2]\,
      I3 => \bcd1_reg_reg_n_0_[1]\,
      I4 => \bcd1_reg_reg_n_0_[0]\,
      O => bcd1_next(3)
    );
\bcd1_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => bcd1_next(0),
      Q => \bcd1_reg_reg_n_0_[0]\
    );
\bcd1_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => bcd1_next(1),
      Q => \bcd1_reg_reg_n_0_[1]\
    );
\bcd1_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => bcd1_next(2),
      Q => \bcd1_reg_reg_n_0_[2]\
    );
\bcd1_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => bcd1_next(3),
      Q => \bcd1_reg_reg_n_0_[3]\
    );
\n_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"585A"
    )
        port map (
      I0 => n_reg(0),
      I1 => done_tick,
      I2 => \^state_reg\(0),
      I3 => start_ascii_conv_reg_0,
      O => \n_reg[0]_i_1_n_0\
    );
\n_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B484B4B4"
    )
        port map (
      I0 => n_reg(0),
      I1 => \^state_reg\(0),
      I2 => n_reg(1),
      I3 => done_tick,
      I4 => start_ascii_conv_reg_0,
      O => \n_reg[1]_i_1_n_0\
    );
\n_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBF0BB00000F00"
    )
        port map (
      I0 => done_tick,
      I1 => start_ascii_conv_reg_0,
      I2 => n_reg(1),
      I3 => \^state_reg\(0),
      I4 => n_reg(0),
      I5 => n_reg(2),
      O => \n_reg[2]_i_1_n_0\
    );
\n_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEE3EE"
    )
        port map (
      I0 => \n_reg[3]_i_2_n_0\,
      I1 => n_reg(3),
      I2 => n_reg(1),
      I3 => \^state_reg\(0),
      I4 => n_reg(0),
      I5 => n_reg(2),
      O => \n_reg[3]_i_1_n_0\
    );
\n_reg[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => start_ascii_conv_reg_0,
      I1 => \^state_reg\(0),
      I2 => done_tick,
      O => \n_reg[3]_i_2_n_0\
    );
\n_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \n_reg[0]_i_1_n_0\,
      Q => n_reg(0)
    );
\n_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \n_reg[1]_i_1_n_0\,
      Q => n_reg(1)
    );
\n_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \n_reg[2]_i_1_n_0\,
      Q => n_reg(2)
    );
\n_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \n_reg[3]_i_1_n_0\,
      Q => n_reg(3)
    );
\out_string_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A8A8A8A8A8A8"
    )
        port map (
      I0 => \FSM_sequential_stringState_reg[1]_0\,
      I1 => out_string_count0,
      I2 => \out\(0),
      I3 => Q(4),
      I4 => \out_string_count_reg[0]\,
      I5 => Q(3),
      O => E(0)
    );
\out_string_count[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFE0000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[2]\,
      I1 => \bcd0_reg_reg_n_0_[1]\,
      I2 => \bcd0_reg_reg_n_0_[0]\,
      I3 => \bcd0_reg_reg_n_0_[3]\,
      I4 => \out_string_count[4]_i_5_n_0\,
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => out_string_count0
    );
\out_string_count[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \bcd1_reg_reg_n_0_[2]\,
      I1 => \bcd1_reg_reg_n_0_[1]\,
      I2 => \bcd1_reg_reg_n_0_[0]\,
      O => \out_string_count[4]_i_5_n_0\
    );
\p2s_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \p2s_reg_reg_n_0_[0]\,
      I1 => \^state_reg\(0),
      I2 => out_data(0),
      O => p2s_next(1)
    );
\p2s_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \p2s_reg_reg_n_0_[1]\,
      I1 => \^state_reg\(0),
      I2 => out_data(1),
      O => p2s_next(2)
    );
\p2s_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \p2s_reg_reg_n_0_[2]\,
      I1 => \^state_reg\(0),
      I2 => out_data(2),
      O => p2s_next(3)
    );
\p2s_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg\(0),
      I1 => \p2s_reg_reg_n_0_[3]\,
      O => p2s_next(4)
    );
\p2s_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg\(0),
      I1 => \p2s_reg_reg_n_0_[4]\,
      O => p2s_next(5)
    );
\p2s_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg\(0),
      I1 => \p2s_reg_reg_n_0_[5]\,
      O => p2s_next(6)
    );
\p2s_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => done_tick,
      I1 => start_ascii_conv_reg_0,
      I2 => \^state_reg\(0),
      O => \p2s_reg[7]_i_1_n_0\
    );
\p2s_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^state_reg\(0),
      I1 => \p2s_reg_reg_n_0_[6]\,
      O => p2s_next(7)
    );
\p2s_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \dat_reg_reg[0]\(0),
      Q => \p2s_reg_reg_n_0_[0]\
    );
\p2s_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => p2s_next(1),
      Q => \p2s_reg_reg_n_0_[1]\
    );
\p2s_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => p2s_next(2),
      Q => \p2s_reg_reg_n_0_[2]\
    );
\p2s_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => p2s_next(3),
      Q => \p2s_reg_reg_n_0_[3]\
    );
\p2s_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => p2s_next(4),
      Q => \p2s_reg_reg_n_0_[4]\
    );
\p2s_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => p2s_next(5),
      Q => \p2s_reg_reg_n_0_[5]\
    );
\p2s_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => p2s_next(6),
      Q => \p2s_reg_reg_n_0_[6]\
    );
\p2s_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \p2s_reg[7]_i_1_n_0\,
      CLR => reset_IBUF,
      D => p2s_next(7),
      Q => \p2s_reg_reg_n_0_[7]\
    );
start_ascii_conv_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDF00000010"
    )
        port map (
      I0 => done_tick,
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => reset_IBUF,
      I5 => start_ascii_conv_reg_0,
      O => start_ascii_conv_reg
    );
\state_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54045454"
    )
        port map (
      I0 => done_tick,
      I1 => start_ascii_conv_reg_0,
      I2 => \^state_reg\(0),
      I3 => \state_reg[1]_i_2_n_0\,
      I4 => \state_reg[1]_i_3_n_0\,
      O => \state_reg[0]_i_1_n_0\
    );
\state_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8C88"
    )
        port map (
      I0 => done_tick,
      I1 => \^state_reg\(0),
      I2 => \state_reg[1]_i_2_n_0\,
      I3 => \state_reg[1]_i_3_n_0\,
      O => \state_reg[1]_i_1_n_0\
    );
\state_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0FFFFBBE0BBEE"
    )
        port map (
      I0 => n_reg(2),
      I1 => n_reg(0),
      I2 => done_tick,
      I3 => \^state_reg\(0),
      I4 => start_ascii_conv_reg_0,
      I5 => n_reg(1),
      O => \state_reg[1]_i_2_n_0\
    );
\state_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001000000010FFEF"
    )
        port map (
      I0 => n_reg(2),
      I1 => n_reg(0),
      I2 => \^state_reg\(0),
      I3 => n_reg(1),
      I4 => n_reg(3),
      I5 => \n_reg[3]_i_2_n_0\,
      O => \state_reg[1]_i_3_n_0\
    );
\state_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \state_reg[0]_i_1_n_0\,
      Q => \^state_reg\(0)
    );
\state_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \state_reg[1]_i_1_n_0\,
      Q => done_tick
    );
\tempStr[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000004"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[0]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => \tempStr_reg[0][3]\(0)
    );
\tempStr[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000004"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => \tempStr_reg[0][3]\(1)
    );
\tempStr[0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000004"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[2]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => \tempStr_reg[0][3]\(2)
    );
\tempStr[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000004"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[3]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => \tempStr_reg[0][3]\(3)
    );
\tempStr[10][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => \tempStr_reg[10][3]\(0)
    );
\tempStr[10][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[1]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => \tempStr_reg[10][3]\(1)
    );
\tempStr[10][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[2]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => \tempStr_reg[10][3]\(2)
    );
\tempStr[10][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[3]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => \tempStr_reg[10][3]\(3)
    );
\tempStr[11][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => \tempStr_reg[11][3]\(0)
    );
\tempStr[11][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[1]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => \tempStr_reg[11][3]\(1)
    );
\tempStr[11][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[2]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => \tempStr_reg[11][3]\(2)
    );
\tempStr[11][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[3]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => \tempStr_reg[11][3]\(3)
    );
\tempStr[12][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => \tempStr_reg[12][3]\(0)
    );
\tempStr[12][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[1]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => \tempStr_reg[12][3]\(1)
    );
\tempStr[12][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[2]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => \tempStr_reg[12][3]\(2)
    );
\tempStr[12][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[3]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => \tempStr_reg[12][3]\(3)
    );
\tempStr[13][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => \tempStr_reg[13][3]\(0)
    );
\tempStr[13][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[1]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => \tempStr_reg[13][3]\(1)
    );
\tempStr[13][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[2]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => \tempStr_reg[13][3]\(2)
    );
\tempStr[13][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[3]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => \tempStr_reg[13][3]\(3)
    );
\tempStr[14][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => D(0)
    );
\tempStr[14][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[1]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => D(1)
    );
\tempStr[14][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[2]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => D(2)
    );
\tempStr[14][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[3]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => D(3)
    );
\tempStr[15][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => \tempStr_reg[15][3]\(0)
    );
\tempStr[15][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[1]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => \tempStr_reg[15][3]\(1)
    );
\tempStr[15][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[2]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => \tempStr_reg[15][3]\(2)
    );
\tempStr[15][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[3]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => \tempStr_reg[15][3]\(3)
    );
\tempStr[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000040"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[0]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => \tempStr_reg[1][3]\(0)
    );
\tempStr[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000040"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => \tempStr_reg[1][3]\(1)
    );
\tempStr[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000040"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[2]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => \tempStr_reg[1][3]\(2)
    );
\tempStr[1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000040"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[3]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => \tempStr_reg[1][3]\(3)
    );
\tempStr[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000400"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[0]\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => \tempStr_reg[2][3]\(0)
    );
\tempStr[2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000400"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => \tempStr_reg[2][3]\(1)
    );
\tempStr[2][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000400"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[2]\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => \tempStr_reg[2][3]\(2)
    );
\tempStr[2][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000400"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[3]\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => \tempStr_reg[2][3]\(3)
    );
\tempStr[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00004000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[0]\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => \tempStr_reg[3][3]\(0)
    );
\tempStr[3][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00004000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => \tempStr_reg[3][3]\(1)
    );
\tempStr[3][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00004000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[2]\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => \tempStr_reg[3][3]\(2)
    );
\tempStr[3][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00004000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[3]\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => \tempStr_reg[3][3]\(3)
    );
\tempStr[4][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000400"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[0]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => \tempStr_reg[4][3]\(0)
    );
\tempStr[4][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000400"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => \tempStr_reg[4][3]\(1)
    );
\tempStr[4][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000400"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[2]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => \tempStr_reg[4][3]\(2)
    );
\tempStr[4][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000400"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[3]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => \tempStr_reg[4][3]\(3)
    );
\tempStr[5][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00004000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[0]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => \tempStr_reg[5][3]\(0)
    );
\tempStr[5][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00004000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => \tempStr_reg[5][3]\(1)
    );
\tempStr[5][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00004000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[2]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => \tempStr_reg[5][3]\(2)
    );
\tempStr[5][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00004000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[3]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => \tempStr_reg[5][3]\(3)
    );
\tempStr[6][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF04000000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[0]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => \tempStr_reg[6][3]\(0)
    );
\tempStr[6][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF04000000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => \tempStr_reg[6][3]\(1)
    );
\tempStr[6][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF04000000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[2]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => \tempStr_reg[6][3]\(2)
    );
\tempStr[6][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF04000000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[3]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => \tempStr_reg[6][3]\(3)
    );
\tempStr[7][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[0]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => \tempStr_reg[7][3]\(0)
    );
\tempStr[7][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[1]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => \tempStr_reg[7][3]\(1)
    );
\tempStr[7][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[2]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => \tempStr_reg[7][3]\(2)
    );
\tempStr[7][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF40000000"
    )
        port map (
      I0 => \out_string_count_reg[3]_0\,
      I1 => \bcd0_reg_reg_n_0_[3]\,
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => \tempStr_reg[7][3]\(3)
    );
\tempStr[8][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => \tempStr_reg[8][3]\(0)
    );
\tempStr[8][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[1]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => \tempStr_reg[8][3]\(1)
    );
\tempStr[8][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[2]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => \tempStr_reg[8][3]\(2)
    );
\tempStr[8][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[3]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => \tempStr_reg[8][3]\(3)
    );
\tempStr[9][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[0]\,
      O => \tempStr_reg[9][3]\(0)
    );
\tempStr[9][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[1]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[1]\,
      O => \tempStr_reg[9][3]\(1)
    );
\tempStr[9][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[2]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[2]\,
      O => \tempStr_reg[9][3]\(2)
    );
\tempStr[9][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => \bcd0_reg_reg_n_0_[3]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => \out_string_count_reg[3]\,
      I5 => \bcd1_reg_reg_n_0_[3]\,
      O => \tempStr_reg[9][3]\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sorting_algo is
  port (
    \p2s_reg_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    request_out_reg : out STD_LOGIC;
    done_sort : out STD_LOGIC;
    state_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_IBUF : in STD_LOGIC;
    request_out_reg_0 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset_IBUF : in STD_LOGIC;
    \completion_reg[0]\ : in STD_LOGIC;
    clk_IBUF_BUFG : in STD_LOGIC
  );
end sorting_algo;

architecture STRUCTURE of sorting_algo is
  signal \FSM_sequential_state_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_22_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_24_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_25_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_26_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_27_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_28_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_29_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_30_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_31_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_32_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_33_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_34_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_35_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_36_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_37_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_38_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[0]_i_23_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_reg_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal bin : STD_LOGIC_VECTOR ( 0 to 0 );
  signal block_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \block_reg[31]_i_10_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_11_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_12_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_14_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_15_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_16_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_17_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_18_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_19_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_20_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_21_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_23_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_24_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_25_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_26_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_27_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_28_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_29_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_30_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_31_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_32_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_33_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_34_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_35_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_36_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal \block_reg[31]_i_9_n_0\ : STD_LOGIC;
  signal \block_reg_reg[31]_i_13_n_0\ : STD_LOGIC;
  signal \block_reg_reg[31]_i_22_n_0\ : STD_LOGIC;
  signal \block_reg_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \block_reg_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \block_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \dat_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \dat_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \dat_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \dat_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \dat_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \dat_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \dat_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \dat_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \dat_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \dat_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \dat_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \dat_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \dat_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \dat_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \dat_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \dat_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \dat_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \dat_reg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \dat_reg_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \dat_reg_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \dat_reg_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \dat_reg_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \dat_reg_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \dat_reg_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \dat_reg_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \dat_reg_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \dat_reg_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \dat_reg_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \dat_reg_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal done_reg_i_1_n_0 : STD_LOGIC;
  signal \^done_sort\ : STD_LOGIC;
  signal hi_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \hi_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \hi_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \hi_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \hi_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \hi_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \hi_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \hi_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \hi_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \hi_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \hi_reg[19]_i_4_n_0\ : STD_LOGIC;
  signal \hi_reg[19]_i_5_n_0\ : STD_LOGIC;
  signal \hi_reg[19]_i_6_n_0\ : STD_LOGIC;
  signal \hi_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \hi_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \hi_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \hi_reg[23]_i_6_n_0\ : STD_LOGIC;
  signal \hi_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \hi_reg[27]_i_4_n_0\ : STD_LOGIC;
  signal \hi_reg[27]_i_5_n_0\ : STD_LOGIC;
  signal \hi_reg[27]_i_6_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_10_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_11_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_12_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_13_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_15_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_16_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_17_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_18_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_19_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_20_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_21_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_22_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_24_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_25_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_26_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_27_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_28_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_29_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_30_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_31_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_32_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_33_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_34_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_35_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_36_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_37_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_38_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_39_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal \hi_reg[31]_i_9_n_0\ : STD_LOGIC;
  signal \hi_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \hi_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \hi_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \hi_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \hi_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \hi_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \hi_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \hi_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \hi_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \hi_reg_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \hi_reg_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \hi_reg_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \hi_reg_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \hi_reg_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \hi_reg_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \hi_reg_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \hi_reg_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \hi_reg_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \hi_reg_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \hi_reg_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \hi_reg_reg[19]_i_2_n_4\ : STD_LOGIC;
  signal \hi_reg_reg[19]_i_2_n_5\ : STD_LOGIC;
  signal \hi_reg_reg[19]_i_2_n_6\ : STD_LOGIC;
  signal \hi_reg_reg[19]_i_2_n_7\ : STD_LOGIC;
  signal \hi_reg_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \hi_reg_reg[23]_i_2_n_4\ : STD_LOGIC;
  signal \hi_reg_reg[23]_i_2_n_5\ : STD_LOGIC;
  signal \hi_reg_reg[23]_i_2_n_6\ : STD_LOGIC;
  signal \hi_reg_reg[23]_i_2_n_7\ : STD_LOGIC;
  signal \hi_reg_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \hi_reg_reg[27]_i_2_n_4\ : STD_LOGIC;
  signal \hi_reg_reg[27]_i_2_n_5\ : STD_LOGIC;
  signal \hi_reg_reg[27]_i_2_n_6\ : STD_LOGIC;
  signal \hi_reg_reg[27]_i_2_n_7\ : STD_LOGIC;
  signal \hi_reg_reg[31]_i_14_n_0\ : STD_LOGIC;
  signal \hi_reg_reg[31]_i_23_n_0\ : STD_LOGIC;
  signal \hi_reg_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \hi_reg_reg[31]_i_4_n_4\ : STD_LOGIC;
  signal \hi_reg_reg[31]_i_4_n_5\ : STD_LOGIC;
  signal \hi_reg_reg[31]_i_4_n_6\ : STD_LOGIC;
  signal \hi_reg_reg[31]_i_4_n_7\ : STD_LOGIC;
  signal \hi_reg_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \hi_reg_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \hi_reg_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \hi_reg_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \hi_reg_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \hi_reg_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \hi_reg_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \hi_reg_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \hi_reg_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \hi_reg_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \hi_reg_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal i_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_15_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_16_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_17_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_18_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \i_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \i_reg_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \i_reg_reg[3]_i_5_n_1\ : STD_LOGIC;
  signal \i_reg_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal it_reg : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \it_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_10_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_11_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_12_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_13_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_18_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_19_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_20_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_21_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_22_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_23_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_24_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_25_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_27_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_28_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_29_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_30_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_31_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_32_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_33_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_34_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_35_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_36_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_37_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_38_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_39_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_40_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_41_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal \it_reg[31]_i_9_n_0\ : STD_LOGIC;
  signal \it_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \it_reg_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \it_reg_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \it_reg_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \it_reg_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \it_reg_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \it_reg_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \it_reg_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \it_reg_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \it_reg_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \it_reg_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \it_reg_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \it_reg_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \it_reg_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \it_reg_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal \it_reg_reg[20]_i_2_n_7\ : STD_LOGIC;
  signal \it_reg_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \it_reg_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \it_reg_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \it_reg_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \it_reg_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \it_reg_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \it_reg_reg[28]_i_2_n_4\ : STD_LOGIC;
  signal \it_reg_reg[28]_i_2_n_5\ : STD_LOGIC;
  signal \it_reg_reg[28]_i_2_n_6\ : STD_LOGIC;
  signal \it_reg_reg[28]_i_2_n_7\ : STD_LOGIC;
  signal \it_reg_reg[31]_i_17_n_0\ : STD_LOGIC;
  signal \it_reg_reg[31]_i_26_n_0\ : STD_LOGIC;
  signal \it_reg_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \it_reg_reg[31]_i_4_n_5\ : STD_LOGIC;
  signal \it_reg_reg[31]_i_4_n_6\ : STD_LOGIC;
  signal \it_reg_reg[31]_i_4_n_7\ : STD_LOGIC;
  signal \it_reg_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \it_reg_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \it_reg_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \it_reg_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \it_reg_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \it_reg_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \it_reg_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \it_reg_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \it_reg_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \it_reg_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \it_reg_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal j_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \j_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \j_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \j_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_15_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_16_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_17_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_18_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_20_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_21_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_22_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_23_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_24_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_25_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_26_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_27_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_28_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_29_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_30_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_31_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_32_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_33_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_34_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_35_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \j_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \j_reg_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \j_reg_reg[3]_i_19_n_0\ : STD_LOGIC;
  signal \j_reg_reg[3]_i_3_n_2\ : STD_LOGIC;
  signal \j_reg_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \k_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \k_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \k_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_15_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_16_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_17_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_18_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_19_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_20_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_21_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_22_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_23_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_24_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \k_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \k_reg_reg[3]_i_14_n_0\ : STD_LOGIC;
  signal \k_reg_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \k_reg_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \k_reg_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \k_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \k_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \k_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \k_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal lo_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \lo_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \mem[0][0]_i_4_n_0\ : STD_LOGIC;
  signal \mem[0][0]_i_5_n_0\ : STD_LOGIC;
  signal \mem[0][0]_i_6_n_0\ : STD_LOGIC;
  signal \mem[0][0]_i_7_n_0\ : STD_LOGIC;
  signal \mem[0][1]_i_4_n_0\ : STD_LOGIC;
  signal \mem[0][1]_i_5_n_0\ : STD_LOGIC;
  signal \mem[0][1]_i_6_n_0\ : STD_LOGIC;
  signal \mem[0][1]_i_7_n_0\ : STD_LOGIC;
  signal \mem[0][2]_i_4_n_0\ : STD_LOGIC;
  signal \mem[0][2]_i_5_n_0\ : STD_LOGIC;
  signal \mem[0][2]_i_6_n_0\ : STD_LOGIC;
  signal \mem[0][2]_i_7_n_0\ : STD_LOGIC;
  signal \mem[0][3]_i_10_n_0\ : STD_LOGIC;
  signal \mem[0][3]_i_11_n_0\ : STD_LOGIC;
  signal \mem[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[0][3]_i_3_n_0\ : STD_LOGIC;
  signal \mem[0][3]_i_4_n_0\ : STD_LOGIC;
  signal \mem[0][3]_i_5_n_0\ : STD_LOGIC;
  signal \mem[0][3]_i_8_n_0\ : STD_LOGIC;
  signal \mem[0][3]_i_9_n_0\ : STD_LOGIC;
  signal \mem[0]_16\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[0]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[10][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[10][3]_i_3_n_0\ : STD_LOGIC;
  signal \mem[10]_6\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[11][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[11]_5\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[12][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[12][3]_i_3_n_0\ : STD_LOGIC;
  signal \mem[12]_4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[13][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[13][3]_i_3_n_0\ : STD_LOGIC;
  signal \mem[13]_3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[14][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[14][3]_i_3_n_0\ : STD_LOGIC;
  signal \mem[14]_2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[15][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[15]_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[1]_15\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[2][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[2]_14\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[3][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[3][3]_i_3_n_0\ : STD_LOGIC;
  signal \mem[3]_13\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[4][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[4][3]_i_3_n_0\ : STD_LOGIC;
  signal \mem[4]_12\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[5][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[5][3]_i_3_n_0\ : STD_LOGIC;
  signal \mem[5]_11\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[6][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[6][3]_i_3_n_0\ : STD_LOGIC;
  signal \mem[6]_10\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[7][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[7]_9\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[8][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[8][3]_i_3_n_0\ : STD_LOGIC;
  signal \mem[8]_8\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem[9][3]_i_1_n_0\ : STD_LOGIC;
  signal \mem[9][3]_i_3_n_0\ : STD_LOGIC;
  signal \mem[9]_7\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[0][0]_i_3_n_0\ : STD_LOGIC;
  signal \mem_reg[0][1]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[0][1]_i_3_n_0\ : STD_LOGIC;
  signal \mem_reg[0][2]_i_2_n_0\ : STD_LOGIC;
  signal \mem_reg[0][2]_i_3_n_0\ : STD_LOGIC;
  signal \mem_reg[0][3]_i_6_n_0\ : STD_LOGIC;
  signal \mem_reg[0][3]_i_7_n_0\ : STD_LOGIC;
  signal \mem_reg[0]_17\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[10]_27\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[11]_28\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[12]_29\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[13]_30\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[14]_31\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[15]_32\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[1]_18\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[2]_19\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[3]_20\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[4]_21\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[5]_22\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[6]_23\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[7]_24\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[8]_25\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mem_reg[9]_26\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mid_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \mid_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \mid_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \mid_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \mid_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \mid_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \mid_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \mid_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \mid_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \mid_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \mid_reg[19]_i_4_n_0\ : STD_LOGIC;
  signal \mid_reg[19]_i_5_n_0\ : STD_LOGIC;
  signal \mid_reg[19]_i_6_n_0\ : STD_LOGIC;
  signal \mid_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \mid_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \mid_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \mid_reg[23]_i_6_n_0\ : STD_LOGIC;
  signal \mid_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \mid_reg[27]_i_4_n_0\ : STD_LOGIC;
  signal \mid_reg[27]_i_5_n_0\ : STD_LOGIC;
  signal \mid_reg[27]_i_6_n_0\ : STD_LOGIC;
  signal \mid_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \mid_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \mid_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \mid_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \mid_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \mid_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \mid_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \mid_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \mid_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \mid_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \mid_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \mid_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \mid_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \mid_reg__0\ : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \mid_reg_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \mid_reg_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \mid_reg_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \mid_reg_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \mid_reg_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \mid_reg_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \mid_reg_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \mid_reg_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \mid_reg_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \mid_reg_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \mid_reg_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \mid_reg_reg[19]_i_2_n_4\ : STD_LOGIC;
  signal \mid_reg_reg[19]_i_2_n_5\ : STD_LOGIC;
  signal \mid_reg_reg[19]_i_2_n_6\ : STD_LOGIC;
  signal \mid_reg_reg[19]_i_2_n_7\ : STD_LOGIC;
  signal \mid_reg_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \mid_reg_reg[23]_i_2_n_4\ : STD_LOGIC;
  signal \mid_reg_reg[23]_i_2_n_5\ : STD_LOGIC;
  signal \mid_reg_reg[23]_i_2_n_6\ : STD_LOGIC;
  signal \mid_reg_reg[23]_i_2_n_7\ : STD_LOGIC;
  signal \mid_reg_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \mid_reg_reg[27]_i_2_n_4\ : STD_LOGIC;
  signal \mid_reg_reg[27]_i_2_n_5\ : STD_LOGIC;
  signal \mid_reg_reg[27]_i_2_n_6\ : STD_LOGIC;
  signal \mid_reg_reg[27]_i_2_n_7\ : STD_LOGIC;
  signal \mid_reg_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \mid_reg_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \mid_reg_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \mid_reg_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \mid_reg_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \mid_reg_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \mid_reg_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \mid_reg_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \mid_reg_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \mid_reg_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \mid_reg_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \mid_reg_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \mid_reg_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \mid_reg_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal \mid_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \mid_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \mid_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \mid_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal start_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \start_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \start_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \start_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \start_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \start_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \start_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \start_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \start_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \start_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \start_reg[19]_i_4_n_0\ : STD_LOGIC;
  signal \start_reg[19]_i_5_n_0\ : STD_LOGIC;
  signal \start_reg[19]_i_6_n_0\ : STD_LOGIC;
  signal \start_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \start_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \start_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \start_reg[23]_i_6_n_0\ : STD_LOGIC;
  signal \start_reg[27]_i_3_n_0\ : STD_LOGIC;
  signal \start_reg[27]_i_4_n_0\ : STD_LOGIC;
  signal \start_reg[27]_i_5_n_0\ : STD_LOGIC;
  signal \start_reg[27]_i_6_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_10_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_11_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_12_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_13_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_15_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_16_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_17_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_18_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_20_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_21_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_22_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_23_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_24_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_25_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_26_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_27_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_28_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_29_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal \start_reg[31]_i_9_n_0\ : STD_LOGIC;
  signal \start_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \start_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \start_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \start_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \start_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \start_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \start_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \start_reg_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \start_reg_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \start_reg_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \start_reg_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \start_reg_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \start_reg_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \start_reg_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \start_reg_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \start_reg_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \start_reg_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \start_reg_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \start_reg_reg[19]_i_2_n_4\ : STD_LOGIC;
  signal \start_reg_reg[19]_i_2_n_5\ : STD_LOGIC;
  signal \start_reg_reg[19]_i_2_n_6\ : STD_LOGIC;
  signal \start_reg_reg[19]_i_2_n_7\ : STD_LOGIC;
  signal \start_reg_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \start_reg_reg[23]_i_2_n_4\ : STD_LOGIC;
  signal \start_reg_reg[23]_i_2_n_5\ : STD_LOGIC;
  signal \start_reg_reg[23]_i_2_n_6\ : STD_LOGIC;
  signal \start_reg_reg[23]_i_2_n_7\ : STD_LOGIC;
  signal \start_reg_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \start_reg_reg[27]_i_2_n_4\ : STD_LOGIC;
  signal \start_reg_reg[27]_i_2_n_5\ : STD_LOGIC;
  signal \start_reg_reg[27]_i_2_n_6\ : STD_LOGIC;
  signal \start_reg_reg[27]_i_2_n_7\ : STD_LOGIC;
  signal \start_reg_reg[31]_i_14_n_0\ : STD_LOGIC;
  signal \start_reg_reg[31]_i_19_n_0\ : STD_LOGIC;
  signal \start_reg_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \start_reg_reg[31]_i_4_n_4\ : STD_LOGIC;
  signal \start_reg_reg[31]_i_4_n_5\ : STD_LOGIC;
  signal \start_reg_reg[31]_i_4_n_6\ : STD_LOGIC;
  signal \start_reg_reg[31]_i_4_n_7\ : STD_LOGIC;
  signal \start_reg_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \start_reg_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \start_reg_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \start_reg_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \start_reg_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \start_reg_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \start_reg_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \start_reg_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \start_reg_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \start_reg_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \start_reg_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal state_reg_0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state_reg_0 : signal is "yes";
  signal stringState0 : STD_LOGIC;
  signal \temp[0][0]_i_10_n_0\ : STD_LOGIC;
  signal \temp[0][0]_i_11_n_0\ : STD_LOGIC;
  signal \temp[0][0]_i_12_n_0\ : STD_LOGIC;
  signal \temp[0][0]_i_13_n_0\ : STD_LOGIC;
  signal \temp[0][0]_i_14_n_0\ : STD_LOGIC;
  signal \temp[0][0]_i_15_n_0\ : STD_LOGIC;
  signal \temp[0][0]_i_8_n_0\ : STD_LOGIC;
  signal \temp[0][0]_i_9_n_0\ : STD_LOGIC;
  signal \temp[0][1]_i_10_n_0\ : STD_LOGIC;
  signal \temp[0][1]_i_11_n_0\ : STD_LOGIC;
  signal \temp[0][1]_i_12_n_0\ : STD_LOGIC;
  signal \temp[0][1]_i_13_n_0\ : STD_LOGIC;
  signal \temp[0][1]_i_14_n_0\ : STD_LOGIC;
  signal \temp[0][1]_i_15_n_0\ : STD_LOGIC;
  signal \temp[0][1]_i_8_n_0\ : STD_LOGIC;
  signal \temp[0][1]_i_9_n_0\ : STD_LOGIC;
  signal \temp[0][2]_i_10_n_0\ : STD_LOGIC;
  signal \temp[0][2]_i_11_n_0\ : STD_LOGIC;
  signal \temp[0][2]_i_12_n_0\ : STD_LOGIC;
  signal \temp[0][2]_i_13_n_0\ : STD_LOGIC;
  signal \temp[0][2]_i_14_n_0\ : STD_LOGIC;
  signal \temp[0][2]_i_15_n_0\ : STD_LOGIC;
  signal \temp[0][2]_i_8_n_0\ : STD_LOGIC;
  signal \temp[0][2]_i_9_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_10_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_11_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_12_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_13_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_15_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_16_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_17_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_20_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_21_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_22_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_23_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_25_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_26_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_27_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_28_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_29_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_30_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_31_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_32_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_33_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_34_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_35_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_36_n_0\ : STD_LOGIC;
  signal \temp[0][3]_i_3_n_0\ : STD_LOGIC;
  signal \temp[10][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[11][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[12][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[13][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[14][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[15]0_in\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \temp[15][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[2][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[3][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[4][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[5][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[6][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[7][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[8][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp[9][3]_i_1_n_0\ : STD_LOGIC;
  signal \temp_reg[0][0]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[0][0]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[0][0]_i_5_n_0\ : STD_LOGIC;
  signal \temp_reg[0][0]_i_6_n_0\ : STD_LOGIC;
  signal \temp_reg[0][0]_i_7_n_0\ : STD_LOGIC;
  signal \temp_reg[0][1]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[0][1]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[0][1]_i_5_n_0\ : STD_LOGIC;
  signal \temp_reg[0][1]_i_6_n_0\ : STD_LOGIC;
  signal \temp_reg[0][1]_i_7_n_0\ : STD_LOGIC;
  signal \temp_reg[0][2]_i_2_n_0\ : STD_LOGIC;
  signal \temp_reg[0][2]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[0][2]_i_5_n_0\ : STD_LOGIC;
  signal \temp_reg[0][2]_i_6_n_0\ : STD_LOGIC;
  signal \temp_reg[0][2]_i_7_n_0\ : STD_LOGIC;
  signal \temp_reg[0][3]_i_14_n_0\ : STD_LOGIC;
  signal \temp_reg[0][3]_i_18_n_0\ : STD_LOGIC;
  signal \temp_reg[0][3]_i_19_n_0\ : STD_LOGIC;
  signal \temp_reg[0][3]_i_24_n_0\ : STD_LOGIC;
  signal \temp_reg[0][3]_i_4_n_0\ : STD_LOGIC;
  signal \temp_reg[0][3]_i_5_n_2\ : STD_LOGIC;
  signal \temp_reg[0][3]_i_6_n_1\ : STD_LOGIC;
  signal \temp_reg[0][3]_i_8_n_0\ : STD_LOGIC;
  signal \temp_reg[0][3]_i_9_n_0\ : STD_LOGIC;
  signal \temp_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[10][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[10][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[10][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[10][3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[11][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[11][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[11][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[11][3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[12][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[12][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[12][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[12][3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[13][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[13][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[13][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[13][3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[14][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[14][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[14][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[14][3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[15][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[15][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[15][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[15][3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[8][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[8][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[8][3]\ : STD_LOGIC;
  signal \temp_reg_n_0_[9][0]\ : STD_LOGIC;
  signal \temp_reg_n_0_[9][1]\ : STD_LOGIC;
  signal \temp_reg_n_0_[9][2]\ : STD_LOGIC;
  signal \temp_reg_n_0_[9][3]\ : STD_LOGIC;
  signal \NLW_FSM_sequential_state_reg_reg[0]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_FSM_sequential_state_reg_reg[0]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_state_reg_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_FSM_sequential_state_reg_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_state_reg_reg[0]_i_23_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_FSM_sequential_state_reg_reg[0]_i_23_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_state_reg_reg[0]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_FSM_sequential_state_reg_reg[0]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_block_reg_reg[31]_i_13_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_block_reg_reg[31]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_block_reg_reg[31]_i_22_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_block_reg_reg[31]_i_22_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_block_reg_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_block_reg_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_block_reg_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_block_reg_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hi_reg_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hi_reg_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hi_reg_reg[19]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hi_reg_reg[23]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hi_reg_reg[27]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hi_reg_reg[31]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hi_reg_reg[31]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hi_reg_reg[31]_i_23_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hi_reg_reg[31]_i_23_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hi_reg_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hi_reg_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hi_reg_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hi_reg_reg[31]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hi_reg_reg[31]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hi_reg_reg[3]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_hi_reg_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_i_reg_reg[3]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_i_reg_reg[3]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i_reg_reg[3]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i_reg_reg[3]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i_reg_reg[3]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_i_reg_reg[3]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_it_reg_reg[12]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_it_reg_reg[16]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_it_reg_reg[20]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_it_reg_reg[24]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_it_reg_reg[28]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_it_reg_reg[31]_i_17_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_it_reg_reg[31]_i_17_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_it_reg_reg[31]_i_26_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_it_reg_reg[31]_i_26_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_it_reg_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_it_reg_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_it_reg_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_it_reg_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_it_reg_reg[31]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_it_reg_reg[31]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_it_reg_reg[4]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_it_reg_reg[8]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_j_reg_reg[3]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_j_reg_reg[3]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_j_reg_reg[3]_i_19_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_j_reg_reg[3]_i_19_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_j_reg_reg[3]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_j_reg_reg[3]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_j_reg_reg[3]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_j_reg_reg[3]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_k_reg_reg[3]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_k_reg_reg[3]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_k_reg_reg[3]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_k_reg_reg[3]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_k_reg_reg[3]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_k_reg_reg[3]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_k_reg_reg[3]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_k_reg_reg[3]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mid_reg_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mid_reg_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mid_reg_reg[19]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mid_reg_reg[23]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mid_reg_reg[27]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mid_reg_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mid_reg_reg[3]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_mid_reg_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_start_reg_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_start_reg_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_start_reg_reg[19]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_start_reg_reg[23]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_start_reg_reg[27]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_start_reg_reg[31]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_start_reg_reg[31]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_start_reg_reg[31]_i_19_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_start_reg_reg[31]_i_19_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_start_reg_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_start_reg_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_start_reg_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_start_reg_reg[31]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_start_reg_reg[31]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_start_reg_reg[3]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_start_reg_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_temp_reg[0][3]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_temp_reg[0][3]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp_reg[0][3]_i_24_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_temp_reg[0][3]_i_24_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp_reg[0][3]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp_reg[0][3]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp_reg[0][3]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_temp_reg[0][3]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[1]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_state_reg[2]_i_1__0\ : label is "soft_lutpair16";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_reg_reg[2]\ : label is "yes";
begin
  done_sort <= \^done_sort\;
\FSM_sequential_state_reg[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_reg_reg_n_0_[30]\,
      I1 => \block_reg_reg_n_0_[31]\,
      O => \FSM_sequential_state_reg[0]_i_10_n_0\
    );
\FSM_sequential_state_reg[0]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_reg_reg_n_0_[28]\,
      I1 => \block_reg_reg_n_0_[29]\,
      O => \FSM_sequential_state_reg[0]_i_11_n_0\
    );
\FSM_sequential_state_reg[0]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_reg_reg_n_0_[26]\,
      I1 => \block_reg_reg_n_0_[27]\,
      O => \FSM_sequential_state_reg[0]_i_12_n_0\
    );
\FSM_sequential_state_reg[0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_reg_reg_n_0_[24]\,
      I1 => \block_reg_reg_n_0_[25]\,
      O => \FSM_sequential_state_reg[0]_i_13_n_0\
    );
\FSM_sequential_state_reg[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_reg_reg_n_0_[22]\,
      I1 => \block_reg_reg_n_0_[23]\,
      O => \FSM_sequential_state_reg[0]_i_15_n_0\
    );
\FSM_sequential_state_reg[0]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_reg_reg_n_0_[20]\,
      I1 => \block_reg_reg_n_0_[21]\,
      O => \FSM_sequential_state_reg[0]_i_16_n_0\
    );
\FSM_sequential_state_reg[0]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_reg_reg_n_0_[18]\,
      I1 => \block_reg_reg_n_0_[19]\,
      O => \FSM_sequential_state_reg[0]_i_17_n_0\
    );
\FSM_sequential_state_reg[0]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_reg_reg_n_0_[16]\,
      I1 => \block_reg_reg_n_0_[17]\,
      O => \FSM_sequential_state_reg[0]_i_18_n_0\
    );
\FSM_sequential_state_reg[0]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_reg_reg_n_0_[22]\,
      I1 => \block_reg_reg_n_0_[23]\,
      O => \FSM_sequential_state_reg[0]_i_19_n_0\
    );
\FSM_sequential_state_reg[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F010FFFFF0100000"
    )
        port map (
      I0 => \FSM_sequential_state_reg_reg[0]_i_2_n_0\,
      I1 => state_reg_0(1),
      I2 => \FSM_sequential_state_reg[0]_i_3_n_0\,
      I3 => \FSM_sequential_state_reg[0]_i_4_n_0\,
      I4 => \FSM_sequential_state_reg[2]_i_3_n_0\,
      I5 => state_reg_0(0),
      O => \FSM_sequential_state_reg[0]_i_1__0_n_0\
    );
\FSM_sequential_state_reg[0]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_reg_reg_n_0_[20]\,
      I1 => \block_reg_reg_n_0_[21]\,
      O => \FSM_sequential_state_reg[0]_i_20_n_0\
    );
\FSM_sequential_state_reg[0]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_reg_reg_n_0_[18]\,
      I1 => \block_reg_reg_n_0_[19]\,
      O => \FSM_sequential_state_reg[0]_i_21_n_0\
    );
\FSM_sequential_state_reg[0]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_reg_reg_n_0_[16]\,
      I1 => \block_reg_reg_n_0_[17]\,
      O => \FSM_sequential_state_reg[0]_i_22_n_0\
    );
\FSM_sequential_state_reg[0]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_reg_reg_n_0_[14]\,
      I1 => \block_reg_reg_n_0_[15]\,
      O => \FSM_sequential_state_reg[0]_i_24_n_0\
    );
\FSM_sequential_state_reg[0]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_reg_reg_n_0_[12]\,
      I1 => \block_reg_reg_n_0_[13]\,
      O => \FSM_sequential_state_reg[0]_i_25_n_0\
    );
\FSM_sequential_state_reg[0]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_reg_reg_n_0_[10]\,
      I1 => \block_reg_reg_n_0_[11]\,
      O => \FSM_sequential_state_reg[0]_i_26_n_0\
    );
\FSM_sequential_state_reg[0]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_reg_reg_n_0_[8]\,
      I1 => \block_reg_reg_n_0_[9]\,
      O => \FSM_sequential_state_reg[0]_i_27_n_0\
    );
\FSM_sequential_state_reg[0]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_reg_reg_n_0_[14]\,
      I1 => \block_reg_reg_n_0_[15]\,
      O => \FSM_sequential_state_reg[0]_i_28_n_0\
    );
\FSM_sequential_state_reg[0]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_reg_reg_n_0_[12]\,
      I1 => \block_reg_reg_n_0_[13]\,
      O => \FSM_sequential_state_reg[0]_i_29_n_0\
    );
\FSM_sequential_state_reg[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => state_reg_0(0),
      I1 => state_reg_0(1),
      I2 => state_reg_0(2),
      I3 => \block_reg_reg[31]_i_3_n_0\,
      O => \FSM_sequential_state_reg[0]_i_3_n_0\
    );
\FSM_sequential_state_reg[0]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_reg_reg_n_0_[10]\,
      I1 => \block_reg_reg_n_0_[11]\,
      O => \FSM_sequential_state_reg[0]_i_30_n_0\
    );
\FSM_sequential_state_reg[0]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_reg_reg_n_0_[8]\,
      I1 => \block_reg_reg_n_0_[9]\,
      O => \FSM_sequential_state_reg[0]_i_31_n_0\
    );
\FSM_sequential_state_reg[0]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_reg_reg_n_0_[6]\,
      I1 => \block_reg_reg_n_0_[7]\,
      O => \FSM_sequential_state_reg[0]_i_32_n_0\
    );
\FSM_sequential_state_reg[0]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_reg_reg_n_0_[2]\,
      I1 => \block_reg_reg_n_0_[3]\,
      O => \FSM_sequential_state_reg[0]_i_33_n_0\
    );
\FSM_sequential_state_reg[0]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_reg_reg_n_0_[0]\,
      I1 => \block_reg_reg_n_0_[1]\,
      O => \FSM_sequential_state_reg[0]_i_34_n_0\
    );
\FSM_sequential_state_reg[0]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_reg_reg_n_0_[6]\,
      I1 => \block_reg_reg_n_0_[7]\,
      O => \FSM_sequential_state_reg[0]_i_35_n_0\
    );
\FSM_sequential_state_reg[0]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \block_reg_reg_n_0_[4]\,
      I1 => \block_reg_reg_n_0_[5]\,
      O => \FSM_sequential_state_reg[0]_i_36_n_0\
    );
\FSM_sequential_state_reg[0]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_reg_reg_n_0_[2]\,
      I1 => \block_reg_reg_n_0_[3]\,
      O => \FSM_sequential_state_reg[0]_i_37_n_0\
    );
\FSM_sequential_state_reg[0]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \block_reg_reg_n_0_[0]\,
      I1 => \block_reg_reg_n_0_[1]\,
      O => \FSM_sequential_state_reg[0]_i_38_n_0\
    );
\FSM_sequential_state_reg[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => state_reg_0(0),
      O => \FSM_sequential_state_reg[0]_i_4_n_0\
    );
\FSM_sequential_state_reg[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \block_reg_reg_n_0_[30]\,
      I1 => \block_reg_reg_n_0_[31]\,
      O => \FSM_sequential_state_reg[0]_i_6_n_0\
    );
\FSM_sequential_state_reg[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_reg_reg_n_0_[28]\,
      I1 => \block_reg_reg_n_0_[29]\,
      O => \FSM_sequential_state_reg[0]_i_7_n_0\
    );
\FSM_sequential_state_reg[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_reg_reg_n_0_[26]\,
      I1 => \block_reg_reg_n_0_[27]\,
      O => \FSM_sequential_state_reg[0]_i_8_n_0\
    );
\FSM_sequential_state_reg[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \block_reg_reg_n_0_[24]\,
      I1 => \block_reg_reg_n_0_[25]\,
      O => \FSM_sequential_state_reg[0]_i_9_n_0\
    );
\FSM_sequential_state_reg[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_sequential_state_reg[1]_i_2_n_0\,
      I1 => \FSM_sequential_state_reg[2]_i_3_n_0\,
      I2 => state_reg_0(1),
      O => \FSM_sequential_state_reg[1]_i_1__0_n_0\
    );
\FSM_sequential_state_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03FF0AF0"
    )
        port map (
      I0 => \FSM_sequential_state_reg_reg[0]_i_2_n_0\,
      I1 => \block_reg_reg[31]_i_3_n_0\,
      I2 => state_reg_0(1),
      I3 => state_reg_0(0),
      I4 => state_reg_0(2),
      O => \FSM_sequential_state_reg[1]_i_2_n_0\
    );
\FSM_sequential_state_reg[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_sequential_state_reg[2]_i_2_n_0\,
      I1 => \FSM_sequential_state_reg[2]_i_3_n_0\,
      I2 => state_reg_0(2),
      O => \FSM_sequential_state_reg[2]_i_1__0_n_0\
    );
\FSM_sequential_state_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF11AFBBAA00AA00"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \FSM_sequential_state_reg_reg[0]_i_2_n_0\,
      I2 => \block_reg_reg[31]_i_3_n_0\,
      I3 => state_reg_0(2),
      I4 => \it_reg_reg[31]_i_3_n_0\,
      I5 => state_reg_0(0),
      O => \FSM_sequential_state_reg[2]_i_2_n_0\
    );
\FSM_sequential_state_reg[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF08"
    )
        port map (
      I0 => \k_reg_reg[3]_i_3_n_0\,
      I1 => state_reg_0(1),
      I2 => state_reg_0(0),
      I3 => \FSM_sequential_state_reg[2]_i_4_n_0\,
      O => \FSM_sequential_state_reg[2]_i_3_n_0\
    );
\FSM_sequential_state_reg[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00FF0FF0FFFFCC"
    )
        port map (
      I0 => \start_reg_reg[31]_i_3_n_0\,
      I1 => start_IBUF,
      I2 => request_out_reg_0,
      I3 => state_reg_0(0),
      I4 => state_reg_0(1),
      I5 => state_reg_0(2),
      O => \FSM_sequential_state_reg[2]_i_4_n_0\
    );
\FSM_sequential_state_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \FSM_sequential_state_reg[0]_i_1__0_n_0\,
      Q => state_reg_0(0)
    );
\FSM_sequential_state_reg_reg[0]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_sequential_state_reg_reg[0]_i_23_n_0\,
      CO(3) => \FSM_sequential_state_reg_reg[0]_i_14_n_0\,
      CO(2 downto 0) => \NLW_FSM_sequential_state_reg_reg[0]_i_14_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \FSM_sequential_state_reg[0]_i_24_n_0\,
      DI(2) => \FSM_sequential_state_reg[0]_i_25_n_0\,
      DI(1) => \FSM_sequential_state_reg[0]_i_26_n_0\,
      DI(0) => \FSM_sequential_state_reg[0]_i_27_n_0\,
      O(3 downto 0) => \NLW_FSM_sequential_state_reg_reg[0]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_state_reg[0]_i_28_n_0\,
      S(2) => \FSM_sequential_state_reg[0]_i_29_n_0\,
      S(1) => \FSM_sequential_state_reg[0]_i_30_n_0\,
      S(0) => \FSM_sequential_state_reg[0]_i_31_n_0\
    );
\FSM_sequential_state_reg_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_sequential_state_reg_reg[0]_i_5_n_0\,
      CO(3) => \FSM_sequential_state_reg_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_FSM_sequential_state_reg_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \FSM_sequential_state_reg[0]_i_6_n_0\,
      DI(2) => \FSM_sequential_state_reg[0]_i_7_n_0\,
      DI(1) => \FSM_sequential_state_reg[0]_i_8_n_0\,
      DI(0) => \FSM_sequential_state_reg[0]_i_9_n_0\,
      O(3 downto 0) => \NLW_FSM_sequential_state_reg_reg[0]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_state_reg[0]_i_10_n_0\,
      S(2) => \FSM_sequential_state_reg[0]_i_11_n_0\,
      S(1) => \FSM_sequential_state_reg[0]_i_12_n_0\,
      S(0) => \FSM_sequential_state_reg[0]_i_13_n_0\
    );
\FSM_sequential_state_reg_reg[0]_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FSM_sequential_state_reg_reg[0]_i_23_n_0\,
      CO(2 downto 0) => \NLW_FSM_sequential_state_reg_reg[0]_i_23_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => \FSM_sequential_state_reg[0]_i_32_n_0\,
      DI(2) => \block_reg_reg_n_0_[5]\,
      DI(1) => \FSM_sequential_state_reg[0]_i_33_n_0\,
      DI(0) => \FSM_sequential_state_reg[0]_i_34_n_0\,
      O(3 downto 0) => \NLW_FSM_sequential_state_reg_reg[0]_i_23_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_state_reg[0]_i_35_n_0\,
      S(2) => \FSM_sequential_state_reg[0]_i_36_n_0\,
      S(1) => \FSM_sequential_state_reg[0]_i_37_n_0\,
      S(0) => \FSM_sequential_state_reg[0]_i_38_n_0\
    );
\FSM_sequential_state_reg_reg[0]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_sequential_state_reg_reg[0]_i_14_n_0\,
      CO(3) => \FSM_sequential_state_reg_reg[0]_i_5_n_0\,
      CO(2 downto 0) => \NLW_FSM_sequential_state_reg_reg[0]_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \FSM_sequential_state_reg[0]_i_15_n_0\,
      DI(2) => \FSM_sequential_state_reg[0]_i_16_n_0\,
      DI(1) => \FSM_sequential_state_reg[0]_i_17_n_0\,
      DI(0) => \FSM_sequential_state_reg[0]_i_18_n_0\,
      O(3 downto 0) => \NLW_FSM_sequential_state_reg_reg[0]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_state_reg[0]_i_19_n_0\,
      S(2) => \FSM_sequential_state_reg[0]_i_20_n_0\,
      S(1) => \FSM_sequential_state_reg[0]_i_21_n_0\,
      S(0) => \FSM_sequential_state_reg[0]_i_22_n_0\
    );
\FSM_sequential_state_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \FSM_sequential_state_reg[1]_i_1__0_n_0\,
      Q => state_reg_0(1)
    );
\FSM_sequential_state_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => \FSM_sequential_state_reg[2]_i_1__0_n_0\,
      Q => state_reg_0(2)
    );
\block_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg_0(0),
      O => block_reg(0)
    );
\block_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[9]\,
      O => block_reg(10)
    );
\block_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[10]\,
      O => block_reg(11)
    );
\block_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[11]\,
      O => block_reg(12)
    );
\block_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[12]\,
      O => block_reg(13)
    );
\block_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[13]\,
      O => block_reg(14)
    );
\block_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[14]\,
      O => block_reg(15)
    );
\block_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[15]\,
      O => block_reg(16)
    );
\block_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[16]\,
      O => block_reg(17)
    );
\block_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[17]\,
      O => block_reg(18)
    );
\block_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[18]\,
      O => block_reg(19)
    );
\block_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[0]\,
      O => block_reg(1)
    );
\block_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[19]\,
      O => block_reg(20)
    );
\block_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[20]\,
      O => block_reg(21)
    );
\block_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[21]\,
      O => block_reg(22)
    );
\block_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[22]\,
      O => block_reg(23)
    );
\block_reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[23]\,
      O => block_reg(24)
    );
\block_reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[24]\,
      O => block_reg(25)
    );
\block_reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[25]\,
      O => block_reg(26)
    );
\block_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[26]\,
      O => block_reg(27)
    );
\block_reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[27]\,
      O => block_reg(28)
    );
\block_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[28]\,
      O => block_reg(29)
    );
\block_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[1]\,
      O => block_reg(2)
    );
\block_reg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[29]\,
      O => block_reg(30)
    );
\block_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20200300"
    )
        port map (
      I0 => \block_reg_reg[31]_i_3_n_0\,
      I1 => state_reg_0(1),
      I2 => state_reg_0(2),
      I3 => start_IBUF,
      I4 => state_reg_0(0),
      O => \block_reg[31]_i_1_n_0\
    );
\block_reg[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(28),
      I1 => \lo_reg__0\(29),
      O => \block_reg[31]_i_10_n_0\
    );
\block_reg[31]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(26),
      I1 => \lo_reg__0\(27),
      O => \block_reg[31]_i_11_n_0\
    );
\block_reg[31]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(24),
      I1 => \lo_reg__0\(25),
      O => \block_reg[31]_i_12_n_0\
    );
\block_reg[31]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(22),
      I1 => \lo_reg__0\(23),
      O => \block_reg[31]_i_14_n_0\
    );
\block_reg[31]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(20),
      I1 => \lo_reg__0\(21),
      O => \block_reg[31]_i_15_n_0\
    );
\block_reg[31]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(18),
      I1 => \lo_reg__0\(19),
      O => \block_reg[31]_i_16_n_0\
    );
\block_reg[31]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(16),
      I1 => \lo_reg__0\(17),
      O => \block_reg[31]_i_17_n_0\
    );
\block_reg[31]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(22),
      I1 => \lo_reg__0\(23),
      O => \block_reg[31]_i_18_n_0\
    );
\block_reg[31]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(20),
      I1 => \lo_reg__0\(21),
      O => \block_reg[31]_i_19_n_0\
    );
\block_reg[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[30]\,
      O => block_reg(31)
    );
\block_reg[31]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(18),
      I1 => \lo_reg__0\(19),
      O => \block_reg[31]_i_20_n_0\
    );
\block_reg[31]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(16),
      I1 => \lo_reg__0\(17),
      O => \block_reg[31]_i_21_n_0\
    );
\block_reg[31]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(14),
      I1 => \lo_reg__0\(15),
      O => \block_reg[31]_i_23_n_0\
    );
\block_reg[31]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(12),
      I1 => \lo_reg__0\(13),
      O => \block_reg[31]_i_24_n_0\
    );
\block_reg[31]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(10),
      I1 => \lo_reg__0\(11),
      O => \block_reg[31]_i_25_n_0\
    );
\block_reg[31]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(8),
      I1 => \lo_reg__0\(9),
      O => \block_reg[31]_i_26_n_0\
    );
\block_reg[31]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(14),
      I1 => \lo_reg__0\(15),
      O => \block_reg[31]_i_27_n_0\
    );
\block_reg[31]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(12),
      I1 => \lo_reg__0\(13),
      O => \block_reg[31]_i_28_n_0\
    );
\block_reg[31]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(10),
      I1 => \lo_reg__0\(11),
      O => \block_reg[31]_i_29_n_0\
    );
\block_reg[31]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(8),
      I1 => \lo_reg__0\(9),
      O => \block_reg[31]_i_30_n_0\
    );
\block_reg[31]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(6),
      I1 => \lo_reg__0\(7),
      O => \block_reg[31]_i_31_n_0\
    );
\block_reg[31]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(4),
      I1 => \lo_reg__0\(5),
      O => \block_reg[31]_i_32_n_0\
    );
\block_reg[31]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(6),
      I1 => \lo_reg__0\(7),
      O => \block_reg[31]_i_33_n_0\
    );
\block_reg[31]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(4),
      I1 => \lo_reg__0\(5),
      O => \block_reg[31]_i_34_n_0\
    );
\block_reg[31]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lo_reg(2),
      I1 => lo_reg(3),
      O => \block_reg[31]_i_35_n_0\
    );
\block_reg[31]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lo_reg(0),
      I1 => lo_reg(1),
      O => \block_reg[31]_i_36_n_0\
    );
\block_reg[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lo_reg__0\(30),
      I1 => \lo_reg__0\(31),
      O => \block_reg[31]_i_5_n_0\
    );
\block_reg[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(28),
      I1 => \lo_reg__0\(29),
      O => \block_reg[31]_i_6_n_0\
    );
\block_reg[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(26),
      I1 => \lo_reg__0\(27),
      O => \block_reg[31]_i_7_n_0\
    );
\block_reg[31]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(24),
      I1 => \lo_reg__0\(25),
      O => \block_reg[31]_i_8_n_0\
    );
\block_reg[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(30),
      I1 => \lo_reg__0\(31),
      O => \block_reg[31]_i_9_n_0\
    );
\block_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[2]\,
      O => block_reg(3)
    );
\block_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[3]\,
      O => block_reg(4)
    );
\block_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[4]\,
      O => block_reg(5)
    );
\block_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[5]\,
      O => block_reg(6)
    );
\block_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[6]\,
      O => block_reg(7)
    );
\block_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[7]\,
      O => block_reg(8)
    );
\block_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[8]\,
      O => block_reg(9)
    );
\block_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      D => block_reg(0),
      PRE => reset_IBUF,
      Q => \block_reg_reg_n_0_[0]\
    );
\block_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(10),
      Q => \block_reg_reg_n_0_[10]\
    );
\block_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(11),
      Q => \block_reg_reg_n_0_[11]\
    );
\block_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(12),
      Q => \block_reg_reg_n_0_[12]\
    );
\block_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(13),
      Q => \block_reg_reg_n_0_[13]\
    );
\block_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(14),
      Q => \block_reg_reg_n_0_[14]\
    );
\block_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(15),
      Q => \block_reg_reg_n_0_[15]\
    );
\block_reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(16),
      Q => \block_reg_reg_n_0_[16]\
    );
\block_reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(17),
      Q => \block_reg_reg_n_0_[17]\
    );
\block_reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(18),
      Q => \block_reg_reg_n_0_[18]\
    );
\block_reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(19),
      Q => \block_reg_reg_n_0_[19]\
    );
\block_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(1),
      Q => \block_reg_reg_n_0_[1]\
    );
\block_reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(20),
      Q => \block_reg_reg_n_0_[20]\
    );
\block_reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(21),
      Q => \block_reg_reg_n_0_[21]\
    );
\block_reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(22),
      Q => \block_reg_reg_n_0_[22]\
    );
\block_reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(23),
      Q => \block_reg_reg_n_0_[23]\
    );
\block_reg_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(24),
      Q => \block_reg_reg_n_0_[24]\
    );
\block_reg_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(25),
      Q => \block_reg_reg_n_0_[25]\
    );
\block_reg_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(26),
      Q => \block_reg_reg_n_0_[26]\
    );
\block_reg_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(27),
      Q => \block_reg_reg_n_0_[27]\
    );
\block_reg_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(28),
      Q => \block_reg_reg_n_0_[28]\
    );
\block_reg_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(29),
      Q => \block_reg_reg_n_0_[29]\
    );
\block_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(2),
      Q => \block_reg_reg_n_0_[2]\
    );
\block_reg_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(30),
      Q => \block_reg_reg_n_0_[30]\
    );
\block_reg_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(31),
      Q => \block_reg_reg_n_0_[31]\
    );
\block_reg_reg[31]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_reg_reg[31]_i_22_n_0\,
      CO(3) => \block_reg_reg[31]_i_13_n_0\,
      CO(2 downto 0) => \NLW_block_reg_reg[31]_i_13_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \block_reg[31]_i_23_n_0\,
      DI(2) => \block_reg[31]_i_24_n_0\,
      DI(1) => \block_reg[31]_i_25_n_0\,
      DI(0) => \block_reg[31]_i_26_n_0\,
      O(3 downto 0) => \NLW_block_reg_reg[31]_i_13_O_UNCONNECTED\(3 downto 0),
      S(3) => \block_reg[31]_i_27_n_0\,
      S(2) => \block_reg[31]_i_28_n_0\,
      S(1) => \block_reg[31]_i_29_n_0\,
      S(0) => \block_reg[31]_i_30_n_0\
    );
\block_reg_reg[31]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \block_reg_reg[31]_i_22_n_0\,
      CO(2 downto 0) => \NLW_block_reg_reg[31]_i_22_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => \block_reg[31]_i_31_n_0\,
      DI(2) => \block_reg[31]_i_32_n_0\,
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_block_reg_reg[31]_i_22_O_UNCONNECTED\(3 downto 0),
      S(3) => \block_reg[31]_i_33_n_0\,
      S(2) => \block_reg[31]_i_34_n_0\,
      S(1) => \block_reg[31]_i_35_n_0\,
      S(0) => \block_reg[31]_i_36_n_0\
    );
\block_reg_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_reg_reg[31]_i_4_n_0\,
      CO(3) => \block_reg_reg[31]_i_3_n_0\,
      CO(2 downto 0) => \NLW_block_reg_reg[31]_i_3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \block_reg[31]_i_5_n_0\,
      DI(2) => \block_reg[31]_i_6_n_0\,
      DI(1) => \block_reg[31]_i_7_n_0\,
      DI(0) => \block_reg[31]_i_8_n_0\,
      O(3 downto 0) => \NLW_block_reg_reg[31]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \block_reg[31]_i_9_n_0\,
      S(2) => \block_reg[31]_i_10_n_0\,
      S(1) => \block_reg[31]_i_11_n_0\,
      S(0) => \block_reg[31]_i_12_n_0\
    );
\block_reg_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \block_reg_reg[31]_i_13_n_0\,
      CO(3) => \block_reg_reg[31]_i_4_n_0\,
      CO(2 downto 0) => \NLW_block_reg_reg[31]_i_4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \block_reg[31]_i_14_n_0\,
      DI(2) => \block_reg[31]_i_15_n_0\,
      DI(1) => \block_reg[31]_i_16_n_0\,
      DI(0) => \block_reg[31]_i_17_n_0\,
      O(3 downto 0) => \NLW_block_reg_reg[31]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \block_reg[31]_i_18_n_0\,
      S(2) => \block_reg[31]_i_19_n_0\,
      S(1) => \block_reg[31]_i_20_n_0\,
      S(0) => \block_reg[31]_i_21_n_0\
    );
\block_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(3),
      Q => \block_reg_reg_n_0_[3]\
    );
\block_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(4),
      Q => \block_reg_reg_n_0_[4]\
    );
\block_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(5),
      Q => \block_reg_reg_n_0_[5]\
    );
\block_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(6),
      Q => \block_reg_reg_n_0_[6]\
    );
\block_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(7),
      Q => \block_reg_reg_n_0_[7]\
    );
\block_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(8),
      Q => \block_reg_reg_n_0_[8]\
    );
\block_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \block_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => block_reg(9),
      Q => \block_reg_reg_n_0_[9]\
    );
\dat_reg[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[3][0]\,
      I1 => \temp_reg_n_0_[2][0]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[1][0]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[0][0]\,
      O => \dat_reg[0]_i_4_n_0\
    );
\dat_reg[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[7][0]\,
      I1 => \temp_reg_n_0_[6][0]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[5][0]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[4][0]\,
      O => \dat_reg[0]_i_5_n_0\
    );
\dat_reg[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[11][0]\,
      I1 => \temp_reg_n_0_[10][0]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[9][0]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[8][0]\,
      O => \dat_reg[0]_i_6_n_0\
    );
\dat_reg[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[15][0]\,
      I1 => \temp_reg_n_0_[14][0]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[13][0]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[12][0]\,
      O => \dat_reg[0]_i_7_n_0\
    );
\dat_reg[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[3][1]\,
      I1 => \temp_reg_n_0_[2][1]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[1][1]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[0][1]\,
      O => \dat_reg[1]_i_4_n_0\
    );
\dat_reg[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[7][1]\,
      I1 => \temp_reg_n_0_[6][1]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[5][1]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[4][1]\,
      O => \dat_reg[1]_i_5_n_0\
    );
\dat_reg[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[11][1]\,
      I1 => \temp_reg_n_0_[10][1]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[9][1]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[8][1]\,
      O => \dat_reg[1]_i_6_n_0\
    );
\dat_reg[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[15][1]\,
      I1 => \temp_reg_n_0_[14][1]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[13][1]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[12][1]\,
      O => \dat_reg[1]_i_7_n_0\
    );
\dat_reg[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[3][2]\,
      I1 => \temp_reg_n_0_[2][2]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[1][2]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[0][2]\,
      O => \dat_reg[2]_i_4_n_0\
    );
\dat_reg[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[7][2]\,
      I1 => \temp_reg_n_0_[6][2]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[5][2]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[4][2]\,
      O => \dat_reg[2]_i_5_n_0\
    );
\dat_reg[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[11][2]\,
      I1 => \temp_reg_n_0_[10][2]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[9][2]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[8][2]\,
      O => \dat_reg[2]_i_6_n_0\
    );
\dat_reg[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[15][2]\,
      I1 => \temp_reg_n_0_[14][2]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[13][2]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[12][2]\,
      O => \dat_reg[2]_i_7_n_0\
    );
\dat_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => request_out_reg_0,
      I2 => \it_reg_reg[31]_i_3_n_0\,
      I3 => state_reg_0(0),
      I4 => state_reg_0(2),
      O => \dat_reg[3]_i_1_n_0\
    );
\dat_reg[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[3][3]\,
      I1 => \temp_reg_n_0_[2][3]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[1][3]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[0][3]\,
      O => \dat_reg[3]_i_5_n_0\
    );
\dat_reg[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[7][3]\,
      I1 => \temp_reg_n_0_[6][3]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[5][3]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[4][3]\,
      O => \dat_reg[3]_i_6_n_0\
    );
\dat_reg[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[11][3]\,
      I1 => \temp_reg_n_0_[10][3]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[9][3]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[8][3]\,
      O => \dat_reg[3]_i_7_n_0\
    );
\dat_reg[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[15][3]\,
      I1 => \temp_reg_n_0_[14][3]\,
      I2 => \it_reg__0\(1),
      I3 => \temp_reg_n_0_[13][3]\,
      I4 => \it_reg__0\(0),
      I5 => \temp_reg_n_0_[12][3]\,
      O => \dat_reg[3]_i_8_n_0\
    );
\dat_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dat_reg[3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \dat_reg_reg[0]_i_1_n_0\,
      Q => bin(0)
    );
\dat_reg_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dat_reg_reg[0]_i_2_n_0\,
      I1 => \dat_reg_reg[0]_i_3_n_0\,
      O => \dat_reg_reg[0]_i_1_n_0\,
      S => \it_reg__0\(3)
    );
\dat_reg_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dat_reg[0]_i_4_n_0\,
      I1 => \dat_reg[0]_i_5_n_0\,
      O => \dat_reg_reg[0]_i_2_n_0\,
      S => \it_reg__0\(2)
    );
\dat_reg_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dat_reg[0]_i_6_n_0\,
      I1 => \dat_reg[0]_i_7_n_0\,
      O => \dat_reg_reg[0]_i_3_n_0\,
      S => \it_reg__0\(2)
    );
\dat_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dat_reg[3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \dat_reg_reg[1]_i_1_n_0\,
      Q => Q(0)
    );
\dat_reg_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dat_reg_reg[1]_i_2_n_0\,
      I1 => \dat_reg_reg[1]_i_3_n_0\,
      O => \dat_reg_reg[1]_i_1_n_0\,
      S => \it_reg__0\(3)
    );
\dat_reg_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dat_reg[1]_i_4_n_0\,
      I1 => \dat_reg[1]_i_5_n_0\,
      O => \dat_reg_reg[1]_i_2_n_0\,
      S => \it_reg__0\(2)
    );
\dat_reg_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dat_reg[1]_i_6_n_0\,
      I1 => \dat_reg[1]_i_7_n_0\,
      O => \dat_reg_reg[1]_i_3_n_0\,
      S => \it_reg__0\(2)
    );
\dat_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dat_reg[3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \dat_reg_reg[2]_i_1_n_0\,
      Q => Q(1)
    );
\dat_reg_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dat_reg_reg[2]_i_2_n_0\,
      I1 => \dat_reg_reg[2]_i_3_n_0\,
      O => \dat_reg_reg[2]_i_1_n_0\,
      S => \it_reg__0\(3)
    );
\dat_reg_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dat_reg[2]_i_4_n_0\,
      I1 => \dat_reg[2]_i_5_n_0\,
      O => \dat_reg_reg[2]_i_2_n_0\,
      S => \it_reg__0\(2)
    );
\dat_reg_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dat_reg[2]_i_6_n_0\,
      I1 => \dat_reg[2]_i_7_n_0\,
      O => \dat_reg_reg[2]_i_3_n_0\,
      S => \it_reg__0\(2)
    );
\dat_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \dat_reg[3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \dat_reg_reg[3]_i_2_n_0\,
      Q => Q(2)
    );
\dat_reg_reg[3]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dat_reg_reg[3]_i_3_n_0\,
      I1 => \dat_reg_reg[3]_i_4_n_0\,
      O => \dat_reg_reg[3]_i_2_n_0\,
      S => \it_reg__0\(3)
    );
\dat_reg_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dat_reg[3]_i_5_n_0\,
      I1 => \dat_reg[3]_i_6_n_0\,
      O => \dat_reg_reg[3]_i_3_n_0\,
      S => \it_reg__0\(2)
    );
\dat_reg_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dat_reg[3]_i_7_n_0\,
      I1 => \dat_reg[3]_i_8_n_0\,
      O => \dat_reg_reg[3]_i_4_n_0\,
      S => \it_reg__0\(2)
    );
done_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => state_reg_0(0),
      I2 => state_reg_0(2),
      I3 => \^done_sort\,
      O => done_reg_i_1_n_0
    );
done_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      CLR => reset_IBUF,
      D => done_reg_i_1_n_0,
      Q => \^done_sort\
    );
\hi_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => \hi_reg_reg[3]_i_2_n_7\,
      I1 => state_reg_0(2),
      I2 => state_reg_0(1),
      O => hi_reg(0)
    );
\hi_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[9]\,
      I2 => state_reg_0(1),
      I3 => \hi_reg_reg[11]_i_2_n_5\,
      O => hi_reg(10)
    );
\hi_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[10]\,
      I2 => state_reg_0(1),
      I3 => \hi_reg_reg[11]_i_2_n_4\,
      O => hi_reg(11)
    );
\hi_reg[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[11]_i_2_n_4\,
      I1 => \block_reg_reg_n_0_[11]\,
      O => \hi_reg[11]_i_3_n_0\
    );
\hi_reg[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[11]_i_2_n_5\,
      I1 => \block_reg_reg_n_0_[10]\,
      O => \hi_reg[11]_i_4_n_0\
    );
\hi_reg[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[11]_i_2_n_6\,
      I1 => \block_reg_reg_n_0_[9]\,
      O => \hi_reg[11]_i_5_n_0\
    );
\hi_reg[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[11]_i_2_n_7\,
      I1 => \block_reg_reg_n_0_[8]\,
      O => \hi_reg[11]_i_6_n_0\
    );
\hi_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[11]\,
      I2 => state_reg_0(1),
      I3 => \hi_reg_reg[15]_i_2_n_7\,
      O => hi_reg(12)
    );
\hi_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[12]\,
      I2 => state_reg_0(1),
      I3 => \hi_reg_reg[15]_i_2_n_6\,
      O => hi_reg(13)
    );
\hi_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[13]\,
      I2 => state_reg_0(1),
      I3 => \hi_reg_reg[15]_i_2_n_5\,
      O => hi_reg(14)
    );
\hi_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[14]\,
      I2 => state_reg_0(1),
      I3 => \hi_reg_reg[15]_i_2_n_4\,
      O => hi_reg(15)
    );
\hi_reg[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[15]_i_2_n_4\,
      I1 => \block_reg_reg_n_0_[15]\,
      O => \hi_reg[15]_i_3_n_0\
    );
\hi_reg[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[15]_i_2_n_5\,
      I1 => \block_reg_reg_n_0_[14]\,
      O => \hi_reg[15]_i_4_n_0\
    );
\hi_reg[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[15]_i_2_n_6\,
      I1 => \block_reg_reg_n_0_[13]\,
      O => \hi_reg[15]_i_5_n_0\
    );
\hi_reg[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[15]_i_2_n_7\,
      I1 => \block_reg_reg_n_0_[12]\,
      O => \hi_reg[15]_i_6_n_0\
    );
\hi_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[15]\,
      I2 => state_reg_0(1),
      I3 => \hi_reg_reg[19]_i_2_n_7\,
      O => hi_reg(16)
    );
\hi_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[16]\,
      I2 => state_reg_0(1),
      I3 => \hi_reg_reg[19]_i_2_n_6\,
      O => hi_reg(17)
    );
\hi_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[17]\,
      I2 => state_reg_0(1),
      I3 => \hi_reg_reg[19]_i_2_n_5\,
      O => hi_reg(18)
    );
\hi_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[18]\,
      I2 => state_reg_0(1),
      I3 => \hi_reg_reg[19]_i_2_n_4\,
      O => hi_reg(19)
    );
\hi_reg[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[19]_i_2_n_4\,
      I1 => \block_reg_reg_n_0_[19]\,
      O => \hi_reg[19]_i_3_n_0\
    );
\hi_reg[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[19]_i_2_n_5\,
      I1 => \block_reg_reg_n_0_[18]\,
      O => \hi_reg[19]_i_4_n_0\
    );
\hi_reg[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[19]_i_2_n_6\,
      I1 => \block_reg_reg_n_0_[17]\,
      O => \hi_reg[19]_i_5_n_0\
    );
\hi_reg[19]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[19]_i_2_n_7\,
      I1 => \block_reg_reg_n_0_[16]\,
      O => \hi_reg[19]_i_6_n_0\
    );
\hi_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB0"
    )
        port map (
      I0 => \hi_reg_reg[3]_i_2_n_6\,
      I1 => state_reg_0(1),
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[0]\,
      O => hi_reg(1)
    );
\hi_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \hi_reg_reg[23]_i_2_n_7\,
      I2 => \block_reg_reg_n_0_[19]\,
      I3 => state_reg_0(2),
      O => hi_reg(20)
    );
\hi_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \hi_reg_reg[23]_i_2_n_6\,
      I2 => \block_reg_reg_n_0_[20]\,
      I3 => state_reg_0(2),
      O => hi_reg(21)
    );
\hi_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \hi_reg_reg[23]_i_2_n_5\,
      I2 => \block_reg_reg_n_0_[21]\,
      I3 => state_reg_0(2),
      O => hi_reg(22)
    );
\hi_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \hi_reg_reg[23]_i_2_n_4\,
      I2 => \block_reg_reg_n_0_[22]\,
      I3 => state_reg_0(2),
      O => hi_reg(23)
    );
\hi_reg[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[23]_i_2_n_4\,
      I1 => \block_reg_reg_n_0_[23]\,
      O => \hi_reg[23]_i_3_n_0\
    );
\hi_reg[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[23]_i_2_n_5\,
      I1 => \block_reg_reg_n_0_[22]\,
      O => \hi_reg[23]_i_4_n_0\
    );
\hi_reg[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[23]_i_2_n_6\,
      I1 => \block_reg_reg_n_0_[21]\,
      O => \hi_reg[23]_i_5_n_0\
    );
\hi_reg[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[23]_i_2_n_7\,
      I1 => \block_reg_reg_n_0_[20]\,
      O => \hi_reg[23]_i_6_n_0\
    );
\hi_reg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \hi_reg_reg[27]_i_2_n_7\,
      I2 => \block_reg_reg_n_0_[23]\,
      I3 => state_reg_0(2),
      O => hi_reg(24)
    );
\hi_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \hi_reg_reg[27]_i_2_n_6\,
      I2 => \block_reg_reg_n_0_[24]\,
      I3 => state_reg_0(2),
      O => hi_reg(25)
    );
\hi_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \hi_reg_reg[27]_i_2_n_5\,
      I2 => \block_reg_reg_n_0_[25]\,
      I3 => state_reg_0(2),
      O => hi_reg(26)
    );
\hi_reg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \hi_reg_reg[27]_i_2_n_4\,
      I2 => \block_reg_reg_n_0_[26]\,
      I3 => state_reg_0(2),
      O => hi_reg(27)
    );
\hi_reg[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[27]_i_2_n_4\,
      I1 => \block_reg_reg_n_0_[27]\,
      O => \hi_reg[27]_i_3_n_0\
    );
\hi_reg[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[27]_i_2_n_5\,
      I1 => \block_reg_reg_n_0_[26]\,
      O => \hi_reg[27]_i_4_n_0\
    );
\hi_reg[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[27]_i_2_n_6\,
      I1 => \block_reg_reg_n_0_[25]\,
      O => \hi_reg[27]_i_5_n_0\
    );
\hi_reg[27]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[27]_i_2_n_7\,
      I1 => \block_reg_reg_n_0_[24]\,
      O => \hi_reg[27]_i_6_n_0\
    );
\hi_reg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \hi_reg_reg[31]_i_4_n_7\,
      I2 => \block_reg_reg_n_0_[27]\,
      I3 => state_reg_0(2),
      O => hi_reg(28)
    );
\hi_reg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \hi_reg_reg[31]_i_4_n_6\,
      I2 => \block_reg_reg_n_0_[28]\,
      I3 => state_reg_0(2),
      O => hi_reg(29)
    );
\hi_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB0"
    )
        port map (
      I0 => \hi_reg_reg[3]_i_2_n_5\,
      I1 => state_reg_0(1),
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[1]\,
      O => hi_reg(2)
    );
\hi_reg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \hi_reg_reg[31]_i_4_n_5\,
      I2 => \block_reg_reg_n_0_[29]\,
      I3 => state_reg_0(2),
      O => hi_reg(30)
    );
\hi_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00002000"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => state_reg_0(1),
      I2 => state_reg_0(0),
      I3 => \hi_reg_reg[31]_i_3_n_2\,
      I4 => \block_reg_reg[31]_i_3_n_0\,
      I5 => \start_reg[31]_i_1_n_0\,
      O => \hi_reg[31]_i_1_n_0\
    );
\hi_reg[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[31]_i_3_n_4\,
      I1 => \block_reg_reg_n_0_[31]\,
      O => \hi_reg[31]_i_10_n_0\
    );
\hi_reg[31]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[31]_i_3_n_5\,
      I1 => \block_reg_reg_n_0_[30]\,
      O => \hi_reg[31]_i_11_n_0\
    );
\hi_reg[31]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[31]_i_3_n_6\,
      I1 => \block_reg_reg_n_0_[29]\,
      O => \hi_reg[31]_i_12_n_0\
    );
\hi_reg[31]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[31]_i_3_n_7\,
      I1 => \block_reg_reg_n_0_[28]\,
      O => \hi_reg[31]_i_13_n_0\
    );
\hi_reg[31]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \hi_reg__0\(26),
      I1 => \hi_reg__0\(27),
      O => \hi_reg[31]_i_15_n_0\
    );
\hi_reg[31]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \hi_reg__0\(24),
      I1 => \hi_reg__0\(25),
      O => \hi_reg[31]_i_16_n_0\
    );
\hi_reg[31]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \hi_reg__0\(22),
      I1 => \hi_reg__0\(23),
      O => \hi_reg[31]_i_17_n_0\
    );
\hi_reg[31]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \hi_reg__0\(20),
      I1 => \hi_reg__0\(21),
      O => \hi_reg[31]_i_18_n_0\
    );
\hi_reg[31]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(26),
      I1 => \hi_reg__0\(27),
      O => \hi_reg[31]_i_19_n_0\
    );
\hi_reg[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \hi_reg_reg[31]_i_4_n_4\,
      I2 => \block_reg_reg_n_0_[30]\,
      I3 => state_reg_0(2),
      O => hi_reg(31)
    );
\hi_reg[31]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(24),
      I1 => \hi_reg__0\(25),
      O => \hi_reg[31]_i_20_n_0\
    );
\hi_reg[31]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(22),
      I1 => \hi_reg__0\(23),
      O => \hi_reg[31]_i_21_n_0\
    );
\hi_reg[31]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(20),
      I1 => \hi_reg__0\(21),
      O => \hi_reg[31]_i_22_n_0\
    );
\hi_reg[31]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \hi_reg__0\(18),
      I1 => \hi_reg__0\(19),
      O => \hi_reg[31]_i_24_n_0\
    );
\hi_reg[31]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \hi_reg__0\(16),
      I1 => \hi_reg__0\(17),
      O => \hi_reg[31]_i_25_n_0\
    );
\hi_reg[31]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \hi_reg__0\(14),
      I1 => \hi_reg__0\(15),
      O => \hi_reg[31]_i_26_n_0\
    );
\hi_reg[31]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \hi_reg__0\(12),
      I1 => \hi_reg__0\(13),
      O => \hi_reg[31]_i_27_n_0\
    );
\hi_reg[31]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(18),
      I1 => \hi_reg__0\(19),
      O => \hi_reg[31]_i_28_n_0\
    );
\hi_reg[31]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(16),
      I1 => \hi_reg__0\(17),
      O => \hi_reg[31]_i_29_n_0\
    );
\hi_reg[31]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(14),
      I1 => \hi_reg__0\(15),
      O => \hi_reg[31]_i_30_n_0\
    );
\hi_reg[31]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(12),
      I1 => \hi_reg__0\(13),
      O => \hi_reg[31]_i_31_n_0\
    );
\hi_reg[31]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \hi_reg__0\(10),
      I1 => \hi_reg__0\(11),
      O => \hi_reg[31]_i_32_n_0\
    );
\hi_reg[31]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \hi_reg__0\(8),
      I1 => \hi_reg__0\(9),
      O => \hi_reg[31]_i_33_n_0\
    );
\hi_reg[31]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \hi_reg__0\(6),
      I1 => \hi_reg__0\(7),
      O => \hi_reg[31]_i_34_n_0\
    );
\hi_reg[31]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \hi_reg__0\(4),
      I1 => \hi_reg__0\(5),
      O => \hi_reg[31]_i_35_n_0\
    );
\hi_reg[31]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(10),
      I1 => \hi_reg__0\(11),
      O => \hi_reg[31]_i_36_n_0\
    );
\hi_reg[31]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(8),
      I1 => \hi_reg__0\(9),
      O => \hi_reg[31]_i_37_n_0\
    );
\hi_reg[31]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(6),
      I1 => \hi_reg__0\(7),
      O => \hi_reg[31]_i_38_n_0\
    );
\hi_reg[31]_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(4),
      I1 => \hi_reg__0\(5),
      O => \hi_reg[31]_i_39_n_0\
    );
\hi_reg[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \hi_reg__0\(30),
      I1 => \hi_reg__0\(31),
      O => \hi_reg[31]_i_6_n_0\
    );
\hi_reg[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \hi_reg__0\(28),
      I1 => \hi_reg__0\(29),
      O => \hi_reg[31]_i_7_n_0\
    );
\hi_reg[31]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(30),
      I1 => \hi_reg__0\(31),
      O => \hi_reg[31]_i_8_n_0\
    );
\hi_reg[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(28),
      I1 => \hi_reg__0\(29),
      O => \hi_reg[31]_i_9_n_0\
    );
\hi_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB0"
    )
        port map (
      I0 => \hi_reg_reg[3]_i_2_n_4\,
      I1 => state_reg_0(1),
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[2]\,
      O => hi_reg(3)
    );
\hi_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[3]_i_2_n_4\,
      I1 => \block_reg_reg_n_0_[3]\,
      O => \hi_reg[3]_i_3_n_0\
    );
\hi_reg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[3]_i_2_n_5\,
      I1 => \block_reg_reg_n_0_[2]\,
      O => \hi_reg[3]_i_4_n_0\
    );
\hi_reg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[3]_i_2_n_6\,
      I1 => \block_reg_reg_n_0_[1]\,
      O => \hi_reg[3]_i_5_n_0\
    );
\hi_reg[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[3]_i_2_n_7\,
      I1 => \block_reg_reg_n_0_[0]\,
      O => \hi_reg[3]_i_6_n_0\
    );
\hi_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \hi_reg_reg[7]_i_2_n_7\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[3]\,
      O => hi_reg(4)
    );
\hi_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[4]\,
      I2 => state_reg_0(1),
      I3 => \hi_reg_reg[7]_i_2_n_6\,
      O => hi_reg(5)
    );
\hi_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[5]\,
      I2 => state_reg_0(1),
      I3 => \hi_reg_reg[7]_i_2_n_5\,
      O => hi_reg(6)
    );
\hi_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[6]\,
      I2 => state_reg_0(1),
      I3 => \hi_reg_reg[7]_i_2_n_4\,
      O => hi_reg(7)
    );
\hi_reg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[7]_i_2_n_4\,
      I1 => \block_reg_reg_n_0_[7]\,
      O => \hi_reg[7]_i_3_n_0\
    );
\hi_reg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[7]_i_2_n_5\,
      I1 => \block_reg_reg_n_0_[6]\,
      O => \hi_reg[7]_i_4_n_0\
    );
\hi_reg[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[7]_i_2_n_6\,
      I1 => \block_reg_reg_n_0_[5]\,
      O => \hi_reg[7]_i_5_n_0\
    );
\hi_reg[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \mid_reg_reg[7]_i_2_n_7\,
      I1 => \block_reg_reg_n_0_[4]\,
      O => \hi_reg[7]_i_6_n_0\
    );
\hi_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[7]\,
      I2 => state_reg_0(1),
      I3 => \hi_reg_reg[11]_i_2_n_7\,
      O => hi_reg(8)
    );
\hi_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \block_reg_reg_n_0_[8]\,
      I2 => state_reg_0(1),
      I3 => \hi_reg_reg[11]_i_2_n_6\,
      O => hi_reg(9)
    );
\hi_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(0),
      Q => \hi_reg__0\(0)
    );
\hi_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(10),
      Q => \hi_reg__0\(10)
    );
\hi_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(11),
      Q => \hi_reg__0\(11)
    );
\hi_reg_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hi_reg_reg[7]_i_2_n_0\,
      CO(3) => \hi_reg_reg[11]_i_2_n_0\,
      CO(2 downto 0) => \NLW_hi_reg_reg[11]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mid_reg_reg[11]_i_2_n_4\,
      DI(2) => \mid_reg_reg[11]_i_2_n_5\,
      DI(1) => \mid_reg_reg[11]_i_2_n_6\,
      DI(0) => \mid_reg_reg[11]_i_2_n_7\,
      O(3) => \hi_reg_reg[11]_i_2_n_4\,
      O(2) => \hi_reg_reg[11]_i_2_n_5\,
      O(1) => \hi_reg_reg[11]_i_2_n_6\,
      O(0) => \hi_reg_reg[11]_i_2_n_7\,
      S(3) => \hi_reg[11]_i_3_n_0\,
      S(2) => \hi_reg[11]_i_4_n_0\,
      S(1) => \hi_reg[11]_i_5_n_0\,
      S(0) => \hi_reg[11]_i_6_n_0\
    );
\hi_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(12),
      Q => \hi_reg__0\(12)
    );
\hi_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(13),
      Q => \hi_reg__0\(13)
    );
\hi_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(14),
      Q => \hi_reg__0\(14)
    );
\hi_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(15),
      Q => \hi_reg__0\(15)
    );
\hi_reg_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hi_reg_reg[11]_i_2_n_0\,
      CO(3) => \hi_reg_reg[15]_i_2_n_0\,
      CO(2 downto 0) => \NLW_hi_reg_reg[15]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mid_reg_reg[15]_i_2_n_4\,
      DI(2) => \mid_reg_reg[15]_i_2_n_5\,
      DI(1) => \mid_reg_reg[15]_i_2_n_6\,
      DI(0) => \mid_reg_reg[15]_i_2_n_7\,
      O(3) => \hi_reg_reg[15]_i_2_n_4\,
      O(2) => \hi_reg_reg[15]_i_2_n_5\,
      O(1) => \hi_reg_reg[15]_i_2_n_6\,
      O(0) => \hi_reg_reg[15]_i_2_n_7\,
      S(3) => \hi_reg[15]_i_3_n_0\,
      S(2) => \hi_reg[15]_i_4_n_0\,
      S(1) => \hi_reg[15]_i_5_n_0\,
      S(0) => \hi_reg[15]_i_6_n_0\
    );
\hi_reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(16),
      Q => \hi_reg__0\(16)
    );
\hi_reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(17),
      Q => \hi_reg__0\(17)
    );
\hi_reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(18),
      Q => \hi_reg__0\(18)
    );
\hi_reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(19),
      Q => \hi_reg__0\(19)
    );
\hi_reg_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hi_reg_reg[15]_i_2_n_0\,
      CO(3) => \hi_reg_reg[19]_i_2_n_0\,
      CO(2 downto 0) => \NLW_hi_reg_reg[19]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mid_reg_reg[19]_i_2_n_4\,
      DI(2) => \mid_reg_reg[19]_i_2_n_5\,
      DI(1) => \mid_reg_reg[19]_i_2_n_6\,
      DI(0) => \mid_reg_reg[19]_i_2_n_7\,
      O(3) => \hi_reg_reg[19]_i_2_n_4\,
      O(2) => \hi_reg_reg[19]_i_2_n_5\,
      O(1) => \hi_reg_reg[19]_i_2_n_6\,
      O(0) => \hi_reg_reg[19]_i_2_n_7\,
      S(3) => \hi_reg[19]_i_3_n_0\,
      S(2) => \hi_reg[19]_i_4_n_0\,
      S(1) => \hi_reg[19]_i_5_n_0\,
      S(0) => \hi_reg[19]_i_6_n_0\
    );
\hi_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      D => hi_reg(1),
      PRE => reset_IBUF,
      Q => \hi_reg__0\(1)
    );
\hi_reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(20),
      Q => \hi_reg__0\(20)
    );
\hi_reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(21),
      Q => \hi_reg__0\(21)
    );
\hi_reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(22),
      Q => \hi_reg__0\(22)
    );
\hi_reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(23),
      Q => \hi_reg__0\(23)
    );
\hi_reg_reg[23]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hi_reg_reg[19]_i_2_n_0\,
      CO(3) => \hi_reg_reg[23]_i_2_n_0\,
      CO(2 downto 0) => \NLW_hi_reg_reg[23]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mid_reg_reg[23]_i_2_n_4\,
      DI(2) => \mid_reg_reg[23]_i_2_n_5\,
      DI(1) => \mid_reg_reg[23]_i_2_n_6\,
      DI(0) => \mid_reg_reg[23]_i_2_n_7\,
      O(3) => \hi_reg_reg[23]_i_2_n_4\,
      O(2) => \hi_reg_reg[23]_i_2_n_5\,
      O(1) => \hi_reg_reg[23]_i_2_n_6\,
      O(0) => \hi_reg_reg[23]_i_2_n_7\,
      S(3) => \hi_reg[23]_i_3_n_0\,
      S(2) => \hi_reg[23]_i_4_n_0\,
      S(1) => \hi_reg[23]_i_5_n_0\,
      S(0) => \hi_reg[23]_i_6_n_0\
    );
\hi_reg_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(24),
      Q => \hi_reg__0\(24)
    );
\hi_reg_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(25),
      Q => \hi_reg__0\(25)
    );
\hi_reg_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(26),
      Q => \hi_reg__0\(26)
    );
\hi_reg_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(27),
      Q => \hi_reg__0\(27)
    );
\hi_reg_reg[27]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hi_reg_reg[23]_i_2_n_0\,
      CO(3) => \hi_reg_reg[27]_i_2_n_0\,
      CO(2 downto 0) => \NLW_hi_reg_reg[27]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mid_reg_reg[27]_i_2_n_4\,
      DI(2) => \mid_reg_reg[27]_i_2_n_5\,
      DI(1) => \mid_reg_reg[27]_i_2_n_6\,
      DI(0) => \mid_reg_reg[27]_i_2_n_7\,
      O(3) => \hi_reg_reg[27]_i_2_n_4\,
      O(2) => \hi_reg_reg[27]_i_2_n_5\,
      O(1) => \hi_reg_reg[27]_i_2_n_6\,
      O(0) => \hi_reg_reg[27]_i_2_n_7\,
      S(3) => \hi_reg[27]_i_3_n_0\,
      S(2) => \hi_reg[27]_i_4_n_0\,
      S(1) => \hi_reg[27]_i_5_n_0\,
      S(0) => \hi_reg[27]_i_6_n_0\
    );
\hi_reg_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(28),
      Q => \hi_reg__0\(28)
    );
\hi_reg_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(29),
      Q => \hi_reg__0\(29)
    );
\hi_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(2),
      Q => \hi_reg__0\(2)
    );
\hi_reg_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(30),
      Q => \hi_reg__0\(30)
    );
\hi_reg_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(31),
      Q => \hi_reg__0\(31)
    );
\hi_reg_reg[31]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \hi_reg_reg[31]_i_23_n_0\,
      CO(3) => \hi_reg_reg[31]_i_14_n_0\,
      CO(2 downto 0) => \NLW_hi_reg_reg[31]_i_14_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \hi_reg[31]_i_24_n_0\,
      DI(2) => \hi_reg[31]_i_25_n_0\,
      DI(1) => \hi_reg[31]_i_26_n_0\,
      DI(0) => \hi_reg[31]_i_27_n_0\,
      O(3 downto 0) => \NLW_hi_reg_reg[31]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3) => \hi_reg[31]_i_28_n_0\,
      S(2) => \hi_reg[31]_i_29_n_0\,
      S(1) => \hi_reg[31]_i_30_n_0\,
      S(0) => \hi_reg[31]_i_31_n_0\
    );
\hi_reg_reg[31]_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hi_reg_reg[31]_i_23_n_0\,
      CO(2 downto 0) => \NLW_hi_reg_reg[31]_i_23_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \hi_reg[31]_i_32_n_0\,
      DI(2) => \hi_reg[31]_i_33_n_0\,
      DI(1) => \hi_reg[31]_i_34_n_0\,
      DI(0) => \hi_reg[31]_i_35_n_0\,
      O(3 downto 0) => \NLW_hi_reg_reg[31]_i_23_O_UNCONNECTED\(3 downto 0),
      S(3) => \hi_reg[31]_i_36_n_0\,
      S(2) => \hi_reg[31]_i_37_n_0\,
      S(1) => \hi_reg[31]_i_38_n_0\,
      S(0) => \hi_reg[31]_i_39_n_0\
    );
\hi_reg_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \hi_reg_reg[31]_i_5_n_0\,
      CO(3 downto 2) => \NLW_hi_reg_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \hi_reg_reg[31]_i_3_n_2\,
      CO(0) => \NLW_hi_reg_reg[31]_i_3_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => \hi_reg[31]_i_6_n_0\,
      DI(0) => \hi_reg[31]_i_7_n_0\,
      O(3 downto 0) => \NLW_hi_reg_reg[31]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => '0',
      S(1) => \hi_reg[31]_i_8_n_0\,
      S(0) => \hi_reg[31]_i_9_n_0\
    );
\hi_reg_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \hi_reg_reg[27]_i_2_n_0\,
      CO(3 downto 0) => \NLW_hi_reg_reg[31]_i_4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \mid_reg_reg[31]_i_3_n_5\,
      DI(1) => \mid_reg_reg[31]_i_3_n_6\,
      DI(0) => \mid_reg_reg[31]_i_3_n_7\,
      O(3) => \hi_reg_reg[31]_i_4_n_4\,
      O(2) => \hi_reg_reg[31]_i_4_n_5\,
      O(1) => \hi_reg_reg[31]_i_4_n_6\,
      O(0) => \hi_reg_reg[31]_i_4_n_7\,
      S(3) => \hi_reg[31]_i_10_n_0\,
      S(2) => \hi_reg[31]_i_11_n_0\,
      S(1) => \hi_reg[31]_i_12_n_0\,
      S(0) => \hi_reg[31]_i_13_n_0\
    );
\hi_reg_reg[31]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \hi_reg_reg[31]_i_14_n_0\,
      CO(3) => \hi_reg_reg[31]_i_5_n_0\,
      CO(2 downto 0) => \NLW_hi_reg_reg[31]_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \hi_reg[31]_i_15_n_0\,
      DI(2) => \hi_reg[31]_i_16_n_0\,
      DI(1) => \hi_reg[31]_i_17_n_0\,
      DI(0) => \hi_reg[31]_i_18_n_0\,
      O(3 downto 0) => \NLW_hi_reg_reg[31]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \hi_reg[31]_i_19_n_0\,
      S(2) => \hi_reg[31]_i_20_n_0\,
      S(1) => \hi_reg[31]_i_21_n_0\,
      S(0) => \hi_reg[31]_i_22_n_0\
    );
\hi_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(3),
      Q => \hi_reg__0\(3)
    );
\hi_reg_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \hi_reg_reg[3]_i_2_n_0\,
      CO(2 downto 0) => \NLW_hi_reg_reg[3]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mid_reg_reg[3]_i_2_n_4\,
      DI(2) => \mid_reg_reg[3]_i_2_n_5\,
      DI(1) => \mid_reg_reg[3]_i_2_n_6\,
      DI(0) => \mid_reg_reg[3]_i_2_n_7\,
      O(3) => \hi_reg_reg[3]_i_2_n_4\,
      O(2) => \hi_reg_reg[3]_i_2_n_5\,
      O(1) => \hi_reg_reg[3]_i_2_n_6\,
      O(0) => \hi_reg_reg[3]_i_2_n_7\,
      S(3) => \hi_reg[3]_i_3_n_0\,
      S(2) => \hi_reg[3]_i_4_n_0\,
      S(1) => \hi_reg[3]_i_5_n_0\,
      S(0) => \hi_reg[3]_i_6_n_0\
    );
\hi_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(4),
      Q => \hi_reg__0\(4)
    );
\hi_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(5),
      Q => \hi_reg__0\(5)
    );
\hi_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(6),
      Q => \hi_reg__0\(6)
    );
\hi_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(7),
      Q => \hi_reg__0\(7)
    );
\hi_reg_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hi_reg_reg[3]_i_2_n_0\,
      CO(3) => \hi_reg_reg[7]_i_2_n_0\,
      CO(2 downto 0) => \NLW_hi_reg_reg[7]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \mid_reg_reg[7]_i_2_n_4\,
      DI(2) => \mid_reg_reg[7]_i_2_n_5\,
      DI(1) => \mid_reg_reg[7]_i_2_n_6\,
      DI(0) => \mid_reg_reg[7]_i_2_n_7\,
      O(3) => \hi_reg_reg[7]_i_2_n_4\,
      O(2) => \hi_reg_reg[7]_i_2_n_5\,
      O(1) => \hi_reg_reg[7]_i_2_n_6\,
      O(0) => \hi_reg_reg[7]_i_2_n_7\,
      S(3) => \hi_reg[7]_i_3_n_0\,
      S(2) => \hi_reg[7]_i_4_n_0\,
      S(1) => \hi_reg[7]_i_5_n_0\,
      S(0) => \hi_reg[7]_i_6_n_0\
    );
\hi_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(8),
      Q => \hi_reg__0\(8)
    );
\hi_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \hi_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => hi_reg(9),
      Q => \hi_reg__0\(9)
    );
\i_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => lo_reg(0),
      I1 => state_reg_0(0),
      I2 => i_reg(0),
      O => \i_reg[0]_i_1_n_0\
    );
\i_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => lo_reg(1),
      I1 => state_reg_0(0),
      I2 => i_reg(0),
      I3 => i_reg(1),
      O => \i_reg[1]_i_1_n_0\
    );
\i_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBBB888"
    )
        port map (
      I0 => lo_reg(2),
      I1 => state_reg_0(0),
      I2 => i_reg(0),
      I3 => i_reg(1),
      I4 => i_reg(2),
      O => \i_reg[2]_i_1_n_0\
    );
\i_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00200000FFFFFFFF"
    )
        port map (
      I0 => \i_reg[3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \i_reg[3]_i_4_n_0\,
      I3 => \i_reg_reg[3]_i_5_n_1\,
      I4 => state_reg_0(2),
      I5 => \FSM_sequential_state_reg[0]_i_3_n_0\,
      O => \i_reg[3]_i_1_n_0\
    );
\i_reg[3]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \mid_reg__0\(23),
      I1 => \mid_reg__0\(22),
      I2 => \mid_reg__0\(21),
      O => \i_reg[3]_i_11_n_0\
    );
\i_reg[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \mid_reg__0\(20),
      I1 => \mid_reg__0\(19),
      I2 => \mid_reg__0\(18),
      O => \i_reg[3]_i_12_n_0\
    );
\i_reg[3]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \mid_reg__0\(17),
      I1 => \mid_reg__0\(16),
      I2 => \mid_reg__0\(15),
      O => \i_reg[3]_i_13_n_0\
    );
\i_reg[3]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \mid_reg__0\(14),
      I1 => \mid_reg__0\(13),
      I2 => \mid_reg__0\(12),
      O => \i_reg[3]_i_14_n_0\
    );
\i_reg[3]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \mid_reg__0\(11),
      I1 => \mid_reg__0\(10),
      I2 => \mid_reg__0\(9),
      O => \i_reg[3]_i_15_n_0\
    );
\i_reg[3]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \mid_reg__0\(8),
      I1 => \mid_reg__0\(7),
      I2 => \mid_reg__0\(6),
      O => \i_reg[3]_i_16_n_0\
    );
\i_reg[3]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => i_reg(3),
      I1 => \mid_reg_reg_n_0_[3]\,
      I2 => \mid_reg__0\(5),
      I3 => \mid_reg__0\(4),
      O => \i_reg[3]_i_17_n_0\
    );
\i_reg[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_reg(0),
      I1 => \mid_reg_reg_n_0_[0]\,
      I2 => \mid_reg_reg_n_0_[2]\,
      I3 => i_reg(2),
      I4 => \mid_reg_reg_n_0_[1]\,
      I5 => i_reg(1),
      O => \i_reg[3]_i_18_n_0\
    );
\i_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBBBBBB8888888"
    )
        port map (
      I0 => lo_reg(3),
      I1 => state_reg_0(0),
      I2 => i_reg(1),
      I3 => i_reg(0),
      I4 => i_reg(2),
      I5 => i_reg(3),
      O => \i_reg[3]_i_2_n_0\
    );
\i_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => state_reg_0(0),
      O => \i_reg[3]_i_3_n_0\
    );
\i_reg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \temp_reg[0][3]_i_6_n_1\,
      I1 => \temp_reg[0][3]_i_5_n_2\,
      O => \i_reg[3]_i_4_n_0\
    );
\i_reg[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mid_reg__0\(30),
      I1 => \mid_reg__0\(31),
      O => \i_reg[3]_i_7_n_0\
    );
\i_reg[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \mid_reg__0\(29),
      I1 => \mid_reg__0\(28),
      I2 => \mid_reg__0\(27),
      O => \i_reg[3]_i_8_n_0\
    );
\i_reg[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \mid_reg__0\(26),
      I1 => \mid_reg__0\(25),
      I2 => \mid_reg__0\(24),
      O => \i_reg[3]_i_9_n_0\
    );
\i_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_reg[3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \i_reg[0]_i_1_n_0\,
      Q => i_reg(0)
    );
\i_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_reg[3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \i_reg[1]_i_1_n_0\,
      Q => i_reg(1)
    );
\i_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_reg[3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \i_reg[2]_i_1_n_0\,
      Q => i_reg(2)
    );
\i_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \i_reg[3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \i_reg[3]_i_2_n_0\,
      Q => i_reg(3)
    );
\i_reg_reg[3]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_reg_reg[3]_i_10_n_0\,
      CO(2 downto 0) => \NLW_i_reg_reg[3]_i_10_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_i_reg_reg[3]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => \i_reg[3]_i_15_n_0\,
      S(2) => \i_reg[3]_i_16_n_0\,
      S(1) => \i_reg[3]_i_17_n_0\,
      S(0) => \i_reg[3]_i_18_n_0\
    );
\i_reg_reg[3]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg_reg[3]_i_6_n_0\,
      CO(3) => \NLW_i_reg_reg[3]_i_5_CO_UNCONNECTED\(3),
      CO(2) => \i_reg_reg[3]_i_5_n_1\,
      CO(1 downto 0) => \NLW_i_reg_reg[3]_i_5_CO_UNCONNECTED\(1 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_i_reg_reg[3]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i_reg[3]_i_7_n_0\,
      S(1) => \i_reg[3]_i_8_n_0\,
      S(0) => \i_reg[3]_i_9_n_0\
    );
\i_reg_reg[3]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg_reg[3]_i_10_n_0\,
      CO(3) => \i_reg_reg[3]_i_6_n_0\,
      CO(2 downto 0) => \NLW_i_reg_reg[3]_i_6_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_i_reg_reg[3]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => \i_reg[3]_i_11_n_0\,
      S(2) => \i_reg[3]_i_12_n_0\,
      S(1) => \i_reg[3]_i_13_n_0\,
      S(0) => \i_reg[3]_i_14_n_0\
    );
\it_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg__0\(0),
      O => \it_reg[0]_i_1_n_0\
    );
\it_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[12]_i_2_n_6\,
      O => it_reg(10)
    );
\it_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[12]_i_2_n_5\,
      O => it_reg(11)
    );
\it_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[12]_i_2_n_4\,
      O => it_reg(12)
    );
\it_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[16]_i_2_n_7\,
      O => it_reg(13)
    );
\it_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[16]_i_2_n_6\,
      O => it_reg(14)
    );
\it_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[16]_i_2_n_5\,
      O => it_reg(15)
    );
\it_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[16]_i_2_n_4\,
      O => it_reg(16)
    );
\it_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[20]_i_2_n_7\,
      O => it_reg(17)
    );
\it_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[20]_i_2_n_6\,
      O => it_reg(18)
    );
\it_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[20]_i_2_n_5\,
      O => it_reg(19)
    );
\it_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[4]_i_2_n_7\,
      O => it_reg(1)
    );
\it_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[20]_i_2_n_4\,
      O => it_reg(20)
    );
\it_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[24]_i_2_n_7\,
      O => it_reg(21)
    );
\it_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[24]_i_2_n_6\,
      O => it_reg(22)
    );
\it_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[24]_i_2_n_5\,
      O => it_reg(23)
    );
\it_reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[24]_i_2_n_4\,
      O => it_reg(24)
    );
\it_reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[28]_i_2_n_7\,
      O => it_reg(25)
    );
\it_reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[28]_i_2_n_6\,
      O => it_reg(26)
    );
\it_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[28]_i_2_n_5\,
      O => it_reg(27)
    );
\it_reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[28]_i_2_n_4\,
      O => it_reg(28)
    );
\it_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[31]_i_4_n_7\,
      O => it_reg(29)
    );
\it_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[4]_i_2_n_6\,
      O => it_reg(2)
    );
\it_reg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[31]_i_4_n_6\,
      O => it_reg(30)
    );
\it_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000C3C"
    )
        port map (
      I0 => \it_reg_reg[31]_i_3_n_0\,
      I1 => state_reg_0(1),
      I2 => state_reg_0(2),
      I3 => request_out_reg_0,
      I4 => state_reg_0(0),
      O => \it_reg[31]_i_1_n_0\
    );
\it_reg[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \it_reg__0\(30),
      I1 => \it_reg__0\(31),
      O => \it_reg[31]_i_10_n_0\
    );
\it_reg[31]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \it_reg__0\(28),
      I1 => \it_reg__0\(29),
      O => \it_reg[31]_i_11_n_0\
    );
\it_reg[31]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \it_reg__0\(26),
      I1 => \it_reg__0\(27),
      O => \it_reg[31]_i_12_n_0\
    );
\it_reg[31]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \it_reg__0\(24),
      I1 => \it_reg__0\(25),
      O => \it_reg[31]_i_13_n_0\
    );
\it_reg[31]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \it_reg__0\(22),
      I1 => \it_reg__0\(23),
      O => \it_reg[31]_i_18_n_0\
    );
\it_reg[31]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \it_reg__0\(20),
      I1 => \it_reg__0\(21),
      O => \it_reg[31]_i_19_n_0\
    );
\it_reg[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[31]_i_4_n_5\,
      O => it_reg(31)
    );
\it_reg[31]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \it_reg__0\(18),
      I1 => \it_reg__0\(19),
      O => \it_reg[31]_i_20_n_0\
    );
\it_reg[31]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \it_reg__0\(16),
      I1 => \it_reg__0\(17),
      O => \it_reg[31]_i_21_n_0\
    );
\it_reg[31]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \it_reg__0\(22),
      I1 => \it_reg__0\(23),
      O => \it_reg[31]_i_22_n_0\
    );
\it_reg[31]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \it_reg__0\(20),
      I1 => \it_reg__0\(21),
      O => \it_reg[31]_i_23_n_0\
    );
\it_reg[31]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \it_reg__0\(18),
      I1 => \it_reg__0\(19),
      O => \it_reg[31]_i_24_n_0\
    );
\it_reg[31]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \it_reg__0\(16),
      I1 => \it_reg__0\(17),
      O => \it_reg[31]_i_25_n_0\
    );
\it_reg[31]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \it_reg__0\(14),
      I1 => \it_reg__0\(15),
      O => \it_reg[31]_i_27_n_0\
    );
\it_reg[31]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \it_reg__0\(12),
      I1 => \it_reg__0\(13),
      O => \it_reg[31]_i_28_n_0\
    );
\it_reg[31]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \it_reg__0\(10),
      I1 => \it_reg__0\(11),
      O => \it_reg[31]_i_29_n_0\
    );
\it_reg[31]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \it_reg__0\(8),
      I1 => \it_reg__0\(9),
      O => \it_reg[31]_i_30_n_0\
    );
\it_reg[31]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \it_reg__0\(14),
      I1 => \it_reg__0\(15),
      O => \it_reg[31]_i_31_n_0\
    );
\it_reg[31]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \it_reg__0\(12),
      I1 => \it_reg__0\(13),
      O => \it_reg[31]_i_32_n_0\
    );
\it_reg[31]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \it_reg__0\(10),
      I1 => \it_reg__0\(11),
      O => \it_reg[31]_i_33_n_0\
    );
\it_reg[31]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \it_reg__0\(8),
      I1 => \it_reg__0\(9),
      O => \it_reg[31]_i_34_n_0\
    );
\it_reg[31]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \it_reg__0\(6),
      I1 => \it_reg__0\(7),
      O => \it_reg[31]_i_35_n_0\
    );
\it_reg[31]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \it_reg__0\(2),
      I1 => \it_reg__0\(3),
      O => \it_reg[31]_i_36_n_0\
    );
\it_reg[31]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \it_reg__0\(0),
      I1 => \it_reg__0\(1),
      O => \it_reg[31]_i_37_n_0\
    );
\it_reg[31]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \it_reg__0\(6),
      I1 => \it_reg__0\(7),
      O => \it_reg[31]_i_38_n_0\
    );
\it_reg[31]_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \it_reg__0\(4),
      I1 => \it_reg__0\(5),
      O => \it_reg[31]_i_39_n_0\
    );
\it_reg[31]_i_40\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \it_reg__0\(2),
      I1 => \it_reg__0\(3),
      O => \it_reg[31]_i_40_n_0\
    );
\it_reg[31]_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \it_reg__0\(0),
      I1 => \it_reg__0\(1),
      O => \it_reg[31]_i_41_n_0\
    );
\it_reg[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \it_reg__0\(30),
      I1 => \it_reg__0\(31),
      O => \it_reg[31]_i_6_n_0\
    );
\it_reg[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \it_reg__0\(28),
      I1 => \it_reg__0\(29),
      O => \it_reg[31]_i_7_n_0\
    );
\it_reg[31]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \it_reg__0\(26),
      I1 => \it_reg__0\(27),
      O => \it_reg[31]_i_8_n_0\
    );
\it_reg[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \it_reg__0\(24),
      I1 => \it_reg__0\(25),
      O => \it_reg[31]_i_9_n_0\
    );
\it_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[4]_i_2_n_5\,
      O => it_reg(3)
    );
\it_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[4]_i_2_n_4\,
      O => it_reg(4)
    );
\it_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[8]_i_2_n_7\,
      O => it_reg(5)
    );
\it_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[8]_i_2_n_6\,
      O => it_reg(6)
    );
\it_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[8]_i_2_n_5\,
      O => it_reg(7)
    );
\it_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[8]_i_2_n_4\,
      O => it_reg(8)
    );
\it_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \it_reg_reg[12]_i_2_n_7\,
      O => it_reg(9)
    );
\it_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \it_reg[0]_i_1_n_0\,
      Q => \it_reg__0\(0)
    );
\it_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(10),
      Q => \it_reg__0\(10)
    );
\it_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(11),
      Q => \it_reg__0\(11)
    );
\it_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(12),
      Q => \it_reg__0\(12)
    );
\it_reg_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \it_reg_reg[8]_i_2_n_0\,
      CO(3) => \it_reg_reg[12]_i_2_n_0\,
      CO(2 downto 0) => \NLW_it_reg_reg[12]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \it_reg_reg[12]_i_2_n_4\,
      O(2) => \it_reg_reg[12]_i_2_n_5\,
      O(1) => \it_reg_reg[12]_i_2_n_6\,
      O(0) => \it_reg_reg[12]_i_2_n_7\,
      S(3 downto 0) => \it_reg__0\(12 downto 9)
    );
\it_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(13),
      Q => \it_reg__0\(13)
    );
\it_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(14),
      Q => \it_reg__0\(14)
    );
\it_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(15),
      Q => \it_reg__0\(15)
    );
\it_reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(16),
      Q => \it_reg__0\(16)
    );
\it_reg_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \it_reg_reg[12]_i_2_n_0\,
      CO(3) => \it_reg_reg[16]_i_2_n_0\,
      CO(2 downto 0) => \NLW_it_reg_reg[16]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \it_reg_reg[16]_i_2_n_4\,
      O(2) => \it_reg_reg[16]_i_2_n_5\,
      O(1) => \it_reg_reg[16]_i_2_n_6\,
      O(0) => \it_reg_reg[16]_i_2_n_7\,
      S(3 downto 0) => \it_reg__0\(16 downto 13)
    );
\it_reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(17),
      Q => \it_reg__0\(17)
    );
\it_reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(18),
      Q => \it_reg__0\(18)
    );
\it_reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(19),
      Q => \it_reg__0\(19)
    );
\it_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(1),
      Q => \it_reg__0\(1)
    );
\it_reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(20),
      Q => \it_reg__0\(20)
    );
\it_reg_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \it_reg_reg[16]_i_2_n_0\,
      CO(3) => \it_reg_reg[20]_i_2_n_0\,
      CO(2 downto 0) => \NLW_it_reg_reg[20]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \it_reg_reg[20]_i_2_n_4\,
      O(2) => \it_reg_reg[20]_i_2_n_5\,
      O(1) => \it_reg_reg[20]_i_2_n_6\,
      O(0) => \it_reg_reg[20]_i_2_n_7\,
      S(3 downto 0) => \it_reg__0\(20 downto 17)
    );
\it_reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(21),
      Q => \it_reg__0\(21)
    );
\it_reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(22),
      Q => \it_reg__0\(22)
    );
\it_reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(23),
      Q => \it_reg__0\(23)
    );
\it_reg_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(24),
      Q => \it_reg__0\(24)
    );
\it_reg_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \it_reg_reg[20]_i_2_n_0\,
      CO(3) => \it_reg_reg[24]_i_2_n_0\,
      CO(2 downto 0) => \NLW_it_reg_reg[24]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \it_reg_reg[24]_i_2_n_4\,
      O(2) => \it_reg_reg[24]_i_2_n_5\,
      O(1) => \it_reg_reg[24]_i_2_n_6\,
      O(0) => \it_reg_reg[24]_i_2_n_7\,
      S(3 downto 0) => \it_reg__0\(24 downto 21)
    );
\it_reg_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(25),
      Q => \it_reg__0\(25)
    );
\it_reg_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(26),
      Q => \it_reg__0\(26)
    );
\it_reg_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(27),
      Q => \it_reg__0\(27)
    );
\it_reg_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(28),
      Q => \it_reg__0\(28)
    );
\it_reg_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \it_reg_reg[24]_i_2_n_0\,
      CO(3) => \it_reg_reg[28]_i_2_n_0\,
      CO(2 downto 0) => \NLW_it_reg_reg[28]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \it_reg_reg[28]_i_2_n_4\,
      O(2) => \it_reg_reg[28]_i_2_n_5\,
      O(1) => \it_reg_reg[28]_i_2_n_6\,
      O(0) => \it_reg_reg[28]_i_2_n_7\,
      S(3 downto 0) => \it_reg__0\(28 downto 25)
    );
\it_reg_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(29),
      Q => \it_reg__0\(29)
    );
\it_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(2),
      Q => \it_reg__0\(2)
    );
\it_reg_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(30),
      Q => \it_reg__0\(30)
    );
\it_reg_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(31),
      Q => \it_reg__0\(31)
    );
\it_reg_reg[31]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => \it_reg_reg[31]_i_26_n_0\,
      CO(3) => \it_reg_reg[31]_i_17_n_0\,
      CO(2 downto 0) => \NLW_it_reg_reg[31]_i_17_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \it_reg[31]_i_27_n_0\,
      DI(2) => \it_reg[31]_i_28_n_0\,
      DI(1) => \it_reg[31]_i_29_n_0\,
      DI(0) => \it_reg[31]_i_30_n_0\,
      O(3 downto 0) => \NLW_it_reg_reg[31]_i_17_O_UNCONNECTED\(3 downto 0),
      S(3) => \it_reg[31]_i_31_n_0\,
      S(2) => \it_reg[31]_i_32_n_0\,
      S(1) => \it_reg[31]_i_33_n_0\,
      S(0) => \it_reg[31]_i_34_n_0\
    );
\it_reg_reg[31]_i_26\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \it_reg_reg[31]_i_26_n_0\,
      CO(2 downto 0) => \NLW_it_reg_reg[31]_i_26_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => \it_reg[31]_i_35_n_0\,
      DI(2) => \it_reg__0\(5),
      DI(1) => \it_reg[31]_i_36_n_0\,
      DI(0) => \it_reg[31]_i_37_n_0\,
      O(3 downto 0) => \NLW_it_reg_reg[31]_i_26_O_UNCONNECTED\(3 downto 0),
      S(3) => \it_reg[31]_i_38_n_0\,
      S(2) => \it_reg[31]_i_39_n_0\,
      S(1) => \it_reg[31]_i_40_n_0\,
      S(0) => \it_reg[31]_i_41_n_0\
    );
\it_reg_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \it_reg_reg[31]_i_5_n_0\,
      CO(3) => \it_reg_reg[31]_i_3_n_0\,
      CO(2 downto 0) => \NLW_it_reg_reg[31]_i_3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \it_reg[31]_i_6_n_0\,
      DI(2) => \it_reg[31]_i_7_n_0\,
      DI(1) => \it_reg[31]_i_8_n_0\,
      DI(0) => \it_reg[31]_i_9_n_0\,
      O(3 downto 0) => \NLW_it_reg_reg[31]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \it_reg[31]_i_10_n_0\,
      S(2) => \it_reg[31]_i_11_n_0\,
      S(1) => \it_reg[31]_i_12_n_0\,
      S(0) => \it_reg[31]_i_13_n_0\
    );
\it_reg_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \it_reg_reg[28]_i_2_n_0\,
      CO(3 downto 0) => \NLW_it_reg_reg[31]_i_4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \NLW_it_reg_reg[31]_i_4_O_UNCONNECTED\(3),
      O(2) => \it_reg_reg[31]_i_4_n_5\,
      O(1) => \it_reg_reg[31]_i_4_n_6\,
      O(0) => \it_reg_reg[31]_i_4_n_7\,
      S(3) => '0',
      S(2 downto 0) => \it_reg__0\(31 downto 29)
    );
\it_reg_reg[31]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \it_reg_reg[31]_i_17_n_0\,
      CO(3) => \it_reg_reg[31]_i_5_n_0\,
      CO(2 downto 0) => \NLW_it_reg_reg[31]_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \it_reg[31]_i_18_n_0\,
      DI(2) => \it_reg[31]_i_19_n_0\,
      DI(1) => \it_reg[31]_i_20_n_0\,
      DI(0) => \it_reg[31]_i_21_n_0\,
      O(3 downto 0) => \NLW_it_reg_reg[31]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \it_reg[31]_i_22_n_0\,
      S(2) => \it_reg[31]_i_23_n_0\,
      S(1) => \it_reg[31]_i_24_n_0\,
      S(0) => \it_reg[31]_i_25_n_0\
    );
\it_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(3),
      Q => \it_reg__0\(3)
    );
\it_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(4),
      Q => \it_reg__0\(4)
    );
\it_reg_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \it_reg_reg[4]_i_2_n_0\,
      CO(2 downto 0) => \NLW_it_reg_reg[4]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \it_reg__0\(0),
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \it_reg_reg[4]_i_2_n_4\,
      O(2) => \it_reg_reg[4]_i_2_n_5\,
      O(1) => \it_reg_reg[4]_i_2_n_6\,
      O(0) => \it_reg_reg[4]_i_2_n_7\,
      S(3 downto 0) => \it_reg__0\(4 downto 1)
    );
\it_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(5),
      Q => \it_reg__0\(5)
    );
\it_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(6),
      Q => \it_reg__0\(6)
    );
\it_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(7),
      Q => \it_reg__0\(7)
    );
\it_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(8),
      Q => \it_reg__0\(8)
    );
\it_reg_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \it_reg_reg[4]_i_2_n_0\,
      CO(3) => \it_reg_reg[8]_i_2_n_0\,
      CO(2 downto 0) => \NLW_it_reg_reg[8]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \it_reg_reg[8]_i_2_n_4\,
      O(2) => \it_reg_reg[8]_i_2_n_5\,
      O(1) => \it_reg_reg[8]_i_2_n_6\,
      O(0) => \it_reg_reg[8]_i_2_n_7\,
      S(3 downto 0) => \it_reg__0\(8 downto 5)
    );
\it_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \it_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => it_reg(9),
      Q => \it_reg__0\(9)
    );
\j_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E0EF"
    )
        port map (
      I0 => \j_reg_reg[3]_i_3_n_2\,
      I1 => \mid_reg_reg_n_0_[0]\,
      I2 => state_reg_0(0),
      I3 => j_reg(0),
      O => \j_reg[0]_i_1_n_0\
    );
\j_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0EFEFE0"
    )
        port map (
      I0 => \j_reg_reg[3]_i_3_n_2\,
      I1 => \mid_reg_reg_n_0_[1]\,
      I2 => state_reg_0(0),
      I3 => j_reg(0),
      I4 => j_reg(1),
      O => \j_reg[1]_i_1_n_0\
    );
\j_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0EFEFEFEFE0E0E0"
    )
        port map (
      I0 => \j_reg_reg[3]_i_3_n_2\,
      I1 => \mid_reg_reg_n_0_[2]\,
      I2 => state_reg_0(0),
      I3 => j_reg(0),
      I4 => j_reg(1),
      I5 => j_reg(2),
      O => \j_reg[2]_i_1_n_0\
    );
\j_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20220000FFFFFFFF"
    )
        port map (
      I0 => \i_reg[3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \i_reg_reg[3]_i_5_n_1\,
      I3 => \i_reg[3]_i_4_n_0\,
      I4 => state_reg_0(2),
      I5 => \FSM_sequential_state_reg[0]_i_3_n_0\,
      O => \j_reg[3]_i_1_n_0\
    );
\j_reg[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(26),
      I1 => \lo_reg__0\(27),
      O => \j_reg[3]_i_11_n_0\
    );
\j_reg[3]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(24),
      I1 => \lo_reg__0\(25),
      O => \j_reg[3]_i_12_n_0\
    );
\j_reg[3]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(22),
      I1 => \lo_reg__0\(23),
      O => \j_reg[3]_i_13_n_0\
    );
\j_reg[3]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(20),
      I1 => \lo_reg__0\(21),
      O => \j_reg[3]_i_14_n_0\
    );
\j_reg[3]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(26),
      I1 => \lo_reg__0\(27),
      O => \j_reg[3]_i_15_n_0\
    );
\j_reg[3]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(24),
      I1 => \lo_reg__0\(25),
      O => \j_reg[3]_i_16_n_0\
    );
\j_reg[3]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(22),
      I1 => \lo_reg__0\(23),
      O => \j_reg[3]_i_17_n_0\
    );
\j_reg[3]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(20),
      I1 => \lo_reg__0\(21),
      O => \j_reg[3]_i_18_n_0\
    );
\j_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0EFEFEFEFE0E0E0"
    )
        port map (
      I0 => \j_reg_reg[3]_i_3_n_2\,
      I1 => \mid_reg_reg_n_0_[3]\,
      I2 => state_reg_0(0),
      I3 => \j_reg[3]_i_4_n_0\,
      I4 => j_reg(2),
      I5 => j_reg(3),
      O => \j_reg[3]_i_2_n_0\
    );
\j_reg[3]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(18),
      I1 => \lo_reg__0\(19),
      O => \j_reg[3]_i_20_n_0\
    );
\j_reg[3]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(16),
      I1 => \lo_reg__0\(17),
      O => \j_reg[3]_i_21_n_0\
    );
\j_reg[3]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(14),
      I1 => \lo_reg__0\(15),
      O => \j_reg[3]_i_22_n_0\
    );
\j_reg[3]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(12),
      I1 => \lo_reg__0\(13),
      O => \j_reg[3]_i_23_n_0\
    );
\j_reg[3]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(18),
      I1 => \lo_reg__0\(19),
      O => \j_reg[3]_i_24_n_0\
    );
\j_reg[3]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(16),
      I1 => \lo_reg__0\(17),
      O => \j_reg[3]_i_25_n_0\
    );
\j_reg[3]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(14),
      I1 => \lo_reg__0\(15),
      O => \j_reg[3]_i_26_n_0\
    );
\j_reg[3]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(12),
      I1 => \lo_reg__0\(13),
      O => \j_reg[3]_i_27_n_0\
    );
\j_reg[3]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(10),
      I1 => \lo_reg__0\(11),
      O => \j_reg[3]_i_28_n_0\
    );
\j_reg[3]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(8),
      I1 => \lo_reg__0\(9),
      O => \j_reg[3]_i_29_n_0\
    );
\j_reg[3]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(6),
      I1 => \lo_reg__0\(7),
      O => \j_reg[3]_i_30_n_0\
    );
\j_reg[3]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(4),
      I1 => \lo_reg__0\(5),
      O => \j_reg[3]_i_31_n_0\
    );
\j_reg[3]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(10),
      I1 => \lo_reg__0\(11),
      O => \j_reg[3]_i_32_n_0\
    );
\j_reg[3]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(8),
      I1 => \lo_reg__0\(9),
      O => \j_reg[3]_i_33_n_0\
    );
\j_reg[3]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(6),
      I1 => \lo_reg__0\(7),
      O => \j_reg[3]_i_34_n_0\
    );
\j_reg[3]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(4),
      I1 => \lo_reg__0\(5),
      O => \j_reg[3]_i_35_n_0\
    );
\j_reg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => j_reg(1),
      I1 => j_reg(0),
      O => \j_reg[3]_i_4_n_0\
    );
\j_reg[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lo_reg__0\(30),
      I1 => \lo_reg__0\(31),
      O => \j_reg[3]_i_6_n_0\
    );
\j_reg[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \lo_reg__0\(28),
      I1 => \lo_reg__0\(29),
      O => \j_reg[3]_i_7_n_0\
    );
\j_reg[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(30),
      I1 => \lo_reg__0\(31),
      O => \j_reg[3]_i_8_n_0\
    );
\j_reg[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \lo_reg__0\(28),
      I1 => \lo_reg__0\(29),
      O => \j_reg[3]_i_9_n_0\
    );
\j_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \j_reg[3]_i_1_n_0\,
      D => \j_reg[0]_i_1_n_0\,
      PRE => reset_IBUF,
      Q => j_reg(0)
    );
\j_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \j_reg[3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \j_reg[1]_i_1_n_0\,
      Q => j_reg(1)
    );
\j_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \j_reg[3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \j_reg[2]_i_1_n_0\,
      Q => j_reg(2)
    );
\j_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \j_reg[3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \j_reg[3]_i_2_n_0\,
      Q => j_reg(3)
    );
\j_reg_reg[3]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \j_reg_reg[3]_i_19_n_0\,
      CO(3) => \j_reg_reg[3]_i_10_n_0\,
      CO(2 downto 0) => \NLW_j_reg_reg[3]_i_10_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \j_reg[3]_i_20_n_0\,
      DI(2) => \j_reg[3]_i_21_n_0\,
      DI(1) => \j_reg[3]_i_22_n_0\,
      DI(0) => \j_reg[3]_i_23_n_0\,
      O(3 downto 0) => \NLW_j_reg_reg[3]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => \j_reg[3]_i_24_n_0\,
      S(2) => \j_reg[3]_i_25_n_0\,
      S(1) => \j_reg[3]_i_26_n_0\,
      S(0) => \j_reg[3]_i_27_n_0\
    );
\j_reg_reg[3]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \j_reg_reg[3]_i_19_n_0\,
      CO(2 downto 0) => \NLW_j_reg_reg[3]_i_19_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \j_reg[3]_i_28_n_0\,
      DI(2) => \j_reg[3]_i_29_n_0\,
      DI(1) => \j_reg[3]_i_30_n_0\,
      DI(0) => \j_reg[3]_i_31_n_0\,
      O(3 downto 0) => \NLW_j_reg_reg[3]_i_19_O_UNCONNECTED\(3 downto 0),
      S(3) => \j_reg[3]_i_32_n_0\,
      S(2) => \j_reg[3]_i_33_n_0\,
      S(1) => \j_reg[3]_i_34_n_0\,
      S(0) => \j_reg[3]_i_35_n_0\
    );
\j_reg_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \j_reg_reg[3]_i_5_n_0\,
      CO(3 downto 2) => \NLW_j_reg_reg[3]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \j_reg_reg[3]_i_3_n_2\,
      CO(0) => \NLW_j_reg_reg[3]_i_3_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => \j_reg[3]_i_6_n_0\,
      DI(0) => \j_reg[3]_i_7_n_0\,
      O(3 downto 0) => \NLW_j_reg_reg[3]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => '0',
      S(1) => \j_reg[3]_i_8_n_0\,
      S(0) => \j_reg[3]_i_9_n_0\
    );
\j_reg_reg[3]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \j_reg_reg[3]_i_10_n_0\,
      CO(3) => \j_reg_reg[3]_i_5_n_0\,
      CO(2 downto 0) => \NLW_j_reg_reg[3]_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \j_reg[3]_i_11_n_0\,
      DI(2) => \j_reg[3]_i_12_n_0\,
      DI(1) => \j_reg[3]_i_13_n_0\,
      DI(0) => \j_reg[3]_i_14_n_0\,
      O(3 downto 0) => \NLW_j_reg_reg[3]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \j_reg[3]_i_15_n_0\,
      S(2) => \j_reg[3]_i_16_n_0\,
      S(1) => \j_reg[3]_i_17_n_0\,
      S(0) => \j_reg[3]_i_18_n_0\
    );
\k_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => lo_reg(0),
      I1 => state_reg_0(0),
      I2 => \k_reg_reg_n_0_[0]\,
      O => \k_reg[0]_i_1_n_0\
    );
\k_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => lo_reg(1),
      I1 => state_reg_0(0),
      I2 => \k_reg_reg_n_0_[0]\,
      I3 => \k_reg_reg_n_0_[1]\,
      O => \k_reg[1]_i_1_n_0\
    );
\k_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBBB888"
    )
        port map (
      I0 => lo_reg(2),
      I1 => state_reg_0(0),
      I2 => \k_reg_reg_n_0_[0]\,
      I3 => \k_reg_reg_n_0_[1]\,
      I4 => \k_reg_reg_n_0_[2]\,
      O => \k_reg[2]_i_1_n_0\
    );
\k_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10001C00"
    )
        port map (
      I0 => \k_reg_reg[3]_i_3_n_0\,
      I1 => state_reg_0(0),
      I2 => state_reg_0(1),
      I3 => state_reg_0(2),
      I4 => \block_reg_reg[31]_i_3_n_0\,
      O => \k_reg[3]_i_1_n_0\
    );
\k_reg[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(22),
      I1 => \hi_reg__0\(23),
      O => \k_reg[3]_i_10_n_0\
    );
\k_reg[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(20),
      I1 => \hi_reg__0\(21),
      O => \k_reg[3]_i_11_n_0\
    );
\k_reg[3]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(18),
      I1 => \hi_reg__0\(19),
      O => \k_reg[3]_i_12_n_0\
    );
\k_reg[3]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(16),
      I1 => \hi_reg__0\(17),
      O => \k_reg[3]_i_13_n_0\
    );
\k_reg[3]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(14),
      I1 => \hi_reg__0\(15),
      O => \k_reg[3]_i_15_n_0\
    );
\k_reg[3]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(12),
      I1 => \hi_reg__0\(13),
      O => \k_reg[3]_i_16_n_0\
    );
\k_reg[3]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(10),
      I1 => \hi_reg__0\(11),
      O => \k_reg[3]_i_17_n_0\
    );
\k_reg[3]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(8),
      I1 => \hi_reg__0\(9),
      O => \k_reg[3]_i_18_n_0\
    );
\k_reg[3]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \k_reg_reg_n_0_[2]\,
      I1 => \hi_reg__0\(2),
      I2 => \hi_reg__0\(3),
      I3 => \k_reg_reg_n_0_[3]\,
      O => \k_reg[3]_i_19_n_0\
    );
\k_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBBBBBB8888888"
    )
        port map (
      I0 => lo_reg(3),
      I1 => state_reg_0(0),
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \k_reg_reg_n_0_[0]\,
      I4 => \k_reg_reg_n_0_[2]\,
      I5 => \k_reg_reg_n_0_[3]\,
      O => \k_reg[3]_i_2_n_0\
    );
\k_reg[3]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \k_reg_reg_n_0_[0]\,
      I1 => \hi_reg__0\(0),
      I2 => \hi_reg__0\(1),
      I3 => \k_reg_reg_n_0_[1]\,
      O => \k_reg[3]_i_20_n_0\
    );
\k_reg[3]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(6),
      I1 => \hi_reg__0\(7),
      O => \k_reg[3]_i_21_n_0\
    );
\k_reg[3]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(4),
      I1 => \hi_reg__0\(5),
      O => \k_reg[3]_i_22_n_0\
    );
\k_reg[3]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \k_reg_reg_n_0_[2]\,
      I1 => \hi_reg__0\(2),
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \hi_reg__0\(3),
      O => \k_reg[3]_i_23_n_0\
    );
\k_reg[3]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \k_reg_reg_n_0_[0]\,
      I1 => \hi_reg__0\(0),
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \hi_reg__0\(1),
      O => \k_reg[3]_i_24_n_0\
    );
\k_reg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(30),
      I1 => \hi_reg__0\(31),
      O => \k_reg[3]_i_5_n_0\
    );
\k_reg[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(28),
      I1 => \hi_reg__0\(29),
      O => \k_reg[3]_i_6_n_0\
    );
\k_reg[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(26),
      I1 => \hi_reg__0\(27),
      O => \k_reg[3]_i_7_n_0\
    );
\k_reg[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(24),
      I1 => \hi_reg__0\(25),
      O => \k_reg[3]_i_8_n_0\
    );
\k_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \k_reg[3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \k_reg[0]_i_1_n_0\,
      Q => \k_reg_reg_n_0_[0]\
    );
\k_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \k_reg[3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \k_reg[1]_i_1_n_0\,
      Q => \k_reg_reg_n_0_[1]\
    );
\k_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \k_reg[3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \k_reg[2]_i_1_n_0\,
      Q => \k_reg_reg_n_0_[2]\
    );
\k_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \k_reg[3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \k_reg[3]_i_2_n_0\,
      Q => \k_reg_reg_n_0_[3]\
    );
\k_reg_reg[3]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \k_reg_reg[3]_i_14_n_0\,
      CO(2 downto 0) => \NLW_k_reg_reg[3]_i_14_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => \k_reg[3]_i_19_n_0\,
      DI(0) => \k_reg[3]_i_20_n_0\,
      O(3 downto 0) => \NLW_k_reg_reg[3]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3) => \k_reg[3]_i_21_n_0\,
      S(2) => \k_reg[3]_i_22_n_0\,
      S(1) => \k_reg[3]_i_23_n_0\,
      S(0) => \k_reg[3]_i_24_n_0\
    );
\k_reg_reg[3]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \k_reg_reg[3]_i_4_n_0\,
      CO(3) => \k_reg_reg[3]_i_3_n_0\,
      CO(2 downto 0) => \NLW_k_reg_reg[3]_i_3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \hi_reg__0\(31),
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_k_reg_reg[3]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \k_reg[3]_i_5_n_0\,
      S(2) => \k_reg[3]_i_6_n_0\,
      S(1) => \k_reg[3]_i_7_n_0\,
      S(0) => \k_reg[3]_i_8_n_0\
    );
\k_reg_reg[3]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \k_reg_reg[3]_i_9_n_0\,
      CO(3) => \k_reg_reg[3]_i_4_n_0\,
      CO(2 downto 0) => \NLW_k_reg_reg[3]_i_4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_k_reg_reg[3]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \k_reg[3]_i_10_n_0\,
      S(2) => \k_reg[3]_i_11_n_0\,
      S(1) => \k_reg[3]_i_12_n_0\,
      S(0) => \k_reg[3]_i_13_n_0\
    );
\k_reg_reg[3]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \k_reg_reg[3]_i_14_n_0\,
      CO(3) => \k_reg_reg[3]_i_9_n_0\,
      CO(2 downto 0) => \NLW_k_reg_reg[3]_i_9_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_k_reg_reg[3]_i_9_O_UNCONNECTED\(3 downto 0),
      S(3) => \k_reg[3]_i_15_n_0\,
      S(2) => \k_reg[3]_i_16_n_0\,
      S(1) => \k_reg[3]_i_17_n_0\,
      S(0) => \k_reg[3]_i_18_n_0\
    );
\mem[0][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[0][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[0]_16\(0)
    );
\mem[0][0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[11][0]\,
      I1 => \temp_reg_n_0_[10][0]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[9][0]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[8][0]\,
      O => \mem[0][0]_i_4_n_0\
    );
\mem[0][0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[15][0]\,
      I1 => \temp_reg_n_0_[14][0]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[13][0]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[12][0]\,
      O => \mem[0][0]_i_5_n_0\
    );
\mem[0][0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[3][0]\,
      I1 => \temp_reg_n_0_[2][0]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[1][0]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[0][0]\,
      O => \mem[0][0]_i_6_n_0\
    );
\mem[0][0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[7][0]\,
      I1 => \temp_reg_n_0_[6][0]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[5][0]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[4][0]\,
      O => \mem[0][0]_i_7_n_0\
    );
\mem[0][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[0][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[0]_16\(1)
    );
\mem[0][1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[11][1]\,
      I1 => \temp_reg_n_0_[10][1]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[9][1]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[8][1]\,
      O => \mem[0][1]_i_4_n_0\
    );
\mem[0][1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[15][1]\,
      I1 => \temp_reg_n_0_[14][1]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[13][1]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[12][1]\,
      O => \mem[0][1]_i_5_n_0\
    );
\mem[0][1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[3][1]\,
      I1 => \temp_reg_n_0_[2][1]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[1][1]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[0][1]\,
      O => \mem[0][1]_i_6_n_0\
    );
\mem[0][1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[7][1]\,
      I1 => \temp_reg_n_0_[6][1]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[5][1]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[4][1]\,
      O => \mem[0][1]_i_7_n_0\
    );
\mem[0][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[0][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[0]_16\(2)
    );
\mem[0][2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[11][2]\,
      I1 => \temp_reg_n_0_[10][2]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[9][2]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[8][2]\,
      O => \mem[0][2]_i_4_n_0\
    );
\mem[0][2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[15][2]\,
      I1 => \temp_reg_n_0_[14][2]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[13][2]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[12][2]\,
      O => \mem[0][2]_i_5_n_0\
    );
\mem[0][2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[3][2]\,
      I1 => \temp_reg_n_0_[2][2]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[1][2]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[0][2]\,
      O => \mem[0][2]_i_6_n_0\
    );
\mem[0][2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[7][2]\,
      I1 => \temp_reg_n_0_[6][2]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[5][2]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[4][2]\,
      O => \mem[0][2]_i_7_n_0\
    );
\mem[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \k_reg_reg_n_0_[1]\,
      I1 => \k_reg_reg_n_0_[0]\,
      I2 => \mem[0][3]_i_3_n_0\,
      I3 => \start_reg_reg[31]_i_3_n_0\,
      I4 => \mem[0][3]_i_4_n_0\,
      I5 => \mem[0][3]_i_5_n_0\,
      O => \mem[0][3]_i_1_n_0\
    );
\mem[0][3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[3][3]\,
      I1 => \temp_reg_n_0_[2][3]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[1][3]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[0][3]\,
      O => \mem[0][3]_i_10_n_0\
    );
\mem[0][3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[7][3]\,
      I1 => \temp_reg_n_0_[6][3]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[5][3]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[4][3]\,
      O => \mem[0][3]_i_11_n_0\
    );
\mem[0][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[0][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[0]_16\(3)
    );
\mem[0][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \k_reg_reg_n_0_[2]\,
      I1 => \k_reg_reg_n_0_[3]\,
      O => \mem[0][3]_i_3_n_0\
    );
\mem[0][3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state_reg_0(0),
      I1 => state_reg_0(2),
      I2 => state_reg_0(1),
      O => \mem[0][3]_i_4_n_0\
    );
\mem[0][3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \block_reg_reg[31]_i_3_n_0\,
      I1 => state_reg_0(2),
      I2 => state_reg_0(0),
      I3 => state_reg_0(1),
      O => \mem[0][3]_i_5_n_0\
    );
\mem[0][3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[11][3]\,
      I1 => \temp_reg_n_0_[10][3]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[9][3]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[8][3]\,
      O => \mem[0][3]_i_8_n_0\
    );
\mem[0][3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \temp_reg_n_0_[15][3]\,
      I1 => \temp_reg_n_0_[14][3]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \temp_reg_n_0_[13][3]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \temp_reg_n_0_[12][3]\,
      O => \mem[0][3]_i_9_n_0\
    );
\mem[10][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[10][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[10]_6\(0)
    );
\mem[10][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[10][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[10]_6\(1)
    );
\mem[10][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[10][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[10]_6\(2)
    );
\mem[10][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F00000020000000"
    )
        port map (
      I0 => \mem[10][3]_i_3_n_0\,
      I1 => \start_reg_reg[31]_i_3_n_0\,
      I2 => state_reg_0(1),
      I3 => state_reg_0(0),
      I4 => state_reg_0(2),
      I5 => \block_reg_reg[31]_i_3_n_0\,
      O => \mem[10][3]_i_1_n_0\
    );
\mem[10][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[10][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[10]_6\(3)
    );
\mem[10][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \k_reg_reg_n_0_[0]\,
      I1 => \k_reg_reg_n_0_[2]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \k_reg_reg_n_0_[3]\,
      O => \mem[10][3]_i_3_n_0\
    );
\mem[11][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[11][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[11]_5\(0)
    );
\mem[11][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[11][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[11]_5\(1)
    );
\mem[11][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[11][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[11]_5\(2)
    );
\mem[11][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => \mem[3][3]_i_3_n_0\,
      I1 => \k_reg_reg_n_0_[2]\,
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \start_reg_reg[31]_i_3_n_0\,
      I4 => \mem[0][3]_i_4_n_0\,
      I5 => \mem[0][3]_i_5_n_0\,
      O => \mem[11][3]_i_1_n_0\
    );
\mem[11][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[11][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[11]_5\(3)
    );
\mem[12][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[12][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[12]_4\(0)
    );
\mem[12][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[12][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[12]_4\(1)
    );
\mem[12][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[12][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[12]_4\(2)
    );
\mem[12][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F00000020000000"
    )
        port map (
      I0 => \mem[12][3]_i_3_n_0\,
      I1 => \start_reg_reg[31]_i_3_n_0\,
      I2 => state_reg_0(1),
      I3 => state_reg_0(0),
      I4 => state_reg_0(2),
      I5 => \block_reg_reg[31]_i_3_n_0\,
      O => \mem[12][3]_i_1_n_0\
    );
\mem[12][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[12][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[12]_4\(3)
    );
\mem[12][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \k_reg_reg_n_0_[0]\,
      I1 => \k_reg_reg_n_0_[1]\,
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \k_reg_reg_n_0_[2]\,
      O => \mem[12][3]_i_3_n_0\
    );
\mem[13][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[13][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[13]_3\(0)
    );
\mem[13][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[13][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[13]_3\(1)
    );
\mem[13][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[13][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[13]_3\(2)
    );
\mem[13][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F00000020000000"
    )
        port map (
      I0 => \mem[13][3]_i_3_n_0\,
      I1 => \start_reg_reg[31]_i_3_n_0\,
      I2 => state_reg_0(1),
      I3 => state_reg_0(0),
      I4 => state_reg_0(2),
      I5 => \block_reg_reg[31]_i_3_n_0\,
      O => \mem[13][3]_i_1_n_0\
    );
\mem[13][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[13][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[13]_3\(3)
    );
\mem[13][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \k_reg_reg_n_0_[2]\,
      I1 => \k_reg_reg_n_0_[1]\,
      I2 => \k_reg_reg_n_0_[0]\,
      I3 => \k_reg_reg_n_0_[3]\,
      O => \mem[13][3]_i_3_n_0\
    );
\mem[14][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[14][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[14]_2\(0)
    );
\mem[14][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[14][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[14]_2\(1)
    );
\mem[14][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[14][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[14]_2\(2)
    );
\mem[14][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F00000020000000"
    )
        port map (
      I0 => \mem[14][3]_i_3_n_0\,
      I1 => \start_reg_reg[31]_i_3_n_0\,
      I2 => state_reg_0(1),
      I3 => state_reg_0(0),
      I4 => state_reg_0(2),
      I5 => \block_reg_reg[31]_i_3_n_0\,
      O => \mem[14][3]_i_1_n_0\
    );
\mem[14][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[14][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[14]_2\(3)
    );
\mem[14][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \k_reg_reg_n_0_[2]\,
      I1 => \k_reg_reg_n_0_[0]\,
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \k_reg_reg_n_0_[1]\,
      O => \mem[14][3]_i_3_n_0\
    );
\mem[15][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[15][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[15]_1\(0)
    );
\mem[15][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[15][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[15]_1\(1)
    );
\mem[15][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[15][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[15]_1\(2)
    );
\mem[15][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => \mem[3][3]_i_3_n_0\,
      I1 => \k_reg_reg_n_0_[2]\,
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \start_reg_reg[31]_i_3_n_0\,
      I4 => \mem[0][3]_i_4_n_0\,
      I5 => \mem[0][3]_i_5_n_0\,
      O => \mem[15][3]_i_1_n_0\
    );
\mem[15][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[15][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[15]_1\(3)
    );
\mem[1][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[1][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[1]_15\(0)
    );
\mem[1][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[1][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[1]_15\(1)
    );
\mem[1][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[1][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[1]_15\(2)
    );
\mem[1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00040000"
    )
        port map (
      I0 => \k_reg_reg_n_0_[1]\,
      I1 => \k_reg_reg_n_0_[0]\,
      I2 => \mem[0][3]_i_3_n_0\,
      I3 => \start_reg_reg[31]_i_3_n_0\,
      I4 => \mem[0][3]_i_4_n_0\,
      I5 => \mem[0][3]_i_5_n_0\,
      O => \mem[1][3]_i_1_n_0\
    );
\mem[1][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[1][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[1]_15\(3)
    );
\mem[2][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[2][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[2]_14\(0)
    );
\mem[2][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[2][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[2]_14\(1)
    );
\mem[2][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[2][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[2]_14\(2)
    );
\mem[2][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00040000"
    )
        port map (
      I0 => \k_reg_reg_n_0_[0]\,
      I1 => \k_reg_reg_n_0_[1]\,
      I2 => \mem[0][3]_i_3_n_0\,
      I3 => \start_reg_reg[31]_i_3_n_0\,
      I4 => \mem[0][3]_i_4_n_0\,
      I5 => \mem[0][3]_i_5_n_0\,
      O => \mem[2][3]_i_1_n_0\
    );
\mem[2][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[2][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[2]_14\(3)
    );
\mem[3][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[3][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[3]_13\(0)
    );
\mem[3][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[3][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[3]_13\(1)
    );
\mem[3][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[3][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[3]_13\(2)
    );
\mem[3][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \mem[3][3]_i_3_n_0\,
      I1 => \k_reg_reg_n_0_[2]\,
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \start_reg_reg[31]_i_3_n_0\,
      I4 => \mem[0][3]_i_4_n_0\,
      I5 => \mem[0][3]_i_5_n_0\,
      O => \mem[3][3]_i_1_n_0\
    );
\mem[3][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[3][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[3]_13\(3)
    );
\mem[3][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \k_reg_reg_n_0_[1]\,
      I1 => \k_reg_reg_n_0_[0]\,
      O => \mem[3][3]_i_3_n_0\
    );
\mem[4][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[4][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[4]_12\(0)
    );
\mem[4][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[4][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[4]_12\(1)
    );
\mem[4][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[4][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[4]_12\(2)
    );
\mem[4][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F00000020000000"
    )
        port map (
      I0 => \mem[4][3]_i_3_n_0\,
      I1 => \start_reg_reg[31]_i_3_n_0\,
      I2 => state_reg_0(1),
      I3 => state_reg_0(0),
      I4 => state_reg_0(2),
      I5 => \block_reg_reg[31]_i_3_n_0\,
      O => \mem[4][3]_i_1_n_0\
    );
\mem[4][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[4][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[4]_12\(3)
    );
\mem[4][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \k_reg_reg_n_0_[3]\,
      I1 => \k_reg_reg_n_0_[0]\,
      I2 => \k_reg_reg_n_0_[2]\,
      I3 => \k_reg_reg_n_0_[1]\,
      O => \mem[4][3]_i_3_n_0\
    );
\mem[5][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[5][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[5]_11\(0)
    );
\mem[5][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[5][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[5]_11\(1)
    );
\mem[5][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[5][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[5]_11\(2)
    );
\mem[5][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F00000020000000"
    )
        port map (
      I0 => \mem[5][3]_i_3_n_0\,
      I1 => \start_reg_reg[31]_i_3_n_0\,
      I2 => state_reg_0(1),
      I3 => state_reg_0(0),
      I4 => state_reg_0(2),
      I5 => \block_reg_reg[31]_i_3_n_0\,
      O => \mem[5][3]_i_1_n_0\
    );
\mem[5][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[5][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[5]_11\(3)
    );
\mem[5][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \k_reg_reg_n_0_[3]\,
      I1 => \k_reg_reg_n_0_[1]\,
      I2 => \k_reg_reg_n_0_[0]\,
      I3 => \k_reg_reg_n_0_[2]\,
      O => \mem[5][3]_i_3_n_0\
    );
\mem[6][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[6][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[6]_10\(0)
    );
\mem[6][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[6][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[6]_10\(1)
    );
\mem[6][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[6][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[6]_10\(2)
    );
\mem[6][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F00000020000000"
    )
        port map (
      I0 => \mem[6][3]_i_3_n_0\,
      I1 => \start_reg_reg[31]_i_3_n_0\,
      I2 => state_reg_0(1),
      I3 => state_reg_0(0),
      I4 => state_reg_0(2),
      I5 => \block_reg_reg[31]_i_3_n_0\,
      O => \mem[6][3]_i_1_n_0\
    );
\mem[6][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[6][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[6]_10\(3)
    );
\mem[6][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \k_reg_reg_n_0_[3]\,
      I1 => \k_reg_reg_n_0_[0]\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \k_reg_reg_n_0_[2]\,
      O => \mem[6][3]_i_3_n_0\
    );
\mem[7][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[7][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[7]_9\(0)
    );
\mem[7][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[7][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[7]_9\(1)
    );
\mem[7][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[7][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[7]_9\(2)
    );
\mem[7][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => \mem[3][3]_i_3_n_0\,
      I1 => \k_reg_reg_n_0_[3]\,
      I2 => \k_reg_reg_n_0_[2]\,
      I3 => \start_reg_reg[31]_i_3_n_0\,
      I4 => \mem[0][3]_i_4_n_0\,
      I5 => \mem[0][3]_i_5_n_0\,
      O => \mem[7][3]_i_1_n_0\
    );
\mem[7][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[7][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[7]_9\(3)
    );
\mem[8][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[8][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[8]_8\(0)
    );
\mem[8][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[8][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[8]_8\(1)
    );
\mem[8][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[8][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[8]_8\(2)
    );
\mem[8][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F00000020000000"
    )
        port map (
      I0 => \mem[8][3]_i_3_n_0\,
      I1 => \start_reg_reg[31]_i_3_n_0\,
      I2 => state_reg_0(1),
      I3 => state_reg_0(0),
      I4 => state_reg_0(2),
      I5 => \block_reg_reg[31]_i_3_n_0\,
      O => \mem[8][3]_i_1_n_0\
    );
\mem[8][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[8][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[8]_8\(3)
    );
\mem[8][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \k_reg_reg_n_0_[0]\,
      I1 => \k_reg_reg_n_0_[2]\,
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \k_reg_reg_n_0_[1]\,
      O => \mem[8][3]_i_3_n_0\
    );
\mem[9][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[9][0]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][0]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][0]_i_3_n_0\,
      O => \mem[9]_7\(0)
    );
\mem[9][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[9][1]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][1]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][1]_i_3_n_0\,
      O => \mem[9]_7\(1)
    );
\mem[9][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[9][2]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][2]_i_2_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][2]_i_3_n_0\,
      O => \mem[9]_7\(2)
    );
\mem[9][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F00000020000000"
    )
        port map (
      I0 => \mem[9][3]_i_3_n_0\,
      I1 => \start_reg_reg[31]_i_3_n_0\,
      I2 => state_reg_0(1),
      I3 => state_reg_0(0),
      I4 => state_reg_0(2),
      I5 => \block_reg_reg[31]_i_3_n_0\,
      O => \mem[9][3]_i_1_n_0\
    );
\mem[9][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EEE222"
    )
        port map (
      I0 => \temp_reg_n_0_[9][3]\,
      I1 => state_reg_0(1),
      I2 => \mem_reg[0][3]_i_6_n_0\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \mem_reg[0][3]_i_7_n_0\,
      O => \mem[9]_7\(3)
    );
\mem[9][3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \k_reg_reg_n_0_[1]\,
      I1 => \k_reg_reg_n_0_[2]\,
      I2 => \k_reg_reg_n_0_[0]\,
      I3 => \k_reg_reg_n_0_[3]\,
      O => \mem[9][3]_i_3_n_0\
    );
\mem_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[0][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[0]_16\(0),
      Q => \mem_reg[0]_17\(0)
    );
\mem_reg[0][0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mem[0][0]_i_4_n_0\,
      I1 => \mem[0][0]_i_5_n_0\,
      O => \mem_reg[0][0]_i_2_n_0\,
      S => \k_reg_reg_n_0_[2]\
    );
\mem_reg[0][0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mem[0][0]_i_6_n_0\,
      I1 => \mem[0][0]_i_7_n_0\,
      O => \mem_reg[0][0]_i_3_n_0\,
      S => \k_reg_reg_n_0_[2]\
    );
\mem_reg[0][1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[0][3]_i_1_n_0\,
      D => \mem[0]_16\(1),
      PRE => reset_IBUF,
      Q => \mem_reg[0]_17\(1)
    );
\mem_reg[0][1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mem[0][1]_i_4_n_0\,
      I1 => \mem[0][1]_i_5_n_0\,
      O => \mem_reg[0][1]_i_2_n_0\,
      S => \k_reg_reg_n_0_[2]\
    );
\mem_reg[0][1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mem[0][1]_i_6_n_0\,
      I1 => \mem[0][1]_i_7_n_0\,
      O => \mem_reg[0][1]_i_3_n_0\,
      S => \k_reg_reg_n_0_[2]\
    );
\mem_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[0][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[0]_16\(2),
      Q => \mem_reg[0]_17\(2)
    );
\mem_reg[0][2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mem[0][2]_i_4_n_0\,
      I1 => \mem[0][2]_i_5_n_0\,
      O => \mem_reg[0][2]_i_2_n_0\,
      S => \k_reg_reg_n_0_[2]\
    );
\mem_reg[0][2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mem[0][2]_i_6_n_0\,
      I1 => \mem[0][2]_i_7_n_0\,
      O => \mem_reg[0][2]_i_3_n_0\,
      S => \k_reg_reg_n_0_[2]\
    );
\mem_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[0][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[0]_16\(3),
      Q => \mem_reg[0]_17\(3)
    );
\mem_reg[0][3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mem[0][3]_i_8_n_0\,
      I1 => \mem[0][3]_i_9_n_0\,
      O => \mem_reg[0][3]_i_6_n_0\,
      S => \k_reg_reg_n_0_[2]\
    );
\mem_reg[0][3]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mem[0][3]_i_10_n_0\,
      I1 => \mem[0][3]_i_11_n_0\,
      O => \mem_reg[0][3]_i_7_n_0\,
      S => \k_reg_reg_n_0_[2]\
    );
\mem_reg[10][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[10][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[10]_6\(0),
      Q => \mem_reg[10]_27\(0)
    );
\mem_reg[10][1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[10][3]_i_1_n_0\,
      D => \mem[10]_6\(1),
      PRE => reset_IBUF,
      Q => \mem_reg[10]_27\(1)
    );
\mem_reg[10][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[10][3]_i_1_n_0\,
      D => \mem[10]_6\(2),
      PRE => reset_IBUF,
      Q => \mem_reg[10]_27\(2)
    );
\mem_reg[10][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[10][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[10]_6\(3),
      Q => \mem_reg[10]_27\(3)
    );
\mem_reg[11][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[11][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[11]_5\(0),
      Q => \mem_reg[11]_28\(0)
    );
\mem_reg[11][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[11][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[11]_5\(1),
      Q => \mem_reg[11]_28\(1)
    );
\mem_reg[11][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[11][3]_i_1_n_0\,
      D => \mem[11]_5\(2),
      PRE => reset_IBUF,
      Q => \mem_reg[11]_28\(2)
    );
\mem_reg[11][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[11][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[11]_5\(3),
      Q => \mem_reg[11]_28\(3)
    );
\mem_reg[12][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[12][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[12]_4\(0),
      Q => \mem_reg[12]_29\(0)
    );
\mem_reg[12][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[12][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[12]_4\(1),
      Q => \mem_reg[12]_29\(1)
    );
\mem_reg[12][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[12][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[12]_4\(2),
      Q => \mem_reg[12]_29\(2)
    );
\mem_reg[12][3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[12][3]_i_1_n_0\,
      D => \mem[12]_4\(3),
      PRE => reset_IBUF,
      Q => \mem_reg[12]_29\(3)
    );
\mem_reg[13][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[13][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[13]_3\(0),
      Q => \mem_reg[13]_30\(0)
    );
\mem_reg[13][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[13][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[13]_3\(1),
      Q => \mem_reg[13]_30\(1)
    );
\mem_reg[13][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[13][3]_i_1_n_0\,
      D => \mem[13]_3\(2),
      PRE => reset_IBUF,
      Q => \mem_reg[13]_30\(2)
    );
\mem_reg[13][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[13][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[13]_3\(3),
      Q => \mem_reg[13]_30\(3)
    );
\mem_reg[14][0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[14][3]_i_1_n_0\,
      D => \mem[14]_2\(0),
      PRE => reset_IBUF,
      Q => \mem_reg[14]_31\(0)
    );
\mem_reg[14][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[14][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[14]_2\(1),
      Q => \mem_reg[14]_31\(1)
    );
\mem_reg[14][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[14][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[14]_2\(2),
      Q => \mem_reg[14]_31\(2)
    );
\mem_reg[14][3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[14][3]_i_1_n_0\,
      D => \mem[14]_2\(3),
      PRE => reset_IBUF,
      Q => \mem_reg[14]_31\(3)
    );
\mem_reg[15][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[15][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[15]_1\(0),
      Q => \mem_reg[15]_32\(0)
    );
\mem_reg[15][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[15][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[15]_1\(1),
      Q => \mem_reg[15]_32\(1)
    );
\mem_reg[15][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[15][3]_i_1_n_0\,
      D => \mem[15]_1\(2),
      PRE => reset_IBUF,
      Q => \mem_reg[15]_32\(2)
    );
\mem_reg[15][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[15][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[15]_1\(3),
      Q => \mem_reg[15]_32\(3)
    );
\mem_reg[1][0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[1][3]_i_1_n_0\,
      D => \mem[1]_15\(0),
      PRE => reset_IBUF,
      Q => \mem_reg[1]_18\(0)
    );
\mem_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[1][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[1]_15\(1),
      Q => \mem_reg[1]_18\(1)
    );
\mem_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[1][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[1]_15\(2),
      Q => \mem_reg[1]_18\(2)
    );
\mem_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[1][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[1]_15\(3),
      Q => \mem_reg[1]_18\(3)
    );
\mem_reg[2][0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[2][3]_i_1_n_0\,
      D => \mem[2]_14\(0),
      PRE => reset_IBUF,
      Q => \mem_reg[2]_19\(0)
    );
\mem_reg[2][1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[2][3]_i_1_n_0\,
      D => \mem[2]_14\(1),
      PRE => reset_IBUF,
      Q => \mem_reg[2]_19\(1)
    );
\mem_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[2][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[2]_14\(2),
      Q => \mem_reg[2]_19\(2)
    );
\mem_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[2][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[2]_14\(3),
      Q => \mem_reg[2]_19\(3)
    );
\mem_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[3][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[3]_13\(0),
      Q => \mem_reg[3]_20\(0)
    );
\mem_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[3][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[3]_13\(1),
      Q => \mem_reg[3]_20\(1)
    );
\mem_reg[3][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[3][3]_i_1_n_0\,
      D => \mem[3]_13\(2),
      PRE => reset_IBUF,
      Q => \mem_reg[3]_20\(2)
    );
\mem_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[3][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[3]_13\(3),
      Q => \mem_reg[3]_20\(3)
    );
\mem_reg[4][0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[4][3]_i_1_n_0\,
      D => \mem[4]_12\(0),
      PRE => reset_IBUF,
      Q => \mem_reg[4]_21\(0)
    );
\mem_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[4][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[4]_12\(1),
      Q => \mem_reg[4]_21\(1)
    );
\mem_reg[4][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[4][3]_i_1_n_0\,
      D => \mem[4]_12\(2),
      PRE => reset_IBUF,
      Q => \mem_reg[4]_21\(2)
    );
\mem_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[4][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[4]_12\(3),
      Q => \mem_reg[4]_21\(3)
    );
\mem_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[5][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[5]_11\(0),
      Q => \mem_reg[5]_22\(0)
    );
\mem_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[5][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[5]_11\(1),
      Q => \mem_reg[5]_22\(1)
    );
\mem_reg[5][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[5][3]_i_1_n_0\,
      D => \mem[5]_11\(2),
      PRE => reset_IBUF,
      Q => \mem_reg[5]_22\(2)
    );
\mem_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[5][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[5]_11\(3),
      Q => \mem_reg[5]_22\(3)
    );
\mem_reg[6][0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[6][3]_i_1_n_0\,
      D => \mem[6]_10\(0),
      PRE => reset_IBUF,
      Q => \mem_reg[6]_23\(0)
    );
\mem_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[6][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[6]_10\(1),
      Q => \mem_reg[6]_23\(1)
    );
\mem_reg[6][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[6][3]_i_1_n_0\,
      D => \mem[6]_10\(2),
      PRE => reset_IBUF,
      Q => \mem_reg[6]_23\(2)
    );
\mem_reg[6][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[6][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[6]_10\(3),
      Q => \mem_reg[6]_23\(3)
    );
\mem_reg[7][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[7][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[7]_9\(0),
      Q => \mem_reg[7]_24\(0)
    );
\mem_reg[7][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[7][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[7]_9\(1),
      Q => \mem_reg[7]_24\(1)
    );
\mem_reg[7][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[7][3]_i_1_n_0\,
      D => \mem[7]_9\(2),
      PRE => reset_IBUF,
      Q => \mem_reg[7]_24\(2)
    );
\mem_reg[7][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[7][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[7]_9\(3),
      Q => \mem_reg[7]_24\(3)
    );
\mem_reg[8][0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[8][3]_i_1_n_0\,
      D => \mem[8]_8\(0),
      PRE => reset_IBUF,
      Q => \mem_reg[8]_25\(0)
    );
\mem_reg[8][1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[8][3]_i_1_n_0\,
      D => \mem[8]_8\(1),
      PRE => reset_IBUF,
      Q => \mem_reg[8]_25\(1)
    );
\mem_reg[8][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[8][3]_i_1_n_0\,
      D => \mem[8]_8\(2),
      PRE => reset_IBUF,
      Q => \mem_reg[8]_25\(2)
    );
\mem_reg[8][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[8][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[8]_8\(3),
      Q => \mem_reg[8]_25\(3)
    );
\mem_reg[9][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[9][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[9]_7\(0),
      Q => \mem_reg[9]_26\(0)
    );
\mem_reg[9][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[9][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[9]_7\(1),
      Q => \mem_reg[9]_26\(1)
    );
\mem_reg[9][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[9][3]_i_1_n_0\,
      D => \mem[9]_7\(2),
      PRE => reset_IBUF,
      Q => \mem_reg[9]_26\(2)
    );
\mem_reg[9][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mem[9][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \mem[9]_7\(3),
      Q => \mem_reg[9]_26\(3)
    );
\mid_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB0"
    )
        port map (
      I0 => \mid_reg_reg[3]_i_2_n_7\,
      I1 => state_reg_0(1),
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[0]\,
      O => mid_reg(0)
    );
\mid_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[11]_i_2_n_5\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[10]\,
      O => mid_reg(10)
    );
\mid_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[11]_i_2_n_4\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[11]\,
      O => mid_reg(11)
    );
\mid_reg[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[11]_i_2_n_4\,
      I1 => \block_reg_reg_n_0_[11]\,
      O => \mid_reg[11]_i_3_n_0\
    );
\mid_reg[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[11]_i_2_n_5\,
      I1 => \block_reg_reg_n_0_[10]\,
      O => \mid_reg[11]_i_4_n_0\
    );
\mid_reg[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[11]_i_2_n_6\,
      I1 => \block_reg_reg_n_0_[9]\,
      O => \mid_reg[11]_i_5_n_0\
    );
\mid_reg[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[11]_i_2_n_7\,
      I1 => \block_reg_reg_n_0_[8]\,
      O => \mid_reg[11]_i_6_n_0\
    );
\mid_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[15]_i_2_n_7\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[12]\,
      O => mid_reg(12)
    );
\mid_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[15]_i_2_n_6\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[13]\,
      O => mid_reg(13)
    );
\mid_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[15]_i_2_n_5\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[14]\,
      O => mid_reg(14)
    );
\mid_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[15]_i_2_n_4\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[15]\,
      O => mid_reg(15)
    );
\mid_reg[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[15]_i_2_n_4\,
      I1 => \block_reg_reg_n_0_[15]\,
      O => \mid_reg[15]_i_3_n_0\
    );
\mid_reg[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[15]_i_2_n_5\,
      I1 => \block_reg_reg_n_0_[14]\,
      O => \mid_reg[15]_i_4_n_0\
    );
\mid_reg[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[15]_i_2_n_6\,
      I1 => \block_reg_reg_n_0_[13]\,
      O => \mid_reg[15]_i_5_n_0\
    );
\mid_reg[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[15]_i_2_n_7\,
      I1 => \block_reg_reg_n_0_[12]\,
      O => \mid_reg[15]_i_6_n_0\
    );
\mid_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[19]_i_2_n_7\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[16]\,
      O => mid_reg(16)
    );
\mid_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[19]_i_2_n_6\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[17]\,
      O => mid_reg(17)
    );
\mid_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[19]_i_2_n_5\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[18]\,
      O => mid_reg(18)
    );
\mid_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[19]_i_2_n_4\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[19]\,
      O => mid_reg(19)
    );
\mid_reg[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[19]_i_2_n_4\,
      I1 => \block_reg_reg_n_0_[19]\,
      O => \mid_reg[19]_i_3_n_0\
    );
\mid_reg[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[19]_i_2_n_5\,
      I1 => \block_reg_reg_n_0_[18]\,
      O => \mid_reg[19]_i_4_n_0\
    );
\mid_reg[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[19]_i_2_n_6\,
      I1 => \block_reg_reg_n_0_[17]\,
      O => \mid_reg[19]_i_5_n_0\
    );
\mid_reg[19]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[19]_i_2_n_7\,
      I1 => \block_reg_reg_n_0_[16]\,
      O => \mid_reg[19]_i_6_n_0\
    );
\mid_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB0"
    )
        port map (
      I0 => \mid_reg_reg[3]_i_2_n_6\,
      I1 => state_reg_0(1),
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[1]\,
      O => mid_reg(1)
    );
\mid_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[23]_i_2_n_7\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[20]\,
      O => mid_reg(20)
    );
\mid_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[23]_i_2_n_6\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[21]\,
      O => mid_reg(21)
    );
\mid_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[23]_i_2_n_5\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[22]\,
      O => mid_reg(22)
    );
\mid_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[23]_i_2_n_4\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[23]\,
      O => mid_reg(23)
    );
\mid_reg[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[23]_i_2_n_4\,
      I1 => \block_reg_reg_n_0_[23]\,
      O => \mid_reg[23]_i_3_n_0\
    );
\mid_reg[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[23]_i_2_n_5\,
      I1 => \block_reg_reg_n_0_[22]\,
      O => \mid_reg[23]_i_4_n_0\
    );
\mid_reg[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[23]_i_2_n_6\,
      I1 => \block_reg_reg_n_0_[21]\,
      O => \mid_reg[23]_i_5_n_0\
    );
\mid_reg[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[23]_i_2_n_7\,
      I1 => \block_reg_reg_n_0_[20]\,
      O => \mid_reg[23]_i_6_n_0\
    );
\mid_reg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[27]_i_2_n_7\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[24]\,
      O => mid_reg(24)
    );
\mid_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[27]_i_2_n_6\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[25]\,
      O => mid_reg(25)
    );
\mid_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[27]_i_2_n_5\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[26]\,
      O => mid_reg(26)
    );
\mid_reg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[27]_i_2_n_4\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[27]\,
      O => mid_reg(27)
    );
\mid_reg[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[27]_i_2_n_4\,
      I1 => \block_reg_reg_n_0_[27]\,
      O => \mid_reg[27]_i_3_n_0\
    );
\mid_reg[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[27]_i_2_n_5\,
      I1 => \block_reg_reg_n_0_[26]\,
      O => \mid_reg[27]_i_4_n_0\
    );
\mid_reg[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[27]_i_2_n_6\,
      I1 => \block_reg_reg_n_0_[25]\,
      O => \mid_reg[27]_i_5_n_0\
    );
\mid_reg[27]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[27]_i_2_n_7\,
      I1 => \block_reg_reg_n_0_[24]\,
      O => \mid_reg[27]_i_6_n_0\
    );
\mid_reg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[31]_i_3_n_7\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[28]\,
      O => mid_reg(28)
    );
\mid_reg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[31]_i_3_n_6\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[29]\,
      O => mid_reg(29)
    );
\mid_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB0"
    )
        port map (
      I0 => \mid_reg_reg[3]_i_2_n_5\,
      I1 => state_reg_0(1),
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[2]\,
      O => mid_reg(2)
    );
\mid_reg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[31]_i_3_n_5\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[30]\,
      O => mid_reg(30)
    );
\mid_reg[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00002000"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => state_reg_0(1),
      I2 => state_reg_0(0),
      I3 => \j_reg_reg[3]_i_3_n_2\,
      I4 => \block_reg_reg[31]_i_3_n_0\,
      I5 => \start_reg[31]_i_1_n_0\,
      O => \mid_reg[31]_i_1_n_0\
    );
\mid_reg[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[31]_i_3_n_4\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[31]\,
      O => mid_reg(31)
    );
\mid_reg[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[31]_i_4_n_4\,
      I1 => \block_reg_reg_n_0_[31]\,
      O => \mid_reg[31]_i_4_n_0\
    );
\mid_reg[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[31]_i_4_n_5\,
      I1 => \block_reg_reg_n_0_[30]\,
      O => \mid_reg[31]_i_5_n_0\
    );
\mid_reg[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[31]_i_4_n_6\,
      I1 => \block_reg_reg_n_0_[29]\,
      O => \mid_reg[31]_i_6_n_0\
    );
\mid_reg[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[31]_i_4_n_7\,
      I1 => \block_reg_reg_n_0_[28]\,
      O => \mid_reg[31]_i_7_n_0\
    );
\mid_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FA32"
    )
        port map (
      I0 => \block_reg_reg_n_0_[3]\,
      I1 => state_reg_0(1),
      I2 => state_reg_0(2),
      I3 => \mid_reg_reg[3]_i_2_n_4\,
      O => mid_reg(3)
    );
\mid_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[3]_i_2_n_4\,
      I1 => \block_reg_reg_n_0_[3]\,
      O => \mid_reg[3]_i_3_n_0\
    );
\mid_reg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[3]_i_2_n_5\,
      I1 => \block_reg_reg_n_0_[2]\,
      O => \mid_reg[3]_i_4_n_0\
    );
\mid_reg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[3]_i_2_n_6\,
      I1 => \block_reg_reg_n_0_[1]\,
      O => \mid_reg[3]_i_5_n_0\
    );
\mid_reg[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[3]_i_2_n_7\,
      I1 => \block_reg_reg_n_0_[0]\,
      O => \mid_reg[3]_i_6_n_0\
    );
\mid_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[7]_i_2_n_7\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[4]\,
      O => mid_reg(4)
    );
\mid_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[7]_i_2_n_6\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[5]\,
      O => mid_reg(5)
    );
\mid_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[7]_i_2_n_5\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[6]\,
      O => mid_reg(6)
    );
\mid_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[7]_i_2_n_4\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[7]\,
      O => mid_reg(7)
    );
\mid_reg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[7]_i_2_n_4\,
      I1 => \block_reg_reg_n_0_[7]\,
      O => \mid_reg[7]_i_3_n_0\
    );
\mid_reg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[7]_i_2_n_5\,
      I1 => \block_reg_reg_n_0_[6]\,
      O => \mid_reg[7]_i_4_n_0\
    );
\mid_reg[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[7]_i_2_n_6\,
      I1 => \block_reg_reg_n_0_[5]\,
      O => \mid_reg[7]_i_5_n_0\
    );
\mid_reg[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \start_reg_reg[7]_i_2_n_7\,
      I1 => \block_reg_reg_n_0_[4]\,
      O => \mid_reg[7]_i_6_n_0\
    );
\mid_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[11]_i_2_n_7\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[8]\,
      O => mid_reg(8)
    );
\mid_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => state_reg_0(1),
      I1 => \mid_reg_reg[11]_i_2_n_6\,
      I2 => state_reg_0(2),
      I3 => \block_reg_reg_n_0_[9]\,
      O => mid_reg(9)
    );
\mid_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      D => mid_reg(0),
      PRE => reset_IBUF,
      Q => \mid_reg_reg_n_0_[0]\
    );
\mid_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(10),
      Q => \mid_reg__0\(10)
    );
\mid_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(11),
      Q => \mid_reg__0\(11)
    );
\mid_reg_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mid_reg_reg[7]_i_2_n_0\,
      CO(3) => \mid_reg_reg[11]_i_2_n_0\,
      CO(2 downto 0) => \NLW_mid_reg_reg[11]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \start_reg_reg[11]_i_2_n_4\,
      DI(2) => \start_reg_reg[11]_i_2_n_5\,
      DI(1) => \start_reg_reg[11]_i_2_n_6\,
      DI(0) => \start_reg_reg[11]_i_2_n_7\,
      O(3) => \mid_reg_reg[11]_i_2_n_4\,
      O(2) => \mid_reg_reg[11]_i_2_n_5\,
      O(1) => \mid_reg_reg[11]_i_2_n_6\,
      O(0) => \mid_reg_reg[11]_i_2_n_7\,
      S(3) => \mid_reg[11]_i_3_n_0\,
      S(2) => \mid_reg[11]_i_4_n_0\,
      S(1) => \mid_reg[11]_i_5_n_0\,
      S(0) => \mid_reg[11]_i_6_n_0\
    );
\mid_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(12),
      Q => \mid_reg__0\(12)
    );
\mid_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(13),
      Q => \mid_reg__0\(13)
    );
\mid_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(14),
      Q => \mid_reg__0\(14)
    );
\mid_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(15),
      Q => \mid_reg__0\(15)
    );
\mid_reg_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mid_reg_reg[11]_i_2_n_0\,
      CO(3) => \mid_reg_reg[15]_i_2_n_0\,
      CO(2 downto 0) => \NLW_mid_reg_reg[15]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \start_reg_reg[15]_i_2_n_4\,
      DI(2) => \start_reg_reg[15]_i_2_n_5\,
      DI(1) => \start_reg_reg[15]_i_2_n_6\,
      DI(0) => \start_reg_reg[15]_i_2_n_7\,
      O(3) => \mid_reg_reg[15]_i_2_n_4\,
      O(2) => \mid_reg_reg[15]_i_2_n_5\,
      O(1) => \mid_reg_reg[15]_i_2_n_6\,
      O(0) => \mid_reg_reg[15]_i_2_n_7\,
      S(3) => \mid_reg[15]_i_3_n_0\,
      S(2) => \mid_reg[15]_i_4_n_0\,
      S(1) => \mid_reg[15]_i_5_n_0\,
      S(0) => \mid_reg[15]_i_6_n_0\
    );
\mid_reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(16),
      Q => \mid_reg__0\(16)
    );
\mid_reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(17),
      Q => \mid_reg__0\(17)
    );
\mid_reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(18),
      Q => \mid_reg__0\(18)
    );
\mid_reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(19),
      Q => \mid_reg__0\(19)
    );
\mid_reg_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mid_reg_reg[15]_i_2_n_0\,
      CO(3) => \mid_reg_reg[19]_i_2_n_0\,
      CO(2 downto 0) => \NLW_mid_reg_reg[19]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \start_reg_reg[19]_i_2_n_4\,
      DI(2) => \start_reg_reg[19]_i_2_n_5\,
      DI(1) => \start_reg_reg[19]_i_2_n_6\,
      DI(0) => \start_reg_reg[19]_i_2_n_7\,
      O(3) => \mid_reg_reg[19]_i_2_n_4\,
      O(2) => \mid_reg_reg[19]_i_2_n_5\,
      O(1) => \mid_reg_reg[19]_i_2_n_6\,
      O(0) => \mid_reg_reg[19]_i_2_n_7\,
      S(3) => \mid_reg[19]_i_3_n_0\,
      S(2) => \mid_reg[19]_i_4_n_0\,
      S(1) => \mid_reg[19]_i_5_n_0\,
      S(0) => \mid_reg[19]_i_6_n_0\
    );
\mid_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(1),
      Q => \mid_reg_reg_n_0_[1]\
    );
\mid_reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(20),
      Q => \mid_reg__0\(20)
    );
\mid_reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(21),
      Q => \mid_reg__0\(21)
    );
\mid_reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(22),
      Q => \mid_reg__0\(22)
    );
\mid_reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(23),
      Q => \mid_reg__0\(23)
    );
\mid_reg_reg[23]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mid_reg_reg[19]_i_2_n_0\,
      CO(3) => \mid_reg_reg[23]_i_2_n_0\,
      CO(2 downto 0) => \NLW_mid_reg_reg[23]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \start_reg_reg[23]_i_2_n_4\,
      DI(2) => \start_reg_reg[23]_i_2_n_5\,
      DI(1) => \start_reg_reg[23]_i_2_n_6\,
      DI(0) => \start_reg_reg[23]_i_2_n_7\,
      O(3) => \mid_reg_reg[23]_i_2_n_4\,
      O(2) => \mid_reg_reg[23]_i_2_n_5\,
      O(1) => \mid_reg_reg[23]_i_2_n_6\,
      O(0) => \mid_reg_reg[23]_i_2_n_7\,
      S(3) => \mid_reg[23]_i_3_n_0\,
      S(2) => \mid_reg[23]_i_4_n_0\,
      S(1) => \mid_reg[23]_i_5_n_0\,
      S(0) => \mid_reg[23]_i_6_n_0\
    );
\mid_reg_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(24),
      Q => \mid_reg__0\(24)
    );
\mid_reg_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(25),
      Q => \mid_reg__0\(25)
    );
\mid_reg_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(26),
      Q => \mid_reg__0\(26)
    );
\mid_reg_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(27),
      Q => \mid_reg__0\(27)
    );
\mid_reg_reg[27]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mid_reg_reg[23]_i_2_n_0\,
      CO(3) => \mid_reg_reg[27]_i_2_n_0\,
      CO(2 downto 0) => \NLW_mid_reg_reg[27]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \start_reg_reg[27]_i_2_n_4\,
      DI(2) => \start_reg_reg[27]_i_2_n_5\,
      DI(1) => \start_reg_reg[27]_i_2_n_6\,
      DI(0) => \start_reg_reg[27]_i_2_n_7\,
      O(3) => \mid_reg_reg[27]_i_2_n_4\,
      O(2) => \mid_reg_reg[27]_i_2_n_5\,
      O(1) => \mid_reg_reg[27]_i_2_n_6\,
      O(0) => \mid_reg_reg[27]_i_2_n_7\,
      S(3) => \mid_reg[27]_i_3_n_0\,
      S(2) => \mid_reg[27]_i_4_n_0\,
      S(1) => \mid_reg[27]_i_5_n_0\,
      S(0) => \mid_reg[27]_i_6_n_0\
    );
\mid_reg_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(28),
      Q => \mid_reg__0\(28)
    );
\mid_reg_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(29),
      Q => \mid_reg__0\(29)
    );
\mid_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(2),
      Q => \mid_reg_reg_n_0_[2]\
    );
\mid_reg_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(30),
      Q => \mid_reg__0\(30)
    );
\mid_reg_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(31),
      Q => \mid_reg__0\(31)
    );
\mid_reg_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \mid_reg_reg[27]_i_2_n_0\,
      CO(3 downto 0) => \NLW_mid_reg_reg[31]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \start_reg_reg[31]_i_4_n_5\,
      DI(1) => \start_reg_reg[31]_i_4_n_6\,
      DI(0) => \start_reg_reg[31]_i_4_n_7\,
      O(3) => \mid_reg_reg[31]_i_3_n_4\,
      O(2) => \mid_reg_reg[31]_i_3_n_5\,
      O(1) => \mid_reg_reg[31]_i_3_n_6\,
      O(0) => \mid_reg_reg[31]_i_3_n_7\,
      S(3) => \mid_reg[31]_i_4_n_0\,
      S(2) => \mid_reg[31]_i_5_n_0\,
      S(1) => \mid_reg[31]_i_6_n_0\,
      S(0) => \mid_reg[31]_i_7_n_0\
    );
\mid_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(3),
      Q => \mid_reg_reg_n_0_[3]\
    );
\mid_reg_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mid_reg_reg[3]_i_2_n_0\,
      CO(2 downto 0) => \NLW_mid_reg_reg[3]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \start_reg_reg[3]_i_2_n_4\,
      DI(2) => \start_reg_reg[3]_i_2_n_5\,
      DI(1) => \start_reg_reg[3]_i_2_n_6\,
      DI(0) => \start_reg_reg[3]_i_2_n_7\,
      O(3) => \mid_reg_reg[3]_i_2_n_4\,
      O(2) => \mid_reg_reg[3]_i_2_n_5\,
      O(1) => \mid_reg_reg[3]_i_2_n_6\,
      O(0) => \mid_reg_reg[3]_i_2_n_7\,
      S(3) => \mid_reg[3]_i_3_n_0\,
      S(2) => \mid_reg[3]_i_4_n_0\,
      S(1) => \mid_reg[3]_i_5_n_0\,
      S(0) => \mid_reg[3]_i_6_n_0\
    );
\mid_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(4),
      Q => \mid_reg__0\(4)
    );
\mid_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(5),
      Q => \mid_reg__0\(5)
    );
\mid_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(6),
      Q => \mid_reg__0\(6)
    );
\mid_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(7),
      Q => \mid_reg__0\(7)
    );
\mid_reg_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mid_reg_reg[3]_i_2_n_0\,
      CO(3) => \mid_reg_reg[7]_i_2_n_0\,
      CO(2 downto 0) => \NLW_mid_reg_reg[7]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \start_reg_reg[7]_i_2_n_4\,
      DI(2) => \start_reg_reg[7]_i_2_n_5\,
      DI(1) => \start_reg_reg[7]_i_2_n_6\,
      DI(0) => \start_reg_reg[7]_i_2_n_7\,
      O(3) => \mid_reg_reg[7]_i_2_n_4\,
      O(2) => \mid_reg_reg[7]_i_2_n_5\,
      O(1) => \mid_reg_reg[7]_i_2_n_6\,
      O(0) => \mid_reg_reg[7]_i_2_n_7\,
      S(3) => \mid_reg[7]_i_3_n_0\,
      S(2) => \mid_reg[7]_i_4_n_0\,
      S(1) => \mid_reg[7]_i_5_n_0\,
      S(0) => \mid_reg[7]_i_6_n_0\
    );
\mid_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(8),
      Q => \mid_reg__0\(8)
    );
\mid_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \mid_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => mid_reg(9),
      Q => \mid_reg__0\(9)
    );
\p2s_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bin(0),
      I1 => state_reg(0),
      O => \p2s_reg_reg[0]\(0)
    );
request_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFCF000000C2"
    )
        port map (
      I0 => stringState0,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => \out\(2),
      I4 => reset_IBUF,
      I5 => request_out_reg_0,
      O => request_out_reg
    );
request_out_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^done_sort\,
      I1 => \completion_reg[0]\,
      O => stringState0
    );
\start_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[3]_i_2_n_7\,
      O => start_reg(0)
    );
\start_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[11]_i_2_n_5\,
      O => start_reg(10)
    );
\start_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[11]_i_2_n_4\,
      O => start_reg(11)
    );
\start_reg[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(11),
      I1 => \block_reg_reg_n_0_[10]\,
      O => \start_reg[11]_i_3_n_0\
    );
\start_reg[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(10),
      I1 => \block_reg_reg_n_0_[9]\,
      O => \start_reg[11]_i_4_n_0\
    );
\start_reg[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(9),
      I1 => \block_reg_reg_n_0_[8]\,
      O => \start_reg[11]_i_5_n_0\
    );
\start_reg[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(8),
      I1 => \block_reg_reg_n_0_[7]\,
      O => \start_reg[11]_i_6_n_0\
    );
\start_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[15]_i_2_n_7\,
      O => start_reg(12)
    );
\start_reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[15]_i_2_n_6\,
      O => start_reg(13)
    );
\start_reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[15]_i_2_n_5\,
      O => start_reg(14)
    );
\start_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[15]_i_2_n_4\,
      O => start_reg(15)
    );
\start_reg[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(15),
      I1 => \block_reg_reg_n_0_[14]\,
      O => \start_reg[15]_i_3_n_0\
    );
\start_reg[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(14),
      I1 => \block_reg_reg_n_0_[13]\,
      O => \start_reg[15]_i_4_n_0\
    );
\start_reg[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(13),
      I1 => \block_reg_reg_n_0_[12]\,
      O => \start_reg[15]_i_5_n_0\
    );
\start_reg[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(12),
      I1 => \block_reg_reg_n_0_[11]\,
      O => \start_reg[15]_i_6_n_0\
    );
\start_reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[19]_i_2_n_7\,
      O => start_reg(16)
    );
\start_reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[19]_i_2_n_6\,
      O => start_reg(17)
    );
\start_reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[19]_i_2_n_5\,
      O => start_reg(18)
    );
\start_reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[19]_i_2_n_4\,
      O => start_reg(19)
    );
\start_reg[19]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(19),
      I1 => \block_reg_reg_n_0_[18]\,
      O => \start_reg[19]_i_3_n_0\
    );
\start_reg[19]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(18),
      I1 => \block_reg_reg_n_0_[17]\,
      O => \start_reg[19]_i_4_n_0\
    );
\start_reg[19]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(17),
      I1 => \block_reg_reg_n_0_[16]\,
      O => \start_reg[19]_i_5_n_0\
    );
\start_reg[19]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(16),
      I1 => \block_reg_reg_n_0_[15]\,
      O => \start_reg[19]_i_6_n_0\
    );
\start_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[3]_i_2_n_6\,
      O => start_reg(1)
    );
\start_reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[23]_i_2_n_7\,
      O => start_reg(20)
    );
\start_reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[23]_i_2_n_6\,
      O => start_reg(21)
    );
\start_reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[23]_i_2_n_5\,
      O => start_reg(22)
    );
\start_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[23]_i_2_n_4\,
      O => start_reg(23)
    );
\start_reg[23]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(23),
      I1 => \block_reg_reg_n_0_[22]\,
      O => \start_reg[23]_i_3_n_0\
    );
\start_reg[23]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(22),
      I1 => \block_reg_reg_n_0_[21]\,
      O => \start_reg[23]_i_4_n_0\
    );
\start_reg[23]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(21),
      I1 => \block_reg_reg_n_0_[20]\,
      O => \start_reg[23]_i_5_n_0\
    );
\start_reg[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(20),
      I1 => \block_reg_reg_n_0_[19]\,
      O => \start_reg[23]_i_6_n_0\
    );
\start_reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[27]_i_2_n_7\,
      O => start_reg(24)
    );
\start_reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[27]_i_2_n_6\,
      O => start_reg(25)
    );
\start_reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[27]_i_2_n_5\,
      O => start_reg(26)
    );
\start_reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[27]_i_2_n_4\,
      O => start_reg(27)
    );
\start_reg[27]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(27),
      I1 => \block_reg_reg_n_0_[26]\,
      O => \start_reg[27]_i_3_n_0\
    );
\start_reg[27]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(26),
      I1 => \block_reg_reg_n_0_[25]\,
      O => \start_reg[27]_i_4_n_0\
    );
\start_reg[27]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(25),
      I1 => \block_reg_reg_n_0_[24]\,
      O => \start_reg[27]_i_5_n_0\
    );
\start_reg[27]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(24),
      I1 => \block_reg_reg_n_0_[23]\,
      O => \start_reg[27]_i_6_n_0\
    );
\start_reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[31]_i_4_n_7\,
      O => start_reg(28)
    );
\start_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[31]_i_4_n_6\,
      O => start_reg(29)
    );
\start_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[3]_i_2_n_5\,
      O => start_reg(2)
    );
\start_reg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[31]_i_4_n_5\,
      O => start_reg(30)
    );
\start_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C1010000"
    )
        port map (
      I0 => \FSM_sequential_state_reg_reg[0]_i_2_n_0\,
      I1 => state_reg_0(2),
      I2 => state_reg_0(1),
      I3 => \start_reg_reg[31]_i_3_n_0\,
      I4 => state_reg_0(0),
      O => \start_reg[31]_i_1_n_0\
    );
\start_reg[31]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(31),
      I1 => \block_reg_reg_n_0_[30]\,
      O => \start_reg[31]_i_10_n_0\
    );
\start_reg[31]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(30),
      I1 => \block_reg_reg_n_0_[29]\,
      O => \start_reg[31]_i_11_n_0\
    );
\start_reg[31]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(29),
      I1 => \block_reg_reg_n_0_[28]\,
      O => \start_reg[31]_i_12_n_0\
    );
\start_reg[31]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(28),
      I1 => \block_reg_reg_n_0_[27]\,
      O => \start_reg[31]_i_13_n_0\
    );
\start_reg[31]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(22),
      I1 => \hi_reg__0\(23),
      O => \start_reg[31]_i_15_n_0\
    );
\start_reg[31]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(20),
      I1 => \hi_reg__0\(21),
      O => \start_reg[31]_i_16_n_0\
    );
\start_reg[31]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(18),
      I1 => \hi_reg__0\(19),
      O => \start_reg[31]_i_17_n_0\
    );
\start_reg[31]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(16),
      I1 => \hi_reg__0\(17),
      O => \start_reg[31]_i_18_n_0\
    );
\start_reg[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[31]_i_4_n_4\,
      O => start_reg(31)
    );
\start_reg[31]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(14),
      I1 => \hi_reg__0\(15),
      O => \start_reg[31]_i_20_n_0\
    );
\start_reg[31]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(12),
      I1 => \hi_reg__0\(13),
      O => \start_reg[31]_i_21_n_0\
    );
\start_reg[31]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(10),
      I1 => \hi_reg__0\(11),
      O => \start_reg[31]_i_22_n_0\
    );
\start_reg[31]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(8),
      I1 => \hi_reg__0\(9),
      O => \start_reg[31]_i_23_n_0\
    );
\start_reg[31]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \k_reg_reg_n_0_[2]\,
      I1 => \hi_reg__0\(2),
      I2 => \hi_reg__0\(3),
      I3 => \k_reg_reg_n_0_[3]\,
      O => \start_reg[31]_i_24_n_0\
    );
\start_reg[31]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \k_reg_reg_n_0_[0]\,
      I1 => \hi_reg__0\(0),
      I2 => \hi_reg__0\(1),
      I3 => \k_reg_reg_n_0_[1]\,
      O => \start_reg[31]_i_25_n_0\
    );
\start_reg[31]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(6),
      I1 => \hi_reg__0\(7),
      O => \start_reg[31]_i_26_n_0\
    );
\start_reg[31]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(4),
      I1 => \hi_reg__0\(5),
      O => \start_reg[31]_i_27_n_0\
    );
\start_reg[31]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \k_reg_reg_n_0_[2]\,
      I1 => \hi_reg__0\(2),
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \hi_reg__0\(3),
      O => \start_reg[31]_i_28_n_0\
    );
\start_reg[31]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \k_reg_reg_n_0_[0]\,
      I1 => \hi_reg__0\(0),
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \hi_reg__0\(1),
      O => \start_reg[31]_i_29_n_0\
    );
\start_reg[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(30),
      I1 => \hi_reg__0\(31),
      O => \start_reg[31]_i_6_n_0\
    );
\start_reg[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(28),
      I1 => \hi_reg__0\(29),
      O => \start_reg[31]_i_7_n_0\
    );
\start_reg[31]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(26),
      I1 => \hi_reg__0\(27),
      O => \start_reg[31]_i_8_n_0\
    );
\start_reg[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(24),
      I1 => \hi_reg__0\(25),
      O => \start_reg[31]_i_9_n_0\
    );
\start_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[3]_i_2_n_4\,
      O => start_reg(3)
    );
\start_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lo_reg(3),
      I1 => \block_reg_reg_n_0_[2]\,
      O => \start_reg[3]_i_3_n_0\
    );
\start_reg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lo_reg(2),
      I1 => \block_reg_reg_n_0_[1]\,
      O => \start_reg[3]_i_4_n_0\
    );
\start_reg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lo_reg(1),
      I1 => \block_reg_reg_n_0_[0]\,
      O => \start_reg[3]_i_5_n_0\
    );
\start_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[7]_i_2_n_7\,
      O => start_reg(4)
    );
\start_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[7]_i_2_n_6\,
      O => start_reg(5)
    );
\start_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[7]_i_2_n_5\,
      O => start_reg(6)
    );
\start_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[7]_i_2_n_4\,
      O => start_reg(7)
    );
\start_reg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(7),
      I1 => \block_reg_reg_n_0_[6]\,
      O => \start_reg[7]_i_3_n_0\
    );
\start_reg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(6),
      I1 => \block_reg_reg_n_0_[5]\,
      O => \start_reg[7]_i_4_n_0\
    );
\start_reg[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(5),
      I1 => \block_reg_reg_n_0_[4]\,
      O => \start_reg[7]_i_5_n_0\
    );
\start_reg[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \lo_reg__0\(4),
      I1 => \block_reg_reg_n_0_[3]\,
      O => \start_reg[7]_i_6_n_0\
    );
\start_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[11]_i_2_n_7\,
      O => start_reg(8)
    );
\start_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_0(2),
      I1 => \start_reg_reg[11]_i_2_n_6\,
      O => start_reg(9)
    );
\start_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(0),
      Q => lo_reg(0)
    );
\start_reg_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(10),
      Q => \lo_reg__0\(10)
    );
\start_reg_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(11),
      Q => \lo_reg__0\(11)
    );
\start_reg_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_reg_reg[7]_i_2_n_0\,
      CO(3) => \start_reg_reg[11]_i_2_n_0\,
      CO(2 downto 0) => \NLW_start_reg_reg[11]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \lo_reg__0\(11 downto 8),
      O(3) => \start_reg_reg[11]_i_2_n_4\,
      O(2) => \start_reg_reg[11]_i_2_n_5\,
      O(1) => \start_reg_reg[11]_i_2_n_6\,
      O(0) => \start_reg_reg[11]_i_2_n_7\,
      S(3) => \start_reg[11]_i_3_n_0\,
      S(2) => \start_reg[11]_i_4_n_0\,
      S(1) => \start_reg[11]_i_5_n_0\,
      S(0) => \start_reg[11]_i_6_n_0\
    );
\start_reg_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(12),
      Q => \lo_reg__0\(12)
    );
\start_reg_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(13),
      Q => \lo_reg__0\(13)
    );
\start_reg_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(14),
      Q => \lo_reg__0\(14)
    );
\start_reg_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(15),
      Q => \lo_reg__0\(15)
    );
\start_reg_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_reg_reg[11]_i_2_n_0\,
      CO(3) => \start_reg_reg[15]_i_2_n_0\,
      CO(2 downto 0) => \NLW_start_reg_reg[15]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \lo_reg__0\(15 downto 12),
      O(3) => \start_reg_reg[15]_i_2_n_4\,
      O(2) => \start_reg_reg[15]_i_2_n_5\,
      O(1) => \start_reg_reg[15]_i_2_n_6\,
      O(0) => \start_reg_reg[15]_i_2_n_7\,
      S(3) => \start_reg[15]_i_3_n_0\,
      S(2) => \start_reg[15]_i_4_n_0\,
      S(1) => \start_reg[15]_i_5_n_0\,
      S(0) => \start_reg[15]_i_6_n_0\
    );
\start_reg_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(16),
      Q => \lo_reg__0\(16)
    );
\start_reg_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(17),
      Q => \lo_reg__0\(17)
    );
\start_reg_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(18),
      Q => \lo_reg__0\(18)
    );
\start_reg_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(19),
      Q => \lo_reg__0\(19)
    );
\start_reg_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_reg_reg[15]_i_2_n_0\,
      CO(3) => \start_reg_reg[19]_i_2_n_0\,
      CO(2 downto 0) => \NLW_start_reg_reg[19]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \lo_reg__0\(19 downto 16),
      O(3) => \start_reg_reg[19]_i_2_n_4\,
      O(2) => \start_reg_reg[19]_i_2_n_5\,
      O(1) => \start_reg_reg[19]_i_2_n_6\,
      O(0) => \start_reg_reg[19]_i_2_n_7\,
      S(3) => \start_reg[19]_i_3_n_0\,
      S(2) => \start_reg[19]_i_4_n_0\,
      S(1) => \start_reg[19]_i_5_n_0\,
      S(0) => \start_reg[19]_i_6_n_0\
    );
\start_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(1),
      Q => lo_reg(1)
    );
\start_reg_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(20),
      Q => \lo_reg__0\(20)
    );
\start_reg_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(21),
      Q => \lo_reg__0\(21)
    );
\start_reg_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(22),
      Q => \lo_reg__0\(22)
    );
\start_reg_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(23),
      Q => \lo_reg__0\(23)
    );
\start_reg_reg[23]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_reg_reg[19]_i_2_n_0\,
      CO(3) => \start_reg_reg[23]_i_2_n_0\,
      CO(2 downto 0) => \NLW_start_reg_reg[23]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \lo_reg__0\(23 downto 20),
      O(3) => \start_reg_reg[23]_i_2_n_4\,
      O(2) => \start_reg_reg[23]_i_2_n_5\,
      O(1) => \start_reg_reg[23]_i_2_n_6\,
      O(0) => \start_reg_reg[23]_i_2_n_7\,
      S(3) => \start_reg[23]_i_3_n_0\,
      S(2) => \start_reg[23]_i_4_n_0\,
      S(1) => \start_reg[23]_i_5_n_0\,
      S(0) => \start_reg[23]_i_6_n_0\
    );
\start_reg_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(24),
      Q => \lo_reg__0\(24)
    );
\start_reg_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(25),
      Q => \lo_reg__0\(25)
    );
\start_reg_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(26),
      Q => \lo_reg__0\(26)
    );
\start_reg_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(27),
      Q => \lo_reg__0\(27)
    );
\start_reg_reg[27]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_reg_reg[23]_i_2_n_0\,
      CO(3) => \start_reg_reg[27]_i_2_n_0\,
      CO(2 downto 0) => \NLW_start_reg_reg[27]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \lo_reg__0\(27 downto 24),
      O(3) => \start_reg_reg[27]_i_2_n_4\,
      O(2) => \start_reg_reg[27]_i_2_n_5\,
      O(1) => \start_reg_reg[27]_i_2_n_6\,
      O(0) => \start_reg_reg[27]_i_2_n_7\,
      S(3) => \start_reg[27]_i_3_n_0\,
      S(2) => \start_reg[27]_i_4_n_0\,
      S(1) => \start_reg[27]_i_5_n_0\,
      S(0) => \start_reg[27]_i_6_n_0\
    );
\start_reg_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(28),
      Q => \lo_reg__0\(28)
    );
\start_reg_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(29),
      Q => \lo_reg__0\(29)
    );
\start_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(2),
      Q => lo_reg(2)
    );
\start_reg_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(30),
      Q => \lo_reg__0\(30)
    );
\start_reg_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(31),
      Q => \lo_reg__0\(31)
    );
\start_reg_reg[31]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_reg_reg[31]_i_19_n_0\,
      CO(3) => \start_reg_reg[31]_i_14_n_0\,
      CO(2 downto 0) => \NLW_start_reg_reg[31]_i_14_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_start_reg_reg[31]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3) => \start_reg[31]_i_20_n_0\,
      S(2) => \start_reg[31]_i_21_n_0\,
      S(1) => \start_reg[31]_i_22_n_0\,
      S(0) => \start_reg[31]_i_23_n_0\
    );
\start_reg_reg[31]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \start_reg_reg[31]_i_19_n_0\,
      CO(2 downto 0) => \NLW_start_reg_reg[31]_i_19_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => \start_reg[31]_i_24_n_0\,
      DI(0) => \start_reg[31]_i_25_n_0\,
      O(3 downto 0) => \NLW_start_reg_reg[31]_i_19_O_UNCONNECTED\(3 downto 0),
      S(3) => \start_reg[31]_i_26_n_0\,
      S(2) => \start_reg[31]_i_27_n_0\,
      S(1) => \start_reg[31]_i_28_n_0\,
      S(0) => \start_reg[31]_i_29_n_0\
    );
\start_reg_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_reg_reg[31]_i_5_n_0\,
      CO(3) => \start_reg_reg[31]_i_3_n_0\,
      CO(2 downto 0) => \NLW_start_reg_reg[31]_i_3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \hi_reg__0\(31),
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_start_reg_reg[31]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \start_reg[31]_i_6_n_0\,
      S(2) => \start_reg[31]_i_7_n_0\,
      S(1) => \start_reg[31]_i_8_n_0\,
      S(0) => \start_reg[31]_i_9_n_0\
    );
\start_reg_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_reg_reg[27]_i_2_n_0\,
      CO(3 downto 0) => \NLW_start_reg_reg[31]_i_4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \lo_reg__0\(30 downto 28),
      O(3) => \start_reg_reg[31]_i_4_n_4\,
      O(2) => \start_reg_reg[31]_i_4_n_5\,
      O(1) => \start_reg_reg[31]_i_4_n_6\,
      O(0) => \start_reg_reg[31]_i_4_n_7\,
      S(3) => \start_reg[31]_i_10_n_0\,
      S(2) => \start_reg[31]_i_11_n_0\,
      S(1) => \start_reg[31]_i_12_n_0\,
      S(0) => \start_reg[31]_i_13_n_0\
    );
\start_reg_reg[31]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_reg_reg[31]_i_14_n_0\,
      CO(3) => \start_reg_reg[31]_i_5_n_0\,
      CO(2 downto 0) => \NLW_start_reg_reg[31]_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_start_reg_reg[31]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \start_reg[31]_i_15_n_0\,
      S(2) => \start_reg[31]_i_16_n_0\,
      S(1) => \start_reg[31]_i_17_n_0\,
      S(0) => \start_reg[31]_i_18_n_0\
    );
\start_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(3),
      Q => lo_reg(3)
    );
\start_reg_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \start_reg_reg[3]_i_2_n_0\,
      CO(2 downto 0) => \NLW_start_reg_reg[3]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => lo_reg(3 downto 1),
      DI(0) => '0',
      O(3) => \start_reg_reg[3]_i_2_n_4\,
      O(2) => \start_reg_reg[3]_i_2_n_5\,
      O(1) => \start_reg_reg[3]_i_2_n_6\,
      O(0) => \start_reg_reg[3]_i_2_n_7\,
      S(3) => \start_reg[3]_i_3_n_0\,
      S(2) => \start_reg[3]_i_4_n_0\,
      S(1) => \start_reg[3]_i_5_n_0\,
      S(0) => lo_reg(0)
    );
\start_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(4),
      Q => \lo_reg__0\(4)
    );
\start_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(5),
      Q => \lo_reg__0\(5)
    );
\start_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(6),
      Q => \lo_reg__0\(6)
    );
\start_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(7),
      Q => \lo_reg__0\(7)
    );
\start_reg_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_reg_reg[3]_i_2_n_0\,
      CO(3) => \start_reg_reg[7]_i_2_n_0\,
      CO(2 downto 0) => \NLW_start_reg_reg[7]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \lo_reg__0\(7 downto 4),
      O(3) => \start_reg_reg[7]_i_2_n_4\,
      O(2) => \start_reg_reg[7]_i_2_n_5\,
      O(1) => \start_reg_reg[7]_i_2_n_6\,
      O(0) => \start_reg_reg[7]_i_2_n_7\,
      S(3) => \start_reg[7]_i_3_n_0\,
      S(2) => \start_reg[7]_i_4_n_0\,
      S(1) => \start_reg[7]_i_5_n_0\,
      S(0) => \start_reg[7]_i_6_n_0\
    );
\start_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(8),
      Q => \lo_reg__0\(8)
    );
\start_reg_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \start_reg[31]_i_1_n_0\,
      CLR => reset_IBUF,
      D => start_reg(9),
      Q => \lo_reg__0\(9)
    );
\temp[0][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFBAA08"
    )
        port map (
      I0 => \temp_reg[0][0]_i_2_n_0\,
      I1 => \temp_reg[0][3]_i_5_n_2\,
      I2 => \temp_reg[0][3]_i_6_n_1\,
      I3 => \i_reg_reg[3]_i_5_n_1\,
      I4 => \mem[0]__0\(0),
      O => \temp[15]0_in\(0)
    );
\temp[0][0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[11]_28\(0),
      I1 => \mem_reg[10]_27\(0),
      I2 => j_reg(1),
      I3 => \mem_reg[9]_26\(0),
      I4 => j_reg(0),
      I5 => \mem_reg[8]_25\(0),
      O => \temp[0][0]_i_10_n_0\
    );
\temp[0][0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[15]_32\(0),
      I1 => \mem_reg[14]_31\(0),
      I2 => j_reg(1),
      I3 => \mem_reg[13]_30\(0),
      I4 => j_reg(0),
      I5 => \mem_reg[12]_29\(0),
      O => \temp[0][0]_i_11_n_0\
    );
\temp[0][0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]_20\(0),
      I1 => \mem_reg[2]_19\(0),
      I2 => i_reg(1),
      I3 => \mem_reg[1]_18\(0),
      I4 => i_reg(0),
      I5 => \mem_reg[0]_17\(0),
      O => \temp[0][0]_i_12_n_0\
    );
\temp[0][0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]_24\(0),
      I1 => \mem_reg[6]_23\(0),
      I2 => i_reg(1),
      I3 => \mem_reg[5]_22\(0),
      I4 => i_reg(0),
      I5 => \mem_reg[4]_21\(0),
      O => \temp[0][0]_i_13_n_0\
    );
\temp[0][0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[11]_28\(0),
      I1 => \mem_reg[10]_27\(0),
      I2 => i_reg(1),
      I3 => \mem_reg[9]_26\(0),
      I4 => i_reg(0),
      I5 => \mem_reg[8]_25\(0),
      O => \temp[0][0]_i_14_n_0\
    );
\temp[0][0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[15]_32\(0),
      I1 => \mem_reg[14]_31\(0),
      I2 => i_reg(1),
      I3 => \mem_reg[13]_30\(0),
      I4 => i_reg(0),
      I5 => \mem_reg[12]_29\(0),
      O => \temp[0][0]_i_15_n_0\
    );
\temp[0][0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]_20\(0),
      I1 => \mem_reg[2]_19\(0),
      I2 => j_reg(1),
      I3 => \mem_reg[1]_18\(0),
      I4 => j_reg(0),
      I5 => \mem_reg[0]_17\(0),
      O => \temp[0][0]_i_8_n_0\
    );
\temp[0][0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]_24\(0),
      I1 => \mem_reg[6]_23\(0),
      I2 => j_reg(1),
      I3 => \mem_reg[5]_22\(0),
      I4 => j_reg(0),
      I5 => \mem_reg[4]_21\(0),
      O => \temp[0][0]_i_9_n_0\
    );
\temp[0][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFBAA08"
    )
        port map (
      I0 => \temp_reg[0][1]_i_2_n_0\,
      I1 => \temp_reg[0][3]_i_5_n_2\,
      I2 => \temp_reg[0][3]_i_6_n_1\,
      I3 => \i_reg_reg[3]_i_5_n_1\,
      I4 => \mem[0]__0\(1),
      O => \temp[15]0_in\(1)
    );
\temp[0][1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[11]_28\(1),
      I1 => \mem_reg[10]_27\(1),
      I2 => j_reg(1),
      I3 => \mem_reg[9]_26\(1),
      I4 => j_reg(0),
      I5 => \mem_reg[8]_25\(1),
      O => \temp[0][1]_i_10_n_0\
    );
\temp[0][1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[15]_32\(1),
      I1 => \mem_reg[14]_31\(1),
      I2 => j_reg(1),
      I3 => \mem_reg[13]_30\(1),
      I4 => j_reg(0),
      I5 => \mem_reg[12]_29\(1),
      O => \temp[0][1]_i_11_n_0\
    );
\temp[0][1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]_20\(1),
      I1 => \mem_reg[2]_19\(1),
      I2 => i_reg(1),
      I3 => \mem_reg[1]_18\(1),
      I4 => i_reg(0),
      I5 => \mem_reg[0]_17\(1),
      O => \temp[0][1]_i_12_n_0\
    );
\temp[0][1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]_24\(1),
      I1 => \mem_reg[6]_23\(1),
      I2 => i_reg(1),
      I3 => \mem_reg[5]_22\(1),
      I4 => i_reg(0),
      I5 => \mem_reg[4]_21\(1),
      O => \temp[0][1]_i_13_n_0\
    );
\temp[0][1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[11]_28\(1),
      I1 => \mem_reg[10]_27\(1),
      I2 => i_reg(1),
      I3 => \mem_reg[9]_26\(1),
      I4 => i_reg(0),
      I5 => \mem_reg[8]_25\(1),
      O => \temp[0][1]_i_14_n_0\
    );
\temp[0][1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[15]_32\(1),
      I1 => \mem_reg[14]_31\(1),
      I2 => i_reg(1),
      I3 => \mem_reg[13]_30\(1),
      I4 => i_reg(0),
      I5 => \mem_reg[12]_29\(1),
      O => \temp[0][1]_i_15_n_0\
    );
\temp[0][1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]_20\(1),
      I1 => \mem_reg[2]_19\(1),
      I2 => j_reg(1),
      I3 => \mem_reg[1]_18\(1),
      I4 => j_reg(0),
      I5 => \mem_reg[0]_17\(1),
      O => \temp[0][1]_i_8_n_0\
    );
\temp[0][1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]_24\(1),
      I1 => \mem_reg[6]_23\(1),
      I2 => j_reg(1),
      I3 => \mem_reg[5]_22\(1),
      I4 => j_reg(0),
      I5 => \mem_reg[4]_21\(1),
      O => \temp[0][1]_i_9_n_0\
    );
\temp[0][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFBAA08"
    )
        port map (
      I0 => \temp_reg[0][2]_i_2_n_0\,
      I1 => \temp_reg[0][3]_i_5_n_2\,
      I2 => \temp_reg[0][3]_i_6_n_1\,
      I3 => \i_reg_reg[3]_i_5_n_1\,
      I4 => \mem[0]__0\(2),
      O => \temp[15]0_in\(2)
    );
\temp[0][2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[11]_28\(2),
      I1 => \mem_reg[10]_27\(2),
      I2 => j_reg(1),
      I3 => \mem_reg[9]_26\(2),
      I4 => j_reg(0),
      I5 => \mem_reg[8]_25\(2),
      O => \temp[0][2]_i_10_n_0\
    );
\temp[0][2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[15]_32\(2),
      I1 => \mem_reg[14]_31\(2),
      I2 => j_reg(1),
      I3 => \mem_reg[13]_30\(2),
      I4 => j_reg(0),
      I5 => \mem_reg[12]_29\(2),
      O => \temp[0][2]_i_11_n_0\
    );
\temp[0][2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]_20\(2),
      I1 => \mem_reg[2]_19\(2),
      I2 => i_reg(1),
      I3 => \mem_reg[1]_18\(2),
      I4 => i_reg(0),
      I5 => \mem_reg[0]_17\(2),
      O => \temp[0][2]_i_12_n_0\
    );
\temp[0][2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]_24\(2),
      I1 => \mem_reg[6]_23\(2),
      I2 => i_reg(1),
      I3 => \mem_reg[5]_22\(2),
      I4 => i_reg(0),
      I5 => \mem_reg[4]_21\(2),
      O => \temp[0][2]_i_13_n_0\
    );
\temp[0][2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[11]_28\(2),
      I1 => \mem_reg[10]_27\(2),
      I2 => i_reg(1),
      I3 => \mem_reg[9]_26\(2),
      I4 => i_reg(0),
      I5 => \mem_reg[8]_25\(2),
      O => \temp[0][2]_i_14_n_0\
    );
\temp[0][2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[15]_32\(2),
      I1 => \mem_reg[14]_31\(2),
      I2 => i_reg(1),
      I3 => \mem_reg[13]_30\(2),
      I4 => i_reg(0),
      I5 => \mem_reg[12]_29\(2),
      O => \temp[0][2]_i_15_n_0\
    );
\temp[0][2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]_20\(2),
      I1 => \mem_reg[2]_19\(2),
      I2 => j_reg(1),
      I3 => \mem_reg[1]_18\(2),
      I4 => j_reg(0),
      I5 => \mem_reg[0]_17\(2),
      O => \temp[0][2]_i_8_n_0\
    );
\temp[0][2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]_24\(2),
      I1 => \mem_reg[6]_23\(2),
      I2 => j_reg(1),
      I3 => \mem_reg[5]_22\(2),
      I4 => j_reg(0),
      I5 => \mem_reg[4]_21\(2),
      O => \temp[0][2]_i_9_n_0\
    );
\temp[0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \k_reg_reg_n_0_[2]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \k_reg_reg_n_0_[1]\,
      O => \temp[0][3]_i_1_n_0\
    );
\temp[0][3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \mem[0]__0\(2),
      I1 => \temp_reg[0][2]_i_2_n_0\,
      I2 => \temp_reg[0][3]_i_4_n_0\,
      I3 => \mem[0]__0\(3),
      O => \temp[0][3]_i_10_n_0\
    );
\temp[0][3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \mem[0]__0\(0),
      I1 => \temp_reg[0][0]_i_2_n_0\,
      I2 => \temp_reg[0][1]_i_2_n_0\,
      I3 => \mem[0]__0\(1),
      O => \temp[0][3]_i_11_n_0\
    );
\temp[0][3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mem[0]__0\(2),
      I1 => \temp_reg[0][2]_i_2_n_0\,
      I2 => \mem[0]__0\(3),
      I3 => \temp_reg[0][3]_i_4_n_0\,
      O => \temp[0][3]_i_12_n_0\
    );
\temp[0][3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \mem[0]__0\(0),
      I1 => \temp_reg[0][0]_i_2_n_0\,
      I2 => \mem[0]__0\(1),
      I3 => \temp_reg[0][1]_i_2_n_0\,
      O => \temp[0][3]_i_13_n_0\
    );
\temp[0][3]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hi_reg__0\(30),
      I1 => \hi_reg__0\(31),
      O => \temp[0][3]_i_15_n_0\
    );
\temp[0][3]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \hi_reg__0\(29),
      I1 => \hi_reg__0\(28),
      I2 => \hi_reg__0\(27),
      O => \temp[0][3]_i_16_n_0\
    );
\temp[0][3]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \hi_reg__0\(26),
      I1 => \hi_reg__0\(25),
      I2 => \hi_reg__0\(24),
      O => \temp[0][3]_i_17_n_0\
    );
\temp[0][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFBAA08"
    )
        port map (
      I0 => \temp_reg[0][3]_i_4_n_0\,
      I1 => \temp_reg[0][3]_i_5_n_2\,
      I2 => \temp_reg[0][3]_i_6_n_1\,
      I3 => \i_reg_reg[3]_i_5_n_1\,
      I4 => \mem[0]__0\(3),
      O => \temp[15]0_in\(3)
    );
\temp[0][3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]_20\(3),
      I1 => \mem_reg[2]_19\(3),
      I2 => j_reg(1),
      I3 => \mem_reg[1]_18\(3),
      I4 => j_reg(0),
      I5 => \mem_reg[0]_17\(3),
      O => \temp[0][3]_i_20_n_0\
    );
\temp[0][3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]_24\(3),
      I1 => \mem_reg[6]_23\(3),
      I2 => j_reg(1),
      I3 => \mem_reg[5]_22\(3),
      I4 => j_reg(0),
      I5 => \mem_reg[4]_21\(3),
      O => \temp[0][3]_i_21_n_0\
    );
\temp[0][3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[11]_28\(3),
      I1 => \mem_reg[10]_27\(3),
      I2 => j_reg(1),
      I3 => \mem_reg[9]_26\(3),
      I4 => j_reg(0),
      I5 => \mem_reg[8]_25\(3),
      O => \temp[0][3]_i_22_n_0\
    );
\temp[0][3]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[15]_32\(3),
      I1 => \mem_reg[14]_31\(3),
      I2 => j_reg(1),
      I3 => \mem_reg[13]_30\(3),
      I4 => j_reg(0),
      I5 => \mem_reg[12]_29\(3),
      O => \temp[0][3]_i_23_n_0\
    );
\temp[0][3]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \hi_reg__0\(23),
      I1 => \hi_reg__0\(22),
      I2 => \hi_reg__0\(21),
      O => \temp[0][3]_i_25_n_0\
    );
\temp[0][3]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \hi_reg__0\(20),
      I1 => \hi_reg__0\(19),
      I2 => \hi_reg__0\(18),
      O => \temp[0][3]_i_26_n_0\
    );
\temp[0][3]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \hi_reg__0\(17),
      I1 => \hi_reg__0\(16),
      I2 => \hi_reg__0\(15),
      O => \temp[0][3]_i_27_n_0\
    );
\temp[0][3]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \hi_reg__0\(14),
      I1 => \hi_reg__0\(13),
      I2 => \hi_reg__0\(12),
      O => \temp[0][3]_i_28_n_0\
    );
\temp[0][3]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[3]_20\(3),
      I1 => \mem_reg[2]_19\(3),
      I2 => i_reg(1),
      I3 => \mem_reg[1]_18\(3),
      I4 => i_reg(0),
      I5 => \mem_reg[0]_17\(3),
      O => \temp[0][3]_i_29_n_0\
    );
\temp[0][3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state_reg_0(0),
      I1 => state_reg_0(2),
      I2 => state_reg_0(1),
      O => \temp[0][3]_i_3_n_0\
    );
\temp[0][3]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[7]_24\(3),
      I1 => \mem_reg[6]_23\(3),
      I2 => i_reg(1),
      I3 => \mem_reg[5]_22\(3),
      I4 => i_reg(0),
      I5 => \mem_reg[4]_21\(3),
      O => \temp[0][3]_i_30_n_0\
    );
\temp[0][3]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[11]_28\(3),
      I1 => \mem_reg[10]_27\(3),
      I2 => i_reg(1),
      I3 => \mem_reg[9]_26\(3),
      I4 => i_reg(0),
      I5 => \mem_reg[8]_25\(3),
      O => \temp[0][3]_i_31_n_0\
    );
\temp[0][3]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \mem_reg[15]_32\(3),
      I1 => \mem_reg[14]_31\(3),
      I2 => i_reg(1),
      I3 => \mem_reg[13]_30\(3),
      I4 => i_reg(0),
      I5 => \mem_reg[12]_29\(3),
      O => \temp[0][3]_i_32_n_0\
    );
\temp[0][3]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \hi_reg__0\(11),
      I1 => \hi_reg__0\(10),
      I2 => \hi_reg__0\(9),
      O => \temp[0][3]_i_33_n_0\
    );
\temp[0][3]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \hi_reg__0\(8),
      I1 => \hi_reg__0\(7),
      I2 => \hi_reg__0\(6),
      O => \temp[0][3]_i_34_n_0\
    );
\temp[0][3]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => j_reg(3),
      I1 => \hi_reg__0\(3),
      I2 => \hi_reg__0\(5),
      I3 => \hi_reg__0\(4),
      O => \temp[0][3]_i_35_n_0\
    );
\temp[0][3]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => j_reg(0),
      I1 => \hi_reg__0\(0),
      I2 => \hi_reg__0\(2),
      I3 => j_reg(2),
      I4 => \hi_reg__0\(1),
      I5 => j_reg(1),
      O => \temp[0][3]_i_36_n_0\
    );
\temp[10][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[0]\,
      I3 => \k_reg_reg_n_0_[2]\,
      I4 => \k_reg_reg_n_0_[1]\,
      I5 => \k_reg_reg_n_0_[3]\,
      O => \temp[10][3]_i_1_n_0\
    );
\temp[11][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \k_reg_reg_n_0_[2]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \k_reg_reg_n_0_[1]\,
      O => \temp[11][3]_i_1_n_0\
    );
\temp[12][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[0]\,
      I3 => \k_reg_reg_n_0_[1]\,
      I4 => \k_reg_reg_n_0_[3]\,
      I5 => \k_reg_reg_n_0_[2]\,
      O => \temp[12][3]_i_1_n_0\
    );
\temp[13][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[2]\,
      I3 => \k_reg_reg_n_0_[1]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \k_reg_reg_n_0_[3]\,
      O => \temp[13][3]_i_1_n_0\
    );
\temp[14][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[2]\,
      I3 => \k_reg_reg_n_0_[0]\,
      I4 => \k_reg_reg_n_0_[3]\,
      I5 => \k_reg_reg_n_0_[1]\,
      O => \temp[14][3]_i_1_n_0\
    );
\temp[15][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \k_reg_reg_n_0_[2]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \k_reg_reg_n_0_[1]\,
      O => \temp[15][3]_i_1_n_0\
    );
\temp[1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \k_reg_reg_n_0_[2]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \k_reg_reg_n_0_[1]\,
      O => \temp[1][3]_i_1_n_0\
    );
\temp[2][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \k_reg_reg_n_0_[2]\,
      I4 => \k_reg_reg_n_0_[1]\,
      I5 => \k_reg_reg_n_0_[0]\,
      O => \temp[2][3]_i_1_n_0\
    );
\temp[3][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \k_reg_reg_n_0_[2]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \k_reg_reg_n_0_[1]\,
      O => \temp[3][3]_i_1_n_0\
    );
\temp[4][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \k_reg_reg_n_0_[0]\,
      I4 => \k_reg_reg_n_0_[2]\,
      I5 => \k_reg_reg_n_0_[1]\,
      O => \temp[4][3]_i_1_n_0\
    );
\temp[5][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \k_reg_reg_n_0_[1]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \k_reg_reg_n_0_[2]\,
      O => \temp[5][3]_i_1_n_0\
    );
\temp[6][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[3]\,
      I3 => \k_reg_reg_n_0_[0]\,
      I4 => \k_reg_reg_n_0_[1]\,
      I5 => \k_reg_reg_n_0_[2]\,
      O => \temp[6][3]_i_1_n_0\
    );
\temp[7][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[2]\,
      I3 => \k_reg_reg_n_0_[3]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \k_reg_reg_n_0_[1]\,
      O => \temp[7][3]_i_1_n_0\
    );
\temp[8][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[0]\,
      I3 => \k_reg_reg_n_0_[2]\,
      I4 => \k_reg_reg_n_0_[3]\,
      I5 => \k_reg_reg_n_0_[1]\,
      O => \temp[8][3]_i_1_n_0\
    );
\temp[9][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \temp[0][3]_i_3_n_0\,
      I1 => \k_reg_reg[3]_i_3_n_0\,
      I2 => \k_reg_reg_n_0_[1]\,
      I3 => \k_reg_reg_n_0_[2]\,
      I4 => \k_reg_reg_n_0_[0]\,
      I5 => \k_reg_reg_n_0_[3]\,
      O => \temp[9][3]_i_1_n_0\
    );
\temp_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[0][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(0),
      Q => \temp_reg_n_0_[0][0]\
    );
\temp_reg[0][0]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \temp_reg[0][0]_i_4_n_0\,
      I1 => \temp_reg[0][0]_i_5_n_0\,
      O => \temp_reg[0][0]_i_2_n_0\,
      S => j_reg(3)
    );
\temp_reg[0][0]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \temp_reg[0][0]_i_6_n_0\,
      I1 => \temp_reg[0][0]_i_7_n_0\,
      O => \mem[0]__0\(0),
      S => i_reg(3)
    );
\temp_reg[0][0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][0]_i_8_n_0\,
      I1 => \temp[0][0]_i_9_n_0\,
      O => \temp_reg[0][0]_i_4_n_0\,
      S => j_reg(2)
    );
\temp_reg[0][0]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][0]_i_10_n_0\,
      I1 => \temp[0][0]_i_11_n_0\,
      O => \temp_reg[0][0]_i_5_n_0\,
      S => j_reg(2)
    );
\temp_reg[0][0]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][0]_i_12_n_0\,
      I1 => \temp[0][0]_i_13_n_0\,
      O => \temp_reg[0][0]_i_6_n_0\,
      S => i_reg(2)
    );
\temp_reg[0][0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][0]_i_14_n_0\,
      I1 => \temp[0][0]_i_15_n_0\,
      O => \temp_reg[0][0]_i_7_n_0\,
      S => i_reg(2)
    );
\temp_reg[0][1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[0][3]_i_1_n_0\,
      D => \temp[15]0_in\(1),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[0][1]\
    );
\temp_reg[0][1]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \temp_reg[0][1]_i_4_n_0\,
      I1 => \temp_reg[0][1]_i_5_n_0\,
      O => \temp_reg[0][1]_i_2_n_0\,
      S => j_reg(3)
    );
\temp_reg[0][1]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \temp_reg[0][1]_i_6_n_0\,
      I1 => \temp_reg[0][1]_i_7_n_0\,
      O => \mem[0]__0\(1),
      S => i_reg(3)
    );
\temp_reg[0][1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][1]_i_8_n_0\,
      I1 => \temp[0][1]_i_9_n_0\,
      O => \temp_reg[0][1]_i_4_n_0\,
      S => j_reg(2)
    );
\temp_reg[0][1]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][1]_i_10_n_0\,
      I1 => \temp[0][1]_i_11_n_0\,
      O => \temp_reg[0][1]_i_5_n_0\,
      S => j_reg(2)
    );
\temp_reg[0][1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][1]_i_12_n_0\,
      I1 => \temp[0][1]_i_13_n_0\,
      O => \temp_reg[0][1]_i_6_n_0\,
      S => i_reg(2)
    );
\temp_reg[0][1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][1]_i_14_n_0\,
      I1 => \temp[0][1]_i_15_n_0\,
      O => \temp_reg[0][1]_i_7_n_0\,
      S => i_reg(2)
    );
\temp_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[0][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(2),
      Q => \temp_reg_n_0_[0][2]\
    );
\temp_reg[0][2]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \temp_reg[0][2]_i_4_n_0\,
      I1 => \temp_reg[0][2]_i_5_n_0\,
      O => \temp_reg[0][2]_i_2_n_0\,
      S => j_reg(3)
    );
\temp_reg[0][2]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \temp_reg[0][2]_i_6_n_0\,
      I1 => \temp_reg[0][2]_i_7_n_0\,
      O => \mem[0]__0\(2),
      S => i_reg(3)
    );
\temp_reg[0][2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][2]_i_8_n_0\,
      I1 => \temp[0][2]_i_9_n_0\,
      O => \temp_reg[0][2]_i_4_n_0\,
      S => j_reg(2)
    );
\temp_reg[0][2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][2]_i_10_n_0\,
      I1 => \temp[0][2]_i_11_n_0\,
      O => \temp_reg[0][2]_i_5_n_0\,
      S => j_reg(2)
    );
\temp_reg[0][2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][2]_i_12_n_0\,
      I1 => \temp[0][2]_i_13_n_0\,
      O => \temp_reg[0][2]_i_6_n_0\,
      S => i_reg(2)
    );
\temp_reg[0][2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][2]_i_14_n_0\,
      I1 => \temp[0][2]_i_15_n_0\,
      O => \temp_reg[0][2]_i_7_n_0\,
      S => i_reg(2)
    );
\temp_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[0][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(3),
      Q => \temp_reg_n_0_[0][3]\
    );
\temp_reg[0][3]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[0][3]_i_24_n_0\,
      CO(3) => \temp_reg[0][3]_i_14_n_0\,
      CO(2 downto 0) => \NLW_temp_reg[0][3]_i_14_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_temp_reg[0][3]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3) => \temp[0][3]_i_25_n_0\,
      S(2) => \temp[0][3]_i_26_n_0\,
      S(1) => \temp[0][3]_i_27_n_0\,
      S(0) => \temp[0][3]_i_28_n_0\
    );
\temp_reg[0][3]_i_18\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][3]_i_29_n_0\,
      I1 => \temp[0][3]_i_30_n_0\,
      O => \temp_reg[0][3]_i_18_n_0\,
      S => i_reg(2)
    );
\temp_reg[0][3]_i_19\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][3]_i_31_n_0\,
      I1 => \temp[0][3]_i_32_n_0\,
      O => \temp_reg[0][3]_i_19_n_0\,
      S => i_reg(2)
    );
\temp_reg[0][3]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \temp_reg[0][3]_i_24_n_0\,
      CO(2 downto 0) => \NLW_temp_reg[0][3]_i_24_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_temp_reg[0][3]_i_24_O_UNCONNECTED\(3 downto 0),
      S(3) => \temp[0][3]_i_33_n_0\,
      S(2) => \temp[0][3]_i_34_n_0\,
      S(1) => \temp[0][3]_i_35_n_0\,
      S(0) => \temp[0][3]_i_36_n_0\
    );
\temp_reg[0][3]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \temp_reg[0][3]_i_8_n_0\,
      I1 => \temp_reg[0][3]_i_9_n_0\,
      O => \temp_reg[0][3]_i_4_n_0\,
      S => j_reg(3)
    );
\temp_reg[0][3]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_temp_reg[0][3]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \temp_reg[0][3]_i_5_n_2\,
      CO(0) => \NLW_temp_reg[0][3]_i_5_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => \temp[0][3]_i_10_n_0\,
      DI(0) => \temp[0][3]_i_11_n_0\,
      O(3 downto 0) => \NLW_temp_reg[0][3]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => '0',
      S(1) => \temp[0][3]_i_12_n_0\,
      S(0) => \temp[0][3]_i_13_n_0\
    );
\temp_reg[0][3]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \temp_reg[0][3]_i_14_n_0\,
      CO(3) => \NLW_temp_reg[0][3]_i_6_CO_UNCONNECTED\(3),
      CO(2) => \temp_reg[0][3]_i_6_n_1\,
      CO(1 downto 0) => \NLW_temp_reg[0][3]_i_6_CO_UNCONNECTED\(1 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_temp_reg[0][3]_i_6_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \temp[0][3]_i_15_n_0\,
      S(1) => \temp[0][3]_i_16_n_0\,
      S(0) => \temp[0][3]_i_17_n_0\
    );
\temp_reg[0][3]_i_7\: unisim.vcomponents.MUXF8
     port map (
      I0 => \temp_reg[0][3]_i_18_n_0\,
      I1 => \temp_reg[0][3]_i_19_n_0\,
      O => \mem[0]__0\(3),
      S => i_reg(3)
    );
\temp_reg[0][3]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][3]_i_20_n_0\,
      I1 => \temp[0][3]_i_21_n_0\,
      O => \temp_reg[0][3]_i_8_n_0\,
      S => j_reg(2)
    );
\temp_reg[0][3]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \temp[0][3]_i_22_n_0\,
      I1 => \temp[0][3]_i_23_n_0\,
      O => \temp_reg[0][3]_i_9_n_0\,
      S => j_reg(2)
    );
\temp_reg[10][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[10][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(0),
      Q => \temp_reg_n_0_[10][0]\
    );
\temp_reg[10][1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[10][3]_i_1_n_0\,
      D => \temp[15]0_in\(1),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[10][1]\
    );
\temp_reg[10][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[10][3]_i_1_n_0\,
      D => \temp[15]0_in\(2),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[10][2]\
    );
\temp_reg[10][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[10][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(3),
      Q => \temp_reg_n_0_[10][3]\
    );
\temp_reg[11][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[11][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(0),
      Q => \temp_reg_n_0_[11][0]\
    );
\temp_reg[11][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[11][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(1),
      Q => \temp_reg_n_0_[11][1]\
    );
\temp_reg[11][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[11][3]_i_1_n_0\,
      D => \temp[15]0_in\(2),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[11][2]\
    );
\temp_reg[11][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[11][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(3),
      Q => \temp_reg_n_0_[11][3]\
    );
\temp_reg[12][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[12][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(0),
      Q => \temp_reg_n_0_[12][0]\
    );
\temp_reg[12][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[12][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(1),
      Q => \temp_reg_n_0_[12][1]\
    );
\temp_reg[12][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[12][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(2),
      Q => \temp_reg_n_0_[12][2]\
    );
\temp_reg[12][3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[12][3]_i_1_n_0\,
      D => \temp[15]0_in\(3),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[12][3]\
    );
\temp_reg[13][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[13][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(0),
      Q => \temp_reg_n_0_[13][0]\
    );
\temp_reg[13][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[13][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(1),
      Q => \temp_reg_n_0_[13][1]\
    );
\temp_reg[13][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[13][3]_i_1_n_0\,
      D => \temp[15]0_in\(2),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[13][2]\
    );
\temp_reg[13][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[13][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(3),
      Q => \temp_reg_n_0_[13][3]\
    );
\temp_reg[14][0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[14][3]_i_1_n_0\,
      D => \temp[15]0_in\(0),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[14][0]\
    );
\temp_reg[14][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[14][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(1),
      Q => \temp_reg_n_0_[14][1]\
    );
\temp_reg[14][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[14][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(2),
      Q => \temp_reg_n_0_[14][2]\
    );
\temp_reg[14][3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[14][3]_i_1_n_0\,
      D => \temp[15]0_in\(3),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[14][3]\
    );
\temp_reg[15][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[15][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(0),
      Q => \temp_reg_n_0_[15][0]\
    );
\temp_reg[15][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[15][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(1),
      Q => \temp_reg_n_0_[15][1]\
    );
\temp_reg[15][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[15][3]_i_1_n_0\,
      D => \temp[15]0_in\(2),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[15][2]\
    );
\temp_reg[15][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[15][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(3),
      Q => \temp_reg_n_0_[15][3]\
    );
\temp_reg[1][0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[1][3]_i_1_n_0\,
      D => \temp[15]0_in\(0),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[1][0]\
    );
\temp_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[1][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(1),
      Q => \temp_reg_n_0_[1][1]\
    );
\temp_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[1][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(2),
      Q => \temp_reg_n_0_[1][2]\
    );
\temp_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[1][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(3),
      Q => \temp_reg_n_0_[1][3]\
    );
\temp_reg[2][0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[2][3]_i_1_n_0\,
      D => \temp[15]0_in\(0),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[2][0]\
    );
\temp_reg[2][1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[2][3]_i_1_n_0\,
      D => \temp[15]0_in\(1),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[2][1]\
    );
\temp_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[2][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(2),
      Q => \temp_reg_n_0_[2][2]\
    );
\temp_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[2][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(3),
      Q => \temp_reg_n_0_[2][3]\
    );
\temp_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[3][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(0),
      Q => \temp_reg_n_0_[3][0]\
    );
\temp_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[3][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(1),
      Q => \temp_reg_n_0_[3][1]\
    );
\temp_reg[3][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[3][3]_i_1_n_0\,
      D => \temp[15]0_in\(2),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[3][2]\
    );
\temp_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[3][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(3),
      Q => \temp_reg_n_0_[3][3]\
    );
\temp_reg[4][0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[4][3]_i_1_n_0\,
      D => \temp[15]0_in\(0),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[4][0]\
    );
\temp_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[4][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(1),
      Q => \temp_reg_n_0_[4][1]\
    );
\temp_reg[4][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[4][3]_i_1_n_0\,
      D => \temp[15]0_in\(2),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[4][2]\
    );
\temp_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[4][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(3),
      Q => \temp_reg_n_0_[4][3]\
    );
\temp_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[5][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(0),
      Q => \temp_reg_n_0_[5][0]\
    );
\temp_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[5][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(1),
      Q => \temp_reg_n_0_[5][1]\
    );
\temp_reg[5][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[5][3]_i_1_n_0\,
      D => \temp[15]0_in\(2),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[5][2]\
    );
\temp_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[5][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(3),
      Q => \temp_reg_n_0_[5][3]\
    );
\temp_reg[6][0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[6][3]_i_1_n_0\,
      D => \temp[15]0_in\(0),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[6][0]\
    );
\temp_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[6][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(1),
      Q => \temp_reg_n_0_[6][1]\
    );
\temp_reg[6][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[6][3]_i_1_n_0\,
      D => \temp[15]0_in\(2),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[6][2]\
    );
\temp_reg[6][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[6][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(3),
      Q => \temp_reg_n_0_[6][3]\
    );
\temp_reg[7][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[7][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(0),
      Q => \temp_reg_n_0_[7][0]\
    );
\temp_reg[7][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[7][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(1),
      Q => \temp_reg_n_0_[7][1]\
    );
\temp_reg[7][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[7][3]_i_1_n_0\,
      D => \temp[15]0_in\(2),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[7][2]\
    );
\temp_reg[7][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[7][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(3),
      Q => \temp_reg_n_0_[7][3]\
    );
\temp_reg[8][0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[8][3]_i_1_n_0\,
      D => \temp[15]0_in\(0),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[8][0]\
    );
\temp_reg[8][1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[8][3]_i_1_n_0\,
      D => \temp[15]0_in\(1),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[8][1]\
    );
\temp_reg[8][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[8][3]_i_1_n_0\,
      D => \temp[15]0_in\(2),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[8][2]\
    );
\temp_reg[8][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[8][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(3),
      Q => \temp_reg_n_0_[8][3]\
    );
\temp_reg[9][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[9][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(0),
      Q => \temp_reg_n_0_[9][0]\
    );
\temp_reg[9][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[9][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(1),
      Q => \temp_reg_n_0_[9][1]\
    );
\temp_reg[9][2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[9][3]_i_1_n_0\,
      D => \temp[15]0_in\(2),
      PRE => reset_IBUF,
      Q => \temp_reg_n_0_[9][2]\
    );
\temp_reg[9][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \temp[9][3]_i_1_n_0\,
      CLR => reset_IBUF,
      D => \temp[15]0_in\(3),
      Q => \temp_reg_n_0_[9][3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Interface is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    start : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Interface : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Interface : entity is "615c7ce7";
end Interface;

architecture STRUCTURE of Interface is
  signal \FSM_sequential_stringState[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState[2]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState[2]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState[2]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState[2]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState[2]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState[2]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState_reg[2]_i_4_n_1\ : STD_LOGIC;
  signal \FSM_sequential_uartState_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_uartState_reg[2]_i_9_n_0\ : STD_LOGIC;
  signal ascii_conversion_n_0 : STD_LOGIC;
  signal ascii_conversion_n_1 : STD_LOGIC;
  signal ascii_conversion_n_2 : STD_LOGIC;
  signal ascii_conversion_n_3 : STD_LOGIC;
  signal ascii_conversion_n_69 : STD_LOGIC;
  signal bin : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal \completion[0]_i_1_n_0\ : STD_LOGIC;
  signal \completion_reg_n_0_[0]\ : STD_LOGIC;
  signal done_load_i_1_n_0 : STD_LOGIC;
  signal done_load_reg_n_0 : STD_LOGIC;
  signal done_sort : STD_LOGIC;
  signal \out_string_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \out_string_count[4]_i_3_n_0\ : STD_LOGIC;
  signal \out_string_count_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p2s_next : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal request_out_reg_n_0 : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal reset_cntr0 : STD_LOGIC;
  signal \reset_cntr[0]_i_3_n_0\ : STD_LOGIC;
  signal \reset_cntr[0]_i_4_n_0\ : STD_LOGIC;
  signal \reset_cntr[0]_i_5_n_0\ : STD_LOGIC;
  signal \reset_cntr[0]_i_9_n_0\ : STD_LOGIC;
  signal reset_cntr_reg : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \reset_cntr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \reset_cntr_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \reset_cntr_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \reset_cntr_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \reset_cntr_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \reset_cntr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \reset_cntr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \reset_cntr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \reset_cntr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \reset_cntr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \reset_cntr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \reset_cntr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \reset_cntr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reset_cntr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \reset_cntr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \reset_cntr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \reset_cntr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \reset_cntr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \reset_cntr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \reset_cntr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \reset_cntr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \reset_cntr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \sendStr[0]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \sendStr[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \sendStr[0][4]_i_2_n_0\ : STD_LOGIC;
  signal \sendStr[20][0]_i_1_n_0\ : STD_LOGIC;
  signal \sendStr_reg[0]__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \sendStr_reg[10]__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \sendStr_reg[11]__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \sendStr_reg[12]__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \sendStr_reg[13]__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \sendStr_reg[14]__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \sendStr_reg[15]__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \sendStr_reg[1]__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \sendStr_reg[20]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \sendStr_reg[2]__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \sendStr_reg[3]__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \sendStr_reg[4]__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \sendStr_reg[5]__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \sendStr_reg[6]__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \sendStr_reg[7]__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \sendStr_reg[8]__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \sendStr_reg[9]__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal sorting_algorithm_n_4 : STD_LOGIC;
  signal start_IBUF : STD_LOGIC;
  signal start_ascii_conv_reg_n_0 : STD_LOGIC;
  signal state_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal strEnd : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \strEnd[3]_i_1_n_0\ : STD_LOGIC;
  signal strIndex0 : STD_LOGIC;
  signal \strIndex[0]_i_2_n_0\ : STD_LOGIC;
  signal \strIndex[0]_i_7_n_0\ : STD_LOGIC;
  signal strIndex_reg : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \strIndex_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \strIndex_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \strIndex_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \strIndex_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \strIndex_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \strIndex_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \strIndex_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \strIndex_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \strIndex_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \strIndex_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \strIndex_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \strIndex_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \strIndex_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \strIndex_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \strIndex_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \strIndex_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \strIndex_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \strIndex_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \strIndex_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \strIndex_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \strIndex_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \strIndex_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \strIndex_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \strIndex_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \strIndex_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \strIndex_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \strIndex_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \strIndex_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \strIndex_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \strIndex_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \strIndex_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \strIndex_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \strIndex_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \strIndex_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \strIndex_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \strIndex_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \strIndex_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \strIndex_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal stringState : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of stringState : signal is "yes";
  signal \tempStr[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr[0][4]_i_2_n_0\ : STD_LOGIC;
  signal \tempStr[0][4]_i_3_n_0\ : STD_LOGIC;
  signal \tempStr[10][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr[11][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr[12][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr[13][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr[14][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr[15][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr[15][4]_i_2_n_0\ : STD_LOGIC;
  signal \tempStr[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr[2][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr[3][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr[4][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr[5][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr[6][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr[7][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr[8][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr[8][4]_i_2_n_0\ : STD_LOGIC;
  signal \tempStr[9][4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStr_reg[0]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg[10]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg[11]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg[12]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg[13]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg[14]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg[15]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg[1]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg[2]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg[3]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg[4]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg[5]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg[6]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg[7]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg[8]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg[9]__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tempStr_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[10][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[10][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[10][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[10][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[10][4]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[11][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[11][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[11][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[11][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[11][4]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[12][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[12][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[12][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[12][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[12][4]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[13][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[13][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[13][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[13][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[13][4]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[14][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[14][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[14][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[14][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[14][4]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[15][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[15][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[15][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[15][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[15][4]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[5][4]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[6][4]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[7][4]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[8][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[8][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[8][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[8][4]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[9][0]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[9][1]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[9][2]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[9][3]\ : STD_LOGIC;
  signal \tempStr_reg_n_0_[9][4]\ : STD_LOGIC;
  signal tx_OBUF : STD_LOGIC;
  signal uartData : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \uartData[0]_i_5_n_0\ : STD_LOGIC;
  signal \uartData[0]_i_6_n_0\ : STD_LOGIC;
  signal \uartData[0]_i_7_n_0\ : STD_LOGIC;
  signal \uartData[0]_i_8_n_0\ : STD_LOGIC;
  signal \uartData[1]_i_2_n_0\ : STD_LOGIC;
  signal \uartData[1]_i_5_n_0\ : STD_LOGIC;
  signal \uartData[1]_i_6_n_0\ : STD_LOGIC;
  signal \uartData[1]_i_7_n_0\ : STD_LOGIC;
  signal \uartData[1]_i_8_n_0\ : STD_LOGIC;
  signal \uartData[2]_i_2_n_0\ : STD_LOGIC;
  signal \uartData[2]_i_6_n_0\ : STD_LOGIC;
  signal \uartData[2]_i_7_n_0\ : STD_LOGIC;
  signal \uartData[2]_i_8_n_0\ : STD_LOGIC;
  signal \uartData[2]_i_9_n_0\ : STD_LOGIC;
  signal \uartData[3]_i_2_n_0\ : STD_LOGIC;
  signal \uartData[3]_i_5_n_0\ : STD_LOGIC;
  signal \uartData[3]_i_6_n_0\ : STD_LOGIC;
  signal \uartData[3]_i_7_n_0\ : STD_LOGIC;
  signal \uartData[3]_i_8_n_0\ : STD_LOGIC;
  signal \uartData[4]_i_2_n_0\ : STD_LOGIC;
  signal \uartData[4]_i_3_n_0\ : STD_LOGIC;
  signal \uartData[4]_i_4_n_0\ : STD_LOGIC;
  signal \uartData[4]_i_5_n_0\ : STD_LOGIC;
  signal \uartData[5]_i_2_n_0\ : STD_LOGIC;
  signal \uartData[5]_i_3_n_0\ : STD_LOGIC;
  signal \uartData[5]_i_4_n_0\ : STD_LOGIC;
  signal \uartData[5]_i_5_n_0\ : STD_LOGIC;
  signal \uartData[5]_i_6_n_0\ : STD_LOGIC;
  signal \uartData[5]_i_7_n_0\ : STD_LOGIC;
  signal \uartData[6]_i_3_n_0\ : STD_LOGIC;
  signal \uartData[6]_i_4_n_0\ : STD_LOGIC;
  signal \uartData[6]_i_5_n_0\ : STD_LOGIC;
  signal \uartData_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \uartData_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \uartData_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \uartData_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \uartData_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \uartData_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \uartData_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \uartData_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \uartData_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \uartData_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal uartSend : STD_LOGIC;
  signal uartSend_reg_n_0 : STD_LOGIC;
  signal uartState : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of uartState : signal is "yes";
  signal uart_n_1 : STD_LOGIC;
  signal uart_n_2 : STD_LOGIC;
  signal uart_n_3 : STD_LOGIC;
  signal \NLW_FSM_sequential_uartState_reg[2]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_uartState_reg[2]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_uartState_reg[2]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_FSM_sequential_uartState_reg[2]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_FSM_sequential_uartState_reg[2]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_FSM_sequential_uartState_reg[2]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ascii_conversion_in0_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_reset_cntr_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_reset_cntr_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_reset_cntr_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_reset_cntr_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_reset_cntr_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_reset_cntr_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_strIndex_reg[0]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_strIndex_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_strIndex_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_strIndex_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_strIndex_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_strIndex_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_strIndex_reg[28]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_strIndex_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_strIndex_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_uart_in0_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_stringState_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_stringState_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_stringState_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_uartState_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_uartState_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_uartState_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \out_string_count[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \out_string_count[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \out_string_count[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \out_string_count[4]_i_2\ : label is "soft_lutpair19";
begin
\FSM_sequential_stringState[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \out_string_count_reg__0\(2),
      I1 => \out_string_count_reg__0\(4),
      I2 => stringState(0),
      I3 => \out_string_count_reg__0\(3),
      I4 => \out_string_count_reg__0\(1),
      I5 => \out_string_count_reg__0\(0),
      O => \FSM_sequential_stringState[2]_i_2_n_0\
    );
\FSM_sequential_stringState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ascii_conversion_n_0,
      Q => stringState(0),
      R => reset_IBUF
    );
\FSM_sequential_stringState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ascii_conversion_n_1,
      Q => stringState(1),
      R => reset_IBUF
    );
\FSM_sequential_stringState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ascii_conversion_n_2,
      Q => stringState(2),
      R => reset_IBUF
    );
\FSM_sequential_uartState[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0455"
    )
        port map (
      I0 => uartState(0),
      I1 => \FSM_sequential_uartState_reg[2]_i_4_n_1\,
      I2 => uartState(1),
      I3 => uartState(2),
      O => \FSM_sequential_uartState[0]_i_2_n_0\
    );
\FSM_sequential_uartState[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6766"
    )
        port map (
      I0 => uartState(1),
      I1 => uartState(0),
      I2 => \FSM_sequential_uartState_reg[2]_i_4_n_1\,
      I3 => uartState(2),
      O => \FSM_sequential_uartState[1]_i_2_n_0\
    );
\FSM_sequential_uartState[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(22),
      I1 => strIndex_reg(21),
      I2 => strIndex_reg(23),
      O => \FSM_sequential_uartState[2]_i_10_n_0\
    );
\FSM_sequential_uartState[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(19),
      I1 => strIndex_reg(18),
      I2 => strIndex_reg(20),
      O => \FSM_sequential_uartState[2]_i_11_n_0\
    );
\FSM_sequential_uartState[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(16),
      I1 => strIndex_reg(15),
      I2 => strIndex_reg(17),
      O => \FSM_sequential_uartState[2]_i_12_n_0\
    );
\FSM_sequential_uartState[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(13),
      I1 => strIndex_reg(12),
      I2 => strIndex_reg(14),
      O => \FSM_sequential_uartState[2]_i_13_n_0\
    );
\FSM_sequential_uartState[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(10),
      I1 => strIndex_reg(9),
      I2 => strIndex_reg(11),
      O => \FSM_sequential_uartState[2]_i_14_n_0\
    );
\FSM_sequential_uartState[2]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(7),
      I1 => strIndex_reg(6),
      I2 => strIndex_reg(8),
      O => \FSM_sequential_uartState[2]_i_15_n_0\
    );
\FSM_sequential_uartState[2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => strIndex_reg(5),
      I1 => strIndex_reg(4),
      I2 => strIndex_reg(3),
      I3 => strEnd(3),
      O => \FSM_sequential_uartState[2]_i_16_n_0\
    );
\FSM_sequential_uartState[2]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2001"
    )
        port map (
      I0 => strIndex_reg(1),
      I1 => strIndex_reg(2),
      I2 => strIndex_reg(0),
      I3 => strEnd(3),
      O => \FSM_sequential_uartState[2]_i_17_n_0\
    );
\FSM_sequential_uartState[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0CE0"
    )
        port map (
      I0 => \FSM_sequential_uartState_reg[2]_i_4_n_1\,
      I1 => uartState(0),
      I2 => uartState(2),
      I3 => uartState(1),
      O => \FSM_sequential_uartState[2]_i_2_n_0\
    );
\FSM_sequential_uartState[2]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => strIndex_reg(30),
      O => \FSM_sequential_uartState[2]_i_6_n_0\
    );
\FSM_sequential_uartState[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(28),
      I1 => strIndex_reg(27),
      I2 => strIndex_reg(29),
      O => \FSM_sequential_uartState[2]_i_7_n_0\
    );
\FSM_sequential_uartState[2]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => strIndex_reg(25),
      I1 => strIndex_reg(24),
      I2 => strIndex_reg(26),
      O => \FSM_sequential_uartState[2]_i_8_n_0\
    );
\FSM_sequential_uartState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => uart_n_3,
      Q => uartState(0),
      R => reset_IBUF
    );
\FSM_sequential_uartState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => uart_n_2,
      Q => uartState(1),
      R => reset_IBUF
    );
\FSM_sequential_uartState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => uart_n_1,
      Q => uartState(2),
      R => reset_IBUF
    );
\FSM_sequential_uartState_reg[2]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_sequential_uartState_reg[2]_i_5_n_0\,
      CO(3) => \NLW_FSM_sequential_uartState_reg[2]_i_4_CO_UNCONNECTED\(3),
      CO(2) => \FSM_sequential_uartState_reg[2]_i_4_n_1\,
      CO(1 downto 0) => \NLW_FSM_sequential_uartState_reg[2]_i_4_CO_UNCONNECTED\(1 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_sequential_uartState_reg[2]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \FSM_sequential_uartState[2]_i_6_n_0\,
      S(1) => \FSM_sequential_uartState[2]_i_7_n_0\,
      S(0) => \FSM_sequential_uartState[2]_i_8_n_0\
    );
\FSM_sequential_uartState_reg[2]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \FSM_sequential_uartState_reg[2]_i_9_n_0\,
      CO(3) => \FSM_sequential_uartState_reg[2]_i_5_n_0\,
      CO(2 downto 0) => \NLW_FSM_sequential_uartState_reg[2]_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_sequential_uartState_reg[2]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_uartState[2]_i_10_n_0\,
      S(2) => \FSM_sequential_uartState[2]_i_11_n_0\,
      S(1) => \FSM_sequential_uartState[2]_i_12_n_0\,
      S(0) => \FSM_sequential_uartState[2]_i_13_n_0\
    );
\FSM_sequential_uartState_reg[2]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \FSM_sequential_uartState_reg[2]_i_9_n_0\,
      CO(2 downto 0) => \NLW_FSM_sequential_uartState_reg[2]_i_9_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_FSM_sequential_uartState_reg[2]_i_9_O_UNCONNECTED\(3 downto 0),
      S(3) => \FSM_sequential_uartState[2]_i_14_n_0\,
      S(2) => \FSM_sequential_uartState[2]_i_15_n_0\,
      S(1) => \FSM_sequential_uartState[2]_i_16_n_0\,
      S(0) => \FSM_sequential_uartState[2]_i_17_n_0\
    );
ascii_conversion: entity work.bin2bcd
     port map (
      D(3 downto 0) => \tempStr_reg[14]__0\(3 downto 0),
      E(0) => ascii_conversion_n_3,
      \FSM_sequential_stringState_reg[0]\ => ascii_conversion_n_0,
      \FSM_sequential_stringState_reg[1]\ => ascii_conversion_n_1,
      \FSM_sequential_stringState_reg[1]_0\ => \out_string_count[4]_i_3_n_0\,
      \FSM_sequential_stringState_reg[2]\ => ascii_conversion_n_2,
      Q(4 downto 0) => \out_string_count_reg__0\(4 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \completion_reg[0]\ => \completion_reg_n_0_[0]\,
      \dat_reg_reg[0]\(0) => p2s_next(0),
      done_sort => done_sort,
      in0(2 downto 0) => NLW_ascii_conversion_in0_UNCONNECTED(2 downto 0),
      \out\(2 downto 0) => stringState(2 downto 0),
      out_data(2 downto 0) => bin(3 downto 1),
      \out_string_count_reg[0]\ => \tempStr[15][4]_i_2_n_0\,
      \out_string_count_reg[2]\ => \FSM_sequential_stringState[2]_i_2_n_0\,
      \out_string_count_reg[3]\ => \tempStr[8][4]_i_2_n_0\,
      \out_string_count_reg[3]_0\ => \tempStr[0][4]_i_3_n_0\,
      reset_IBUF => reset_IBUF,
      start_ascii_conv_reg => ascii_conversion_n_69,
      start_ascii_conv_reg_0 => start_ascii_conv_reg_n_0,
      state_reg(0) => state_reg(0),
      \tempStr_reg[0][3]\(3 downto 0) => \tempStr_reg[0]__0\(3 downto 0),
      \tempStr_reg[10][3]\(3 downto 0) => \tempStr_reg[10]__0\(3 downto 0),
      \tempStr_reg[11][3]\(3 downto 0) => \tempStr_reg[11]__0\(3 downto 0),
      \tempStr_reg[12][3]\(3 downto 0) => \tempStr_reg[12]__0\(3 downto 0),
      \tempStr_reg[13][3]\(3 downto 0) => \tempStr_reg[13]__0\(3 downto 0),
      \tempStr_reg[15][3]\(3 downto 0) => \tempStr_reg[15]__0\(3 downto 0),
      \tempStr_reg[1][3]\(3 downto 0) => \tempStr_reg[1]__0\(3 downto 0),
      \tempStr_reg[2][3]\(3 downto 0) => \tempStr_reg[2]__0\(3 downto 0),
      \tempStr_reg[3][3]\(3 downto 0) => \tempStr_reg[3]__0\(3 downto 0),
      \tempStr_reg[4][3]\(3 downto 0) => \tempStr_reg[4]__0\(3 downto 0),
      \tempStr_reg[5][3]\(3 downto 0) => \tempStr_reg[5]__0\(3 downto 0),
      \tempStr_reg[6][3]\(3 downto 0) => \tempStr_reg[6]__0\(3 downto 0),
      \tempStr_reg[7][3]\(3 downto 0) => \tempStr_reg[7]__0\(3 downto 0),
      \tempStr_reg[8][3]\(3 downto 0) => \tempStr_reg[8]__0\(3 downto 0),
      \tempStr_reg[9][3]\(3 downto 0) => \tempStr_reg[9]__0\(3 downto 0)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\completion[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000ABAA"
    )
        port map (
      I0 => \completion_reg_n_0_[0]\,
      I1 => stringState(0),
      I2 => stringState(1),
      I3 => stringState(2),
      I4 => reset_IBUF,
      O => \completion[0]_i_1_n_0\
    );
\completion_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \completion[0]_i_1_n_0\,
      Q => \completion_reg_n_0_[0]\,
      R => '0'
    );
done_load_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000ABA8"
    )
        port map (
      I0 => done_load_reg_n_0,
      I1 => stringState(0),
      I2 => stringState(1),
      I3 => stringState(2),
      I4 => reset_IBUF,
      O => done_load_i_1_n_0
    );
done_load_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => done_load_i_1_n_0,
      Q => done_load_reg_n_0,
      R => '0'
    );
\out_string_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out_string_count_reg__0\(0),
      O => p_0_in(0)
    );
\out_string_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \out_string_count_reg__0\(0),
      I1 => \out_string_count_reg__0\(1),
      O => p_0_in(1)
    );
\out_string_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \out_string_count_reg__0\(2),
      I1 => \out_string_count_reg__0\(1),
      I2 => \out_string_count_reg__0\(0),
      O => p_0_in(2)
    );
\out_string_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \out_string_count_reg__0\(3),
      I1 => \out_string_count_reg__0\(1),
      I2 => \out_string_count_reg__0\(2),
      I3 => \out_string_count_reg__0\(0),
      O => p_0_in(3)
    );
\out_string_count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \out_string_count_reg__0\(4),
      I1 => \out_string_count_reg__0\(0),
      I2 => \out_string_count_reg__0\(2),
      I3 => \out_string_count_reg__0\(1),
      I4 => \out_string_count_reg__0\(3),
      O => \out_string_count[4]_i_2_n_0\
    );
\out_string_count[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => stringState(1),
      I1 => stringState(2),
      O => \out_string_count[4]_i_3_n_0\
    );
\out_string_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ascii_conversion_n_3,
      D => p_0_in(0),
      Q => \out_string_count_reg__0\(0),
      R => reset_IBUF
    );
\out_string_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ascii_conversion_n_3,
      D => p_0_in(1),
      Q => \out_string_count_reg__0\(1),
      R => reset_IBUF
    );
\out_string_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ascii_conversion_n_3,
      D => p_0_in(2),
      Q => \out_string_count_reg__0\(2),
      R => reset_IBUF
    );
\out_string_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ascii_conversion_n_3,
      D => p_0_in(3),
      Q => \out_string_count_reg__0\(3),
      R => reset_IBUF
    );
\out_string_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => ascii_conversion_n_3,
      D => \out_string_count[4]_i_2_n_0\,
      Q => \out_string_count_reg__0\(4),
      R => reset_IBUF
    );
request_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => sorting_algorithm_n_4,
      Q => request_out_reg_n_0,
      R => '0'
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
\reset_cntr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => \reset_cntr[0]_i_3_n_0\,
      I1 => \reset_cntr[0]_i_4_n_0\,
      I2 => \reset_cntr[0]_i_5_n_0\,
      I3 => uartState(0),
      I4 => uartState(2),
      I5 => uartState(1),
      O => reset_cntr0
    );
\reset_cntr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => reset_cntr_reg(10),
      I1 => reset_cntr_reg(11),
      I2 => reset_cntr_reg(8),
      I3 => reset_cntr_reg(14),
      I4 => reset_cntr_reg(6),
      I5 => reset_cntr_reg(5),
      O => \reset_cntr[0]_i_3_n_0\
    );
\reset_cntr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => reset_cntr_reg(4),
      I1 => reset_cntr_reg(17),
      I2 => reset_cntr_reg(2),
      I3 => reset_cntr_reg(9),
      I4 => reset_cntr_reg(1),
      I5 => reset_cntr_reg(3),
      O => \reset_cntr[0]_i_4_n_0\
    );
\reset_cntr[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => reset_cntr_reg(12),
      I1 => reset_cntr_reg(0),
      I2 => reset_cntr_reg(16),
      I3 => reset_cntr_reg(7),
      I4 => reset_cntr_reg(13),
      I5 => reset_cntr_reg(15),
      O => \reset_cntr[0]_i_5_n_0\
    );
\reset_cntr[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_cntr_reg(0),
      O => \reset_cntr[0]_i_9_n_0\
    );
\reset_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[0]_i_2_n_7\,
      Q => reset_cntr_reg(0),
      R => reset_cntr0
    );
\reset_cntr_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \reset_cntr_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_reset_cntr_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \reset_cntr_reg[0]_i_2_n_4\,
      O(2) => \reset_cntr_reg[0]_i_2_n_5\,
      O(1) => \reset_cntr_reg[0]_i_2_n_6\,
      O(0) => \reset_cntr_reg[0]_i_2_n_7\,
      S(3 downto 1) => reset_cntr_reg(3 downto 1),
      S(0) => \reset_cntr[0]_i_9_n_0\
    );
\reset_cntr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[8]_i_1_n_5\,
      Q => reset_cntr_reg(10),
      R => reset_cntr0
    );
\reset_cntr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[8]_i_1_n_4\,
      Q => reset_cntr_reg(11),
      R => reset_cntr0
    );
\reset_cntr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[12]_i_1_n_7\,
      Q => reset_cntr_reg(12),
      R => reset_cntr0
    );
\reset_cntr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reset_cntr_reg[8]_i_1_n_0\,
      CO(3) => \reset_cntr_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_reset_cntr_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \reset_cntr_reg[12]_i_1_n_4\,
      O(2) => \reset_cntr_reg[12]_i_1_n_5\,
      O(1) => \reset_cntr_reg[12]_i_1_n_6\,
      O(0) => \reset_cntr_reg[12]_i_1_n_7\,
      S(3 downto 0) => reset_cntr_reg(15 downto 12)
    );
\reset_cntr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[12]_i_1_n_6\,
      Q => reset_cntr_reg(13),
      R => reset_cntr0
    );
\reset_cntr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[12]_i_1_n_5\,
      Q => reset_cntr_reg(14),
      R => reset_cntr0
    );
\reset_cntr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[12]_i_1_n_4\,
      Q => reset_cntr_reg(15),
      R => reset_cntr0
    );
\reset_cntr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[16]_i_1_n_7\,
      Q => reset_cntr_reg(16),
      R => reset_cntr0
    );
\reset_cntr_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reset_cntr_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_reset_cntr_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 2) => \NLW_reset_cntr_reg[16]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \reset_cntr_reg[16]_i_1_n_6\,
      O(0) => \reset_cntr_reg[16]_i_1_n_7\,
      S(3) => '0',
      S(2) => '0',
      S(1 downto 0) => reset_cntr_reg(17 downto 16)
    );
\reset_cntr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[16]_i_1_n_6\,
      Q => reset_cntr_reg(17),
      R => reset_cntr0
    );
\reset_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[0]_i_2_n_6\,
      Q => reset_cntr_reg(1),
      R => reset_cntr0
    );
\reset_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[0]_i_2_n_5\,
      Q => reset_cntr_reg(2),
      R => reset_cntr0
    );
\reset_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[0]_i_2_n_4\,
      Q => reset_cntr_reg(3),
      R => reset_cntr0
    );
\reset_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[4]_i_1_n_7\,
      Q => reset_cntr_reg(4),
      R => reset_cntr0
    );
\reset_cntr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reset_cntr_reg[0]_i_2_n_0\,
      CO(3) => \reset_cntr_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_reset_cntr_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \reset_cntr_reg[4]_i_1_n_4\,
      O(2) => \reset_cntr_reg[4]_i_1_n_5\,
      O(1) => \reset_cntr_reg[4]_i_1_n_6\,
      O(0) => \reset_cntr_reg[4]_i_1_n_7\,
      S(3 downto 0) => reset_cntr_reg(7 downto 4)
    );
\reset_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[4]_i_1_n_6\,
      Q => reset_cntr_reg(5),
      R => reset_cntr0
    );
\reset_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[4]_i_1_n_5\,
      Q => reset_cntr_reg(6),
      R => reset_cntr0
    );
\reset_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[4]_i_1_n_4\,
      Q => reset_cntr_reg(7),
      R => reset_cntr0
    );
\reset_cntr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[8]_i_1_n_7\,
      Q => reset_cntr_reg(8),
      R => reset_cntr0
    );
\reset_cntr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reset_cntr_reg[4]_i_1_n_0\,
      CO(3) => \reset_cntr_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_reset_cntr_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \reset_cntr_reg[8]_i_1_n_4\,
      O(2) => \reset_cntr_reg[8]_i_1_n_5\,
      O(1) => \reset_cntr_reg[8]_i_1_n_6\,
      O(0) => \reset_cntr_reg[8]_i_1_n_7\,
      S(3 downto 0) => reset_cntr_reg(11 downto 8)
    );
\reset_cntr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \reset_cntr_reg[8]_i_1_n_6\,
      Q => reset_cntr_reg(9),
      R => reset_cntr0
    );
\sendStr[0][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => uartState(0),
      I1 => uartState(2),
      I2 => uartState(1),
      O => \sendStr[0][4]_i_1_n_0\
    );
\sendStr[0][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => uartState(0),
      I1 => uartState(2),
      I2 => uartState(1),
      O => \sendStr[0][4]_i_2_n_0\
    );
\sendStr[20][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \sendStr_reg[20]\(0),
      I1 => uartState(1),
      I2 => uartState(2),
      I3 => uartState(0),
      O => \sendStr[20][0]_i_1_n_0\
    );
\sendStr_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[0][0]\,
      Q => \sendStr_reg[0]__0\(0),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[0][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[0][1]\,
      Q => \sendStr_reg[0]__0\(1),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[0][2]\,
      Q => \sendStr_reg[0]__0\(2),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[0][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[0][3]\,
      Q => \sendStr_reg[0]__0\(3),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[0][4]\,
      Q => \sendStr_reg[0]__0\(4),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[10][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[10][0]\,
      Q => \sendStr_reg[10]__0\(0),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[10][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[10][1]\,
      Q => \sendStr_reg[10]__0\(1),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[10][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[10][2]\,
      Q => \sendStr_reg[10]__0\(2),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[10][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[10][3]\,
      Q => \sendStr_reg[10]__0\(3),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[10][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[10][4]\,
      Q => \sendStr_reg[10]__0\(4),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[10][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[10][4]\,
      Q => \sendStr_reg[10]__0\(5),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[11][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[11][0]\,
      Q => \sendStr_reg[11]__0\(0),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[11][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[11][1]\,
      Q => \sendStr_reg[11]__0\(1),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[11][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[11][2]\,
      Q => \sendStr_reg[11]__0\(2),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[11][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[11][3]\,
      Q => \sendStr_reg[11]__0\(3),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[11][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[11][4]\,
      Q => \sendStr_reg[11]__0\(4),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[12][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[12][0]\,
      Q => \sendStr_reg[12]__0\(0),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[12][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[12][1]\,
      Q => \sendStr_reg[12]__0\(1),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[12][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[12][2]\,
      Q => \sendStr_reg[12]__0\(2),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[12][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[12][3]\,
      Q => \sendStr_reg[12]__0\(3),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[12][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[12][4]\,
      Q => \sendStr_reg[12]__0\(4),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[13][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[13][0]\,
      Q => \sendStr_reg[13]__0\(0),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[13][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[13][1]\,
      Q => \sendStr_reg[13]__0\(1),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[13][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[13][2]\,
      Q => \sendStr_reg[13]__0\(2),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[13][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[13][3]\,
      Q => \sendStr_reg[13]__0\(3),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[13][4]\,
      Q => \sendStr_reg[13]__0\(4),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[13][5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[13][4]\,
      Q => \sendStr_reg[13]__0\(5),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[14][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[14][0]\,
      Q => \sendStr_reg[14]__0\(0),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[14][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[14][1]\,
      Q => \sendStr_reg[14]__0\(1),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[14][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[14][2]\,
      Q => \sendStr_reg[14]__0\(2),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[14][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[14][3]\,
      Q => \sendStr_reg[14]__0\(3),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[14][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[14][4]\,
      Q => \sendStr_reg[14]__0\(4),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[14][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[14][4]\,
      Q => \sendStr_reg[14]__0\(5),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[15][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[15][0]\,
      Q => \sendStr_reg[15]__0\(0),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[15][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[15][1]\,
      Q => \sendStr_reg[15]__0\(1),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[15][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[15][2]\,
      Q => \sendStr_reg[15]__0\(2),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[15][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[15][3]\,
      Q => \sendStr_reg[15]__0\(3),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[15][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[15][4]\,
      Q => \sendStr_reg[15]__0\(4),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[1][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[1][0]\,
      Q => \sendStr_reg[1]__0\(0),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[1][1]\,
      Q => \sendStr_reg[1]__0\(1),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[1][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[1][2]\,
      Q => \sendStr_reg[1]__0\(2),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[1][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[1][3]\,
      Q => \sendStr_reg[1]__0\(3),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[1][4]\,
      Q => \sendStr_reg[1]__0\(4),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[20][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \sendStr[20][0]_i_1_n_0\,
      Q => \sendStr_reg[20]\(0),
      R => '0'
    );
\sendStr_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[2][0]\,
      Q => \sendStr_reg[2]__0\(0),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[2][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[2][1]\,
      Q => \sendStr_reg[2]__0\(1),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[2][2]\,
      Q => \sendStr_reg[2]__0\(2),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[2][3]\,
      Q => \sendStr_reg[2]__0\(3),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[2][4]\,
      Q => \sendStr_reg[2]__0\(4),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[2][6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => '0',
      Q => \sendStr_reg[2]__0\(6),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[3][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[3][0]\,
      Q => \sendStr_reg[3]__0\(0),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[3][1]\,
      Q => \sendStr_reg[3]__0\(1),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[3][2]\,
      Q => \sendStr_reg[3]__0\(2),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[3][3]\,
      Q => \sendStr_reg[3]__0\(3),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[3][4]\,
      Q => \sendStr_reg[3]__0\(4),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[4][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[4][0]\,
      Q => \sendStr_reg[4]__0\(0),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[4][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[4][1]\,
      Q => \sendStr_reg[4]__0\(1),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[4][2]\,
      Q => \sendStr_reg[4]__0\(2),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[4][3]\,
      Q => \sendStr_reg[4]__0\(3),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[4][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[4][4]\,
      Q => \sendStr_reg[4]__0\(4),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[4][4]\,
      Q => \sendStr_reg[4]__0\(5),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[5][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[5][0]\,
      Q => \sendStr_reg[5]__0\(0),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[5][1]\,
      Q => \sendStr_reg[5]__0\(1),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[5][2]\,
      Q => \sendStr_reg[5]__0\(2),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[5][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[5][3]\,
      Q => \sendStr_reg[5]__0\(3),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[5][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[5][4]\,
      Q => \sendStr_reg[5]__0\(4),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[5][4]\,
      Q => \sendStr_reg[5]__0\(5),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[6][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[6][0]\,
      Q => \sendStr_reg[6]__0\(0),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[6][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[6][1]\,
      Q => \sendStr_reg[6]__0\(1),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[6][2]\,
      Q => \sendStr_reg[6]__0\(2),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[6][3]\,
      Q => \sendStr_reg[6]__0\(3),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[6][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[6][4]\,
      Q => \sendStr_reg[6]__0\(4),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[6][4]\,
      Q => \sendStr_reg[6]__0\(5),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[7][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[7][0]\,
      Q => \sendStr_reg[7]__0\(0),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[7][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[7][1]\,
      Q => \sendStr_reg[7]__0\(1),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[7][2]\,
      Q => \sendStr_reg[7]__0\(2),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[7][3]\,
      Q => \sendStr_reg[7]__0\(3),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[7][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[7][4]\,
      Q => \sendStr_reg[7]__0\(4),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[8][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[8][0]\,
      Q => \sendStr_reg[8]__0\(0),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[8][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[8][1]\,
      Q => \sendStr_reg[8]__0\(1),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[8][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[8][2]\,
      Q => \sendStr_reg[8]__0\(2),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[8][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[8][3]\,
      Q => \sendStr_reg[8]__0\(3),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[8][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[8][4]\,
      Q => \sendStr_reg[8]__0\(4),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[8][5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[8][4]\,
      Q => \sendStr_reg[8]__0\(5),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[9][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[9][0]\,
      Q => \sendStr_reg[9]__0\(0),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[9][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[9][1]\,
      Q => \sendStr_reg[9]__0\(1),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[9][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[9][2]\,
      Q => \sendStr_reg[9]__0\(2),
      S => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[9][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[9][3]\,
      Q => \sendStr_reg[9]__0\(3),
      R => \sendStr[0][4]_i_1_n_0\
    );
\sendStr_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \sendStr[0][4]_i_2_n_0\,
      D => \tempStr_reg_n_0_[9][4]\,
      Q => \sendStr_reg[9]__0\(4),
      R => \sendStr[0][4]_i_1_n_0\
    );
sorting_algorithm: entity work.sorting_algo
     port map (
      Q(2 downto 0) => bin(3 downto 1),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \completion_reg[0]\ => \completion_reg_n_0_[0]\,
      done_sort => done_sort,
      \out\(2 downto 0) => stringState(2 downto 0),
      \p2s_reg_reg[0]\(0) => p2s_next(0),
      request_out_reg => sorting_algorithm_n_4,
      request_out_reg_0 => request_out_reg_n_0,
      reset_IBUF => reset_IBUF,
      start_IBUF => start_IBUF,
      state_reg(0) => state_reg(0)
    );
start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => start,
      O => start_IBUF
    );
start_ascii_conv_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ascii_conversion_n_69,
      Q => start_ascii_conv_reg_n_0,
      R => '0'
    );
\strEnd[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2BA"
    )
        port map (
      I0 => strEnd(3),
      I1 => uartState(1),
      I2 => uartState(0),
      I3 => uartState(2),
      O => \strEnd[3]_i_1_n_0\
    );
\strEnd_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \strEnd[3]_i_1_n_0\,
      Q => strEnd(3),
      R => '0'
    );
\strIndex[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => uartState(1),
      I1 => uartState(2),
      I2 => uartState(0),
      O => strIndex0
    );
\strIndex[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => uartState(2),
      I1 => uartState(0),
      I2 => uartState(1),
      O => \strIndex[0]_i_2_n_0\
    );
\strIndex[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => strIndex_reg(0),
      O => \strIndex[0]_i_7_n_0\
    );
\strIndex_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[0]_i_3_n_7\,
      Q => strIndex_reg(0),
      R => strIndex0
    );
\strIndex_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \strIndex_reg[0]_i_3_n_0\,
      CO(2 downto 0) => \NLW_strIndex_reg[0]_i_3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \strIndex_reg[0]_i_3_n_4\,
      O(2) => \strIndex_reg[0]_i_3_n_5\,
      O(1) => \strIndex_reg[0]_i_3_n_6\,
      O(0) => \strIndex_reg[0]_i_3_n_7\,
      S(3 downto 1) => strIndex_reg(3 downto 1),
      S(0) => \strIndex[0]_i_7_n_0\
    );
\strIndex_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[8]_i_1_n_5\,
      Q => strIndex_reg(10),
      R => strIndex0
    );
\strIndex_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[8]_i_1_n_4\,
      Q => strIndex_reg(11),
      R => strIndex0
    );
\strIndex_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[12]_i_1_n_7\,
      Q => strIndex_reg(12),
      R => strIndex0
    );
\strIndex_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \strIndex_reg[8]_i_1_n_0\,
      CO(3) => \strIndex_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_strIndex_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \strIndex_reg[12]_i_1_n_4\,
      O(2) => \strIndex_reg[12]_i_1_n_5\,
      O(1) => \strIndex_reg[12]_i_1_n_6\,
      O(0) => \strIndex_reg[12]_i_1_n_7\,
      S(3 downto 0) => strIndex_reg(15 downto 12)
    );
\strIndex_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[12]_i_1_n_6\,
      Q => strIndex_reg(13),
      R => strIndex0
    );
\strIndex_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[12]_i_1_n_5\,
      Q => strIndex_reg(14),
      R => strIndex0
    );
\strIndex_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[12]_i_1_n_4\,
      Q => strIndex_reg(15),
      R => strIndex0
    );
\strIndex_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[16]_i_1_n_7\,
      Q => strIndex_reg(16),
      R => strIndex0
    );
\strIndex_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \strIndex_reg[12]_i_1_n_0\,
      CO(3) => \strIndex_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_strIndex_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \strIndex_reg[16]_i_1_n_4\,
      O(2) => \strIndex_reg[16]_i_1_n_5\,
      O(1) => \strIndex_reg[16]_i_1_n_6\,
      O(0) => \strIndex_reg[16]_i_1_n_7\,
      S(3 downto 0) => strIndex_reg(19 downto 16)
    );
\strIndex_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[16]_i_1_n_6\,
      Q => strIndex_reg(17),
      R => strIndex0
    );
\strIndex_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[16]_i_1_n_5\,
      Q => strIndex_reg(18),
      R => strIndex0
    );
\strIndex_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[16]_i_1_n_4\,
      Q => strIndex_reg(19),
      R => strIndex0
    );
\strIndex_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[0]_i_3_n_6\,
      Q => strIndex_reg(1),
      R => strIndex0
    );
\strIndex_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[20]_i_1_n_7\,
      Q => strIndex_reg(20),
      R => strIndex0
    );
\strIndex_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \strIndex_reg[16]_i_1_n_0\,
      CO(3) => \strIndex_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_strIndex_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \strIndex_reg[20]_i_1_n_4\,
      O(2) => \strIndex_reg[20]_i_1_n_5\,
      O(1) => \strIndex_reg[20]_i_1_n_6\,
      O(0) => \strIndex_reg[20]_i_1_n_7\,
      S(3 downto 0) => strIndex_reg(23 downto 20)
    );
\strIndex_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[20]_i_1_n_6\,
      Q => strIndex_reg(21),
      R => strIndex0
    );
\strIndex_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[20]_i_1_n_5\,
      Q => strIndex_reg(22),
      R => strIndex0
    );
\strIndex_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[20]_i_1_n_4\,
      Q => strIndex_reg(23),
      R => strIndex0
    );
\strIndex_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[24]_i_1_n_7\,
      Q => strIndex_reg(24),
      R => strIndex0
    );
\strIndex_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \strIndex_reg[20]_i_1_n_0\,
      CO(3) => \strIndex_reg[24]_i_1_n_0\,
      CO(2 downto 0) => \NLW_strIndex_reg[24]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \strIndex_reg[24]_i_1_n_4\,
      O(2) => \strIndex_reg[24]_i_1_n_5\,
      O(1) => \strIndex_reg[24]_i_1_n_6\,
      O(0) => \strIndex_reg[24]_i_1_n_7\,
      S(3 downto 0) => strIndex_reg(27 downto 24)
    );
\strIndex_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[24]_i_1_n_6\,
      Q => strIndex_reg(25),
      R => strIndex0
    );
\strIndex_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[24]_i_1_n_5\,
      Q => strIndex_reg(26),
      R => strIndex0
    );
\strIndex_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[24]_i_1_n_4\,
      Q => strIndex_reg(27),
      R => strIndex0
    );
\strIndex_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[28]_i_1_n_7\,
      Q => strIndex_reg(28),
      R => strIndex0
    );
\strIndex_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \strIndex_reg[24]_i_1_n_0\,
      CO(3 downto 0) => \NLW_strIndex_reg[28]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \NLW_strIndex_reg[28]_i_1_O_UNCONNECTED\(3),
      O(2) => \strIndex_reg[28]_i_1_n_5\,
      O(1) => \strIndex_reg[28]_i_1_n_6\,
      O(0) => \strIndex_reg[28]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => strIndex_reg(30 downto 28)
    );
\strIndex_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[28]_i_1_n_6\,
      Q => strIndex_reg(29),
      R => strIndex0
    );
\strIndex_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[0]_i_3_n_5\,
      Q => strIndex_reg(2),
      R => strIndex0
    );
\strIndex_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[28]_i_1_n_5\,
      Q => strIndex_reg(30),
      R => strIndex0
    );
\strIndex_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[0]_i_3_n_4\,
      Q => strIndex_reg(3),
      R => strIndex0
    );
\strIndex_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[4]_i_1_n_7\,
      Q => strIndex_reg(4),
      R => strIndex0
    );
\strIndex_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \strIndex_reg[0]_i_3_n_0\,
      CO(3) => \strIndex_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_strIndex_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \strIndex_reg[4]_i_1_n_4\,
      O(2) => \strIndex_reg[4]_i_1_n_5\,
      O(1) => \strIndex_reg[4]_i_1_n_6\,
      O(0) => \strIndex_reg[4]_i_1_n_7\,
      S(3 downto 0) => strIndex_reg(7 downto 4)
    );
\strIndex_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[4]_i_1_n_6\,
      Q => strIndex_reg(5),
      R => strIndex0
    );
\strIndex_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[4]_i_1_n_5\,
      Q => strIndex_reg(6),
      R => strIndex0
    );
\strIndex_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[4]_i_1_n_4\,
      Q => strIndex_reg(7),
      R => strIndex0
    );
\strIndex_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[8]_i_1_n_7\,
      Q => strIndex_reg(8),
      R => strIndex0
    );
\strIndex_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \strIndex_reg[4]_i_1_n_0\,
      CO(3) => \strIndex_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_strIndex_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \strIndex_reg[8]_i_1_n_4\,
      O(2) => \strIndex_reg[8]_i_1_n_5\,
      O(1) => \strIndex_reg[8]_i_1_n_6\,
      O(0) => \strIndex_reg[8]_i_1_n_7\,
      S(3 downto 0) => strIndex_reg(11 downto 8)
    );
\strIndex_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \strIndex[0]_i_2_n_0\,
      D => \strIndex_reg[8]_i_1_n_6\,
      Q => strIndex_reg(9),
      R => strIndex0
    );
\tempStr[0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(1),
      I2 => \out_string_count_reg__0\(2),
      I3 => \out_string_count_reg__0\(0),
      I4 => \tempStr[0][4]_i_3_n_0\,
      I5 => reset_IBUF,
      O => \tempStr[0][4]_i_1_n_0\
    );
\tempStr[0][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => stringState(2),
      I1 => stringState(0),
      I2 => stringState(1),
      O => \tempStr[0][4]_i_2_n_0\
    );
\tempStr[0][4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \out_string_count_reg__0\(3),
      I1 => \out_string_count_reg__0\(4),
      O => \tempStr[0][4]_i_3_n_0\
    );
\tempStr[10][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(2),
      I2 => \out_string_count_reg__0\(1),
      I3 => \out_string_count_reg__0\(0),
      I4 => \tempStr[8][4]_i_2_n_0\,
      I5 => reset_IBUF,
      O => \tempStr[10][4]_i_1_n_0\
    );
\tempStr[11][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(2),
      I2 => \out_string_count_reg__0\(1),
      I3 => \out_string_count_reg__0\(0),
      I4 => \tempStr[8][4]_i_2_n_0\,
      I5 => reset_IBUF,
      O => \tempStr[11][4]_i_1_n_0\
    );
\tempStr[12][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(1),
      I2 => \out_string_count_reg__0\(2),
      I3 => \out_string_count_reg__0\(0),
      I4 => \tempStr[8][4]_i_2_n_0\,
      I5 => reset_IBUF,
      O => \tempStr[12][4]_i_1_n_0\
    );
\tempStr[13][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(1),
      I2 => \out_string_count_reg__0\(2),
      I3 => \out_string_count_reg__0\(0),
      I4 => \tempStr[8][4]_i_2_n_0\,
      I5 => reset_IBUF,
      O => \tempStr[13][4]_i_1_n_0\
    );
\tempStr[14][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(1),
      I2 => \out_string_count_reg__0\(2),
      I3 => \out_string_count_reg__0\(0),
      I4 => \tempStr[8][4]_i_2_n_0\,
      I5 => reset_IBUF,
      O => \tempStr[14][4]_i_1_n_0\
    );
\tempStr[15][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(4),
      I2 => \tempStr[15][4]_i_2_n_0\,
      I3 => \out_string_count_reg__0\(3),
      I4 => reset_IBUF,
      O => \tempStr[15][4]_i_1_n_0\
    );
\tempStr[15][4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \out_string_count_reg__0\(0),
      I1 => \out_string_count_reg__0\(2),
      I2 => \out_string_count_reg__0\(1),
      O => \tempStr[15][4]_i_2_n_0\
    );
\tempStr[1][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(1),
      I2 => \out_string_count_reg__0\(2),
      I3 => \out_string_count_reg__0\(0),
      I4 => \tempStr[0][4]_i_3_n_0\,
      I5 => reset_IBUF,
      O => \tempStr[1][4]_i_1_n_0\
    );
\tempStr[2][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(2),
      I2 => \out_string_count_reg__0\(1),
      I3 => \out_string_count_reg__0\(0),
      I4 => \tempStr[0][4]_i_3_n_0\,
      I5 => reset_IBUF,
      O => \tempStr[2][4]_i_1_n_0\
    );
\tempStr[3][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(2),
      I2 => \out_string_count_reg__0\(1),
      I3 => \out_string_count_reg__0\(0),
      I4 => \tempStr[0][4]_i_3_n_0\,
      I5 => reset_IBUF,
      O => \tempStr[3][4]_i_1_n_0\
    );
\tempStr[4][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(1),
      I2 => \out_string_count_reg__0\(2),
      I3 => \out_string_count_reg__0\(0),
      I4 => \tempStr[0][4]_i_3_n_0\,
      I5 => reset_IBUF,
      O => \tempStr[4][4]_i_1_n_0\
    );
\tempStr[5][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(1),
      I2 => \out_string_count_reg__0\(2),
      I3 => \out_string_count_reg__0\(0),
      I4 => \tempStr[0][4]_i_3_n_0\,
      I5 => reset_IBUF,
      O => \tempStr[5][4]_i_1_n_0\
    );
\tempStr[6][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(1),
      I2 => \out_string_count_reg__0\(2),
      I3 => \out_string_count_reg__0\(0),
      I4 => \tempStr[0][4]_i_3_n_0\,
      I5 => reset_IBUF,
      O => \tempStr[6][4]_i_1_n_0\
    );
\tempStr[7][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(1),
      I2 => \out_string_count_reg__0\(2),
      I3 => \out_string_count_reg__0\(0),
      I4 => \tempStr[0][4]_i_3_n_0\,
      I5 => reset_IBUF,
      O => \tempStr[7][4]_i_1_n_0\
    );
\tempStr[8][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(1),
      I2 => \out_string_count_reg__0\(2),
      I3 => \out_string_count_reg__0\(0),
      I4 => \tempStr[8][4]_i_2_n_0\,
      I5 => reset_IBUF,
      O => \tempStr[8][4]_i_1_n_0\
    );
\tempStr[8][4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \out_string_count_reg__0\(3),
      I1 => \out_string_count_reg__0\(4),
      O => \tempStr[8][4]_i_2_n_0\
    );
\tempStr[9][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \tempStr[0][4]_i_2_n_0\,
      I1 => \out_string_count_reg__0\(1),
      I2 => \out_string_count_reg__0\(2),
      I3 => \out_string_count_reg__0\(0),
      I4 => \tempStr[8][4]_i_2_n_0\,
      I5 => reset_IBUF,
      O => \tempStr[9][4]_i_1_n_0\
    );
\tempStr_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[0][4]_i_1_n_0\,
      D => \tempStr_reg[0]__0\(0),
      Q => \tempStr_reg_n_0_[0][0]\,
      R => '0'
    );
\tempStr_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[0][4]_i_1_n_0\,
      D => \tempStr_reg[0]__0\(1),
      Q => \tempStr_reg_n_0_[0][1]\,
      R => '0'
    );
\tempStr_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[0][4]_i_1_n_0\,
      D => \tempStr_reg[0]__0\(2),
      Q => \tempStr_reg_n_0_[0][2]\,
      R => '0'
    );
\tempStr_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[0][4]_i_1_n_0\,
      D => \tempStr_reg[0]__0\(3),
      Q => \tempStr_reg_n_0_[0][3]\,
      R => '0'
    );
\tempStr_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[0][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[0][4]\,
      R => '0'
    );
\tempStr_reg[10][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[10][4]_i_1_n_0\,
      D => \tempStr_reg[10]__0\(0),
      Q => \tempStr_reg_n_0_[10][0]\,
      R => '0'
    );
\tempStr_reg[10][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[10][4]_i_1_n_0\,
      D => \tempStr_reg[10]__0\(1),
      Q => \tempStr_reg_n_0_[10][1]\,
      R => '0'
    );
\tempStr_reg[10][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[10][4]_i_1_n_0\,
      D => \tempStr_reg[10]__0\(2),
      Q => \tempStr_reg_n_0_[10][2]\,
      R => '0'
    );
\tempStr_reg[10][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[10][4]_i_1_n_0\,
      D => \tempStr_reg[10]__0\(3),
      Q => \tempStr_reg_n_0_[10][3]\,
      R => '0'
    );
\tempStr_reg[10][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[10][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[10][4]\,
      R => '0'
    );
\tempStr_reg[11][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[11][4]_i_1_n_0\,
      D => \tempStr_reg[11]__0\(0),
      Q => \tempStr_reg_n_0_[11][0]\,
      R => '0'
    );
\tempStr_reg[11][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[11][4]_i_1_n_0\,
      D => \tempStr_reg[11]__0\(1),
      Q => \tempStr_reg_n_0_[11][1]\,
      R => '0'
    );
\tempStr_reg[11][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[11][4]_i_1_n_0\,
      D => \tempStr_reg[11]__0\(2),
      Q => \tempStr_reg_n_0_[11][2]\,
      R => '0'
    );
\tempStr_reg[11][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[11][4]_i_1_n_0\,
      D => \tempStr_reg[11]__0\(3),
      Q => \tempStr_reg_n_0_[11][3]\,
      R => '0'
    );
\tempStr_reg[11][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[11][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[11][4]\,
      R => '0'
    );
\tempStr_reg[12][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[12][4]_i_1_n_0\,
      D => \tempStr_reg[12]__0\(0),
      Q => \tempStr_reg_n_0_[12][0]\,
      R => '0'
    );
\tempStr_reg[12][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[12][4]_i_1_n_0\,
      D => \tempStr_reg[12]__0\(1),
      Q => \tempStr_reg_n_0_[12][1]\,
      R => '0'
    );
\tempStr_reg[12][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[12][4]_i_1_n_0\,
      D => \tempStr_reg[12]__0\(2),
      Q => \tempStr_reg_n_0_[12][2]\,
      R => '0'
    );
\tempStr_reg[12][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[12][4]_i_1_n_0\,
      D => \tempStr_reg[12]__0\(3),
      Q => \tempStr_reg_n_0_[12][3]\,
      R => '0'
    );
\tempStr_reg[12][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[12][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[12][4]\,
      R => '0'
    );
\tempStr_reg[13][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[13][4]_i_1_n_0\,
      D => \tempStr_reg[13]__0\(0),
      Q => \tempStr_reg_n_0_[13][0]\,
      R => '0'
    );
\tempStr_reg[13][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[13][4]_i_1_n_0\,
      D => \tempStr_reg[13]__0\(1),
      Q => \tempStr_reg_n_0_[13][1]\,
      R => '0'
    );
\tempStr_reg[13][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[13][4]_i_1_n_0\,
      D => \tempStr_reg[13]__0\(2),
      Q => \tempStr_reg_n_0_[13][2]\,
      R => '0'
    );
\tempStr_reg[13][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[13][4]_i_1_n_0\,
      D => \tempStr_reg[13]__0\(3),
      Q => \tempStr_reg_n_0_[13][3]\,
      R => '0'
    );
\tempStr_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[13][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[13][4]\,
      R => '0'
    );
\tempStr_reg[14][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[14][4]_i_1_n_0\,
      D => \tempStr_reg[14]__0\(0),
      Q => \tempStr_reg_n_0_[14][0]\,
      R => '0'
    );
\tempStr_reg[14][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[14][4]_i_1_n_0\,
      D => \tempStr_reg[14]__0\(1),
      Q => \tempStr_reg_n_0_[14][1]\,
      R => '0'
    );
\tempStr_reg[14][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[14][4]_i_1_n_0\,
      D => \tempStr_reg[14]__0\(2),
      Q => \tempStr_reg_n_0_[14][2]\,
      R => '0'
    );
\tempStr_reg[14][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[14][4]_i_1_n_0\,
      D => \tempStr_reg[14]__0\(3),
      Q => \tempStr_reg_n_0_[14][3]\,
      R => '0'
    );
\tempStr_reg[14][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[14][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[14][4]\,
      R => '0'
    );
\tempStr_reg[15][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[15][4]_i_1_n_0\,
      D => \tempStr_reg[15]__0\(0),
      Q => \tempStr_reg_n_0_[15][0]\,
      R => '0'
    );
\tempStr_reg[15][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[15][4]_i_1_n_0\,
      D => \tempStr_reg[15]__0\(1),
      Q => \tempStr_reg_n_0_[15][1]\,
      R => '0'
    );
\tempStr_reg[15][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[15][4]_i_1_n_0\,
      D => \tempStr_reg[15]__0\(2),
      Q => \tempStr_reg_n_0_[15][2]\,
      R => '0'
    );
\tempStr_reg[15][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[15][4]_i_1_n_0\,
      D => \tempStr_reg[15]__0\(3),
      Q => \tempStr_reg_n_0_[15][3]\,
      R => '0'
    );
\tempStr_reg[15][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[15][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[15][4]\,
      R => '0'
    );
\tempStr_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[1][4]_i_1_n_0\,
      D => \tempStr_reg[1]__0\(0),
      Q => \tempStr_reg_n_0_[1][0]\,
      R => '0'
    );
\tempStr_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[1][4]_i_1_n_0\,
      D => \tempStr_reg[1]__0\(1),
      Q => \tempStr_reg_n_0_[1][1]\,
      R => '0'
    );
\tempStr_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[1][4]_i_1_n_0\,
      D => \tempStr_reg[1]__0\(2),
      Q => \tempStr_reg_n_0_[1][2]\,
      R => '0'
    );
\tempStr_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[1][4]_i_1_n_0\,
      D => \tempStr_reg[1]__0\(3),
      Q => \tempStr_reg_n_0_[1][3]\,
      R => '0'
    );
\tempStr_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[1][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[1][4]\,
      R => '0'
    );
\tempStr_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[2][4]_i_1_n_0\,
      D => \tempStr_reg[2]__0\(0),
      Q => \tempStr_reg_n_0_[2][0]\,
      R => '0'
    );
\tempStr_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[2][4]_i_1_n_0\,
      D => \tempStr_reg[2]__0\(1),
      Q => \tempStr_reg_n_0_[2][1]\,
      R => '0'
    );
\tempStr_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[2][4]_i_1_n_0\,
      D => \tempStr_reg[2]__0\(2),
      Q => \tempStr_reg_n_0_[2][2]\,
      R => '0'
    );
\tempStr_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[2][4]_i_1_n_0\,
      D => \tempStr_reg[2]__0\(3),
      Q => \tempStr_reg_n_0_[2][3]\,
      R => '0'
    );
\tempStr_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[2][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[2][4]\,
      R => '0'
    );
\tempStr_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[3][4]_i_1_n_0\,
      D => \tempStr_reg[3]__0\(0),
      Q => \tempStr_reg_n_0_[3][0]\,
      R => '0'
    );
\tempStr_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[3][4]_i_1_n_0\,
      D => \tempStr_reg[3]__0\(1),
      Q => \tempStr_reg_n_0_[3][1]\,
      R => '0'
    );
\tempStr_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[3][4]_i_1_n_0\,
      D => \tempStr_reg[3]__0\(2),
      Q => \tempStr_reg_n_0_[3][2]\,
      R => '0'
    );
\tempStr_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[3][4]_i_1_n_0\,
      D => \tempStr_reg[3]__0\(3),
      Q => \tempStr_reg_n_0_[3][3]\,
      R => '0'
    );
\tempStr_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[3][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[3][4]\,
      R => '0'
    );
\tempStr_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[4][4]_i_1_n_0\,
      D => \tempStr_reg[4]__0\(0),
      Q => \tempStr_reg_n_0_[4][0]\,
      R => '0'
    );
\tempStr_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[4][4]_i_1_n_0\,
      D => \tempStr_reg[4]__0\(1),
      Q => \tempStr_reg_n_0_[4][1]\,
      R => '0'
    );
\tempStr_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[4][4]_i_1_n_0\,
      D => \tempStr_reg[4]__0\(2),
      Q => \tempStr_reg_n_0_[4][2]\,
      R => '0'
    );
\tempStr_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[4][4]_i_1_n_0\,
      D => \tempStr_reg[4]__0\(3),
      Q => \tempStr_reg_n_0_[4][3]\,
      R => '0'
    );
\tempStr_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[4][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[4][4]\,
      R => '0'
    );
\tempStr_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[5][4]_i_1_n_0\,
      D => \tempStr_reg[5]__0\(0),
      Q => \tempStr_reg_n_0_[5][0]\,
      R => '0'
    );
\tempStr_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[5][4]_i_1_n_0\,
      D => \tempStr_reg[5]__0\(1),
      Q => \tempStr_reg_n_0_[5][1]\,
      R => '0'
    );
\tempStr_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[5][4]_i_1_n_0\,
      D => \tempStr_reg[5]__0\(2),
      Q => \tempStr_reg_n_0_[5][2]\,
      R => '0'
    );
\tempStr_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[5][4]_i_1_n_0\,
      D => \tempStr_reg[5]__0\(3),
      Q => \tempStr_reg_n_0_[5][3]\,
      R => '0'
    );
\tempStr_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[5][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[5][4]\,
      R => '0'
    );
\tempStr_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[6][4]_i_1_n_0\,
      D => \tempStr_reg[6]__0\(0),
      Q => \tempStr_reg_n_0_[6][0]\,
      R => '0'
    );
\tempStr_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[6][4]_i_1_n_0\,
      D => \tempStr_reg[6]__0\(1),
      Q => \tempStr_reg_n_0_[6][1]\,
      R => '0'
    );
\tempStr_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[6][4]_i_1_n_0\,
      D => \tempStr_reg[6]__0\(2),
      Q => \tempStr_reg_n_0_[6][2]\,
      R => '0'
    );
\tempStr_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[6][4]_i_1_n_0\,
      D => \tempStr_reg[6]__0\(3),
      Q => \tempStr_reg_n_0_[6][3]\,
      R => '0'
    );
\tempStr_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[6][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[6][4]\,
      R => '0'
    );
\tempStr_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[7][4]_i_1_n_0\,
      D => \tempStr_reg[7]__0\(0),
      Q => \tempStr_reg_n_0_[7][0]\,
      R => '0'
    );
\tempStr_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[7][4]_i_1_n_0\,
      D => \tempStr_reg[7]__0\(1),
      Q => \tempStr_reg_n_0_[7][1]\,
      R => '0'
    );
\tempStr_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[7][4]_i_1_n_0\,
      D => \tempStr_reg[7]__0\(2),
      Q => \tempStr_reg_n_0_[7][2]\,
      R => '0'
    );
\tempStr_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[7][4]_i_1_n_0\,
      D => \tempStr_reg[7]__0\(3),
      Q => \tempStr_reg_n_0_[7][3]\,
      R => '0'
    );
\tempStr_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[7][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[7][4]\,
      R => '0'
    );
\tempStr_reg[8][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[8][4]_i_1_n_0\,
      D => \tempStr_reg[8]__0\(0),
      Q => \tempStr_reg_n_0_[8][0]\,
      R => '0'
    );
\tempStr_reg[8][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[8][4]_i_1_n_0\,
      D => \tempStr_reg[8]__0\(1),
      Q => \tempStr_reg_n_0_[8][1]\,
      R => '0'
    );
\tempStr_reg[8][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[8][4]_i_1_n_0\,
      D => \tempStr_reg[8]__0\(2),
      Q => \tempStr_reg_n_0_[8][2]\,
      R => '0'
    );
\tempStr_reg[8][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[8][4]_i_1_n_0\,
      D => \tempStr_reg[8]__0\(3),
      Q => \tempStr_reg_n_0_[8][3]\,
      R => '0'
    );
\tempStr_reg[8][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[8][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[8][4]\,
      R => '0'
    );
\tempStr_reg[9][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[9][4]_i_1_n_0\,
      D => \tempStr_reg[9]__0\(0),
      Q => \tempStr_reg_n_0_[9][0]\,
      R => '0'
    );
\tempStr_reg[9][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[9][4]_i_1_n_0\,
      D => \tempStr_reg[9]__0\(1),
      Q => \tempStr_reg_n_0_[9][1]\,
      R => '0'
    );
\tempStr_reg[9][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[9][4]_i_1_n_0\,
      D => \tempStr_reg[9]__0\(2),
      Q => \tempStr_reg_n_0_[9][2]\,
      R => '0'
    );
\tempStr_reg[9][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[9][4]_i_1_n_0\,
      D => \tempStr_reg[9]__0\(3),
      Q => \tempStr_reg_n_0_[9][3]\,
      R => '0'
    );
\tempStr_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempStr[9][4]_i_1_n_0\,
      D => '1',
      Q => \tempStr_reg_n_0_[9][4]\,
      R => '0'
    );
tx_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => tx_OBUF,
      O => tx
    );
uart: entity work.UART_TX_CTRL
     port map (
      E(0) => uartSend_reg_n_0,
      \FSM_sequential_uartState_reg[0]\ => uart_n_3,
      \FSM_sequential_uartState_reg[0]_0\ => \FSM_sequential_uartState[2]_i_2_n_0\,
      \FSM_sequential_uartState_reg[0]_1\ => \FSM_sequential_uartState[0]_i_2_n_0\,
      \FSM_sequential_uartState_reg[1]\ => uart_n_2,
      \FSM_sequential_uartState_reg[1]_0\ => \FSM_sequential_uartState[1]_i_2_n_0\,
      \FSM_sequential_uartState_reg[2]\ => uart_n_1,
      Q(6 downto 0) => uartData(6 downto 0),
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      done_load_reg => done_load_reg_n_0,
      in0(2) => uartState(2),
      in0(1 downto 0) => NLW_uart_in0_UNCONNECTED(1 downto 0),
      \out\(2 downto 0) => uartState(2 downto 0),
      \reset_cntr_reg[10]\ => \reset_cntr[0]_i_3_n_0\,
      \reset_cntr_reg[12]\ => \reset_cntr[0]_i_5_n_0\,
      \reset_cntr_reg[4]\ => \reset_cntr[0]_i_4_n_0\,
      tx_OBUF => tx_OBUF
    );
\uartData[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808FFFFA8080000"
    )
        port map (
      I0 => \sendStr_reg[20]\(0),
      I1 => strIndex_reg(2),
      I2 => strIndex_reg(3),
      I3 => strIndex_reg(1),
      I4 => strIndex_reg(4),
      I5 => \uartData_reg[0]_i_2_n_0\,
      O => \sendStr[0]\(0)
    );
\uartData[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[3]__0\(0),
      I1 => \sendStr_reg[2]__0\(0),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[1]__0\(0),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[0]__0\(0),
      O => \uartData[0]_i_5_n_0\
    );
\uartData[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[7]__0\(0),
      I1 => \sendStr_reg[6]__0\(0),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[5]__0\(0),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[4]__0\(0),
      O => \uartData[0]_i_6_n_0\
    );
\uartData[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[11]__0\(0),
      I1 => \sendStr_reg[10]__0\(0),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[9]__0\(0),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[8]__0\(0),
      O => \uartData[0]_i_7_n_0\
    );
\uartData[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[15]__0\(0),
      I1 => \sendStr_reg[14]__0\(0),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[13]__0\(0),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[12]__0\(0),
      O => \uartData[0]_i_8_n_0\
    );
\uartData[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \uartData[1]_i_2_n_0\,
      I1 => strIndex_reg(4),
      I2 => \uartData_reg[1]_i_3_n_0\,
      I3 => strIndex_reg(3),
      I4 => \uartData_reg[1]_i_4_n_0\,
      O => \sendStr[0]\(1)
    );
\uartData[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22006300"
    )
        port map (
      I0 => strIndex_reg(3),
      I1 => strIndex_reg(1),
      I2 => strIndex_reg(2),
      I3 => \sendStr_reg[20]\(0),
      I4 => strIndex_reg(0),
      O => \uartData[1]_i_2_n_0\
    );
\uartData[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[11]__0\(1),
      I1 => \sendStr_reg[10]__0\(1),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[9]__0\(1),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[8]__0\(1),
      O => \uartData[1]_i_5_n_0\
    );
\uartData[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[15]__0\(1),
      I1 => \sendStr_reg[14]__0\(1),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[13]__0\(1),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[12]__0\(1),
      O => \uartData[1]_i_6_n_0\
    );
\uartData[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[3]__0\(1),
      I1 => \sendStr_reg[2]__0\(1),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[1]__0\(1),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[0]__0\(1),
      O => \uartData[1]_i_7_n_0\
    );
\uartData[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[7]__0\(1),
      I1 => \sendStr_reg[6]__0\(1),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[5]__0\(1),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[4]__0\(1),
      O => \uartData[1]_i_8_n_0\
    );
\uartData[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => \sendStr_reg[20]\(0),
      I1 => \uartData[2]_i_2_n_0\,
      I2 => strIndex_reg(3),
      I3 => \uartData[6]_i_3_n_0\,
      I4 => strIndex_reg(4),
      I5 => \uartData_reg[2]_i_3_n_0\,
      O => \sendStr[0]\(2)
    );
\uartData[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => strIndex_reg(1),
      I1 => strIndex_reg(3),
      I2 => strIndex_reg(2),
      O => \uartData[2]_i_2_n_0\
    );
\uartData[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[3]__0\(2),
      I1 => \sendStr_reg[2]__0\(2),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[1]__0\(2),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[0]__0\(2),
      O => \uartData[2]_i_6_n_0\
    );
\uartData[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[7]__0\(2),
      I1 => \sendStr_reg[6]__0\(2),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[5]__0\(2),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[4]__0\(2),
      O => \uartData[2]_i_7_n_0\
    );
\uartData[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[11]__0\(2),
      I1 => \sendStr_reg[10]__0\(2),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[9]__0\(2),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[8]__0\(2),
      O => \uartData[2]_i_8_n_0\
    );
\uartData[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[15]__0\(2),
      I1 => \sendStr_reg[14]__0\(2),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[13]__0\(2),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[12]__0\(2),
      O => \uartData[2]_i_9_n_0\
    );
\uartData[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \uartData[3]_i_2_n_0\,
      I1 => strIndex_reg(4),
      I2 => \uartData_reg[3]_i_3_n_0\,
      I3 => strIndex_reg(3),
      I4 => \uartData_reg[3]_i_4_n_0\,
      O => \sendStr[0]\(3)
    );
\uartData[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF006000"
    )
        port map (
      I0 => strIndex_reg(1),
      I1 => strIndex_reg(0),
      I2 => strIndex_reg(2),
      I3 => \sendStr_reg[20]\(0),
      I4 => strIndex_reg(3),
      O => \uartData[3]_i_2_n_0\
    );
\uartData[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[11]__0\(3),
      I1 => \sendStr_reg[10]__0\(3),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[9]__0\(3),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[8]__0\(3),
      O => \uartData[3]_i_5_n_0\
    );
\uartData[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[15]__0\(3),
      I1 => \sendStr_reg[14]__0\(3),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[13]__0\(3),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[12]__0\(3),
      O => \uartData[3]_i_6_n_0\
    );
\uartData[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[3]__0\(3),
      I1 => \sendStr_reg[2]__0\(3),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[1]__0\(3),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[0]__0\(3),
      O => \uartData[3]_i_7_n_0\
    );
\uartData[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[7]__0\(3),
      I1 => \sendStr_reg[6]__0\(3),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[5]__0\(3),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[4]__0\(3),
      O => \uartData[3]_i_8_n_0\
    );
\uartData[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFFF00020000"
    )
        port map (
      I0 => \sendStr_reg[20]\(0),
      I1 => strIndex_reg(1),
      I2 => strIndex_reg(3),
      I3 => strIndex_reg(2),
      I4 => strIndex_reg(4),
      I5 => \uartData[4]_i_2_n_0\,
      O => \sendStr[0]\(4)
    );
\uartData[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \uartData[4]_i_3_n_0\,
      I1 => \uartData[4]_i_4_n_0\,
      I2 => strIndex_reg(3),
      I3 => \uartData[4]_i_5_n_0\,
      I4 => strIndex_reg(2),
      I5 => \uartData[5]_i_7_n_0\,
      O => \uartData[4]_i_2_n_0\
    );
\uartData[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[15]__0\(4),
      I1 => \sendStr_reg[14]__0\(4),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[13]__0\(4),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[12]__0\(4),
      O => \uartData[4]_i_3_n_0\
    );
\uartData[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[11]__0\(4),
      I1 => \sendStr_reg[10]__0\(4),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[9]__0\(4),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[8]__0\(4),
      O => \uartData[4]_i_4_n_0\
    );
\uartData[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[7]__0\(4),
      I1 => \sendStr_reg[6]__0\(4),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[5]__0\(4),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[4]__0\(4),
      O => \uartData[4]_i_5_n_0\
    );
\uartData[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \uartData[5]_i_4_n_0\,
      I1 => \uartData[5]_i_5_n_0\,
      I2 => strIndex_reg(3),
      I3 => \uartData[5]_i_6_n_0\,
      I4 => strIndex_reg(2),
      I5 => \uartData[5]_i_7_n_0\,
      O => \uartData[5]_i_2_n_0\
    );
\uartData[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008400"
    )
        port map (
      I0 => strIndex_reg(0),
      I1 => \sendStr_reg[20]\(0),
      I2 => strIndex_reg(2),
      I3 => strIndex_reg(1),
      I4 => strIndex_reg(3),
      O => \uartData[5]_i_3_n_0\
    );
\uartData[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[15]__0\(4),
      I1 => \sendStr_reg[14]__0\(5),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[13]__0\(5),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[12]__0\(4),
      O => \uartData[5]_i_4_n_0\
    );
\uartData[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[11]__0\(4),
      I1 => \sendStr_reg[10]__0\(5),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[9]__0\(4),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[8]__0\(5),
      O => \uartData[5]_i_5_n_0\
    );
\uartData[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[7]__0\(4),
      I1 => \sendStr_reg[6]__0\(5),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[5]__0\(5),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[4]__0\(5),
      O => \uartData[5]_i_6_n_0\
    );
\uartData[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sendStr_reg[3]__0\(4),
      I1 => \sendStr_reg[2]__0\(4),
      I2 => strIndex_reg(1),
      I3 => \sendStr_reg[1]__0\(4),
      I4 => strIndex_reg(0),
      I5 => \sendStr_reg[0]__0\(4),
      O => \uartData[5]_i_7_n_0\
    );
\uartData[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => uartState(1),
      I1 => uartState(2),
      I2 => uartState(0),
      O => uartSend
    );
\uartData[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF400"
    )
        port map (
      I0 => strIndex_reg(3),
      I1 => \uartData[6]_i_3_n_0\,
      I2 => \uartData[6]_i_4_n_0\,
      I3 => strIndex_reg(4),
      I4 => \uartData[6]_i_5_n_0\,
      O => \sendStr[0]\(6)
    );
\uartData[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"484C4888"
    )
        port map (
      I0 => strIndex_reg(0),
      I1 => \sendStr_reg[20]\(0),
      I2 => strIndex_reg(1),
      I3 => strIndex_reg(3),
      I4 => strIndex_reg(2),
      O => \uartData[6]_i_3_n_0\
    );
\uartData[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \sendStr_reg[20]\(0),
      I1 => strIndex_reg(1),
      I2 => strIndex_reg(3),
      I3 => strIndex_reg(2),
      O => \uartData[6]_i_4_n_0\
    );
\uartData[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000DE0000007C00"
    )
        port map (
      I0 => strIndex_reg(0),
      I1 => strIndex_reg(1),
      I2 => strIndex_reg(2),
      I3 => \sendStr_reg[2]__0\(6),
      I4 => strIndex_reg(4),
      I5 => strIndex_reg(3),
      O => \uartData[6]_i_5_n_0\
    );
\uartData_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => uartSend,
      D => \sendStr[0]\(0),
      Q => uartData(0),
      R => '0'
    );
\uartData_reg[0]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \uartData_reg[0]_i_3_n_0\,
      I1 => \uartData_reg[0]_i_4_n_0\,
      O => \uartData_reg[0]_i_2_n_0\,
      S => strIndex_reg(3)
    );
\uartData_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \uartData[0]_i_5_n_0\,
      I1 => \uartData[0]_i_6_n_0\,
      O => \uartData_reg[0]_i_3_n_0\,
      S => strIndex_reg(2)
    );
\uartData_reg[0]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \uartData[0]_i_7_n_0\,
      I1 => \uartData[0]_i_8_n_0\,
      O => \uartData_reg[0]_i_4_n_0\,
      S => strIndex_reg(2)
    );
\uartData_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => uartSend,
      D => \sendStr[0]\(1),
      Q => uartData(1),
      R => '0'
    );
\uartData_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \uartData[1]_i_5_n_0\,
      I1 => \uartData[1]_i_6_n_0\,
      O => \uartData_reg[1]_i_3_n_0\,
      S => strIndex_reg(2)
    );
\uartData_reg[1]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \uartData[1]_i_7_n_0\,
      I1 => \uartData[1]_i_8_n_0\,
      O => \uartData_reg[1]_i_4_n_0\,
      S => strIndex_reg(2)
    );
\uartData_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => uartSend,
      D => \sendStr[0]\(2),
      Q => uartData(2),
      R => '0'
    );
\uartData_reg[2]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \uartData_reg[2]_i_4_n_0\,
      I1 => \uartData_reg[2]_i_5_n_0\,
      O => \uartData_reg[2]_i_3_n_0\,
      S => strIndex_reg(3)
    );
\uartData_reg[2]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \uartData[2]_i_6_n_0\,
      I1 => \uartData[2]_i_7_n_0\,
      O => \uartData_reg[2]_i_4_n_0\,
      S => strIndex_reg(2)
    );
\uartData_reg[2]_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \uartData[2]_i_8_n_0\,
      I1 => \uartData[2]_i_9_n_0\,
      O => \uartData_reg[2]_i_5_n_0\,
      S => strIndex_reg(2)
    );
\uartData_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => uartSend,
      D => \sendStr[0]\(3),
      Q => uartData(3),
      R => '0'
    );
\uartData_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \uartData[3]_i_5_n_0\,
      I1 => \uartData[3]_i_6_n_0\,
      O => \uartData_reg[3]_i_3_n_0\,
      S => strIndex_reg(2)
    );
\uartData_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \uartData[3]_i_7_n_0\,
      I1 => \uartData[3]_i_8_n_0\,
      O => \uartData_reg[3]_i_4_n_0\,
      S => strIndex_reg(2)
    );
\uartData_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => uartSend,
      D => \sendStr[0]\(4),
      Q => uartData(4),
      R => '0'
    );
\uartData_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => uartSend,
      D => \sendStr[0]\(5),
      Q => uartData(5),
      R => '0'
    );
\uartData_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \uartData[5]_i_2_n_0\,
      I1 => \uartData[5]_i_3_n_0\,
      O => \sendStr[0]\(5),
      S => strIndex_reg(4)
    );
\uartData_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => uartSend,
      D => \sendStr[0]\(6),
      Q => uartData(6),
      R => '0'
    );
uartSend_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => uartSend,
      Q => uartSend_reg_n_0,
      R => '0'
    );
end STRUCTURE;
