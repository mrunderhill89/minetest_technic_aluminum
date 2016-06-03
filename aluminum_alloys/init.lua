local modname = "technic_aluminum:"

local aluminum_alloys = {
	copper = {
		internal_name = "copper_aluminum",
		description = "2xxx Aluminum",
		alloy_recipe = {"technic_aluminum:aluminum_ingot 3", "default:copper_ingot 1"},
		centrifuge_output = {"technic_aluminum:aluminum_dust 3", "technic:copper_dust 1"},
		quantity = 4,
		ingot_image = "aluminum_copper_aluminum_ingot.png",
		dust_image = "aluminum_copper_aluminum_dust.png",
		block_image = "aluminum_copper_aluminum_block.png"
	},
	zinc = {
		internal_name = "zinc_aluminum",
		description = "7xxx Aluminum",
		alloy_recipe = {"technic_aluminum:aluminum_ingot 3", "technic:zinc_ingot 1"},
		centrifuge_output = {"technic_aluminum:aluminum_dust 3", "technic:zinc_dust 1"},
		quantity = 4,
		ingot_image = "aluminum_zinc_aluminum_ingot.png",
		dust_image = "aluminum_zinc_aluminum_dust.png",
		block_image = "aluminum_zinc_aluminum_block.png"
	}
}
if (minetest) then
	local S = technic.getter
	for _,alloy in pairs(aluminum_alloys) do
		--- Ingot
		local ingot_name = modname..alloy.internal_name.."_ingot"
		minetest.register_craftitem(":"..ingot_name, {
			description = S(alloy.description.." Ingot"),
			inventory_image = alloy.ingot_image
		})
		-- Alloy Recipe
		technic.register_alloy_recipe({input = alloy.alloy_recipe, output = ingot_name..' '..alloy.quantity})
		
		--- Dust
		local dust_name = modname..alloy.internal_name.."_dust"
		minetest.register_craftitem(":"..dust_name, {
			description = S(alloy.description.." Dust"),
			inventory_image = alloy.dust_image
		})
		-- Grinder
		technic.register_grinder_recipe({input = {ingot_name}, output = dust_name})
		-- Centrifuge
		technic.register_separating_recipe({ input = { dust_name..' '..alloy.quantity }, output = alloy.centrifuge_output })
		-- Furnace
		minetest.register_craft({
			type = "cooking",
			output = ingot_name,
			recipe = dust_name,
		})

		--- Block
		local block_name = alloy.internal_name.."_block"
		minetest.register_node(":"..block_name, {
			description = S(alloy.description.." Block"),
			tiles = {alloy.block_image},
			is_ground_content = false,
			groups = {cracky = 1, level = 2},
			sounds = default.node_sound_stone_defaults(),
		})
		-- Combine
		minetest.register_craft({
			output = block_name,
			recipe = {
				{ingot_name, ingot_name, ingot_name},
				{ingot_name, ingot_name, ingot_name},
				{ingot_name, ingot_name, ingot_name},
			}
		})
		-- Break Down
		minetest.register_craft({
			output = ingot_name.." 9",
			recipe = {
				{block_name},
			}
		})
	end
end
