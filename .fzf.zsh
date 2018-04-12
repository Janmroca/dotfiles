# Setup fzf
# ---------
if [[ ! "$PATH" == */home/jan/.fzf/bin* ]]; then
  export PATH="$PATH:/home/jan/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/jan/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/jan/.fzf/shell/key-bindings.zsh"

# Configuration
# -------------
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='
  --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
'
