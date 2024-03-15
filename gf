getgenv().KiTTYWARE = {
    autoPrepare = {
        Usernames = {
            "roswellegf6073", -- manually input them if different names
            "fromerabw7734", -- or if similar names use prefix loop below
	    "rupleyodm5999",
	    "schumackoo0562",
	    "tonksals2101",
	    "tadderomx5190",
	    "demkeaqs5521",
	    "hellidt9404",
	    "defosseucc1712",
	    "cristinuqc4252",
	    "triantaurv8693",
	    "gundlinjue9723",
	    "brackmainf0287",
	    "argyropobv3226",
	    "logotheotm5626",
	    "conifflae0539",
	    "shindelodb5501",
	    "sterryuck9266",
	    "savolecia7365",
	    "nilanvai2475",
	    "louthuqd0501",
	    "reasdoa0902",
	    "garingeemj8363",
	    "gettisyeu2715",
	    "bercotiwx1790",
	    "narcisiebg5283",
	    "lidwellxoe5055",
	    "griederexg3705",
        },

        sendPets = true, 
        petConfig = {
            {petName = "Frostbyte Bear", petType = "Rainbow", petAmount = 45}
        },
        
        sendPots = true,
        potConfig = {
            {potName = "Damage", potTier = 3, potAmount = 15}
        },
        
        sendEnch = false,
        enchConfig = {
            {enchName = "Coins", enchTier = 1, enchAmount = 1}
        },
        
        sendFruit = false,
        fruitConfig = {
            {fruitName = "Banana", fruitAmount = 10},
            {fruitName = "Apple", fruitAmount = 10}
        },
        
        sendGems = true,
        gemsAmount = 100000,
    }
}

for i = suffix.from, suffix.to do
    table.insert(getgenv().KiTTYWARE.autoPrepare.Usernames, prefix..tostring(i)) -- credit 2 cart.dev frfr
end

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/920918ba6d30cd410dacee97916c773e.lua"))()
