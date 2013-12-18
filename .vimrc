" VimRC file by Nick 'Renelvon' Korasidis <renelvon@gmail.com>

" ==> BASICS <==
set nocompatible    		" Disable compatibility with vi
set encoding=utf-8			" UTF-8 encoding everywhere

" ==> SYNTAX & INDENTATION <==
filetype plugin indent on   " Indent according to filetype
set tabstop=4               " A tab is 4 spaces
set softtabstop=4           " ???
set expandtab               " Use spaces, not tabs
set shiftwidth=4	 		" ???
set autoindent              " Preserve indentation upon newline

" ==> EDITING ENV <==
"set background=dark 		" Use a dark background
syntax on           		" Enable syntax highlight
set number          		" Enable line numbers by default
set ruler           		" Show current cursor position
set cursorline      		" ???

" ==> PLUGINS <==
" call pathogen#infect()      " Make pathogen load plugins
" call pathogen#helptags()    " Make pathogen load plugin helpfiles

" -> Vim LaTeX-suite <-
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" -> GAMS <- highlighting
au BufNewFile,BufRead *.gms setf gams

" ==> OTHER <==
set showcmd         " Show command as it's being built
set title           " Set terminal title to reflect current buffer

" ==> SEARCHING <==
set incsearch       " Display search matches halfway as I type them

" ==> KEYMAPS <==
map <C-c> <Esc>             " SIGINT takes you to normal mode
imap <C-c> <Esc>
map <F1> <Esc>	    		" F1 takes you to normal mode
imap <F1> <Esc>
map <F5> :w<CR>:make<CR> 	" Reload!

map <F3> <Esc>YpVr- 		" Fast single underlining [for markup]
map <F4> <Esc>YpVr= 		" Fast souble underlining [for markup]

" -> LEADER MAPPINGS <-
let mapleader = ","
nnoremap <leader><space> :noh<cr>
nnoremap <leader>t :tabnew<cr>:e
nnoremap <leader>pp :set paste<cr>
nnoremap <leader>np :set nopaste<cr>

" ==> Commands <==
command! W :w
command! Q :q
command! Wq :wq
command! WM :w | :make

" ==> AUTO-COMPLETION <==
set ofu=syntaxcomplete#Complete

function! Mosh_Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
endfunction

" Tab autocompletes
:inoremap <Tab> <C-R>=Mosh_Tab_Or_Complete()<CR>
