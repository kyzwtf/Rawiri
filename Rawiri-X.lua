local player = game.Players.LocalPlayer
local whitelistedpeople = {
    "NAME"
  
}
for i,v in pairs (whitelistedpeople) do
    if player.Name == v then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kyzwtf/Rawiri/main/Rawiri",true))();
    end
end
