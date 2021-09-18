" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/NERDTree'
Plugin 'sheerun/vim-polyglot'
Plugin 'joshdick/onedark.vim'
Plugin 'dense-analysis/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'Shougo/neocomplete.vim'

call vundle#end()
filetype plugin indent on

" Theme
set t_Co=256
set termguicolors
syntax on
colorscheme onedark

" Tab
set tabstop=4
set shiftwidth=4
set expandtab

" Number line
set number

" Ruler
set colorcolumn=80

" Split
set splitbelow
set splitright

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Search
set hlsearch
nnoremap za :nohlsearch<CR>

" OSX backspace fix
set backspace=indent,eol,start

" Python
nnoremap zi :!python -i %<CR>
nnoremap zp :!python %<CR>
nnoremap zn :!clear<CR>
nnoremap zt :!pytest %<CR>
nnoremap zm :!mypy %<CR>
nnoremap zb :!black %<CR>
nnoremap zd :!python -m doctest %<CR>

" Other
set nowrap
set encoding=utf8
set autoindent
set cursorline
set laststatus=2
set clipboard=unnamed
set mouse=a

"" Plugins
" Ale
let g:ale_linters = {'python': ['pylint', 'flake8']}
let g:ale_fixers = {'python': ['isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace']}
let g:ale_lsp_suggestions = 1
let g:ale_fix_on_save = 1
let g:ale_go_gofmt_options = '-s'
let g:ale_go_gometalinter_options = '— enable=gosimple — enable=staticcheck'
let g:ale_completion_enabled = 0
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %code: %%s'

" Neocomplete
let g:neocomplete#enable_at_startup = 1
