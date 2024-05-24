library verilog;
use verilog.vl_types.all;
entity moc_vlg_sample_tst is
    port(
        cp              : in     vl_logic;
        DRN0            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end moc_vlg_sample_tst;
