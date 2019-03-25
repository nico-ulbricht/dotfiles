declare -a vsCodeExtensions=(
    "eamodio.gitlens"
    "esbenp.prettier-vscode"
    "mikestead.dotenv"
    "monokai.theme-monokai-pro-vscode"
    "ms-vscode.Go"
    "PeterJausovec.vscode-docker"
)

for i in "${vsCodeExtensions[@]}"
do
    code --install-extension "$i"
done
