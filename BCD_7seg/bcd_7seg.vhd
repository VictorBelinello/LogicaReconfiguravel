-- Projeto de um conversor BCD -> 7 segmentos 
--
-- Autores: Matheus Bigarelli e Victor Belinello
-- Data: 03/2020

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY bcd_7seg IS PORT (
	ENTRADAS : IN std_logic_vector(3 DOWNTO 0);
	SAIDAS : OUT std_logic_vector(6 DOWNTO 0)
);
END bcd_7seg;

ARCHITECTURE hardware OF bcd_7seg IS
BEGIN
	SAIDAS(0) <= (NOT ENTRADAS(0) AND NOT ENTRADAS(1) AND NOT ENTRADAS(2) AND ENTRADAS(3)) OR (NOT ENTRADAS(0) AND ENTRADAS(1) AND NOT ENTRADAS(2) AND NOT ENTRADAS(3));
	SAIDAS(1) <= (NOT ENTRADAS(0) AND ENTRADAS(1) AND NOT ENTRADAS(2) AND ENTRADAS(3)) OR (NOT ENTRADAS(0) AND ENTRADAS(1) AND ENTRADAS(2) AND ENTRADAS(3));
	SAIDAS(2) <= NOT ENTRADAS(0) AND NOT ENTRADAS(1) AND ENTRADAS(2) AND NOT ENTRADAS(3);
	SAIDAS(3) <= (NOT ENTRADAS(0) AND NOT ENTRADAS(1) AND NOT ENTRADAS(2) AND ENTRADAS(3)) OR (NOT ENTRADAS(0) AND ENTRADAS(1) AND NOT ENTRADAS(2) AND NOT ENTRADAS(3)) OR (NOT ENTRADAS(0) AND ENTRADAS(1) AND ENTRADAS(2) AND ENTRADAS(3));
	SAIDAS(4) <= (NOT ENTRADAS(0) AND NOT ENTRADAS(1) AND ENTRADAS(3)) OR (NOT ENTRADAS(0) AND ENTRADAS(1) AND NOT ENTRADAS(2)) OR (ENTRADAS(0) AND NOT ENTRADAS(1) AND NOT ENTRADAS(2) AND NOT ENTRADAS(3));
	SAIDAS(5) <= (NOT ENTRADAS(0) AND NOT ENTRADAS(1) AND ENTRADAS(3)) OR (NOT ENTRADAS(0) AND NOT ENTRADAS(1) AND ENTRADAS(2)) OR (NOT ENTRADAS(0) AND ENTRADAS(2) AND ENTRADAS(3));
	SAIDAS(6) <= (NOT ENTRADAS(0) AND NOT ENTRADAS(1) AND NOT ENTRADAS(2)) OR (NOT ENTRADAS(0) AND ENTRADAS(1) AND ENTRADAS(2) AND ENTRADAS(3));
END hardware;