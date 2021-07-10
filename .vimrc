" Vim Settings

set nocompatible
filetype off

" Vundle space
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'doums/darcula'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sillybun/vim-repl'

call vundle#end()            
filetype plugin indent on    
" End of Vundle space


" Split settings
set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Plugin folding settings
let g:SimplyFold_docstring_preview=1

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Theme and styling
let python_highlight_all=1

set t_Co=256
set termguicolors

syntax on
let g:molokai_original = 1
colorscheme atom

call togglebg#map("<F5>")

" Airline configurations
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 

" Other configurations
set nowrap
set encoding=utf8
set colorcolumn=80
set number
set autoindent
set cursorline
set showmatch
set laststatus=2
set clipboard=unnamed
set mouse=a

let g:elite_mode=1

" My mappings
nnoremap zi :!python %<CR>
nnoremap zn :!clear<CR>

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" REPL configurations
nnoremap <leader>r :REPLToggle<CR>
nnoremap <leader>e :REPLSendSession<CR>
nnoremap <leader>d :REPLHide<CR>
let g:repl_ipython_version = '7'
let g:repl_cursor_down = 1
let g:repl_python_auto_import = 1
let g:repl_program = {'python': 'ipython', 'default': 'zsh'}
let g:repl_python_automerge = 1
autocmd Filetype python nnoremap <F12> <Esc>:REPLDebugStopAtCurrentLine<Cr>
autocmd Filetype python nnoremap <F10> <Esc>:REPLPDBN<Cr>
autocmd Filetype python nnoremap <F11> <Esc>:REPLPDBS<Cr>
let g:repl_position = 3

" NERDTree config
nnoremap <C-M> :NERDTreeToggle<CR>
nnoremap <C-F> :NERDTreeFind<CR>

" Search settings
set hlsearch
nnoremap za :nohlsearch<CR>

" OSX backspace fix
set backspace=indent,eol,start

