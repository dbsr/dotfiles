# path

typeset -U path # U for Unique, like a set; (N) == only if exists
path=(
  $HOME/bin
  $path
)

export PATH

# function path
fpath=( "$HOME/.zsh/zfunctions" $fpath )
