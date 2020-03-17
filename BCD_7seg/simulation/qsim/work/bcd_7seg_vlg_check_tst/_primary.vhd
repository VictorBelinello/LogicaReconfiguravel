library verilog;
use verilog.vl_types.all;
entity bcd_7seg_vlg_check_tst is
    port(
        SAIDAS          : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end bcd_7seg_vlg_check_tst;
