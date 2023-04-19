---------------------------------------------------------
-- Version:
--   OGL/15.11.18a
---------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
end testbench;

architecture structure of testbench is

-- Declaration du composant UUT
component nanoControleur is
  port (
    clk_i    : in     std_logic;
    reset_i  : in     std_logic;
    port_a_i : in     std_logic_vector(7 downto 0);
    port_a_o : out    std_logic_vector(7 downto 0);
    port_b_i : in     std_logic_vector(7 downto 0);
    port_b_o : out    std_logic_vector(7 downto 0);
    port_c_4i : in     std_logic_vector(3 downto 0);
    port_c_o : out    std_logic_vector(7 downto 0);
    
    PCounter_o: out    std_logic_vector(7 downto 0));
end component nanoControleur;
    
-- Signaux pour instanciation composant UUT
-- Dans les testbench on laisse _i et _o à la fin des noms des signaux
-- qui sont connectés aux ports du composant
-- Exemple:
signal clk_i    : std_logic;
signal reset_i  : std_logic;
signal port_a_i : std_logic_vector(7 downto 0);
signal port_a_o : std_logic_vector(7 downto 0);
signal port_b_i : std_logic_vector(7 downto 0);
signal port_b_o : std_logic_vector(7 downto 0);
signal port_c_i : std_logic_vector(3 downto 0);
signal port_c_o : std_logic_vector(7 downto 0);

signal PC_o     : std_logic_vector(7 downto 0);

-- Signaux propres au testbench (pas relié au composant)      
-- Ne pas modifier
signal mark_error_signal    : std_logic := '0';
signal error_number_signal  : integer   := 0;
signal mark_error_vecteur   : std_logic := '0';
signal error_number_vecteur : integer   := 0;
signal clk_gen              : std_logic := '0';
signal sim_finie            : std_logic := '0';


begin

-- Intanciation du composant UUT 
-- Exemple
uut: nanoControleur
  port map(
    clk_i       => clk_i ,
    reset_i     => reset_i ,
    port_a_i    => port_a_i , 
    port_a_o    => port_a_o, 
    port_b_i    => port_b_i , 
    port_b_o    => port_b_o,
    port_c_4i    => port_c_i , 
    port_c_o    => port_c_o,
    
    PCounter_o => PC_o
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
  -- Fixer une valeur sur TOUTES les entrées (initialisation) sauf pour clk_i
  --
   reset_i      <= '0';
   
  -- Ici mettre uniquement l'état initial des entrée
    
  -- Mettre le reste du testbench après sim_cycle(2)
  assert false report "La simulation est en cours" severity note;
  sim_cycle(2);
  -- Début des tests
   reset_i      <= '1';
 
port_c_i <= "0101"; -- button 3 => 0 => MULU by software 
for i in 0 to 255 loop
   for j in 0 to 255 loop
       port_a_i <= std_logic_vector(to_unsigned(j,8));
       port_b_i <= std_logic_vector(to_unsigned(i,8));
       while True loop
            sim_cycle(1);
            exit when PC_o = X"10"; -- wait start mult
       end loop;
       while True loop
            sim_cycle(1);
            exit when PC_o = X"D6"; -- wait end mult
       end loop;
       test_vecteur(port_a_o & port_b_o, std_logic_vector(to_unsigned(i*j,16)), 10);

   end loop;
end loop;
   
 port_c_i <= "1000"; -- button 3 => 01=> MULU by hardware
   for i in 0 to 255 loop
       for j in 0 to 255 loop
           port_a_i <= std_logic_vector(to_unsigned(j,8));
           port_b_i <= std_logic_vector(to_unsigned(i,8));

           while True loop
                sim_cycle(1);
                exit when PC_o = X"10"; -- wait start mult
           end loop;
           while True loop
                sim_cycle(1);
                exit when PC_o = X"D6"; -- wait end mult
           end loop;
           test_vecteur(port_a_o & port_b_o, std_logic_vector(to_unsigned(i*j,16)), 20);
       end loop;
   end loop;
   
   
  -- reset
   reset_i      <= '0';
   port_a_i     <= X"00";
   port_b_i     <= X"00";
   sim_cycle(1);
   
   
  -- Fin des tests, arrêt du process avec WAIT;
  sim_finie <= '1';
  wait;

end process;

end structure;

