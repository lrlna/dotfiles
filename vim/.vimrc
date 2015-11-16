set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'evidens/vim-twig'
Plugin 'briancollins/vim-jst'
Plugin 'digitaltoad/vim-jade'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Valloric/YouCompleteMe'
Plugin 'othree/html5.vim'
Bundle 'raimondi/delimitmate'
Bundle 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'danro/rename.vim'
Bundle 'slim-template/vim-slim.git'
Plugin 'scrooloose/nerdcommenter'
Bundle 'groenewege/vim-less'
Plugin 'grep.vim'
Plugin 'JavaKit'

call vundle#end()
syntax enable
filetype plugin indent on

map <C-n> :NERDTreeToggle<CR>
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
"nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>`:noh<CR>
"nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>`:noh<CR>
"nnoremap <silent><A-j> :set paste<CR>m`o<Esc>`:set nopaste<CR>
"nnoremap <silent><A-k> :set paste<CR>m`O<Esc>`:set nopaste<CR>
" bind L to grep word under the curor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" better grep with the silver searcher.
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g "'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let mapleader = ","

let delimitMate_expand_space = 1
au FileType tcl let b:delimitMate_expand_space = 1

" get <Del> to work properly
set backspace=indent,eol,start

set tabstop=2
set shiftwidth=2
set expandtab
set number

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|\.git\|\.hg\|\.svn\|\.redo\|dist\|cabal-dev\|lib-cov'
let g:ctrlp_extensions = ['tag']
let g:ctrlp_switch_buffer=0
