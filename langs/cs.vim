function! BuildCSProject()
    if isdirectory("Makefile") 
        !make run
    else 
        !dotnet build
    endif
endfunction

function! RunCSTests() 
    !dotnet test
endfunction
