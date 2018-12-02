"python vimrc file

set foldmethod=indent
set textwidth=88

" mappings

" quick definition find
" nnoremap <CR> :FindDefinition<CR>

" edit and reload conf
map ,v :tabe $VIMWORKDIR/python.vim<CR>
map ,V :source $VIMWORKDIR/python.vim<CR>

" debug
inoremap ,deb import ipdb; ipdb.set_trace()

let g:virtualenv_stl_format = '[%n]'

" plugins settings
let g:airline#extensions#virtualenv#enabled = 1


let b:ale_virtualenv_dir_names=[$HOME . '/.virtualenvs/vim']
" Check Python files with flake8 and pylint.
let b:ale_linters = ['flake8', 'pylint']
" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8', 'yapf']
" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0
let b:ale_python_pylint_options = '-E'
"let g:ale_completion_enabled = 1
