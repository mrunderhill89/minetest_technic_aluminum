local S = technic.getter

-- Ruby
--- Ruby Gem
minetest.register_craftitem(":technic_aluminum:ruby", {
	description = S("Ruby"),
	inventory_image = "aluminum_ruby.png",
})

--- Ruby Block
minetest.register_node(":technic_aluminum:ruby_block", {
	description = S("Ruby Block"),
	tiles = {"aluminum_ruby_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 3},
	sounds = default.node_sound_stone_defaults(),
})
---- Crafting Recipe: 9x Ruby <=> Ruby Block
minetest.register_craft({
	output = 'technic_aluminum:ruby_block',
	recipe = {
		{'technic_aluminum:ruby', 'technic_aluminum:ruby', 'technic_aluminum:ruby'},
		{'technic_aluminum:ruby', 'technic_aluminum:ruby', 'technic_aluminum:ruby'},
		{'technic_aluminum:ruby', 'technic_aluminum:ruby', 'technic_aluminum:ruby'},
	}
})

minetest.register_craft({
	output = 'technic_aluminum:ruby 9',
	recipe = {
		{'technic_aluminum:ruby_block'},
	}
})

if technic then
  --- Ruby Dust
  minetest.register_craftitem(":technic_aluminum:ruby_dust", {
    description = S("Red Corundum Dust"),
    inventory_image = "aluminum_ruby_dust.png",
  })
  local chromium_in = 1
  local chromium_out = 0
  local alumina_in = 4
  local alumina_out = 4
  local dust_in = 5
  local dust_out = 5
  technic.register_alloy_recipe({input = {"technic_aluminum:alumina_dust "..alumina_in, "technic:chromium_dust "..chromium_in}, output = "technic_aluminum:ruby_dust", time = 12})
  technic.register_separating_recipe({input = {"technic_aluminum:ruby_dust"}, output = {"technic_aluminum:alumina_dust "..alumina_out, "technic:chromium_dust "..chromium_out}, time = 12})
  technic.register_grinder_recipe({input = {"technic_aluminum:ruby"}, output = "technic_aluminum:ruby_dust "..dust_out, time = 12})
  technic.register_compressor_recipe({input = {"technic_aluminum:ruby_dust "..dust_in}, output = "technic_aluminum:ruby", time = 12})



  minetest.register_craft({
    output = 'technic:red_energy_crystal',
    recipe = {
      {'moreores:silver_ingot', 'technic:battery', 'dye:red'},
      {'technic:battery', 'technic_aluminum:ruby_block', 'technic:battery'},
      {'dye:red', 'technic:battery', 'moreores:silver_ingot'},
    }
  })

  minetest.register_craft({
    output = 'technic:geothermal',
    recipe = {
      {'technic:granite', 'technic_aluminum:ruby', 'technic:granite'},
      {'technic:fine_copper_wire', 'technic:machine_casing', 'technic:fine_copper_wire'},
      {'technic:granite', 'technic:lv_cable0', 'technic:granite'},
    }
  })
end

--- Compatibility patch for Zeg9's Weird Ores mod.
--- (https://github.com/Zeg9/minetest-weirdores/tree/master/weirdores)
minetest.register_alias("weirdores:ruby","technic_aluminum:ruby")
minetest.register_alias("weirdores:stone_with_ruby","technic_aluminum:stone_with_rubies")
minetest.register_alias("weirdores:rubyblock","technic_aluminum:ruby_block")

--- Ruby Ore
minetest.register_node(":technic_aluminum:stone_with_rubies", {
  description = "Ruby Ore",
  tiles = {"default_stone.png^aluminum_mineral_ruby.png"},
  groups = {cracky = 1},
  drop = 'technic_aluminum:ruby',
  sounds = default.node_sound_stone_defaults(),
})

minetest.register_ore({
  ore_type       = "scatter",
  ore            = "technic_aluminum:stone_with_rubies",
  wherein        = "default:stone",
  clust_scarcity = 17 * 17 * 17,
  clust_num_ores = 4,
  clust_size     = 3,
  y_min          = -255,
  y_max          = -128,
})

minetest.register_ore({
  ore_type       = "scatter",
  ore            = "technic_aluminum:stone_with_rubies",
  wherein        = "default:stone",
  clust_scarcity = 15 * 15 * 15,
  clust_num_ores = 4,
  clust_size     = 3,
  y_min          = -31000,
  y_max          = -256,
})
