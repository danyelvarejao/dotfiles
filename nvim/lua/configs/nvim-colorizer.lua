local status_ok, nvim_colorizer = pcall(require, 'colorizer')
if not status_ok then
  error(('Failed to load %s'):format('colorizer'))
  return
end

nvim_colorizer.setup()