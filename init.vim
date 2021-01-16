

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
Plug 'vim-latex/vim-latex'
" Initialize plugin system
call plug#end()

silent! colorscheme nord 
let g:airline_theme='purify'

"snippets

let g:UltiSnipsExpandTrigger="<c-a>"

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
let g:OmniSharp_selector_ui = 'fzf'    " Use fzf.vim
let g:ale_linters = {
    \ 'cs': ['OmniSharp']
    \}
                                      
" C
autocmd FileType c nnoremap <buffer> <F5> :!make build run<CR>

"CSharp
autocmd FileType cs nnoremap <buffer> <F5> :!make run<CR>

source $HOME/.config/nvim/general/main.vim
source $HOME/.config/nvim/general/plugs.vim
source $HOME/.config/nvim/langs/cpp.vim
source $HOME/.config/nvim/langs/latex.vim
source $HOME/.config/nvim/langs/pascal.vim
