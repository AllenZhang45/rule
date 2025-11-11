" ----------------------------------------------------
" codevim/gui.vim - 界面布局与外观配置
" ----------------------------------------------------

" --- 1. 颜色主题与高亮 ---

" 启用语法高亮 (通常在 init.vim 中已执行，但再次确保)
syntax on

" 强制使用 256 色模式 (提高颜色显示质量)
set t_Co=256

" 告诉 Vim 终端支持真彩色 (如果您的终端支持，如 iTerm, Alacritty)
set termguicolors

" 设置背景色 (dark 或 light)
" 我们推荐使用 dark，以匹配 VS Code 的深色主题
set background=dark

" 设置默认颜色主题 (您可以替换为您喜欢的任何主题)
" 注意：确保您选择的主题支持 termguicolors 或 256 色
colorscheme industry
" 示例：colorscheme onedark
" 示例：colorscheme gruvbox

" ----------------------------------------------------
" --- 2. 状态栏与命令显示 ---

" 总是显示状态栏 (即使只有一个窗口)
set laststatus=2

" 总是显示 tabline (即使只有一个标签页)
" set showtabline=2 

" 在底部状态栏显示命令的执行情况（例如搜索结果数）
set showcmd

" ----------------------------------------------------
" --- 3. 窗口与光标外观 ---

" 启动时最大化终端窗口 (仅 gVim 或某些终端适用)
" set lines=999 columns=999

" 设置光标样式
" Normal/Visual/Insert 模式分别使用不同的光标样式，提供更好的视觉反馈
" 示例：let &t_SI = "\e[5 q"  " Insert 模式光标 (方块)
" 示例：let &t_SR = "\e[4 q"  " Replace 模式光标 (下划线)
" 示例：let &t_EI = "\e[1 q"  " Normal 模式光标 (竖线)

" 闪烁光标（通常不推荐，影响眼睛）
" 使用 if has('gui_running') 条件判断，确保只在图形界面下设置此选项
if has('gui_running')
    set noblinking
endif

" 设置屏幕刷新的最小延迟 (提高编辑体验)
set updatetime=300

" ----------------------------------------------------
" --- 4. 视觉指示 ---

" 显示正在编辑的文件路径（短路径）
set shortmess+=c

" 始终在右下角显示光标的行号和列号
set ruler

" ----------------------------------------------------