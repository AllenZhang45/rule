" ==================== 基本编辑器行为 ====================
set nocompatible                                    " 不与 Vi 兼容（采用 Vim 自己的操作命令）
set autoread                                        " 当文件在外部被修改时，自动更新该文件
set clipboard=unnamed                               " 设置剪贴板共享，使 vim 的复制/粘贴与系统共享
set nobackup                                        " 不创建备份文件
set noswapfile                                      " 不创建交换文件
set autowrite                                       " 自动保存（离开缓冲区时自动写入）
set history=1000                                    " 命令历史记录数
" ==================== 界面显示 ====================
set guioptions-=T                                   " 不显示工具栏
set guioptions-=m                                   " 不显示菜单栏
set syntax=on                                       " 开启语法高亮
set noeb                                            " 关闭错误提示音
set confirm                                         " 在处理未保存或只读文件时，弹出确认
set cursorline                                      " 高亮显示当前行
set number                                          " 显示行号
" ==================== 缩进和格式化 ====================
set autoindent                                      " 自动缩进
set smartindent                                     " 智能缩进
set cindent                                         " C/C++ 风格缩进
set tabstop=4                                       " Tab 显示为 4 个空格
set softtabstop=4                                   " 软制表符为 4 个空格（Ctrl-Tab 等）
set shiftwidth=4                                    " >> 或 << 时使用 4 个空格
set noexpandtab                                     " 使用真实的 Tab 字符而非空格
set smarttab                                        " 在行首使用 smart tab 行为
set linespace=0                                     " 行间距
" ==================== 搜索和替换 ====================
set ignorecase                                      " 搜索时忽略大小写
set hlsearch                                        " 搜索时高亮显示匹配结果
set incsearch                                       " 搜索时即时显示匹配结果
set gdefault                                        " 替换命令默认使用 g（全局）标志
set magic                                           " 启用魔术正则（更智能的正则行为）
set showmatch                                       " 高亮匹配的括号
set matchtime=1                                     " 匹配括号高亮显示时间（1/10秒）
" ==================== 文件编码和语言 ====================
set encoding=utf-8                                  " Vim 内部编码设置为 UTF-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936 " 文件编码自动检测顺序
set langmenu=zh_CN.UTF-8                            " 菜单语言设置为中文
set helplang=cn                                     " 帮助文档优先使用中文
" ==================== 状态栏显示 ====================
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]  " 状态栏格式
set laststatus=2                                   " 总是显示状态栏
set cmdheight=2                                    " 命令行高度
set fillchars=vert:\ ,stl:\ ,stlnc:\               " 分割线、状态栏等字符显示
" ==================== 文件类型检测 ====================
filetype on                                         " 开启文件类型检测
filetype plugin on                                  " 根据文件类型加载插件
filetype indent on                                  " 根据文件类型设置缩进
set viminfo+=!                                      " viminfo 中包含 ! 命令历史
set iskeyword+=_,$,@,%,#,-                           " 关键字允许的额外字符
" ==================== 鼠标和键盘操作 ====================
set wildmenu                                        " 在命令行使用 Tab 补全时显示候选项
set backspace=2                                     " 退格键可以删除更多内容（indent, eol, start）
set whichwrap+=<,>,h,l                               " 光标可以在行首/行尾跨行移动的键
set mouse=a                                         " 启用鼠标支持
set selection=exclusive                             " 选择时不包含最后一个字符
set selectmode=mouse,key                            " 选择模式可用鼠标和键盘
set iskeyword+=_,$,@,%,#,-                          " 关键字允许的额外字符（重复声明为保证一致）
set report=0                                        " 显示更改时的最小信息阈值
set scrolloff=3                                     " 光标距离窗口上下边缘至少保留 3 行
set fillchars=vert:\ ,stl:\ ,stlnc:\               " 分割线、状态栏等字符显示（重复声明为保证一致）
set showmatch                                       " 高亮匹配的括号（重复声明为保证一致）
set matchtime=1                                     " 匹配括号高亮显示时间（重复声明为保证一致）
set smartindent                                     " 智能缩进（重复声明为保证一致）
