--------------------------------------------------------------------------------
--
-- This VHDL file was generated by EASE/HDL 9.3 Revision 2 from HDL Works B.V.
--
-- Ease library  : Work
-- HDL library   : Work
-- Host name     : NB21-B0I-YME
-- User name     : yves.meyer
-- Time stamp    : Tue Jan  3 10:07:22 2023
--
-- Designed by   : M.Meyer/Y.Meyer
-- Company       : Haute Ecole Arc
-- Project info  : nanoProcesseur
--
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Object        : Entity Work.Instruction_Register
-- Last modified : Tue Jul  8 11:14:04 2014
--------------------------------------------------------------------------------

library ieee;
use Work.nanoProcesseur_package.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity Instruction_Register is
  port (
    clk_i      : in     std_logic;
    reset_i    : in     std_logic;
    IR_load_i  : in     std_logic;
    IR_i       : in     std_logic_vector(13 downto 0);
    operande_o : out    std_logic_vector(7 downto 0);
    accu_i     : in     std_logic_vector(7 downto 0);
    secaccu_i  : in     std_logic_vector(7 downto 0);
    opcode_o   : out    std_logic_vector(5 downto 0));
end entity Instruction_Register;

--------------------------------------------------------------------------------
-- Object        : Architecture Work.Instruction_Register.Behavioral
-- Last modified : Tue Jul  8 11:14:04 2014
--------------------------------------------------------------------------------

architecture Behavioral of Instruction_Register is
  
begin

process(clk_i,reset_i)
begin
  if reset_i = '0' then
    operande_o <= (others => '0');
    opcode_o <= (others => '0');
  elsif rising_edge(clk_i) then
    if IR_load_i = '1' then    
      opcode_o <= IR_i(13 DOWNTO 8);
      if IR_i(13 DOWNTO 8) = LOADindconst then
        operande_o <= STD_LOGIC_VECTOR(SIGNED(IR_i(7 DOWNTO 0))+ SIGNED(accu_i));
      elsif IR_i(13 DOWNTO 8) = STOREsecaccu then
        operande_o <= STD_LOGIC_VECTOR(SIGNED(IR_i(7 DOWNTO 0))+ SIGNED(secaccu_i));
      else
        operande_o <= IR_i(7 DOWNTO 0);
      end if;
    end if;
  end if;
end process;

end architecture Behavioral ; -- of Instruction_Register
