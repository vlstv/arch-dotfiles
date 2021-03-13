call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
":Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'psliwka/vim-smoothie'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ap/vim-css-color'
call plug#end()

colorscheme nord
"let g:airline_theme='minimalist'
"let g:airline_theme='solarized'
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_cursor_line_number_background = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
let g:deoplete#enable_at_startup = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1

set number
set cursorline
set updatetime=100
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

let mapleader = " "
"map <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>bn :bn<CR>
nnoremap <silent> <Leader>bp :bp<CR>
nnoremap <silent> <Leader>bc :bd<CR>
nnoremap <Leader>wv <C-W><C-v>
nnoremap <Leader>ws <C-W><C-s>
nnoremap <Leader>wc <C-W><C-c>
nnoremap <Leader>wh <C-W><C-h>
nnoremap <Leader>wj <C-W><C-j>
nnoremap <Leader>wk <C-W><C-k>
nnoremap <Leader>wl <C-W><C-l>
nnoremap <silent> <Leader>tt :NERDTreeToggle<CR>
nnoremap <silent> <Leader>tf :NERDTreeFind<CR>
nnoremap <silent> <Leader>fb :Buffers<CR>
nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>fg :Rg<CR>
