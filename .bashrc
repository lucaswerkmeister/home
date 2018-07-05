if [[
       $- =~ i # remote non-interactive shells still source .bashrc
        &&
        ! $SHELLOPTS =~ (:|^)posix(:|$) # - in function names is not allowed in POSIX mode
   ]]; then
    for file in $HOME/.bashrc.d/*; do
        if ! [[ $file == *"~" ]]; then
            source -- "$file"
        fi
    done
fi
