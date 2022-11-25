-- Remap arrow keys to goto end/start line and file
vim.keymap.set('', '<up>',    'gg')
vim.keymap.set('', '<down>',  'G')
vim.keymap.set('', '<left>',  '0')
vim.keymap.set('', '<right>', '$')

-- Remap reundo
vim.keymap.set('n', 'U', '<C-R>')

-- Remap { and } to contrary
vim.keymap.set('', '{', '}')
vim.keymap.set('', '}', '{')

-- Clear search highlighting with <esc>
vim.keymap.set('n', '<esc>', ':nohl<CR>')

-- Move around splits using Ctrl + {h,j,k,l}
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Resize current buffer by +/- 2
vim.keymap.set('n', '<C-M-l>',  ':vertical resize +2<CR>')
vim.keymap.set('n', '<C-M-j>',  ':resize +2<CR>')
vim.keymap.set('n', '<C-M-k>',  ':resize -2<CR>')
vim.keymap.set('n', '<C-M-l>',  ':vertical resize -2<CR>')

-- Better indent
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- Select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Remove letter without yank
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', 'X', '"_X')

-- Delete a backward word in normal mode without yank
vim.keymap.set('n', 'dw', 'vb"_d')

-- Clear without yank
vim.keymap.set('n', 'c', '"_c')
vim.keymap.set('v', 'c', '"_c')
vim.keymap.set('n', 'C', '"_C')
vim.keymap.set('v', 'C', '"_C')
