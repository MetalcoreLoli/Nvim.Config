so $HOME/.config/nvim/general/setttings.vim
so $HOME/.config/nvim/general/plugs.vim

so $HOME/.config/nvim/plugs/coc.vim
so $HOME/.config/nvim/plugs/omnisharp.vim
so $HOME/.config/nvim/plugs/airlines.vim
so $HOME/.config/nvim/plugs/nerdtree.vim
so $HOME/.config/nvim/plugs/starty.conf.vim

so $HOME/.config/nvim/langs/cpp.vim
so $HOME/.config/nvim/langs/latex.vim
so $HOME/.config/nvim/langs/pascal.vim


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

