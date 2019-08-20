library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
 
entity Registro_0 is 
PORT(clock,reset,enable: IN STD_LOGIC;    
Ent : IN STD_LOGIC_VECTOR(2 downto 0);   
p_x : OUT STD_LOGIC_VECTOR (2 downto 0)); 
END Registro_0; 
 
architecture operacion of Registro_0 is 
signal temp: STD_LOGIC_VECTOR(2 downto 0); 
BEGIN  
	PROCESS(clock,reset)  
	BEGIN   
		if reset='1' then temp<="000";   
		elsif (clock'event and clock='1') then    
			if(enable='1') then      
				temp<=Ent; 
			end if;   
		end if;  
	end PROCESS;  
p_x<=temp; 
end operacion;