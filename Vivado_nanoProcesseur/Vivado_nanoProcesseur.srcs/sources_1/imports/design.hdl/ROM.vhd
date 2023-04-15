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
-- Object        : Entity Work.ROM
-- Last modified : Wed Nov 15 08:51:46 2017
--------------------------------------------------------------------------------

library ieee;
use Work.nanoProcesseur_package.all;
use Work.Variables.all;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity ROM is
  port (
    pc_i : in     std_logic_vector(7 downto 0);
    ir_o : out    std_logic_vector(13 downto 0));
end entity ROM;

--------------------------------------------------------------------------------
-- Object        : Architecture Work.ROM.Behavioral
-- Last modified : Wed March 16 2023
--------------------------------------------------------------------------------

architecture Behavioral of ROM is


begin


with pc_i select
  ir_o <= 

--------------------------------------------------------------------------------
--MAIN--------------------------------------------------------------------------
--------------------------------------------------------------------------------

         LOADconst 	& X"80"            when	X"00", 
         TFRaccu 	& none            when	X"01", 
         DECsecaccu & none             when	X"02", 
         STOREsecaccu&X"02"            when	X"03", 
         LOADaddr & X"81"             when	X"04", 
         STOREaddr  & PortA            when	X"05",
         
         

--         DECaddr    & S                 when	MAIN,
--         STOREindconst&  
--         STOREaddr  & usiMulA           when	X"11", 
--         STOREaddr  & usiMemPorta       when	X"06",
  
  
  
  
  
  
--------------------------------------------------------------------------------
  
  
  
------ test MULUconst 
----         LOADconst 	& X"FF"            when	X"00", 
----         MULUconst 	& X"FF"            when	X"01", 
----         STOREaddr  & PortB            when	X"02", 
----         TFR        & none             when	X"03", 
----         STOREaddr  & PortA            when	X"04",
  
------ test RTS and LOADindconst
----         LOADconst 	& X"60"            when	X"00", 
----         STOREaddr 	& usiMulA          when	X"01", -- one byte after usiMulA in mem
----         LOADconst 	& usiMulB          when	X"02", 
----         STOREaddr  & PortA            when	X"03", 
----         LOADindconst& X"FF"           when X"04", -- FF = -1
----         RTS        & none             when	X"05", 
----         STOREaddr  & PortA            when	X"60",     

         
         
---- Prepare values that are multiplied 
----         LOADconst  & X"FF"             when	X"04",  -- by const
----         LOADconst  & std_logic_vector(to_unsigned(255,8))       when	X"04",  -- by uint const
--         LOADaddr   & PortA             when	X"04",  
--         STOREaddr  & usiMulA           when	X"05", 
--         STOREaddr  & usiMemPorta       when	X"06",
          
----         LOADconst  & X"FF"             when	X"06",  -- by hexa const
----         LOADconst  & std_logic_vector(to_unsigned(255,8))       when	X"06",  -- by uint const
--         LOADaddr   & PortB             when	X"07",       
--         STOREaddr  & usiMulB           when	X"08", 
--         STOREaddr  & usiMemPortb       when	X"09",      
         
--         LOADaddr   & PortC             when	X"07",       
--         STOREaddr  & usiMulB           when	X"08", 
--         STOREaddr  & usiMemPortb       when	X"09",      
         
---- there's three possibilies of multiplication uncomment to branch

---- First method with polynomial
---- Which is quite fast and is almost a deterministic algorithm 
----      BRA       	& X"10"            when	X"08",  -- Branch to the other multiplication method    

---- Second method with a loop 
---- Which is faster for small numbers but the duration increases proportionnaly to the size of the smallest number
---- This method takes a little bit less space in Rom
----       BRA       	& X"44"            when	X"08",  -- Branch to the other multiplication method     
         

---- Third method mixed  
---- depending on the size of the numbers chooses the faster method    
--         NEGconst   & X"10"            when	X"0A",  -- if number is strictly smaller than X"10" choose loop method 
--         ADDaddr    & usiMulA          when	X"0B",  
--         BC0       	& X"44"            when	X"0C",  -- Branch to loop multiplication    
--         NEGconst   & X"10"            when	X"0D",  -- if number is strictly smaller than X"10" choose loop method  
--         ADDaddr    & usiMulB          when	X"0E",  
--         BC0       	& X"44"            when	X"0F",  -- Branch to loop multiplication     

---- First method decomposes number A into a polynomial
---- takes the same time for all numbers
---- small example 
---- "1010" * "1001" 
---- is equal to => (1*8 + 0*4 + 1*2 + 0*1) * "1001"
---- is equal to => 8*"1001" + 2*"1001"
---- is equal to => "1001"<<3 + "1001"<<1
 
-- -- Prepare var usicounter for loop                 
--         LOADconst 	& X"08"             when	X"10",  -- due to 8bit 
--         STOREaddr 	& usiCounter        when	X"11",           
                                                 
-- -- Reset old result and temp values             
--         LOADconst 	& X"00"             when	X"12",  
--         STOREaddr  & usiLessResultMul  when	X"13",  
--         STOREaddr  & usiMostResultMul  when	X"14",    
--         STOREaddr  & usiTempMul        when	X"15",  
                                                 
-- -- Take lsb and put it into carry                  
--         LOADaddr  	& usiMulB           when	X"16",   
--         RORaccu   	& None              when	X"17",    
--         STOREaddr  & usiMulB           when	X"18",  
         
-- -- Jump if lsb is not 1        
--         BC0       	& X"20"             when	X"19",   
 
