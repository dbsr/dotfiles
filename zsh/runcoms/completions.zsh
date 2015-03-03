# completions

# zstyle
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' insert-tab pending
zstyle ':completion:*' expand "yes"
zstyle ':completion:*' matcher-list "m:{a-zA-Z}={A-Za-z}" # ignore case
zstyle ':completion:*' list-colors ""
zstyle ':completion:*' menu select=2 _complete _ignored _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format "- %{${fg[yellow]}%}%d%{${reset_color}%} -"
zstyle ':completion:*:messages' format $'\e[00;31m%d'
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:manuals.(^1*)' insert-sections true
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
zstyle ':completion:*:cd:*' ignore-parents parent pwd
zstyle ':completion:*:rm:*' ignore-line yes
zstyle ':completion:*:*:*:processes' list-colors "=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01"
zstyle ':completion:*:*:*:processes' command "ps -u $(whoami) -o pid,user,comm -w -w"
zstyle ':completion:*:*:*:*:hosts' list-colors "=*=$color[cyan];$color[bg-black]"
zstyle ':completion:*:functions' ignored-patterns "_*"
zstyle ':completion:*:original' list-colors "=*=$color[red];$color[bold]"
zstyle ':completion:*:parameters' list-colors "=[^a-zA-Z]*=$color[red]"
zstyle ':completion:*:aliases' list-colors "=*=$color[green]"

# var
fpath=(~/.zsh/zsh-completions/src(N) /usr/local/share/zsh/site-functions(N) $fpath)
fignore+=.DS_Store
compinit -i
compdef mcd=cd
_ctagscomp() { (( CURRENT == 2 )) && compadd $(cut -f 1 tags ctags .git/tags tmp/tags 2>/dev/null | grep -v '!_TAG') }
compdef _ctagscomp ack
compdef _ctagscomp ag
compdef _ctagscomp pt
_loadkeys() { compadd $(find ~/.ssh -perm 0600 ! -type s | xargs basename) }
compdef _loadkeys loadkeys

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>' # Like default, but without / -- ^W must be useful in paths, like it is in vim, bash, tcsh
