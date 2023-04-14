-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Apr 14 00:11:50 2023
-- Host        : Caasi running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Isaac/OneDrive/Bureau/Project/NanoProcessor/Vivado_nanoProcesseur/Vivado_nanoProcesseur.sim/sim_1/impl/func/xsim/testbench_func_impl.vhd
-- Design      : nanoControleur
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ALU is
  port (
    \operande2_o_reg[6]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \operande1_o_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \operande2_o_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \operande2_o_reg[5]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \operande1_o_reg[1]\ : out STD_LOGIC;
    \operande1_o_reg[2]\ : out STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \u16Alu0__60_carry_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \u16Alu0__60_carry_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \u16Alu0__60_carry__0_i_11\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \u16Alu0__60_carry__0_i_11_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \Accu_o[3]_i_2_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Accu_o[3]_i_2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \u16Alu0__60_carry__0_i_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \u16Alu0__60_carry__0_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \CCR_o_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \CCR_o_reg[0]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \u16Alu0__60_carry__0_i_5\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end ALU;

architecture STRUCTURE of ALU is
  signal \^o\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^operande1_o_reg[7]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^operande2_o_reg[3]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^operande2_o_reg[5]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \u16Alu0__0_carry__0_n_0\ : STD_LOGIC;
  signal \u16Alu0__0_carry__0_n_6\ : STD_LOGIC;
  signal \u16Alu0__0_carry__0_n_7\ : STD_LOGIC;
  signal \u16Alu0__0_carry_n_0\ : STD_LOGIC;
  signal \u16Alu0__0_carry_n_4\ : STD_LOGIC;
  signal \u16Alu0__30_carry_n_0\ : STD_LOGIC;
  signal \u16Alu0__30_carry_n_5\ : STD_LOGIC;
  signal \u16Alu0__30_carry_n_6\ : STD_LOGIC;
  signal \u16Alu0__30_carry_n_7\ : STD_LOGIC;
  signal \u16Alu0__60_carry_i_1_n_0\ : STD_LOGIC;
  signal \u16Alu0__60_carry_i_2_n_0\ : STD_LOGIC;
  signal \u16Alu0__60_carry_i_3_n_0\ : STD_LOGIC;
  signal \u16Alu0__60_carry_i_4_n_0\ : STD_LOGIC;
  signal \u16Alu0__60_carry_i_5_n_0\ : STD_LOGIC;
  signal \u16Alu0__60_carry_n_0\ : STD_LOGIC;
  signal \NLW_u16Alu0__0_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_u16Alu0__0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_u16Alu0__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_u16Alu0__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_u16Alu0__30_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_u16Alu0__30_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_u16Alu0__60_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_u16Alu0__60_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_u16Alu0__60_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_u16Alu0__60_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \u16Alu0__0_carry\ : label is "PROPCONST SWEEP";
  attribute OPT_MODIFIED of \u16Alu0__0_carry__0\ : label is "SWEEP";
  attribute OPT_MODIFIED of \u16Alu0__0_carry__1\ : label is "SWEEP";
  attribute OPT_MODIFIED of \u16Alu0__30_carry\ : label is "PROPCONST SWEEP";
  attribute OPT_MODIFIED of \u16Alu0__30_carry__0\ : label is "SWEEP";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \u16Alu0__60_carry\ : label is 35;
  attribute OPT_MODIFIED of \u16Alu0__60_carry\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \u16Alu0__60_carry__0\ : label is 35;
  attribute OPT_MODIFIED of \u16Alu0__60_carry__0\ : label is "SWEEP";
begin
  O(1 downto 0) <= \^o\(1 downto 0);
  \operande1_o_reg[7]\(1 downto 0) <= \^operande1_o_reg[7]\(1 downto 0);
  \operande2_o_reg[3]\(0) <= \^operande2_o_reg[3]\(0);
  \operande2_o_reg[5]\(3 downto 0) <= \^operande2_o_reg[5]\(3 downto 0);
\Accu_o[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \u16Alu0__0_carry_n_4\,
      I1 => \u16Alu0__30_carry_n_7\,
      O => \operande2_o_reg[6]\(3)
    );
\u16Alu0__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \u16Alu0__0_carry_n_0\,
      CO(2 downto 0) => \NLW_u16Alu0__0_carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => DI(2 downto 0),
      DI(0) => '0',
      O(3) => \u16Alu0__0_carry_n_4\,
      O(2 downto 0) => \operande2_o_reg[6]\(2 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\u16Alu0__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \u16Alu0__0_carry_n_0\,
      CO(3) => \u16Alu0__0_carry__0_n_0\,
      CO(2 downto 0) => \NLW_u16Alu0__0_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \u16Alu0__60_carry_0\(3 downto 0),
      O(3 downto 2) => \^o\(1 downto 0),
      O(1) => \u16Alu0__0_carry__0_n_6\,
      O(0) => \u16Alu0__0_carry__0_n_7\,
      S(3 downto 0) => \u16Alu0__60_carry_1\(3 downto 0)
    );
\u16Alu0__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \u16Alu0__0_carry__0_n_0\,
      CO(3) => \NLW_u16Alu0__0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => CO(0),
      CO(1 downto 0) => \NLW_u16Alu0__0_carry__1_CO_UNCONNECTED\(1 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \u16Alu0__60_carry__0_i_11\(1 downto 0),
      O(3 downto 2) => \NLW_u16Alu0__0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \^operande1_o_reg[7]\(1 downto 0),
      S(3 downto 2) => B"01",
      S(1 downto 0) => \u16Alu0__60_carry__0_i_11_0\(1 downto 0)
    );
\u16Alu0__30_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \u16Alu0__30_carry_n_0\,
      CO(2 downto 0) => \NLW_u16Alu0__30_carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => \Accu_o[3]_i_2_0\(2 downto 0),
      DI(0) => '0',
      O(3) => \^operande2_o_reg[3]\(0),
      O(2) => \u16Alu0__30_carry_n_5\,
      O(1) => \u16Alu0__30_carry_n_6\,
      O(0) => \u16Alu0__30_carry_n_7\,
      S(3 downto 0) => \Accu_o[3]_i_2_1\(3 downto 0)
    );
\u16Alu0__30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \u16Alu0__30_carry_n_0\,
      CO(3 downto 0) => \NLW_u16Alu0__30_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \u16Alu0__60_carry__0_i_4\(3 downto 0),
      O(3 downto 0) => \^operande2_o_reg[5]\(3 downto 0),
      S(3 downto 0) => \u16Alu0__60_carry__0_i_4_0\(3 downto 0)
    );
\u16Alu0__60_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \u16Alu0__60_carry_n_0\,
      CO(2 downto 0) => \NLW_u16Alu0__60_carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \u16Alu0__60_carry_i_1_n_0\,
      DI(2) => \u16Alu0__0_carry__0_n_6\,
      DI(1) => \u16Alu0__0_carry__0_n_7\,
      DI(0) => \u16Alu0__0_carry_n_4\,
      O(3 downto 1) => \operande2_o_reg[6]\(6 downto 4),
      O(0) => \NLW_u16Alu0__60_carry_O_UNCONNECTED\(0),
      S(3) => \u16Alu0__60_carry_i_2_n_0\,
      S(2) => \u16Alu0__60_carry_i_3_n_0\,
      S(1) => \u16Alu0__60_carry_i_4_n_0\,
      S(0) => \u16Alu0__60_carry_i_5_n_0\
    );
\u16Alu0__60_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \u16Alu0__60_carry_n_0\,
      CO(3 downto 0) => \NLW_u16Alu0__60_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \CCR_o_reg[0]\(3 downto 0),
      O(3 downto 1) => \NLW_u16Alu0__60_carry__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \operande2_o_reg[6]\(7),
      S(3 downto 0) => \CCR_o_reg[0]_0\(3 downto 0)
    );
\u16Alu0__60_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1777"
    )
        port map (
      I0 => \^operande2_o_reg[5]\(2),
      I1 => \^operande1_o_reg[7]\(1),
      I2 => Q(2),
      I3 => \u16Alu0__60_carry__0_i_5\(1),
      O => \operande1_o_reg[2]\
    );
\u16Alu0__60_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1777"
    )
        port map (
      I0 => \^operande2_o_reg[5]\(1),
      I1 => \^operande1_o_reg[7]\(0),
      I2 => Q(1),
      I3 => \u16Alu0__60_carry__0_i_5\(1),
      O => \operande1_o_reg[1]\
    );
\u16Alu0__60_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^o\(0),
      I1 => \^operande2_o_reg[3]\(0),
      O => \u16Alu0__60_carry_i_1_n_0\
    );
\u16Alu0__60_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \^operande2_o_reg[3]\(0),
      I1 => \^o\(0),
      I2 => \u16Alu0__60_carry__0_i_5\(0),
      I3 => Q(0),
      O => \u16Alu0__60_carry_i_2_n_0\
    );
\u16Alu0__60_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \u16Alu0__0_carry__0_n_6\,
      I1 => \u16Alu0__30_carry_n_5\,
      O => \u16Alu0__60_carry_i_3_n_0\
    );
\u16Alu0__60_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \u16Alu0__0_carry__0_n_7\,
      I1 => \u16Alu0__30_carry_n_6\,
      O => \u16Alu0__60_carry_i_4_n_0\
    );
