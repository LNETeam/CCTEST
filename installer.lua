term.clear()
term.setCursorPos(1,1)
install = false
function drawOne()
	term.setBackgroundColor(colors.gray)
	term.clear()
	term.setBackgroundColor(colors.white)
	term.setCursorPos(1,1)
	term.clearLine()
	term.setBackgroundColor(colors.gray)
	term.setTextColor(colors.black)
	term.setCursorPos(1,3)
	print("Install startup executable? [y/n]")
end

while true do 
	drawOne()
	local t = os.startTimer(1)
	local e = {os.pullEvent()}
	if (e[1]=="key" and e[2] == 21) then
		install = true
		break
	elseif (e[1]=="key" and e[2] == 49) then
		install = false
		break
	elseif (e[1]=="timer") then

	end
end

if (install) then
	local handle = io.open("startup",'w')
	handle:write("print(\"YOLO\")")
	handle:close()
end
