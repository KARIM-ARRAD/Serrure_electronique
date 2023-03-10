-- Used Libraries
--***********************************************************
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

--************************************************************--
-- ENTITY Declaration
--************************************************************
ENTITY registre_parallele_4bits IS 
	PORT(
		enable : IN STD_LOGIC ;
		rst    : IN STD_LOGIC ;
		clk    : IN STD_LOGIC ;
		button_in : IN STD_LOGIC_VECTOR (3 DOWNTO 0) ;
		button_out : OUT STD_LOGIC_VECTOR (3 DOWNTO 0) );
END registre_parallele_4bits;

--***********************************************************--
-- RTL Description
--************************************************************
ARCHITECTURE RTL OF registre_parallele_4bits IS
	COMPONENT bascule_d PORT (
		enable : IN STD_LOGIC ;
		rst    : IN STD_LOGIC ;
		clk    : IN STD_LOGIC ;
		d      : IN STD_LOGIC ;
		q      : OUT STD_LOGIC );
	END COMPONENT ;
	BEGIN 
		U0 : bascule_d PORT MAP (
			enable => enable,
			rst    => rst,
			clk    => clk,
			d      => button_in(0),
			q      => button_out(0));
		U1 : bascule_d PORT MAP (
			enable => enable,
			rst    => rst,
			clk    => clk,
			d      => button_in(1),
			q      => button_out(1));
		U2 : bascule_d PORT MAP (
			enable => enable,
			rst    => rst,
			clk    => clk,
			d      => button_in(2),
			q      => button_out(2));
		U3 : bascule_d PORT MAP (
			enable => enable,
			rst    => rst,
			clk    => clk,
			d      => button_in(3),
			q      => button_out(3));
END RTL ;