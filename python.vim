"python vimrc file 

set foldmethod=indent

" mappings

" quick definition find
nnoremap <CR> :FindDefinition<CR>

" edit and reload conf
map ,v :tabe $VIMWORKDIR/python.vim<CR>
map ,V :source $VIMWORKDIR/python.vim<CR>

" plugins settings
let g:airline#extensions#virtualenv#enabled = 1


" linter
let g:ale_python_pylint_options = '-E'
