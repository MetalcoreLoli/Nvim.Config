source $HOME/.config/nvim/general/main.vim
source $HOME/.config/nvim/general/plugs.vim

source $HOME/.config/nvim/plugs/coc.conf.vim
source $HOME/.config/nvim/plugs/onmisharp.conf.vim
source $HOME/.config/nvim/plugs/airlines.conf.vim
source $HOME/.config/nvim/plugs/nerdtree.conf.vim

source $HOME/.config/nvim/langs/cpp.vim
source $HOME/.config/nvim/langs/latex.vim
source $HOME/.config/nvim/langs/pascal.vim


silent! colorscheme nord 

"snippets
let g:UltiSnipsExpandTrigger="<c-a>"

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv
                                    
" C
autocmd FileType c nnoremap <buffer> <F5> :!make build run<CR>

"CSharp
autocmd FileType cs nnoremap <buffer> <F5> :!make run<CR>

