-- Used Libraries
--***********************************************************
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--************************************************************--
-- ENTITY Declaration
--************************************************************
ENTITY serrure_top_tb IS
	
END serrure_top_tb;

--***********************************************************--
-- RTL Description
--************************************************************
ARCHITECTURE RTL OF serrure_top_tb IS
	COMPONENT serrure_top PORT (
		data_in :IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		rst    : IN STD_LOGIC ;
		clk    : IN STD_LOGIC ;		clef : OUT STD_LOGIC );
	END COMPONENT;

	SIGNAL data_in : STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL rst    :  STD_LOGIC ;
	SIGNAL clk    :  STD_LOGIC ;
	SIGNAL clef   :  STD_LOGIC ;

	BEGIN
		U0 : serrure_top PORT MAP(
			data_in => data_in,
			rst => rst,
			clk => clk,
			clef => clef);
		rst <= '0';
		PROCESS
		BEGIN
		clk <='0';
		WAIT FOR 10 NS;
		clk <='1';
		WAIT FOR 10 NS ;

		END PROCESS;	
		
		PROCESS
		BEGIN 
			data_in <=  "0000000000000000" ;
			WAIT FOR 21 NS;
			data_in <=  "0010000000000000" ;
			WAIT FOR 21 NS;
			data_in <=  "0000000000000001" ;--  c'est le 1
			WAIT FOR 21 NS;
			data_in <=  "0000000000000010" ;-- c'est le 2
			WAIT FOR 21 NS;
			data_in <=  "0000000000000100" ;-- c'est le 3
			WAIT FOR 21 NS;
			data_in <=  "0000000000010000" ;-- c'est le 4
			WAIT FOR 21 NS;
			data_in <=  "0000000000100000" ;
			WAIT FOR 21 NS;
			data_in <=  "0000000001000000" ;
			WAIT FOR 21 NS;
			data_in <=  "0000000100000000" ;
			WAIT FOR 21 NS;
			data_in <=  "0000001000000000" ;
			WAIT FOR 21 NS;
			data_in <=  "0000010000000000" ;
			WAIT FOR 21 NS;
			data_in <=  "0000000000001000" ;
			WAIT FOR 21 NS;
			data_in <=  "0000000010000000" ;
			WAIT FOR 21 NS;
			data_in <=  "0000100000000000" ;
			WAIT FOR 21 NS;
			data_in <=  "1000000000000000" ;
			WAIT FOR 21 NS;
			data_in <=  "0100000000000000" ;
			WAIT FOR 21 NS;
			data_in <=  "0001000000000000" ;
			WAIT FOR 21 NS;
		END PROCESS;

END RTL;