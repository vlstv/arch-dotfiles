local wk = require('whichkey_setup')
keymap = {
    f = {
        name = '+find',
        f = {'<Cmd>Files<CR>', 'files'},
        b = {':Buffers<CR>', 'buffers'},
        g = {':Rg<CR>', 'word'},
        o = {':History<CR>', 'history'},
        c = {':GBranches<CR>', 'git-branches'},
        p = {':Bookmarks<CR>', 'projects'}
    },
    s = {
        name = '+session',
        s = {':SessionSave', 'save'},
        l = {':SessionLoad', 'load'}
    },
    m = {
        name = '+git',
        u = {':silent G checkout % <CR><CR>', 'checkout-file'},
        U = {':silent G checkout -- . <CR><CR>', 'checkout-all'},
        g = {':silent G <CR><CR>', 'git-status'},
        l = {':silent G log<CR><CR>', 'git-log'},
        d = {':silent !ansible-vault decrypt % --vault-password-file="~/.vault_pass.txt"<CR><CR>', 'ansible-decrypt'},
        e = {':silent !ansible-vault encrypt % --vault-password-file="~/.vault_pass.txt"<CR><CR>','ansible-encrypt'}
    },
    t = {
        name = '+tree',
        t = {':NvimTreeToggle<CR>', 'toggle'},
        f = {':NvimTreeFindFile<CR>', 'find-file'},
        r = {':NvimTreeRefresh<CR>', 'refresh'},
    },
    w = {
        name = '+window',
        v = {'<C-W><C-v>', 'vertical-split'},
        s = {'<C-W><C-s>', 'horizontal-split'},
        c = {'<C-W><C-s>', 'close'},
        o = {'<C-W><C-s>', 'maximize'},
        j = {'<C-W><C-s>', 'focus-down'},
        k = {'<C-W><C-s>', 'focus-up'},
        l = {'<C-W><C-s>', 'focus-right'},
        h = {'<C-W><C-s>', 'focus-left'},
    },
    b = {
        name = '+buffers',
        n = {':bn<CR>', 'next'},
        p = {':bp<CR>', 'previose'},
        k = {':bd!<CR>', 'kill'},
        e = {':<C-u>DashboardNewFile<CR>', 'new-file'}
    },
    x = {
        name = '+terminal-app',
        a = 'amfora',
        d = 'dropdown-terminal',
        z = 'zsh',
        n = 'newsboat'
    },
    ['/'] = {':Commentary<CR>','comment'}
}


local visual_keymap = {
    ['/'] = {':Commentary<CR>','comment'}
}


--lsp mappings
vim.cmd "nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>"
vim.cmd "nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>"
vim.cmd "nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>"
vim.cmd "nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>"
vim.cmd "nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>"



vim.api.nvim_set_keymap('t', '<C-q>', '<C-\\><C-n>', { noremap = true, silent = true }) --exit terminal mode
vim.api.nvim_set_keymap('n', '<Leader>xd', '<C-W><C-s><C-W><C-j> :term<CR> :resize -15<CR> :keepalt file term<CR>A<CR>',  { noremap = true, silent = true }) --dropdown terminal


wk.register_keymap('leader', keymap)
wk.register_keymap('leader', visual_keymap, {mode = 'v'})
