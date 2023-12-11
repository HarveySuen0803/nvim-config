require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "html", 
        "css", 
        "scss",
        "c", 
        "cpp", 
        "vim", 
        "lua", 
        "javascript", 
        "typescript", 
        "sql", 
        "python", 
        "java", 
        "vue", 
        "vim", 
        "markdown", 
        "lua",
        "bash",
        "json",
        "jsonc",
        "rust",
        "toml",
        "yaml",
        "dot"
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<CR>',
            node_incremental = '<CR>',
            node_decremental = '<S-CR>',
            -- scope_incremental = '<TAB>',
        }
    },
    indent = {
        enable = true
    }
}

vim.api.nvim_set_keymap("n", "mf", "gg=Gg", {})

vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

vim.o.foldlevel = 99


