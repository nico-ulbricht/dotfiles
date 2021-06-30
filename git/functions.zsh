function github() {
  open https://github.com/$1/$2
}

function grd() {
  git log $(git describe --tags --abbrev=0)..HEAD --format="%C(auto) %h %s" | pbcopy
}
