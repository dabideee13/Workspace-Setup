" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/NERDTree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'ray-x/lsp_signature.nvim'

    " Autocompletion
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

    " Colorscheme
    Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    Plug 'navarasu/onedark.nvim'


    " Git tools
    Plug 'lewis6991/gitsigns.nvim'

    " Syntax highlighting
    Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

    " Status bar (powerline)
    Plug 'itchyny/lightline.vim'

    " Linter
    Plug 'dense-analysis/ale'

    " Jupyter
    Plug 'ahmedkhalf/jupyter-nvim', { 'do': ':UpdateRemotePlugins' }

    " Multi cursor
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
 
    
    
call plug#end()
