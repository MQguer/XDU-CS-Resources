library verilog;
use verilog.vl_types.all;
entity clock_vlg_sample_tst is
    port(
        pin_name1       : in     vl_logic;
        pin_name9       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end clock_vlg_sample_tst;
