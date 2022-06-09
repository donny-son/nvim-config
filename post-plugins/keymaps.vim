let mapleader=" "

noremap <leader>gf :e <cfile><CR>

nnoremap <leader>rK :resize +8<CR>
nnoremap <leader>rJ :resize -8<CR>
nnoremap <leader>rj :vertical resize -8<CR>
nnoremap <leader>rk :vertical resize +8<CR>

" telescope 
nnoremap <leader><Space> :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>fw :Telescope diagnostics<CR>
nnoremap <leader>fn :Telescope current_buffer_fuzzy_find<CR>
nnoremap <leader>fh :Telescope help_tags<CR>
nnoremap <leader>fs :Telescope git_status<CR>

" These commands will navigate through buffers in order regardless of which mode you are using
nmap <leader><Tab> :BufferLineCycleNext<CR>
nmap <leader><S-Tab> :BufferLineCyclePrev<CR>

" Explorer
" vimrc
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" More available functions:
" NvimTreeOpen
" NvimTreeClose
" NvimTreeFocus
" NvimTreeFindFileToggle
" NvimTreeResize
" NvimTreeCollapse
" NvimTreeCollapseKeepBuffers

" Buffer management 
nnoremap <leader>q :bd<CR>
nnoremap <leader>m :MaximizerToggle!<CR>

" Vim test
nnoremap <silent> tt :TestNearest<CR>
nnoremap <silent> tf :TestFile<CR>
nnoremap <silent> ta :TestSuite<CR>
nnoremap <silent> tg :TestVisit<CR>

" terminal
nnoremap <c-q> :Ttoggle<CR>
inoremap <c-q> <Esc>:Ttoggle<CR>
tnoremap <c-q> <c-\><c-n>:Ttoggle<CR>

" debugger
nnoremap <silent> <leader>dn :lua require('dap-python').test_method()<CR>
nnoremap <silent> <leader>df :lua require('dap-python').test_class()<CR>
vnoremap <silent> <leader>ds <ESC>:lua require('dap-python').debug_selection()<CR>

" markdown
nnoremap <leader>md :MarkDrawer<CR>
nnoremap <leader>gy :Goyo<CR>
