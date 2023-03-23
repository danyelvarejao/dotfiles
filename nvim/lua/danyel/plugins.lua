-- Disable built-in plugins
local disabled_built_ins = {"2html_plugin", "getscript", "getscriptPlugin", "gzip", "logipat", "netrw", "netrwPlugin", "netrwSettings", "netrwFileHandlers", "matchit", "tar", "tarPlugin", "rrhelper", "spellfile_plugin", "vimball", "vimballPlugin", "zip", "zipPlugin", "tutor", "rplugin", "synmenu", "optwin", "compiler", "bugreport", "ftplugin"}
for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end

-- Automatically install lazy
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, 'lazy')
if not status_ok then
  return
end

-- Install plugins
return lazy.setup({
  -- Required of some plugins
  'kyazdani42/nvim-web-devicons',

  -- Syntax Highlighting
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  },

  -- LSP (Language Servers Protocol)
  'neovim/nvim-lspconfig',
  'onsails/lspkind.nvim',
  'glepnir/lspsaga.nvim',

  -- Easily install and manage LSP servers
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',

  -- CMP (Autocomplete)
  'hrsh7th/cmp-cmdline',
  'L3MON4D3/LuaSnip',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-buffer',
  'saadparwaiz1/cmp_luasnip',
  'hrsh7th/nvim-cmp',

  -- Autopairs () {} [], etc
  'windwp/nvim-autopairs',

  -- Telescope
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',

  -- Colorscheme
  'ellisonleao/gruvbox.nvim',

  -- Statusline
  'nvim-lualine/lualine.nvim',

  -- File Tree
  'kyazdani42/nvim-tree.lua',

  -- Bufferline
  'akinsho/bufferline.nvim',

  -- Neovim comment
  'numToStr/Comment.nvim',

  -- Lazygit
  'kdheepak/lazygit.nvim',

  -- GitSigns
  'lewis6991/gitsigns.nvim',
})
