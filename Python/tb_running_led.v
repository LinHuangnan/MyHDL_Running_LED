module tb_running_led;

reg clock;
reg reset;
wire [7:0] led_driver;

initial begin
    $from_myhdl(
        clock,
        reset
    );
    $to_myhdl(
        led_driver
    );
end

running_led dut(
    clock,
    reset,
    led_driver
);

endmodule
