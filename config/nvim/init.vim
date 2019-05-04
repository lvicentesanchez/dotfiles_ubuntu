" Specify a directory for plugins
"
call plug#begin('~/.local/share/nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'ekalinin/Dockerfile.vim'
Plug 'derekwyatt/vim-scala'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plug 'phanviet/vim-monokai-pro'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tomasr/molokai'
Plug 'sickill/vim-monokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
"
call plug#end()

" Generic vim config
"
let mapleader = "\<Space>"

set lazyredraw

set t_Co=16

syntax enable

set backspace=2
set noshelltemp
set number
set shortmess+=I
set mouse=a
set background=dark
let guitermcolors=1
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox

" Key mappings
"
imap jj <Esc>
imap jk <Esc>
imap kj <Esc>

" Airline configuration
"
set laststatus=2
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1

" Denite
"
nnoremap <leader>r :<C-u>Denite -mode=normal file_rec<CR>
nnoremap <leader>f :<C-u>Denite file<CR>
nnoremap <leader>b :<C-u>Denite buffer<CR>


" Deoplete
"
let g:deoplete#enable_at_startup=1

" Racer
"
set hidden
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Vim-scala
"
au BufRead,BufNewFile *.sbt set filetype=scala
