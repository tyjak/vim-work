" install tierce 
so ~/.vim/work/bootstrap.vim

setlocal makeprg=php\ -l\ %
setlocal errorformat=%m\ in\ %f\ on\ line\ %l,%-GErrors\ parsing\ %f,%-G
nnoremap <buffer> <silent> <f5> :update<bar>sil! make<bar>cwindow<cr>

augroup TEST
     autocmd!
     autocmd BufReadPost ~/WORK/pe/david/* silent! cd ~/WORK/pe/david
augroup END

"Various shortcut"{{{1
imap <C-p> :set paste<CR>:exe PhpDoc()<CR>:set nopaste<CR>i
imap ,deb if(function_exists('debug')) debug();
nnoremap <CR> <C-]>

"Various setup"{{{1
au FileType php set omnifunc=phpcomplete#CompletePHP
let g:php_manual_online_search_shortcut = 'gK'
let g:phpqa_codesniffer_autorun=0

"Startify setup"{{{1
let g:startify_change_to_vcs_root = 1
let g:startify_change_to_dir = 1
let g:startify_bookmarks += [{'w':'~/WORK/divers_share/pe/labonneformation'}]
let g:startify_bookmarks += [{'t':'~/WORK/'}]
let g:startify_bookmarks += [{'c':'~/.vim/work/vimrc'}]
let g:startify_bookmarks += [{'p':'~/.vim/work/plugin.vim'}]

"Tags configuration"{{{
let g:tagbar_phpctags_bin = '~/src/vim-work/phpctags'

let g:gutentags_cache_dir = '~/.vim/work/gutentags'

let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js', '*.json', '*.xml',
                            \ '*.phar', '*.ini', '*.rst', '*.md',
                            \ '*vendor/*/test*', '*vendor/*/Test*',
                            \ '*vendor/*/fixture*', '*vendor/*/Fixture*',
                            \ '*var/cache*', '*var/log*']
let g:ale_linters = {
            \   'php': ['php'],
            \}
" vim: filetype=vim
