library verilog;
use verilog.vl_types.all;
entity DffValidation_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        \in\            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end DffValidation_vlg_sample_tst;
