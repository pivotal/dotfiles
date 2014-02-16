#==========================================================================
# aliases
#==========================================================================

alias ls="ls -A"
alias ll="ls -lh"
alias j="jobs"
alias t="tmux"
alias irc="weechat-curses"
alias v="vim"
alias e="emacs"
alias startgres="postgres -D /usr/local/var/postgres"
alias startredis="redis-server /usr/local/etc/redis.conf"
alias b="bundle"
alias be="bundle exec"
alias rb="ruby"
alias r="rspec"
alias g="git"
alias gsl="git stash list"
alias gs="git status"
alias gsp="git stash pop"
alias ga="git add"
alias gc="git commit -v"
alias gp="git push"
alias gd="git diff"
alias gl="git log"

#==========================================================================
# Source bashrc
#==========================================================================

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

#==========================================================================
# basic settings
#==========================================================================

# set default editor
export EDITOR=vim

# Make ls use colors
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

# tell compiler to always assume 64 bits
export ARCHFLAGS="-arch x86_64"

#==========================================================================
# prompt
#==========================================================================

# assign new colorized prompt
export PS1='\[\033[0;31m\]()\[\e[0m\] '

# assign new colored root prompt
export SUDO_PS1="\[\e[33;1;41m\][\u] #\[\e[0m\] "

#==========================================================================
# History
#==========================================================================

export HISTCONTROL=erasedups # remove duplicates
export HISTSIZE=10000 # increase the size
shopt -s histappend # append session commands to .bash_history

#==========================================================================
# rbenv
#==========================================================================

eval "$(rbenv init -)"
source ~/.rbenv/completions/rbenv.bash