-- --  Add part to less significant byte and keep carry  => to result 
--         LOADaddr  	& usiLessResultMul  when	X"1A", 
--         ADDAddr    & usiMulA           when	X"1B",   
--         STOREaddr  & usiLessResultMul  when	X"1C",   
--         LOADaddr  	& usiMostResultMul  when	X"1D", 
--         ADCAddr    & usiTempMul        when	X"1E",  
--         STOREaddr  & usiMostResultMul  when	X"1F",  

-- --  Temp values to the power of 2
--         CLRC       & None              when    X"20",  
--         LOADaddr  	& usiMulA           when	X"21",     
--         ROLaccu  	& None              when	X"22",    
--         STOREaddr 	& usiMulA           when	X"23",
--         LOADaddr  	& usiTempMul        when	X"24",      
--         ROLaccu  	& None              when	X"25",     
--         STOREaddr 	& usiTempMul        when	X"26",  
         
-- -- Display all important value to debug
-- -- to not display
--       NOP        & None                when    X"27",
-- -- to display for debug     
----         BRA        & X"30"             when	X"27",
----         LOADaddr  	& usiTempMul        when	X"30",   
----         STOREaddr 	& X"20"             when	X"31", 
----         LOADaddr  	& usiMulA           when	X"32",   
----         STOREaddr 	& X"20"             when	X"33", 
----         LOADaddr  	& usiMostResultMul  when	X"34",   
----         STOREaddr 	& X"20"             when	X"35", 
----         LOADaddr  	& usiLessResultMul  when	X"36",   
----         STOREaddr 	& X"20"             when	X"37", 
----         LOADaddr  	& usiCounter        when	X"38",   
----         STOREaddr 	& X"20"             when	X"39", 
----         BRA     	& X"28"             when	X"3A",         
         
----  decrement counter
--         DECaddr    & usiCounter        when	X"28",    
--         STOREaddr  & usiCounter        when	X"29",  
         
---- redo loop if counter isn't 0
--         BZ0        & X"16"             when	X"2A", 
          
---- Display Multiplication result
--         BRA       	& X"60"             when	X"2B",
         
         
---- Second method  
---- Takes more time for big numbers

---- Reset Old result and temp values
--         LOADconst 	& X"00"             when	X"44",  
--         STOREaddr  & usiLessResultMul  when	X"45",  
--         STOREaddr  & usiMostResultMul  when	X"46",    
--         STOREaddr  & usiTempMul        when	X"47",    
        
---- Put the smallest var in usiCounter and the biggest in var temp       
--         NEGaddr    & usiMulB           when	X"48",
--         BZ1        & X"50"             when    X"49",
         
--         ADDaddr    & usiMulA           when    X"4A",
--         BC1        & X"50"             when	X"4B", 
         
         
          
--         LOADaddr   & usiMulA           when    X"4C",
--         STOREaddr  & usiCounter        when    X"4D", 
--         LOADaddr   & usiMulB           when    X"4E",
--         BRA        & X"53"             when	X"4F", 
         
--         LOADaddr   & usiMulB           when    X"50",
--         STOREaddr  & usiCounter        when    X"51", 
--         LOADaddr   & usiMulA           when    X"52",
--         STOREaddr  & usiTempMul        when    X"53", 
         
         
--         LOADaddr    & usiCounter        when	X"54",    
-- -- redo loop if counter isn't 
--         BZ1        & X"5F"             when	X"55",
         
---- Add var temp in result (usiCounter times)                  
--         LOADaddr   & usiLessResultMul  when    X"56",
--         ADDaddr    & usiTempMul        when    X"57", 
--         STOREaddr  & usiLessResultMul  when    X"58",

--         LOADaddr   & usiMostResultMul  when    X"59",
--         ADCconst   & None              when    X"5A", 
--         STOREaddr  & usiMostResultMul  when    X"5B",
         
----  decrement counter
--         DECaddr    & usiCounter        when	X"5C",    
--         STOREaddr  & usiCounter        when	X"5D",  
         
--         BRA       	& X"55"             when	X"5E",
         
---- Go to display
--         BRA       	& X"60"             when	X"5F",
         
         
-- -- Display Multiplication result
--         LOADaddr   & usiMostResultMul  when	X"60", 
--         STOREaddr  & PortA             when	X"61",  
--         LOADaddr   & usiLessResultMul  when	X"62", 
--         STOREaddr  & PortB             when	X"63",  
--         BRA       	& X"70"             when	X"64",
   
-- -- Loop since port a and b are the same
 
--         NEGaddr    & PortA             when	X"70", 
--         ADDaddr    & usiMemPortA       when	X"71", 
--         BZ0       	& X"00"             when	X"72",
                                                  
--         NEGaddr    & PortB             when	X"73", 
--         ADDaddr    & usiMemPortB       when	X"74", 
--         BZ0       	& X"00"             when	X"75",            
--         BRA       	& X"70"             when	X"76",
       
       
--------------------------------------------------------------------------------
----Prgram init-----------------------------------------------------------------
----------------------------------------------------------------------------------
--  -- set port a, b, c output to 0
--         LOADconst 	& X"00"             when	X"00", 
--         STOREaddr  & PortA             when	X"01",   
--         STOREaddr  & PortB             when	X"02",  
--         STOREaddr  & PortC             when	X"03",  
--  -- init stack                                
--         LOADaddr 	& S                 when	X"04", 
--         STOREaddr 	& S                 when	X"05",
--  -- branch to main
--         BRA 	    & MAIN              when	X"06", 
----------------------------------------------------------------------------------  
---- end         
         BRA		& X"FF"             when 	others;  

end architecture Behavioral ; -- of ROM
