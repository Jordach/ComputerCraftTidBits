--monitor location

mon = peripheral.wrap("back")
mon.clear()
mon.setTextScale(4)
mon.setCursorPos(1,1)

user_ready = false

mon.write("Waiting...")

while true do

	if redstone.getInput("left") == true then

		if user_ready == false then

			mon.clear()
			mon.setCursorPos(1,1)
			mon.write("Ready.")
			user_ready = true

		elseif user_ready == true then

			mon.clear()
			mon.setCursorPos(1,1)
			mon.write("Not ready.")

		else
			print "lol, debug here"
		end
	
	end

	if redstone.getInput("right") == true then

		mon.clear()
		mon.setCursorPos(1,1)
		mon.write("Waiting...")
	
	end
	
	sleep(1)
end
