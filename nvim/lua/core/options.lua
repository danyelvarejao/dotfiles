local configs = {
  ['opt'] = {
    number = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = 4,
    wrap = false,
    swapfile = false,
    backup = false,
    undodir = os.getenv('HOME') .. '/.config/nvim/undos',
    undofile = true,
    hlsearch = false,
    incsearch = true,
    termguicolors = true,
    scrolloff = 8,
    signcolumn = 'yes',
    cmdheight = 1,
    updatetime = 50,
    encoding = 'utf-8',
    fileencoding = 'utf-8',
    smartindent = true,
    clipboard = 'unnamedplus',
    autoindent = true,
    mouse = 'a',
    ruler = true,
    showmode = false,
  },
  
  ['o'] = {
    relativenumber = true,
  },
  
  ['g'] = {
    mapleader = ' ',
  }
}

for config, options in pairs(configs) do
  for name, value in pairs(options) do 
    vim[config][name] = value
  end
end
