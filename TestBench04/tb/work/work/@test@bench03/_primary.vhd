library verilog;
use verilog.vl_types.all;
entity TestBench03 is
    generic(
        D_WIDTH         : integer := 16;
        A_WIDTH         : integer := 4;
        A_MAX           : integer := 16
    );
    port(
        clk             : in     vl_logic;
        en_write        : in     vl_logic;
        address_write   : in     vl_logic_vector;
        data_write      : in     vl_logic_vector;
        write_enable    : in     vl_logic;
        en_read         : in     vl_logic;
        address_read    : in     vl_logic_vector;
        data_read       : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of D_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of A_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of A_MAX : constant is 1;
end TestBench03;
