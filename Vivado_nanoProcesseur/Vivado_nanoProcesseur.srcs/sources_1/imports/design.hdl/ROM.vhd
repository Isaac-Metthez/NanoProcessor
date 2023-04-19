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
--Init -------------------------------------------------------------------------
--------------------------------------------------------------------------------
  -- set port a, b, c output to 0
         LOADconst 	     & X"00"             when	INIT, 
         STOREaddr       & PortA             when	X"01",   
         STOREaddr       & PortB             when	X"02",  
         STOREaddr       & PortC             when	X"03",  
  -- init stack                                
         LOADconst 	     & S                 when	X"04", 
         STOREaddr 	     & S                 when	X"05",
  -- branch to main
         BRA 	         & MAIN              when	X"06", 
--------------------------------------------------------------------------------  

--------------------------------------------------------------------------------
--MAIN--------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- read inputs
         DECaddr        & S                 when	MAIN,
         STOREaddr      & S                 when	X"11",   
         TFRaccu        & none              when    X"12",
         LOADconst      & X"16"             when    X"13",
         STOREsecaccu   & X"00"             when	X"14", 
         BRA            & READINPUTS        when	X"15", 
        
         
-- select which multiplication to do and execute it
         DECaddr        & S                 when	X"16",
         STOREaddr      & S                 when	X"17",   
         TFRaccu        & none              when    X"18",
         LOADconst      & X"1C"             when    X"19",
         STOREsecaccu   & X"00"             when	X"1A", 
         BRA            & MULSELECTOR       when	X"1B", 
         
         
-- Display results
         DECaddr        & S                 when	X"1C",
         STOREaddr      & S                 when	X"1D",   
         TFRaccu        & none              when    X"1E",
         LOADconst      & X"22"             when    X"1F",
         STOREsecaccu   & X"00"             when	X"20", 
         BRA            & DISPLAY           when	X"21", 
         
-- Wait until there's a new value as input
         DECaddr        & S                 when	X"22",
         STOREaddr      & S                 when	X"23",   
         TFRaccu        & none              when    X"24",
         LOADconst      & X"28"             when    X"25",
         STOREsecaccu   & X"00"             when	X"26", 
         BRA            & WAITIN            when	X"27", 
 
 -- Loop main
         BRA            & MAIN              when	X"28", 
         
--------------------------------------------------------------------------------
  
--------------------------------------------------------------------------------
--Software multiplication-------------------------------------------------------
--------------------------------------------------------------------------------
         
-- there's three possibilies of multiplication uncomment to branch

-- First method with polynomial
-- Which is quite fast and is almost a deterministic algorithm 
--      BRA       	 & X"40"            when	    SOFTWAREMUL,  -- Branch to the other multiplication method    

-- Second method with a loop 
-- Which is faster for small numbers but the duration increases proportionnaly to the size of the smallest number
-- This method takes a little bit less space in Rom
--       BRA       	    & X"64"            when	    SOFTWAREMUL,  -- Branch to the other multiplication method     
         
-- Third method mixed  
-- depending on the size of the numbers chooses the fasted method    
         NEGconst       & X"10"            when     SOFTWAREMUL,  -- if number is strictly smaller than X"10" choose loop method 
         ADDaddr        & usiMulA          when     X"3B",  
         BC0       	    & X"64"            when     X"3C",  -- Branch to loop multiplication    
         NEGconst       & X"10"            when     X"3D",  -- if number is strictly smaller than X"10" choose loop method  
         ADDaddr        & usiMulB          when     X"3E",  
         BC0       	    & X"64"            when     X"3F",  -- Branch to loop multiplication     

