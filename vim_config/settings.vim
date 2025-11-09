" ==================== 基本编辑器行为 ====================
" 不与 Vi 兼容（采用 Vim 自己的操作命令）
set nocompatible
" 当文件在外部被修改时，自动更新该文件
set autoread
" 设置剪贴板共享，使vim的复制粘贴与系统共享
set clipboard=unnamed
" 不创建备份文件
set nobackup
" 不创建交换文件
set noswapfile
" 自动保存
set autowrite
" 历史记录数
set history=1000
" ==================== 界面显示 ====================
" 不显示工具栏
set guioptions-=T
" 不显示菜单栏
set guioptions-=m
" 开启语法高亮
set syntax=on
" 关闭错误提示音
set noeb
" 在处理未保存或只读文件时，弹出确认
set confirm
" 高亮显示当前行
set cursorline
" 显示行号
set number
" ==================== 缩进和格式化 ====================
" 自动缩进
set autoindent
" 智能缩进
set smartindent
" C/C++风格缩进
set cindent
" 设置Tab键为4个空格
set tabstop=4
" 设置软制表符为4个空格
set softtabstop=4
" 设置缩进的空格数为4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 设置行间距
set linespace=0
" 显示行号
set number
" ==================== 搜索和替换 ====================
" 搜索时忽略大小写
set ignorecase
" 搜索时高亮显示匹配结果
set hlsearch
" 搜索时即时显示匹配结果
set incsearch
" 替换时全局替换
set gdefault
" 设置魔术搜索
set magic
" 高亮显示匹配的括号
set showmatch
" 匹配括号的显示时间（单位：1/10秒）
set matchtime=1
" ==================== 文件编码和语言 ====================
" 设置编码为UTF-8
set encoding=utf-8
" 设置文件编码检测顺序
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
" 设置菜单语言为中文
set langmenu=zh_CN.UTF-8
" 设置帮助文档为中文
set helplang=cn
" ==================== 状态栏显示 ====================
" 设置状态栏格式
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
" 总是显示状态栏
set laststatus=2
" 设置命令行高度为2
set cmdheight=2
" 设置分割线、状态栏等字符
set fillchars=vert:\ ,stl:\ ,stlnc:\
" ==================== 文件类型检测 ====================
" 开启文件类型检测
filetype on
" 根据文件类型加载插件
filetype plugin on
" 根据文件类型设置缩进
filetype indent on
" 保存 viminfo 文件时包含 !命令
set viminfo+=!
" 设置关键字可以包含的字符
set iskeyword+=_,$,@,%,#,-
" ==================== 鼠标和键盘操作 ====================
" 在命令行使用 Tab 补全时显示候选项
set wildmenu
" 设置退格键可以删除的字符
set backspace=2
" 设置在行首/行尾时光标可以跨行移动
set whichwrap+=<,>,h,l
" 启用鼠标
set mouse=a
" 选择区域时不包含最后一个字符
set selection=exclusive
" 设置选择模式，可以用鼠标和键盘选择
set selectmode=mouse,key
" 设置关键字可以包含的字符
set iskeyword+=_,$,@,%,#,-
" 显示所有更改
set report=0
" 光标移动到buffer的顶部和底部时保持距离
set scrolloff=3
" 设置分割线、状态栏等字符
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号的显示时间（单位：1/10秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持距离
set scrolloff=3
" 智能缩进
set smartindent
