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

# Quercus Technologies SmartLPR Access 4.3
path_append "/home/jan/SmartLPR/4.3/Bin" "/Quercus/bin"
export LD_LIBRARY_PATH=/home/jan/SmartLPR/4.3/Bin:$LD_LIBRARY_PATH

# Set global node_modules to user
path_append "$HOME/.node_modules/bin"
export npm_config_prefix=~/.node_modules

# Add python user bins to $PATH
path_append "$HOME/.local/bin"

# Add own scripts
path_append "$HOME/.scripts"

# Custom scripts
path_append "$HOME/stuff/scripts"

# Add custom snippets
path_append "$HOME/.snippets"

# Load custom functions
source ~/.zsh/zshfuncs

# Load custom alias
source ~/.zsh/zshalias
