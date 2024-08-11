local chatBox = peripheral.find("chatBox")
ws = http.websocket("ws://localhost:5656")
local wsmsg = ws.receive()
local msg = tostring(wsmsg)
 
chatBox.sendMessage(msg)
