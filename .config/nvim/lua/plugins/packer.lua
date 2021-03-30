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
  use 'jiangmiao/auto-pairs'
  use 'preservim/nerdtree'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'ryanoasis/vim-devicons'
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use 'arcticicestudio/nord-vim'
  use 'junegunn/fzf.vim'
  use 'junegunn/fzf'
  use 'yangmillstheory/vim-snipe'
  use 'vimwiki/vimwiki'
  -- use 'mhinz/vim-startify'
  use 'tpope/vim-commentary'
  use 'glepnir/galaxyline.nvim'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use 'romgrk/doom-one.vim'
  use 'ChristianChiarulli/dashboard-nvim'
  use 'airblade/vim-rooter'
  use 'liuchengxu/vim-which-key'
  -- use {
  --   'nvim-telescope/telescope.nvim',
  --   requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  -- }
  -- use 'nvim-telescope/telescope-project.nvim'
end)

