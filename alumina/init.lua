local S = technic.getter

--- Alumina Lump
minetest.register_craftitem(":technic_aluminum:alumina_lump", {
	description = S("Aluminum Oxide Lump"),
	inventory_image = "aluminum_alumina_lump.png",
})
--- Furnace Recipe: Bauxite Lump => Alumina Lump
minetest.register_craft({
	type = "cooking",
	output = "technic_aluminum:alumina_lump",
	recipe = "technic_aluminum:bauxite_lump",
})
--- Alumina Dust
minetest.register_craftitem(":technic_aluminum:alumina_dust", {
	description = S("Aluminum Oxide Dust"),
	inventory_image = "aluminum_alumina_dust.png",
})
---- Grinder Recipe: Alumina Lump => 2x Alumina Dust
technic.register_grinder_recipe({
  input = {"technic_aluminum:alumina_lump"},
  output = "technic_aluminum:alumina_dust 2"
})
--- Furnace Recipe: Bauxite Dust => Alumina Dust
minetest.register_craft({
	type = "cooking",
	output = "technic_aluminum:alumina_dust",
	recipe = "technic_aluminum:bauxite_dust",
})