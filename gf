getgenv().KiTTYWARE = {
    autoPrepare = {
        Usernames = {
            "pirrellkoa6959",
            "lafayecui2515",
            "ruttenbcua3120",
            "gendronroe0080",
            "lyversmii7701",
            "kainzyoi3045",
            "neuerbujiu6291",
            "debellokue8649",
            "osmonsoceu5794",
            "standaefeu4229",
            "piochxou6434",
            "vaniervio1579",
            "weltmandeo0461",
            "alpeu6829",
            "licarehae2995",
            "ehrenfefau1904",
            "chatignree1102",
            "zickoa5658",
            "maluginfou4885",
            "fetterlpau7796",
            "rhinernoe0817",
            "pickelslea0523",
            "palayrau2446",
            "ludvigszie8367",
            "regestehiu2857",
            "huffnagkee5950",
            "veronicjuu9710",
            "thornernou4825",
            "tredewaa4798",
            "taitenia1751",
            "pediconria8442",
            "gronskireu3027",
            --more user etc
        },
        mailConfig = {
            {Class = "Pet", Name = "Frostbyte Bear", Tier = 2, Shiny = false, Amount = 40},
            {Class = "Currency", Name = "Diamonds", Tier = nil, Shiny = false, Amount = 80000},
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
