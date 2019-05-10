echo "Setting up VSCode..."
ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /usr/local/bin/code

declare -a vsCodeExtensions=(
    "ckolkman.vscode-postgres"
    "eamodio.gitlens"
    "mikestead.dotenv"
    "monokai.theme-monokai-pro-vscode"
    "ms-kubernetes-tools.vscode-kubernetes-tools"
    "ms-python.python"
    "ms-vscode.Go"
    "PeterJausovec.vscode-docker"
    "redhat.vscode-yaml"
    "yzhang.markdown-all-in-one"
)

for i in "${vsCodeExtensions[@]}"
do
    code --install-extension "$i"
done
