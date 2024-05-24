library verilog;
use verilog.vl_types.all;
entity fullAdder is
    port(
        C1              : out    vl_logic;
        A1              : in     vl_logic;
        B1              : in     vl_logic;
        C2              : out    vl_logic;
        A2              : in     vl_logic;
        B2              : in     vl_logic;
        C3              : out    vl_logic;
        A3              : in     vl_logic;
        B3              : in     vl_logic;
        C4              : out    vl_logic;
        A4              : in     vl_logic;
        B4              : in     vl_logic;
        Ci1             : out    vl_logic
    );
end fullAdder;