\u16Alu0__60_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \u16Alu0__0_carry_n_4\,
      I1 => \u16Alu0__30_carry_n_7\,
      O => \u16Alu0__60_carry_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Instruction_Register is
  port (
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \PC_counter_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    p_1_in : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \operande_o_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \operande_o_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \opcode_o_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CCR_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    \operande_o_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \p_0_in__0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \Accu_o_reg[7]\ : out STD_LOGIC;
    \Accu_o_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \operande_o_reg[7]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \operande_o_reg[7]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Accu_o_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \Accu_o_reg[7]_2\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \CCR_o_reg[0]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \CCR_o_reg[0]_0\ : in STD_LOGIC;
    \operande1_o_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    port_a_i_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    port_b_i_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_o : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \PC_counter_reg[2]\ : in STD_LOGIC;
    \PC_counter_reg[2]_0\ : in STD_LOGIC;
    \PC_counter_reg[3]\ : in STD_LOGIC;
    \PC_counter_reg[3]_0\ : in STD_LOGIC;
    \PC_counter_reg[4]\ : in STD_LOGIC;
    \PC_counter_reg[4]_0\ : in STD_LOGIC;
    \PC_counter_reg[5]\ : in STD_LOGIC;
    \PC_counter_reg[5]_0\ : in STD_LOGIC;
    \PC_counter_reg[6]\ : in STD_LOGIC;
    \PC_counter_reg[6]_0\ : in STD_LOGIC;
    \PC_counter_reg[1]\ : in STD_LOGIC;
    \PC_counter_reg[1]_0\ : in STD_LOGIC;
    \operande_o_reg[7]_3\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_i_IBUF_BUFG : in STD_LOGIC;
    \opcode_o_reg[5]_0\ : in STD_LOGIC;
    \opcode_o_reg[5]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end Instruction_Register;

architecture STRUCTURE of Instruction_Register is
  signal \Accu_o[7]_i_3_n_0\ : STD_LOGIC;
  signal \CCR_o[0]_i_2_n_0\ : STD_LOGIC;
  signal \CCR_o[0]_i_3_n_0\ : STD_LOGIC;
  signal \CCR_o[0]_i_4_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg[3]\ : STD_LOGIC;
  signal \PC_counter[6]_i_3_n_0\ : STD_LOGIC;
  signal addr_o : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal blocRAM_reg_0_31_0_0_i_2_n_0 : STD_LOGIC;
  signal \data_o[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \data_o[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \data_o[7]_i_3_n_0\ : STD_LOGIC;
  signal opcode_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \operande1_o[0]_i_2_n_0\ : STD_LOGIC;
  signal \operande1_o[1]_i_2_n_0\ : STD_LOGIC;
  signal \operande1_o[2]_i_2_n_0\ : STD_LOGIC;
  signal \operande1_o[3]_i_2_n_0\ : STD_LOGIC;
  signal \operande1_o[4]_i_2_n_0\ : STD_LOGIC;
  signal \operande1_o[5]_i_2_n_0\ : STD_LOGIC;
  signal \operande1_o[6]_i_2_n_0\ : STD_LOGIC;
  signal \operande1_o[7]_i_2_n_0\ : STD_LOGIC;
  signal \operande1_o[7]_i_3_n_0\ : STD_LOGIC;
  signal \operande1_o[7]_i_4_n_0\ : STD_LOGIC;
  signal \operande1_o[7]_i_5_n_0\ : STD_LOGIC;
  signal \operande2_o[0]_i_2_n_0\ : STD_LOGIC;
  signal \operande2_o[1]_i_2_n_0\ : STD_LOGIC;
  signal \operande2_o[2]_i_2_n_0\ : STD_LOGIC;
  signal \operande2_o[3]_i_2_n_0\ : STD_LOGIC;
  signal \operande2_o[4]_i_2_n_0\ : STD_LOGIC;
  signal \operande2_o[5]_i_2_n_0\ : STD_LOGIC;
  signal \operande2_o[6]_i_2_n_0\ : STD_LOGIC;
  signal \operande2_o[7]_i_2_n_0\ : STD_LOGIC;
  signal \operande2_o[7]_i_3_n_0\ : STD_LOGIC;
  signal \operande2_o[7]_i_4_n_0\ : STD_LOGIC;
  signal \operande2_o[7]_i_5_n_0\ : STD_LOGIC;
  signal \operande2_o[7]_i_6_n_0\ : STD_LOGIC;
  signal operande_o0_carry_n_0 : STD_LOGIC;
  signal \^operande_o_reg[4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal wr_np : STD_LOGIC;
  signal NLW_operande_o0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_operande_o0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Accu_o[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \Accu_o[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \CCR_o[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \CCR_o[0]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \PC_counter[6]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_o[7]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_o[7]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_o[7]_i_3__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \operande1_o[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \operande1_o[7]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \operande1_o[7]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \operande2_o[7]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \operande2_o[7]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \operande2_o[7]_i_6\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of operande_o0_carry : label is 35;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of operande_o0_carry : label is "SWEEP";
  attribute ADDER_THRESHOLD of \operande_o0_carry__0\ : label is 35;
  attribute OPT_MODIFIED of \operande_o0_carry__0\ : label is "SWEEP";
begin
  \FSM_onehot_state_reg[3]\ <= \^fsm_onehot_state_reg[3]\;
  \operande_o_reg[4]_0\(4 downto 0) <= \^operande_o_reg[4]_0\(4 downto 0);
\Accu_o[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CFC80C08CF08000"
    )
        port map (
      I0 => \CCR_o_reg[0]\(0),
      I1 => opcode_i(2),
      I2 => opcode_i(1),
      I3 => opcode_i(5),
      I4 => \Accu_o_reg[7]_1\(0),
      I5 => \Accu_o_reg[7]_2\(0),
      O => D(0)
    );
\Accu_o[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0FC80C0B0CC8000"
    )
        port map (
      I0 => \CCR_o_reg[0]\(1),
      I1 => opcode_i(1),
      I2 => opcode_i(2),
      I3 => opcode_i(5),
      I4 => \Accu_o_reg[7]_1\(1),
      I5 => \Accu_o_reg[7]_2\(1),
      O => D(1)
    );
\Accu_o[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0FC80C0B0CC8000"
    )
        port map (
      I0 => \CCR_o_reg[0]\(2),
      I1 => opcode_i(1),
      I2 => opcode_i(2),
      I3 => opcode_i(5),
      I4 => \Accu_o_reg[7]_1\(2),
      I5 => \Accu_o_reg[7]_2\(2),
      O => D(2)
    );
\Accu_o[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0FC80C0B0CC8000"
    )
        port map (
      I0 => \CCR_o_reg[0]\(3),
      I1 => opcode_i(1),
      I2 => opcode_i(2),
      I3 => opcode_i(5),
      I4 => \Accu_o_reg[7]_1\(3),
      I5 => \Accu_o_reg[7]_2\(3),
      O => D(3)
    );
\Accu_o[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCD8C0805450C080"
    )
        port map (
      I0 => opcode_i(5),
      I1 => opcode_i(2),
      I2 => \Accu_o_reg[7]_1\(4),
      I3 => \Accu_o_reg[7]_2\(4),
      I4 => opcode_i(1),
      I5 => \CCR_o_reg[0]\(4),
      O => D(4)
    );
\Accu_o[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B80000FCC0C0C0"
    )
        port map (
      I0 => \CCR_o_reg[0]\(5),
      I1 => opcode_i(1),
      I2 => \Accu_o_reg[7]_1\(5),
      I3 => \Accu_o_reg[7]_2\(5),
      I4 => opcode_i(2),
      I5 => opcode_i(5),
      O => D(5)
    );
\Accu_o[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B80000FCC0C0C0"
    )
        port map (
      I0 => \CCR_o_reg[0]\(6),
      I1 => opcode_i(1),
      I2 => \Accu_o_reg[7]_1\(6),
      I3 => \Accu_o_reg[7]_2\(6),
      I4 => opcode_i(2),
      I5 => opcode_i(5),
      O => D(6)
    );
\Accu_o[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2BA0000"
    )
        port map (
      I0 => opcode_i(2),
      I1 => opcode_i(5),
      I2 => opcode_i(1),
      I3 => opcode_i(0),
      I4 => Q(2),
      O => \opcode_o_reg[2]_0\(0)
    );
\Accu_o[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0000000EEAEAEAE"
    )
        port map (
      I0 => \Accu_o_reg[7]_1\(7),
      I1 => opcode_i(2),
      I2 => opcode_i(5),
      I3 => opcode_i(1),
      I4 => \CCR_o_reg[0]\(7),
      I5 => \Accu_o[7]_i_3_n_0\,
      O => D(7)
    );
\Accu_o[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFF1755"
    )
        port map (
      I0 => opcode_i(1),
      I1 => \Accu_o_reg[7]_2\(7),
      I2 => \Accu_o_reg[7]_1\(7),
      I3 => opcode_i(2),
      I4 => opcode_i(5),
      O => \Accu_o[7]_i_3_n_0\
    );
\CCR_o[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8BBB8B8B8BBBB"
    )
        port map (
      I0 => \CCR_o_reg[0]_0\,
      I1 => \CCR_o[0]_i_2_n_0\,
      I2 => \CCR_o[0]_i_3_n_0\,
      I3 => \CCR_o_reg[0]\(7),
      I4 => \CCR_o[0]_i_4_n_0\,
      I5 => opcode_i(0),
      O => CCR_i(0)
    );
\CCR_o[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB11"
    )
        port map (
      I0 => opcode_i(1),
      I1 => opcode_i(2),
      I2 => opcode_i(0),
      I3 => opcode_i(5),
      O => \CCR_o[0]_i_2_n_0\
    );
\CCR_o[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F4"
    )
        port map (
      I0 => opcode_i(5),
      I1 => opcode_i(2),
      I2 => \Accu_o_reg[7]_1\(7),
      I3 => \Accu_o[7]_i_3_n_0\,
      O => \CCR_o[0]_i_3_n_0\
    );
\CCR_o[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => opcode_i(5),
      I1 => opcode_i(1),
      I2 => opcode_i(2),
      O => \CCR_o[0]_i_4_n_0\
    );
\PC_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74777444"
    )
        port map (
      I0 => \PC_counter_reg[1]\,
      I1 => \^fsm_onehot_state_reg[3]\,
      I2 => \operande1_o_reg[7]\(0),
      I3 => \PC_counter[6]_i_3_n_0\,
      I4 => \^operande_o_reg[4]_0\(0),
      O => \p_0_in__0\(0)
    );
\PC_counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \PC_counter_reg[1]\,
      I1 => \PC_counter_reg[1]_0\,
      I2 => \^fsm_onehot_state_reg[3]\,
      I3 => \operande1_o_reg[7]\(1),
      I4 => \PC_counter[6]_i_3_n_0\,
      I5 => \^operande_o_reg[4]_0\(1),
      O => \p_0_in__0\(1)
    );
\PC_counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \PC_counter_reg[2]\,
      I1 => \PC_counter_reg[2]_0\,
      I2 => \^fsm_onehot_state_reg[3]\,
      I3 => \operande1_o_reg[7]\(2),
      I4 => \PC_counter[6]_i_3_n_0\,
      I5 => \^operande_o_reg[4]_0\(2),
      O => \p_0_in__0\(2)
    );
\PC_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => \PC_counter_reg[3]\,
      I1 => \PC_counter_reg[3]_0\,
      I2 => \^fsm_onehot_state_reg[3]\,
      I3 => \operande1_o_reg[7]\(3),
      I4 => \PC_counter[6]_i_3_n_0\,
      I5 => \^operande_o_reg[4]_0\(3),
      O => \p_0_in__0\(3)
    );
\PC_counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => \PC_counter_reg[4]\,
      I1 => \PC_counter_reg[4]_0\,
      I2 => \^fsm_onehot_state_reg[3]\,
      I3 => \operande1_o_reg[7]\(4),
      I4 => \PC_counter[6]_i_3_n_0\,
      I5 => \^operande_o_reg[4]_0\(4),
      O => \p_0_in__0\(4)
    );
\PC_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F909F9F9F909090"
    )
        port map (
      I0 => \PC_counter_reg[5]\,
      I1 => \PC_counter_reg[5]_0\,
      I2 => \^fsm_onehot_state_reg[3]\,
      I3 => \operande1_o_reg[7]\(5),
      I4 => \PC_counter[6]_i_3_n_0\,
      I5 => addr_o(5),
      O => \p_0_in__0\(5)
    );
\PC_counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F606F6F6F606060"
    )
        port map (
      I0 => \PC_counter_reg[6]\,
      I1 => \PC_counter_reg[6]_0\,
      I2 => \^fsm_onehot_state_reg[3]\,
      I3 => \operande1_o_reg[7]\(6),
      I4 => \PC_counter[6]_i_3_n_0\,
      I5 => addr_o(6),
      O => \p_0_in__0\(6)
    );
\PC_counter[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => opcode_i(2),
      I1 => opcode_i(1),
      I2 => opcode_i(0),
      I3 => opcode_i(5),
      O => \PC_counter[6]_i_3_n_0\
    );
\PC_counter[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0028AAAA"
    )
        port map (
      I0 => Q(2),
      I1 => opcode_i(0),
      I2 => \CCR_o_reg[0]_0\,
      I3 => opcode_i(1),
      I4 => opcode_i(5),
      I5 => opcode_i(2),
      O => \^fsm_onehot_state_reg[3]\
    );
\PC_counter[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => \operande1_o_reg[7]\(7),
      I1 => opcode_i(2),
      I2 => opcode_i(1),
      I3 => opcode_i(0),
      I4 => opcode_i(5),
      I5 => addr_o(7),
      O => \Accu_o_reg[7]\
    );
blocRAM_reg_0_31_0_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I1 => opcode_i(2),
      I2 => Q(2),
      I3 => opcode_i(5),
      I4 => opcode_i(0),
      I5 => opcode_i(1),
      O => p_1_in
    );
blocRAM_reg_0_31_0_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr_o(5),
      I1 => addr_o(7),
      I2 => addr_o(6),
      O => blocRAM_reg_0_31_0_0_i_2_n_0
    );
\data_o[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => opcode_i(2),
      I1 => Q(2),
      I2 => opcode_i(5),
      I3 => opcode_i(0),
      I4 => opcode_i(1),
      I5 => \data_o[7]_i_2__0_n_0\,
      O => E(0)
    );
\data_o[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => wr_np,
      I1 => \data_o[7]_i_3_n_0\,
      I2 => \^operande_o_reg[4]_0\(3),
      I3 => \^operande_o_reg[4]_0\(2),
      I4 => \^operande_o_reg[4]_0\(0),
      I5 => addr_o(5),
      O => \operande_o_reg[3]_0\(0)
    );
\data_o[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => opcode_i(1),
      I1 => opcode_i(0),
      I2 => opcode_i(5),
      I3 => Q(2),
      I4 => opcode_i(2),
      O => wr_np
    );
\data_o[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \^operande_o_reg[4]_0\(2),
      I1 => \^operande_o_reg[4]_0\(3),
      I2 => \^operande_o_reg[4]_0\(1),
      I3 => addr_o(5),
      I4 => \data_o[7]_i_3__0_n_0\,
      O => \data_o[7]_i_2__0_n_0\
    );
\data_o[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^operande_o_reg[4]_0\(4),
      I1 => \^operande_o_reg[4]_0\(1),
      I2 => addr_o(6),
      I3 => addr_o(7),
      O => \data_o[7]_i_3_n_0\
    );
\data_o[7]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^operande_o_reg[4]_0\(0),
      I1 => \^operande_o_reg[4]_0\(4),
      I2 => addr_o(6),
      I3 => addr_o(7),
      O => \data_o[7]_i_3__0_n_0\
    );
\opcode_o_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \opcode_o_reg[5]_0\,
      D => \opcode_o_reg[5]_1\(0),
      Q => opcode_i(0)
    );
\opcode_o_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \opcode_o_reg[5]_0\,
      D => \opcode_o_reg[5]_1\(1),
      Q => opcode_i(1)
    );
\opcode_o_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \opcode_o_reg[5]_0\,
      D => \opcode_o_reg[5]_1\(2),
      Q => opcode_i(2)
    );
\opcode_o_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \opcode_o_reg[5]_0\,
      D => \opcode_o_reg[5]_1\(3),
      Q => opcode_i(5)
    );
\operande1_o[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA00C"
    )
        port map (
      I0 => \^operande_o_reg[4]_0\(0),
      I1 => \operande1_o_reg[7]\(0),
      I2 => \operande1_o[7]_i_2_n_0\,
      I3 => \operande1_o[7]_i_3_n_0\,
      I4 => \operande1_o[0]_i_2_n_0\,
      O => \Accu_o_reg[7]_0\(0)
    );
\operande1_o[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande1_o[7]_i_5_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(0),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(0),
      I5 => data_o(0),
      O => \operande1_o[0]_i_2_n_0\
    );
\operande1_o[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAAEAAAE"
    )
        port map (
      I0 => \operande1_o[1]_i_2_n_0\,
      I1 => \operande1_o_reg[7]\(1),
      I2 => \operande1_o[7]_i_2_n_0\,
      I3 => \operande1_o[7]_i_3_n_0\,
      I4 => \^operande_o_reg[4]_0\(1),
      O => \Accu_o_reg[7]_0\(1)
    );
\operande1_o[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande1_o[7]_i_5_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(1),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(1),
      I5 => data_o(1),
      O => \operande1_o[1]_i_2_n_0\
    );
\operande1_o[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFC00A"
    )
        port map (
      I0 => \operande1_o_reg[7]\(2),
      I1 => \^operande_o_reg[4]_0\(2),
      I2 => \operande1_o[7]_i_2_n_0\,
      I3 => \operande1_o[7]_i_3_n_0\,
      I4 => \operande1_o[2]_i_2_n_0\,
      O => \Accu_o_reg[7]_0\(2)
    );
\operande1_o[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande1_o[7]_i_5_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(2),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(2),
      I5 => data_o(2),
      O => \operande1_o[2]_i_2_n_0\
    );
\operande1_o[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCF0F0FA"
    )
        port map (
      I0 => \operande1_o_reg[7]\(3),
      I1 => \^operande_o_reg[4]_0\(3),
      I2 => \operande1_o[3]_i_2_n_0\,
      I3 => \operande1_o[7]_i_2_n_0\,
      I4 => \operande1_o[7]_i_3_n_0\,
      O => \Accu_o_reg[7]_0\(3)
    );
\operande1_o[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande1_o[7]_i_5_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(3),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(3),
      I5 => data_o(3),
      O => \operande1_o[3]_i_2_n_0\
    );
\operande1_o[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFC00A"
    )
        port map (
      I0 => \operande1_o_reg[7]\(4),
      I1 => \^operande_o_reg[4]_0\(4),
      I2 => \operande1_o[7]_i_2_n_0\,
      I3 => \operande1_o[7]_i_3_n_0\,
      I4 => \operande1_o[4]_i_2_n_0\,
      O => \Accu_o_reg[7]_0\(4)
    );
\operande1_o[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande1_o[7]_i_5_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(4),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(4),
      I5 => data_o(4),
      O => \operande1_o[4]_i_2_n_0\
    );
\operande1_o[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EECCCCFC"
    )
        port map (
      I0 => addr_o(5),
      I1 => \operande1_o[5]_i_2_n_0\,
      I2 => \operande1_o_reg[7]\(5),
      I3 => \operande1_o[7]_i_2_n_0\,
      I4 => \operande1_o[7]_i_3_n_0\,
      O => \Accu_o_reg[7]_0\(5)
    );
\operande1_o[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande1_o[7]_i_5_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(5),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(5),
      I5 => data_o(5),
      O => \operande1_o[5]_i_2_n_0\
    );
\operande1_o[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EECCCCFC"
    )
        port map (
      I0 => addr_o(6),
      I1 => \operande1_o[6]_i_2_n_0\,
      I2 => \operande1_o_reg[7]\(6),
      I3 => \operande1_o[7]_i_2_n_0\,
      I4 => \operande1_o[7]_i_3_n_0\,
      O => \Accu_o_reg[7]_0\(6)
    );
\operande1_o[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande1_o[7]_i_5_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(6),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(6),
      I5 => data_o(6),
      O => \operande1_o[6]_i_2_n_0\
    );
\operande1_o[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFC00A"
    )
        port map (
      I0 => \operande1_o_reg[7]\(7),
      I1 => addr_o(7),
      I2 => \operande1_o[7]_i_2_n_0\,
      I3 => \operande1_o[7]_i_3_n_0\,
      I4 => \operande1_o[7]_i_4_n_0\,
      O => \Accu_o_reg[7]_0\(7)
    );
\operande1_o[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000020"
    )
        port map (
      I0 => Q(1),
      I1 => opcode_i(5),
      I2 => opcode_i(1),
      I3 => opcode_i(0),
      I4 => opcode_i(2),
      O => \operande1_o[7]_i_2_n_0\
    );
\operande1_o[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000280"
    )
        port map (
      I0 => Q(1),
      I1 => opcode_i(2),
      I2 => opcode_i(5),
      I3 => opcode_i(1),
      I4 => opcode_i(0),
      O => \operande1_o[7]_i_3_n_0\
    );
