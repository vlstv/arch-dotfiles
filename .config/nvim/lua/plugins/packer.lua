local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'joshdick/onedark.vim'
  use 'jiangmiao/auto-pairs'
  use 'ryanoasis/vim-devicons'
  use 'tpope/vim-fugitive'
  use 'arcticicestudio/nord-vim'
  use 'junegunn/fzf.vim'
  use 'junegunn/fzf'
  use 'tpope/vim-commentary'
  use 'glepnir/galaxyline.nvim'
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'
  use 'hrsh7th/nvim-compe'
  use 'romgrk/doom-one.vim'
  use {'AckslD/nvim-whichkey-setup.lua',
    requires = {'liuchengxu/vim-which-key'}
  }
  use 'morhetz/gruvbox'
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  use 'stsewd/fzf-checkout.vim'
  use 'ChristianChiarulli/dashboard-nvim'
  use 'sainnhe/everforest'
  use 'onsails/lspkind-nvim'
  use {'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
    }
  }  
end)

