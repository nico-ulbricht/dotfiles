# Kill last launched Docker Container
function dkl() {
    docker kill $(docker ps -ql)
}

function github() {
    open https://github.com/$1/$2 
}