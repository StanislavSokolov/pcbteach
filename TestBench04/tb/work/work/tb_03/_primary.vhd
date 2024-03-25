library verilog;
use verilog.vl_types.all;
entity tb_03 is
    generic(
        D_WIDTH         : integer := 16;
        A_WIDTH         : integer := 4;
        A_MAX           : integer := 16;
        CHECK_WIDTH     : integer := 8
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of D_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of A_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of A_MAX : constant is 1;
    attribute mti_svvh_generic_type of CHECK_WIDTH : constant is 1;
end tb_03;
