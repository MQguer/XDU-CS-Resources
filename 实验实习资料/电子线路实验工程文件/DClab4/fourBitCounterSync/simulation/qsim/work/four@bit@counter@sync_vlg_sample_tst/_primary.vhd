library verilog;
use verilog.vl_types.all;
entity fourBitCounterSync_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fourBitCounterSync_vlg_sample_tst;
