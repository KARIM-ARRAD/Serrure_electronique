-- Used Libraries
--***********************************************************
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--************************************************************--
-- ENTITY Declaration
--************************************************************
ENTITY detection_caractere_tb IS
END detection_caractere_tb;

--***********************************************************--
-- RTL Description
--************************************************************
ARCHITECTURE RTL OF detection_caractere_tb IS
	COMPONENT detection_caractere PORT (
		data_in : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		detect  : OUT STD_LOGIC
	);
	END COMPONENT;
	SIGNAL data_in : STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL detect :  STD_LOGIC;
	BEGIN 
		U0 : detection_caractere PORT MAP(
			data_in => data_in ,
			detect => detect
		);
		PROCESS
		BEGIN 
			data_in <=  "0000000000000000" ;
			WAIT FOR 10 NS;
			data_in <=  "0010000000000000" ;
			WAIT FOR 10 NS;
			data_in <=  "0000100000000000" ;
			WAIT FOR 10 NS;
			data_in <=  "1000000000000000" ;
			WAIT FOR 10 NS;
			data_in <=  "0000000000000000" ;
			WAIT FOR 10 NS;
		END PROCESS;
END RTL;		