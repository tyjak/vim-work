" install tierce
so ~/.vim/work/bootstrap.vim

augroup vimrcwork
    autocmd!
    autocmd BufWritePost ~/.vim/work/vimrc source ~/.vim/work/vimrc | echom "reloadwork settings"
augroup end

setlocal makeprg=php\ -l\ %
setlocal errorformat=%m\ in\ %f\ on\ line\ %l,%-GErrors\ parsing\ %f,%-G
nnoremap <buffer> <silent> <f5> :update<bar>sil! make<bar>cwindow<cr>

augroup TEST
     autocmd!
     autocmd BufEnter ~/WORK/pe/labonneformation/* silent! cd ~/WORK/pe/labonneformation
augroup END

"Various shortcut"{{{1
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>
inoremap ,deb if(ENV_DEV) error_log(print_r(,true));<ESC>F,i
vnoremap ,deb yoif(ENV_DEV) error_log(print_r(array('varname'=>'<C-r>"','value'=><C-r>"),true));<ESC>
nnoremap <CR> <C-]>
nmap ,<space> :TagbarToggle<CR>

"Various setup"{{{1
au FileType php set omnifunc=phpcomplete#CompletePHP
let g:php_manual_online_search_shortcut = 'gK'
let g:phpqa_codesniffer_autorun=0
let g:tagbar_autofocus=1
let g:tagbar_autoclose=1
let g:UltiSnipsSnippetsDir="~/.vim/work/UltiSnips"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/work/UltiSnips']
let g:UltiSnipsEnableSnipMate=0
let g:UltiSnipsJumpForwardTrigger="<c-down>"
let g:UltiSnipsJumpBackwardTrigger="<c-down>"

"Startify setup"{{{1
let g:startify_change_to_vcs_root = 1
let g:startify_change_to_dir = 1
let g:startify_bookmarks += [{'w':'~/WORK/pe/labonneformation'}]
let g:startify_bookmarks += [{'t':'~/WORK/'}]
let g:startify_bookmarks += [{'c':'~/.vim/work/vimrc'}]
let g:startify_bookmarks += [{'p':'~/.vim/work/plugin.vim'}]

"Tags configuration"{{{
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
" vim: filetype=vim
