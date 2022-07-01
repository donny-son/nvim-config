Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'rstacruz/vim-hyperstyle'
Plug 'pantharshit00/vim-prisma'
Plug 'averms/black-nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-test/vim-test'
Plug 'Scuilion/markdown-drawer'
Plug 'sheerun/vim-polyglot' " language pack
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-emoji'
Plug 'onsails/lspkind.nvim'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-completion'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'jalvesaq/Nvim-R', { 'branch': 'stable' }
Plug 'lukas-reineke/lsp-format.nvim'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'weilbith/nvim-code-action-menu'
Plug 'kosayoda/nvim-lightbulb'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'
Plug 'github/copilot.vim'

let test#strategy = "neovim"
let test#neovim#term_position = "botright"
let g:markdrawer_prefix = " " 
let g:markdrawer_goto = "o"
let g:markdrawerDelete = "D"
let g:markdrawer_width = "25"
let g:markdrawer_paste_below = "p"
let g:markdrawer_increase = "+"
let g:markdrawer_decrease = "-"
let g:markdrawer_to_delete_color = "Red"

let g:markdrawer_drawer_max_levels = 4 " max levels to display
let g:markdrawer_toc = 'index' " displays as a TOC
let g:markdrawer_toc = 'full_index' " displays as a TOC, no index reset
