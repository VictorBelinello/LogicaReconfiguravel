
library IEEE;
use IEEE.std_logic_1164.all;


entity bcd_7seg is port
(
	ENTRADAS : in std_logic_vector(3 downto 0);
	SAIDAS : out std_logic_vector(6 downto 0)
);
end bcd_7seg;


architecture hardware of bcd_7seg is

begin

	SAIDAS(0) <= ( not ENTRADAS(0) and not ENTRADAS(1) and not ENTRADAS(2) and ENTRADAS(3) ) or (not ENTRADAS(0) and ENTRADAS(1) and not ENTRADAS(2) and not ENTRADAS(3));
	SAIDAS(1) <= ( not ENTRADAS(0) and ENTRADAS(1) and not ENTRADAS(2) and ENTRADAS(3)) or (not ENTRADAS(0) and ENTRADAS(1) and ENTRADAS(2) and ENTRADAS(3));
	SAIDAS(2) <= not ENTRADAS(0) and not ENTRADAS(1) and ENTRADAS(2) and not ENTRADAS(3);
	SAIDAS(3) <= (not ENTRADAS(0) and not ENTRADAS(1) and not ENTRADAS(2) and ENTRADAS(3)) or ( not ENTRADAS(0) and ENTRADAS(1)  and not ENTRADAS(2) and not ENTRADAS(3)) or (not ENTRADAS(0) and ENTRADAS(1) and ENTRADAS(2) and ENTRADAS(3));
	SAIDAS(4) <= ( not ENTRADAS(0) and not ENTRADAS(1) and ENTRADAS(3) ) or ( not ENTRADAS(0) and ENTRADAS(1) and not ENTRADAS(2)) or (ENTRADAS(0) and not ENTRADAS(1) and not ENTRADAS(2) and not ENTRADAS(3));
	SAIDAS(5) <= ( not ENTRADAS(0) and not ENTRADAS(1) and ENTRADAS(3) ) or ( not ENTRADAS(0) and not ENTRADAS(1) and ENTRADAS(2) ) or ( not ENTRADAS(0) and ENTRADAS(2) and ENTRADAS(3) );
	SAIDAS(6) <= ( not ENTRADAS(0) and not ENTRADAS(1) and not ENTRADAS(2) ) or ( not ENTRADAS(0) and ENTRADAS(1) and ENTRADAS(2) and ENTRADAS(3) );
end hardware;

