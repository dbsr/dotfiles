# aliases.zsh

# package management
alias paci="pacaur -S $@ --noconfirm --noedit --needed"
alias pacu="pacaur -Syu --noedit"
alias pacr="pacaur -R $@"
alias pacs="pacaur -s $@"
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

# python
alias mkvirtualenv='mkvirtualenv --python=/usr/bin/python2'

function resetDns() {
  DNS=54.94.175.250
  RESOLVECONF=/etc/resolv.conf
  if [[ -z $(cat $RESOLVECONF|grep $DNS) ]]
  then
    sudo zsh -c "echo '#$DNS' >> $RESOLVECONF"
  fi
  sudoedit $RESOLVECONF
  sudo ip link set enp3s0 down
  sudo ip link set enp3s0 up

}