\operande1_o[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande1_o[7]_i_5_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(7),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(7),
      I5 => data_o(7),
      O => \operande1_o[7]_i_4_n_0\
    );
\operande1_o[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00082000"
    )
        port map (
      I0 => Q(1),
      I1 => opcode_i(5),
      I2 => opcode_i(1),
      I3 => opcode_i(0),
      I4 => opcode_i(2),
      O => \operande1_o[7]_i_5_n_0\
    );
\operande2_o[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F200FFFFF200F200"
    )
        port map (
      I0 => \^operande_o_reg[4]_0\(0),
      I1 => \operande2_o[7]_i_2_n_0\,
      I2 => \operande2_o[0]_i_2_n_0\,
      I3 => \operande2_o[7]_i_4_n_0\,
      I4 => \operande2_o[7]_i_5_n_0\,
      I5 => \operande1_o_reg[7]\(0),
      O => \operande_o_reg[7]_0\(0)
    );
\operande2_o[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande2_o[7]_i_6_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(0),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(0),
      I5 => data_o(0),
      O => \operande2_o[0]_i_2_n_0\
    );
\operande2_o[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F200FFFFF200F200"
    )
        port map (
      I0 => \^operande_o_reg[4]_0\(1),
      I1 => \operande2_o[7]_i_2_n_0\,
      I2 => \operande2_o[1]_i_2_n_0\,
      I3 => \operande2_o[7]_i_4_n_0\,
      I4 => \operande2_o[7]_i_5_n_0\,
      I5 => \operande1_o_reg[7]\(1),
      O => \operande_o_reg[7]_0\(1)
    );
\operande2_o[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande2_o[7]_i_6_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(1),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(1),
      I5 => data_o(1),
      O => \operande2_o[1]_i_2_n_0\
    );
\operande2_o[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F200FFFFF200F200"
    )
        port map (
      I0 => \^operande_o_reg[4]_0\(2),
      I1 => \operande2_o[7]_i_2_n_0\,
      I2 => \operande2_o[2]_i_2_n_0\,
      I3 => \operande2_o[7]_i_4_n_0\,
      I4 => \operande2_o[7]_i_5_n_0\,
      I5 => \operande1_o_reg[7]\(2),
      O => \operande_o_reg[7]_0\(2)
    );
\operande2_o[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande2_o[7]_i_6_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(2),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(2),
      I5 => data_o(2),
      O => \operande2_o[2]_i_2_n_0\
    );
\operande2_o[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F200FFFFF200F200"
    )
        port map (
      I0 => \^operande_o_reg[4]_0\(3),
      I1 => \operande2_o[7]_i_2_n_0\,
      I2 => \operande2_o[3]_i_2_n_0\,
      I3 => \operande2_o[7]_i_4_n_0\,
      I4 => \operande2_o[7]_i_5_n_0\,
      I5 => \operande1_o_reg[7]\(3),
      O => \operande_o_reg[7]_0\(3)
    );
\operande2_o[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande2_o[7]_i_6_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(3),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(3),
      I5 => data_o(3),
      O => \operande2_o[3]_i_2_n_0\
    );
\operande2_o[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F200FFFFF200F200"
    )
        port map (
      I0 => \^operande_o_reg[4]_0\(4),
      I1 => \operande2_o[7]_i_2_n_0\,
      I2 => \operande2_o[4]_i_2_n_0\,
      I3 => \operande2_o[7]_i_4_n_0\,
      I4 => \operande2_o[7]_i_5_n_0\,
      I5 => \operande1_o_reg[7]\(4),
      O => \operande_o_reg[7]_0\(4)
    );
\operande2_o[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande2_o[7]_i_6_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(4),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(4),
      I5 => data_o(4),
      O => \operande2_o[4]_i_2_n_0\
    );
\operande2_o[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F200FFFFF200F200"
    )
        port map (
      I0 => addr_o(5),
      I1 => \operande2_o[7]_i_2_n_0\,
      I2 => \operande2_o[5]_i_2_n_0\,
      I3 => \operande2_o[7]_i_4_n_0\,
      I4 => \operande2_o[7]_i_5_n_0\,
      I5 => \operande1_o_reg[7]\(5),
      O => \operande_o_reg[7]_0\(5)
    );
\operande2_o[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande2_o[7]_i_6_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(5),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(5),
      I5 => data_o(5),
      O => \operande2_o[5]_i_2_n_0\
    );
\operande2_o[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F200FFFFF200F200"
    )
        port map (
      I0 => addr_o(6),
      I1 => \operande2_o[7]_i_2_n_0\,
      I2 => \operande2_o[6]_i_2_n_0\,
      I3 => \operande2_o[7]_i_4_n_0\,
      I4 => \operande2_o[7]_i_5_n_0\,
      I5 => \operande1_o_reg[7]\(6),
      O => \operande_o_reg[7]_0\(6)
    );
\operande2_o[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande2_o[7]_i_6_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(6),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(6),
      I5 => data_o(6),
      O => \operande2_o[6]_i_2_n_0\
    );
\operande2_o[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F200FFFFF200F200"
    )
        port map (
      I0 => addr_o(7),
      I1 => \operande2_o[7]_i_2_n_0\,
      I2 => \operande2_o[7]_i_3_n_0\,
      I3 => \operande2_o[7]_i_4_n_0\,
      I4 => \operande2_o[7]_i_5_n_0\,
      I5 => \operande1_o_reg[7]\(7),
      O => \operande_o_reg[7]_0\(7)
    );
\operande2_o[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFBFFFF"
    )
        port map (
      I0 => opcode_i(0),
      I1 => opcode_i(1),
      I2 => opcode_i(5),
      I3 => opcode_i(2),
      I4 => Q(1),
      O => \operande2_o[7]_i_2_n_0\
    );
\operande2_o[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A822200020"
    )
        port map (
      I0 => \operande2_o[7]_i_6_n_0\,
      I1 => blocRAM_reg_0_31_0_0_i_2_n_0,
      I2 => port_a_i_IBUF(7),
      I3 => \data_o[7]_i_2__0_n_0\,
      I4 => port_b_i_IBUF(7),
      I5 => data_o(7),
      O => \operande2_o[7]_i_3_n_0\
    );
\operande2_o[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AA0000"
    )
        port map (
      I0 => Q(1),
      I1 => opcode_i(0),
      I2 => opcode_i(1),
      I3 => opcode_i(5),
      I4 => opcode_i(2),
      O => \operande2_o[7]_i_4_n_0\
    );
\operande2_o[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => Q(1),
      I1 => opcode_i(2),
      I2 => opcode_i(5),
      I3 => opcode_i(1),
      O => \operande2_o[7]_i_5_n_0\
    );
\operande2_o[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2082000"
    )
        port map (
      I0 => Q(1),
      I1 => opcode_i(5),
      I2 => opcode_i(1),
      I3 => opcode_i(0),
      I4 => opcode_i(2),
      O => \operande2_o[7]_i_6_n_0\
    );
operande_o0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => operande_o0_carry_n_0,
      CO(2 downto 0) => NLW_operande_o0_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => O(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\operande_o0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => operande_o0_carry_n_0,
      CO(3 downto 0) => \NLW_operande_o0_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \operande_o_reg[7]_1\(2 downto 0),
      O(3 downto 0) => \PC_counter_reg[7]\(3 downto 0),
      S(3 downto 0) => \operande_o_reg[7]_2\(3 downto 0)
    );
\operande_o_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \opcode_o_reg[5]_0\,
      D => \operande_o_reg[7]_3\(0),
      Q => \^operande_o_reg[4]_0\(0)
    );
\operande_o_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \opcode_o_reg[5]_0\,
      D => \operande_o_reg[7]_3\(1),
      Q => \^operande_o_reg[4]_0\(1)
    );
\operande_o_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \opcode_o_reg[5]_0\,
      D => \operande_o_reg[7]_3\(2),
      Q => \^operande_o_reg[4]_0\(2)
    );
\operande_o_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \opcode_o_reg[5]_0\,
      D => \operande_o_reg[7]_3\(3),
      Q => \^operande_o_reg[4]_0\(3)
    );
\operande_o_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \opcode_o_reg[5]_0\,
      D => \operande_o_reg[7]_3\(4),
      Q => \^operande_o_reg[4]_0\(4)
    );
\operande_o_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \opcode_o_reg[5]_0\,
      D => \operande_o_reg[7]_3\(5),
      Q => addr_o(5)
    );
\operande_o_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \opcode_o_reg[5]_0\,
      D => \operande_o_reg[7]_3\(6),
      Q => addr_o(6)
    );
\operande_o_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \opcode_o_reg[5]_0\,
      D => \operande_o_reg[7]_3\(7),
      Q => addr_o(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Operandes_Register is
  port (
    reset_i : out STD_LOGIC;
    \operande2_o_reg[2]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \operande1_o_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \operande2_o_reg[5]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \operande1_o_reg[7]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \operande2_o_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \operande1_o_reg[2]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \operande2_o_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \operande2_o_reg[2]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \operande1_o_reg[6]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \operande2_o_reg[4]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \operande1_o_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_i_IBUF : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \u16Alu0__60_carry__0_i_5_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \u16Alu0__60_carry__0_i_7_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \u16Alu0__60_carry__0_i_5_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \u16Alu0__60_carry__0\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \u16Alu0__60_carry__0_0\ : in STD_LOGIC;
    \operande1_o_reg[7]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_i_IBUF_BUFG : in STD_LOGIC;
    \operande2_o_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end Operandes_Register;

architecture STRUCTURE of Operandes_Register is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^operande1_o_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^operande2_o_reg[2]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^operande2_o_reg[5]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^operande2_o_reg[6]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^reset_i\ : STD_LOGIC;
  signal \u16Alu0__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \u16Alu0__0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \u16Alu0__0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \u16Alu0__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \u16Alu0__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \u16Alu0__30_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \u16Alu0__30_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \u16Alu0__30_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \u16Alu0__30_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \u16Alu0__30_carry_i_8_n_0\ : STD_LOGIC;
  signal \u16Alu0__60_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \u16Alu0__60_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \u16Alu0__60_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \u16Alu0__60_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \u16Alu0__60_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \u16Alu0__60_carry__0_i_16_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \u16Alu0__0_carry__0_i_10\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \u16Alu0__0_carry__0_i_11\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \u16Alu0__0_carry__0_i_12\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \u16Alu0__0_carry_i_8\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \u16Alu0__30_carry__0_i_10\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \u16Alu0__30_carry__0_i_11\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \u16Alu0__30_carry__0_i_12\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \u16Alu0__30_carry_i_8\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \u16Alu0__60_carry__0_i_11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \u16Alu0__60_carry__0_i_14\ : label is "soft_lutpair7";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \operande1_o_reg[7]_0\(7 downto 0) <= \^operande1_o_reg[7]_0\(7 downto 0);
  \operande2_o_reg[2]_0\(3 downto 0) <= \^operande2_o_reg[2]_0\(3 downto 0);
  \operande2_o_reg[5]_0\(3 downto 0) <= \^operande2_o_reg[5]_0\(3 downto 0);
  \operande2_o_reg[6]_0\(3 downto 0) <= \^operande2_o_reg[6]_0\(3 downto 0);
  reset_i <= \^reset_i\;
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_i_IBUF,
      O => \^reset_i\
    );
\operande1_o_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => D(0),
      Q => \^operande1_o_reg[7]_0\(0)
    );
\operande1_o_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => D(1),
      Q => \^operande1_o_reg[7]_0\(1)
    );
\operande1_o_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => D(2),
      Q => \^operande1_o_reg[7]_0\(2)
    );
\operande1_o_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => D(3),
      Q => \^operande1_o_reg[7]_0\(3)
    );
\operande1_o_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => D(4),
      Q => \^operande1_o_reg[7]_0\(4)
    );
\operande1_o_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => D(5),
      Q => \^operande1_o_reg[7]_0\(5)
    );
\operande1_o_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => D(6),
      Q => \^operande1_o_reg[7]_0\(6)
    );
\operande1_o_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => D(7),
      Q => \^operande1_o_reg[7]_0\(7)
    );
\operande2_o_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => \operande2_o_reg[7]_0\(0),
      Q => \^q\(0)
    );
\operande2_o_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => \operande2_o_reg[7]_0\(1),
      Q => \^q\(1)
    );
\operande2_o_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => \operande2_o_reg[7]_0\(2),
      Q => \^q\(2)
    );
\operande2_o_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => \operande2_o_reg[7]_0\(3),
      Q => \^q\(3)
    );
\operande2_o_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => \operande2_o_reg[7]_0\(4),
      Q => \^q\(4)
    );
\operande2_o_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => \operande2_o_reg[7]_0\(5),
      Q => \^q\(5)
    );
\operande2_o_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => \operande2_o_reg[7]_0\(6),
      Q => \^q\(6)
    );
\operande2_o_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => \operande1_o_reg[7]_2\(0),
      CLR => \^reset_i\,
      D => \operande2_o_reg[7]_0\(7),
      Q => \^q\(7)
    );
\u16Alu0__0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^operande1_o_reg[7]_0\(4),
      I2 => \^q\(1),
      I3 => \^operande1_o_reg[7]_0\(5),
      I4 => \^q\(0),
      I5 => \^operande1_o_reg[7]_0\(6),
      O => \^operande2_o_reg[2]_0\(3)
    );
\u16Alu0__0_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(5),
      I1 => \^q\(1),
      O => \u16Alu0__0_carry__0_i_10_n_0\
    );
\u16Alu0__0_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(4),
      I1 => \^q\(1),
      O => \u16Alu0__0_carry__0_i_11_n_0\
    );
\u16Alu0__0_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(3),
      I1 => \^q\(1),
      O => \u16Alu0__0_carry__0_i_12_n_0\
    );
\u16Alu0__0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^operande1_o_reg[7]_0\(3),
      I2 => \^q\(1),
      I3 => \^operande1_o_reg[7]_0\(4),
      I4 => \^q\(0),
      I5 => \^operande1_o_reg[7]_0\(5),
      O => \^operande2_o_reg[2]_0\(2)
    );
\u16Alu0__0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^operande1_o_reg[7]_0\(2),
      I2 => \^q\(1),
      I3 => \^operande1_o_reg[7]_0\(3),
      I4 => \^q\(0),
      I5 => \^operande1_o_reg[7]_0\(4),
      O => \^operande2_o_reg[2]_0\(1)
    );
\u16Alu0__0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^operande1_o_reg[7]_0\(1),
      I2 => \^q\(1),
      I3 => \^operande1_o_reg[7]_0\(2),
      I4 => \^q\(0),
      I5 => \^operande1_o_reg[7]_0\(3),
      O => \^operande2_o_reg[2]_0\(0)
    );
\u16Alu0__0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \^operande2_o_reg[2]_0\(3),
      I1 => \^q\(2),
      I2 => \^operande1_o_reg[7]_0\(5),
      I3 => \u16Alu0__0_carry__0_i_9_n_0\,
      I4 => \^q\(0),
      I5 => \^operande1_o_reg[7]_0\(7),
      O => \operande2_o_reg[2]_1\(3)
    );
