" Specify a directory for plugins
"
call plug#begin('~/.local/share/nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'ensime/ensime-vim'
Plug 'derekwyatt/vim-scala'
Plug 'Shougo/denite.nvim'
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

