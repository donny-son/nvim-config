let mapleader=" "

imap jj <Esc>
imap kk <Esc>

noremap <leader>gf :e <cfile><CR>

nnoremap <leader>eK :resize +12<CR>
nnoremap <leader>eJ :resize -12<CR>
nnoremap <leader>ej :vertical resize -12<CR>
nnoremap <leader>ek :vertical resize +12<CR>

" telescope 
nnoremap <leader><Space> :Telescope find_files<CR>
nnoremap <leader>ff :Telescope live_grep<CR>
nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>fd :Telescope diagnostics<CR>
nnoremap <leader>fk :Telescope keymaps<CR>
nnoremap <leader>fn :Telescope current_buffer_fuzzy_find<CR>
nnoremap <leader>fh :Telescope help_tags<CR>
nnoremap <leader>fg :Telescope git_status<CR>

" These commands will navigate through buffers in order regardless of which mode you are using
nnoremap <Tab> :BufferLineCycleNext<CR>
nnoremap <S-Tab> :BufferLineCyclePrev<CR>

" Explorer
nnoremap <c-p> :NvimTreeToggle<CR>
inoremap <c-p> <Esc>:NvimTreeToggle<CR>
tnoremap <c-p> <c-\><c-n>:NvimTreeToggle<CR>

" Buffer management 
nnoremap <leader> q :bd<CR>

" terminal
nnoremap <leader>zz :source ~/.config/nvim/init.vim<CR>
nnoremap <c-q> <cmd>NeotermToggle<CR>
inoremap <c-q> <Esc><cmd>NeotermToggle<CR>
tnoremap <c-q> <c-\><c-n><cmd>NeotermToggle<CR>

" markdown
nnoremap <leader>mh :MarkDrawer<CR>
nnoremap <leader>md <Plug>MarkdownPreviewToggle
nnoremap <leader>gy :Goyo<CR>

" database
nnoremap <leader>DB :DBUIToggle<CR>

