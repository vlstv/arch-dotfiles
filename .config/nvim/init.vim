lua require('plugins')
let mapleader = " "
colorscheme nord

set number
set relativenumber
set updatetime=100
augroup numbertoggle
highlight! link SignColumn LineNr
set encoding=UTF-8
syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab      
set autoindent
set copyindent 
set clipboard+=unnamedplus
autocmd FileType dashboard set nonumber | autocmd WinLeave <buffer> set number
autocmd FileType dashboard set norelativenumber | autocmd WinLeave <buffer> set relativenumber
let snipe_highlight_cterm256_color = 1

nnoremap <Leader>/ :Commentary<CR>
vnoremap <Leader>/ :Commentary<CR>
"exit terminal mode
tnoremap <C-q> <C-\><C-n>
"open terminal
nnoremap <silent> <Leader>so <C-W><C-s><C-W><C-j> :term<CR> :resize -5<CR>
nnoremap <silent> <Leader>bn :bn<CR>
nnoremap <silent> <Leader>bp :bp<CR>
nnoremap <silent> <Leader>bk :bd<CR>
nnoremap <Leader>wv <C-W><C-v>
nnoremap <Leader>ws <C-W><C-s>
nnoremap <Leader>wc <C-W><C-c>
nnoremap <Leader>wh <C-W><C-h>
nnoremap <Leader>wj <C-W><C-j>
nnoremap <Leader>wk <C-W><C-k>
nnoremap <Leader>wl <C-W><C-l>
nnoremap <silent> <Leader>tt :NERDTreeToggle<CR>
nnoremap <silent> <Leader>tf :NERDTreeFind<CR>
nnoremap <silent> <Leader>tc :NERDTreeCWD<CR>
nnoremap <silent> <Leader>fb :Buffers<CR>
nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>fg :Rg<CR>


" FZF SETTINGS
let g:fzf_preview_window = []
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.2, 'yoffset': 1, 'border': 'top' } }
let g:fzf_colors =
            \ { 'fg':    ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['bg', 'CursorLine'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }
command! Bookmarks call fzf#run(fzf#wrap('Bookmarks', {'options': ['--prompt', 'Bookmark> '], 'source': 'cut -sd" " -f2 ' . g:NERDTreeBookmarksFile, 'sink': 'e'}))

nnoremap <silent> <Leader>md :silent !ansible-vault decrypt % --vault-password-file="~/.vault_pass.txt"<CR><CR>
nnoremap <silent> <Leader>me :silent !ansible-vault encrypt % --vault-password-file="~/.vault_pass.txt"<CR><CR>
nnoremap <silent> <Leader>mu :silent G checkout % <CR><CR>
nnoremap <silent> <Leader>mU :silent G checkout -- . <CR><CR>
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nmap <Leader>fn :<C-u>DashboardNewFile<CR>
map <Leader>gf <Plug>(snipe-f)

noremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
let snipe_highlight_cterm256_color = 1

nnoremap <Leader>/ :Commentary<CR>
vnoremap <Leader>/ :Commentary<CR>
"exit terminal mode
tnoremap <C-q> <C-\><C-n>
"open terminal
nnoremap <silent> <Leader>so <C-W><C-s><C-W><C-j> :term<CR> :resize -5<CR>
nnoremap <silent> <Leader>bn :bn<CR>
nnoremap <silent> <Leader>bp :bp<CR>
nnoremap <silent> <Leader>bk :bd<CR>
nnoremap <Leader>wv <C-W><C-v>
nnoremap <Leader>ws <C-W><C-s>
nnoremap <Leader>wc <C-W><C-c>
nnoremap <Leader>wh <C-W><C-h>
nnoremap <Leader>wj <C-W><C-j>
nnoremap <Leader>wk <C-W><C-k>
nnoremap <Leader>wl <C-W><C-l>
nnoremap <silent> <Leader>tt :NERDTreeToggle<CR>
nnoremap <silent> <Leader>tf :NERDTreeFind<CR>
nnoremap <silent> <Leader>tc :NERDTreeCWD<CR>

nnoremap <silent> <Leader>fb :Buffers<CR>
nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>fg :Rg<CR>
nnoremap <silent> <Leader>fo :History<CR>
nnoremap <silent> <Leader>fp :Bookmarks<CR>

nnoremap <silent> <Leader>md :silent !ansible-vault decrypt % --vault-password-file="~/.vault_pass.txt"<CR><CR>
nnoremap <silent> <Leader>me :silent !ansible-vault encrypt % --vault-password-file="~/.vault_pass.txt"<CR><CR>
nnoremap <silent> <Leader>mu :silent G checkout % <CR><CR>
nnoremap <silent> <Leader>mU :silent G checkout -- . <CR><CR>
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nmap <Leader>fn :<C-u>DashboardNewFile<CR>
map <Leader>gf <Plug>(snipe-f)

" Timeout
let g:which_key_timeout = 100

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

let g:which_key_map =  {}
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler
