set tabstop=2
set shiftwidth=2
set expandtab
set showmatch
set smartindent
set nobackup
set number
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp932,sjis,euc-jp
set fileformats=unix,mac,dos
set clipboard+=unnamed
set backspace=indent,eol,start

hi LineNr ctermbg=black guifg=#8F908A

set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'mattn/emmet-vim'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'bling/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'mrk21/yaml-vim'
NeoBundle 'gabrielelana/vim-markdown'

NeoBundle 'slim-template/vim-slim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tpope/vim-endwise.git'
NeoBundle 'bronson/vim-trailing-whitespace'

call neobundle#end()

nnoremap + <C-a>
nnoremap - <C-x>

nmap <silent> <Esc><Esc> :nohlsearch<CR>

au BufRead,BufNewFile,BufReadPre *.coffee set filetype=coffee

syntax on
filetype plugin on
filetype indent on

set background=dark
colorscheme hybrid

let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme = 'hybrid'

" auto closed parenthesis
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>

" auto comment off
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END
