library verilog;
use verilog.vl_types.all;
entity modTen_vlg_sample_tst is
    port(
        ClearAll        : in     vl_logic;
        CP              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end modTen_vlg_sample_tst;
