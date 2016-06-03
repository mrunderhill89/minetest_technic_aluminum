local S = technic.getter

-- Sapphire
--- Sapphire Gem
minetest.register_craftitem(":technic_aluminum:sapphire", {
	description = S("Sapphire"),
	inventory_image = "aluminum_sapphire.png",
})

--- Sapphire Dust
minetest.register_craftitem(":technic_aluminum:sapphire_dust", {
	description = S("Blue Corundum Dust"),
	inventory_image = "aluminum_sapphire_dust.png",
})
technic.register_alloy_recipe({input = {"technic_aluminum:alumina_dust 3", "technic:wrought_iron_dust 1"}, output = "technic_aluminum:sapphire_dust", time = 12})
technic.register_separating_recipe({input = {"technic_aluminum:sapphire_dust"}, output = {"technic_aluminum:alumina_dust 3", "technic:wrought_iron_dust 1"}, time = 12})
technic.register_grinder_recipe({input = {"technic_aluminum:sapphire"}, output = "technic_aluminum:sapphire_dust 4", time = 12})
technic.register_compressor_recipe({input = {"technic_aluminum:sapphire_dust 4"}, output = "technic_aluminum:sapphire", time = 12})

--- Sapphire Block
minetest.register_node(":technic_aluminum:sapphire_block", {
	description = S("Sapphire Block"),
	tiles = {"aluminum_sapphire_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
---- Crafting Recipe: 9x Sapphire <=> Sapphire Block
minetest.register_craft({
	output = 'technic_aluminum:sapphire_block',
	recipe = {
		{'technic_aluminum:sapphire', 'technic_aluminum:sapphire', 'technic_aluminum:sapphire'},
		{'technic_aluminum:sapphire', 'technic_aluminum:sapphire', 'technic_aluminum:sapphire'},
		{'technic_aluminum:sapphire', 'technic_aluminum:sapphire', 'technic_aluminum:sapphire'},
	}
})
minetest.register_craft({
	output = 'technic_aluminum:sapphire 9',
	recipe = {
		{'technic_aluminum:sapphire_block'},
	}
})

--- Sapphire Ore
minetest.register_node(":technic_aluminum:stone_with_sapphires", {
	description = S("Sapphire Ore"),
	tiles = {"default_stone.png^aluminum_mineral_sapphire.png"},
	groups = {cracky = 1},
	drop = 'technic_aluminum:sapphire',
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
	output = 'technic:blue_energy_crystal',
	recipe = {
		{'technic_aluminum:sapphire_block', 'technic:battery', 'dye:blue'},
		{'technic:battery', 'technic:green_energy_crystal', 'technic:battery'},
		{'dye:blue', 'technic:battery', 'technic_aluminum:sapphire_block'},
	}
})

minetest.register_craft({
	output = 'technic:water_mill',
	recipe = {
		{'technic:marble', 'technic_aluminum:sapphire',        'technic:marble'},
		{'group:wood',     'technic:machine_casing', 'group:wood'},
		{'technic:marble', 'technic:lv_cable0',      'technic:marble'},
	}
})

minetest.register_ore({
  ore_type       = "scatter",
  ore            = "technic_aluminum:stone_with_sapphires",
  wherein        = "default:stone",
  clust_scarcity = 17 * 17 * 17,
  clust_num_ores = 4,
  clust_size     = 3,
  y_min          = -255,
  y_max          = -128,
})

minetest.register_ore({
  ore_type       = "scatter",
  ore            = "technic_aluminum:stone_with_sapphires",
  wherein        = "default:stone",
  clust_scarcity = 15 * 15 * 15,
  clust_num_ores = 4,
  clust_size     = 3,
  y_min          = -31000,
  y_max          = -256,
})
