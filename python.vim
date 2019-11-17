"python vimrc file

setlocal tabstop=4
setlocal foldmethod=indent
setlocal textwidth=88
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal smarttab
setlocal expandtab

" mappings

" quick definition find
" nnoremap <CR> :FindDefinition<CR>
map <F1> :!trefle serve<CR>
map <F2> :!behave --stop<CR>
nmap <silent> ,t :terminal ++close ipython<CR>

" edit and reload conf
nmap ,v :tabe $VIMWORKDIR/python.vim<CR>
nmap ,V :source $VIMWORKDIR/python.vim<CR>

" debug
inoremap ,deb import ipdb; ipdb.set_trace()

let g:virtualenv_stl_format = '[%n]'

" plugins settings
let g:airline#extensions#virtualenv#enabled = 1
let ropevim_vim_completion=1

" let b:ale_virtualenv_dir_names=[$HOME . '/.virtualenvs/vim']
" Check Python files with flake8 and pylint.
let b:ale_linters = ['flake8', 'pylint']
" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8', 'yapf']
" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0
let b:ale_python_pylint_options = '-E'
"let g:ale_completion_enabled = 1
