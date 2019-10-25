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

# Callback for vim mode change
function zle-line-init zle-keymap-select () {
    # Only supported in these terminals
    if [ "$TERM" = "xterm-256color" ] || [ "$TERM" = "xterm-kitty" ] || [ "$TERM" = "screen-256color" ]; then
        if [ $KEYMAP = vicmd ]; then
            # Command mode
            export RPROMPT="%{$fg[green]%}[NORMAL]%{$reset_color%}"
        else
            # Insert mode
            export RPROMPT="%{$fg[blue]%}[INSERT]%{$reset_color%}"
        fi
    fi

    RPS1="${${KEYMAP/vicmd/$RPROMPT}/(main|viins)/$RPROMPT} $EPS1"
    zle reset-prompt
}

# Bind the callback
zle -N zle-line-init
zle -N zle-keymap-select

# Reduce latency when pressing <Esc>
export KEYTIMEOUT=1
