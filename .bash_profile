for file in ~/.{aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file