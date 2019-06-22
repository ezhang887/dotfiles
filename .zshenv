# path
export PATH=/usr/local/bin:$PATH

# oh my zsh
export ZSH="/home/ezhang/.oh-my-zsh"

# golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go_workspace
export PATH=$PATH:$(go env GOPATH)/bin

# cargo (rust)
export PATH="$HOME/.cargo/bin:$PATH"

## cuda (nvcc)
export PATH=/usr/local/cuda-10.0/bin${PATH:+:${PATH}}$
export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# ros
source /opt/ros/melodic/setup.zsh

# editor
export EDITOR='vim'
