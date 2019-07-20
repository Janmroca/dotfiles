# Path appending function (removes duplicates)
path_append() {
  for arg in "$@"; do
      if [[ ":${PATH}:" != *":${arg}:"* ]]; then
          export PATH="${PATH:+"$PATH:"}${arg}"
      fi
  done
}

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh

# Set global node_modules to user
path_append "$HOME/.node_modules/bin"
export npm_config_prefix=~/.node_modules

# Add python user bins to $PATH
path_append "$HOME/.local/bin"

# Add own script
path_append "$HOME/scripts"

# Compile using ccache
export PATH=/usr/lib/ccache/bin:$PATH


# Load custom functions
source ~/.zsh/zshfuncs

# Load custom alias
source ~/.zsh/zshalias

# ZSH - Vi config
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1

unset user


neofetch
