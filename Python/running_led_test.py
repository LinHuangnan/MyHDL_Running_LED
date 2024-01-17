from myhdl import *
from running_led import running_led

@block
def running_led_testbech():
    clock = Signal(bool(0))
    reset = ResetSignal(0,active = 0, async= True)
    led_driver = Signal(intbv(1)[8:])

    runing_led_1 = running_led(clock,reset,led_driver)
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

        for i in range(100):
            yield clock.negedge
        raise StopSimulation()

    @instance
    def monitor():
        print("clock    led")
        yield reset.posedge
        while 1:
            yield clock.posedge
            yield delay(1)
            print("  %s    %s"%(int(clock),int(led_driver)))
    return clockGen, stimulus,monitor,runing_led_1

tb =  running_led_testbech()
tb.config_sim(trace=True)
tb.run_sim()

