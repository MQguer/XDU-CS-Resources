library verilog;
use verilog.vl_types.all;
entity voter_vlg_check_tst is
    port(
        Result          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end voter_vlg_check_tst;
