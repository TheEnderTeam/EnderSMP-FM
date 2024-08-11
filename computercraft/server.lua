ws = http.websocket("ws://localhost:5656") -- ws server
local wsmsg = http.get("https://google.com/") -- http get request
local msg = tostring(wsmsg) -- stringify

ws.send(msg) -- send
ws.close()
