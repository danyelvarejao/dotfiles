local status_ok, move = pcall(require, 'move')
if not status_ok then
  return
end

vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', {})
vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', {})
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', {})
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', {})

vim.keymap.set('n', '<A-h>', ':MoveHChar(-1)<CR>', {})
vim.keymap.set('n', '<A-l>', ':MoveHChar(1)<CR>', {})
vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', {})
vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', {})
