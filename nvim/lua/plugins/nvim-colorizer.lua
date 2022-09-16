local status_ok, nvim_colorizer = pcall(require, 'colorizer')
if not status_ok then
  return
end

nvim_colorizer.setup()