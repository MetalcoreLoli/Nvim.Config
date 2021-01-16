let g:pascal_compiler   = 'fpc'

function! CompilePascal()
    let file_name = expand ('%:t')
    let words = split (l:file_name. '\.')
    execute '!' . g:pascal_compiler . ' ' . l:file_name
endfunction

command! -nargs=0 CompPascal call CompilePascal(<f-args>)
 
" Pascal 
autocmd FileType pas nnoremap <buffer> <F5> :CompilePascal<CR>
