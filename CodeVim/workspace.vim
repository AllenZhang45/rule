" ----------------------------------------------------
" codevim/workspace.vim - 工作区布局与 Netrw 配置
" ----------------------------------------------------

" --- A. Netrw (Vim 内建文件浏览器) 配置 ---

" 设置侧边栏宽度，模仿 VS Code 侧边栏
let g:netrw_winsize = 25

" 将 Netrw 窗口固定在左侧 (替代默认行为)
let g:netrw_altv = 1

" 隐藏 Vim 临时文件、备份文件和目录本身（如 ./ 和 ../）
let g:netrw_list_hide = '^\.\.\?$'

" 使用树状列表样式 (netrw_liststyle = 3)
let g:netrw_liststyle = 3

" 确保文件浏览时，新文件在新窗口中打开，而不是在 Netrw 窗口中打开
" 4 = 自动在新窗口中打开文件，保留 Netrw 窗口
let g:netrw_browse_split = 4

" ----------------------------------------------------
" --- B. 自动启动布局逻辑 ---

" autocmd - 自动命令：在 Vim 启动完成后执行
" 启动时创建侧边栏布局（单行 autocmd，避免多行 autocmd 语法错误 E580）
autocmd VimEnter * if !&diff | execute 'vsp' | execute 'Explore' | execute 'vertical resize ' . g:netrw_winsize | wincmd l | endif

" ----------------------------------------------------