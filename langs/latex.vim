let g:latex_compiler    = 'pdflatex'
let g:pdf_reader        = 'zathura'     
 
function! CompileLatex()
    let file_name = expand('%:t')
    execute '!' . g:latex_compiler . ' ' . l:file_name
    return l:file_name                                    
endfunction               
               
function! CompileLatexUndShow()
    let file_name = CompileLatex() 
    let words = split(l:file_name, '\.')
    silent! execute '!'. g:pdf_reader .' '. l:words[0] . '.pdf'
endfunction                                                            


command! -nargs=0 CompileLatex call CompileLatex (<f-args>)
command! -nargs=0 CompileLatexUndShow call CompileLatexUndShow (<f-args>)

autocmd FileType tex nnoremap <C-N> :CompileLatexUndShow<CR>
autocmd FileType tex nnoremap <C-X> :CompileLatex<CR>  
