vim.cmd [[packadd packer.nvim]]
vim.cmd [[ autocmd BufWritePost plugins.lua PackerCompile ]]

return require('packer').startup(function()
   
    use {'neovim/nvim-lspconfig', as = 'nvim-lspconfig'}

    use {
        'Shougo/deoplete.nvim',
        run = ':UpdateRemotePlugins',
        config = 'vim.call[[deoplete#enable]]'
    }

    use {'Shougo/deoplete-lsp', requires = 'Shougo/deoplete.nvim'}

    use {'wbthomason/packer.nvim', opt = true}
                                    
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {'lervag/vimtex', ft = {'tex'}}
    
    use {'junegunn/fzf', as = 'fzf', {'junegunn/fzf.vim', requires = 'fzf'}}

    use {
        'tpope/vim-dispatch',
        opt = true,
        cmd = {'Dispatch', 'Make', 'Focus', 'Start'}
    }

    use 'tpope/vim-fugitive'

    use 'tpope/vim-surround'
    
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }

    use 'jiangmiao/auto-pairs'

    use 'plasticboy/vim-markdown'

    use 'rust-lang/rust.vim'

    use 'chriskempson/base16-vim'

    use 'overcache/NeoSolarized'

    use 'vimwiki/vimwiki'

    use 'dkarter/bullets.vim'

    use 'tools-life/taskwiki'

    use { "catppuccin/nvim", as = "catppuccin" }
end)
