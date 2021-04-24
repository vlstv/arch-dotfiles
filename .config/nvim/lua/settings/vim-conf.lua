vim.wo.number = true
vim.wo.relativenumber = true
vim.o.updatetime = 10
vim.o.encoding='utf-8'
vim.o.fileencoding = "utf-8"
vim.o.mouse = "a"
vim.cmd('syntax on') 
vim.o.clipboard = "unnamedplus"

vim.o.tabstop=4
vim.o.softtabstop=4
vim.o.shiftwidth=4
vim.o.expandtab=true      
vim.o.autoindent=true
vim.o.copyindent=true
vim.o.termguicolors=true
vim.g.BookmarksFile = '~/.bookmarks'

--open terminal applications in nvim
local function term_app(name, mapping)
    vim.api.nvim_set_keymap('n', mapping, ":term " .. name .. " <CR> :keepalt file " .. name .. " <CR>A<CR>", { noremap = true, silent = true })
end

term_app('newsboat', '<Leader>xn')
term_app('amfora', '<Leader>xa')
term_app('zsh', '<Leader>xz')

vim.api.nvim_set_keymap('t', '<C-q>', '<C-\\><C-n>', { noremap = true, silent = true }) --exit terminal mode
vim.api.nvim_set_keymap('n', '<Leader>so', '<C-W><C-s><C-W><C-j> :term<CR> :resize -15<CR> :keepalt file term<CR>A<CR>',  { noremap = true, silent = true }) --dropdown terminal
