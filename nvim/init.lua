local modules = {
  ---- Core Settings ----------------------------------
  'core.plugins',           -- Disable built in plugins
  'core.keymaps',           -- Custom Keymaps
  'core.options',           -- General Options

  ---- Plugins Settings -------------------------------
  'plugins.init',           -- Packer install and plugins initialization
  'plugins.material',       -- Material Theme
  'plugins.lualine',        -- Statusline
  'plugins.nvim-tree',      -- File Tree
  'plugins.bufferline',     -- Bufferline
  'plugins.nvim-colorizer', -- HEX Colors
  'plugins.lazygit',        -- Lazygit
}

for _, path in ipairs(modules) do
  local ok, err = pcall(require, path)
  if not ok then
    error(('Failed to load %s'):format(path))
  end
end
