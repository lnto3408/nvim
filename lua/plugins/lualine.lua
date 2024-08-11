return {
	"nvim-lualine/lualine.nvim",
	dependenciees = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "gruvbox",
				-- section_seperators = '',
				-- component_separators = '',
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff" },
				lualine_c = { "filename" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = {
					function()
						local current_line = vim.fn.line(".")
						local total_lines = vim.fn.line("$")
						local column = vim.fn.col(".")
						return string.format("total %d - %d:%d", total_lines, current_line, column)
					end,
				},
			},
			tabline = {
				lualine_a = { "buffers" },
				lualine_b = { "tabs" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
		})
	end,
}
