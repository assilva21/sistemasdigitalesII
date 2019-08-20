library ieee;
use ieee.std_logic_1164.all;
entity controlador_ludo is
Port(
	clock: in std_logic;
	R, S, turno, dado1, dado2, igual1, igual2 : in std_logic;
		aleatorio_jugador, aumentar_verde, aumentar_rojo,registro_dado1, 
		registro_dado2, enable, led_indicador,led_verde, led_rojo,reset: out std_logic;
		state: out std_logic_vector(5 downto 0));
	end controlador_ludo;
Architecture sol of controlador_ludo is
	type estado is (T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, 
	 T11,  T12, T13);
	signal y:estado;

begin
--transiciones
	Process(R, clock)
	begin
	if R = '1' then y <= T1;
	elsif clock'event and clock = '1' then
		case y is
		when T1 => if S = '1' then y<=T2; else y<=T1; end if;
		when T2 => if S = '0' then y<=T3; else y<=T2; end if;
		when T3 => y<=T4;
		when T4 => if turno = '1' then y<=T5;
						else y<=T6; end if;
		when T6 => if dado2 = '1' then y<=T8; else y<=T6; end if;
		when T8 => if dado2 = '0' then y<=T9; else y<=T8; end if;
		when T5 => if dado1 = '1' then y<=T7; else y<=T5; end if;
		when T7 => if dado1 = '0' then y<=T10; else y<=T7; end if;
		when T10 => y<=T11;
		when T9 => y<=T12;
		when T11 => if igual1 = '1' then y<=T13;
						else y<=T6; end if;
		
		when T12 => if igual2 = '1' then y<=T13;
						else y<=T5; end if;
		when T13 => y<=T1;
						
		end case;
	end if;
end process;
--Salidas
	process(R, clock)
	begin 
	aleatorio_jugador<= '0'; aumentar_verde<= '0'; aumentar_rojo<= '0';registro_dado1<= '0'; 
	registro_dado2<= '0'; enable<= '0'; led_indicador<= '0';led_verde<= '0'; led_rojo<= '0';reset<= '0';
	case y is
		when T1 => state <= "000001";enable<= '1';aleatorio_jugador<= '1';
		when T2 => state <= "000010";enable<= '1';	
		when T3 => state <= "000011";reset<='1';enable<= '1';led_indicador<= '1';	
		when T4 => state <= "000100"; enable<= '1';	
		when T5 => state <= "000101"; led_verde<= '1';enable<= '1';	
		when T6 => state <= "000110"; enable<= '1';led_rojo<= '1';
		when T7 => state <= "000111"; led_verde<= '1';enable<= '1';	registro_dado1<= '1';
		when T8 => state <= "001000";enable<= '1';led_rojo<= '1';registro_dado2<= '1'; 
		when T9 => state <= "001001";enable<= '1';led_rojo<= '1';aumentar_rojo<= '1';
		
		when T10 => state <= "001010";led_verde<= '1';enable<= '1';aumentar_verde<= '1';
		when T11 => state <= "001011";led_verde<= '1';enable<= '1';led_indicador<= '1';	
		when T12 => state <= "001100";enable<= '1';led_rojo<= '1';led_indicador<= '1';	
		when T13 => state <= "001100";enable<= '1';led_indicador<= '1';

		end case;
end process;
end sol;