\u16Alu0__0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \^operande2_o_reg[2]_0\(2),
      I1 => \^q\(2),
      I2 => \^operande1_o_reg[7]_0\(4),
      I3 => \u16Alu0__0_carry__0_i_10_n_0\,
      I4 => \^q\(0),
      I5 => \^operande1_o_reg[7]_0\(6),
      O => \operande2_o_reg[2]_1\(2)
    );
\u16Alu0__0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \^operande2_o_reg[2]_0\(1),
      I1 => \^q\(2),
      I2 => \^operande1_o_reg[7]_0\(3),
      I3 => \u16Alu0__0_carry__0_i_11_n_0\,
      I4 => \^q\(0),
      I5 => \^operande1_o_reg[7]_0\(5),
      O => \operande2_o_reg[2]_1\(1)
    );
\u16Alu0__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \^operande2_o_reg[2]_0\(0),
      I1 => \^q\(2),
      I2 => \^operande1_o_reg[7]_0\(2),
      I3 => \u16Alu0__0_carry__0_i_12_n_0\,
      I4 => \^q\(0),
      I5 => \^operande1_o_reg[7]_0\(4),
      O => \operande2_o_reg[2]_1\(0)
    );
\u16Alu0__0_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(6),
      I1 => \^q\(1),
      O => \u16Alu0__0_carry__0_i_9_n_0\
    );
\u16Alu0__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(7),
      I1 => \^q\(2),
      O => \operande1_o_reg[7]_1\(1)
    );
\u16Alu0__0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^operande1_o_reg[7]_0\(5),
      I2 => \^q\(1),
      I3 => \^operande1_o_reg[7]_0\(6),
      I4 => \^q\(0),
      I5 => \^operande1_o_reg[7]_0\(7),
      O => \operande1_o_reg[7]_1\(0)
    );
\u16Alu0__0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(6),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^operande1_o_reg[7]_0\(7),
      O => \operande1_o_reg[6]_0\(1)
    );
\u16Alu0__0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E37F70805000F000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^operande1_o_reg[7]_0\(5),
      I2 => \^operande1_o_reg[7]_0\(7),
      I3 => \^q\(1),
      I4 => \^operande1_o_reg[7]_0\(6),
      I5 => \^q\(2),
      O => \operande1_o_reg[6]_0\(0)
    );
\u16Alu0__0_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(3),
      I1 => \^q\(0),
      I2 => \^operande1_o_reg[7]_0\(2),
      I3 => \^q\(1),
      I4 => \^operande1_o_reg[7]_0\(1),
      I5 => \^q\(2),
      O => DI(2)
    );
\u16Alu0__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^operande1_o_reg[7]_0\(1),
      I2 => \^q\(2),
      I3 => \^operande1_o_reg[7]_0\(0),
      O => DI(1)
    );
\u16Alu0__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^operande1_o_reg[7]_0\(0),
      O => DI(0)
    );
\u16Alu0__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A3F953F6AC06AC0"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(2),
      I1 => \^q\(0),
      I2 => \^operande1_o_reg[7]_0\(3),
      I3 => \^q\(1),
      I4 => \^operande1_o_reg[7]_0\(0),
      I5 => \u16Alu0__0_carry_i_8_n_0\,
      O => S(3)
    );
\u16Alu0__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(0),
      I1 => \^q\(2),
      I2 => \^operande1_o_reg[7]_0\(1),
      I3 => \^q\(1),
      I4 => \^operande1_o_reg[7]_0\(2),
      I5 => \^q\(0),
      O => S(2)
    );
\u16Alu0__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(1),
      I1 => \^q\(0),
      I2 => \^operande1_o_reg[7]_0\(0),
      I3 => \^q\(1),
      O => S(1)
    );
\u16Alu0__0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^operande1_o_reg[7]_0\(0),
      O => S(0)
    );
\u16Alu0__0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(1),
      I1 => \^q\(2),
      O => \u16Alu0__0_carry_i_8_n_0\
    );
\u16Alu0__30_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^operande1_o_reg[7]_0\(4),
      I2 => \^q\(4),
      I3 => \^operande1_o_reg[7]_0\(5),
      I4 => \^operande1_o_reg[7]_0\(6),
      I5 => \^q\(3),
      O => \^operande2_o_reg[5]_0\(3)
    );
\u16Alu0__30_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(5),
      I1 => \^q\(4),
      O => \u16Alu0__30_carry__0_i_10_n_0\
    );
\u16Alu0__30_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(4),
      I1 => \^q\(4),
      O => \u16Alu0__30_carry__0_i_11_n_0\
    );
\u16Alu0__30_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(3),
      I1 => \^q\(4),
      O => \u16Alu0__30_carry__0_i_12_n_0\
    );
\u16Alu0__30_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^operande1_o_reg[7]_0\(3),
      I2 => \^q\(4),
      I3 => \^operande1_o_reg[7]_0\(4),
      I4 => \^operande1_o_reg[7]_0\(5),
      I5 => \^q\(3),
      O => \^operande2_o_reg[5]_0\(2)
    );
\u16Alu0__30_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^operande1_o_reg[7]_0\(2),
      I2 => \^q\(4),
      I3 => \^operande1_o_reg[7]_0\(3),
      I4 => \^operande1_o_reg[7]_0\(4),
      I5 => \^q\(3),
      O => \^operande2_o_reg[5]_0\(1)
    );
\u16Alu0__30_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^operande1_o_reg[7]_0\(1),
      I2 => \^q\(4),
      I3 => \^operande1_o_reg[7]_0\(2),
      I4 => \^operande1_o_reg[7]_0\(3),
      I5 => \^q\(3),
      O => \^operande2_o_reg[5]_0\(0)
    );
\u16Alu0__30_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999966696669666"
    )
        port map (
      I0 => \^operande2_o_reg[5]_0\(3),
      I1 => \u16Alu0__30_carry__0_i_9_n_0\,
      I2 => \^q\(4),
      I3 => \^operande1_o_reg[7]_0\(6),
      I4 => \^operande1_o_reg[7]_0\(7),
      I5 => \^q\(3),
      O => \operande2_o_reg[4]_0\(3)
    );
\u16Alu0__30_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \^operande2_o_reg[5]_0\(2),
      I1 => \^q\(5),
      I2 => \^operande1_o_reg[7]_0\(4),
      I3 => \u16Alu0__30_carry__0_i_10_n_0\,
      I4 => \^operande1_o_reg[7]_0\(6),
      I5 => \^q\(3),
      O => \operande2_o_reg[4]_0\(2)
    );
\u16Alu0__30_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \^operande2_o_reg[5]_0\(1),
      I1 => \^q\(5),
      I2 => \^operande1_o_reg[7]_0\(3),
      I3 => \u16Alu0__30_carry__0_i_11_n_0\,
      I4 => \^operande1_o_reg[7]_0\(5),
      I5 => \^q\(3),
      O => \operande2_o_reg[4]_0\(1)
    );
\u16Alu0__30_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \^operande2_o_reg[5]_0\(0),
      I1 => \^q\(5),
      I2 => \^operande1_o_reg[7]_0\(2),
      I3 => \u16Alu0__30_carry__0_i_12_n_0\,
      I4 => \^operande1_o_reg[7]_0\(4),
      I5 => \^q\(3),
      O => \operande2_o_reg[4]_0\(0)
    );
\u16Alu0__30_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(5),
      I1 => \^q\(5),
      O => \u16Alu0__30_carry__0_i_9_n_0\
    );
\u16Alu0__30_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^operande1_o_reg[7]_0\(3),
      I2 => \^operande1_o_reg[7]_0\(2),
      I3 => \^q\(4),
      I4 => \^operande1_o_reg[7]_0\(1),
      I5 => \^q\(5),
      O => \operande2_o_reg[3]_0\(2)
    );
\u16Alu0__30_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^operande1_o_reg[7]_0\(1),
      I2 => \^q\(5),
      I3 => \^operande1_o_reg[7]_0\(0),
      O => \operande2_o_reg[3]_0\(1)
    );
\u16Alu0__30_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(0),
      I1 => \^q\(4),
      O => \operande2_o_reg[3]_0\(0)
    );
\u16Alu0__30_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A953F3F6A6AC0C0"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(2),
      I1 => \^operande1_o_reg[7]_0\(3),
      I2 => \^q\(3),
      I3 => \^operande1_o_reg[7]_0\(0),
      I4 => \^q\(4),
      I5 => \u16Alu0__30_carry_i_8_n_0\,
      O => \operande1_o_reg[2]_0\(3)
    );
\u16Alu0__30_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(0),
      I1 => \^q\(5),
      I2 => \^operande1_o_reg[7]_0\(1),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \^operande1_o_reg[7]_0\(2),
      O => \operande1_o_reg[2]_0\(2)
    );
\u16Alu0__30_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^operande1_o_reg[7]_0\(1),
      I2 => \^q\(4),
      I3 => \^operande1_o_reg[7]_0\(0),
      O => \operande1_o_reg[2]_0\(1)
    );
\u16Alu0__30_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(0),
      I1 => \^q\(3),
      O => \operande1_o_reg[2]_0\(0)
    );
\u16Alu0__30_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^operande1_o_reg[7]_0\(1),
      I1 => \^q\(5),
      O => \u16Alu0__30_carry_i_8_n_0\
    );
\u16Alu0__60_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D540"
    )
        port map (
      I0 => \u16Alu0__60_carry__0\,
      I1 => \^q\(6),
      I2 => \^operande1_o_reg[7]_0\(3),
      I3 => \u16Alu0__60_carry__0_i_10_n_0\,
      O => \^operande2_o_reg[6]_0\(3)
    );
\u16Alu0__60_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^operande1_o_reg[7]_0\(2),
      I2 => \u16Alu0__60_carry__0_i_5_1\(1),
      I3 => \u16Alu0__60_carry__0_i_5_0\(2),
      O => \u16Alu0__60_carry__0_i_10_n_0\
    );
\u16Alu0__60_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^operande1_o_reg[7]_0\(1),
      I2 => \u16Alu0__60_carry__0_i_5_1\(0),
      I3 => \u16Alu0__60_carry__0_i_5_0\(1),
      O => \u16Alu0__60_carry__0_i_11_n_0\
    );
\u16Alu0__60_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8778788778877887"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^operande1_o_reg[7]_0\(3),
      I2 => CO(0),
      I3 => \u16Alu0__60_carry__0_i_5_0\(3),
      I4 => \^operande1_o_reg[7]_0\(4),
      I5 => \^q\(6),
      O => \u16Alu0__60_carry__0_i_13_n_0\
    );
\u16Alu0__60_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^operande1_o_reg[7]_0\(1),
      I2 => \u16Alu0__60_carry__0_i_7_0\(0),
      I3 => O(0),
      O => \u16Alu0__60_carry__0_i_14_n_0\
    );
\u16Alu0__60_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8778788778877887"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^operande1_o_reg[7]_0\(2),
      I2 => \u16Alu0__60_carry__0_i_5_1\(1),
      I3 => \u16Alu0__60_carry__0_i_5_0\(2),
      I4 => \^operande1_o_reg[7]_0\(3),
      I5 => \^q\(6),
      O => \u16Alu0__60_carry__0_i_15_n_0\
    );
\u16Alu0__60_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7887877887788778"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^operande1_o_reg[7]_0\(2),
      I2 => \u16Alu0__60_carry__0_i_5_0\(1),
      I3 => \u16Alu0__60_carry__0_i_5_1\(0),
      I4 => \^operande1_o_reg[7]_0\(1),
      I5 => \^q\(7),
      O => \u16Alu0__60_carry__0_i_16_n_0\
    );
\u16Alu0__60_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A880808080808080"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^operande1_o_reg[7]_0\(2),
      I2 => \u16Alu0__60_carry__0_i_11_n_0\,
      I3 => \^operande1_o_reg[7]_0\(1),
      I4 => \u16Alu0__60_carry__0_i_7_0\(0),
      I5 => O(0),
      O => \^operande2_o_reg[6]_0\(2)
    );
\u16Alu0__60_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"807F7F80FF00FF00"
    )
        port map (
      I0 => O(0),
      I1 => \u16Alu0__60_carry__0_i_7_0\(0),
      I2 => \^operande1_o_reg[7]_0\(1),
      I3 => \u16Alu0__60_carry__0_i_11_n_0\,
      I4 => \^operande1_o_reg[7]_0\(2),
      I5 => \^q\(6),
      O => \^operande2_o_reg[6]_0\(1)
    );
\u16Alu0__60_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^operande1_o_reg[7]_0\(0),
      I2 => O(1),
      I3 => \u16Alu0__60_carry__0_i_5_0\(0),
      O => \^operande2_o_reg[6]_0\(0)
    );
\u16Alu0__60_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80EA7F157F1580EA"
    )
        port map (
      I0 => \u16Alu0__60_carry__0_i_10_n_0\,
      I1 => \^operande1_o_reg[7]_0\(3),
      I2 => \^q\(6),
      I3 => \u16Alu0__60_carry__0\,
      I4 => \u16Alu0__60_carry__0_0\,
      I5 => \u16Alu0__60_carry__0_i_13_n_0\,
      O => \operande1_o_reg[3]_0\(3)
    );
\u16Alu0__60_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E88817771777E888"
    )
        port map (
      I0 => \u16Alu0__60_carry__0_i_14_n_0\,
      I1 => \u16Alu0__60_carry__0_i_11_n_0\,
      I2 => \^operande1_o_reg[7]_0\(2),
      I3 => \^q\(6),
      I4 => \u16Alu0__60_carry__0\,
      I5 => \u16Alu0__60_carry__0_i_15_n_0\,
      O => \operande1_o_reg[3]_0\(2)
    );
\u16Alu0__60_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999966696666666"
    )
        port map (
      I0 => \u16Alu0__60_carry__0_i_16_n_0\,
      I1 => \u16Alu0__60_carry__0_i_14_n_0\,
      I2 => \^q\(7),
      I3 => \^operande1_o_reg[7]_0\(0),
      I4 => O(1),
      I5 => \u16Alu0__60_carry__0_i_5_0\(0),
      O => \operande1_o_reg[3]_0\(1)
    );
\u16Alu0__60_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"956A6A6A"
    )
        port map (
      I0 => \^operande2_o_reg[6]_0\(0),
      I1 => O(0),
      I2 => \u16Alu0__60_carry__0_i_7_0\(0),
      I3 => \^operande1_o_reg[7]_0\(1),
      I4 => \^q\(6),
      O => \operande1_o_reg[3]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Output_Register is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_o_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_i_IBUF_BUFG : in STD_LOGIC;
    \data_o_reg[7]_1\ : in STD_LOGIC
  );
end Output_Register;

architecture STRUCTURE of Output_Register is
begin
\data_o_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[7]_1\,
      D => \data_o_reg[7]_0\(0),
      Q => Q(0)
    );
\data_o_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[7]_1\,
      D => \data_o_reg[7]_0\(1),
      Q => Q(1)
    );
\data_o_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[7]_1\,
      D => \data_o_reg[7]_0\(2),
      Q => Q(2)
    );
\data_o_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[7]_1\,
      D => \data_o_reg[7]_0\(3),
      Q => Q(3)
    );
\data_o_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[7]_1\,
      D => \data_o_reg[7]_0\(4),
      Q => Q(4)
    );
