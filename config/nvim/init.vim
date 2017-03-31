" Specify a directory for plugins
"
call plug#begin('~/.local/share/nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'ensime/ensime-vim', { 'do': ':UpdateRemotePlugins' }
Plug 'derekwyatt/vim-scala'
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
"
call plug#end()

" Generic vim config
"
syntax enable
set background=dark
colorscheme solarized

set backspace=2

set noshelltemp

set shortmess+=I

" Airline configuration
"
set laststatus=2
set t_Co=256
let g:airline_theme='solarized'
let g:airline_powerline_fonts=1

" Deoplete
"
let g:deoplete#enable_at_startup=1

" Racer
"
set hidden
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

