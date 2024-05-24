library verilog;
use verilog.vl_types.all;
entity fourBitCoparer is
    port(
        L0              : out    vl_logic;
        A0              : in     vl_logic;
        B0              : in     vl_logic;
        S0              : out    vl_logic;
        E0              : out    vl_logic;
        L1              : out    vl_logic;
        A1              : in     vl_logic;
        B1              : in     vl_logic;
        S1              : out    vl_logic;
        E1              : out    vl_logic;
        L2              : out    vl_logic;
        A2              : in     vl_logic;
        B2              : in     vl_logic;
        S2              : out    vl_logic;
        E2              : out    vl_logic;
        L3              : out    vl_logic;
        A3              : in     vl_logic;
        B3              : in     vl_logic;
        S3              : out    vl_logic;
        E3              : out    vl_logic;
        L               : out    vl_logic;
        E               : out    vl_logic;
        S               : out    vl_logic
    );
end fourBitCoparer;
