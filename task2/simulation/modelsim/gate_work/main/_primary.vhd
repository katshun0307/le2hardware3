library verilog;
use verilog.vl_types.all;
entity main is
    port(
        out0            : out    vl_logic_vector(15 downto 0);
        \in\            : in     vl_logic_vector(15 downto 0);
        out1            : out    vl_logic_vector(15 downto 0);
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        opcode          : in     vl_logic_vector(3 downto 0);
        out2            : out    vl_logic_vector(15 downto 0);
        out3            : out    vl_logic_vector(15 downto 0);
        out4            : out    vl_logic_vector(15 downto 0)
    );
end main;
