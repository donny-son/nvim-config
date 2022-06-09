set nocompatible              
filetype on     
filetype plugin on
filetype plugin indent on
syntax enable
set nohlsearch
set mouse=a
set hidden
set nobackup
set nowritebackup
set cmdheight=1
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
set langmap=ㅁa,ㅠb,ㅊc,ㅇd,ㄷe,ㄹf,ㅎg,ㅗh,ㅑi,ㅓj,ㅏk,ㅣl,ㅡm,ㅜn,ㅐo,ㅔp,ㅂq,ㄱr,ㄴs,ㅅt,ㅕu,ㅍv,ㅈw,ㅌx,ㅛy,ㅋz

call plug#begin('~/.vim/plugged')

" file explorer
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

source $HOME/.config/nvim/plugins/formatting.vim
source $HOME/.config/nvim/plugins/prettythings.vim
source $HOME/.config/nvim/plugins/fzf.vim
source $HOME/.config/nvim/plugins/languages.vim
source $HOME/.config/nvim/plugins/lines.vim
source $HOME/.config/nvim/plugins/filemanagement.vim
source $HOME/.config/nvim/plugins/panemanagement.vim
source $HOME/.config/nvim/plugins/debugging.vim

Plug 'sheerun/vim-polyglot' " language pack

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-emoji'
Plug 'onsails/lspkind.nvim'

Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-completion'
Plug 'kristijanhusak/vim-dadbod-ui'

call plug#end()

colorscheme afterglow


" Bash
let g:LanguageClient_serverCommands = {
    \ 'sh': ['bash-language-server', 'start']
    \ }

source $HOME/.config/nvim/post-plugins/panemanagement-config.vim
source $HOME/.config/nvim/post-plugins/telescope-config.vim
source $HOME/.config/nvim/post-plugins/keymaps.vim

lua require('nvim-tree-configuration')
lua require('buffer-configuration')
lua require('lsp-configuration')
lua require('debug-configuration')

autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })

autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | exe 'Telescope find_files' | endif
