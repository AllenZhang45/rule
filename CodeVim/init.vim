" ----------------------------------------------------
" codevim/init.vim - 项目主引导文件
" ----------------------------------------------------

" 确保 g:codevim_root 变量已设置 (由 ~/.vimrc 传入)
if !exists('g:codevim_root')
    echohl ErrorMsg
    echo "ERROR: g:codevim_root variable not set! Please check your ~/.vimrc."
    echohl None
    finish
endif

" 基础设置 (例如：文件类型检测，必须在前面)
filetype plugin indent on
syntax on

" ------------------------------------------
" 模块加载区域
" ------------------------------------------

" 1. 加载 GUI/外观配置
execute 'source' g:codevim_root . '/gui.vim'

" 2. 加载 Editor (编辑区核心功能) 配置
execute 'source' g:codevim_root . '/editor.vim'

" 3. 加载 Workspace (文件树/布局) 配置
execute 'source' g:codevim_root . '/workspace.vim'

" 4. 加载 Status (底部状态栏) 配置
execute 'source' g:codevim_root . '/status.vim'

" 5. 加载 Mappings (快捷键映射)配置
execute 'source' g:codevim_root . '/mappings.vim'

" [如果未来有插件管理，也在这里处理]