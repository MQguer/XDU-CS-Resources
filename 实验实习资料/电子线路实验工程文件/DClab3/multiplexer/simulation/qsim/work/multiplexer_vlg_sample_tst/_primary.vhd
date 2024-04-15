library verilog;
use verilog.vl_types.all;
entity multiplexer_vlg_sample_tst is
    port(
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        D0              : in     vl_logic;
        D1              : in     vl_logic;
        D2              : in     vl_logic;
        D3              : in     vl_logic;
        Enable          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end multiplexer_vlg_sample_tst;
