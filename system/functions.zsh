# Expose local port to the web
function exp() {
	ssh -R "80:localhost:$@" "serveo.net"
}

# Kills a process based on the exposed port
function kp() {
	kill `lsof -i :$@ -t`
}