\data_o_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[7]_1\,
      D => \data_o_reg[7]_0\(5),
      Q => Q(5)
    );
\data_o_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[7]_1\,
      D => \data_o_reg[7]_0\(6),
      Q => Q(6)
    );
\data_o_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[7]_1\,
      D => \data_o_reg[7]_0\(7),
      Q => Q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Output_Register_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_o_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_i_IBUF_BUFG : in STD_LOGIC;
    \data_o_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Output_Register_0 : entity is "Output_Register";
end Output_Register_0;

architecture STRUCTURE of Output_Register_0 is
begin
\data_o_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[0]_0\,
      D => \data_o_reg[7]_0\(0),
      Q => Q(0)
    );
\data_o_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[0]_0\,
      D => \data_o_reg[7]_0\(1),
      Q => Q(1)
    );
\data_o_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[0]_0\,
      D => \data_o_reg[7]_0\(2),
      Q => Q(2)
    );
\data_o_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[0]_0\,
      D => \data_o_reg[7]_0\(3),
      Q => Q(3)
    );
\data_o_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[0]_0\,
      D => \data_o_reg[7]_0\(4),
      Q => Q(4)
    );
\data_o_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[0]_0\,
      D => \data_o_reg[7]_0\(5),
      Q => Q(5)
    );
\data_o_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[0]_0\,
      D => \data_o_reg[7]_0\(6),
      Q => Q(6)
    );
\data_o_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \data_o_reg[0]_0\,
      D => \data_o_reg[7]_0\(7),
      Q => Q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Program_Counter is
  port (
    \PC_counter_reg[7]_0\ : out STD_LOGIC;
    \PC_counter_reg[6]_0\ : out STD_LOGIC;
    \PC_counter_reg[5]_0\ : out STD_LOGIC;
    \PC_counter_reg[4]_0\ : out STD_LOGIC;
    \PC_counter_reg[3]_0\ : out STD_LOGIC;
    \PC_counter_reg[2]_0\ : out STD_LOGIC;
    \PC_counter_reg[1]_0\ : out STD_LOGIC;
    \PC_counter_reg[0]_0\ : out STD_LOGIC;
    \PC_counter_reg[7]_1\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \PC_counter_reg[7]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \PC_counter_reg[7]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \PC_counter_reg[7]_4\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \PC_counter_reg[0]_1\ : out STD_LOGIC;
    \PC_counter_reg[5]_1\ : out STD_LOGIC;
    \PC_counter_reg[3]_1\ : out STD_LOGIC;
    \PC_counter_reg[0]_2\ : out STD_LOGIC;
    \PC_counter_reg[2]_1\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \PC_counter_reg[6]_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    clk_i_IBUF_BUFG : in STD_LOGIC;
    \PC_counter_reg[0]_3\ : in STD_LOGIC;
    \operande_o_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \operande_o0_carry__0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \PC_counter_reg[7]_5\ : in STD_LOGIC;
    \PC_counter_reg[7]_6\ : in STD_LOGIC
  );
end Program_Counter;

architecture STRUCTURE of Program_Counter is
  signal \^pc_counter_reg[0]_0\ : STD_LOGIC;
  signal \^pc_counter_reg[0]_1\ : STD_LOGIC;
  signal \^pc_counter_reg[1]_0\ : STD_LOGIC;
  signal \^pc_counter_reg[2]_0\ : STD_LOGIC;
  signal \^pc_counter_reg[3]_0\ : STD_LOGIC;
  signal \^pc_counter_reg[3]_1\ : STD_LOGIC;
  signal \^pc_counter_reg[4]_0\ : STD_LOGIC;
  signal \^pc_counter_reg[5]_0\ : STD_LOGIC;
  signal \^pc_counter_reg[6]_0\ : STD_LOGIC;
  signal \^pc_counter_reg[7]_0\ : STD_LOGIC;
  signal \operande_o[7]_i_2_n_0\ : STD_LOGIC;
  signal \operande_o[7]_i_3_n_0\ : STD_LOGIC;
  signal \operande_o[7]_i_4_n_0\ : STD_LOGIC;
  signal \operande_o[7]_i_5_n_0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \PC_counter[3]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \PC_counter[4]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \PC_counter[7]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \opcode_o[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \opcode_o[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \opcode_o[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \opcode_o[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \operande_o[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \operande_o[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \operande_o[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \operande_o[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \operande_o[7]_i_5\ : label is "soft_lutpair17";
begin
  \PC_counter_reg[0]_0\ <= \^pc_counter_reg[0]_0\;
  \PC_counter_reg[0]_1\ <= \^pc_counter_reg[0]_1\;
  \PC_counter_reg[1]_0\ <= \^pc_counter_reg[1]_0\;
  \PC_counter_reg[2]_0\ <= \^pc_counter_reg[2]_0\;
  \PC_counter_reg[3]_0\ <= \^pc_counter_reg[3]_0\;
  \PC_counter_reg[3]_1\ <= \^pc_counter_reg[3]_1\;
  \PC_counter_reg[4]_0\ <= \^pc_counter_reg[4]_0\;
  \PC_counter_reg[5]_0\ <= \^pc_counter_reg[5]_0\;
  \PC_counter_reg[6]_0\ <= \^pc_counter_reg[6]_0\;
  \PC_counter_reg[7]_0\ <= \^pc_counter_reg[7]_0\;
\PC_counter[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^pc_counter_reg[0]_0\,
      I1 => \^pc_counter_reg[1]_0\,
      O => \^pc_counter_reg[0]_1\
    );
\PC_counter[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^pc_counter_reg[2]_0\,
      I1 => \^pc_counter_reg[1]_0\,
      I2 => \^pc_counter_reg[0]_0\,
      O => \PC_counter_reg[2]_1\
    );
\PC_counter[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^pc_counter_reg[0]_0\,
      I1 => \^pc_counter_reg[1]_0\,
      I2 => \^pc_counter_reg[2]_0\,
      I3 => \^pc_counter_reg[3]_0\,
      O => \PC_counter_reg[0]_2\
    );
\PC_counter[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^pc_counter_reg[5]_0\,
      I1 => \^pc_counter_reg[4]_0\,
      I2 => \^pc_counter_reg[0]_0\,
      I3 => \^pc_counter_reg[1]_0\,
      I4 => \^pc_counter_reg[2]_0\,
      I5 => \^pc_counter_reg[3]_0\,
      O => \PC_counter_reg[5]_1\
    );
\PC_counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAFFFF9AAA0000"
    )
        port map (
      I0 => \^pc_counter_reg[7]_0\,
      I1 => \^pc_counter_reg[3]_1\,
      I2 => \^pc_counter_reg[5]_0\,
      I3 => \^pc_counter_reg[6]_0\,
      I4 => \PC_counter_reg[7]_5\,
      I5 => \PC_counter_reg[7]_6\,
      O => \p_0_in__0\(7)
    );
\PC_counter[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^pc_counter_reg[3]_0\,
      I1 => \^pc_counter_reg[2]_0\,
      I2 => \^pc_counter_reg[1]_0\,
      I3 => \^pc_counter_reg[0]_0\,
      I4 => \^pc_counter_reg[4]_0\,
      O => \^pc_counter_reg[3]_1\
    );
\PC_counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \PC_counter_reg[0]_3\,
      D => \PC_counter_reg[6]_1\(0),
      Q => \^pc_counter_reg[0]_0\
    );
\PC_counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \PC_counter_reg[0]_3\,
      D => \PC_counter_reg[6]_1\(1),
      Q => \^pc_counter_reg[1]_0\
    );
\PC_counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \PC_counter_reg[0]_3\,
      D => \PC_counter_reg[6]_1\(2),
      Q => \^pc_counter_reg[2]_0\
    );
\PC_counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \PC_counter_reg[0]_3\,
      D => \PC_counter_reg[6]_1\(3),
      Q => \^pc_counter_reg[3]_0\
    );
\PC_counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \PC_counter_reg[0]_3\,
      D => \PC_counter_reg[6]_1\(4),
      Q => \^pc_counter_reg[4]_0\
    );
\PC_counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \PC_counter_reg[0]_3\,
      D => \PC_counter_reg[6]_1\(5),
      Q => \^pc_counter_reg[5]_0\
    );
\PC_counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \PC_counter_reg[0]_3\,
      D => \PC_counter_reg[6]_1\(6),
      Q => \^pc_counter_reg[6]_0\
    );
\PC_counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => Q(0),
      CLR => \PC_counter_reg[0]_3\,
      D => \p_0_in__0\(7),
      Q => \^pc_counter_reg[7]_0\
    );
\opcode_o[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^pc_counter_reg[7]_0\,
      I1 => \operande_o[7]_i_2_n_0\,
      O => \PC_counter_reg[7]_2\(0)
    );
\opcode_o[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD1"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \operande_o[7]_i_4_n_0\,
      I3 => \^pc_counter_reg[7]_0\,
      O => \PC_counter_reg[7]_2\(1)
    );
\opcode_o[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^pc_counter_reg[7]_0\,
      I1 => \operande_o[7]_i_4_n_0\,
      I2 => \operande_o[7]_i_3_n_0\,
      I3 => \operande_o[7]_i_2_n_0\,
      O => \PC_counter_reg[7]_2\(2)
    );
\opcode_o[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCF4"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \^pc_counter_reg[7]_0\,
      I3 => \operande_o[7]_i_4_n_0\,
      O => \PC_counter_reg[7]_2\(3)
    );
\operande_o0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BABB"
    )
        port map (
      I0 => \^pc_counter_reg[7]_0\,
      I1 => \operande_o[7]_i_2_n_0\,
      I2 => \operande_o[7]_i_3_n_0\,
      I3 => \operande_o[7]_i_4_n_0\,
      O => \PC_counter_reg[7]_4\(2)
    );
\operande_o0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAB"
    )
        port map (
      I0 => \^pc_counter_reg[7]_0\,
      I1 => \operande_o[7]_i_2_n_0\,
      I2 => \operande_o[7]_i_4_n_0\,
      I3 => \operande_o[7]_i_3_n_0\,
      O => \PC_counter_reg[7]_4\(1)
    );
\operande_o0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \^pc_counter_reg[7]_0\,
      O => \PC_counter_reg[7]_4\(0)
    );
\operande_o0_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F70BF4"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \^pc_counter_reg[7]_0\,
      I3 => \operande_o0_carry__0\(7),
      I4 => \operande_o[7]_i_4_n_0\,
      O => \PC_counter_reg[7]_3\(3)
    );
\operande_o0_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4454BBAB"
    )
        port map (
      I0 => \^pc_counter_reg[7]_0\,
      I1 => \operande_o[7]_i_2_n_0\,
      I2 => \operande_o[7]_i_4_n_0\,
      I3 => \operande_o[7]_i_3_n_0\,
      I4 => \operande_o0_carry__0\(6),
      O => \PC_counter_reg[7]_3\(2)
    );
\operande_o0_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4504BAFB"
    )
        port map (
      I0 => \^pc_counter_reg[7]_0\,
      I1 => \operande_o[7]_i_2_n_0\,
      I2 => \operande_o[7]_i_3_n_0\,
      I3 => \operande_o[7]_i_4_n_0\,
      I4 => \operande_o0_carry__0\(5),
      O => \PC_counter_reg[7]_3\(1)
    );
\operande_o0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF4"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \^pc_counter_reg[7]_0\,
      I3 => \operande_o0_carry__0\(4),
      O => \PC_counter_reg[7]_3\(0)
    );
operande_o0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \^pc_counter_reg[7]_0\,
      O => DI(3)
    );
operande_o0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \^pc_counter_reg[7]_0\,
      O => DI(2)
    );
operande_o0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \^pc_counter_reg[7]_0\,
      O => DI(1)
    );
operande_o0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBBA"
    )
        port map (
      I0 => \^pc_counter_reg[7]_0\,
      I1 => \operande_o[7]_i_2_n_0\,
      I2 => \operande_o[7]_i_3_n_0\,
      I3 => \operande_o[7]_i_4_n_0\,
      O => DI(0)
    );
operande_o0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF4"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \^pc_counter_reg[7]_0\,
      I3 => \operande_o0_carry__0\(3),
      O => S(3)
    );
operande_o0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF4"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \^pc_counter_reg[7]_0\,
      I3 => \operande_o0_carry__0\(2),
      O => S(2)
    );
operande_o0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF4"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \^pc_counter_reg[7]_0\,
      I3 => \operande_o0_carry__0\(1),
      O => S(1)
    );
operande_o0_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4445BBBA"
    )
        port map (
      I0 => \^pc_counter_reg[7]_0\,
      I1 => \operande_o[7]_i_2_n_0\,
      I2 => \operande_o[7]_i_4_n_0\,
      I3 => \operande_o[7]_i_3_n_0\,
      I4 => \operande_o0_carry__0\(0),
      O => S(0)
    );
\operande_o[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBABABA"
    )
        port map (
      I0 => \^pc_counter_reg[7]_0\,
      I1 => \operande_o[7]_i_2_n_0\,
      I2 => \operande_o[7]_i_4_n_0\,
      I3 => \operande_o[7]_i_3_n_0\,
      I4 => O(0),
      O => \PC_counter_reg[7]_1\(0)
    );
\operande_o[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4F4F0"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \^pc_counter_reg[7]_0\,
      I3 => \operande_o[7]_i_4_n_0\,
      I4 => O(1),
      O => \PC_counter_reg[7]_1\(1)
    );
\operande_o[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4F4F0"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \^pc_counter_reg[7]_0\,
      I3 => \operande_o[7]_i_4_n_0\,
      I4 => O(2),
      O => \PC_counter_reg[7]_1\(2)
    );
\operande_o[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4F4F0"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \^pc_counter_reg[7]_0\,
      I3 => \operande_o[7]_i_4_n_0\,
      I4 => O(3),
      O => \PC_counter_reg[7]_1\(3)
    );
\operande_o[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4F4F0"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \^pc_counter_reg[7]_0\,
      I3 => \operande_o[7]_i_4_n_0\,
      I4 => \operande_o_reg[7]\(0),
      O => \PC_counter_reg[7]_1\(4)
    );
\operande_o[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFABBEAB"
    )
        port map (
      I0 => \^pc_counter_reg[7]_0\,
      I1 => \operande_o[7]_i_2_n_0\,
      I2 => \operande_o[7]_i_4_n_0\,
      I3 => \operande_o[7]_i_3_n_0\,
      I4 => \operande_o_reg[7]\(1),
      O => \PC_counter_reg[7]_1\(5)
    );
\operande_o[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBABBAAB"
    )
        port map (
      I0 => \^pc_counter_reg[7]_0\,
      I1 => \operande_o[7]_i_2_n_0\,
      I2 => \operande_o[7]_i_4_n_0\,
      I3 => \operande_o[7]_i_3_n_0\,
      I4 => \operande_o_reg[7]\(2),
      O => \PC_counter_reg[7]_1\(6)
    );
\operande_o[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F4F7F0"
    )
        port map (
      I0 => \operande_o[7]_i_2_n_0\,
      I1 => \operande_o[7]_i_3_n_0\,
      I2 => \^pc_counter_reg[7]_0\,
      I3 => \operande_o[7]_i_4_n_0\,
      I4 => \operande_o_reg[7]\(3),
      O => \PC_counter_reg[7]_1\(7)
    );
