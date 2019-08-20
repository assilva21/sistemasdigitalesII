library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 
 
entity Registro is 
PORT(clock,reset,enable: IN STD_LOGIC;    
Ent : IN STD_LOGIC_VECTOR(5 downto 0);   
Yo : OUT STD_LOGIC_VECTOR (5 downto 0)); 
END Registro; 
 
architecture operacion of Registro is 
signal temp: STD_LOGIC_VECTOR(5 downto 0); 
BEGIN  
	PROCESS(clock,reset)  
	BEGIN   
		if reset='1' then temp<="000000";   
		elsif (clock'event and clock='1') then    
			if(enable='1') then      
				temp<=Ent; 
			end if;   
		end if;  
	end PROCESS;  
Yo<=temp; 
end operacion; 