# aliases.zsh

# package management
alias paci="pacaur -S $@ --noconfirm --noedit --needed"
alias pacu="pacaur -Syu --noedit"
alias pacr="pacaur -R $@"
alias pacs="pacaur -Ss $@"
alias pacl="pacman -Ql $1"

# sysemctl
alias sstart="sudo systemctl start $@"
alias sstop="sudo systemctl stop $@"
alias srestart="sudo systemctl restart $@"
alias senable="sudo systemctl enable $@"

alias sdisable="sudo systemctl disable $@"
alias sstatus="sudo systemctl status $@"

# general
alias l="k"
alias c="c"
alias e=kungvim
