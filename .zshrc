# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh

if [[ -z $TMUX ]]; then

  # Quercus Technologies SmartLPR Access 4.3
  export PATH=/home/jan/SmartLPR/4.3/Bin:/Quercus/bin:$PATH
  export LD_LIBRARY_PATH=/home/jan/SmartLPR/4.3/Bin:$LD_LIBRARY_PATH

  # Set global node_modules to user
  PATH="$HOME/.node_modules/bin:$PATH"
  export npm_config_prefix=~/.node_modules

  # Add python user bins to $PATH
  PATH="$HOME/.local/bin:$PATH"

  # Add own scripts
  PATH="$HOME/.scripts:$PATH"

  # Custom scripts
  export PATH=/home/jan/stuff/scripts:$PATH

fi
# Load custom functions
source ~/.zsh/zshfuncs

# Load custom alias
source ~/.zsh/zshalias
