let mapleader = " "

lua require('colors')
lua require('settings')
lua require('plugins')

augroup numbertoggle
highlight! link signcolumn linenr
autocmd termopen * setlocal nonumber norelativenumber
set hidden

"fzf settings
let g:fzf_preview_window = []
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.2, 'yoffset': 1, 'border': 'top' } }
let g:fzf_colors =
            \ { 'fg':    ['fg', 'normal'],
            \ 'bg':      ['bg', 'normal'],
            \ 'hl':      ['fg', 'comment'],
            \ 'fg+':     ['fg', 'cursorline', 'cursorcolumn', 'normal'],
            \ 'bg+':     ['bg', 'cursorline', 'cursorcolumn'],
            \ 'hl+':     ['fg', 'statement'],
            \ 'info':    ['fg', 'preproc'],
            \ 'border':  ['bg', 'CursorLine'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }
command! Bookmarks call fzf#run(fzf#wrap('Bookmarks', {'options': ['--prompt', 'Bookmark> '], 'source': 'cut -sd" " -f2 ' . g:BookmarksFile, 'sink': 'echom "Switched to project:" expand("%:p:h") | cd'}))

nnoremap <silent> <Leader>fb :Buffers<CR>
nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>fg :Rg<CR>
nnoremap <silent> <Leader>fo :History<CR>
nnoremap <silent> <Leader>fp :Bookmarks<CR>
nnoremap <silent> <Leader>fc :GBranches<CR>

"ansible mappings
nnoremap <silent> <Leader>md :silent !ansible-vault decrypt % --vault-password-file="~/.vault_pass.txt"<CR><CR>
nnoremap <silent> <Leader>me :silent !ansible-vault encrypt % --vault-password-file="~/.vault_pass.txt"<CR><CR>

"vim fuggutive
nnoremap <silent> <Leader>mu :silent G checkout % <CR><CR>
nnoremap <silent> <Leader>mU :silent G checkout -- . <CR><CR>

" dashboard
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nmap <Leader>fn :<C-u>DashboardNewFile<CR>

"vim-snipe
map <Leader>gf <Plug>(snipe-f)
let snipe_highlight_cterm256_color = 3

"lsp
noremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

"commentary
nnoremap <Leader>/ :Commentary<CR>
vnoremap <Leader>/ :Commentary<CR>

"General vim mappings
nnoremap <silent> <Leader>bn :bn<CR>
nnoremap <silent> <Leader>bp :bp<CR>
nnoremap <silent> <Leader>bk :bd!<CR>
nnoremap <Leader>wv <C-W><C-v>
nnoremap <Leader>ws <C-W><C-s>
nnoremap <Leader>wc <C-W><C-c>
nnoremap <Leader>wh <C-W><C-h>
nnoremap <Leader>wj <C-W><C-j>
nnoremap <Leader>wk <C-W><C-k>
nnoremap <Leader>wl <C-W><C-l>

"vim-which key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
let g:which_key_map =  {}
let g:which_key_timeout = 100
let g:which_key_sep = '→'
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0
autocmd! FileType which_key " Hide status line
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

silent! setlocal norelativenumber
silent! setlocal nonumber

