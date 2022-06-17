let g:OmniSharp_selector_ui = 'fzf'    " Use fzf.vim
let g:ale_linters = {
    \ 'cs': ['OmniSharp']
    \}
"let g:OmniSharp_server_use_net6 = 1
let g:OmniSharp_server_use_mono = 1

autocmd FileType cs nnoremap <silent> <Leader>fo :OmniSharpCodeFormat<CR>
autocmd FileType cs nnoremap <silent> <Leader>fu :OmniSharpFixUsings<CR>
autocmd FileType cs nnoremap <silent> <Leader>fr :OmniSharpRename<CR>
autocmd FileType cs nnoremap <silent> <Leader>fp :OmniSharpGotoDefinition<CR>
autocmd FileType cs nnoremap <silent> <Leader>fx :OmniSharpRunTest<CR>
autocmd FileType cs nnoremap <silent> <Leader>fc :OmniSharpDebugTest<CR>
autocmd FileType cs nnoremap <silent> <Leader>fm :OmniSharpGetCodeActions<CR>
