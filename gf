getgenv().KiTTYWARE = {
    autoPrepare = {
        Usernames = {
            "brackexa6642",
            "axse7006",
            "woldube4637",
            "shaubja0376",
            "romancqu0345",
            "mcgartso6129",
            "theriazi6670",
            "lindyxi8801",
            "ozaetamu8559",
            "swiontbi5081",
            "schiffyu7057",
            "quillave9649",
            "nebergfa0457",
            "vogelage4882",
            "oleksimo4104",
            "tubbyya1608",
            "modiseyu6907",
            "bumbaujo8628",
            "mossopdi7135",
            "dumoucto0087",
            "balisxe4722",
            "tremlye0012",
            "trayla8828",
            "rockmohi6570",
            "rigorxa2235",
            "regnerte2625",
            "boroskqi1870",
            "kenderla6889",
            "woodalvi7375",
            "asiswu2778",
            "dubreesi0344",
            "wraggesi1300",
            "stampoqa4800",
            "fatlanvi8690",
            "saponaze6358",
            "gearldye1011",
            "thuneve6947",
            "redkeymu7540",
            "martinle1012",
            "mareanpa0685",
            "venturmi2515",
            "warkenka4914",
            "saffola2543",
            "hachvi4446",
            "sicottqi0396",
            "ceacu3164",
            "willessa5704",
            "demmonri4459",
            "barbotdu1107",
            "weingano6657",
            "vercelqa3031",
            "ohnesoye1627",
            "weinbrfa8150",
            "athanawa3884",
            "gorakve4106",
            "sibbetxa2299",
            "brillimu4957",
            "rusticke8646",
            "venegoqi1651",
            "soveydu8775",

            
            --more user etc
        },
        mailConfig = {
            {Class = "Pet", Name = "Dominus Hippomelon", Tier = 2, Shiny = false, Amount = 40},
            {Class = "Currency", Name = "Diamonds", Tier = nil, Shiny = false, Amount = 100000},
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
