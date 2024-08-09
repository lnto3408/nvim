local mapKey = require("utils.KeyMapper").mapKey

-- NeoTree toggle
mapKey('<C-n>', ':Neotree toggle<cr>')


-- pane navigation
mapKey('<C-h>', '<C-w>h') --Left
mapKey('<C-j>', '<C-w>j') --Down
mapKey('<C-k>', '<C-w>k') --Up
mapKey('<C-l>', '<C-w>l') --Right


-- clear serach hl
mapKey('<leader>h', ':nohlsearch<CR>')

-- indent 
mapKey('<', '<gv', 'v')
mapKey('>', '>gv', 'v')

-- personal setting
mapKey('<leader>w', ':w<CR>') -- save
mapKey('<leader>wq', ':wq!<CR>') --save and quite
mapKey('<leader>q', ':q!<CR>') -- quite
mapKey('<leader>bn', ':bn<CR>') -- buffer next
mapKey('<leader>bp', ':bp<CR>') -- buffer prev
mapKey('<leader>bd', ':bd<CR>') -- buffer tab delete
mapKey('bn', ':bn<CR>') -- buffer next without leader
mapKey('bp', ':bp<CR>') -- buffer prev without leader
mapKey('<leader>vs', ':vs<CR>') -- split vertically
mapKey('<leader>sp', ':sp<CR>') -- split split horizontal
mapKey('<C-j>', ':move +1<CR>') -- move current line up
mapKey('<C-k>', ':move -2<CR>') -- move current line down
