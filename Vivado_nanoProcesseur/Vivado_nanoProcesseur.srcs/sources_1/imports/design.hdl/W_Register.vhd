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
-- Object        : Entity Work.W_Register
-- Last modified : Tue Jul  8 11:07:34 2014
--------------------------------------------------------------------------------

library ieee;
use Work.nanoProcesseur_package.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity W_Register is
  port (
    Accu_in     : in     std_logic_vector(7 downto 0);
    Accu_load_i : in     std_logic;
    Accu_o      : out    std_logic_vector(7 downto 0);
    clk_i       : in     std_logic;
    reset_i     : in     std_logic);
end entity W_Register;

--------------------------------------------------------------------------------
-- Object        : Architecture Work.W_Register.Behavioral
-- Last modified : Tue Jul  8 11:07:34 2014
--------------------------------------------------------------------------------


architecture Behavioral of W_Register is

begin

process(clk_i,reset_i)
begin
  if reset_i = '0' then
    Accu_o <= (others => '0');
  elsif rising_edge(clk_i) then
    if Accu_load_i = '1' then
      Accu_o <= Accu_in;
    end if;
  end if;
end process;

end architecture Behavioral ; -- of W_Register

