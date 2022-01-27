
function! BuildCSProject()
    !dotnet build
endfunction

function! RunCSTests() 
    !dotnet test
endfunction


command! -nargs=* BuildCSProject call BuildCSProject ()
command! -nargs=* RunCSTests call  RunCSTests()


autocmd FileType cs nnoremap <buffer> <F5> :BuildCSProject <CR>
autocmd FileType cs nnoremap <buffer> <F11> :RunCSTests <CR>
