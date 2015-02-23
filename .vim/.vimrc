" Fetch ~/.vimrc bootstrap

" this has to go first
set nocompatible

" init plugins
source ~/.vim/runcoms/neobundle.vim

" custom plugin settings / mappings
:runtime! ~/.vim/runcoms/bundles/*.vim

" general settings
source ~/.vim/runcoms/general.vim

" gui
source ~/.vim/runcoms/gui.vim

" and mappings
source ~/.vim/runcoms/mappings.vim
