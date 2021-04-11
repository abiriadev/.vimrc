set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'https://github.com/itchyny/lightline.vim'
Plugin 'https://github.com/tpope/vim-surround'
Plugin 'https://github.com/skammer/vim-css-color'
Plugin 'https://github.com/Shutnik/jshint2.vim'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'mattn/emmet-vim'
Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'Raimondi/delimitMate'
"Plugin 'codota/tabnine-vim'

call vundle#end()
filetype plugin indent on

set showcmd
"set rnu
set mouse=a
set hlsearch
set incsearch
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
set autowrite
set autoread
"set paste
set title
set t_Co=256
set softtabstop=4
set mouse-=a
set encoding=utf-8
set termencoding=utf-8
set showmatch
set clipboard=unnamed
set ruler
set cursorline
"set backspace=indent,eol,start

"colorscheme jellybeans

imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
map <Leader>nt <ESC>:NERDTree<CR>

let NERDTreeShowHidden=1		" let NERDTreeQuitOnOpen=1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|vendor$',
	\ 'file': '\v\.(exe|so|dll)$'
	\ }
let delimitMate_expand_cr=1	" delimitMate

au BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\ exe "norm g`\"" |
			\ endif

if has("syntax")
	syntax on
endif
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif

syntax enable
"color jellybeans

nmap <F8> :SrcExplToggle<CR>                "F8 Key = SrcExpl Toggling
nmap <C-H> <C-W>h                           "move to left
nmap <C-J> <C-W>j                           "move to bottom
nmap <C-K> <C-W>k                           "move to top
nmap <C-L> <C-W>l                           "move to roght
		 
abbr consoel console
abbr lg console.log
abbr __email abcd@efgh.com

iabbr <expr> __time strftime("%Y-%m-%d %H:%M:%S")
iabbr <expr> __file expand('%:p')
iabbr <expr> __name expand('%')
iabbr <expr> __pwd expand('%:p:h')
iabbr <expr> __branch system("git rev-parse --abbrev-ref HEAD")

augroup markdown
	autocmd!
	autocmd BufRead,BufNew *.md setf markdown
augroup END

							     " set every new or read *.md buffer to use the markdown filetype
filetype on

autocmd BufRead tsconfig.json setlocal nowrap
