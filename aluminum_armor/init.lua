if minetest.get_modpath("technic") then
	local stats = {
		aluminum = { name="Aluminum", armor=2.0, heal=8, use=200 },
	}
	local mats = {
		aluminum="technic_aluminum:aluminum_ingot"
	}
	if minetest.get_modpath("aluminum_alloys") then
		stats.aluminum.name = "1xxx Aluminum"
		if false then --Let me make some textures first...
			stats.aluminum_copper = { name="2xxx Aluminum", armor=2.2, heal=10, use=100 }
			mats.aluminum_copper = "technic_aluminum:aluminum_copper_ingot"
			stats.aluminum_zinc = { name="7xxx Aluminum", armor=2.3, heal=10, use=75 }
			mats.aluminum_zinc = "technic_aluminum:aluminum_zinc_ingot"
		end
	end

  if minetest.get_modpath("aluminum_sapphire") then
    stats.sapphire = { name = "Sapphire", armor = 2.4, heal=10, use=100, water=1}
    mats.sapphire = "technic_aluminum:sapphire"
  end
  
  if minetest.get_modpath("aluminum_ruby") then
    stats.ruby = { name = "Ruby", armor = 2.4, heal=10, use=100, fire=1}
    mats.ruby = "technic_aluminum:ruby"
  end


	for k, v in pairs(stats) do
		minetest.register_tool(":technic_aluminum:helmet_"..k, {
			description = v.name.." Helmet",
			inventory_image = "technic_aluminum_inv_helmet_"..k..".png",
			groups = {armor_head=math.floor(5*v.armor), armor_heal=v.heal, armor_use=v.use, armor_water = v.water or 0, armor_fire = v.fire or 0},
      armor_fire= v.armor_fire or 0,
      water = v.water or 0,
			wear = 0,
		})
		minetest.register_tool(":technic_aluminum:chestplate_"..k, {
			description = v.name.." Chestplate",
			inventory_image = "technic_aluminum_inv_chestplate_"..k..".png",
			groups = {armor_torso=math.floor(8*v.armor), armor_heal=v.heal, armor_use=v.use, armor_water = v.water or 0, armor_fire = v.fire or 0},
      armor_fire= v.armor_fire or 0,
      water = v.water or 0,
			wear = 0,
		})
		minetest.register_tool(":technic_aluminum:leggings_"..k, {
			description = v.name.." Leggings",
			inventory_image = "technic_aluminum_inv_leggings_"..k..".png",
			groups = {armor_legs=math.floor(7*v.armor), armor_heal=v.heal, armor_use=v.use, armor_water = v.water or 0, armor_fire = v.fire or 0},
      armor_fire= v.armor_fire or 0,
			wear = 0,
		})
		minetest.register_tool(":technic_aluminum:boots_"..k, {
			description = v.name.." Boots",
			inventory_image = "technic_aluminum_inv_boots_"..k..".png",
			groups = {armor_feet=math.floor(4*v.armor), armor_heal=v.heal, armor_use=v.use, armor_water = v.water or 0, armor_fire = v.fire or 0},
			wear = 0,
		})
	end
	for k, v in pairs(mats) do
		minetest.register_craft({
			output = "technic_aluminum:helmet_"..k,
			recipe = {
				{v, v, v},
				{v, "", v},
				{"", "", ""},
			},
		})
		minetest.register_craft({
			output = "technic_aluminum:chestplate_"..k,
			recipe = {
				{v, "", v},
				{v, v, v},
				{v, v, v},
			},
		})
		minetest.register_craft({
			output = "technic_aluminum:leggings_"..k,
			recipe = {
				{v, v, v},
				{v, "", v},
				{v, "", v},
			},
		})
		minetest.register_craft({
			output = "technic_aluminum:boots_"..k,
			recipe = {
				{v, "", v},
				{v, "", v},
			},
		})
	end

	if minetest.get_modpath("shields") then
		for k, v in pairs(stats) do
			minetest.register_tool(":technic_aluminum:shield_"..k, {
				description = v.name.." Shield",
				inventory_image = "technic_aluminum_inv_shield_"..k..".png",
				groups = {armor_shield=math.floor(5*v.armor), armor_heal=v.heal, armor_use=v.use, armor_water = v.water or 0, armor_fire = v.fire or 0},
        water = v.water or 0,
				wear = 0,
			})
			local m = mats[k]
			minetest.register_craft({
				output = "technic_aluminum:shield_"..k,
				recipe = {
					{m, m, m},
					{m, m, m},
					{"", m, ""},
				},
			})
		end
	end
end
