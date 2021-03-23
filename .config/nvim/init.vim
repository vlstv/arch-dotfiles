call plug#begin('~/.local/share/nvim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'preservem/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'mhinz/vim-startify'
Plug 'yangmillstheory/vim-snipe'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'tpope/vim-commentary'
call plug#end()

lua require('plugins')
let mapleader = " "

set termguicolors
colorscheme nord

let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_cursor_line_number_background = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1

set number
set relativenumber
set updatetime=10
augroup numbertoggle
highlight! link SignColumn LineNr
syntax enable

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab      
set autoindent
set copyindent 
set clipboard+=unnamedplus
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
nnoremap <silent> <Leader>md :silent !ansible-vault decrypt % --vault-password-file="~/.vault_pass.txt"<CR><CR>
nnoremap <silent> <Leader>me :silent !ansible-vault encrypt % --vault-password-file="~/.vault_pass.txt"<CR><CR>
nnoremap <silent> <Leader>mu :silent G checkout % <CR><CR>
nnoremap <silent> <Leader>mU :silent G checkout -- . <CR><CR>
map <Leader>gf <Plug>(snipe-f)


noremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
