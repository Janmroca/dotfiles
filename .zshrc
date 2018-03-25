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
[[ -s /etc/profile.d/autojump.zsh ]] && source /etc/profile.d/autojump.zsh


# Set global node_modules to user
path_append "$HOME/.node_modules/bin"
export npm_config_prefix=~/.node_modules

# Add python user bins to $PATH
path_append "$HOME/.local/bin"

# Add own scripts
path_append "$HOME/.scripts"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=3000
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/jan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# System info script
neofetch

# Load custom functions
source ~/.zsh/zshfuncs

# Load custom alias
source ~/.zsh/zshalias
