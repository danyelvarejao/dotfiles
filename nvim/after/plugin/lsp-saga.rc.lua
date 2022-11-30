local status_ok, saga = pcall(require, 'lspsaga')
if not status_ok then
  return
end

saga.init_lsp_saga()

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", opts)
vim.keymap.set({"n", "v"}, "<leader>a", "<cmd>Lspsaga code_action<CR>", opts)

vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)

vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)

vim.keymap.set("n", "<leader>dp", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
vim.keymap.set("n", "<leader>dn", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
