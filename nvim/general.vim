" Global
let mapleader = "\<Space>"

syntax on            " Enable syntax highlight
set relativenumber   " Enable relative number
set nu               " Enable line numbers
set tabstop=4        " Show existing tab with 4 spaces width
set softtabstop=4    " Show existing tab with 4 spaces width
set shiftwidth=4     " When indenting with '>', use 4 spaces width
set expandtab        " On pressing tab, insert 4 spaces
set smarttab         " insert tabs on the start of a line according to shiftwidth
set smartindent      " Automatically inserts one extra level of indentation in some cases
set hidden           " Hides the current buffer when a new file is openned
set incsearch        " Incremental search
set ignorecase       " Ingore case in search
set hlsearch         " Highlight search results
set smartcase        " Consider case if there is a upper case character
set scrolloff=12     " Minimum number of lines to keep above and below the cursor
set cmdheight=1      " Give more space for displaying messages
set updatetime=300   " Time in miliseconds to consider the changes
set encoding=utf-8   " The encoding should be utf-8 to activate the font icons
set autoread         " Update vim after file update from outside
set ruler            " Always show current position

filetype on          " Detect and set the filetype option and trigger the FileType Event
filetype plugin on   " Load the plugin file for the file type, if any
filetype indent on   " Load the indent file for the file type, if any

" Backup
set nobackup
set nowritebackup

" Undo
set undodir=~/.config/nvim/undos

" Colors
if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif