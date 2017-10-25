
" install tierce 
so ~/.vim/work/bootstrap.vim

let g:tagbar_phpctags_bin='~/.vim/work/phpctags'

setlocal makeprg=php\ -l\ %
setlocal errorformat=%m\ in\ %f\ on\ line\ %l,%-GErrors\ parsing\ %f,%-G
nnoremap <buffer> <silent> <f5> :update<bar>sil! make<bar>cwindow<cr>

imap <C-p> :set paste<CR>:exe PhpDoc()<CR>:set nopaste<CR>i

imap ,deb if(function_exists('debug')) debug();

"Startify setup"{{{
let g:startify_change_to_vcs_root = 1
let g:startify_bookmarks += ['~/WORK']
let g:startify_bookmarks += ['~/.vim/work/vimrc']

" vim: filetype=vim
