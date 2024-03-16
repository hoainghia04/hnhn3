getgenv().KiTTYWARE = {
    autoPrepare = {
        Usernames = {
            "jamborcii5142",
            "rheapuo5465",
            "ausmanpoa2742",
            "desaulnikr7517",
            "purdinexr3523",
            "bergeneazr0937",
            "laurichavl9688",
            "shocklevae1999",
            "gillhoueks8357",
            "palmerideo6857",
            "devanneihg6442",
            "tesnerivn5742",
            "laquayafq0994",
            "dapramii1198",
            "figurskerk8035",
            "debliecoht6261",
            "ketolanei7646",
            "yehleitj6320",
            "zeroolr1964",
            "susapee0762",
            "angrumhoi5821",
            "harkcomeyn9845",
            "duskinoxr3301",
            "demmingetk7488",
            "delaineriu5116",
            "brescialai5783",
            "pollinotou9047",
            "raederokw8520",
            "clemoupj0723",
            "ichikawidz0423",
            "kapkeexk7755",
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
