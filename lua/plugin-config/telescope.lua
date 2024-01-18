local status, actions = pcall(require, "telescope.actions")
if (not status) then
    return
end

--local actions = require('telescope.actions')
require("telescope").setup {
    defaults = {
        -- Default configuration for telescope goes here:
        -- config_key = value,
        mappings = {
            n = {
                ["q"] = actions.close,
                ["l"] = actions.file_edit
            },
            i = {
                ["<BS>"] = actions.close,
            }
        },
        file_ignore_patterns = {"./node_modules"}
    },

    pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
    },
    extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --   extension_config_key = value,
        -- }
        -- please take a look at the readme of the extension you want to configure
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case" -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        }

    }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("fzf")

-- mappings
vim.api.nvim_set_keymap("n", "<leader>fe", [[<cmd>lua require('telescope.builtin').find_files()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>f/", [[<cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>]], {})
-- vim.api.nvim_set_keymap("n", "fg", [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], {})
-- vim.api.nvim_set_keymap("n", "sfb", [[<cmd>lua require('telescope.builtin').buffers()<cr>]], {})
-- vim.api.nvim_set_keymap("n", "sfh", [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], {})
-- vim.api.nvim_set_keymap("n", "ssf", [[<cmd>lua require('telescope.builtin').file_browser()<cr>]], {})
