from myhdl import *
from shifting_register import shifting_register

@block
def shifting_register_testbech():
    clock = Signal(bool(0))
    reset = ResetSignal(0,active = 0, async= True)
    led_driver = Signal(modbv(1)[8:]) # 8 to 1, 8bits in all
    shifting_register_1 = shifting_register(clock,reset,led_driver)
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

        for i in range(30):
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

    return clockGen, stimulus,monitor,shifting_register_1

tb =  shifting_register_testbech()
tb.config_sim(trace=True)
tb.run_sim()

