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
export PATH=/usr/lib/cuda-10.1/bin${PATH:+:${PATH}}$
export LD_LIBRARY_PATH=/usr/lo/ilibcuda-10.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# ros
source /opt/ros/melodic/setup.zsh

# editor
export EDITOR='vim'

#export GOOGLE_APPLICATION_CREDENTIALS='/home/ezhang/SBHacks/HandsfreeTV/hacksb-ad66c048907e.json'
