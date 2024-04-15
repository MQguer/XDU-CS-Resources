library verilog;
use verilog.vl_types.all;
entity One is
    port(
        S               : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        C_i             : in     vl_logic;
        Ci1             : out    vl_logic
    );
end One;
