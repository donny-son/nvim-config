set nocompatible              
filetype on     
filetype plugin on
filetype plugin indent on
syntax enable
set mouse=a
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set shortmess+=c
set noimd
set cursorline
set noerrorbells
set noswapfile
set ruler
set noswapfile
set incsearch
set encoding=utf-8
set conceallevel=0
set fileencoding=utf-8
set smartindent
set nu
set clipboard=unnamedplus
set t_Co=256
set splitbelow
set splitright
set foldmethod=indent
set foldlevel=99
set tabstop=4
set rnu
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set updatetime=300
set formatoptions-=cro
set fileformat=unix
set ruler
set incsearch
set termguicolors
set scrolloff=30
set colorcolumn=88
set signcolumn=yes
set noshowmode " use vim-airline

call plug#begin('~/.vim/plugged')

source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/nerdtree.vim
source $HOME/.config/nvim/formatting.vim
source $HOME/.config/nvim/prettythings.vim
source $HOME/.config/nvim/fzf.vim
source $HOME/.config/nvim/languages.vim
" source $HOME/.config/nvim/fugitive.vim
source $HOME/.config/nvim/lines.vim
source $HOME/.config/nvim/filemanagement.vim
source $HOME/.config/nvim/panemanagement.vim
source $HOME/.config/nvim/debugging.vim

call plug#end()

colorscheme afterglow

" Bash
let g:LanguageClient_serverCommands = {
    \ 'sh': ['bash-language-server', 'start']
    \ }

source $HOME/.config/nvim/lines-config.vim
source $HOME/.config/nvim/panemanagement-config.vim
source $HOME/.config/nvim/keymaps.vim

