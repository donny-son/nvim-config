let mapleader=" "

noremap <leader>gf :e <cfile><CR>

nnoremap <leader>rK :resize +12<CR>
nnoremap <leader>rJ :resize -12<CR>
nnoremap <leader>rj :vertical resize -12<CR>
nnoremap <leader>rk :vertical resize +12<CR>

" telescope 
nnoremap <leader><Space> :Telescope find_files<CR>
nnoremap <leader>ff :Telescope live_grep<CR>
nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>fd :Telescope diagnostics<CR>
nnoremap <leader>fn :Telescope current_buffer_fuzzy_find<CR>
nnoremap <leader>fh :Telescope help_tags<CR>
nnoremap <leader>fg :Telescope git_status<CR>

" These commands will navigate through buffers in order regardless of which mode you are using
nmap <leader><Tab> :BufferLineCycleNext<CR>
nmap <leader><S-Tab> :BufferLineCyclePrev<CR>

" Explorer
nnoremap <c-p> :NvimTreeToggle<CR>
inoremap <c-p> <Esc>:NvimTreeToggle<CR>
tnoremap <c-p> <c-\><c-n>:NvimTreeToggle<CR>

" Buffer management 
nnoremap <leader> q :bd<CR>
nnoremap <leader> mx :MaximizerToggle!<CR>

" terminal
nnoremap <c-q> :Ttoggle<CR>
inoremap <c-q> <Esc>:Ttoggle<CR>
tnoremap <c-q> <c-\><c-n>:Ttoggle<CR>

" markdown
nnoremap <leader>md :MarkDrawer<CR>
nnoremap <leader>gy :Goyo<CR>

" database
nnoremap <leader>DB :DBUIToggle<CR>
