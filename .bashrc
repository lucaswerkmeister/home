for file in $HOME/.bashrc.d/*
do
    if echo $file | grep -v "~" > /dev/null; then
        source "$file";
    fi
done

