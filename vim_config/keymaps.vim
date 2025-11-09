" ====================== 键盘映射 ======================
" 设置 leader 键为空格键
let mapleader=" "               " 将 leader 键设置为空格键，更容易按到

nmap <leader>w :w!<CR>          " 使用 空格+w 快速保存文件
nmap <leader>f :find<CR>        " 使用 空格+f 快速查找文件
map <C-A> ggVGY                 " 使用 Ctrl+A 选择并复制整个文件内容
map! <C-A> <Esc>ggVGY          " 在插入模式下使用 Ctrl+A 选择并复制整个文件内容
map <F12> gg=G                  " 使用 F12 格式化整个文件
vmap <C-c> "+y                  " 在可视模式下使用 Ctrl+C 复制选中内容到系统剪贴板
