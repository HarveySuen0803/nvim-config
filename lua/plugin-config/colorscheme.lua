vim.o.termguicolors = true

-- github
require("github-theme").setup({
    options = {
        styles = {
            comments = 'NONE',
            functions = 'NONE',
            keywords = 'NONE',
            variables = 'NONE',
            conditionals = 'NONE',
            constants = 'NONE',
            numbers = 'NONE',
            operators = 'NONE',
            strings = 'NONE',
            types = 'NONE',
        },
        inverse = {
            match_paren = false,
            visual = false,
            search = false,
        },
    }
})

vim.cmd('colorscheme github_light_high_contrast')
