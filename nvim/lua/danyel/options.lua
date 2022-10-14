vim.g.mapleader = " "

vim.opt.title = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.breakindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath('config') .. "/undos"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.scrolloff = 12
vim.opt.signcolumn = "yes"

vim.opt.cmdheight = 1

vim.opt.updatetime = 50

vim.opt.showmode = false

vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' }
vim.opt.wildignore:append { '*/node_modules/*' }

vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.pumheight = 8
