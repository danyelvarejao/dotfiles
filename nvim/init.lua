local modules = {
  ---- Core Settings ----------------------------------
  'core.plugins',             -- Disable built in plugins
  'core.keymaps',             -- Custom Keymaps
  'core.options',             -- General Options
  'core.autocmds',            -- Auto commands

  ---- Plugins Settings -------------------------------
  'plugins.init',             -- Packer install and plugins initialization
  'plugins.material',         -- Material Theme
  'plugins.lualine',          -- Statusline
  'plugins.nvim-tree',        -- File Tree
  'plugins.bufferline',       -- Bufferline
  'plugins.nvim-colorizer',   -- HEX Colors
  'plugins.lazygit',          -- Lazygit
  'plugins.nvim-comment',     -- Comment lines and selections
  'plugins.nvim-treesitter',  -- Syntax highlighting
  'plugins.indent-blankline', -- Indent Blankline
}

for _, path in ipairs(modules) do
  local ok, err = pcall(require, path)
  if not ok then
    return
  end
end
