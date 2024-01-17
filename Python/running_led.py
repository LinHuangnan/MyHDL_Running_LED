from myhdl import *
from clock_divider import clock_divider
from shifting_register import shifting_register

@block
def running_led(clock, reset,led_driver):
    """ Incrementer with enable.
    clock -- clock input
    reset -- asynchronous reset input
    leds -- output for led driver
    """
    clock_led = Signal(bool(0))

    clock_divider_1 =     clock_divider(clock, reset, clock_led)
    shifting_register_1 =    shifting_register(clock_led, reset,  led_driver)

    return clock_divider_1,shifting_register_1
