-- Used Libraries
--***********************************************************
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--************************************************************--
-- ENTITY Declaration
--************************************************************
ENTITY memoire_tb IS 
	
END memoire_tb;
ARCHITECTURE RTL OF memoire_tb IS
	COMPONENT memoire PORT (
		detect : IN STD_LOGIC ;
		rst    : IN STD_LOGIC ;
		clk    : IN STD_LOGIC ;
		data_s : IN STD_LOGIC_VECTOR (3 DOWNTO 0) ;
		code_sig : OUT STD_LOGIC_VECTOR (15 DOWNTO 0) );

	END COMPONENT ;
	SIGNAL detect :  STD_LOGIC ;
	SIGNAL	rst    :  STD_LOGIC ;
	SIGNAL	clk    :  STD_LOGIC ;
	SIGNAL	data_s      :  STD_LOGIC_VECTOR (3 DOWNTO 0) ;
	SIGNAL	code_sig      :  STD_LOGIC_VECTOR (15 DOWNTO 0);
	BEGIN 
		U0 :  memoire PORT MAP (
			detect => detect,
			rst    => rst,
			clk    => clk,
			data_s      => data_s,
			code_sig     => code_sig);
		PROCESS
			BEGIN
			rst <= '0';
			WAIT FOR 110 NS ;
			rst <= '1';
			WAIT FOR 12 NS ;
			
		END PROCESS;

		PROCESS
			BEGIN
			clk <= '0';
			WAIT FOR 10 NS;
			clk <= '1';
			WAIT FOR 10 NS;		
			
		END PROCESS;
		PROCESS
			BEGIN
			detect <= '1';
			WAIT FOR 80 NS;
			detect <= '0';
			WAIT FOR 15 NS;		
			
		END PROCESS;
		PROCESS
			BEGIN
			data_s <= "0001";
			WAIT FOR 13 NS;
			data_s <= "0010";
			WAIT FOR 13 NS;
			
		END PROCESS;
END RTL;