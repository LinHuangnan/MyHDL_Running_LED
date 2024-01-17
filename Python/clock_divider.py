from myhdl import *

@block
def clock_divider(clock, reset,clock_led):
    """ Incrementer with enable.
    clock -- clock input
    reset -- asynchronous reset input
    clock_led -- led clock output frequency is clock/6000 000
    """
    counter = Signal(modbv(0,min=0,max=2**24))

    @always(clock.posedge, reset.negedge)
    def divider():
        if not reset:
            counter.next = 0
            clock_led.next  =  True
        else:
            counter.next = counter + 1
            if counter == 3000000 :
                counter.next = 0
                clock_led.next = not clock_led
    return divider