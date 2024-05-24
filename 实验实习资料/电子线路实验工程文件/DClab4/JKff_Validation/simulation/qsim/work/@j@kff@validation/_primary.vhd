library verilog;
use verilog.vl_types.all;
entity JKffValidation is
    port(
        Q               : out    vl_logic;
        SET             : in     vl_logic;
        Clear           : in     vl_logic;
        K               : in     vl_logic;
        J               : in     vl_logic;
        Clock           : in     vl_logic
    );
end JKffValidation;
