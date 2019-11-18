" install tierce
so ~/.vim/work/bootstrap.vim

augroup vimrcwork
    autocmd!
    autocmd BufWritePost ~/.vim/work/vimrc source ~/.vim/work/vimrc | echom "reloadwork settings"
augroup end

augroup TEST
     autocmd!
     autocmd BufEnter ~/WORK/pe/labonneformation/* silent! cd ~/WORK/pe/labonneformation | echom "change to work's dir"
augroup END

"Note : no ftplugin setup in these files since ftplugin settings seems to not
"be applied
autocmd FileType php source ~/.vim/work/php.vim
autocmd FileType python source ~/.vim/work/python.vim

"ftplugin settings
let g:pydocstring_enable_mapping=0
nmap <silent> <C-m> <Plug>(pydocstring)


"let g:UltiSnipsSnippetsDir="~/.vim/work/UltiSnips"
"let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/work/UltiSnips']
"let g:UltiSnipsEnableSnipMate=0
"let g:UltiSnipsJumpForwardTrigger="<c-down>"
"let g:UltiSnipsJumpBackwardTrigger="<c-down>"

"DirDiff config
let g:DirDiffExcludes = ".git,cache,tmp,logs,config,.gitignore,.editorconfig,README.md"
let g:DirDiffIgnore = "Id:,Revision:,Date:"
let g:DirDiffAddArgs = "-w"

"Startify setup"{{{1
let g:startify_change_to_vcs_root = 1
let g:startify_change_to_dir = 1
let g:startify_bookmarks += [{'w':'~/WORK/pe/labonneformation'}]
let g:startify_bookmarks += [{'t':'~/WORK/'}]
let g:startify_bookmarks += [{'c':'~/.vim/work/vimrc'}]
let g:startify_bookmarks += [{'p':'~/.vim/work/plugin.vim'}]

let g:ale_set_signs = 1
let g:ale_sign_column_always = 0
let g:ale_sign_error = ''
let g:ale_sign_info = '•'
let g:ale_sign_style_error = ''
let g:ale_sign_style_warning = '‼'
let g:ale_sign_warning = '‼'
let g:ale_statusline_format = ['%d error(s)', '%d warning(s)', 'OK']

highlight link ALEWarningSign WarningMsg

" vim: filetype=vim
