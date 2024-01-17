from myhdl import *
from clock_divider import clock_divider

@block
def clock_divider_testbech():
    clock = Signal(bool(0))
    reset = ResetSignal(0,active = 0, async= True)
    clock_led = Signal(bool(0))

    divider = clock_divider(clock,reset,clock_led)
    HALF_PERIOD = delay(10)

    @always(HALF_PERIOD)
    def clockGen():
        clock.next = not clock

    @instance
    def stimulus():
        reset.next = 1
        delay(20)
        reset.next = 0
        delay(20)
        reset.next = 1

        for i in range(60):
            yield clock.negedge
        raise StopSimulation()

    @instance
    def monitor():
        print("clock    clock_out")
        yield reset.posedge
        while 1:
            yield clock.posedge
            yield delay(1)
            print("  %s    %s"%(int(clock),int(clock_led)))

    return clockGen, stimulus,divider,monitor

tb =  clock_divider_testbech()
tb.config_sim(trace=True)
tb.run_sim()

