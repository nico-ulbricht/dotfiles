declare -a vsCodeExtensions=(
    "alefragnani.project-manager"
    "eamodio.gitlens"
    "esbenp.prettier-vscode"
    "mikestead.dotenv"
    "monokai.theme-monokai-pro-vscode"
    "PeterJausovec.vscode-docker"
)

for i in "${vsCodeExtensions[@]}"
do
    code --install-extension "$i"
done
