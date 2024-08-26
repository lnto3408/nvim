return {
	"ojroques/vim-oscyank",
	config = function()
		vim.keymap.set("n", "<leader>c", "<Plug>OSCYankOperator", { silent = true })
		-- vim.keymap.set("n", "<leader>cc", "<leader>c_", { remap = true, silent = true })
		vim.keymap.set("v", "<leader>c", "<Plug>OSCYankVisual", { silent = true })
	end,
}
