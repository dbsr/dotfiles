# zfunctions.zsh


zfunction_path=~/.zsh/zfunctions

for f in $zfunction_path/*
do
  fname=$(basename $f)
  autoload -Uz $fname
done
