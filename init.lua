-- mods/lapis/init.lua
-- ===================
-- See LICENSE.txt for licensing and README.md for other information.

--LAPIS LAZULI ORE
minetest.register_node("lapis:stone_with_lapis", {
	description = "Lapis Lazuli Ore",
	tiles = {"default_stone.png^mineral_lapislazuli.png"},
	is_ground_content = true,
	groups = {cracky=2},
	drop = {
		max_items = 5,
		items = {
			{
				items = {'lapis:lapis 2'},  --The first and second drops ever
			},
			{
				items = {'lapis:lapis'},    --The 3rd drops with a 1/2 chance
				rarity = 2,
			},
			{
				items = {'lapis:lapis'},    --The 4th drops with a 1/3 chance
				rarity = 3,
			},
			{
				items = {'lapis:lapis'},    --The 5th drops with a 1/8 chance
				rarity = 8,
			},
		}
	},
	sounds = default.node_sound_stone_defaults(),
})

--LAPIS LAZULI
minetest.register_craftitem("lapis:lapis", {
	description = "Lapis Lazuli",
	inventory_image = "lapislazuli.png",
})

--LAPIS LAZULI BLOCK
minetest.register_node("lapis:lapisblock", {
	description = "Lapis Lazuli Block",
	tiles = {"lapislazuli_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

--LAPIS LAZULI BLOCK – CRAFTING
minetest.register_craft({
	output = 'lapis:lapisblock',
	recipe = {
		{'lapis:lapis', 'lapis:lapis', 'lapis:lapis'},
		{'lapis:lapis', 'lapis:lapis', 'lapis:lapis'},
		{'lapis:lapis', 'lapis:lapis', 'lapis:lapis'},
	}
})

--LAPIS LAZULI BLOCK – RECRAFTING
minetest.register_craft({
	output = 'lapis:lapis 9',
	recipe = {
		{'lapis:lapisblock'},
	}
})

--ORE GENERATOR
--FROM -128 UNTILL -255
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "lapis:stone_with_lapis",
	wherein        = "default:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 5,
	clust_size     = 3,
	height_min     = -255,
	height_max     = -128,
})

--FROM -256 UNTILL -31000
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "lapis:stone_with_lapis",
	wherein        = "default:stone",
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 6,
	clust_size     = 4,
	height_min     = -31000,
	height_max     = -256,
})

minetest.register_craft({
	output = 'dye:blue 2',
	recipe = {
		{'lapis:lapis'},
	}
})
