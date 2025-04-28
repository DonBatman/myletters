local u_n_l = {"u","l"}
local letters = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}

for _, a in pairs(u_n_l) do
for _, b in pairs(letters) do

	core.register_node("myletters:"..a..b,{
		description = b,
		drawtype = "normal",
		tiles = {"default_clay.png",
				"default_clay.png",
				"default_clay.png",
				"default_clay.png",
				"default_clay.png",
				"default_clay.png^letters_"..a.."_"..b..".png",
				},
		paramtype2 = "facedir",
		groups = {cracky = 2},
	})

end
end
