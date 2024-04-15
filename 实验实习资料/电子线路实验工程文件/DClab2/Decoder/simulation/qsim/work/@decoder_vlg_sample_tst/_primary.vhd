library verilog;
use verilog.vl_types.all;
entity Decoder_vlg_sample_tst is
    port(
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        E               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Decoder_vlg_sample_tst;
