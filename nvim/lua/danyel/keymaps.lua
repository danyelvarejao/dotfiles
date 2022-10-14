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
vim.keymap.set('n', '<C-left>',  ':vertical resize +2<CR>')
vim.keymap.set('n', '<C-down>',  ':resize +2<CR>')
vim.keymap.set('n', '<C-up>',    ':resize -2<CR>')
vim.keymap.set('n', '<C-right>', ':vertical resize -2<CR>')

-- Better indent
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- Emmet (Temporary)
vim.keymap.set('i', '<tab>', '<plug>(emmet-expand-abbr)')