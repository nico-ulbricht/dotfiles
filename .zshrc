DIR="$(dirname "$(readlink "$0")")"
find $DIR -name "*.zsh" -print0 |
while IFS= read -r -d $'\0' line; do
    source $line
done