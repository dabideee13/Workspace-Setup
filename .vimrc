" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/NERDTree'
Plugin 'dense-analysis/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'maxboisvert/vim-simple-complete'

Plugin 'sheerun/vim-polyglot'
Plugin 'vim-python/python-syntax'

Plugin 'vv9k/vim-github-dark'
Plugin 'joshdick/onedark.vim'
Plugin 'kaicataldo/material.vim'


call vundle#end()
filetype plugin indent on

" Theme
set t_Co=256
syntax on
if (has('termguicolors'))
  set termguicolors
endif

let g:airline_theme = 'material'
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
colorscheme material

" Python syntax highlighting
let g:python_highlight_all = 1

" Tab
set tabstop=4
set shiftwidth=4
set expandtab

" Number line
set number

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

" Vim Simple Complete
set complete-=t
set complete-=i

" Vim speed
set timeoutlen=1000
set ttimeoutlen=0

function! CloseHiddenBuffers()
    " >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    " close any buffers hidden
    " <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    let open_buffers = []

    for i in range(tabpagenr('$'))
        call extend(open_buffers, tabpagebuflist(i + 1))
    endfor

    for num in range(1, bufnr("$") + 1)
        if buflisted(num) && index(open_buffers, num) == -1
            exec "bdelete ".num
        endif
    endfor
endfunction

au BufEnter * call CloseHiddenBuffers()
