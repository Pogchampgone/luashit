local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Crazy Hub") -- Creates the window

local b = w:CreateFolder("Natural Gamer Survival") -- Creates the folder(U will put here your buttons,etc)

b:Label("Scripts",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 


WinToggleEnabled = false

b:Toggle("Auto Win",function(bool)
    shared.toggle = bool
WinToggleEnabled  = bool
end)


spawn(function()
    while wait(3) do
        if WinToggleEnabled == true then
 game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-269, 179, 382))
 end
end
end)
    





--[[
How to refresh a dropdown:
1)Create the dropdown and save it in a variable
local yourvariable = b:Dropdown("Hi",yourtable,function(a)
    print(a)
end)
2)Refresh it using the function
yourvariable:Refresh(yourtable)
How to refresh a label:
1)Create your label and save it in a variable
local yourvariable = b:Label("Pretty Useless NGL",{
    TextSize = 25; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})
2)Refresh it using the function
yourvariable:Refresh("Hello") It will only change the text ofc
]]
