return {
  'romgrk/barbar.nvim',
  enabled = true,
  config = function()
    vim.g.barbar_auto_setup = false -- disable auto-setup

    local nnoremap = require("user.keymap_utils").nnoremap

    -- Barbar buffer files
    nnoremap('<leader><tab>', '<Cmd>BufferPrevious<CR>')
    nnoremap('<tab>', '<Cmd>BufferNext<CR>')
    nnoremap('<leader>q', '<Cmd>BufferClose<CR>')

    require('barbar').setup({})
  end
}
