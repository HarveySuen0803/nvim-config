local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

vim.deprecate = function() end

return require('packer').startup(function(use) 
    use 'wbthomason/packer.nvim'

    use 'projekt0n/github-nvim-theme'

    use 'kyazdani42/nvim-web-devicons'

    use 'nvim-lua/plenary.nvim'

    -- use 'akinsho/bufferline.nvim'

    -- use 'nvim-lualine/lualine.nvim'

    -- use 'kyazdani42/nvim-tree.lua'

    use 'windwp/nvim-autopairs'

    -- use 'mhartington/formatter.nvim'

    use 'nvim-treesitter/nvim-treesitter'

    use 'windwp/nvim-ts-autotag'

    -- use 'nvim-telescope/telescope.nvim'
    -- use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

    use 'kylechui/nvim-surround'

    use 'numToStr/Comment.nvim'

    -- use 'simrat39/symbols-outline.nvim'

    use 'ojroques/nvim-osc52'

    use 'lukas-reineke/indent-blankline.nvim'

    -- use 'folke/flash.nvim'

    if packer_bootstrap then
        require('packer').sync()
    end
end)

