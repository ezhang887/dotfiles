# rc file for zsh

# plugins
plugins=(
    git
    ubuntu
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-history-substring-search
)

# old powerlevel9k theme configs
# source ~/.fonts/*.sh
# POWERLEVEL9K_MODE='awesome-fontconfig'
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir virtualenv vcs)
# POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes)

# pure zsh theme
ZSH_THEME=""
source $ZSH/oh-my-zsh.sh
autoload -U promptinit; promptinit
prompt pure

# start tmux
tmux attach &> /dev/null

if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi
