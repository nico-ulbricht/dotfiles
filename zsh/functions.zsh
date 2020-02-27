# Create a new directory and enter it
function mkd() {
	mkdir -p $@ && cd $@
}

function b64d() {
	echo -n $@ | base64 -D
}

function b64pb() {
	echo -n $@ | base64 -D | pbcopy
}
