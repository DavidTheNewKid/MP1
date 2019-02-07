-- File: tb_nands.vhd
-- Includes: Testbenches for NAND2, NAND3, NAND5 gates

-- TB_NAND2, Test Bench for NAND2 gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Creates entity for test bench
entity TB_NAND2 is
end entity TB_NAND2;

architecture NAND2_VERIFY of TB_NAND2 is
  -- i1 = Input 1, i2 = Input 2, o = output
  signal i1, i2, o : STD_LOGIC;
  -- curri = Temporary variable to loop through inputs
  signal curr_i : STD_LOGIC_VECTOR(1 downto 0) := "00";
begin
  -- Design Under Verication = NAND2 Gate, portmapping test bench variables to test entity's
  duv:  entity work.NAND2(NAND2_EQ)
        port map (i1 => i1, i2 => i2, o => o);
        
  apply_test_cases : process is
    procedure apply_test -- Takes 2 bit vector and splits between inputs
      (curr_i : in STD_LOGIC_VECTOR(1 downto 0)) is
    begin
      -- binds passed input from vector to corresponding NAND2 input
      i1 <= curr_i(0);
      -- binds passed input from vector to corresponding NAND2 input
      i2 <= curr_i(1);
      wait for 100 ps;
    end procedure apply_test;
  begin
    -- Starts loop for cycling through inputs
    for i in 0 to 4 loop
      -- takes current input cycle and apply to NAND2
      apply_test(curr_i);
      -- Increments the current input vector
      curr_i <= curr_i + "01";
    end loop;
    wait;
  end process apply_test_cases;
end architecture NAND2_VERIFY;

-- TB_NAND3, Test Bench for NAND3 gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Creates entity for test bench
entity TB_NAND3 is
end entity TB_NAND3;

architecture NAND3_VERIFY of TB_NAND3 is
  -- i1 = Input 1, i2 = Input 2, i3 = input 3, o = output
  signal i1, i2, i3, o : STD_LOGIC;
  -- curri = Temporary variable to loop through inputs
  signal curr_i : STD_LOGIC_VECTOR(2 downto 0) := "000";
begin
  -- Design Under Verication = NAND3 Gate, portmapping test bench variables to test entity's
  duv:  entity work.NAND3(NAND3_EQ)
        port map (i1 => i1, i2 => i2, i3 => i3, o => o);
        
  apply_test_cases : process is
    procedure apply_test -- Takes 3 bit vector and splits between inputs
      (curr_i : in STD_LOGIC_VECTOR(2 downto 0)) is
    begin
      -- binds passed input from vector to corresponding NAND3 input
      i1 <= curr_i(0);
      -- binds passed input from vector to corresponding NAND3 input
      i2 <= curr_i(1);
      -- binds passed input from vector to corresponding NAND3 input
      i3 <= curr_i(2);
      wait for 100 ps;
    end procedure apply_test;
  begin
    -- Starts loop for cycling through inputs
    for i in 0 to 8 loop
      -- takes current input cycle and apply to NAND3
      apply_test(curr_i);
      -- Increments the current input vector
      curr_i <= curr_i + "001";
    end loop;
    wait;
  end process apply_test_cases;
end architecture NAND3_VERIFY;

-- TB_NAND5, Test Bench for NAND5 gate, Creation
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Creates entity for test bench
entity TB_NAND5 is
end entity TB_NAND5;

architecture NAND5_VERIFY of TB_NAND5 is
  -- i1 = Input 1, i2 = Input 2, i3 = input 3, etc.
  -- o = output
  signal i1, i2, i3, i4, i5, o : STD_LOGIC;
  -- curri = Temporary variable to loop through inputs
  signal curr_i : STD_LOGIC_VECTOR(4 downto 0) := "00000";
begin
  -- Design Under Verication = NAND5 Gate, portmapping test bench variables to test entity's
  duv:  entity work.NAND5(NAND5_EQ)
        port map (i1 => i1, i2 => i2, i3 => i3, i4 => i4, i5 => i5, o => o);
        
  apply_test_cases : process is
    procedure apply_test -- Takes 5 bit vector and splits between inputs
      (curr_i : in STD_LOGIC_VECTOR(4 downto 0)) is
    begin
      -- binds passed input from vector to corresponding NAND5 input
      i1 <= curr_i(0);
      -- binds passed input from vector to corresponding NAND5 input
      i2 <= curr_i(1);
      -- binds passed input from vector to corresponding NAND5 input
      i3 <= curr_i(2);
      -- binds passed input from vector to corresponding NAND5 input
      i4 <= curr_i(3);
      -- binds passed input from vector to corresponding NAND5 input
      i5 <= curr_i(4);
      wait for 100 ps;
    end procedure apply_test;
  begin
    -- Starts loop for cycling through inputs
    for i in 0 to 32 loop
      -- takes current input cycle and apply to NAND5
      apply_test(curr_i);
      -- Increments the current input vector
      curr_i <= curr_i + "00001";
    end loop;
    wait;
  end process apply_test_cases;
end architecture NAND5_VERIFY;