\operande_o[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100400041004"
    )
        port map (
      I0 => \operande_o[7]_i_5_n_0\,
      I1 => \^pc_counter_reg[0]_0\,
      I2 => \^pc_counter_reg[6]_0\,
      I3 => \^pc_counter_reg[5]_0\,
      I4 => \^pc_counter_reg[2]_0\,
      I5 => \^pc_counter_reg[1]_0\,
      O => \operande_o[7]_i_2_n_0\
    );
\operande_o[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^pc_counter_reg[0]_1\,
      I1 => \^pc_counter_reg[2]_0\,
      I2 => \^pc_counter_reg[5]_0\,
      I3 => \^pc_counter_reg[6]_0\,
      I4 => \^pc_counter_reg[3]_0\,
      I5 => \^pc_counter_reg[4]_0\,
      O => \operande_o[7]_i_3_n_0\
    );
\operande_o[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFE4"
    )
        port map (
      I0 => \^pc_counter_reg[1]_0\,
      I1 => \^pc_counter_reg[0]_0\,
      I2 => \^pc_counter_reg[2]_0\,
      I3 => \operande_o[7]_i_5_n_0\,
      I4 => \^pc_counter_reg[5]_0\,
      I5 => \^pc_counter_reg[6]_0\,
      O => \operande_o[7]_i_4_n_0\
    );
\operande_o[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \^pc_counter_reg[4]_0\,
      I1 => \^pc_counter_reg[3]_0\,
      I2 => \^pc_counter_reg[0]_0\,
      I3 => \^pc_counter_reg[1]_0\,
      O => \operande_o[7]_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RAM is
  port (
    data_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_i_IBUF_BUFG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_1_in : in STD_LOGIC;
    \operande2_o[0]_i_2\ : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end RAM;

architecture STRUCTURE of RAM is
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of blocRAM_reg_0_31_0_0 : label is 256;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of blocRAM_reg_0_31_0_0 : label is "RAM_inst/blocRAM";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of blocRAM_reg_0_31_0_0 : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of blocRAM_reg_0_31_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of blocRAM_reg_0_31_0_0 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of blocRAM_reg_0_31_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of blocRAM_reg_0_31_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of blocRAM_reg_0_31_0_0 : label is 0;
  attribute RTL_RAM_BITS of blocRAM_reg_0_31_1_1 : label is 256;
  attribute RTL_RAM_NAME of blocRAM_reg_0_31_1_1 : label is "RAM_inst/blocRAM";
  attribute RTL_RAM_TYPE of blocRAM_reg_0_31_1_1 : label is "RAM_SP";
  attribute ram_addr_begin of blocRAM_reg_0_31_1_1 : label is 0;
  attribute ram_addr_end of blocRAM_reg_0_31_1_1 : label is 31;
  attribute ram_offset of blocRAM_reg_0_31_1_1 : label is 0;
  attribute ram_slice_begin of blocRAM_reg_0_31_1_1 : label is 1;
  attribute ram_slice_end of blocRAM_reg_0_31_1_1 : label is 1;
  attribute RTL_RAM_BITS of blocRAM_reg_0_31_2_2 : label is 256;
  attribute RTL_RAM_NAME of blocRAM_reg_0_31_2_2 : label is "RAM_inst/blocRAM";
  attribute RTL_RAM_TYPE of blocRAM_reg_0_31_2_2 : label is "RAM_SP";
  attribute ram_addr_begin of blocRAM_reg_0_31_2_2 : label is 0;
  attribute ram_addr_end of blocRAM_reg_0_31_2_2 : label is 31;
  attribute ram_offset of blocRAM_reg_0_31_2_2 : label is 0;
  attribute ram_slice_begin of blocRAM_reg_0_31_2_2 : label is 2;
  attribute ram_slice_end of blocRAM_reg_0_31_2_2 : label is 2;
  attribute RTL_RAM_BITS of blocRAM_reg_0_31_3_3 : label is 256;
  attribute RTL_RAM_NAME of blocRAM_reg_0_31_3_3 : label is "RAM_inst/blocRAM";
  attribute RTL_RAM_TYPE of blocRAM_reg_0_31_3_3 : label is "RAM_SP";
  attribute ram_addr_begin of blocRAM_reg_0_31_3_3 : label is 0;
  attribute ram_addr_end of blocRAM_reg_0_31_3_3 : label is 31;
  attribute ram_offset of blocRAM_reg_0_31_3_3 : label is 0;
  attribute ram_slice_begin of blocRAM_reg_0_31_3_3 : label is 3;
  attribute ram_slice_end of blocRAM_reg_0_31_3_3 : label is 3;
  attribute RTL_RAM_BITS of blocRAM_reg_0_31_4_4 : label is 256;
  attribute RTL_RAM_NAME of blocRAM_reg_0_31_4_4 : label is "RAM_inst/blocRAM";
  attribute RTL_RAM_TYPE of blocRAM_reg_0_31_4_4 : label is "RAM_SP";
  attribute ram_addr_begin of blocRAM_reg_0_31_4_4 : label is 0;
  attribute ram_addr_end of blocRAM_reg_0_31_4_4 : label is 31;
  attribute ram_offset of blocRAM_reg_0_31_4_4 : label is 0;
  attribute ram_slice_begin of blocRAM_reg_0_31_4_4 : label is 4;
  attribute ram_slice_end of blocRAM_reg_0_31_4_4 : label is 4;
  attribute RTL_RAM_BITS of blocRAM_reg_0_31_5_5 : label is 256;
  attribute RTL_RAM_NAME of blocRAM_reg_0_31_5_5 : label is "RAM_inst/blocRAM";
  attribute RTL_RAM_TYPE of blocRAM_reg_0_31_5_5 : label is "RAM_SP";
  attribute ram_addr_begin of blocRAM_reg_0_31_5_5 : label is 0;
  attribute ram_addr_end of blocRAM_reg_0_31_5_5 : label is 31;
  attribute ram_offset of blocRAM_reg_0_31_5_5 : label is 0;
  attribute ram_slice_begin of blocRAM_reg_0_31_5_5 : label is 5;
  attribute ram_slice_end of blocRAM_reg_0_31_5_5 : label is 5;
  attribute RTL_RAM_BITS of blocRAM_reg_0_31_6_6 : label is 256;
  attribute RTL_RAM_NAME of blocRAM_reg_0_31_6_6 : label is "RAM_inst/blocRAM";
  attribute RTL_RAM_TYPE of blocRAM_reg_0_31_6_6 : label is "RAM_SP";
  attribute ram_addr_begin of blocRAM_reg_0_31_6_6 : label is 0;
  attribute ram_addr_end of blocRAM_reg_0_31_6_6 : label is 31;
  attribute ram_offset of blocRAM_reg_0_31_6_6 : label is 0;
  attribute ram_slice_begin of blocRAM_reg_0_31_6_6 : label is 6;
  attribute ram_slice_end of blocRAM_reg_0_31_6_6 : label is 6;
  attribute RTL_RAM_BITS of blocRAM_reg_0_31_7_7 : label is 256;
  attribute RTL_RAM_NAME of blocRAM_reg_0_31_7_7 : label is "RAM_inst/blocRAM";
  attribute RTL_RAM_TYPE of blocRAM_reg_0_31_7_7 : label is "RAM_SP";
  attribute ram_addr_begin of blocRAM_reg_0_31_7_7 : label is 0;
  attribute ram_addr_end of blocRAM_reg_0_31_7_7 : label is 31;
  attribute ram_offset of blocRAM_reg_0_31_7_7 : label is 0;
  attribute ram_slice_begin of blocRAM_reg_0_31_7_7 : label is 7;
  attribute ram_slice_end of blocRAM_reg_0_31_7_7 : label is 7;
begin
blocRAM_reg_0_31_0_0: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \operande2_o[0]_i_2\(0),
      A1 => \operande2_o[0]_i_2\(1),
      A2 => \operande2_o[0]_i_2\(2),
      A3 => \operande2_o[0]_i_2\(3),
      A4 => \operande2_o[0]_i_2\(4),
      D => Q(0),
      O => data_o(0),
      WCLK => clk_i_IBUF_BUFG,
      WE => p_1_in
    );
blocRAM_reg_0_31_1_1: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \operande2_o[0]_i_2\(0),
      A1 => \operande2_o[0]_i_2\(1),
      A2 => \operande2_o[0]_i_2\(2),
      A3 => \operande2_o[0]_i_2\(3),
      A4 => \operande2_o[0]_i_2\(4),
      D => Q(1),
      O => data_o(1),
      WCLK => clk_i_IBUF_BUFG,
      WE => p_1_in
    );
blocRAM_reg_0_31_2_2: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \operande2_o[0]_i_2\(0),
      A1 => \operande2_o[0]_i_2\(1),
      A2 => \operande2_o[0]_i_2\(2),
      A3 => \operande2_o[0]_i_2\(3),
      A4 => \operande2_o[0]_i_2\(4),
      D => Q(2),
      O => data_o(2),
      WCLK => clk_i_IBUF_BUFG,
      WE => p_1_in
    );
blocRAM_reg_0_31_3_3: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \operande2_o[0]_i_2\(0),
      A1 => \operande2_o[0]_i_2\(1),
      A2 => \operande2_o[0]_i_2\(2),
      A3 => \operande2_o[0]_i_2\(3),
      A4 => \operande2_o[0]_i_2\(4),
      D => Q(3),
      O => data_o(3),
      WCLK => clk_i_IBUF_BUFG,
      WE => p_1_in
    );
blocRAM_reg_0_31_4_4: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \operande2_o[0]_i_2\(0),
      A1 => \operande2_o[0]_i_2\(1),
      A2 => \operande2_o[0]_i_2\(2),
      A3 => \operande2_o[0]_i_2\(3),
      A4 => \operande2_o[0]_i_2\(4),
      D => Q(4),
      O => data_o(4),
      WCLK => clk_i_IBUF_BUFG,
      WE => p_1_in
    );
blocRAM_reg_0_31_5_5: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \operande2_o[0]_i_2\(0),
      A1 => \operande2_o[0]_i_2\(1),
      A2 => \operande2_o[0]_i_2\(2),
      A3 => \operande2_o[0]_i_2\(3),
      A4 => \operande2_o[0]_i_2\(4),
      D => Q(5),
      O => data_o(5),
      WCLK => clk_i_IBUF_BUFG,
      WE => p_1_in
    );
blocRAM_reg_0_31_6_6: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \operande2_o[0]_i_2\(0),
      A1 => \operande2_o[0]_i_2\(1),
      A2 => \operande2_o[0]_i_2\(2),
      A3 => \operande2_o[0]_i_2\(3),
      A4 => \operande2_o[0]_i_2\(4),
      D => Q(6),
      O => data_o(6),
      WCLK => clk_i_IBUF_BUFG,
      WE => p_1_in
    );
blocRAM_reg_0_31_7_7: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \operande2_o[0]_i_2\(0),
      A1 => \operande2_o[0]_i_2\(1),
      A2 => \operande2_o[0]_i_2\(2),
      A3 => \operande2_o[0]_i_2\(3),
      A4 => \operande2_o[0]_i_2\(4),
      D => Q(7),
      O => data_o(7),
      WCLK => clk_i_IBUF_BUFG,
      WE => p_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Sequenceur is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_i_IBUF_BUFG : in STD_LOGIC;
    \FSM_onehot_state_reg[3]_0\ : in STD_LOGIC
  );
end Sequenceur;

architecture STRUCTURE of Sequenceur is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "sreset:0001,sir_load:0010,sir_decode:0100,sopcode_decode:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "sreset:0001,sir_load:0010,sir_decode:0100,sopcode_decode:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "sreset:0001,sir_load:0010,sir_decode:0100,sopcode_decode:1000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "sreset:0001,sir_load:0010,sir_decode:0100,sopcode_decode:1000";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      D => '0',
      PRE => \FSM_onehot_state_reg[3]_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => \FSM_onehot_state_reg[3]_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \^q\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => \FSM_onehot_state_reg[3]_0\,
      D => \^q\(0),
      Q => \^q\(1)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => \FSM_onehot_state_reg[3]_0\,
      D => \^q\(1),
      Q => \^q\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Status_Register is
  port (
    \CCR_o_reg[0]_0\ : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CCR_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_i_IBUF_BUFG : in STD_LOGIC;
    \CCR_o_reg[0]_1\ : in STD_LOGIC
  );
end Status_Register;

architecture STRUCTURE of Status_Register is
begin
\CCR_o_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \CCR_o_reg[0]_1\,
      D => CCR_i(0),
      Q => \CCR_o_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity W_Register is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_i_IBUF_BUFG : in STD_LOGIC;
    \Accu_o_reg[7]_0\ : in STD_LOGIC
  );
end W_Register;

architecture STRUCTURE of W_Register is
begin
\Accu_o_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \Accu_o_reg[7]_0\,
      D => D(0),
      Q => Q(0)
    );
\Accu_o_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \Accu_o_reg[7]_0\,
      D => D(1),
      Q => Q(1)
    );
\Accu_o_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \Accu_o_reg[7]_0\,
      D => D(2),
      Q => Q(2)
    );
\Accu_o_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \Accu_o_reg[7]_0\,
      D => D(3),
      Q => Q(3)
    );
\Accu_o_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \Accu_o_reg[7]_0\,
      D => D(4),
      Q => Q(4)
    );
\Accu_o_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \Accu_o_reg[7]_0\,
      D => D(5),
      Q => Q(5)
    );
\Accu_o_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \Accu_o_reg[7]_0\,
      D => D(6),
      Q => Q(6)
    );
