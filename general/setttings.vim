
" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
filetype plugin on
filetype indent on

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set relativenumber 

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
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set number
syntax on

syntax enable
filetype plugin indent on

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


function! LunchTerm ()
    silent! execute "below sp"
    silent! execute "vert term"
    silent! execute "resize " . (winheight(0) * 2 / 6)
endfunction

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>t :exe "call LunchTerm()"<CR>

nnoremap <silent> <S-Tab> :exe "bp"<CR>
nnoremap <silent> <Tab> :exe "bn" <CR>
nnoremap <silent> <Leader>q :exe "bd" <CR>



tnoremap <Esc> <C-\><C-n>
