"" cpp funcs setup
function! CppClass(name)
    let name_as_string = string(a:name)
    let header = l:name_as_string . ".h"
    let class  = l:name_as_string . ".cpp"

    if isdirectory("headers")
        silent! execute '!printf "\#pragma once\nclass ' . a:name . '\n{\nprivate:\npublic:\n\t'. a:name .'();\n\t~'.a:name.'();\n};\n' . '" >> ' l:header 
        silent! execute '!mv '.l:header.' headers/'
    else 
        silent! execute '!printf "\#pragma once\nclass ' . a:name . '\n{\nprivate:\npublic:\n\t'. a:name .'();\n\t~'.a:name.'();\n};\n' . '" >> ' l:header 
    endif

    if isdirectory("sources")
        silent! execute '!printf "\#include \"../headers/' . a:name .'.h\"\n'.a:name.'::'.a:name.'()\n{\n}\n'.a:name.'::~'.a:name.'()\n{\n}\n" >> ' l:class
        silent! execute '!mv '.l:class.' sources/'
    else 
        silent! execute '!printf "\#include \"' . a:name .'.h\"\n'.a:name.'::'.a:name.'()\n{\n}\n'.a:name.'::~'.a:name.'()\n{\n}\n" >> ' l:class
    endif
    
endfunction

function! CppProp(name, type)
    let upName = toupper(a:name)
    let goodname = strpart(l:upName, 0, 1) . strpart(a:name, 1, strlen(a:name))
    let private = search ('private:', '', 's') 
    let public = search ('public:', '', 's') 

    if l:private 
        call append (l:private, "\t".a:type." m_".a:name.";")
    endif

    if l:public
        call append (search ('public:', '', 's'), "\tvoid Set".l:goodname."(".a:type. " value) {m_".a:name." = value;}")
        call append (search ('public:', '', 's'), "\t".a:type." ".l:goodname."() const {return m_".a:name.";}")
    endif
endfunction

function! BuildProject()
    if isdirectory ('build') == 0 
        silent! execute '!mkdir build'
    endif

    execute '!cd build && cmake .. && cmake --build .'
endfunction

function! RunCppTests() 
   if isdirectory ('build') 
       execute '!./build/tests/unit-tests'
   else 
       BuildProject ()
       RunCppTests ()
   endif
endfunction

command! -nargs=1 CppClass call CppClass(<f-args>) 
command! -nargs=* CppProp call CppProp (<f-args>)
command! -nargs=* BuildProject call BuildProject ()
command! -nargs=* RunCppTests call  RunCppTests()

cnoreabbrev cppclass CppClass 
cnoreabbrev cppprop CppProp

autocmd FileType cpp nnoremap <buffer> <F5> :BuildProject <CR>
autocmd FileType cpp nnoremap <buffer> <F11> :RunCppTests <CR>
