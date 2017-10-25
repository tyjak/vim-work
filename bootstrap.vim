" Load vim-plug
if empty(glob("~/.vim/work/phpctags"))
    if has('unix')
        execute '!curl -Ss http://vim-php.com/phpctags/install/phpctags.phar > ~/.vim/work/phpctags'
    endif
endif

