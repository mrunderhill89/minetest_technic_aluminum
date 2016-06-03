local S = technic.getter

--[[
Aluminum Stats
	Generally, pure aluminum (1xxx) should be about the same strength as cast iron,
	slightly faster (-0.2 punch interval) and possibly more firepower,
	but less durability. It's meant to be something that can be mass-manufactured
  once you have a reliable source of aluminum, and the drawbacks can be offset
  by recycling or a tool workshop.
  
  Copper-aluminum alloy (2xxx) should be the same strength as carbon steel.
  Zinc-aluminum (7xxx) should be the same as stainless steel.
]]--

minetest.register_tool(":technic_aluminum:pick_aluminum", {
	description = S("Aluminum Pickaxe"),
	inventory_image = "aluminum_tool_pick_aluminum.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=15, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_craft({
	output = 'technic_aluminum:pick_aluminum',
	recipe = {
		{'technic_aluminum:aluminum_ingot', 'technic_aluminum:aluminum_ingot', 'technic_aluminum:aluminum_ingot'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_tool(":technic_aluminum:shovel_aluminum", {
	description =  S("Aluminum Shovel"),
	inventory_image = "aluminum_tool_shovel_aluminum.png",
	wield_image = "aluminum_tool_shovel_aluminum.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_craft({
	output = 'technic_aluminum:shovel_aluminum',
	recipe = {
		{'technic_aluminum:aluminum_ingot'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_tool(":technic_aluminum:axe_aluminum", {
	description =  S("Aluminum Axe"),
	inventory_image = "aluminum_tool_axe_aluminum.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=15, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_craft({
	output = 'technic_aluminum:axe_aluminum',
	recipe = {
		{'technic_aluminum:aluminum_ingot', 'group:stick'},
		{'technic_aluminum:aluminum_ingot', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_tool(":technic_aluminum:sword_aluminum", {
	description =  S("Aluminum Sword"),
	inventory_image = "aluminum_tool_sword_aluminum.png",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=25, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	}
})

minetest.register_craft({
	output = 'technic_aluminum:sword_aluminum',
	recipe = {
		{'technic_aluminum:aluminum_ingot'},
		{'technic_aluminum:aluminum_ingot'},
		{'group:stick'},
	}
})
