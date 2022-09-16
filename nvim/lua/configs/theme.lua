local status_ok, material = pcall(require, 'material')
if not status_ok then
  return
end

vim.g.material_style = 'deep ocean'

material.setup({
  contrast = {
    sidebars = true,
    floating_windows = true,
  },
  italics = {
    keywords = true,
    functions = true,
  },
  contrast_filetypes = {
    'terminal',
    'packer',
    'qf',
  },
  disable = {
    borders = false,
    eob_lines = false 
  }
})
vim.cmd 'colorscheme material'

vim.cmd("highlight WinSeparator guifg=#c0bfbc")
