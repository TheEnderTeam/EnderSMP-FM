local chatBox = peripheral.find("chatBox")
ws = http.websocket("ws://localhost:5656")

while true do
 local wsmsg = io.open(currentsong.txt, "r")
 local msg = tostring(wsmsg)
 ws.send(msg)
end
