source $HOME/.config/nvim/vim-plug/plugins.vim

" Tab
set tabstop=4
set shiftwidth=4
set expandtab

" Split
set splitbelow
set splitright

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
inoremap <C-J> <C-W><C-J>
inoremap <C-K> <C-W><C-K>
inoremap <C-L> <C-W><C-L>
inoremap <C-H> <C-W><C-H>


" Line number
set number

" Ruler
set colorcolumn=80

" Other
set nowrap
set encoding=utf8
set autoindent
set cursorline
set laststatus=2
set clipboard=unnamed
set mouse=a

" Possible fixes for crashes
set hidden
set nobackup
set nowritebackup
set updatetime=300

" Colorscheme
" let g:material_terminal_italics = 1
" let g:material_theme_style = 'darker'
" colorscheme material

let g:onedark_style = 'darker'
colorscheme onedark

set t_Co=256
set termguicolors

" NERDTree
nnoremap <C-M> :NERDTreeToggle<CR>
nnoremap <C-F> :NERDTreeFind<CR>

" Search
set hlsearch
nnoremap za :nohlsearch<CR>

" Python
nnoremap zi :!python %<CR>
nnoremap zn :!clear<CR>
nnoremap zt :!pytest %<CR>
nnoremap zm :!mypy %<CR>
nnoremap zb :!black %<CR>

" ALE
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

" OSX backspace fix
set backspace=indent,eol,start
