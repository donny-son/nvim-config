let mapleader=" "

nnoremap <C-P> :w <CR> :sp <CR> :term python3 % <CR>

noremap <leader>gf :e <cfile><CR>

noremap <C-k> :resize +4<CR>
noremap <C-j> :resize -4<CR>
noremap <C-h> :vertical resize -4<CR>
noremap <C-l> :vertical resize +4<CR>

nmap <leader>p :Files<CR>
nmap <leader>P :Rg<CR>

" These commands will navigate through buffers in order regardless of which mode you are using
nnoremap <leader>n :BufferLineCycleNext<CR>
nnoremap <leader>b :BufferLineCyclePrev<CR>
nnoremap <c-w> :bd<CR>

" Coc Explorer
nmap <space>e <Cmd>CocCommand explorer<CR>

" COC Tab Completion
" use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" NERDTree KEYMAPS
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>q :close<CR>

" Black formatter
" nnoremap <buffer><silent> <c-q> <cmd>call Black()<cr>

" Vim test
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Pane Management
nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <c-q> :Ttoggle<CR>
inoremap <c-q> <Esc>:Ttoggle<CR>
tnoremap <c-q> <c-\><c-n>:Ttoggle<CR>

