library verilog;
use verilog.vl_types.all;
entity DffValidation is
    port(
        \out\           : out    vl_logic;
        clock           : in     vl_logic;
        \in\            : in     vl_logic
    );
end DffValidation;
