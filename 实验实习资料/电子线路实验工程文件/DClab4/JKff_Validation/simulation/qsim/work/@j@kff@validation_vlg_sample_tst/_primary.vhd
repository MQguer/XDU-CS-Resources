library verilog;
use verilog.vl_types.all;
entity JKffValidation_vlg_sample_tst is
    port(
        Clear           : in     vl_logic;
        Clock           : in     vl_logic;
        J               : in     vl_logic;
        K               : in     vl_logic;
        SET             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end JKffValidation_vlg_sample_tst;
