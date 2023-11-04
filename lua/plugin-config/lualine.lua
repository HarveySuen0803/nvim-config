require('lualine').setup {
    options = {
        theme = 'auto', -- lualine theme
        disabled_filetypes = {     -- Filetypes to disable lualine for.
            statusline = { "NvimTree" },       -- only ignores the ft for statusline.
            winbar = { "NvimTree" },           -- only ignores the ft for winbar.
        },

    }
}