\Accu_o_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => E(0),
      CLR => \Accu_o_reg[7]_0\,
      D => D(7),
      Q => Q(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nanoProcesseur is
  port (
    reset_i : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    PCounter_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \operande_o_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \operande_o_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_i_IBUF_BUFG : in STD_LOGIC;
    reset_i_IBUF : in STD_LOGIC;
    port_a_i_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    port_b_i_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_o : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end nanoProcesseur;

architecture STRUCTURE of nanoProcesseur is
  signal ALU_inst_n_10 : STD_LOGIC;
  signal ALU_inst_n_11 : STD_LOGIC;
  signal ALU_inst_n_12 : STD_LOGIC;
  signal ALU_inst_n_13 : STD_LOGIC;
  signal ALU_inst_n_14 : STD_LOGIC;
  signal ALU_inst_n_15 : STD_LOGIC;
  signal ALU_inst_n_16 : STD_LOGIC;
  signal ALU_inst_n_17 : STD_LOGIC;
  signal ALU_inst_n_18 : STD_LOGIC;
  signal ALU_inst_n_19 : STD_LOGIC;
  signal ALU_inst_n_8 : STD_LOGIC;
  signal ALU_inst_n_9 : STD_LOGIC;
  signal Accu_load_o : STD_LOGIC;
  signal CCR_i : STD_LOGIC_VECTOR ( 0 to 0 );
  signal IR_i : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal IR_inst_n_0 : STD_LOGIC;
  signal IR_inst_n_1 : STD_LOGIC;
  signal IR_inst_n_10 : STD_LOGIC;
  signal IR_inst_n_11 : STD_LOGIC;
  signal IR_inst_n_12 : STD_LOGIC;
  signal IR_inst_n_13 : STD_LOGIC;
  signal IR_inst_n_14 : STD_LOGIC;
  signal IR_inst_n_15 : STD_LOGIC;
  signal IR_inst_n_16 : STD_LOGIC;
  signal IR_inst_n_2 : STD_LOGIC;
  signal IR_inst_n_3 : STD_LOGIC;
  signal IR_inst_n_4 : STD_LOGIC;
  signal IR_inst_n_41 : STD_LOGIC;
  signal IR_inst_n_42 : STD_LOGIC;
  signal IR_inst_n_5 : STD_LOGIC;
  signal IR_inst_n_6 : STD_LOGIC;
  signal IR_inst_n_7 : STD_LOGIC;
  signal IR_inst_n_9 : STD_LOGIC;
  signal IR_load_o : STD_LOGIC;
  signal \OM_inst/oper1_o\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal OR_inst_n_1 : STD_LOGIC;
  signal OR_inst_n_2 : STD_LOGIC;
  signal OR_inst_n_21 : STD_LOGIC;
  signal OR_inst_n_22 : STD_LOGIC;
  signal OR_inst_n_23 : STD_LOGIC;
  signal OR_inst_n_24 : STD_LOGIC;
  signal OR_inst_n_25 : STD_LOGIC;
  signal OR_inst_n_26 : STD_LOGIC;
  signal OR_inst_n_27 : STD_LOGIC;
  signal OR_inst_n_28 : STD_LOGIC;
  signal OR_inst_n_29 : STD_LOGIC;
  signal OR_inst_n_3 : STD_LOGIC;
  signal OR_inst_n_30 : STD_LOGIC;
  signal OR_inst_n_31 : STD_LOGIC;
  signal OR_inst_n_32 : STD_LOGIC;
  signal OR_inst_n_33 : STD_LOGIC;
  signal OR_inst_n_34 : STD_LOGIC;
  signal OR_inst_n_35 : STD_LOGIC;
  signal OR_inst_n_36 : STD_LOGIC;
  signal OR_inst_n_37 : STD_LOGIC;
  signal OR_inst_n_38 : STD_LOGIC;
  signal OR_inst_n_39 : STD_LOGIC;
  signal OR_inst_n_4 : STD_LOGIC;
  signal OR_inst_n_40 : STD_LOGIC;
  signal OR_inst_n_41 : STD_LOGIC;
  signal OR_inst_n_42 : STD_LOGIC;
  signal OR_inst_n_43 : STD_LOGIC;
  signal OR_inst_n_44 : STD_LOGIC;
  signal OR_inst_n_45 : STD_LOGIC;
  signal OR_inst_n_46 : STD_LOGIC;
  signal OR_inst_n_47 : STD_LOGIC;
  signal OR_inst_n_48 : STD_LOGIC;
  signal OR_inst_n_49 : STD_LOGIC;
  signal OR_inst_n_50 : STD_LOGIC;
  signal OR_inst_n_51 : STD_LOGIC;
  signal OR_inst_n_52 : STD_LOGIC;
  signal OR_inst_n_53 : STD_LOGIC;
  signal OR_inst_n_54 : STD_LOGIC;
  signal OR_inst_n_55 : STD_LOGIC;
  signal OR_inst_n_56 : STD_LOGIC;
  signal OR_inst_n_57 : STD_LOGIC;
  signal OR_inst_n_58 : STD_LOGIC;
  signal PC_inst_n_17 : STD_LOGIC;
  signal PC_inst_n_18 : STD_LOGIC;
  signal PC_inst_n_19 : STD_LOGIC;
  signal PC_inst_n_20 : STD_LOGIC;
  signal PC_inst_n_21 : STD_LOGIC;
  signal PC_inst_n_22 : STD_LOGIC;
  signal PC_inst_n_23 : STD_LOGIC;
  signal PC_inst_n_24 : STD_LOGIC;
  signal PC_inst_n_25 : STD_LOGIC;
  signal PC_inst_n_26 : STD_LOGIC;
  signal PC_inst_n_27 : STD_LOGIC;
  signal PC_inst_n_30 : STD_LOGIC;
  signal PC_inst_n_31 : STD_LOGIC;
  signal PC_inst_n_32 : STD_LOGIC;
  signal PC_inst_n_33 : STD_LOGIC;
  signal PC_inst_n_35 : STD_LOGIC;
  signal PC_inst_n_36 : STD_LOGIC;
  signal PC_inst_n_37 : STD_LOGIC;
  signal PC_inst_n_38 : STD_LOGIC;
  signal PC_inst_n_39 : STD_LOGIC;
  signal PC_load_o : STD_LOGIC;
  signal \^pcounter_o\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SR_inst_n_0 : STD_LOGIC;
  signal data11 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal oper2_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal oper_load_o : STD_LOGIC;
  signal operande1_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal operande2_i : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal operande_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \^reset_i\ : STD_LOGIC;
begin
  PCounter_o(7 downto 0) <= \^pcounter_o\(7 downto 0);
  Q(7 downto 0) <= \^q\(7 downto 0);
  reset_i <= \^reset_i\;
ALU_inst: entity work.ALU
     port map (
      \Accu_o[3]_i_2_0\(2) => OR_inst_n_30,
      \Accu_o[3]_i_2_0\(1) => OR_inst_n_31,
      \Accu_o[3]_i_2_0\(0) => OR_inst_n_32,
      \Accu_o[3]_i_2_1\(3) => OR_inst_n_33,
      \Accu_o[3]_i_2_1\(2) => OR_inst_n_34,
      \Accu_o[3]_i_2_1\(1) => OR_inst_n_35,
      \Accu_o[3]_i_2_1\(0) => OR_inst_n_36,
      \CCR_o_reg[0]\(3) => OR_inst_n_37,
      \CCR_o_reg[0]\(2) => OR_inst_n_38,
      \CCR_o_reg[0]\(1) => OR_inst_n_39,
      \CCR_o_reg[0]\(0) => OR_inst_n_40,
      \CCR_o_reg[0]_0\(3) => OR_inst_n_55,
      \CCR_o_reg[0]_0\(2) => OR_inst_n_56,
      \CCR_o_reg[0]_0\(1) => OR_inst_n_57,
      \CCR_o_reg[0]_0\(0) => OR_inst_n_58,
      CO(0) => ALU_inst_n_10,
      DI(2) => OR_inst_n_25,
      DI(1) => OR_inst_n_26,
      DI(0) => OR_inst_n_27,
      O(1) => ALU_inst_n_8,
      O(0) => ALU_inst_n_9,
      Q(2 downto 0) => operande1_i(2 downto 0),
      S(3) => OR_inst_n_41,
      S(2) => OR_inst_n_42,
      S(1) => OR_inst_n_43,
      S(0) => OR_inst_n_44,
      \operande1_o_reg[1]\ => ALU_inst_n_18,
      \operande1_o_reg[2]\ => ALU_inst_n_19,
      \operande1_o_reg[7]\(1) => ALU_inst_n_11,
      \operande1_o_reg[7]\(0) => ALU_inst_n_12,
      \operande2_o_reg[3]\(0) => ALU_inst_n_13,
      \operande2_o_reg[5]\(3) => ALU_inst_n_14,
      \operande2_o_reg[5]\(2) => ALU_inst_n_15,
      \operande2_o_reg[5]\(1) => ALU_inst_n_16,
      \operande2_o_reg[5]\(0) => ALU_inst_n_17,
      \operande2_o_reg[6]\(7 downto 0) => data11(7 downto 0),
      \u16Alu0__60_carry_0\(3) => OR_inst_n_1,
      \u16Alu0__60_carry_0\(2) => OR_inst_n_2,
      \u16Alu0__60_carry_0\(1) => OR_inst_n_3,
      \u16Alu0__60_carry_0\(0) => OR_inst_n_4,
      \u16Alu0__60_carry_1\(3) => OR_inst_n_45,
      \u16Alu0__60_carry_1\(2) => OR_inst_n_46,
      \u16Alu0__60_carry_1\(1) => OR_inst_n_47,
      \u16Alu0__60_carry_1\(0) => OR_inst_n_48,
      \u16Alu0__60_carry__0_i_11\(1) => OR_inst_n_28,
      \u16Alu0__60_carry__0_i_11\(0) => OR_inst_n_29,
      \u16Alu0__60_carry__0_i_11_0\(1) => OR_inst_n_49,
      \u16Alu0__60_carry__0_i_11_0\(0) => OR_inst_n_50,
      \u16Alu0__60_carry__0_i_4\(3) => OR_inst_n_21,
      \u16Alu0__60_carry__0_i_4\(2) => OR_inst_n_22,
      \u16Alu0__60_carry__0_i_4\(1) => OR_inst_n_23,
      \u16Alu0__60_carry__0_i_4\(0) => OR_inst_n_24,
      \u16Alu0__60_carry__0_i_4_0\(3) => OR_inst_n_51,
      \u16Alu0__60_carry__0_i_4_0\(2) => OR_inst_n_52,
      \u16Alu0__60_carry__0_i_4_0\(1) => OR_inst_n_53,
      \u16Alu0__60_carry__0_i_4_0\(0) => OR_inst_n_54,
      \u16Alu0__60_carry__0_i_5\(1 downto 0) => operande2_i(7 downto 6)
    );
IR_inst: entity work.Instruction_Register
     port map (
      \Accu_o_reg[7]\ => IR_inst_n_42,
      \Accu_o_reg[7]_0\(7 downto 0) => \OM_inst/oper1_o\(7 downto 0),
      \Accu_o_reg[7]_1\(7 downto 0) => operande1_i(7 downto 0),
      \Accu_o_reg[7]_2\(7 downto 0) => operande2_i(7 downto 0),
      CCR_i(0) => CCR_i(0),
      \CCR_o_reg[0]\(7 downto 0) => data11(7 downto 0),
      \CCR_o_reg[0]_0\ => SR_inst_n_0,
      D(7) => IR_inst_n_9,
      D(6) => IR_inst_n_10,
      D(5) => IR_inst_n_11,
      D(4) => IR_inst_n_12,
      D(3) => IR_inst_n_13,
      D(2) => IR_inst_n_14,
      D(1) => IR_inst_n_15,
      D(0) => IR_inst_n_16,
      DI(3) => PC_inst_n_31,
      DI(2) => PC_inst_n_32,
      DI(1) => PC_inst_n_33,
      DI(0) => IR_i(0),
      E(0) => E(0),
      \FSM_onehot_state_reg[3]\ => IR_inst_n_41,
      O(3) => IR_inst_n_0,
      O(2) => IR_inst_n_1,
      O(1) => IR_inst_n_2,
      O(0) => IR_inst_n_3,
      \PC_counter_reg[1]\ => \^pcounter_o\(0),
      \PC_counter_reg[1]_0\ => \^pcounter_o\(1),
      \PC_counter_reg[2]\ => \^pcounter_o\(2),
      \PC_counter_reg[2]_0\ => PC_inst_n_35,
      \PC_counter_reg[3]\ => \^pcounter_o\(3),
      \PC_counter_reg[3]_0\ => PC_inst_n_39,
      \PC_counter_reg[4]\ => \^pcounter_o\(4),
      \PC_counter_reg[4]_0\ => PC_inst_n_38,
      \PC_counter_reg[5]\ => PC_inst_n_37,
      \PC_counter_reg[5]_0\ => \^pcounter_o\(5),
      \PC_counter_reg[6]\ => \^pcounter_o\(6),
      \PC_counter_reg[6]_0\ => PC_inst_n_36,
      \PC_counter_reg[7]\(3) => IR_inst_n_4,
      \PC_counter_reg[7]\(2) => IR_inst_n_5,
      \PC_counter_reg[7]\(1) => IR_inst_n_6,
      \PC_counter_reg[7]\(0) => IR_inst_n_7,
      Q(2) => PC_load_o,
      Q(1) => oper_load_o,
      Q(0) => IR_load_o,
      S(3) => PC_inst_n_24,
      S(2) => PC_inst_n_25,
      S(1) => PC_inst_n_26,
      S(0) => PC_inst_n_27,
      clk_i_IBUF_BUFG => clk_i_IBUF_BUFG,
      data_o(7 downto 0) => data_o(7 downto 0),
      \opcode_o_reg[2]_0\(0) => Accu_load_o,
      \opcode_o_reg[5]_0\ => \^reset_i\,
      \opcode_o_reg[5]_1\(3) => p_0_in0,
      \opcode_o_reg[5]_1\(2) => PC_inst_n_17,
      \opcode_o_reg[5]_1\(1) => PC_inst_n_18,
      \opcode_o_reg[5]_1\(0) => PC_inst_n_19,
      \operande1_o_reg[7]\(7 downto 0) => \^q\(7 downto 0),
      \operande_o_reg[3]_0\(0) => \operande_o_reg[3]\(0),
      \operande_o_reg[4]_0\(4 downto 0) => \operande_o_reg[4]\(4 downto 0),
      \operande_o_reg[7]_0\(7 downto 0) => oper2_i(7 downto 0),
      \operande_o_reg[7]_1\(2 downto 1) => IR_i(6 downto 5),
      \operande_o_reg[7]_1\(0) => PC_inst_n_30,
      \operande_o_reg[7]_2\(3) => PC_inst_n_20,
      \operande_o_reg[7]_2\(2) => PC_inst_n_21,
      \operande_o_reg[7]_2\(1) => PC_inst_n_22,
      \operande_o_reg[7]_2\(0) => PC_inst_n_23,
      \operande_o_reg[7]_3\(7 downto 0) => operande_o(7 downto 0),
      \p_0_in__0\(6 downto 0) => \p_0_in__0\(6 downto 0),
      p_1_in => p_1_in,
      port_a_i_IBUF(7 downto 0) => port_a_i_IBUF(7 downto 0),
      port_b_i_IBUF(7 downto 0) => port_b_i_IBUF(7 downto 0)
    );
OR_inst: entity work.Operandes_Register
     port map (
      CO(0) => ALU_inst_n_10,
      D(7 downto 0) => \OM_inst/oper1_o\(7 downto 0),
      DI(2) => OR_inst_n_25,
      DI(1) => OR_inst_n_26,
      DI(0) => OR_inst_n_27,
      O(1) => ALU_inst_n_8,
      O(0) => ALU_inst_n_9,
      Q(7 downto 0) => operande2_i(7 downto 0),
      S(3) => OR_inst_n_41,
      S(2) => OR_inst_n_42,
      S(1) => OR_inst_n_43,
      S(0) => OR_inst_n_44,
      clk_i_IBUF_BUFG => clk_i_IBUF_BUFG,
      \operande1_o_reg[2]_0\(3) => OR_inst_n_33,
      \operande1_o_reg[2]_0\(2) => OR_inst_n_34,
      \operande1_o_reg[2]_0\(1) => OR_inst_n_35,
      \operande1_o_reg[2]_0\(0) => OR_inst_n_36,
      \operande1_o_reg[3]_0\(3) => OR_inst_n_55,
      \operande1_o_reg[3]_0\(2) => OR_inst_n_56,
      \operande1_o_reg[3]_0\(1) => OR_inst_n_57,
      \operande1_o_reg[3]_0\(0) => OR_inst_n_58,
      \operande1_o_reg[6]_0\(1) => OR_inst_n_49,
      \operande1_o_reg[6]_0\(0) => OR_inst_n_50,
      \operande1_o_reg[7]_0\(7 downto 0) => operande1_i(7 downto 0),
      \operande1_o_reg[7]_1\(1) => OR_inst_n_28,
      \operande1_o_reg[7]_1\(0) => OR_inst_n_29,
      \operande1_o_reg[7]_2\(0) => oper_load_o,
      \operande2_o_reg[2]_0\(3) => OR_inst_n_1,
      \operande2_o_reg[2]_0\(2) => OR_inst_n_2,
      \operande2_o_reg[2]_0\(1) => OR_inst_n_3,
      \operande2_o_reg[2]_0\(0) => OR_inst_n_4,
      \operande2_o_reg[2]_1\(3) => OR_inst_n_45,
      \operande2_o_reg[2]_1\(2) => OR_inst_n_46,
      \operande2_o_reg[2]_1\(1) => OR_inst_n_47,
      \operande2_o_reg[2]_1\(0) => OR_inst_n_48,
      \operande2_o_reg[3]_0\(2) => OR_inst_n_30,
      \operande2_o_reg[3]_0\(1) => OR_inst_n_31,
      \operande2_o_reg[3]_0\(0) => OR_inst_n_32,
      \operande2_o_reg[4]_0\(3) => OR_inst_n_51,
      \operande2_o_reg[4]_0\(2) => OR_inst_n_52,
      \operande2_o_reg[4]_0\(1) => OR_inst_n_53,
      \operande2_o_reg[4]_0\(0) => OR_inst_n_54,
      \operande2_o_reg[5]_0\(3) => OR_inst_n_21,
      \operande2_o_reg[5]_0\(2) => OR_inst_n_22,
      \operande2_o_reg[5]_0\(1) => OR_inst_n_23,
      \operande2_o_reg[5]_0\(0) => OR_inst_n_24,
      \operande2_o_reg[6]_0\(3) => OR_inst_n_37,
      \operande2_o_reg[6]_0\(2) => OR_inst_n_38,
      \operande2_o_reg[6]_0\(1) => OR_inst_n_39,
      \operande2_o_reg[6]_0\(0) => OR_inst_n_40,
      \operande2_o_reg[7]_0\(7 downto 0) => oper2_i(7 downto 0),
      reset_i => \^reset_i\,
      reset_i_IBUF => reset_i_IBUF,
      \u16Alu0__60_carry__0\ => ALU_inst_n_18,
      \u16Alu0__60_carry__0_0\ => ALU_inst_n_19,
      \u16Alu0__60_carry__0_i_5_0\(3) => ALU_inst_n_14,
      \u16Alu0__60_carry__0_i_5_0\(2) => ALU_inst_n_15,
      \u16Alu0__60_carry__0_i_5_0\(1) => ALU_inst_n_16,
      \u16Alu0__60_carry__0_i_5_0\(0) => ALU_inst_n_17,
      \u16Alu0__60_carry__0_i_5_1\(1) => ALU_inst_n_11,
      \u16Alu0__60_carry__0_i_5_1\(0) => ALU_inst_n_12,
      \u16Alu0__60_carry__0_i_7_0\(0) => ALU_inst_n_13
    );
PC_inst: entity work.Program_Counter
     port map (
      DI(3) => PC_inst_n_31,
      DI(2) => PC_inst_n_32,
      DI(1) => PC_inst_n_33,
      DI(0) => IR_i(0),
      O(3) => IR_inst_n_0,
      O(2) => IR_inst_n_1,
      O(1) => IR_inst_n_2,
      O(0) => IR_inst_n_3,
      \PC_counter_reg[0]_0\ => \^pcounter_o\(0),
      \PC_counter_reg[0]_1\ => PC_inst_n_35,
      \PC_counter_reg[0]_2\ => PC_inst_n_38,
      \PC_counter_reg[0]_3\ => \^reset_i\,
      \PC_counter_reg[1]_0\ => \^pcounter_o\(1),
      \PC_counter_reg[2]_0\ => \^pcounter_o\(2),
      \PC_counter_reg[2]_1\ => PC_inst_n_39,
      \PC_counter_reg[3]_0\ => \^pcounter_o\(3),
      \PC_counter_reg[3]_1\ => PC_inst_n_37,
      \PC_counter_reg[4]_0\ => \^pcounter_o\(4),
      \PC_counter_reg[5]_0\ => \^pcounter_o\(5),
      \PC_counter_reg[5]_1\ => PC_inst_n_36,
      \PC_counter_reg[6]_0\ => \^pcounter_o\(6),
      \PC_counter_reg[6]_1\(6 downto 0) => \p_0_in__0\(6 downto 0),
      \PC_counter_reg[7]_0\ => \^pcounter_o\(7),
      \PC_counter_reg[7]_1\(7 downto 0) => operande_o(7 downto 0),
      \PC_counter_reg[7]_2\(3) => p_0_in0,
      \PC_counter_reg[7]_2\(2) => PC_inst_n_17,
      \PC_counter_reg[7]_2\(1) => PC_inst_n_18,
      \PC_counter_reg[7]_2\(0) => PC_inst_n_19,
      \PC_counter_reg[7]_3\(3) => PC_inst_n_20,
      \PC_counter_reg[7]_3\(2) => PC_inst_n_21,
      \PC_counter_reg[7]_3\(1) => PC_inst_n_22,
      \PC_counter_reg[7]_3\(0) => PC_inst_n_23,
      \PC_counter_reg[7]_4\(2 downto 1) => IR_i(6 downto 5),
      \PC_counter_reg[7]_4\(0) => PC_inst_n_30,
      \PC_counter_reg[7]_5\ => IR_inst_n_41,
      \PC_counter_reg[7]_6\ => IR_inst_n_42,
      Q(0) => PC_load_o,
      S(3) => PC_inst_n_24,
      S(2) => PC_inst_n_25,
      S(1) => PC_inst_n_26,
      S(0) => PC_inst_n_27,
      clk_i_IBUF_BUFG => clk_i_IBUF_BUFG,
      \operande_o0_carry__0\(7 downto 0) => \^q\(7 downto 0),
      \operande_o_reg[7]\(3) => IR_inst_n_4,
      \operande_o_reg[7]\(2) => IR_inst_n_5,
      \operande_o_reg[7]\(1) => IR_inst_n_6,
      \operande_o_reg[7]\(0) => IR_inst_n_7
    );
SR_inst: entity work.Status_Register
     port map (
      CCR_i(0) => CCR_i(0),
      \CCR_o_reg[0]_0\ => SR_inst_n_0,
      \CCR_o_reg[0]_1\ => \^reset_i\,
      E(0) => Accu_load_o,
      clk_i_IBUF_BUFG => clk_i_IBUF_BUFG
    );
Seq_inst: entity work.Sequenceur
     port map (
      \FSM_onehot_state_reg[3]_0\ => \^reset_i\,
      Q(2) => PC_load_o,
      Q(1) => oper_load_o,
      Q(0) => IR_load_o,
      clk_i_IBUF_BUFG => clk_i_IBUF_BUFG
    );
WR_inst: entity work.W_Register
     port map (
      \Accu_o_reg[7]_0\ => \^reset_i\,
      D(7) => IR_inst_n_9,
      D(6) => IR_inst_n_10,
      D(5) => IR_inst_n_11,
      D(4) => IR_inst_n_12,
      D(3) => IR_inst_n_13,
      D(2) => IR_inst_n_14,
      D(1) => IR_inst_n_15,
      D(0) => IR_inst_n_16,
      E(0) => Accu_load_o,
      Q(7 downto 0) => \^q\(7 downto 0),
      clk_i_IBUF_BUFG => clk_i_IBUF_BUFG
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity nanoControleur is
  port (
    clk_i : in STD_LOGIC;
    reset_i : in STD_LOGIC;
    port_a_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    port_a_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    port_b_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    port_b_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PCounter_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of nanoControleur : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of nanoControleur : entity is "2b0d8997";
end nanoControleur;

architecture STRUCTURE of nanoControleur is
  signal Accu_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal PCounter_o_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_i_IBUF : STD_LOGIC;
  signal clk_i_IBUF_BUFG : STD_LOGIC;
  signal data_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal nPr_inst_n_0 : STD_LOGIC;
  signal nPr_inst_n_18 : STD_LOGIC;
  signal nPr_inst_n_19 : STD_LOGIC;
  signal nPr_inst_n_20 : STD_LOGIC;
  signal nPr_inst_n_21 : STD_LOGIC;
  signal nPr_inst_n_22 : STD_LOGIC;
  signal nPr_inst_n_24 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal port_a_i_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal port_a_o_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal port_b_i_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal port_b_o_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reset_i_IBUF : STD_LOGIC;
begin
\PCounter_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PCounter_o_OBUF(0),
      O => PCounter_o(0)
    );
\PCounter_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PCounter_o_OBUF(1),
      O => PCounter_o(1)
    );
\PCounter_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PCounter_o_OBUF(2),
      O => PCounter_o(2)
    );
\PCounter_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PCounter_o_OBUF(3),
      O => PCounter_o(3)
    );
