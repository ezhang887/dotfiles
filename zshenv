# path
export PATH=/usr/local/bin:$PATH

# oh my zsh
export ZSH="$HOME/.oh-my-zsh"

# golang
export PATH=$PATH:/usr/local/go/bin

# cargo (rust)
export PATH="$HOME/.cargo/bin:$PATH"

# ros
if [ -d "/opt/ros/melodic" ]; then
    source /opt/ros/melodic/setup.zsh
fi

# editor
export EDITOR='vim'
