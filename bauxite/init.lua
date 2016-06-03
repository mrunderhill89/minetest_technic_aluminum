local S = technic.getter

-- Bauxite
--- Bauxite Lump
minetest.register_craftitem(":technic_aluminum:bauxite_lump", {
	description = S("Bauxite Lump"),
	inventory_image = "aluminum_bauxite_lump.png",
})

--- Bauxite Dust
minetest.register_craftitem(":technic_aluminum:bauxite_dust", {
	description = S("Bauxite Dust"),
	inventory_image = "aluminum_bauxite_dust.png",
})
---- Grinder Recipe: Bauxite Lump => 2x Bauxite Dust
technic.register_grinder_recipe({
  input = {"technic_aluminum:bauxite_lump"},
  output = "technic_aluminum:bauxite_dust 2"
})

--- Bauxite Ore
minetest.register_node(":technic_aluminum:stone_with_bauxite", {
	description = "Bauxite Ore",
	tiles = {"default_stone.png^aluminum_mineral_bauxite.png"},
	groups = {cracky = 2},
	drop = 'technic_aluminum:bauxite_lump',
	sounds = default.node_sound_stone_defaults(),
})

--[[
	Aluminum is actually the most abundant metal in the Earth's crust,
	even more so than iron, but since it's a mid/late-game metal, the
	distribution in this mod is a little different. 
	
	Originally, I gave bauxite the same spawn patterns as iron, but this
	produced way too much bauxite in the same areas as iron, which led
	me to leave a ton of it behind until I could process it reliably.
	
	Also, I always felt it was weird to be climbing mountains and seeing
	nothing but rock and the occasional coal sticking out. I felt there 
	should be more ores at higher elevations, so bauxite is now found in
	those areas. Hopefully this will help alleviate the reduced findings
	at lower elevations.
]]--

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "technic_aluminum:stone_with_bauxite",
	wherein        = "default:stone",
	clust_scarcity = 7 * 7 * 7,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min          = 65,
	y_max          = 128,
})


minetest.register_ore({
	ore_type       = "scatter",
	ore            = "technic_aluminum:stone_with_bauxite",
	wherein        = "default:stone",
	clust_scarcity = 9 * 9 * 9,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min          = 32,
	y_max          = 64,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "technic_aluminum:stone_with_bauxite",
	wherein        = "default:stone",
	clust_scarcity = 12 * 12 * 12,
	clust_num_ores = 3,
	clust_size     = 2,
	y_min          = -15,
	y_max          = 2,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "technic_aluminum:stone_with_bauxite",
	wherein        = "default:stone",
	clust_scarcity = 9 * 9 * 9,
	clust_num_ores = 4,
	clust_size     = 3,
	y_min          = -63,
	y_max          = -16,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "technic_aluminum:stone_with_bauxite",
	wherein        = "default:stone",
	clust_scarcity = 7 * 7 * 7,
	clust_num_ores = 5,
	clust_size     = 3,
	y_min          = -31000,
	y_max          = -64,
})
