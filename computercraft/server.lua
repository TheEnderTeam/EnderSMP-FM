local chatBox = peripheral.find("chatBox")
ws = http.websocket("ws://localhost:5656")
local file = currentsong.txt
local wsmsg = io.open(file, "r")
local msg = tostring(wsmsg)
 
ws.send(msg)
