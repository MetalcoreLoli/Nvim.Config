
" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=[
            \'\.meta$','\.rbc$', '\~$', 
            \'\.pyc$', '\.db$', '\.sqlite$', 
            \'__pycache__', 'obj', 'bin'
            \]
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize =25
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>
 
