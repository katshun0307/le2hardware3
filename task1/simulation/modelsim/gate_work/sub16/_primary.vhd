library verilog;
use verilog.vl_types.all;
entity sub16 is
    port(
        borrow          : out    vl_logic;
        subInA          : in     vl_logic_vector(15 downto 0);
        subInB          : in     vl_logic_vector(15 downto 0);
        diff            : out    vl_logic_vector(15 downto 0)
    );
end sub16;
