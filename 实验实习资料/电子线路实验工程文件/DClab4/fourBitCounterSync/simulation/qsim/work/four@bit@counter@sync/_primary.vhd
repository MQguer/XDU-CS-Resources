library verilog;
use verilog.vl_types.all;
entity fourBitCounterSync is
    port(
        Q0              : out    vl_logic;
        CLK             : in     vl_logic;
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        Q3              : out    vl_logic
    );
end fourBitCounterSync;
