-- Disable built-in plugins
local disabled_built_ins = {"2html_plugin", "getscript", "getscriptPlugin", "gzip", "logipat", "netrw", "netrwPlugin", "netrwSettings", "netrwFileHandlers", "matchit", "tar", "tarPlugin", "rrhelper", "spellfile_plugin", "vimball", "vimballPlugin", "zip", "zipPlugin", "tutor", "rplugin", "synmenu", "optwin", "compiler", "bugreport", "ftplugin"}
for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end

-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Install plugins
return packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Required of some plugins
  use 'kyazdani42/nvim-web-devicons'

  -- Syntax Highlighting
  use 'nvim-treesitter/nvim-treesitter'

  -- Color scheme
  use 'navarasu/onedark.nvim'

  -- Statusline
  use 'nvim-lualine/lualine.nvim'

  -- File Tree
  use 'kyazdani42/nvim-tree.lua'

  -- Bufferline
  use 'akinsho/bufferline.nvim'

  -- HEX Colors
  use 'norcalli/nvim-colorizer.lua'

  -- Indent Customization
  use 'lukas-reineke/indent-blankline.nvim'

  -- Best navigation on start / end (%)
  use 'andymass/vim-matchup'

  -- Auto Tag
  use 'windwp/nvim-ts-autotag'

  -- Auto Pairs
  use 'windwp/nvim-autopairs'

  -- Neovim comment
  use 'numToStr/Comment.nvim'

  -- Multiple Cursor
  use 'mg979/vim-visual-multi'

  -- Fast move lines and selections
  use 'fedepujol/move.nvim'

  -- LSP (Language Servers Protocol)
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind.nvim'

  -- CMP (Autocomplete)
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-cmdline',
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }

  if packer_bootstrap then
    packer.sync()
  end
end)
