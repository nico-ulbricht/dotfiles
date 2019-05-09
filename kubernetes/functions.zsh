# Delete all evicted PODs
function kdp() {
    kubectl get pods | grep Evicted | awk '{print $1}' | xargs kubectl delete pod
}

# Delete all PODs that grep-match the first argument
function gkp() {
    kubectl get pods | grep $@ | awk '{print $1}' | xargs kubectl delete pods
}

# Delete all Jobs that grep-match the first argument
function gkj() {
    kubectl get jobs | grep $@ | awk '{print $1}' | xargs kubectl delete jobs
}