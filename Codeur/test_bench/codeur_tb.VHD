-- Used Libraries
--***********************************************************
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--************************************************************--
-- ENTITY Declaration
--************************************************************
ENTITY codeur_tb IS
	
END codeur_tb;
--***********************************************************--
-- RTL Description
--************************************************************
ARCHITECTURE RTL OF codeur_tb IS
	COMPONENT codeur PORT(
		data_in : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		data_s : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
	END COMPONENT;
	SIGNAL data_in : STD_LOGIC_VECTOR (15 DOWNTO 0);
	SIGNAL data_s :  STD_LOGIC_VECTOR (3 DOWNTO 0);
	BEGIN 
		U0 : codeur PORT MAP(
			data_in => data_in ,
			data_s => data_s
		);
		--le comportement d'un compteur modulo 16 avec un  Z au debut
		PROCESS
		BEGIN 
			data_in <=  "0000000000000000" ;
			WAIT FOR 10 NS;
			data_in <=  "0010000000000000" ;
			WAIT FOR 10 NS;
			data_in <=  "0000000000000001" ;
			WAIT FOR 10 NS;
			data_in <=  "0000000000000010" ;
			WAIT FOR 10 NS;
			data_in <=  "0000000000000100" ;
			WAIT FOR 10 NS;
			data_in <=  "0000000000010000" ;
			WAIT FOR 10 NS;
			data_in <=  "0000000000100000" ;
			WAIT FOR 10 NS;
			data_in <=  "0000000001000000" ;
			WAIT FOR 10 NS;
			data_in <=  "0000000100000000" ;
			WAIT FOR 10 NS;
			data_in <=  "0000001000000000" ;
		END PROCESS;
END RTL;				 