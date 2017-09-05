if ! [[ "$SHELLOPTS" =~ (:|^)posix(:|$) ]]; then # - in function names is not allowed in POSIX mode
    for file in $HOME/.bashrc.d/*; do
        if ! [[ "$file" =~ *"~" ]]; then
            source -- "$file"
        fi
    done
fi
