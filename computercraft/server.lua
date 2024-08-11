ws = http.websocket("ws://localhost:5656") -- ws server
local wsmsg = io.open(currentsong.txt, "r") -- find current song
local msg = tostring(wsmsg) -- stringify

ws.send(msg) -- send
ws.close()
