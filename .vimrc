set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set ignorecase
set smartcase
set tags=tags
set encoding=utf-8
set path+=**
set number relativenumber
syntax on

au BufRead,BufNewFile *.usr setfiletype fortran
au BufRead,BufNewFile *.cl setfiletype c
au BufRead,BufNewFile *.okl setfiletype c
au BufRead,BufNewFile *.udf setfiletype cpp
au BufRead,BufNewFile *.oudf setfiletype cpp

set nocompatible " be iMproved, required
filetype plugin indent on
