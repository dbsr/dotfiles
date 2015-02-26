" vimrc > neobundle

if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" quick / fuzzy file finder
NeoBundle 'Kien/ctrlp.vim'

" visual undo tree
NeoBundle 'sjl/gundo.vim'

" syntax checking
NeoBundle 'scrooloose/syntastic'

" autocompletion
NeoBundle 'Valloric/YouCompleteMe'

" snippets
NeoBundle 'vim-scripts/UltiSnips'

" moar snippets
NeoBundle 'honza/vim-snippets.git'

" node / js completion
NeoBundle 'marijnh/tern_for_vim.git'

" colorscheme
NeoBundle 'sickill/vim-monokai.git'

call neobundle#end()
