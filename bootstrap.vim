" Load vim-plug
if empty(glob("~/.vim/work/phpctags"))
    if has('unix')
        execute '!curl -Ss http://vim-php.com/phpctags/install/phpctags.phar > ~/.vim/work/phpctags && chmod a+x ~/.vim/work/phpctags'
    endif
endif
"TODO universal installation for unix with compilation of the binary in the vim work folder
if empty(glob("/usr/bin/editorconfig"))
    if has('unix')
        execute '!sudo pacman -S editorconfig-core-c'
    endif
endif

