_G.ToggleColor = Color3.fromRGB(255,0,0)
_G.ButtonColor = Color3.fromRGB(0,255,0)
_G.SliderColor = Color3.fromRGB(0,0,255)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

AutoSellToggle = false
AutoBuyBossToggle = false
AutoBuyGeneticsToggle = false
AutoBuyBossToggle = false
AutoBuyWeaponToggle = false
AutoBuyDJToggle = false


local w = library:CreateWindow("Crazy Hub")

local b = w:CreateFolder("Adventure Simulator")

b:Label("Scripts",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

b:Toggle("Auto Sell",function(bool)
    shared.toggle = bool
    AutoSellToggle = bool
end)


b:Toggle("Auto Buy Boss Hit",function(bool)
    shared.toggle = bool
    AutoBuyBossToggle = bool
end)

b:Toggle("Auto Buy Genetics",function(bool)
    shared.toggle = bool
    AutoBuyGeneticsToggle = bool
end)

b:Toggle("Auto Hit",function(bool)
    shared.toggle = bool
    AutoAttackToggle = bool
end)

b:Toggle("Auto Buy Weapons",function(bool)
    shared.toggle = bool
    AutoBuyWeaponToggle = bool
end)


b:DestroyGUI()

spawn(function()
while wait(5) do 
    if AutoSellToggle == true then
    local ohTable1 = {
	["Action"] = "Sell"
}

game:GetService("ReplicatedStorage").Remotes.Events.Teleport:FireServer(ohTable1)
end
end
end)

spawn(function()
while wait(1) do 
    if AutoBuyBossToggle == true then
    local ohTable1 = {
	["Action"] = "Buy All",
	["Category"] = "Boss Hits"
}

game:GetService("ReplicatedStorage").Remotes.Events.Skill:FireServer(ohTable1)
end
end
end)

spawn(function()
while wait(1) do 
    if AutoBuyDJToggle == true then
   local ohTable1 = {
	["Action"] = "Buy All",
	["Category"] = "Double Jumps"
}

game:GetService("ReplicatedStorage").Remotes.Events.Skill:FireServer(ohTable1)
end
end
end)

spawn(function()
while wait(1) do 
    if AutoBuyGeneticsToggle == true then
local ohTable1 = {
	["Action"] = "Buy All",
	["Category"] = "Genetics"
}

game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer(ohTable1)
end
end
end)

spawn(function()
while wait(1) do 
    if AutoBuyWeaponToggle == true then
local ohTable1 = {
	["Action"] = "Buy All",
	["Category"] = "Weapons"
}

game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer(ohTable1)
end
end
end)

spawn(function()
while wait(1) do 
    if AutoAttackToggle == true then
local ohTable1 = {
	["Action"] = "Attack"
}

game:GetService("ReplicatedStorage").Remotes.Events.Weapon:FireServer(ohTable1)
end
end
end)






--Example of refresh

--[[local label = b:Label("Hi",Color3.fromRGB(255,0,0),Color3.fromRGB(0,255,0))

label:Refresh("Not epic")

local dropdown = b:Dropdown("Hi",{"A","B"})

dropdown:Refresh({"A","B","C"})
]]
