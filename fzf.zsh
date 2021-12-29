# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ezhang/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/ezhang/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/ezhang/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/ezhang/.fzf/shell/key-bindings.zsh"
