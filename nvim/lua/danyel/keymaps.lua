-- Goto end/start line
vim.keymap.set('n', 'H',  '^')
vim.keymap.set('n', 'L',  '$')
vim.keymap.set('v', 'H',  '^')
vim.keymap.set('v', 'L',  '$')

-- Remap reundo
vim.keymap.set('n', 'U', '<C-R>')

-- Remap { and } to contrary
vim.keymap.set('', '{', '}')
vim.keymap.set('', '}', '{')

-- Clear search highlighting
vim.keymap.set('n', '<leader>nl', ':nohl<CR>')

-- Move around splits using Ctrl + {h,j,k,l}
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Resize current buffer by +/- 2
vim.keymap.set('n', '<C-M-left>',  ':vertical resize +2<CR>')
vim.keymap.set('n', '<C-M-down>',  ':resize +2<CR>')
vim.keymap.set('n', '<C-M-up>',  ':resize -2<CR>')
vim.keymap.set('n', '<C-M-right>',  ':vertical resize -2<CR>')

-- Better indent
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- Select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Fix * (Keep the cursor position, don't move to next match)
vim.keymap.set('n', '*', '*N')

-- Fix n and N. Keeping cursor in center
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')

-- Fix (CTRL + d) and (CTRL + u). Keeping cursor in center
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Remove letter without yank
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', 'X', '"_X')
