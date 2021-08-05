set nocompatible
set path+=**
set wildmenu
syntax enable
filetype plugin on
command! MakeTags !ctags -R .
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab

cnoremap wd<CR> :!mkdir -p %:h<CR>:w<CR>
