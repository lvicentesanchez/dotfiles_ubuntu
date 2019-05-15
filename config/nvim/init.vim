" Specify a directory for plugins
"
call plug#begin('~/.local/share/nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'ekalinin/Dockerfile.vim'
Plug 'derekwyatt/vim-scala'
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plug 'racer-rust/vim-racer'
Plug 'rust-lang/rust.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
"
call plug#end()

" Generic vim config
"
let mapleader = "\<Space>"

set lazyredraw
set nobackup
set nowritebackup
set noswapfile

"set t_Co=16

syntax enable

set backspace=2
set noshelltemp
set number
set shortmess+=I
set mouse=a
set background=dark
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_termcolors = 256
colorscheme gruvbox

" Neovim-GTK
"
if exists('g:GtkGuiLoaded')
  call rpcnotify(1, 'Gui', 'Option', 'Tabline', 0)
  call rpcnotify(1, 'Gui', 'Font', 'Fira Code 22')
endif

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
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Fzf.vim
"
command! Files call fzf#run(fzf#wrap({'source': 'pt -f -l --nocolor -g=""'}))

nnoremap <silent> <leader>fb :Buffers<CR>
nnoremap <silent> <leader>ff :Files<CR>
nnoremap <silent> <leader>fg :GFiles<CR>
nnoremap <silent> <leader>fw :Windows<CR>

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Racer
"
set hidden
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Vim-scala
"
au BufRead,BufNewFile *.sbt set filetype=scala
