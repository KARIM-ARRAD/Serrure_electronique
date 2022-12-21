LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY bascule_d IS 
	PORT (
		enable : IN STD_LOGIC ;
		rst    : IN STD_LOGIC ;
		clk    : IN STD_LOGIC ;
		d      : IN STD_LOGIC ;
		q      : OUT STD_LOGIC );
END bascule_d;
ARCHITECTURE RTL OF bascule_d IS
	
	
	BEGIN 
	 	PROCESS ( clk , rst)
			BEGIN
			IF (rst = '1' ) THEN
				Q <='0';
			ELSIF (clk ' event and clk ='1') THEN
				IF ( enable ='1') THEN 
					q <= d;
				END IF;
			END IF;
		END PROCESS;
END RTL ;