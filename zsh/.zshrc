#!/bin/sh
[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"

# history
HISTFILE=~/.zsh_history

# source
#plug "$HOME/.config/zsh/aliases.zsh"
#plug "$HOME/.config/zsh/exports.zsh"

# plugins
plug "esc/conda-zsh-completion"
plug "zsh-users/zsh-autosuggestions"
plug "hlissner/zsh-autopair"
plug "zap-zsh/supercharge"
#plug "zap-zsh/vim"
#plug "zap-zsh/zap-prompt"
plug "zap-zsh/fzf"
plug "zap-zsh/exa"
plug "zsh-users/zsh-syntax-highlighting"

# keybinds
#bindkey '^E' autosuggest-accept
bindkey -v
bindkey '^ ' autosuggest-accept
bindkey '^E' autosuggest-accept
#bindkey '^I' complete-word
#bindkey 'C-\r' autosuggest-accept

#bindkey '^I' conda-zsh-completion


# Menu select and shits
zstyle ':completion:*' menu select
zmodload zsh/complist

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

bindkey -M menuselect '^[[Z' reverse-menu-complete


export PATH="$HOME/.local/bin":$PATH

# if command -v bat &> /dev/null; then
#   alias cat="bat -pp --theme \"Visual Studio Dark+\"" 
#   alias catt="bat --theme \"Visual Studio Dark+\"" 
# fi
#
alias ls='exa -l --group-directories-first'

#autoload -Uz compinit && compinit


# Prompt // git status
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats ' (%b)'

# Custom prompt
PROMPT='%F{green}%n%f@%m %F{green}%~%f${vcs_info_msg_0_}> '
#PROMPT='${PS2}%F{green}%n%f@%m %F{green}%~%f${vcs_info_msg_0_}> '

# Vi-status # Right hand side for now 
function zle-line-init zle-keymap-select {
    RPS1='${${KEYMAP/vicmd/[N] }/(main|viins)/[I] }'
    PS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
