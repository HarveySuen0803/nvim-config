vim.o.termguicolors = true

-- github
require('github-theme').setup({
    options = {
        -- Compiled file's destination location
        compile_path = vim.fn.stdpath('cache') .. '/github-theme',
        compile_file_suffix = '_compiled', -- Compiled file suffix
        hide_end_of_buffer = true, -- Hide the '~' character at the end of the buffer for a cleaner look
        hide_nc_statusline = true, -- Override the underline style for non-active statuslines
        transparent = false,       -- Disable setting background
        terminal_colors = true,    -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
        dim_inactive = false,      -- Non focused panes set to alternative background
        module_default = true,     -- Default enable value for modules
        styles = {                 -- Style to be applied to different syntax groups
            comments = 'NONE',       -- Value is any valid attr-list value `:help attr-list`
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
        inverse = {                -- Inverse highlight for different types
            match_paren = false,
            visual = false,
            search = false,
        },
        darken = {                 -- Darken floating windows and sidebar-like windows
            floats = false,
            sidebars = {
                enable = false,
                list = {},             -- Apply dark background to specific windows
            },
        },
        modules = {                -- List of various plugins and additional options
        },
    },
    palettes = {},
    specs = {},
    groups = {
        github_light = {
            ["@punctuation"] = { fg = '#000000' },
            ["@punctuation.bracket"] = { fg = '#000000' },
            ["@punctuation.delimiter"] = { fg = '#000000' },
            ["@punctuation.special"] = { fg = '#000000' },
        },
    },
})


local function set_colorscheme()
  local appearance = os.getenv("WEZTERM_APPEARANCE")

  if appearance and appearance:find("Dark") then
    vim.o.background = "dark"
    vim.cmd('colorscheme github_dark_high_contrast')
    vim.cmd('highlight Normal guibg=#000000')
    vim.cmd('highlight NvimTreeNormal guibg=#000000')
    vim.cmd('highlight NvimTreeEndOfBuffer guibg=#000000')
    vim.cmd('highlight StatusLine guibg=#000000')
    vim.cmd('highlight Pmenu guibg=#000000')
  else
    vim.o.background = "light"
    vim.cmd('colorscheme github_light')
  end
end

set_colorscheme()

vim.api.nvim_create_autocmd("VimEnter", {
  callback = set_colorscheme,
})
