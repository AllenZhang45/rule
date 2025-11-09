" ==================== 插件管理和配置 ====================
" 设置插件安装路径
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle 插件管理器
Plugin 'VundleVim/Vundle.vim'
" 状态栏美化
Plugin 'vim-airline/vim-airline'
" 代码大纲视图
Plugin 'taglist.vim'
" 文件树浏览器
Plugin 'The-NERD-tree'
" 显示缩进对齐线
Plugin 'indentLine.vim'
" 自动补全括号引号等
Plugin 'delimitMate.vim'

call vundle#end()

" ==================== vim-airline 配置 ====================
" 启用 powerline 字体
let g:airline_powerline_fonts = 1
" 显示 buffer 列表
let g:airline#extensions#tabline#enabled = 1
" 切换到上一个 buffer
nnoremap [b :bp<CR>
" 切换到下一个 buffer
nnoremap ]b :bn<CR>
" 快速切换到第 1-9 个 buffer
map <leader>1 :b 1<CR>          " 切换到第1个缓冲区
map <leader>2 :b 2<CR>          " 切换到第2个缓冲区
map <leader>3 :b 3<CR>          " 切换到第3个缓冲区
map <leader>4 :b 4<CR>          " 切换到第4个缓冲区
map <leader>5 :b 5<CR>          " 切换到第5个缓冲区
map <leader>6 :b 6<CR>          " 切换到第6个缓冲区
map <leader>7 :b 7<CR>          " 切换到第7个缓冲区
map <leader>8 :b 8<CR>          " 切换到第8个缓冲区
map <leader>9 :b 9<CR>          " 切换到第9个缓冲区

" ==================== YouCompleteMe 配置 ====================
" 设置 YCM 路径
set runtimepath+=~/.vim/bundle/YouCompleteMe
" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" 从 tags 文件中收集补全信息
let g:ycm_collect_identifiers_from_tags_files = 1
" 从注释和字符串中收集补全信息
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 忽略 Python 文件的语法检查
let g:syntastic_ignore_files=[".*\.py$"]
" 使用语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
" 在注释中也开启补全
let g:ycm_complete_in_comments = 1
" 不提示加载额外配置文件
let g:ycm_confirm_extra_conf = 0
" 补全项选择快捷键
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
" 补全项向上选择快捷键
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
" 在注释和字符串中开启补全
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" YCM 额外配置文件路径
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" 关闭诊断提示
let g:ycm_show_diagnostics_ui = 0
" 选中补全项时按回车直接选择
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
" 跳转到定义处的快捷键
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 触发补全的最小字符数
let g:ycm_min_num_of_chars_for_completion=2
