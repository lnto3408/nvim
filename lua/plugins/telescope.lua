-- plugins/telescope.lua:
local mapKey = require("utils.KeyMapper").mapKey
return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			mapKey("<leader>ff", builtin.find_files)
			mapKey("<leader>fg", builtin.live_grep)
			mapKey("<leader>fb", builtin.buffers)
			mapKey("<leader>fh", builtin.help_tags)
			mapKey("<leader>ft", builtin.treesitter)
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				defaults = {
					layout_strategy = "horizontal",
					theme = "center",
					sorting_strategy = "ascending",
					wrap_results = true,
					border = true,
					dynamic_preview_title = true,
					layout_config = {
						height = 0.95,
						width = 0.9,
						prompt_position = "bottom",
						anchor = "edge",
						preview_width = 0.6,
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
