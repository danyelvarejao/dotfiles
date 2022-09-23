local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a space
map('', '<Space>', '<Nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Disable arrow keys
map('', '<up>',    '<nop>')
map('', '<down>',  '<nop>')
map('', '<left>',  '<nop>')
map('', '<right>', '<nop>')

-- Remap reundo
map('n', 'U', '<C-R>')

-- Remap { and } to contrary
map('n', '{', '}')
map('n', '}', '{')

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Resize current buffer by +/- 2
map('n', '<C-left>',  ':vertical resize +2<CR>')
map('n', '<C-down>',  ':resize +2<CR>')
map('n', '<C-up>',    ':resize -2<CR>')
map('n', '<C-right>', ':vertical resize -2<CR>')

-- Better indent
map('v', '>', '>gv')
map('v', '<', '<gv')

-- Fast saving with <leader> and w
map('n', '<leader>w', ':w<CR>')

-- Fast quiting with <leader> and q
map('n', '<leader>q', ':q<CR>')

-- Close all windows and exit with <leader> and Q
map('n', '<leader>Q', ':qa!<CR>')

-- Don't accidently create macros when trying to quit
map('n', 'Q', 'q')
map('n', 'q', '<nop>')

-- Remap $ and 0 for ortholinear keyboard
map('n', '!', '0')
map('n', '0', '$')

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Toggle file tree
map('n', '<leader>e', ':NvimTreeToggle<CR>')

-- Bufferline
map('n', '<leader>bf',    ':BufferLinePick <CR>')
map('n', '<leader>bc',    ':BufferLinePickClose <CR>')
map('n', '<TAB>',         ':BufferLineCycleNext <CR>')
map('n', '<leader><TAB>', ':BufferLineCyclePrev <CR>')
map('n', '<leader>bm.',   ':BufferLineMoveNext <CR>')
map('n', '<leader>bm,',   ':BufferLineMovePrev <CR>')

-- Lazygit
map('n', '<leader>lg',   ':LazyGit <CR>')

-- Move
map('n', '<A-j>', ':MoveLine(1)<CR>')
map('n', '<A-k>', ':MoveLine(-1)<CR>')
map('v', '<A-j>', ':MoveBlock(1)<CR>')
map('v', '<A-k>', ':MoveBlock(-1)<CR>')

map('n', '<A-h>', ':MoveHChar(-1)<CR>')
map('n', '<A-l>', ':MoveHChar(1)<CR>')
map('v', '<A-h>', ':MoveHBlock(-1)<CR>')
map('v', '<A-l>', ':MoveHBlock(1)<CR>')
