" Vundle
" ------------------------------------------------------------------------------------------------------
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

Plugin 'sheerun/vim-polyglot'
Plugin 'vim-python/python-syntax'

Plugin 'vv9k/vim-github-dark'
Plugin 'joshdick/onedark.vim'
Plugin 'kaicataldo/material.vim'
Plugin 'uiiaoo/java-syntax.vim'

Plugin 'easymotion/vim-easymotion'
Plugin 'KKPMW/vim-sendtowindow'
Plugin 'mhinz/vim-startify'

Plugin 'junkblocker/patchreview-vim'
Plugin 'codegram/vim-codereview'

" Plugin 'ackyshake/VimCompletesMe'
" Plugin 'maxboisvert/vim-simple-complete'
Plugin 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plugin 'jiangmiao/auto-pairs'

Plugin 'ryanoasis/vim-devicons'

" Python debugger
Plugin 'puremourning/vimspector'
Plugin 'szw/vim-maximizer'

" UML
Plugin 'aklt/plantuml-syntax'
Plugin 'weirongxu/plantuml-previewer.vim'
Plugin 'tyru/open-browser.vim'

" Java autocomplete
Plugin 'artur-shaik/vim-javacomplete2'

" Commenter
Plugin 'preservim/nerdcommenter'

" Parenthesis
Plugin 'frazrepo/vim-rainbow'

" Tags
Plugin 'vim-scripts/taglist.vim'

" Search
Plugin 'junegunn/fzf'

call vundle#end()
filetype plugin indent on
" ------------------------------------------------------------------------------------------------------

" Theme
" ------------------------------------------------------------------------------------------------------
set t_Co=256
syntax on
if (has('termguicolors'))
  set termguicolors
endif

let g:airline_theme = 'minimalist'
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
colorscheme material

" Python syntax highlighting
let g:python_highlight_all = 1

" Rainbow parenthesis
let g:rainbow_active = 1

" ------------------------------------------------------------------------------------------------------


" Tab
set tabstop=4
set shiftwidth=4
set expandtab

" Number line
set number

" Split
set splitbelow
set splitright

" Set leader key
let mapleader = ","

" Split navigations
nnoremap zj <C-w>j
nnoremap zk <C-w>k
nnoremap zl <C-w>l
nnoremap zh <C-w>h

nnoremap <leader>1 :vsplit
nnoremap <leader>2 :split

" Switch focus vim to terminal
nnoremap <leader>e :stop<CR>

" Go to next/previous matching word
nnoremap <S-l> *
nnoremap <S-h> #

" Shortcuts
nnoremap K i<CR><Esc>ww
nnoremap vm 0v$
nnoremap <leader><leader>r :source ~/.vimrc<CR>

" Close buffer
nnoremap <leader>qq :q!<CR>
nnoremap <leader><leader>q :qall<CR>

" Change split
map <leader>th <C-w>t<C-w>H
map <leader>tk <C-w>t<C-w>K

" Split adjustments
nnoremap <C-Left> :vertical resize +3<CR>
nnoremap <C-Right> :vertical resize -3<CR>
nnoremap <C-Up> :resize +3<CR>
nnoremap <C-Down> :resize -3<CR>

" Start integrated terminal
map <Leader>tp :term<CR>ipython3<CR><C-w>w

" Suspend vim
noremap <leader>t :stop<CR>

" Search
set hlsearch
nnoremap za :nohlsearch<CR>

" OSX backspace fix
set backspace=indent,eol,start

" Python
" ------------------------------------------------------------------------------------------------------
nnoremap zi :!python3.9 -i %<CR>
nnoremap zp :!python3.9 %<CR>
nnoremap zn :!clear<CR>

" Other
" ------------------------------------------------------------------------------------------------------
set nowrap
set encoding=utf8
set autoindent
set cursorline
set laststatus=2
set clipboard=unnamed
set mouse=a


"" Plugins
" ------------------------------------------------------------------------------------------------------

" Ale
" ------------------------------------------------------------------------------------------------------
" ------------------------------------------------------------------------------------------------------
" ------------------------------------------------------------------------------------------------------
let g:ale_linters = {'python': ['pylint', 'flake8'], 'java': ['checkstyle', 'javac']}
let g:ale_fixers = {'python': ['isort', 'yapf', 'remove_trailing_lines', 'trim_whitespace']}
let g:ale_lsp_suggestions = 1
let g:ale_fix_on_save = 1
let g:ale_go_gofmt_options = '-s'
let g:ale_go_gometalinter_options = '— enable=gosimple — enable=staticcheck'
let g:ale_completion_enabled = 0
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] [%severity%] %code: %%s'
" ------------------------------------------------------------------------------------------------------
" ------------------------------------------------------------------------------------------------------
" ------------------------------------------------------------------------------------------------------

