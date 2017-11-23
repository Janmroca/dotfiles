# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh    

# Set global node_modules to user
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=3000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

# End of lines added by compinstall


# System info script
#neofetch

# Dotfiles git configuration
alias config='/usr/bin/git --git-dir=/home/i3wm/.cfg/ --work-tree=/home/i3wm'
