" Edit nvim config
nnoremap <Leader>evi :e ~/.config/nvim/init.vim<cr>
nnoremap <Leader>evs :e ~/.config/nvim/settings.vim<cr>
nnoremap <Leader>evg :e ~/.config/nvim/general.vim<cr>
nnoremap <Leader>evp :e ~/.config/nvim/plugin.vim<cr>

" Fast shortcuties (save, quit, abort)
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>a :q!<CR>

" Move to next buffer
noremap <Leader>l :bnext<CR>

" Move to previous buffer
noremap <Leader>h :bprevious<CR>

" Move a line of text using ALT+[jk]
nnoremap <A-j> mz:m+<CR>`z
nnoremap <A-k> mz:m-2<CR>`z
vnoremap <A-j> :m'>+<CR>`<my`>mzgv`yo`z
vnoremap <A-k> :m'<-2<CR>`>my`<mzgv`yo`z

" Useful mappings for managing tabs
noremap <Leader>tn :tabnew<CR>
noremap <Leader>to :tabonly<CR>
noremap <Leader>tc :tabclose<CR>
noremap <Leader>tm :tabmove
noremap <Leader>t<Leader> :tabnext

" Goto file (CTRL + P) fzf plugin
nnoremap <c-p> :Files<CR>

" Goto buffer (Ctrl + O) fzf plugin
nnoremap <c-o> :Buffers<CR>