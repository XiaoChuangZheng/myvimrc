set nocompatible "关闭vi的兼容模式
syntax enable
filetype plugin indent on 
"--------------------vim常规设置----------------------------------------------
set number "显示行号
set encoding=utf-8 "设置字符编码
syntax on "语法高亮
set incsearch "搜索时即时显示匹配内容
set backspace=indent,eol,start "解决由于关闭vi兼容模式导致空格回退有问题的情况
set autoindent "设置自动缩进
if has("vms")  "如若没有虚拟文件，就备份一个
  set nobackup
else
  set backup
endif
set history=20 "保存20个历史命令
set ruler "字啊右下角显示光标位置
set showcmd "在右下角提示没有完成的命令

"---------------------插件管理-------------------------------------------
call plug#begin('~/.vim/plugged')
"需要添加的插件放在这里 如：Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-sensible'  "基础插件通用设置
Plug 'scrooloose/nerdtree' "树形状目录管理插件
Plug 'Yggdroot/indentLine' "对齐线插件
Plug  'Valloric/YouCompleteMe' "自动不全工具
call plug#end()

"---------------------插件功能配置-------------------------------------
"youcomplete配置
let g:ycm_python_binary_path='ycm_python_binary_path'

"---------------------快捷键管理-----------------------------------------
"树形目录快捷键
map <C-n> :NERDTreeToggle<CR> "设置ctrl+n为打开树形目录快捷键


