local bg = ""
local fg = ""
local sp = ""
local underline = ""

require("bufferline").setup {
    options = {
        themable = true,
        color_icons = true,
        max_name_length = 18,
        max_prefix_length = 18, 
        diagnostics = "nvim_lsp",
        indicator = {
            style = 'none',
        },
        offsets = {
            {
                filetype = "NvimTree",
                text = "NvimTree",
                highlight = "Directory",
                text_align = "left",
                separator = false
            }
        },
        -- modified_icon = "",
        separator_style = {"", ""},
        buffer_close_icon = "",
    },
    highlights = {
        background = {
            fg = fg,
            bg = bg,
        },
        buffer_selected = {
            bg = bg,
            fg = fg,
            bold = true,
        },
        buffer_visible = {
            bg = bg,
            fg = fg
        },
        close_button = {
            bg = bg,
        },
        duplicate = {
            bg = bg,
        },
        duplicate_selected = {
            bg = bg,
            fg = fg,
            bold = true,
        },
        duplicate_visible = {
            bg = bg,
        },
        fill = {
            fg = fg,
            bg = bg,
        },
        indicator_visible = {
            bg = bg,
        },
        separator = {
            bg = bg,
            fg = fg,
        },
        separator_visible = {
            bg = bg,
            fg = fg,
        },
        close_button = {
            fg = fg,
            bg = bg
        },
        close_button_visible = {
            fg = fg,
            bg = bg
        },
        modified = {
            fg = fg,
            bg = bg,
        },
        modified_visible = {
            fg = fg,
            bg = bg
        },
        modified_selected = {
            fg = fg,
            bg = bg
        },
    }
}

vim.api.nvim_set_keymap('n', '<C-S-Tab>', ':BufferLineCyclePrev<CR>', {})
vim.api.nvim_set_keymap('n', '<C-Tab>', ':BufferLineCycleNext<CR>', {})

vim.api.nvim_set_keymap('n', 'gT', ':BufferLineCyclePrev<CR>', {})
vim.api.nvim_set_keymap('n', 'gt', ':BufferLineCycleNext<CR>', {})

vim.api.nvim_set_keymap('n', '<C-A-[>', ':BufferLineMovePrev<CR>', {})
vim.api.nvim_set_keymap('n', '<C-A-]>', ':BufferLineMoveNext<CR>', {})

vim.api.nvim_set_keymap('n', 'c]', ':BufferLineCloseRight<CR>', {})
vim.api.nvim_set_keymap('n', 'c[', ':BufferLineCloseLeft<CR>', {})
vim.api.nvim_set_keymap('n', 'c\\', ':BufferLineCloseOthers<CR>', {})
