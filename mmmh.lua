--https://discord.com/api/webhooks/799143833446252554/_GCLWP5zW5f9Ut6cZvJd_ODxgclNUGDg6QqHJOnbzp2w7L7n_dsJtVTA8laQyba3N_Ae



local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "https://discord.com/api/webhooks/799143833446252554/_GCLWP5zW5f9Ut6cZvJd_ODxgclNUGDg6QqHJOnbzp2w7L7n_dsJtVTA8laQyba3N_Ae"
local data = {
   ["content"] = " message(no embed)- you can take out embed if by deleting the bottom stuff(where it says EMBEDS)",
   ["embeds"] = {
       {
           ["title"] = "**Someone Executed Your Script!**",
           ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
