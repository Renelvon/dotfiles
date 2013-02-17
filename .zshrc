# ~/.zshrc: executed by zsh(1) for non-login shells.

# If not running interactively, don't do anything:
[ -z "$PS1" ] && return

# autoload -U colors && colors

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# enable color support of ls and also add handy aliases
# if [ "$TERM" != "dumb" ]; then
#     eval "`dircolors -b`"
#     alias ls='ls --color=auto'
#     alias dir='ls --color=auto --format=vertical'
#     alias vdir='ls --color=auto --format=long'
# fi

# Comment in the above and uncomment this below for a color prompt
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\][\u@\h]\[\033[00m\] \[\033[01;34m\]\w \$ \[\033[00m\]'
# PS1=$'%{\e[1;32m%}%n%M%{\e[0m%} %{\e[1;34m%}%~ %#%{\e[0m%} '
# RPS1=' [ %* %W ]'

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
    ;;
*)
    ;;
esac

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

# current folder usage
alias cfu='du ./* -s | sort -g'

# evince shortcut for dyslectics
alias pvf=evince

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
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...
export PATH=/usr/local/cuda-5.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:~/Repos/myScripts
