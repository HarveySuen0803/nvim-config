if vim.g.vscode then
    require 'vscode.setting'
    require 'vscode.mapping'
    -- require 'plugin-config.flash'
else
    require 'setting'
    require 'mapping'
    require 'plugin'
    require 'plugin-config.colorscheme'
    require 'plugin-config.bufferline'
    require 'plugin-config.lualine'
    require 'plugin-config.tree'
    require 'plugin-config.treesitter'
    require 'plugin-config.autopairs'
    require 'plugin-config.telescope'
    require 'plugin-config.surround'
    require 'plugin-config.symbols-outline'
    require 'plugin-config.comment'
    require 'plugin-config.osc52'
    require 'plugin-config.indent-blankline'
    require 'plugin-config.flash'
    require 'plugin-config.nvim-ts-autotag'
end

