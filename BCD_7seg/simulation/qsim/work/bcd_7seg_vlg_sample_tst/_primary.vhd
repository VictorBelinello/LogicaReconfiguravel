library verilog;
use verilog.vl_types.all;
entity bcd_7seg_vlg_sample_tst is
    port(
        ENTRADAS        : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end bcd_7seg_vlg_sample_tst;
