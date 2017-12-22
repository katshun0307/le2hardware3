library verilog;
use verilog.vl_types.all;
entity main is
    port(
        mainout         : out    vl_logic_vector(15 downto 0);
        opcode          : in     vl_logic_vector(3 downto 0);
        inputA          : in     vl_logic_vector(15 downto 0);
        inputB          : in     vl_logic_vector(15 downto 0)
    );
end main;
