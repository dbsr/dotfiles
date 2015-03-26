" general settings
set number
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set gcr=a:blinkon0
set visualbell
set autoread
set hidden
set autochdir
syntax on

" no swap for you
set noswapfile
set nobackup
set nowb

" persistent undo
set undofile
set undodir=$HOME/.vim/undo

" indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" wrap
set nowrap
set linebreak

" default folding
set foldmethod=indent
set foldnestmax=3

" builtin completion settings
set wildmode=list:longest
set wildmenu                
set wildignore=*.o,*.obj,*~ 
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" search
set incsearch
set hlsearch
set ignorecase
set smartcase
