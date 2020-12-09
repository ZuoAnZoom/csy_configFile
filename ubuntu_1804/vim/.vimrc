"---------------VundleSettings----------------------------
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" csy's pulgin
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdtree'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required

"----------------OtherVimSettingsByCsy-------------------
syntax enable
syntax on
colorscheme molokai
filetype indent on
"filetype on                 
filetype plugin on
filetype plugin indent on

"-------------------YCMSettings----------------------------
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

" YCM 查找定义
let mapleader=','
"nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
"nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <C-k> :YcmCompleter GoToDeclaration<CR>
nnoremap <C-h> :YcmCompleter GoToDefinition<CR>
nnoremap <C-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>


let g:ycm_collect_identifiers_from_tags_files = 1 " 开启YCM基于标签引擎
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0  " 关闭函数原型提示
let g:ycm_show_diagnostics_ui = 0 " 关闭诊断信息
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2  " 两个字符触发 补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_complete_in_strings = 1 " 在字符串输入中也能补全
let g:ycm_confirm_extra_conf = 0 " 停止提示是否载入本地ycm_extra_conf文件
let g:ycm_seed_identifiers_with_syntax = 1 " 语法关键字补全
let g:ycm_complete_in_comments = 1 " 在注释输入中也能补全

noremap <c-z> <NOP>
let g:ycm_key_invoke_completion = '<c-z>'   " YCM 里触发语义补全有一个快捷键
let g:ycm_max_num_candidates = 15  " 候选数量

let g:ycm_semantic_triggers =  {
                        \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
                        \ 'cs,lua,javascript': ['re!\w{2}'],
                        \ }
"--------------ctags: ctags -R--------------
if filereadable("tags")
        set tags=tags
endif


set nocompatible
set ai
set nu
set number
set showmatch
set wrap
set cindent
set ruler
set tabstop=4
set softtabstop=4
set shiftwidth=4
set showcmd
set t_Co=256
set mouse=a
set encoding=utf-8
set linebreak
set backspace=indent,eol,start
set smarttab
set smartindent
set foldcolumn=4
set ignorecase
set incsearch
set hlsearch
set cmdheight=2
set paste
set fileformats=unix,dos
set ts=4
set expandtab
set autoindent

"--------------mapNewKeys------------
map <C-l> :nohl<CR>



"-------------NERDTree---------------
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']
let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>

"--------------add powerline to vim---------------
set rtp+=/home/csy/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2


