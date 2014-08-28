term.clear()
term.setCursorPos(1,1)
install = false
function drawOne()
	term.setBackgroundColor(colors.grey)
	term.clear()
	term.setBackgroundColor(colors.white)
	term.setCursorPos(1,1)
	term.clearLine()
	term.setBackgroundColor(colors.grey)
	term.setTextColor(colors.black)
	term.setCursorPos(1,3)
	print("Install startup executable? [y/n]")
end

while true do 
	drawOne()
	local t = os.startTimer(1)
	local e = {os.pullEvent()}
	if (e[1]=="key" and e[2] == 21)
		install = true
		break
	elseif (e[1]=="key" and e[2] == 49)
		install = false
		break
	elseif (e[1]=="timer")

	end
end

if (install) then
	local handle = io.open("startup",'w')
	handle:write("print(\"YOLO\")")
	handle:close()
end
