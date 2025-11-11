" ----------------------------------------------------
" codevim/mappings.vim - 快捷键映射 (VS Code 风格)
" ----------------------------------------------------

" --- 0. Leader 键设置 ---

" Leader 键保留为逗号 (,)，用于 Vim 原生和高级操作
let mapleader = ","
let maplocalleader = ","

" --- 1. 文件与窗口操作 (VS Code 风格) ---

" Ctrl + S: 保存文件 (Command + S)
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>i

" Ctrl + B: 切换侧边栏 (Command + B)
" 映射到 Netrw 文件浏览器开关
nnoremap <silent> <C-b> :Lexplore<CR>

" Ctrl + W / Ctrl + X: 关闭当前文件/缓冲区 (Command + W)
" 使用 Ctrl + X 避免与 Vim 原生窗口命令 (Ctrl-W) 冲突
nnoremap <C-x> :bd<CR>

" Ctrl + P: 快速打开文件 (Command + P)
" **注意: 这通常需要一个模糊查找插件 (如 fzf.vim)。**
" 暂时先映射为基本的 find 命令，未来集成插件后需更新。
nnoremap <silent> <C-p> :find <C-R>=expand('%:h').'/'<CR>

" Ctrl + T: 打开新标签页 (Command + T)
nnoremap <C-t> :tabnew<CR>

" Ctrl + Tab / Ctrl + Shift + Tab: 切换标签页
nnoremap <C-Tab> :tabnext<CR>
nnoremap <C-S-Tab> :tabprevious<CR>


" --- 2. 编辑区与光标操作 (VS Code 风格) ---

" Alt + J / Alt + K: 移动整行代码 (Alt + Down/Up)
" Requires the terminal to pass Alt-key correctly.
nnoremap <silent> <A-j> :m .+1<CR>==
nnoremap <silent> <A-k> :m .-2<CR>==
inoremap <silent> <A-j> <Esc>:m .+1<CR>==gi
inoremap <silent> <A-k> <Esc>:m .-2<CR>==gi

" Ctrl + F: 查找
" 避免覆盖原生 / 搜索，使用 Ctrl-F 映射为关闭搜索高亮
nnoremap <C-f> :nohlsearch<CR>

" Ctrl + D: 多光标选择 (Command + D)
" **注意: 这通常需要插件支持。**
" 暂时映射为原生功能中最接近的：查找当前光标下的词
nnoremap <C-d> *

" --- 3. Vim 原生窗口切换 (兼容性) ---

" 使用 Ctrl + 方向键 切换分割窗口 (比原生的 Ctrl-W h/j/k/l 更快)
" 确保你的终端没有占用这些快捷键
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" --- 4. 终端模式映射 ---

" 在终端模式下使用 ESC 退出插入模式 (替代 C-\ C-n)
tnoremap <Esc> <C-\><C-n>

" ----------------------------------------------------