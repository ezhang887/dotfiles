# path
export PATH=/usr/local/bin:$HOME/.local/bin:$PATH

# oh my zsh
export ZSH="$HOME/.oh-my-zsh"

# golang
if which go &> /dev/null; then
  export PATH=$PATH:/usr/local/go/bin
  export GOPATH=$HOME/go_workspace
  export PATH=$PATH:$(go env GOPATH)/bin
fi

# cargo (rust)
if which cargo &> /dev/null; then
  export PATH="$HOME/.cargo/bin:$PATH"
  . "$HOME/.cargo/env"
fi

# ros
if [ -d "/opt/ros/melodic" ]; then
    source /opt/ros/melodic/setup.zsh
fi

# editor
export EDITOR='vim'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
