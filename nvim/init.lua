local modules = {
  ---- Core Settings ----------------------------------
  'core.plugins',           -- Plugins + Packer Config
  'core.keymaps',           -- Custom Keymaps
  'core.options',           -- General Options

  ---- Plugins Settings -------------------------------
  'configs.material',       -- Material Theme
  'configs.lualine',        -- Statusline
  'configs.nvim-tree',      -- File Tree
  'configs.bufferline',     -- Bufferline
  'configs.nvim-colorizer', -- HEX Colors
  'configs.lazygit',        -- Lazygit
}

-- Using pcall we can handle better any loading issues
for _, module in ipairs(modules) do
  local ok, err = pcall(require, module)
  if not ok then
    error(('Failed to load %s'):format(module))
  end
end
