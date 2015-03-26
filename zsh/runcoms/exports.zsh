# env / exports

# General
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export CLICOLOR="yes"
export PAGER="less"
export EDITOR="vim"

# Less
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[38;5;246m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[04;33;146m'
export LESS="-R"

# Python
export PIP_USE_MIRRORS=true
export PYTHONSTARTUP=~/.pythonrc
export PYTHONUSERBASE=~ # pip install --user
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

