local mapKey = require("utils.KeyMapper").mapKey

-- NeoTree toggle
mapKey("<C-n>", ":Neotree toggle<cr>")

-- pane navigation
mapKey("<C-h>", "<C-w>h") --Left
mapKey("<C-j>", "<C-w>j") --Down
mapKey("<C-k>", "<C-w>k") --Up
mapKey("<C-l>", "<C-w>l") --Right

-- clear serach hl
mapKey("<leader>h", ":nohlsearch<CR>")

-- indent
mapKey("<", "<gv", "v")
mapKey(">", ">gv", "v")

-- personal setting
mapKey("<leader>w", ":w!<CR>") -- save
mapKey("<leader>wq", ":wq!<CR>") --save and quite
mapKey("<leader>q", ":q!<CR>") -- quite
mapKey("<leader>bn", ":bn<CR>") -- buffer next
mapKey("<leader>bp", ":bp<CR>") -- buffer prev
mapKey("<leader>bd", ":bd<CR>") -- buffer tab delete
mapKey("bn", ":bn<CR>") -- buffer next without leader
mapKey("bp", ":bp<CR>") -- buffer prev without leader
mapKey("<leader>vs", ":vs<CR>") -- split vertically
mapKey("<leader>sp", ":sp<CR>") -- split split horizontal
-- mapKey("<C-j>", ":move +1<CR>") -- move current line up
-- mapKey("<C-k>", ":move -2<CR>") -- move current line down

-- C++ complie for getting path ./ or absolut path
_G.compile_and_run = function()
	local file_dir = vim.fn.expand("%:p:h")
	local current_dir = vim.fn.getcwd()
	local output_file = vim.fn.expand("%:r")
	local cmd = ""
	if file_dir == current_dir then
		cmd = string.format("g++ -std=c++17 -g -o %s %s && ./%s", output_file, vim.fn.expand("%"), output_file)
	else
		cmd =
			string.format("g++ -std=c++17 -g -o %s %s && %s/%s", output_file, vim.fn.expand("%"), file_dir, output_file)
	end
	vim.cmd("!" .. cmd)
end
vim.api.nvim_set_keymap("n", "<leader>cc", ":lua compile_and_run()<CR>", { noremap = true, silent = true })

-- mapKey("<leader>cc", ":execute '!g++ -g -o ' . expand('%:r') . ' ' . expand('%') . ' && '. expand('%:r')<CR>")
mapKey("<leader>cu", ':echo expand("%:p")<CR>')
