library verilog;
use verilog.vl_types.all;
entity fourbit_adder is
    port(
        Carry           : out    vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        Sum             : out    vl_logic_vector(3 downto 0)
    );
end fourbit_adder;
