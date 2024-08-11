ws = http.websocket("ws://localhost:5656") -- ws server
local wsmsg = io.open(currentsong.txt, "r") -- open txt
local msg = tostring(wsmsg) -- stringify
io.close(currentsong.txt) -- close txt

ws.send(msg) -- send
ws.close()
