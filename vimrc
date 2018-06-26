" install tierce
so ~/.vim/work/bootstrap.vim

augroup vimrcwork
    autocmd!
    autocmd BufWritePost ~/.vim/work/vimrc source ~/.vim/work/vimrc | echom "reloadwork settings"
augroup end

augroup TEST
     autocmd!
     autocmd BufEnter ~/WORK/pe/labonneformation/* silent! cd ~/WORK/pe/labonneformation
augroup END

autocmd FileType php source ~/.vim/work/php.vim
autocmd FileType python source ~/.vim/work/python.vim

nnoremap <CR> <C-]>
nmap ,<space> :TagbarToggle<CR>

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

" vim: filetype=vim
