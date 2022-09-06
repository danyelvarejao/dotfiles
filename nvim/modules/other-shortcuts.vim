" Move a line of text using ALT+[jk]
nnoremap <A-j> mz:m+<CR>`z
nnoremap <A-k> mz:m-2<CR>`z
vnoremap <A-j> :m'>+<CR>`<my`>mzgv`yo`z
vnoremap <A-k> :m'<-2<CR>`>my`<mzgv`yo`z

" Goto file (CTRL + P) fzf plugin
nnoremap <C-p> :Files<CR>

" Goto buffer (Ctrl + O) fzf plugin
nnoremap <C-o> :Buffers<CR>

" Nerd Tree
nnoremap <C-e> :NERDTreeToggle<CR>

" Clear current search highlight
nnoremap <C-l> :nohl<CR>
