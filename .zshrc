# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh    

# Quercus Technologies SmartLPR Access 4.3  -------------
export PATH=/home/jan/SmartLPR/4.3/Bin:/Quercus/bin:$PATH
export LD_LIBRARY_PATH=/home/jan/SmartLPR/4.3/Bin:$LD_LIBRARY_PATH
# ---------------------------------------------------------

# Custom scripts
export PATH=/home/jan/stuff/scripts:$PATH

# Python user bins
export PATH=/home/jan/.local/bin:$PATH

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=3000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

# End of lines added by compinstall

# Load custom functions
source ~/.zshfuncs

# Load custom alias
source ~/.zshalias



