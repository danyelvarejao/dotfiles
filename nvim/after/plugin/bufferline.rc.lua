local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then
  return
end

function close_current_buffer()
  vim.api.nvim_command('NvimTreeClose')
  vim.api.nvim_command('bdelete')
  vim.api.nvim_command('NvimTreeOpen')
  vim.api.nvim_command('wincmd l')
end

vim.keymap.set('n', '<leader>bf',    ':BufferLinePick <CR>', {})
vim.keymap.set('n', '<leader>bc',    ':BufferLinePickClose <CR>', {})
vim.keymap.set('n', '<TAB>',         ':BufferLineCycleNext <CR>', {})
vim.keymap.set('n', '<leader><TAB>', ':BufferLineCyclePrev <CR>', {})
vim.keymap.set('n', '<leader>bm.',   ':BufferLineMoveNext <CR>', {})
vim.keymap.set('n', '<leader>bm,',   ':BufferLineMovePrev <CR>', {})
vim.keymap.set('n', '<leader>q',     '<Cmd>lua close_current_buffer()<CR>', {})
vim.keymap.set('n', '<leader>w',     ':w<CR>', {})

bufferline.setup {
  options = {
    always_show_bufferline = false,
    offsets = {
      {
        filetype = 'NvimTree',
        text = "Explorer",
        highlight = "Directory",
        text_align = 'left'
      }
    },
  }
}
