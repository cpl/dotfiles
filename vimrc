set nocompatible
set backspace=indent,eol,start
set autoindent

if has("vms")
  set nobackup
:else
  set backup
endif

set history=50
set ruler
set showcmd
set incsearch

set background=dark
colorscheme quantum

if has("termguicolors")
            set termguicolors
    endif

set tabstop=4
set softtabstop=4
set expandtab
set number
set cursorline

set foldenable
set foldlevel=99

let g:airline_theme='quantum'



vnoremap _g y:exe "grep /" . escape(@", '\\/') . "/ *.c *.h"<CR>

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

filetype plugin indent on

autocmd FileType text setlocal textwidth=80

autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd VimEnter *.py, *.c TagbarOpen

set encoding=utf-8

let NERDTreeIgnore=['\.pyc$', '\~$']
let NERDTreeIgnore=['\.class$', '\~$'] 

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap ˙ :tabnext<CR>
nnoremap ¬ :tabprevious<CR>

nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR>

nnoremap <space> za

packadd! matchit
