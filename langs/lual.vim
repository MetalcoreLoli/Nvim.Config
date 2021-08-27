

function RawLuaCompile ()
    let compileString = '!luac -o app *.lua'
    execute compileString
endfunction

function RunLua ()
    execute '!lua app'
endfunction


function CompileUndRunLua ()
    RawLuaCompile ()
    RunLua ()
endfunction


command! -nargs=* RawLuaCompile call RawLuaCompile () 
command! -nargs=* RunLua call RunLua () 
command! -nargs=* CompileUndRunLua call CompileUndRunLua () 

autocmd FileType lua nnoremap <buffer> <F5> :CompileUndRunLua <CR>
