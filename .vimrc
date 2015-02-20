set nocompatible
syntax enable
set encoding=utf-8
set showcmd
filetype plugin indent on

colorscheme desert

"" Whitespace
set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase
set smartcase

set autoindent
set expandtab

set nu

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%73v.\+/
