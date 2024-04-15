library verilog;
use verilog.vl_types.all;
entity One_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C_i             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end One_vlg_sample_tst;
