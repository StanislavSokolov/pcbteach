library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top_level is
	port(
		
		clk       	: in	std_logic;
		en        	: in	std_logic;
		leds_out	: out	std_logic_vector( 3 downto 0 );
		TXD			: out	std_logic;
		RXD			: in	std_logic;
		SDA			: inout std_logic;
		SCL			: inout	std_Logic;
		keys_in : in std_logic_vector( 3 downto 0 );
		dig_sel : out std_logic_vector( 3 downto 0 );
		seg7_code : out std_logic_vector( 7 downto 0 )
	);
	
end top_level;


architecture arch of top_level is

	signal top_sda_in, top_sda_oe	: std_logic;
	signal top_scl_in, top_scl_oe 	: std_logic;
	
	
	 component simple_struct is
        port (
            clk_clk       : in  std_logic                    := 'X';             -- clk
            leds_leds     : out std_logic_vector(3 downto 0);                    -- leds
            reset_reset_n : in  std_logic                    := 'X';             -- reset_n
            scl_in        : in  std_logic                    := 'X';             -- in
            scl_oe        : out std_logic;                                       -- oe
            sda_in        : in  std_logic                    := 'X';             -- in
            sda_oe        : out std_logic;                                       -- oe
            usart_rxd     : in  std_logic                    := 'X';             -- rxd
            usart_txd     : out std_logic;                                       -- txd
				input0_input0 : in  std_logic;                    
				enable_enable : in std_logic_vector(3 downto 0);
				indicator_indicator : out std_logic_vector(3 downto 0);
				indicator2_indicator2  : in std_logic_vector(6 downto 0);
				indicator3_indicator3  : in std_logic_vector(6 downto 0);
				segment_segment : out std_logic_vector(6 downto 0)
        );
    end component simple_struct;

begin
	
	 u0 : component simple_struct
        port map (
            clk_clk       => clk, 				--   clk.clk
            leds_leds     =>  leds_out, 		--      .leds
            reset_reset_n =>  en, 				-- reset.reset_n
            scl_in        =>  top_scl_in,		--   scl.in
            scl_oe        =>  top_scl_oe,		--      .oe
            sda_in        =>  top_sda_in,		--   sda.in
            sda_oe        =>  top_sda_oe,		--      .oe
            usart_rxd     =>  RXD,				-- usart.rxd
            usart_txd     =>  TXD,				--      .txd
				input0_input0    =>  keys_in(0),
				segment_segment => seg7_code(6 downto 0),
				indicator_indicator => dig_sel,
				enable_enable => x"3",
				indicator2_indicator2 => (others => '0'),
				indicator3_indicator3 => (others => '0')
        );
	
	
	SDA <= '0' when top_sda_oe = '1' else 'Z';
	top_sda_in <= SDA;
	
	SCL <= '0' when top_scl_oe = '1' else 'Z';
	top_scl_in <= SCL;

	seg7_code(7) <= '1';

end arch;