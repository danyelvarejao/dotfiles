local nvim_colorizer, colorizer = pcall(require, 'colorizer')
if not nvim_colorizer then
  return
end

colorizer.setup({
  '*';
})
