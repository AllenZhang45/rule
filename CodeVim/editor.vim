" ----------------------------------------------------
" codevim/editor.vim - 编辑区核心功能配置
" ----------------------------------------------------

" --- 0. 基础环境与文件交互设置 ---
set nocompatible         " 不与 Vi 兼容（采用 Vim 自己的操作命令）
set autoread             " 当文件在外部被修改时，自动更新该文件
set clipboard=unnamed    " 设置剪贴板共享，使 vim 的复制/粘贴与系统共享
set nobackup             " 不创建备份文件
set noswapfile           " 不创建交换文件
" 注意: nocompatible 应该放在所有配置的第一行，但在模块化文件里，放在最顶部即可

" --- 1. 行号与视觉反馈 ---

" 显示绝对行号
set number
" 显示相对行号（方便移动，例如 5k 向上移动 5 行）
set relativenumber
" 高亮当前行
set cursorline
" 高亮匹配的括号
set showmatch

" --- 2. 缩进与制表符 ---

" 启用智能自动缩进
set autoindent
set smartindent

" 设置 Tab 键显示的宽度为 4
set tabstop=4
" 设置代码缩进的宽度为 4 (当使用 < 或 > 命令时)
set shiftwidth=4
" 将 Tab 键输入转换为空格 (推荐，提高代码兼容性)
set expandtab
" 对于某些文件类型（如 Makefile），可能需要保持 Tab 键
autocmd FileType make setlocal noexpandtab

" --- 3. 搜索与高亮 ---

" 搜索时立即高亮匹配项 (实时预览)
set incsearch
" 搜索时高亮所有匹配项
set hlsearch
" 忽略大小写搜索，除非搜索词中包含大写字母
set smartcase

" --- 4. 代码折叠 ---

" 开启基于语法的代码折叠 (最常用的非插件折叠方式)
set foldmethod=syntax
" 默认情况下不折叠任何代码（即全部展开）
set foldlevelstart=99

" --- 5. 缓冲区与文件处理 ---

" 允许在缓冲区未保存时切换 (切换时会给出警告，但不阻止)
set hidden
" 启用撤销文件持久化 (下次打开文件仍可撤销)
set undofile
" 设置撤销文件和备份文件的保存目录 (可选，保持目录清洁)
" let &undodir = expand('~/.vim/undodir')
" let &backupdir = expand('~/.vim/backupdir')

" --- 6. 视觉宽度 ---
" 建议的文本宽度限制（用于软包装或辅助线）
set textwidth=120
" 超过此列数时显示一根辅助线（可选）
" set colorcolumn=121

" ----------------------------------------------------