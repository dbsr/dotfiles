# modules

autoload -U colors && colors
autoload -U compinit && zmodload -i zsh/complist
autoload -U edit-command-line && zle -N edit-command-line
autoload -U url-quote-magic && zle -N self-insert url-quote-magic
autoload -U select-word-style && select-word-style bash
autoload -U zmv
