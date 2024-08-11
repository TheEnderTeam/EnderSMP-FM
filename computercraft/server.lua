ws = http.websocket("ws://localhost:5656") -- ws server
local wsmsg = io.open("test.lua", "r")
io.input(wsmsg)
local msg = tostring(io.read(wsmsg)) -- stringify
io.close(wsmsg)

ws.send(msg) -- send
ws.close()
