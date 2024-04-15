library verilog;
use verilog.vl_types.all;
entity fourBitCoparer_vlg_check_tst is
    port(
        E               : in     vl_logic;
        E0              : in     vl_logic;
        E1              : in     vl_logic;
        E2              : in     vl_logic;
        E3              : in     vl_logic;
        L               : in     vl_logic;
        L0              : in     vl_logic;
        L1              : in     vl_logic;
        L2              : in     vl_logic;
        L3              : in     vl_logic;
        S               : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        S3              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end fourBitCoparer_vlg_check_tst;
