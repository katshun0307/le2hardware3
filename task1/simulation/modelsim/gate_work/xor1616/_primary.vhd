library verilog;
use verilog.vl_types.all;
entity xor1616 is
    port(
        xorOut          : out    vl_logic_vector(15 downto 0);
        xorInA          : in     vl_logic_vector(15 downto 0);
        xorInB          : in     vl_logic_vector(15 downto 0)
    );
end xor1616;