" Vim speed
set timeoutlen=1000
set ttimeoutlen=0

" NERDTree
nnoremap <C-M> :NERDTree<CR>
nnoremap <C-M> :NERDTreeToggle<CR>
nnoremap <leader>m :NERDTreeFocus<CR>

" Search settings
nnoremap zz :FZF<CR>

" Comment settings
let g:NERDDefaultAlign = 'left'
nnoremap z/ :call nerdcommenter#Comment(0, "toggle")<CR>
vnoremap z/ :call nerdcommenter#Comment(0, "toggle")<CR>

" vim-slime let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}

" startify
let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'files',     'header': ['   Recent']            },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

" sendtowindow
let g:sendtowindow_use_defaults=0

" nmap zj <Plug>SendDown 
" xmap zj <Plug>SendDownV
" nmap zl <Plug>SendRight 
" xmap zl <Plug>SendRightV

" vim-fugitive
nmap <leader>gs :G<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>

autocmd Filetype java setlocal shiftwidth=3 tabstop=3
autocmd Filetype javascript setlocal shiftwidth=2 tabstop=2
autocmd Filetype html setlocal shiftwidth=2 tabstop=2

" python debugger config
nnoremap mm :MaximizerToggle<CR>

nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>c :call vimspector#Continue()<CR>
nnoremap <leader>dq :call vimspector#Reset()<CR>
nnoremap <leader>dr :call vimspector#Restart()<CR>
nnoremap <leader>dc :call vimspector#CleanLineBreakpoint()<CR>
nnoremap <leader>dcc :call vimspector#ClearBreakpoints()<CR>

nmap <leader>s <Plug>VimspectorStepInto
nmap <leader>n <Plug>VimspectorStepOver
nmap <leader>p <Plug>VimspectorStepOut
nmap <leader>b <Plug>VimspectorToggleBreakpoint
nmap <leader>. <Plug>VimspectorRunToCursor
nmap <C-CR> <Plug>VimspectorBalloonEval

nnoremap <leader>w :VimspectorWatch 

nnoremap <leader>de :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>



" coc.nvim config
" ------------------------------------------------------------------------------------------------------
" ------------------------------------------------------------------------------------------------------
" ------------------------------------------------------------------------------------------------------

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" end of coc.nvim config
" ------------------------------------------------------------------------------------------------------
" ------------------------------------------------------------------------------------------------------
" ------------------------------------------------------------------------------------------------------

" Java autocomplete
autocmd FileType java setlocal omnifunc=javacomplete#Complete

nmap <leader>jI <Plug>(JavaComplete-Imports-AddMissing)
nmap <leader>jR <Plug>(JavaComplete-Imports-RemoveUnused)
nmap <leader>ji <Plug>(JavaComplete-Imports-AddSmart)
nmap <leader>jii <Plug>(JavaComplete-Imports-Add)

imap <C-j>I <Plug>(JavaComplete-Imports-AddMissing)
imap <C-j>R <Plug>(JavaComplete-Imports-RemoveUnused)
imap <C-j>i <Plug>(JavaComplete-Imports-AddSmart)
imap <C-j>ii <Plug>(JavaComplete-Imports-Add)

nmap <leader>jM <Plug>(JavaComplete-Generate-AbstractMethods)
imap <C-j>jM <Plug>(JavaComplete-Generate-AbstractMethods)

nmap <leader>jA <Plug>(JavaComplete-Generate-Accessors)
nmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
nmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
nmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
nmap <leader>jts <Plug>(JavaComplete-Generate-ToString)
nmap <leader>jeq <Plug>(JavaComplete-Generate-EqualsAndHashCode)
nmap <leader>jc <Plug>(JavaComplete-Generate-Constructor)
nmap <leader>jcc <Plug>(JavaComplete-Generate-DefaultConstructor)

imap <C-j>s <Plug>(JavaComplete-Generate-AccessorSetter)
imap <C-j>g <Plug>(JavaComplete-Generate-AccessorGetter)
imap <C-j>a <Plug>(JavaComplete-Generate-AccessorSetterGetter)

vmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
vmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
vmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)

nmap <silent> <buffer> <leader>jn <Plug>(JavaComplete-Generate-NewClass)
nmap <silent> <buffer> <leader>jN <Plug>(JavaComplete-Generate-ClassInFile)
