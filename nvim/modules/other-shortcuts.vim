" Redo with U instead of (Ctrl + R)
noremap U <C-R>

" Goto file (CTRL + P) fzf plugin
nnoremap <C-p> :Files<CR>

" Goto buffer (Ctrl + O) fzf plugin
nnoremap <C-o> :Buffers<CR>

" Nerd Tree
nnoremap <C-e> :NERDTreeToggle<CR>

" Clear current search highlight
nnoremap <C-l> :nohl<CR>

" Comment using (CTRL + k)
nnoremap <C-k> :Commentary<CR>
vnoremap <C-k> :Commentary<CR>
