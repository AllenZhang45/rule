" =========================
" CodeVim - Main Init File
" =========================

if !exists('g:codevim_root')
    echohl ErrorMsg | echo "ERROR: g:codevim_root is not set!" | echohl None
    finish
endif

" 基础启用
filetype plugin indent on
syntax on

" -------------------------
" 核心配置
" -------------------------
source $HOME/.config/nvim/core/options.vim
source $HOME/.config/nvim/core/keymaps.vim
source $HOME/.config/nvim/core/autocmds.vim

" -------------------------
" UI 设置
" -------------------------
source $HOME/.config/nvim/ui/colors.vim
source $HOME/.config/nvim/ui/gui.vim
source $HOME/.config/nvim/ui/statusline.vim

" -------------------------
" 自定义模块
" -------------------------
source $HOME/.config/nvim/modules/editor.vim
source $HOME/.config/nvim/modules/workspace.vim

" -------------------------
" 插件（可选）
" -------------------------
source $HOME/.config/nvim/plugins/init.vim
