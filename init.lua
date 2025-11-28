myletters = {}

myletters.colors = {
	{"black",      "Black",      "#000000"},
	{"blue",       "Blue",       "#2000c9"},
	{"brown",      "Brown",      "#954c05"},
	{"cyan",       "Cyan",       "#01ffd8"},
	{"darkgreen", "Dark Green",  "#005b07"},
	{"darkgrey",  "Dark Grey",   "#303030"},
	{"green",      "Green",      "#61ff01"},
	{"grey",       "Grey",       "#5b5b5b"},
	{"magenta",    "Magenta",    "#ff05bb"},
	{"orange",     "Orange",     "#ff8401"},
	{"pink",       "Pink",       "#ff65b5"},
	{"red",        "Red",        "#ff0000"},
	{"violet",     "Violet",     "#ab23b0"},
	{"white",      "White",      "#ffffff"},
	{"yellow",     "Yellow",     "#e3ff00"},
}
if core.get_modpath("mydye") then
	myletters.colors = {
	{"black",      	"Black",      		"#000000"},
	{"blue",       	"Blue",       		"#2000c9"},
	{"brown",     	"Brown",      		"#954c05"},
	{"cyan",      	"Cyan",       		"#01ffd8"},
	{"darkgreen", 	"Dark Green",  		"#005b07"},
	{"darkgrey",  	"Dark Grey",   		"#303030"},
	{"green",     	"Green",      		"#61ff01"},
	{"grey",       	"Grey",       		"#5b5b5b"},
	{"magenta",    	"Magenta",    		"#ff05bb"},
	{"orange",     	"Orange",     		"#ff8401"},
	{"pink",      	"Pink",       		"#ff65b5"},
	{"red",        	"Red",        		"#ff0000"},
	{"violet",     	"Violet",     		"#ab23b0"},
	{"white",      	"White",      		"#ffffff"},
	{"yellow",     	"Yellow",     		"#e3ff00"},
	{"peachpuff",	"Peachpuff", 		"#FFDAB9"},
	{"navy",		"Navy", 			"#000080"},
	{"coral",		"Coral", 			"#FF7F50"},
	{"khaki",		"Khaki", 			"#F0E68C"},
	{"lime",		"Lime", 			"#00FF00"},
	{"light_pink",	"Light Pink", 		"#FFB6C1"},
	{"light_grey",	"Light Grey", 		"#D3D3D3"},
	{"purple",		"Purple", 			"#800080"},
	{"maroon",		"Maroon", 			"#800000"},
	{"aquamarine",	"Aqua Marine", 		"#7FFFD4"},
	{"chocolate",	"Chocolate", 		"#D2691E"},
	{"crimson",		"Crimson", 			"#DC143C"},
	{"olive",		"Olive", 			"#808000"},
	{"white_smoke",	"White Smoke", 		"#F5F5F5"},
	{"mistyrose",	"Misty Rose", 		"#FFE4E1"},
	{"orchid",		"Orchid", 			"#DA70D6"},
	}
end

local u_n_l = {"u","l"}
local letters = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}

for _, a in pairs(u_n_l) do
for _, b in pairs(letters) do

	core.register_node("myletters:"..a..b,{
		description = b,
		drawtype = "normal",
		tiles = {"myletters_white.png",
				"myletters_white.png",
				"myletters_white.png",
				"myletters_white.png",
				"myletters_white.png",
				"myletters_white.png^myletters_"..a.."_"..b..".png",
				},
		paramtype2 = "facedir",
		groups = {cracky = 2},
	})

end
end

if core.get_modpath("mypaint") then
local paintables = {
	"myletters:la","myletters:lb","myletters:lc","myletters:ld","myletters:le","myletters:lf","myletters:lg","myletters:lh","myletters:li",
"myletters:lj","myletters:lk","myletters:ll","myletters:lm","myletters:ln","myletters:lo","myletters:lp","myletters:lq","myletters:lr",
"myletters:ls","myletters:lt","myletters:lu","myletters:lv","myletters:lw","myletters:lx","myletters:ly","myletters:lz",
"myletters:ua","myletters:ub","myletters:uc","myletters:ud","myletters:ue","myletters:uf","myletters:ug","myletters:uh","myletters:ui",
"myletters:uj","myletters:uk","myletters:ul","myletters:um","myletters:un","myletters:uo","myletters:up","myletters:uq","myletters:ur",
"myletters:us","myletters:ut","myletters:uu","myletters:uv","myletters:uw","myletters:ux","myletters:uy","myletters:uz",
}

for _, a in pairs(u_n_l) do
for _, b in pairs(letters) do

for _, entry in ipairs(myletters.colors) do
	local color = entry[1]
	local desc = entry[2]
	local paint = "^[colorize:"..entry[3]..":200"

	core.register_node("myletters:"..a..b.."_"..color,{
		description = desc.." "..b,
		drawtype = "normal",
		tiles = {"myletters_white.png"..paint,
				"myletters_white.png"..paint,
				"myletters_white.png"..paint,
				"myletters_white.png"..paint,
				"myletters_white.png"..paint,
				"myletters_white.png"..paint.."^myletters_"..a.."_"..b..".png",
				},
		paramtype2 = "facedir",
		groups = {cracky = 2, not_in_creative_inventory = 1},
	})

end
end
end
if core.get_modpath("mypaint") then
local colors = {}
for _, entry in ipairs(myletters.colors) do
	table.insert(colors, entry[1])
end
	mypaint.register(paintables, colors)
end
end






