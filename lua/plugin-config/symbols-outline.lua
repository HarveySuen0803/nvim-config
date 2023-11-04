require("symbols-outline").setup({
    position = 'left',
    relative_width = false,
    width = 30,
    highlight_hovered_item = true,
    auto_close = false,
    keymaps = {
        close = {"q"},
        goto_location = "<Cr>",
        focus_location = "o",
        toggle_preview = "<space>",
        fold = "h",
        unfold = "l",
        fold_all = "H",
        unfold_all = "L",
        fold_reset = "R",
    },
})

vim.api.nvim_set_keymap('n', 'ss', ':SymbolsOutline<CR>', {})

vim.cmd[[autocmd BufEnter * if bufname() =~ "OUTLINE" | nmap <esc> gl | endif]]

