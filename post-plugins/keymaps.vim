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
nnoremap <c-q> <cmd>NeotermToggle<CR>
inoremap <c-q> <Esc><cmd>NeotermToggle<CR>
tnoremap <c-q> <c-\><c-n><cmd>NeotermToggle<CR>

" markdown
nnoremap <leader>md <Plug>MarkdownPreviewToggle
nnoremap <leader>gy :Goyo<CR>

" database
nnoremap <leader>DB :DBUIToggle<CR>

" luasnip
" press <Tab> to expand or jump in a snippet. These can also be mapped separately
" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" -1 for jumping backwards.
imap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

vnoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
vnoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>


" For changing choices in choiceNodes (not strictly necessary for a basic setup).
imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
