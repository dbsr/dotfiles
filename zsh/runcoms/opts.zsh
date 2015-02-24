# opts

# Stuff
setopt pushd_ignore_dups; setopt auto_pushd
setopt auto_name_dirs; setopt auto_cd
setopt transient_rprompt; setopt prompt_subst
setopt no_beep; setopt multios
setopt extended_glob; setopt interactive_comments

# History
setopt hist_ignore_dups; setopt hist_ignore_space
setopt hist_reduce_blanks; setopt hist_verify
setopt hist_expire_dups_first; setopt hist_find_no_dups
setopt share_history; setopt extended_history
setopt append_history; setopt inc_append_history

HISTSIZE=4096
SAVEHIST=4096
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>' # Like default, but without / -- ^W must be useful in paths, like it is in vim, bash, tcsh

# Completion
setopt complete_in_word
setopt no_complete_aliases # Actually: completes aliases! (I guess that means "no ~separate functions~ for aliases")
unsetopt always_to_end
