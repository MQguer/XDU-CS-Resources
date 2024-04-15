library verilog;
use verilog.vl_types.all;
entity fourBitCounterSync_vlg_check_tst is
    port(
        Q0              : in     vl_logic;
        Q1              : in     vl_logic;
        Q2              : in     vl_logic;
        Q3              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end fourBitCounterSync_vlg_check_tst;
