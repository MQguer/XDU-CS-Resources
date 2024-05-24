library verilog;
use verilog.vl_types.all;
entity fourB_vlg_sample_tst is
    port(
        a1              : in     vl_logic;
        a2              : in     vl_logic;
        a3              : in     vl_logic;
        a4              : in     vl_logic;
        b1              : in     vl_logic;
        b2              : in     vl_logic;
        b3              : in     vl_logic;
        b4              : in     vl_logic;
        c0              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fourB_vlg_sample_tst;
