local chatBox = peripheral.find("chatBox") -- Chatbox define
ws = http.websocket("ws://localhost:5656") -- Websocket URL
while true do -- Loop
 local wsmsg = ws.receive() -- Read from WS
 local msg = tostring(wsmsg) -- Stringify
 print(msg) -- print song name
 sleep(5) -- wait
end
 
chatBox.sendMessage(msg) -- chat
