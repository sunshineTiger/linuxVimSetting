filetype off                  " required
"------------------------插件------------------------
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
"Plug 'Valloric/YouCompleteMe'
""------------------------插件------------------------
call plug#end()
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
