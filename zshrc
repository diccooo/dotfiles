# .zshrc
# Explicitly configured $PATH variable

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="xiong-chiamiov-plus"
#ZSH_THEME="wezm"
#ZSH_THEME=pygmalion
ZSH_THEME=agnoster

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(colored-man-pages colorize
         git github
         sudo autojump command-not-found
         brew osx xcode
         docker docker-compose
         python pip virtualenv
         web-search)

source $ZSH/oh-my-zsh.sh

# Shell Aliases

# Git Aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '

# Shell Functions
# qfind - used to quickly find files that contain a string in a directory
qfind () {
  find . -exec grep -l -s $1 {} \;
  return 0
}

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
source /usr/local/bin/virtualenvwrapper.sh

# anaconda
#alias conda='~/anaconda/bin/conda '
#alias anapy='~/anaconda/bin/python '
#alias spyder='~/anaconda/bin/spyder '
#alias jupyter='~/anaconda/bin/jupyter '
#alias ipython='~/anaconda/bin/ipython '
#export ana=$HOME/anaconda/bin
export PATH=~/anaconda/bin:$PATH

alias grep='grep --color=auto'

#CUDA
export PATH=/Developer/NVIDIA/CUDA-8.0/bin${PATH:+:${PATH}}
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-8.0/lib${DYLD_LIBRARY_PATH:+:${DYLD_LIBRARY_PATH}}
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDNN/cuda/lib:/usr/local/cuda/lib:$DYLD_LIBRARY_PATH
export LD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$LD_LIBRARY_PATH
