local util = require("formatter.util")

require("formatter").setup({
    logging = false,
    filetype = {
        html = { require("formatter.filetypes.html").prettier },
        css = { require("formatter.filetypes.css").prettier },
        scss = { require("formatter.filetypes.css").prettier },
        javascript = { require("formatter.filetypes.javascript").prettier },
        typescript = { require("formatter.filetypes.typescript").prettier },
        javascriptreact = { require("formatter.filetypes.javascriptreact").prettier },
        typescriptreact = { require("formatter.filetypes.typescriptreact").prettier },
        json = { require("formatter.filetypes.json").prettier },
        jsonc = { require("formatter.filetypes.json").prettier },
        markdown = { require("formatter.filetypes.markdown").prettier },
        vue = {
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", util.escape_path(util.get_current_buffer_file_path()) },
                    stdin = true,
                }
            end,
        },
        lua = { require("formatter.filetypes.lua").stylua },
        python = {
            function()
                return {
                    exe = "black",
                    args = { "-" },
                    stdin = true,
                }
            end,
        },
        sh = { require("formatter.filetypes.sh").shfmt },
        bash = { require("formatter.filetypes.sh").shfmt },
        c = {
            function()
                return {
                    exe = "clang-format",
                    args = { "--assume-filename", util.get_current_buffer_file_name() },
                    stdin = true,
                }
            end,
        },
        cpp = {
            function()
                return {
                    exe = "clang-format",
                    args = { "--assume-filename", util.get_current_buffer_file_name() },
                    stdin = true,
                }
            end,
        },
        java = {
            function()
                return {
                    exe = "clang-format",
                    args = { "--assume-filename", util.get_current_buffer_file_name() },
                    stdin = true,
                }
            end,
        },
        sql = {
            function()
                return {
                    exe = "sql-formatter",
                    args = { "-" },
                    stdin = true,
                }
            end,
        },
        rust = {
            function()
                return {
                    exe = "rustfmt",
                    args = { "--emit=stdout" },
                    stdin = true,
                }
            end,
        },
        toml = {
            function()
                return {
                    exe = "taplo",
                    args = { "format", "-" },
                    stdin = true,
                }
            end,
        },
        yaml = {
            function()
                return {
                    exe = "prettier",
                    args = { "--stdin-filepath", util.escape_path(util.get_current_buffer_file_path()) },
                    stdin = true,
                }
            end,
        },
        dot = {
            function()
                return {
                    exe = "dot",
                    args = { "-Tdot" },
                    stdin = true,
                }
            end,
        },
        vim = {
            function()
                return {
                    exe = "vim-beautify",
                    args = {},
                    stdin = false,
                }
            end,
        },
        ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace
        },
    }
})

vim.api.nvim_set_keymap("n", "mf", ":Format<CR>", { noremap = true, silent = true })
