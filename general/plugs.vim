call plug#begin('~/.vim/plugged')

Plug 'wlangstroth/vim-racket'
Plug 'rust-lang/rust.vim'

Plug 'dense-analysis/ale'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'

Plug 'OmniSharp/omnisharp-vim'
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'mhinz/vim-startify'
Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }
" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'vim-scripts/gmlua.vim'

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'kyoz/purify', { 'rtp': 'vim' }
"Plug 'ycm-core/YouCompleteMe'
Plug 'vim-latex/vim-latex'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Initialize plugin system

" git plugins
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

Plug 'easymotion/vim-easymotion'

Plug 'puremourning/vimspector'

call plug#end()
