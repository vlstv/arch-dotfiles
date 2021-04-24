vim.api.nvim_set_keymap('n', '<Leader>tt', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>tr', ':NvimTreeRefresh<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>tf', ':NvimTreeFindFile<CR>', {noremap = true, silent = true})

vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 1
-- vim.g.nvim_tree_disable_netrw = 0
vim.g.nvim_tree_hijack_netrw = 0