-- First method decomposes number A into a polynomial
-- takes the same time for all numbers
-- small example 
-- "1010" * "1001" 
-- is equal to => (1*8 + 0*4 + 1*2 + 0*1) * "1001"
-- is equal to => 8*"1001" + 2*"1001"
-- is equal to => "1001"<<3 + "1001"<<1
 
 -- Prepare var usicounter for loop                 
         LOADconst 	    & X"08"             when	X"40",  -- due to 8bits 
         STOREaddr 	    & usiCounter        when	X"41",           
                                                  
 -- Reset old result and temp values              
         LOADconst 	    & X"00"             when	X"42",  
         STOREaddr      & usiLessResultMul  when	X"43",  
         STOREaddr      & usiMostResultMul  when	X"44",    
         STOREaddr      & usiTempMul        when	X"45",  
                                                  
 -- Take lsb and put it into carry                
         LOADaddr  	    & usiMulB           when	X"46",   
         RORaccu   	    & None              when	X"47",    
         STOREaddr      & usiMulB           when	X"48",  
                                                  
 -- Jump if lsb is not 1                          
         BC0       	    & X"50"             when	X"49",   
 
 --  Add part to less significant byte and keep carry  => to result 
         LOADaddr  	    & usiLessResultMul  when	X"4A", 
         ADDaddr        & usiMulA           when	X"4B",   
         STOREaddr      & usiLessResultMul  when	X"4C",   
         LOADaddr  	    & usiMostResultMul  when	X"4D", 
         ADCaddr        & usiTempMul        when	X"4E",  
         STOREaddr      & usiMostResultMul  when	X"4F",  

 --  Temp values to the power of 2
         CLRC           & None              when    X"50",  
         LOADaddr  	    & usiMulA           when	X"51",     
         ROLaccu  	    & None              when	X"52",    
         STOREaddr 	    & usiMulA           when	X"53",
         LOADaddr  	    & usiTempMul        when	X"54",      
         ROLaccu  	    & None              when	X"55",     
         STOREaddr 	    & usiTempMul        when	X"56",   
         
--  decrement counter
         DECaddr        & usiCounter        when	X"57",    
         STOREaddr      & usiCounter        when	X"58",  
         
-- redo loop if counter isn't 0
         BZ0            & X"46"             when	X"59", 

         BRA       	    & X"80"             when	X"5A",
         
         
-- Second method  
-- Takes more time for big numbers

-- Reset Old result and temp values
         LOADconst 	    & X"00"             when	X"64",  
         STOREaddr      & usiLessResultMul  when	X"65",  
         STOREaddr      & usiMostResultMul  when	X"66",    
         STOREaddr      & usiTempMul        when	X"67",    
        
-- Put the smallest var in usiCounter and the biggest in var temp       
         NEGaddr        & usiMulB           when	X"68",
         BZ1            & X"70"             when    X"69",
         
         ADDaddr        & usiMulA           when    X"6A",
         BC1            & X"70"             when	X"6B", 
         
         
          
         LOADaddr       & usiMulA           when    X"6C",
         STOREaddr      & usiCounter        when    X"6D", 
         LOADaddr       & usiMulB           when    X"6E",
         BRA            & X"73"             when	X"6F", 
         
         LOADaddr       & usiMulB           when    X"70",
         STOREaddr      & usiCounter        when    X"71", 
         LOADaddr       & usiMulA           when    X"72",
         STOREaddr      & usiTempMul        when    X"73", 
         
         LOADaddr       & usiCounter        when	X"74",    
 -- redo loop if counter isn't 
         BZ1            & X"7F"             when	X"75",
         
-- Add var temp in result (usiCounter times)                  
         LOADaddr       & usiLessResultMul  when    X"76",
         ADDaddr        & usiTempMul        when    X"77", 
         STOREaddr      & usiLessResultMul  when    X"78",

         LOADaddr       & usiMostResultMul  when    X"79",
         ADCconst       & None              when    X"7A", 
         STOREaddr      & usiMostResultMul  when    X"7B",
         
--  decrement counter
         DECaddr        & usiCounter        when	X"7C",    
         STOREaddr      & usiCounter        when	X"7D",  
         BRA       	    & X"75"             when	X"7E",
         
         BRA       	    & X"80"             when	X"7F",

         
-- return;          
         INCaddr        & S                 when	X"80",   
         STOREaddr      & S                 when	X"81",  
         LOADindconst   & X"FF"             when	X"82", -- load accu-1 
         STOREaddr      & memRTS            when	X"83", 
         RTS            & memRTS            when    X"84",         
  -- branch to main
