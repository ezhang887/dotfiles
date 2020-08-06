# rc file for zsh

# plugins
plugins=(
    git
    ubuntu
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-history-substring-search
)

# pure zsh theme
ZSH_THEME=""
source $ZSH/oh-my-zsh.sh

fpath+=("$HOME/.zsh/pure")
autoload -U promptinit; promptinit
prompt pure

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ezhang/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ezhang/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ezhang/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ezhang/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Make background color work in vim in tmux
alias tmux='tmux -2'
