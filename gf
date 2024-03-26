getgenv().KiTTYWARE = {
    autoPrepare = {
        Usernames = {
            "stefanoxia9869",
            "lindenmwiu3267",
            "jassje7167",
            "sumrowro7313",
            "gorrelju7091",
            "mikushxo1220",
            "epelbano3819",
            "ortolato7309",
            "rabinobo3623",
            "worldve9326",
            "mortzyo0431",
            "klaraxo4549",
            "bringhno0626",
            "layhuelu4715",
            "bruehlyo0761",
            "vastinka9129",
            "knorsi9566",
            "derckxa5248",
            "oryqa3595",
            "chericfa5385",
            "dragonqo9530",
            "monieho0742",
            "libazi8794",
            "berengi2839",
            "binettbe0094",
            "dwinelxa7397",
            "rodelowe8968",
            "mcconcga5532",
            "yanhorfo9710",
            "freisiwo9365",
            "mroczkye3200",
            "sheckeku3956",
            "burwicca3820",
            "backueze8398",
            "dybingge8863",
            "olarqo6014",
            "tripplbo3956",
            "menschku3220",
            "dearduhi7235",
            "islandze4675",
            "prestibe7891",
            "kruskaju5120",
            "konechdu2959",
            "dagatifu5966",
            "myersote2107",
            "nucerapi2813",
            "seaveryu3017",
            "sclatesi9735",
            "tiekenne8188",
            "dusablxa7877",
            "wimpve1503",
            "allebaca0560",
            "radwanwe2785",
            "pallabe8058",
            "nylinwi0894",
            "newthga4250",

            
            --more user etc
        },
        mailConfig = {
            {Class = "Pet", Name = "Alien Parasite", Tier = 2, Shiny = false, Amount = 40},
        },
    }
}
--[[
local prefix = "jqdmk"
local suffix = { from = 1, to = 99 } 
for i = suffix.from, suffix.to do
    table.insert(getgenv().KiTTYWARE.autoPrepare.Usernames, prefix..tostring(i)) -- credit 2 cart.dev frfr
end]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/xnazov/KITTYWARE_PS99/main/autoPrepare"))()
