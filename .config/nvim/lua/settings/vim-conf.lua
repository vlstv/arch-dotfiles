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

term_app('newsboat', 'n')
term_app('amfora', 'a')
term_app('zsh', 'z')
