set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

call vundle#end()

set smartcase
set number
set ts=2
set shiftwidth=2
set autoindent
set cindent
set smarttab
set smartindent
set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set title

syntax on

abbr lg console.log
abbr __email abcd@efgh.com

autocmd BufRead tsconfig.json setlocal nowrap
