
function RunPyScript ()
    let l:name = bufname('%')
    execute "!python " . l:name
endfunction


command! -nargs=* RunPyScript call RunPyScript()
autocmd FileType python nnoremap <buffer> <F5> :RunPyScript <CR>
