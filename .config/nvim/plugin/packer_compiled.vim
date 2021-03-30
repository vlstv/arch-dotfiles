" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/vlstv/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/vlstv/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/vlstv/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/vlstv/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/vlstv/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["doom-one.vim"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/doom-one.vim"
  },
  fzf = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["nerdtree-git-plugin"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/nerdtree-git-plugin"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/nord-vim"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-snipe"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/vim-snipe"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/vim-which-key"
  },
  vimwiki = {
    loaded = true,
    path = "/home/vlstv/.local/share/nvim/site/pack/packer/start/vimwiki"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
