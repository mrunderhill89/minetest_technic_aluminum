if (minetest) then
	local S = technic.getter
	--[[
		To make up for its high production cost, aluminum can be used
		in almost any situation where steel would be. Pure aluminum (or
		1xxx) generally corresponds to Carbon Steel (thouhg it can also
		be used as an alternative to Cast Iron in Machine Casings), while 
		aluminum/copper (2xxx) corresponds to Stainless Steel and 
		aluminum/zinc (7xxx) has its own tier. The only exceptions are 
		the copper/silver coils, since those tend to be used as 
		electromagnets, and since iron is magnetic and aluminum isn't, 
		it wouldn't make sense to build, say, an electric motor out of 
		just aluminum. Casing a motor in aluminum is fine, though.
	]]--
	local aluminum_ingot = "technic_aluminum:aluminum_ingot"
	--- Machine Casing
	minetest.register_craft({
		output = "technic:machine_casing",
		recipe = {
			{ aluminum_ingot, aluminum_ingot, aluminum_ingot },
			{ aluminum_ingot, "technic:brass_ingot", aluminum_ingot },
			{ aluminum_ingot, aluminum_ingot, aluminum_ingot },
		},
	})
	-- Electric Motor
	minetest.register_craft({
		output = 'technic:motor',
		recipe = {
			{aluminum_ingot, 'technic:copper_coil', aluminum_ingot},
			{aluminum_ingot, 'technic:copper_coil', aluminum_ingot},
			{aluminum_ingot, 'default:copper_ingot', aluminum_ingot},
		}
	})
	if (minetest.get_modpath("aluminum_alloys")) then
		local copper_aluminum_ingot = "technic_aluminum:copper_aluminum_ingot"
		local zinc_aluminum_ingot = "technic_aluminum:zinc_aluminum_ingot"
		local function lv_to_mv(mv_machine, lv_machine)
			return {
				output = mv_machine,
				recipe = {
					{copper_aluminum_ingot, lv_machine, copper_aluminum_ingot},
					{'pipeworks:tube_1', 'technic:mv_transformer', 'pipeworks:tube_1'},
					{copper_aluminum_ingot, 'technic:mv_cable0', copper_aluminum_ingot}
				}
			}
		end
		for _, recipe in ipairs({
		  lv_to_mv("technic:mv_alloy_furnace", "technic:lv_alloy_furnace"),
		  lv_to_mv("technic:mv_electric_furnace", "technic:mv_electric_furnace"),
		  lv_to_mv("technic:mv_compressor", "technic:lv_compressor"),
		  lv_to_mv("technic:mv_extractor", "technic:lv_extractor"),
		  lv_to_mv("technic:mv_generator", "technic:lv_generator"),
		  lv_to_mv("technic:mv_grinder", "technic:lv_grinder")
		}) do
		  minetest.register_craft(recipe)
		end
	end
end
