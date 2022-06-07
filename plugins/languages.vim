Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'rstacruz/vim-hyperstyle'
Plug 'pantharshit00/vim-prisma'
Plug 'averms/black-nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-test/vim-test'
Plug 'Scuilion/markdown-drawer'

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
