" Added by csy
set modelines=0
set nocompatible
set backspace=2
"let skip_default_vim=1
syntax on
colorscheme gruvbox 
set background=dark
"let g:molokai_original = 1
"let g:rehash256 = 1
filetype on
set laststatus=2 
set number
set relativenumber
set cursorline
set ruler
set tabstop=4
set softtabstop=4
set autoindent
set cindent
set mouse=a
set encoding=utf-8
set t_Co=256
set wrap
set spell spelllang=en_us
set guifont=Fira\ Mono\ for\ Powerline:h18
set clipboard=unnamedplus


" 自动跳转到上次退出的位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" powerline
set rtp+=/usr/local/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh


