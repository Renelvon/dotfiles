# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="renelvon"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# GAMS
alias gams=/home/renelvon/Documents/Courses/MathProgModels/gams/gams24.0_linux_x64_64_sfx/gams
alias gamslib=/home/renelvon/Documents/Courses/MathProgModels/gams/gams24.0_linux_x64_64_sfx/gamslib

# current folder usage
alias cfu='du ./* -s | sort -g'

# evince shortcut for dyslectics
alias pvf=evince

# vim read-only made easy
alias vr=vim -R 

# Kinda bored...
alias sag='sudo apt-get '

# Python3
alias p3='python3'
# Frequent Dropbox folder
alias eee='cd /home/renelvon/Dropbox/Archive/ECE_NTUA'

# open nemo in current directory
#mynemo() {nemo `pwd`;}

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
SCRIPTS=~/Repos/myScripts
MPICH3=~/Documents/Courses/Parallel/mpich3/install/bin
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$SCRIPTS:$MPICH3
