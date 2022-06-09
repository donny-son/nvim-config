let mapleader=" "

noremap <leader>gf :e <cfile><CR>

nnoremap <leader>rK :resize +5<CR>
nnoremap <leader>rJ :resize -5<CR>
nnoremap <leader>rj :vertical resize -5<CR>
nnoremap <leader>rk :vertical resize +5<CR>

" telescope 
nnoremap <leader>ff :Telescope find_files<CR>
nnoremap <leader>fg :Telescope live_grep<CR>
nnoremap <leader>fb :Telescope buffers<CR>
nnoremap <leader>fw :Telescope diagnostics<CR>
nnoremap <leader>fn :Telescope current_buffer_fuzzy_find<CR>
nnoremap <leader>fh :Telescope help_tags<CR>
nnoremap <leader>fs :Telescope git_status<CR>

" These commands will navigate through buffers in order regardless of which mode you are using
nmap <leader><Tab> :BufferLineCycleNext<CR>
nmap <leader><S-Tab> :BufferLineCyclePrev<CR>

" Coc Explorer
" nmap <space>e <Cmd>CocCommand explorer<CR>

" Coc tab completion
" inoremap <silent><expr> <Tab>
"        \ pumvisible() ? "\<C-n>" :
"        \ <SID>check_back_space() ? "\<Tab>" :
"        \ coc#refresh()
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

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
" nnoremap <leader>b :lua require'dap'.toggle_breakpoint()<CR>
" nnoremap <S-k> :lua require'dap'.step_out()<CR>
" nnoremap <S-l> :lua require'dap'.step_into()<CR>
" nnoremap <S-j> :lua require'dap'.step_over()<CR>
" nnoremap <leader>ds :lua require'dap'.stop()<CR>
" nnoremap <leader>dn :lua require'dap'.continue()<CR>
" nnoremap <leader>dk :lua require'dap'.up()<CR>
" nnoremap <leader>dj :lua require'dap'.down()<CR>
" nnoremap <leader>d_ :lua require'dap'.disconnect();require'dap'.stop();require'dap'.run_last()<CR>
" nnoremap <leader>dr :lua require'dap'.repl.open({}, 'vsplit')<CR><C-w>l
" nnoremap <leader>di :lua require'dap.ui.variables'.hover()<CR>
" vnoremap <leader>di :lua require'dap.ui.variables'.visual_hover()<CR>
" nnoremap <leader>d? :lua require'dap.ui.variables'.scopes()<CR>
" nnoremap <leader>de :lua require'dap'.set_exception_breakpoints({"all"})<CR>
" nnoremap <leader>da :lua require'debugHelper'.attach()<CR>
" nnoremap <leader>dA :lua require'debugHelper'.attachToRemote()<CR>
" nnoremap <leader>di :lua require'dap.ui.widgets'.hover()<CR>
" nnoremap <leader>d? :lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>

" markdown
nnoremap <leader>md :MarkDrawer<CR>
nnoremap <leader>gy :Goyo<CR>
