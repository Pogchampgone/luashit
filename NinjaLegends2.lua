

_G.ToggleColor = Color3.fromRGB(255,0,0)
_G.ButtonColor = Color3.fromRGB(0,255,0)
_G.SliderColor = Color3.fromRGB(0,0,255)

local AutoEnabled = false
local AutoSellEnabled = false
local AutoBuyBladesEnabled = false

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("Crazy Hub")

local b = w:CreateFolder("Ninja Legends 2")

b:Label("Scripts",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor


b:Toggle("Auto Elements",function(bool)
    shared.toggle = bool
AutoEnabled = bool
end)

b:Toggle("Auto Sell",function(bool)
    shared.toggle = bool
AutoSellEnabled = bool
end)

b:Toggle("Auto Buy All Blades",function(bool)
    shared.toggle = bool
AutoBuyBladesEnabled = bool
end)

b:Toggle("Auto Buy All Backpack",function(bool)
    shared.toggle = bool
AutoBuyBackpacksEnabled = bool
end)

b:DestroyGUI()

spawn(function()
while wait() do
    if AutoEnabled == true then
local ohString1 = "swingBlade"
game:GetService("Players").LocalPlayer.saberEvent:FireServer(ohString1)
wait(0.1)
end
end
end)

spawn(function()
while wait() do
    if AutoSellEnabled == true then
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-93, 8631, 35))
wait(5)
end
end
end)

spawn(function()
while wait() do
    if AutoBuyBladesEnabled == true then
-- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

local ohString1 = "buyAllItems"
local ohTable2 = {
	["whichItems"] = "Swords",
	["whichPlanet"] = "Planet Chaos"
}

game:GetService("Players").LocalPlayer.saberEvent:FireServer(ohString1, ohTable2)
wait(0.1)
end
end
end)

spawn(function()
while wait() do
    if AutoBuyBackpacksEnabled == true then
-- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

local ohString1 = "buyAllItems"
local ohTable2 = {
	["whichItems"] = "Crystals",
	["whichPlanet"] = "Planet Chaos"
}

game:GetService("Players").LocalPlayer.saberEvent:FireServer(ohString1, ohTable2)
wait(0.1)
end
end
end)

--game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-93, 8631, 35))