\PCounter_o_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PCounter_o_OBUF(4),
      O => PCounter_o(4)
    );
\PCounter_o_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PCounter_o_OBUF(5),
      O => PCounter_o(5)
    );
\PCounter_o_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PCounter_o_OBUF(6),
      O => PCounter_o(6)
    );
\PCounter_o_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => PCounter_o_OBUF(7),
      O => PCounter_o(7)
    );
Port_a_Out_inst: entity work.Output_Register
     port map (
      E(0) => p_0_in,
      Q(7 downto 0) => port_a_o_OBUF(7 downto 0),
      clk_i_IBUF_BUFG => clk_i_IBUF_BUFG,
      \data_o_reg[7]_0\(7 downto 0) => Accu_o(7 downto 0),
      \data_o_reg[7]_1\ => nPr_inst_n_0
    );
Port_b_Out_inst: entity work.Output_Register_0
     port map (
      E(0) => nPr_inst_n_24,
      Q(7 downto 0) => port_b_o_OBUF(7 downto 0),
      clk_i_IBUF_BUFG => clk_i_IBUF_BUFG,
      \data_o_reg[0]_0\ => nPr_inst_n_0,
      \data_o_reg[7]_0\(7 downto 0) => Accu_o(7 downto 0)
    );
RAM_inst: entity work.RAM
     port map (
      Q(7 downto 0) => Accu_o(7 downto 0),
      clk_i_IBUF_BUFG => clk_i_IBUF_BUFG,
      data_o(7 downto 0) => data_o(7 downto 0),
      \operande2_o[0]_i_2\(4) => nPr_inst_n_18,
      \operande2_o[0]_i_2\(3) => nPr_inst_n_19,
      \operande2_o[0]_i_2\(2) => nPr_inst_n_20,
      \operande2_o[0]_i_2\(1) => nPr_inst_n_21,
      \operande2_o[0]_i_2\(0) => nPr_inst_n_22,
      p_1_in => p_1_in
    );
clk_i_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_i_IBUF,
      O => clk_i_IBUF_BUFG
    );
clk_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_i,
      O => clk_i_IBUF
    );
nPr_inst: entity work.nanoProcesseur
     port map (
      E(0) => p_0_in,
      PCounter_o(7 downto 0) => PCounter_o_OBUF(7 downto 0),
      Q(7 downto 0) => Accu_o(7 downto 0),
      clk_i_IBUF_BUFG => clk_i_IBUF_BUFG,
      data_o(7 downto 0) => data_o(7 downto 0),
      \operande_o_reg[3]\(0) => nPr_inst_n_24,
      \operande_o_reg[4]\(4) => nPr_inst_n_18,
      \operande_o_reg[4]\(3) => nPr_inst_n_19,
      \operande_o_reg[4]\(2) => nPr_inst_n_20,
      \operande_o_reg[4]\(1) => nPr_inst_n_21,
      \operande_o_reg[4]\(0) => nPr_inst_n_22,
      p_1_in => p_1_in,
      port_a_i_IBUF(7 downto 0) => port_a_i_IBUF(7 downto 0),
      port_b_i_IBUF(7 downto 0) => port_b_i_IBUF(7 downto 0),
      reset_i => nPr_inst_n_0,
      reset_i_IBUF => reset_i_IBUF
    );
\port_a_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_a_i(0),
      O => port_a_i_IBUF(0)
    );
\port_a_i_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_a_i(1),
      O => port_a_i_IBUF(1)
    );
\port_a_i_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_a_i(2),
      O => port_a_i_IBUF(2)
    );
\port_a_i_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_a_i(3),
      O => port_a_i_IBUF(3)
    );
\port_a_i_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_a_i(4),
      O => port_a_i_IBUF(4)
    );
\port_a_i_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_a_i(5),
      O => port_a_i_IBUF(5)
    );
\port_a_i_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_a_i(6),
      O => port_a_i_IBUF(6)
    );
\port_a_i_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_a_i(7),
      O => port_a_i_IBUF(7)
    );
\port_a_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_a_o_OBUF(0),
      O => port_a_o(0)
    );
\port_a_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_a_o_OBUF(1),
      O => port_a_o(1)
    );
\port_a_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_a_o_OBUF(2),
      O => port_a_o(2)
    );
\port_a_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_a_o_OBUF(3),
      O => port_a_o(3)
    );
\port_a_o_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_a_o_OBUF(4),
      O => port_a_o(4)
    );
\port_a_o_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_a_o_OBUF(5),
      O => port_a_o(5)
    );
\port_a_o_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_a_o_OBUF(6),
      O => port_a_o(6)
    );
\port_a_o_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_a_o_OBUF(7),
      O => port_a_o(7)
    );
\port_b_i_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_b_i(0),
      O => port_b_i_IBUF(0)
    );
\port_b_i_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_b_i(1),
      O => port_b_i_IBUF(1)
    );
\port_b_i_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_b_i(2),
      O => port_b_i_IBUF(2)
    );
\port_b_i_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_b_i(3),
      O => port_b_i_IBUF(3)
    );
\port_b_i_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_b_i(4),
      O => port_b_i_IBUF(4)
    );
\port_b_i_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_b_i(5),
      O => port_b_i_IBUF(5)
    );
\port_b_i_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_b_i(6),
      O => port_b_i_IBUF(6)
    );
\port_b_i_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => port_b_i(7),
      O => port_b_i_IBUF(7)
    );
\port_b_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_b_o_OBUF(0),
      O => port_b_o(0)
    );
\port_b_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_b_o_OBUF(1),
      O => port_b_o(1)
    );
\port_b_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_b_o_OBUF(2),
      O => port_b_o(2)
    );
\port_b_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_b_o_OBUF(3),
      O => port_b_o(3)
    );
\port_b_o_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_b_o_OBUF(4),
      O => port_b_o(4)
    );
\port_b_o_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_b_o_OBUF(5),
      O => port_b_o(5)
    );
\port_b_o_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_b_o_OBUF(6),
      O => port_b_o(6)
    );
\port_b_o_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => port_b_o_OBUF(7),
      O => port_b_o(7)
    );
reset_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset_i,
      O => reset_i_IBUF
    );
end STRUCTURE;
