echo "Setting up VSCode..."
ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/code

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
