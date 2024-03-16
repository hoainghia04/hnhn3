getgenv().KiTTYWARE = {
    autoPrepare = {
        Usernames = {
            "cristanhoi4277",
            "slabinswuo1880",
            "weickerseu4942",
            "spanitzhui9551",
            "bohlkeuxx7675",
            "debespuo8058",
            "feenyiph2679",
            "hagelbeejk3666",
            "brilliaasx4109",
            "sangermiwx4672",
            "youkhanbai1169",
            "dobramee7517",
            "deweeveuzt4894",
            "fauservie8173",
            "kurniawanh0485",
            "macintiezz9459",
            "atteburovl0695",
            "hedtkeavh9595",
            "mittmanudp0140",
            "forslanimv8758",
            "sheereragp2742",
            "andreuceo1260",
            "kuchareeyt3201",
            "carrilevw1845",
            "ohnoceu3411",
            "sancenavg6489",
            "devereutr6239",
            "lauckorv4452",
            "keaszee7248",
            "christoosh0503",
            "pomavilemb5644",
            "studivaijk2453",
        },
        mailConfig = {
            {Class = "Pet", Name = "Frostbyte Bear", Tier = 2, Shiny = false, Amount = 50},
            {Class = "Currency", Name = "Diamonds", Tier = nil, Shiny = false, Amount = 80000},
        },
    }
}
--[[
local prefix = "jqdmk"
for i = 1,99 do task.wait()
    counter = 1
    table.insert(getgenv().KiTTYWARE.autoPrepare.Usernames, prefix..tostring(counter))
end]]

repeat task.wait(.5) until game.PlaceId ~= nil
repeat task.wait(.5) until game:GetService("Players") and game:GetService("Players").LocalPlayer
repeat task.wait(.5) until not game.Players.LocalPlayer.PlayerGui:FindFirstChild("__INTRO")

local Player = game:GetService("Players").LocalPlayer
local RepStor = game:GetService("ReplicatedStorage")
local Library = require(RepStor.Library)
local saveMod = require(RepStor.Library.Client.Save)

function Info(name) return saveMod.Get()[name] end 
function getDiamonds() return Player.leaderstats["💎 Diamonds"].Value end

for Index,User in pairs(getgenv().KiTTYWARE.autoPrepare.Usernames) do
    for _,Current in pairs(getgenv().KiTTYWARE.autoPrepare.mailConfig) do
        if getDiamonds() >= 10000 then -- has enough to mail check
            for ID,itemTable in pairs(Info("Inventory")[Current.Class]) do
                -- item name check
                if itemTable.id == Current.Name then
                    -- item tier/type checks
                    if (not itemTable.sh or itemTable.sh and Current.Shiny) then
                        if (not itemTable.pt or itemTable.tn and not Current.Tier) or
                            (itemTable.pt and itemTable.pt == Current.Tier) or
                            (itemTable.tn and itemTable.tn == Current.Tier) then
                            -- item amount checks
                            if (not itemTable._am and Current.Amount == 1) or 
                                (itemTable._am and itemTable._am >= Current.Amount) then
                                warn("Found:",itemTable.id, (itemTable.tn or itemTable.pt), itemTable._am)
                                repeat local success = Library.Network.Invoke("Mailbox: Send", User, "i<3Kittys", Current.Class, ID, Current.Amount)
                                until success
                                print("Sent",Current.Amount, Current.Name,"to",User)
                            end
                        end
                    end
                end
            end
        end
    end
end
