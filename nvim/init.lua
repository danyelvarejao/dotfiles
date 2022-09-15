local modules = {
  ---- Core Settings ----------------------------------
  "core/options",           -- General Options
  "core/plugins",           -- Plugins + Packer Config
  "core/keymaps",           -- Custom Keymaps
}

-- Using pcall we can handle better any loading issues
for _, module in ipairs(modules) do
  local ok, err = pcall(require, module)
  if not ok then
    return
  end
end
