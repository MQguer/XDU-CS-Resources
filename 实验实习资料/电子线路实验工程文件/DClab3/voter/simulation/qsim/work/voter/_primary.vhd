library verilog;
use verilog.vl_types.all;
entity voter is
    port(
        Result          : out    vl_logic;
        A               : in     vl_logic;
        C               : in     vl_logic;
        B               : in     vl_logic
    );
end voter;
