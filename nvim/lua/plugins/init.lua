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

-- Autocommand that reloads neovim whenever you save the init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Install plugins
return packer.startup(function(use)
  -- Add you plugins here:
  use 'wbthomason/packer.nvim' -- packer can manage itself

  -- Nvim web devicons
  use 'kyazdani42/nvim-web-devicons'

  -- Colorscheme
  use 'marko-cerovac/material.nvim'

  -- Statusline
  use 'nvim-lualine/lualine.nvim'
  
  -- File Tree
  use {
    'kyazdani42/nvim-tree.lua',
    tag = 'nightly'
  }

  -- Bufferline
  use { 
    'akinsho/bufferline.nvim',
    tag = "v2.*",
  }

  -- HEX Colors
  use 'norcalli/nvim-colorizer.lua'

  -- Lazygit
  use 'kdheepak/lazygit.nvim'

  -- Comment lines and selections
  use 'terrortylor/nvim-comment'

  -- Move lines and selections
  use 'fedepujol/move.nvim'

  -- Syntax highlighting
  use 'nvim-treesitter/nvim-treesitter'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    packer.sync()
  end
end)
