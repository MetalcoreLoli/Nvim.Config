set number
syntax on
call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'

Plug 'OmniSharp/omnisharp-vim'
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'ycm-core/YouCompleteMe'
" Initialize plugin system
call plug#end()
silent! colorscheme nord 
let g:airline_theme='purify'
"snippets

let g:UltiSnipsExpandTrigger="<c-a>"

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8


"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Map leader to ,
let mapleader=','

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable the blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
cnoreabbrev cppclass CppClass 
cnoreabbrev cppprop CppProp


let g:OmniSharp_selector_ui = 'fzf'    " Use fzf.vim
let g:ale_linters = {
    \ 'cs': ['OmniSharp']
    \}



"" cpp funcs setup
function! CppClass(name)
    let name_as_string = string(a:name)
    let header = l:name_as_string . ".h"
    let class  = l:name_as_string . ".cpp"
    execute '!printf "\#pragma once\nclass ' . a:name . '\n{\nprivate:\npublic:\n\t'. a:name .'();\n\t~'.a:name.'();\n};\n' . '" >> ' l:header 
    execute '!printf "\#include \"' . a:name .'.h\"\n'.a:name.'::'.a:name.'()\n{\n}\n'.a:name.'::~'.a:name.'()\n{\n}\n" >> ' l:class
endfunction

function! CppProp(name, type)
    let upName = toupper(a:name)
    let goodname = strpart(l:upName, 0, 1) . strpart(a:name, 1, strlen(a:name))
    call append (search ('private:', '', 's'), "\t".a:type." m_".a:name.";")
    call append (search ('public:', '', 's'), "\tvoid Set".l:goodname."(".a:type. " value) {m_".a:name." = value;}")
    call append (search ('public:', '', 's'), "\t".a:type." Get".l:goodname."() const {return m_".a:name.";}")
     
endfunction

command! -nargs=1 CppClass call CppClass(<f-args>)
command! -nargs=* CppProp call CppProp (<f-args>)
