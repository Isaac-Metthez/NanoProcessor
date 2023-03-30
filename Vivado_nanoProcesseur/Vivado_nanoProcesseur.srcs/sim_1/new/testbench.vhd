----------------------------------------------------------------------------------
-- Company: 
-- Engineer: IME
-- 
-- Create Date: 16.03.2023 18:46:19
-- Design Name: 
-- Module Name: testbench - structure
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library xil_defaultlib;
use Work.nanoProcesseur_package.all;
use Work.Variables.all;

entity testbench is
--  Port ( );
end testbench;

architecture structure of testbench is

component top is
    Port(
            clk_i    : in     std_logic;
            reset_i  : in     std_logic;
            port_a_i : in     std_logic_vector(7 downto 0);
            port_a_o : out    std_logic_vector(7 downto 0);
            port_b_i : in     std_logic_vector(7 downto 0);
            port_b_o : out    std_logic_vector(7 downto 0));
end component top;

Signal         clk_i    :  std_logic;
Signal         reset_i  :  std_logic;
Signal         port_a_i :  std_logic_vector(7 downto 0);
Signal         port_a_o :  std_logic_vector(7 downto 0);
Signal         port_b_i :  std_logic_vector(7 downto 0);
Signal         port_b_o :  std_logic_vector(7 downto 0);
         
-- Signaux propres au testbench (pas relié au composant)      
-- Ne pas modifier
signal mark_error_signal    : std_logic := '0';
signal error_number_signal  : integer   := 0;
signal mark_error_vecteur   : std_logic := '0';
signal error_number_vecteur : integer   := 0;
signal clk_gen              : std_logic := '0';
signal sim_finie            : std_logic := '0';
signal etape                : integer;

begin

uut: top
    Port map(
            clk_i       =>  clk_i   ,
            reset_i     =>  reset_i   ,
            port_a_i    =>  port_a_i   ,
            port_a_o    =>  port_a_o   ,
            port_b_i    =>  port_b_i    ,
            port_b_o    =>  port_b_o   
        );
         
--********** PROCESS "clk_gengen" **********
--clk_gengen_25MHz: process
--begin
--  clk_gen <= '1', '0' after 1 ns;
--  --commenter si on teste une fonction combinatoire (pas de clock)
--  clk_i   <= '1', '0' after 5 ns, '1' after 17 ns;
--  wait for 25 ns;
--end process;
clk_gengen_100MHz: process
begin
  clk_gen <= '1', '0' after 1 ns;
  --commenter si on teste une fonction combinatoire (pas de clock)
  clk_i   <= '1', '0' after 3 ns, '1' after 7 ns;
  wait for 10 ns;
end process;


--********** PROCESS "run" **********
run: process

  --********** PROCEDURE "sim_cycle" **********
  -- permet d'attendre un certain nombre de flanc montant de clk_gen
  procedure sim_cycle(num : in integer) is
  begin
    for index in 1 to num loop
      wait until clk_gen = '1';
    end loop;
  end sim_cycle;

  --********** PROCEDURE "test_signal" **********
  procedure test_signal(signal_test, valeur: in std_logic; erreur : in integer) is 
  begin
     if signal_test /= valeur then
          mark_error_signal <= '1', '0' after 1 ns;
          error_number_signal <= erreur;
          assert false report "Etat du signal non correct" severity warning;
     end if;
  end test_signal;

 --********** PROCEDURE "test_vecteur" **********
  procedure test_vecteur(signal_test, valeur: in std_logic_vector; erreur : in integer) is 
  begin
     assert signal_test'length = valeur'length report "test_vecteur erreur: taille des bus" severity failure;
     if signal_test /= valeur then
          mark_error_vecteur <= '1', '0' after 1 ns;
          error_number_vecteur <= erreur;
          assert false report "Etat du signal non correct" severity warning;
     end if;
  end test_vecteur;

begin
  -- Début de la simulation temps t=0ns
etape <= 0;
  reset_i  <= '1';
    
  -- Mettre le reste du testbench après sim_cycle(2)
  assert false report "La simulation est en cours" severity note;
    sim_cycle(2);
  -- Début des tests
  reset_i <= '0';
    sim_cycle(100);
    
    
  -- Fin des tests, arrêt du process avec WAIT;
  sim_finie <= '1';
  wait;

end process;

end structure;