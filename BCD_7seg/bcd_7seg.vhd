-- Projeto de um conversor BCD -> 7 segmentos anodo comum
-- Tabela verdade do projeto no arquivo tabela.txt
--
-- Autores: Matheus Bigarelli e Victor Belinello
-- Data: 03/2020

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY bcd_7seg IS PORT (
	A, B, C, D : IN std_logic;
	SAIDAS : OUT std_logic_vector(0 TO 6) -- usado 0 TO 6 ao inves de 6 DOWNTO 0 para facilitar na comparação com a tabela verdade
);
END bcd_7seg;

-- NOTA: 0 TO 6 faz com que o bit mais a esquerda seja de indice 0

ARCHITECTURE hardware OF bcd_7seg IS
BEGIN
	SAIDAS(0) <= (NOT A AND NOT B AND NOT C AND D) OR (NOT A AND B AND NOT C AND NOT D); 								-- a = A'B'C'D + A'BC'D'
	SAIDAS(1) <= (A AND C) OR (A AND B) OR (B AND NOT C AND D) OR (B AND C AND NOT D);									-- b = AC + AB + BC'D + BCD'
	SAIDAS(2) <= (A AND C) OR (A AND B) OR (NOT B AND C AND NOT D);														-- c = AC + AB + B'CD'
	SAIDAS(3) <= (NOT A AND NOT B AND NOT C AND D) OR (NOT A AND B AND NOT C AND NOT D) OR (NOT A AND B AND C AND D);	-- d = A'B'C'D + A'BC'D' + A'BCD
	SAIDAS(4) <= (NOT A AND D) OR (NOT B AND NOT C AND D) OR (NOT A AND B AND NOT C);									-- e = A'D + B'C'D + A'BC' 
	SAIDAS(5) <= (NOT A AND NOT B AND D) OR (NOT A AND NOT B AND C) OR (NOT A AND C AND D);								-- f = A'B'D + A'B'C + A'CD
	SAIDAS(6) <= (NOT A AND NOT B AND NOT C) OR (NOT A AND B AND C AND D);												-- g = A'B'C' + A'BCD
END hardware;