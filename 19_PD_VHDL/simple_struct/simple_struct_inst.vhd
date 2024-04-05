	component simple_struct is
		port (
			clk_clk               : in  std_logic                    := 'X';             -- clk
			enable_enable         : in  std_logic_vector(3 downto 0) := (others => 'X'); -- enable
			indicator_indicator   : out std_logic_vector(3 downto 0);                    -- indicator
			indicator2_indicator2 : in  std_logic_vector(6 downto 0) := (others => 'X'); -- indicator2
			indicator3_indicator3 : in  std_logic_vector(6 downto 0) := (others => 'X'); -- indicator3
			input0_input0         : in  std_logic                    := 'X';             -- input0
			leds_leds             : out std_logic_vector(3 downto 0);                    -- leds
			reset_reset_n         : in  std_logic                    := 'X';             -- reset_n
			scl_in                : in  std_logic                    := 'X';             -- in
			scl_oe                : out std_logic;                                       -- oe
			sda_in                : in  std_logic                    := 'X';             -- in
			sda_oe                : out std_logic;                                       -- oe
			segment_segment       : out std_logic_vector(6 downto 0);                    -- segment
			usart_rxd             : in  std_logic                    := 'X';             -- rxd
			usart_txd             : out std_logic                                        -- txd
		);
	end component simple_struct;

	u0 : component simple_struct
		port map (
			clk_clk               => CONNECTED_TO_clk_clk,               --        clk.clk
			enable_enable         => CONNECTED_TO_enable_enable,         --     enable.enable
			indicator_indicator   => CONNECTED_TO_indicator_indicator,   --  indicator.indicator
			indicator2_indicator2 => CONNECTED_TO_indicator2_indicator2, -- indicator2.indicator2
			indicator3_indicator3 => CONNECTED_TO_indicator3_indicator3, -- indicator3.indicator3
			input0_input0         => CONNECTED_TO_input0_input0,         --     input0.input0
			leds_leds             => CONNECTED_TO_leds_leds,             --       leds.leds
			reset_reset_n         => CONNECTED_TO_reset_reset_n,         --      reset.reset_n
			scl_in                => CONNECTED_TO_scl_in,                --        scl.in
			scl_oe                => CONNECTED_TO_scl_oe,                --           .oe
			sda_in                => CONNECTED_TO_sda_in,                --        sda.in
			sda_oe                => CONNECTED_TO_sda_oe,                --           .oe
			segment_segment       => CONNECTED_TO_segment_segment,       --    segment.segment
			usart_rxd             => CONNECTED_TO_usart_rxd,             --      usart.rxd
			usart_txd             => CONNECTED_TO_usart_txd              --           .txd
		);

