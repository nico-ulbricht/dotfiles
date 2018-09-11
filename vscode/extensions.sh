declare -a vsCodeExtensions=(
    "alefragnani.project-manager"
    "eamodio.gitlens"
    "esbenp.prettier-vscode"
    "GitHub.vscode-pull-request-github"
    "mikestead.dotenv"
    "monokai.theme-monokai-pro-vscode"
    "ms-vscode.Go"
    "PeterJausovec.vscode-docker"
)

for i in "${vsCodeExtensions[@]}"
do
    code --install-extension "$i"
done
