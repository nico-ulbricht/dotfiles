# /usr/bin/env zsh
# -------- Setup for vim functionality in ZSH --------
# Resources:
# Adding Vi To Your Zsh: https://dougblack.io/words/zsh-vi-mode.html
# Use vim editing mode in terminal [escape to enter normal mode]
bindkey -v

# Restore some keymaps removed by vim keybind mode
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word

# Dependencies for the following lines
zmodload zsh/zle
autoload -U colors && colors

# Reduce latency when pressing <Esc>
export KEYTIMEOUT=1
