library verilog;
use verilog.vl_types.all;
entity fullAdder_vlg_sample_tst is
    port(
        A1              : in     vl_logic;
        A2              : in     vl_logic;
        A3              : in     vl_logic;
        A4              : in     vl_logic;
        B1              : in     vl_logic;
        B2              : in     vl_logic;
        B3              : in     vl_logic;
        B4              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end fullAdder_vlg_sample_tst;
