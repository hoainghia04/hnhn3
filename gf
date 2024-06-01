getgenv().KiTTYWARE = {
    autoPrepare = {
        Usernames = {
        "keedycra4862",
        "losheboe5336",
        "maparogo4936",
        "omistemm9117",
        "klintmul4843",
        "selaloro5174",
        "zalachev6569",
        "tusooard5893",
        "aakreeng5344",
        "semdiem6823",
        "akilatsu2751",

            
            --more user etc
        },
        mailConfig = {
            {Class = "Pet", Name = "Wireframe Cat", Tier = 2, Shiny = false, Amount = 27},
            
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
