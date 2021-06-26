"---------------VundleSettings----------------------------
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" csy's pulgin
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'morhetz/gruvbox'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

"--------GruvboxThemeSettings--------
"let g:gruvbox_underline=1
"let g:gruvbox_undercurl=1
"let g:gruvbox_bold=1
"let g:gruvbox_italic=1
"let g:gruvbox_transparent_bg=1
autocmd VimEnter * hi Normal ctermbg=none  "用来设置 Gruvbox 的背景透明，需要 Terminal 支持



"-------------NERDTree---------------
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']
let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-e> :NERDTreeToggle<CR>    "打开/关闭 NERDTree


"--------------add powerline to vim---------------
set rtp+=/home/csy/.local/lib/python3.8/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256


"--------------mapNewKeys------------
map <C-l> :nohl<CR>             "关闭搜索高亮


"----------------OtherVimSettingsByCsy-------------------
"基本配置
set nocompatible                "不与vi兼容
set backspace=indent,eol,start  "设置backspace选项的值
syntax enable                   "开启语法高亮
syntax on                       "打开语法高亮
set showcmd                     "底部显示当前键入的指令
set showmode                    "底部显示当前处于命令模式还是插入模式
set mouse=a                     "支持使用鼠标
set selection=exclusive
set selectmode=mouse,key
set paste                       "保证鼠标右键粘粘时内容不会变形或胡乱缩进
set clipboard=unnamedplus	 "用来保证和系统剪贴板共享，可以互相复制粘贴，前提安装 apt install vim-gtk
set t_Co=256                    "启用 256 色
set encoding=utf-8              "设置编码
set fileencodings=utf-8,gb2312,gbk,cp936,latin-1
set fileencoding=utf-8
set termencoding=utf-8
set fileformats=unix,dos
filetype plugin indent on       "开启文件类型检查并载入与该类型对应的缩进规则

"要查看当前的状态，只需输入 :filetype
"命令说明                         detect  plugin  indent 
":filetype on                    打开    未改变   未改变
":filetype off                   关闭    未改变   未改变
":filetype plugin on             打开    打开     未改变
":filetype plugin off            未改变  关闭     未改变
":filetype indent on             打开    未改变   打开
":filetype indent off            未改变  未改变    关闭
":filetype plugin indent on      打开    打开      打开
":filetype plugin indent off     未改变   关闭     关闭


"外观
"colorscheme molokai           "设置主题
"colorscheme vim-material           "设置主题
colorscheme gruvbox
set background=dark           "设置背景颜色
set number                    "显示行号
set relativenumber            "使用相对行号
set cursorline                "高亮当前行
"set cursorcolumn              "高亮当前列
set textwidth=80              "设置行宽，一行显示多少字符
set wrap                      "自动折行，即太长的行分成几行显示
"set nowrap                    "关闭自动折行
set linebreak                 "遇到空格、连词号和其他标点符号才发生折行，不会在单词内部折行
set wrapmargin=2              "指定折行处与编辑窗口的右边缘之间空出的字符数
set scrolloff=5               "垂直滚动时，光标距离顶部/底部的位置（单位：行）
set sidescrolloff=15          "水平滚动时，光标距离行首或行尾的位置（单位：字符）
set laststatus=2              "是否显示状态栏:0不显示，1只在多窗口时显示，2显示
set ruler                     "在状态栏显示光标的当前位置
set cmdheight=2               "设置命令行高度



"缩进
set autoindent                "按下回车键后下一行的缩进会自动跟上一行的缩进保持一致
set smartindent               "设置智能缩进
set tabstop=4                 "按下 Tab 键时，Vim 显示的空格数
set shiftwidth=4              "修改缩进时候每一级的字符数
set expandtab                 "由于Tab键在不同的编辑器缩进不一致，该设置自动将Tab转为空格
set smarttab                  "在行和段开始处使用制表符
set softtabstop=4             "Tab 转为多少个空格
set cindent                   "设置C风格的自动缩进

"搜索
set showmatch                 "遇到括号时自动高亮对应的另一个括号
"hi MatchParen ctermbg=Yellow guibg=lightblue
set mat=5                     "匹配括号高亮的时间（单位是十分之一秒）
set hlsearch                  "搜索时高亮显示匹配结果
set incsearch                 "搜索时每输入一个字符就自动跳到第一个匹配的结果
set ignorecase                "搜索时忽略大小写
set smartcase                 "如果同时打开了 ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索 Test 时，将不匹配 test；搜索 test 时，将匹配 Test。

"编辑
"set spell spelllang=en_us       "打开英语单词的拼写检查
set nobackup                    "不创建备份文件
set noswapfile                  "不创建交换文件
"set undofile                    "保留撤销历史
"set backupdir=~/.vim/.backup//  "设置备份文件、交换文件、操作历史文件的保存位置
"set directory=~/.vim/.swp//
"set undodir=~/.vim/.undo//
set autochdir                   "自动切换工作目录,主要用在一个 Vim 会话之中打开多个文件
set noerrorbells                "出错时，不要发出响声
set visualbell                  "出错时，发出视觉提示，通常是屏幕闪烁
set history=100                 "Vim 需要记住多少次历史操作
set autoread                    "打开文件监视。在编辑过程中文件被外部改变了就会发出提示
"set listchars=tab:»■,trail:■    "如果行尾有多余的空格、Tab，让它们显示成可见的小方块，方便定位错误
set listchars=tab:>-,trail:-
set list
set wildmenu
set wildmode=longest:list,full  "命令模式下，底部操作指令按下 Tab 键自动补全

"设置语法折叠
set foldenable                  "开始折叠
"set foldmethod=indent           "设置语法折叠
"set foldcolumn=2                "设置折叠区域的宽度
"setlocal foldlevel=2            "设置折叠层数为




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

