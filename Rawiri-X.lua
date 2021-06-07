game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Rawiri X!";
	Text  = "Enjoy Skids";
	Icon = "";
	Duration = 4;
})

local active = true
local trueActive = true
local rawiriEnabled = false
local XType = "Sphere"
local X = 5

local rawiri = Instance.new("Part")
rawiri.BrickColor = BrickColor.White()
rawiri.Transparency = 0.3
rawiri.Anchored = true
rawiri.CanCollide = false
rawiri.Size = Vector3.new(0,0,0)
rawiri.Material = Enum.Material.ForceField

local mouse = game.Players.LocalPlayer:GetMouse()

bindg = "g"
mouse.KeyDown:connect(function(keyg)
	if keyg == bindg then
		rawiriEnabled = not rawiriEnabled
	end
end)

bindr = "r" 
mouse.KeyDown:connect(function(keyr)
	if keyr == bindr then
		X = X + 0.5
	end
end)

bindt = "t"
mouse.KeyDown:connect(function(keyt)
	if keyt == bindt then
		X = X - 0.5
	end
end)

local plr = game.Players.LocalPlayer
local t = tick()
local function onHit(hit,handle)
    local victim = hit.Parent:FindFirstChildOfClass("Humanoid")
	    if victim and victim.Parent.Name ~= game.Players.LocalPlayer.Name then
		if dmgEnabled then
	        for _,v in pairs(hit.Parent:GetChildren()) do
	            if v:IsA("Part") and v.Transparency <= 1 and victim.Health > 0 and tick()-t >= 0.05 then
	                firetouchinterest(v,handle,0)
	                firetouchinterest(v,handle,1)
	                t = tick()
	            end
			end
		else
			firetouchinterest(hit,handle,0)
			firetouchinterest(hit,handle,1)
		end
    end
end

local cooldown = false
game:GetService("RunService").RenderStepped:connect(function()
	if not active or not trueActive then return end
	local s = plr.Character and plr.Character:FindFirstChildOfClass("Tool")
	if not s then 
		rawiri.Parent = nil 
	end
	if s then
		local handle = s:FindFirstChild("Handle") or s:FindFirstChildOfClass("Part")
		if handle then
			if rawiriEnabled then
				rawiri.Parent = workspace
			else
				rawiri.Parent = nil
			end
			if X then
				if XType == "Sphere" then
					rawiri.Shape = Enum.PartType.Ball
					rawiri.Size = Vector3.new(X,X,X)
					rawiri.CFrame = handle.CFrame
		            for _,v in pairs(game.Players:GetPlayers()) do
		                local hrp = v.Character and v.Character.PrimaryPart
		                if hrp and handle then
		                    local mag = (hrp.Position-handle.Position).magnitude
		                    if mag <= X then
		                        onHit(hrp,handle)
							end
						end
					end
				end
			end
		end
	end
end)

local rb = 0
while wait() do
	if rb >= 0.99 then
		rb = 0
	elseif rb < 1 then
		rb = rb+0.009
	end

	local h = (rb)
	local color = Color3.fromHSV(h, 1, 0.8)

	rawiri.Color = color
end

local AC = false
local Key = Enum.KeyCode.C

game:GetService("UserInputService").InputBegan:Connect(function(k,g)
  if not g and k.KeyCode == Key then
    AC = not AC
  end
end)

while wait() do
  if AC then
     pcall(function()
       local Sword = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Tool'
Sword:Activate()
 Sword:Activate()
            end)
  end
end
