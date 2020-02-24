set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required

"Plug 'scrooloose/nerdtree'
"Plug 'Valloric/YouCompleteMe'
let mapleader=' '
let g:mapleader=' '
nmap <leader>w :w!<CR>
nmap <leader>q :q!<CR>
nmap <leader>wq :wq<CR>
map si :vsp<CR>
map sn :sp<CR>
set scrolloff=6
set nocompatible  "屏蔽低版本vi
set norelativenumber "相对行号
set ruler " 显示标尺 
set showcmd  " 输入的命令显示出来
set nobackup  "从不备份
set noswapfile "不生成swap文件
set showmatch " 高亮显示匹配的括号
syntax enable
syntax on " 语法高亮
set ignorecase "搜索忽略大小写
set incsearch "搜索时一边输入一边显示效果
"set mouse=a
set tabstop=4 "制表符4
set shiftwidth=4 "统一缩进为4
set softtabstop=4 "统一缩进为4
set smarttab
set expandtab
set encoding=utf-8
filetype on "侦测文件类型
filetype indent on "为特定文件类型载入相关缩进文件
filetype plugin indent on
""自动匹配括号
inoremap( ()<ESC>i
"自动匹配大括号
"inoremap{ {}<ESC>i
""自动匹配中括号
inoremap[ []<ESC>i
"自动匹配尖括号
inoremap< <><ESC>i
set hlsearch "搜索高亮
set number "显示行号
set history=100
set cursorline "在当前行显示下划线
set noerrorbells "关闭vim提示错误音
set foldmethod=manual
"---------------Tlist-------------------------
map tl :Tlist<CR>
let Tlist_Show_One_File=1
let Tlist_WinWidth=40
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=0
"---------------Tlist-------------------------
""----------NERDTree------------插件配置---------------------------
map tt :NERDTreeMirror<CR>
map tt :NERDTreeToggle<CR>
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" " 显示书签列表
 let NERDTreeShowBookmarks=1
" " 显示行号
 let NERDTreeShowLineNumbers=1
 let NERDTreeAutoCenter=1
" " 是否显示隐藏文件
 let NERDTreeShowHidden=1
" " 设置宽度
 let NERDTreeWinSize=35
" " ==
" " == NERDTree-git
" " ==
" let g:NERDTreeIndicatorMapCustom = {
     \ "Modified"  : "✹",
         \ "Staged"    : "✚",
             \ "Untracked" : "✭",
                 \ "Renamed"   : "➜",
                     \ "Unmerged"  : "═",
                         \ "Deleted"   : "✖",
                            \ "Dirty"     : "✗",
                                 \ "Clean"     : "✔︎",
                                     \ "Unknown"   : "?"
                                         \ }

"----------NERDTree------------插件配置---------------------------
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
" 停止提示是否载入本地ycm_extra_conf文件
let g:ycm_confirm_extra_conf = 0
" YouCompleteMe
" Python Semantic Completion
let g:ycm_python_binary_path = '/usr/bin/python3'
" C family Completion Path
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
" 跳转快捷键
nnoremap <c-k> :YcmCompleter GoToDeclaration<CR>|
nnoremap <c-h> :YcmCompleter GoToDefinition<CR>| 
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files = 1
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 弹出列表时选择第1项的快捷键(默认为<TAB>和<Down>)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" 弹出列表时选择前1项的快捷键(默认为<S-TAB>和<UP>)
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" 主动补全, 默认为<C-Space>
"let g:ycm_key_invoke_completion = ['<C-Space>']
" 停止显示补全列表(防止列表影响视野), 可以按<C-Space>重新弹出
"let g:ycm_key_list_stop_completion = ['<C-y>']
