vim.g.encoding = "UTF-8"
vim.g.fileencoding = 'utf-8'

vim.o.number = true

vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.autoread = true
vim.o.autochdir = true

vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.shiftround = true
vim.o.smarttab = true

vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.updatetime = 100

vim.o.mouse = "a"

vim.o.clipboard = "unnamed"

vim.o.scrolloff = 15
vim.o.sidescrolloff = 15

vim.o.hidden = true

vim.o.wildmenu = true

vim.o.pumheight = 10

vim.o.syntax = on

vim.o.eb = false

vim.o.confirm = true

vim.o.laststatus = 2
vim.o.showtabline = 2

vim.o.signcolumn = "no"

vim.cmd [[
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]
