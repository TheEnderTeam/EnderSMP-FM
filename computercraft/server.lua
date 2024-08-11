local chatBox = peripheral.find("chatBox")
ws = http.websocket("ws://localhost:5656")
local wsmsg = http.get("google.com")
local msg = tostring(wsmsg)
 
ws.send(msg)