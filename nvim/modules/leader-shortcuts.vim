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

" Clear current search highlight
nnoremap <C-l> :nohl<CR>