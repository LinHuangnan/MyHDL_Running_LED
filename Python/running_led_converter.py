from myhdl import *
from running_led import running_led

clock = Signal(bool(0))
reset = ResetSignal(0, active=0, async=True)
led_driver = Signal(intbv(1)[8:])

runing_led_1 = running_led(clock, reset, led_driver)

runing_led_1.convert(hdl='Verilog')