from myhdl import *

@block
def shifting_register(clock, reset,led_driver):
    """ Incrementer with enable.
    clock -- clock input
    reset -- asynchronous reset input
    reg -- output port to drive leds
    """
    reg = Signal(modbv(1)[8:])

    @always(clock.posedge, reset.negedge)
    def shift():
        if not reset:
            reg.next = 1
        else:
            if reg[7] == 1:
                reg.next = 1
            else:
                reg.next = reg<<1
        led_driver.next = ~ reg
    return shift


