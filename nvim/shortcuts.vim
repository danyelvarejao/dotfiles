" Fast shortcuties (save, quit, abort)
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>x :x<CR>
nmap <Leader>a :q!<CR>

" Move to next buffer
map <Leader>l :bnext<CR>

" Move to previous buffer
map <Leader>h :bprevious<CR>

" Move a line of text using ALT+[jk]
nmap <M-j> mz:m+<CR>`z
nmap <M-k> mz:m-2<CR>`z
vmap <M-j> :m'>+<CR>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<CR>`>my`<mzgv`yo`z

" Useful mappings for managing tabs
map <Leader>tn :tabnew<CR>
map <Leader>to :tabonly<CR>
map <Leader>tc :tabclose<CR>
map <Leader>tm :tabmove
map <Leader>t<Leader> :tabnext

" Goto file (CTRL + P) fzf plugin
nnoremap <c-p> :Files<CR>