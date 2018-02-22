# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Source fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Source autojump
source /etc/profile.d/autojump.zsh

# Set global node_modules to user
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=3000
setopt autocd
bindkey -e
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
