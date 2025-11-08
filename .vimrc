set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set ignorecase
set smartcase
set encoding=utf-8
set number relativenumber
set ruler
syntax on

au BufRead,BufNewFile *.usr setfiletype fortran
au BufRead,BufNewFile *.cl setfiletype c
au BufRead,BufNewFile *.okl setfiletype c
au BufRead,BufNewFile *.udf setfiletype cpp
au BufRead,BufNewFile *.oudf setfiletype cpp
au BufRead,BufNewFile *.v setfiletype verilog

set nocompatible " be iMproved, required
filetype plugin indent on

" nnoremap <SPACE> <Nop>
" let mapleader = "\<Space>"
" tnoremap <Leader><Esc> <C-\><C-n>

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

let g:fzf_action = { 'enter': 'vsplit' }

nnoremap <silent> <C-f> :GFiles<CR>
" Rg requires installing ripgrep
nnoremap <silent> <C-d> :Rg<CR>
