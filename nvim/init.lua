local modules = {
  ---- Core Settings ----------------------------------
  "core.plugins",           -- Plugins + Packer Config
  "core.keymaps",           -- Custom Keymaps
  "core.options",           -- General Options

  ---- Plugins Settings -------------------------------
  "configs.theme",          -- Colorscheme
  "configs.nvim-tree",      -- File Tree
}

-- Using pcall we can handle better any loading issues
for _, module in ipairs(modules) do
  local ok, err = pcall(require, module)
  if not ok then
    error(('Failed to load %s'):format(module))
  end
end
