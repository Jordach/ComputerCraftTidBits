-- supported positions:
-- top, left, right, front, back, bottom
--
 
monitor_location = "top"
 
thermal_exp_locale = "left"
 
atable = peripheral.call(thermal_exp_locale, "getTankInfo")
 
local monitor = peripheral.wrap(monitor_location)
 
monitor.setTextScale(2)
 
while true do
--
monitor.clear()
monitor.setCursorPos(1,1)
 
atable = peripheral.call(thermal_exp_locale, "getTankInfo")
 
a = atable[1].capacity
b = atable[1].contents
 
monitor.write(b.amount.. "/" ..a)
 
sleep(1)
 
--monitor.clear()
 
end
