setlocal makeprg=php\ -l\ %
setlocal errorformat=%m\ in\ %f\ on\ line\ %l,%-GErrors\ parsing\ %f,%-G
nnoremap <buffer> <silent> <f5> :update<bar>sil! make<bar>cwindow<cr>

"Various shortcut"{{{1
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>
inoremap ,deb if(ENV_DEV) error_log(print_r(,true));<ESC>F,i
vnoremap ,deb yoif(ENV_DEV) error_log(print_r(array('varname'=>'<C-r>"','value'=><C-r>"),true));<ESC>

"Various setup"{{{1
au FileType php set omnifunc=phpcomplete#CompletePHP
let g:php_manual_online_search_shortcut = 'gK'
let g:phpqa_codesniffer_autorun=0

"Tags configuration"{{{
nnoremap <CR> <C-]>
nmap ,<space> :TagbarToggle<CR>

let g:tagbar_autofocus=1
let g:tagbar_autoclose=1
let g:tagbar_phpctags_bin = '~/src/vim-work/phpctags'
let g:gutentags_cache_dir = '~/.vim/work/gutentags'
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
                            \ '*.phar', '*.ini', '*.rst', '*.md', '*.log',
                            \ '*vendor/*/test*', '*vendor/*/Test*',
                            \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
                            \ '*var/cache*', '*var/log*']
let g:ale_linters = {
            \   'php': ['php'],
            \}

let g:DirDiffExcludes = ".git,cache,tmp,config.php"
let g:DirDiffIgnore = "Id:,Revision:,Date:"
let g:DirDiffAddArgs = "-w"
" vim: filetype=vim
