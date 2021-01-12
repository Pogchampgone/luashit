_G.ToggleColor = Color3.fromRGB(255,140,0)
_G.ButtonColor = Color3.fromRGB(255,140,0)
_G.SliderColor = Color3.fromRGB(255,140,0)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("Crazy Hub")

local b = w:CreateFolder("Prison Life Gamer")

b:Label("Scripts",Color3.fromRGB(255,55,0),Color3.fromRGB(0,0,0)) --BgColor,TextColor

b:Button("Remove All Doors",function()
    game.Workspace.Doors:Destroy()
end)

b:Button("Teleport To Guns",function()
  game.Players.LocalPlayer.Character:MoveTo(Vector3.new(821,99,2258))
end)





-- 821,99,2258 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(5625.734375, 52.183319091797, -17259.158203125))
b:DestroyGUI()
 -- Use it if you want to let people customize toggles,buttons and sliders color

--Example of refresh

--[[local label = b:Label("Hi",Color3.fromRGB(255,0,0),Color3.fromRGB(0,255,0))

label:Refresh("Not epic")

local dropdown = b:Dropdown("Hi",{"A","B"})

dropdown:Refresh({"A","B","C"})
]]
