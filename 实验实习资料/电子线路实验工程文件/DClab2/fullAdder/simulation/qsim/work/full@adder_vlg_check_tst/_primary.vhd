library verilog;
use verilog.vl_types.all;
entity fullAdder_vlg_check_tst is
    port(
        C1              : in     vl_logic;
        C2              : in     vl_logic;
        C3              : in     vl_logic;
        C4              : in     vl_logic;
        Ci1             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end fullAdder_vlg_check_tst;
