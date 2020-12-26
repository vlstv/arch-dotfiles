call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
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
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
let g:deoplete#enable_at_startup = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1

set number
set updatetime=100
augroup numbertoggle
highlight! link SignColumn LineNr

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab      
set autoindent
set copyindent 
set clipboard+=unnamedplus

let mapleader = " "
"map <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>tt :NERDTreeToggle<CR>
nnoremap <silent> <Leader>tf :NERDTreeFind<CR>
nnoremap <silent> <Leader>fb :Buffers<CR>
nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>fg :Rg<CR>
