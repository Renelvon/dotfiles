" VimRC file by Nick 'Renelvon' Korasidis <renelvon@gmail.com>

" ==> BASICS <==
"
set nocompatible    " Disable compatibility with vi

" ==> SYNTAX & INDENTATION <==
set tabstop=4               " A tab is 4 spaces
set expandtab               " Use spaces, not tabs
set autoindent              " Preserve indentation upon newline
filetype plugin indent on   " Indent according to filetype


" ==> EDITING ENV <==
syntax on           " Enable syntax highlight
set number          " Enable line numbers by default
set ruler           " Show current sursor position

" ==> PLUGINS <==
call pathogen#infect()      " Make pathogen load plugins
call pathogen#helptags()    " Make pathogen load plugin helpfiles

" ==> OTHER <==
set showcmd         " Show command as it's being built
set title           " Set terminal title to reflect current buffer

" ==> SEARCHING <==
set incsearch       " Display search matches halfway as I type them

" ==> KEYMAPS <==
map <F5> :w<CR>:make<CR>
map <C-c> <Esc>