--------------------------------------------------------------------------------
         
--------------------------------------------------------------------------------
--Read inputs-------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Prepare values that are multiplied 
         LOADaddr       & PortA             when	READINPUTS,  
         STOREaddr      & usiMulA           when	X"91", 
         STOREaddr      & usiMemPorta       when	X"92",
          
         LOADaddr       & PortB             when	X"93",       
         STOREaddr      & usiMulB           when	X"94", 
         STOREaddr      & usiMemPortb       when	X"95",   

-- return;         
         INCaddr        & S                 when	X"96",   
         STOREaddr      & S                 when	X"97",  
         LOADindconst   & X"FF"             when	X"98", -- load accu-1 
         STOREaddr      & memRTS            when	X"99", 
         RTS            & memRTS            when    X"9A",            
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--Multiplication selector-------------------------------------------------------
--------------------------------------------------------------------------------
  -- Get state of button 3 
         LOADaddr 	     & PortC            when	MULSELECTOR, 
         ANDconst        & MaskButton3      when  	X"A1",     
         BZ1             & X"A9"            when    X"A2",
 -- hardware multiplication        
         LOADaddr        & usiMulA          when	X"A3",
         MULUaddr        & usiMulB          when	X"A4",
         STOREaddr       & usiLessResultMul when	X"A5",  
         TFRsecaccu      & none             when	X"A6",
         STOREaddr       & usiMostResultMul when	X"A7",
         BRA 	         & X"AF"            when	X"A8", 
 -- call software multiplication        
         DECaddr        & S                 when	X"A9",
         STOREaddr      & S                 when	X"AA",   
         TFRaccu        & none              when    X"AB",
         LOADconst      & X"AF"             when    X"AC",
         STOREsecaccu   & none              when	X"AD", 
         BRA            & SOFTWAREMUL       when	X"AE", 
-- return;          
         INCaddr        & S                 when	X"AF",   
         STOREaddr      & S                 when	X"B0",  
         LOADindconst   & X"FF"             when	X"B1", -- load accu-1 
         STOREaddr      & memRTS            when	X"B2", 
         RTS            & memRTS            when    X"B3",         
  -- branch to main
--------------------------------------------------------------------------------        
   
--------------------------------------------------------------------------------
--Display results---------------------------------------------------------------
--------------------------------------------------------------------------------
 -- Display Multiplication result
         LOADaddr       & usiMostResultMul  when	DISPLAY, 
         STOREaddr      & PortA             when	X"C1",  
         LOADaddr       & usiLessResultMul  when	X"C2", 
         STOREaddr      & PortB             when	X"C3",  
         NOP       	    & none              when	X"C4",
-- return;          
         INCaddr        & S                 when	X"C5",   
         STOREaddr      & S                 when	X"C6",  
         LOADindconst   & X"FF"             when	X"C7", -- load accu-1 
         STOREaddr      & memRTS            when	X"C8", 
         RTS            & memRTS            when    X"C9",         
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--Wait new inputs---------------------------------------------------------------
--------------------------------------------------------------------------------
 -- Loop since port a and b are the same
 
         NEGaddr        & PortA             when	WAITIN, 
         ADDaddr        & usiMemPortA       when	X"D1", 
         BZ0            & X"D7"             when	X"D2",
                                                      
         NEGaddr        & PortB             when	X"D3", 
         ADDaddr        & usiMemPortB       when	X"D4", 
         BZ0            & X"D7"             when	X"D5",            
         BRA            & X"D0"             when	X"D6",
-- return;          
         INCaddr        & S                 when	X"D7",   
         STOREaddr      & S                 when	X"D8",  
         LOADindconst   & X"FF"             when	X"D9", -- load accu-1 
         STOREaddr      & memRTS            when	X"DA", 
         RTS            & memRTS            when    X"DB",    
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
--Catch error-------------------------------------------------------------------
--------------------------------------------------------------------------------
         BRA		     & X"FF"             when 	others;  
--------------------------------------------------------------------------------

end architecture Behavioral ; -- of ROM
