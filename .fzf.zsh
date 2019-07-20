# Setup fzf
# ---------
if [[ ! "$PATH" == */home/jan/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/jan/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/jan/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/jan/.fzf/shell/key-bindings.zsh"
