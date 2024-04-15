library verilog;
use verilog.vl_types.all;
entity distributor_vlg_sample_tst is
    port(
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        Din             : in     vl_logic;
        Enable          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end distributor_vlg_sample_tst;
