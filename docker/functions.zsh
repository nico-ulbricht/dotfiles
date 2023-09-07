# Kill last launched Docker Container
function dkl() {
    docker kill $(docker ps -ql)
}

# Follow logs of last launched Docker Container
function dll() {
    docker logs $(docker ps -ql) -f
}
