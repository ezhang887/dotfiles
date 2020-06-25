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

# start tmux
tmux attach &> /dev/null

if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi

export VM=ericsz2@sp20-cs241-414.cs.illinois.edu
