local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

map('n', '<C-z>', '<nop>', opt)
map('n', '<C-i>', '<nop>', opt)
map('n', '<C-o>', '<nop>', opt)
map('n', '<CR>', '<nop>', opt)
map('n', 'x', '<nop>', opt)
map('n', 'q', '<nop>', opt)
map('v', 'q', '<nop>', opt)
map('n', 'Q', '<nop>', opt)
map('v', 'Q', '<nop>', opt)
map('i', '<A-BS>', '<nop>', opt)
-- map('n', 'e', '<nop>', opt)
-- map('v', 'e', '<nop>', opt)
-- map('n', 'f', '<nop>', opt)
-- map('v', 'f', '<nop>', opt)
map('n', '<CR>', '<nop>', opt)
map('n', '<C-CR>', '<nop>', opt)
map('n', 'U', '<nop>', opt)
map('v', 'U', '<nop>', opt)

map('n', 'q', ':w<CR>', opt)
map('n', 'Q', ':q<CR>', opt)
map('v', 'Q', ':q<CR>', opt)

map('n', 'U', '<C-r>', opt)
map('v', 'U', '<C-r>', opt)

map('n', 'zj', '<C-w>j', opt)
map('n', 'zh', '<C-w>h', opt)
map('n', 'zk', '<C-w>k', opt)
map('n', 'zl', '<C-w>l', opt)

map('n', 'zL', ':set nosplitright<CR>:vsplit<CR>', opt)
map('n', 'zH', ':set splitright<CR>:vsplit<CR>', opt)
map('n', 'zK', ':set nosplitbelow<CR>:split<CR>', opt)
map('n', 'zJ', ':set splitbelow<CR>:split<CR>', opt)

map('n', 'gh', '<C-o>', opt)
map('n', 'gl', '<C-i>', opt)

map('n', '>', '>>', opt)
map('n', '<', '<<', opt)
-- map('v', '>', '>gv', opt)
-- map('v', '<', '<gv', opt)

map('n', '<A-Right>', 'w', opt)
map('n', '<A-Left>', 'b', opt)
map('v', '<A-Right>', 'w', opt)
map('v', '<A-Left>', 'b', opt)

-- map('n', '<A-j>', ':m .+1<CR>==', opt)
-- map('n', '<A-k>', ':m .-2<CR>==', opt)
-- map('i', '<A-k>', '<Esc>:m .-2<CR>==gi', opt)
-- map('i', '<A-j>', '<Esc>:m .+1<CR>==gi', opt)
-- map('v', '<A-j>', ":m '>+1<CR>gv=gv", opt)
-- map('v', '<A-k>', ":m '<-2<CR>gv=gv", opt)

map('n', 'x', '"_d', opt)
map('n', 'xx', '"_dd', opt)
map('n', 'X', '"_D', opt)
map('v', 'x', '"_d', opt)
map('v', 'X', '"_D', opt)

map('i', '<C-e>', '<Esc>A', opt)
map('i', '<C-a>', '<Esc>I', opt)
map('n', '<C-e>', '$', opt)
map('n', '<C-a>', '^', opt)
map('v', '<C-e>', '$h', opt)
map('v', '<C-a>', '^', opt)

map('v', ',', '<C-v>', opt)
map('v', '.', '<S-v>', opt)

map('n', '<PageDown>', '<C-d>', opt)
map('n', '<PageUp>', '<C-u>', opt)
map('v', '<PageDown>', '<C-d>', opt)
map('v', '<PageUp>', '<C-u>', opt)

map('n', '<S-Down>', 'vj', opt)
map('n', '<S-Up>', 'vk', opt)
map('v', '<S-Down>', 'j', opt)
map('v', '<S-Up>', 'k', opt)
map('i', '<S-Down>', '<Esc>lvj', opt)
map('i', '<S-Up>', '<Esc>vk', opt)

map('n', 'mn', ':% s/\r$//g<CR>', opt)

map('n', 'yaa', 'ggyG', opt)
map('n', 'yL', 'y$', opt)
map('n', 'yH', 'y^', opt)
map('n', 'daa', 'ggdG', opt)
map('n', 'dL', 'd$', opt)
map('n', 'dH', 'd^', opt)
map('n', 'caa', 'ggcG', opt)
map('n', 'cL', 'c$', opt)
map('n', 'cH', 'c^', opt)
map('n', 'xaa', 'gg"_dG', opt)
map('n', 'xL', '"_d$', opt)
map('n', 'xH', '"_d^', opt)

vim.cmd ('autocmd FileType markdown nmap ,c a```')
