local S = technic.getter
local technic_path = minetest.get_modpath("technic")

-- Only use the alloy name if alloys are installed
local aluminum_name = minetest.get_modpath("aluminum_alloys")
	and "1xxx Aluminum"
	or "Aluminum"

-- Aluminum
--- Aluminum Lump (may not be used)
minetest.register_craftitem(":technic_aluminum:aluminum_lump", {
	description = S(aluminum_name.." Lump"),
	inventory_image = "aluminum_aluminum_lump.png",
})

--- Aluminum Ingot
minetest.register_craftitem(":technic_aluminum:aluminum_ingot", {
	description = S(aluminum_name.." Ingot"),
	inventory_image = "aluminum_aluminum_ingot.png",
})
---- Furnace Recipe: Aluminum Lump => Aluminum Ingot
minetest.register_craft({
	type = "cooking",
	output = "technic_aluminum:aluminum_ingot",
	recipe = "technic_aluminum:aluminum_lump",
})

if (technic_path) then
--- Aluminum Dust
minetest.register_craftitem(":technic_aluminum:aluminum_dust", {
	description = S(aluminum_name.." Dust"),
	inventory_image = "aluminum_aluminum_dust.png",
})
---- Furnace Recipe: Aluminum Dust => Aluminum Ingot
minetest.register_craft({
	type = "cooking",
	output = "technic_aluminum:aluminum_ingot",
	recipe = "technic_aluminum:aluminum_dust",
})

---- Grinder Recipe: Aluminum Lump => 2x Aluminum Dust
technic.register_grinder_recipe({
  input = {"technic_aluminum:aluminum_lump"},
  output = "technic_aluminum:aluminum_dust 2"
})
---- Grinder Recipe: Aluminum Ingot => 1x Aluminum Dust
technic.register_grinder_recipe({
  input = {"technic_aluminum:aluminum_ingot"},
  output = "technic_aluminum:aluminum_dust"
})
end

--- Aluminum Block
minetest.register_node(":technic_aluminum:aluminum_block", {
	description = S(aluminum_name.." Block"),
	tiles = {"aluminum_aluminum_block.png"},
	is_ground_content = false,
	groups = {cracky = 1, level = 2},
	sounds = default.node_sound_stone_defaults(),
})
---- Crafting Recipe: 9x Aluminum Ingot => Aluminum Block
minetest.register_craft({
	output = 'technic_aluminum:aluminum_block',
	recipe = {
		{'technic_aluminum:aluminum_ingot', 'technic_aluminum:aluminum_ingot', 'technic_aluminum:aluminum_ingot'},
		{'technic_aluminum:aluminum_ingot', 'technic_aluminum:aluminum_ingot', 'technic_aluminum:aluminum_ingot'},
		{'technic_aluminum:aluminum_ingot', 'technic_aluminum:aluminum_ingot', 'technic_aluminum:aluminum_ingot'},
	}
})
---- Crafting Recipe: Aluminum Block => 9x Aluminum Ingot
minetest.register_craft({
	output = 'technic_aluminum:aluminum_ingot 9',
	recipe = {
		{'technic_aluminum:aluminum_block'},
	}
})

if minetest.get_modpath("alumina") then
	if minetest.get_modpath("technic_hydrolysis") then
		--TODO: Add a hydrolyzer machine and rig its recipe here
	elseif (technic_path) then
		--Until then, just use the centrifuge.
		technic.register_separating_recipe({ input = { "technic_aluminum:alumina_dust" }, output = { "technic_aluminum:aluminum_dust" } })
  else
    -- And if Technic isn't installed, either, use Alumina as an ore.
    --- Furnace Recipe: Alumina Lump => Aluminum Ingot
    minetest.register_craft({
      type = "cooking",
      output = "technic_aluminum:aluminum_ingot",
      recipe = "technic_aluminum:alumina_lump",
    })
    -- No dust recipe because that's a Technic thing.
	end
else
	--If alumina isn't installed, just treat bauxite like a normal ore.
	--- Furnace Recipe: Bauxite Lump => Aluminum Ingot
	minetest.register_craft({
		type = "cooking",
		output = "technic_aluminum:aluminum_ingot",
		recipe = "technic_aluminum:bauxite_lump",
	})
  if (technic_path) then
    --- Furnace Recipe: Bauxite Dust => Aluminum Ingot
    minetest.register_craft({
      type = "cooking",
      output = "technic_aluminum:aluminum_ingot",
      recipe = "technic_aluminum:bauxite_dust",
    })
  end
end
