let g:pascal_compiler   = 'fpc'

function! CompilePascal()
    let file_name = expand ('%:t')
    let words = split (l:file_name. '\.')
    execute '!' . g:pascal_compiler . ' ' . l:file_name
endfunction

command! -nargs=0 CompilePascal call CompilePascal(<f-args>)
 
" Pascal 
autocmd FileType pascal nnoremap <buffer> <F5> :CompilePascal<CR>
