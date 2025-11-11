" ----------------------------------------------------
" codevim/status.vim - 状态栏配置
" ----------------------------------------------------

" --- A. 状态栏和 Tabline 行为 ---

" 总是显示状态栏 (即使只有一个窗口)
set laststatus=2

" 总是显示 Tabline (如果使用 tab)
set showtabline=2

" --- B. 自定义状态行 (Statusline) ---

" 状态行配置分解说明：
" %<%f   : 文件路径 (被截断)
" %h     : 帮助文件标记 [Help]
" %m     : 已修改标记 [Modified]
" %r     : 只读标记 [RO]
" %=     : 填充空白（分隔左右两部分）
" %c,%l  : 当前列和行号
" %P     : 文件中的位置百分比

set statusline=\ %f\        " 文件路径
set statusline+=%h%m%r%w\   " 标志位 (Help, Modified, Readonly, Preview)
set statusline+=\          " 分隔符
set statusline+=\ %y\       " 文件类型
set statusline+=\ %{&encoding} " 文件编码
set statusline+=\ %=        " 填充空白（右对齐）
set statusline+=%l/%L\      " 当前行/总行数
set statusline+=\ %c\       " 当前列号
set statusline+=\ %p%%\     " 文件中的位置百分比
set statusline+=\          " 末尾空白