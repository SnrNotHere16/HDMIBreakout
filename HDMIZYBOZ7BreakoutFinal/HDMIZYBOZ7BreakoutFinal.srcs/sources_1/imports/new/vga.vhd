----------------------------------------------------------------------------------
-- Engineer:       Mike Field <hamster@snap.net.nz>
-- Module Name:    ColourTest - Behavioral 
-- Description:    Generates an 640x480 VGA showing all colours
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vga is
   generic (
      hRez       : natural := 640;	
      hStartSync : natural := 656;
      hEndSync   : natural := 752;
      hMaxCount  : natural := 800;
      hsyncActive : std_logic := '0';
		
      vRez       : natural := 480;
      vStartSync : natural := 490;
      vEndSync   : natural := 492;
      vMaxCount  : natural := 525;
      vsyncActive : std_logic := '1';
      re          : natural := 1;
      bl          : natural := 2;
      gr          : natural := 4
   );

    Port ( pixelClock : in  STD_LOGIC;         
           Red        : out STD_LOGIC_VECTOR (7 downto 0);
           Green      : out STD_LOGIC_VECTOR (7 downto 0);
           Blue       : out STD_LOGIC_VECTOR (7 downto 0);
           hSync      : out STD_LOGIC;
           vSync      : out STD_LOGIC;
           blank      : out STD_LOGIC;
           hCounter   : out STD_LOGIC_VECTOR(11 downto 0);
           vCounter   : out STD_LOGIC_VECTOR(11 downto 0);
           grgb       : in STD_LOGIC_VECTOR (23 downto 0);
           h_v        : out STD_LOGIC;
           v_v        : out STD_LOGIC);
end vga;

architecture Behavioral of vga is
   type reg is record
      hCounter : std_logic_vector(11 downto 0);
      vCounter : std_logic_vector(11 downto 0);

      red      : std_logic_vector(7 downto 0);
      green    : std_logic_vector(7 downto 0);
      blue     : std_logic_vector(7 downto 0);

      h_v      : std_logic;
      v_v      : std_logic;
      hSync    : std_logic;
      vSync    : std_logic;
      blank    : std_logic;		
   end record;

   signal r : reg := ((others=>'0'), (others=>'0'),
                      (others=>'0'), (others=>'0'), (others=>'0'), 
                      '0', '0', '0', '0', '0');
   signal n : reg;   
begin
   -- Assign the outputs
   hCounter <= r.hCounter;
   vCounter <= r.vCounter;
   h_v <= r.h_v;
   v_v <= r.v_v;
   hSync <= r.hSync;
   vSync <= r.vSync;
   Red   <= r.red;
   Green <= r.green;
   Blue  <= r.blue;
   blank <= r.blank;
   
   process(r,n)
   begin
      n <= r;
      n.hSync <= not hSyncActive;      
      n.vSync <= not vSyncActive;      

      -- Count the lines and rows      
      if r.hCounter = hMaxCount-1 then
         n.hCounter <= (others => '0');
         if r.vCounter = vMaxCount-1 then
            n.vCounter <= (others => '0');
         else
            n.vCounter <= r.vCounter+1;
         end if;
      else
         n.hCounter <= r.hCounter+1;
      end if;

      if r.hCounter  < hRez and r.vCounter  < vRez then
--        if grgb(0) = '1' then
         n.red   <=  grgb (7 downto 0);
--       else 
--         n.red   <=  "00000000"; 
--       end if; 
--       if grgb(1) = '1' then
         n.green   <=  grgb (15 downto 8);
--       else 
--         n.green   <=  "00000000";    
--       end if;    
--       if grgb(2) = '1' then
         n.blue   <=  grgb (23 downto 16);
--       else 
--         n.blue   <=  "00000000";    
--       end if; 
         n.blank <= '0';
         n.h_V   <= '1';
         n.v_v   <= '1';
      else
         n.red   <= (others => '0');
         n.green <= (others => '0');
         n.blue  <= (others => '0');
         n.blank <= '1';
         n.h_V   <= '0';
         n.v_v   <= '0';
      end if;
      
      -- Are we in the hSync pulse?
      if r.hCounter >= hStartSync and r.hCounter < hEndSync then
         n.hSync <= hSyncActive;
      end if;

      -- Are we in the vSync pulse?
      if r.vCounter >= vStartSync and r.vCounter < vEndSync then
         n.vSync <= vSyncActive; 
      end if;
   end process;

   process(pixelClock,n)
   begin
      if rising_edge(pixelClock)
      then
         r <= n;
      end if;
   end process;
end Behavioral;
