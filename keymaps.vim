let mapleader=" "

nnoremap <leader>F :Neoformat prettier<CR>

noremap <leader>gf :e <cfile><CR>

noremap <C-k> :resize +4<CR>
noremap <C-j> :resize -4<CR>
noremap <C-h> :vertical resize -4<CR>
noremap <C-l> :vertical resize +4<CR>

nmap <c-p> :Files<CR>
nmap <leader>ff :Rg<CR>
inoremap <expr> <c-x><c-f> fzf#vim#complete#path(
    \ "find . -path '*/\.*' -prune -o -print \| sed '1d;s:^..::'",
    \ fzf#wrap({'dir': expand('%:p:h')}))
if has('nvim')
    au! TermOpen * tnoremap <buffer> <Esc> <c-\><c-n>
    au! FileType fzf tunmap <buffer> <Esc>
endif

" These commands will navigate through buffers in order regardless of which mode you are using
nnoremap <c-n> :BufferLineCycleNext<CR>
nnoremap <c-b> :BufferLineCyclePrev<CR>
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
" xmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

" NERDTree KEYMAPS
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>q :close<CR>

" Black formatter
" nnoremap <buffer><silent> <c-q> <cmd>call Black()<cr>

" Vim test
nnoremap <silent> tt :TestNearest<CR>
nnoremap <silent> tf :TestFile<CR>
nnoremap <silent> ta :TestSuite<CR>
nnoremap <silent> tg :TestVisit<CR>

" Pane Management
nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <c-q> :Ttoggle<CR>
inoremap <c-q> <Esc>:Ttoggle<CR>
tnoremap <c-q> <c-\><c-n>:Ttoggle<CR>

" Debugging with vimspector
" nnoremap <leader>da :call vimspector#Launch()<CR>
" nnoremap <leader>dx :call vimspector#Reset()<CR>
" 
" nnoremap <S-k> :call vimspector#StepOut()<CR>
" nnoremap <S-l> :call vimspector#StepInto()<CR>
" nnoremap <S-j> :call vimspector#StepOver()<CR>
" 
" nnoremap <leader>dr :call vimspector#Restart()<CR>
" nnoremap <leader>dn :call vimspector#Continue()<CR>
" nnoremap <leader>dc :call vimspector#RunToCursor()<CR>
" nnoremap <leader>db :call vimspector#ToggleBreakpoint()<CR>
" nnoremap <leader>de :call vimspector#ToggleConditionalBreakpoint()<CR>
" nnoremap <leader>dX :call vimspector#ClearBreakpoints()<CR>


