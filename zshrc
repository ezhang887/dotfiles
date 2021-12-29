# rc file for zsh

# plugins
plugins=(
    git
    ubuntu
    fzf-tab
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

# Replace `ls` with `exa`
# https://github.com/ogham/exa
alias ls='exa'

# Replace `cat` with `bat`
# https://github.com/sharkdp/bat
alias cat='bat --color=always --style="numbers,header,grid"'

# fzf
alias fzf='fzf --height 40% --layout=reverse --border --preview "bat --color=always --style=numbers --line-range=:100 {}"'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# For fzf-tab
# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# preview directory's content with exa when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always $realpath'
