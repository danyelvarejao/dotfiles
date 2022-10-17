local status_ok, nvim_auto_pairs = pcall(require, 'nvim-autopairs')
if not status_ok then
  return
end

nvim_auto_pairs.setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})