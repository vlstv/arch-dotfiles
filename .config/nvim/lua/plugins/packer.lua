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
  use 'airblade/vim-gitgutter'
  use 'arcticicestudio/nord-vim'
  use 'junegunn/fzf.vim'
  use 'junegunn/fzf'
  use 'yangmillstheory/vim-snipe'
  use 'vimwiki/vimwiki'
  use 'tpope/vim-commentary'
  use 'glepnir/galaxyline.nvim'
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  -- use 'nvim-lua/completion-nvim'
  use 'hrsh7th/nvim-compe'
  use 'romgrk/doom-one.vim'
  -- use 'airblade/vim-rooter'
  use 'liuchengxu/vim-which-key'
  use 'iandwelker/rose-pine-vim'
  use 'morhetz/gruvbox'
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  -- use 'romgrk/barbar.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'stsewd/fzf-checkout.vim'
  use 'ChristianChiarulli/dashboard-nvim'
end)

