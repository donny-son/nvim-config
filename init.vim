set nocompatible              " required
filetype plugin indent on     " required
syntax enable
set mouse=a
set hidden
set noimd
set nohlsearch
set cursorline
set noerrorbells
set ruler
set incsearch
set encoding=utf-8
set conceallevel=0
set cmdheight=2
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
set colorcolumn=80
set signcolumn=yes

call plug#begin('~/.vim/plugged')
Plug 'rust-lang/rust.vim'

" Fuzzy finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Completer
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" General Plugins
Plug 'rstacruz/vim-closer'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'ap/vim-css-color'
Plug 'danilo-augusto/vim-afterglow'
Plug 'jiangmiao/auto-pairs'
Plug 'psliwka/vim-smoothie'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/vim-easy-align'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
call plug#end()

" General Settings
let g:NERDTreeWinSize=35
colorscheme afterglow

let python_highlight_all=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let mapleader=" "

" RESIZE PANE KEYMAPS
noremap <C-k> :resize +4<CR>
noremap <C-j> :resize -4<CR>
noremap <C-h> :vertical resize -4<CR>
noremap <C-l> :vertical resize +4<CR>

" PYTHON KEYMAPS
nnoremap <C-P> :w <CR> :sp <CR> :term python3 % <CR>

" NERDTree KEYMAPS
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>q :close<CR>

" COC Tab Completion
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Bash
let g:LanguageClient_serverCommands = {
    \ 'sh': ['bash-language-server', 'start']
    \ }
