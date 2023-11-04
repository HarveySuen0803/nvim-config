-- 编码格式
vim.g.encoding = "UTF-8"
vim.g.fileencoding = 'utf-8'

-- 行号配置
vim.o.number = true

-- 文件配置
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.autoread = true
vim.o.autochdir = true

-- 缩进配置
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.shiftround = true
vim.o.smarttab = true

-- 搜索配置
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- 自动更新
vim.o.updatetime = 100

-- 允许鼠标
vim.o.mouse = "a"

-- 共享剪切板
vim.o.clipboard = "unnamed"

-- 光标与上下边框保持行距
vim.o.scrolloff = 15
vim.o.sidescrolloff = 15

-- 允许在有未保存的修改时切换缓冲区
vim.o.hidden = true

-- 补全增强
vim.o.wildmenu = true

-- 减少无用信息的显示
vim.o.pumheight = 10

-- 语法高亮
vim.o.syntax = on

-- 关闭输入错误提示音
vim.o.eb = false

-- 确认是否保存未保存的文件
vim.o.confirm = true

-- 显示状态栏
vim.o.laststatus = 2
vim.o.showtabline = 2

-- 只显示数字栏
vim.o.signcolumn = "no"

-- 打开文件恢复上一次退出时的位置
vim.cmd [[
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]
