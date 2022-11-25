let mapleader = ' ' " Change mapleader

set clipboard=unnamed,unnamedplus " Use the OS clipboard by default
set ignorecase " Ignore case of searches
set hlsearch " Highlight search words
set incsearch " Incremental search
set smartcase " When searching try to be smart about cases
set number " Enable line numbers
set relativenumber " Use relative line numbers
set scrolloff=8

" Remap keys for ortholinear keyboard
noremap 0 $
noremap ! 0

" Swap { to }
noremap { }
noremap } {

" Copy cursor to end
noremap Y y$

" Remap reundo
noremap U <C-r>

" Better Indent
vnoremap > >gv
vnoremap < <gv

" Increment/Decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Clear search highlight
nnoremap <esc> :noh<return><esc>

" Fast save and quiting
nnoremap <Leader>q    :q<CR>
nnoremap <Leader>w    :w<CR>

" Fix * (Keep the cursor position, don't move to next match)
nmap * *N

" Fix n and N. Keeping cursor in center
nmap n nzz
nmap N Nzz

" Delete letter in normal mode without yank
nnoremap x "_x
nnoremap X "_X

" Delete a backward word in normal mode without yank
nnoremap dw vb"_d

" Clear without yank
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C
