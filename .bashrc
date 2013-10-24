for file in $HOME/.bashinit.d/*
do
    if echo $file | grep -v "~" > /dev/null; then
        source "$file";
    fi
done

