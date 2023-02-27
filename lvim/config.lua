------------------- vim options -----------------------
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

------------------- general -----------------------
lvim.log.level = "info"
lvim.use_icons = true

-- leader key
lvim.leader = "space"

-- background
lvim.transparent_window = true

------------------- keymaps -----------------------
-- Remap { and } to contrary
vim.keymap.set('', '{', '}', { noremap = true, silent = true })
vim.keymap.set('', '}', '{', { noremap = true, silent = true })

-- Goto end/start line
lvim.keys.normal_mode['H'] = '^'
lvim.keys.normal_mode['L'] = '$'
lvim.keys.visual_mode['H'] = '^'
lvim.keys.visual_mode['L'] = '$'

-- Remap reundo
lvim.keys.normal_mode['U'] = '<C-R>'

-- Clear search highlighting with <esc>
lvim.keys.normal_mode['<esc>'] = ':nohl<CR>'

-- Resize current buffer by +/- 2
lvim.keys.normal_mode['<C-Left>'] = ':vertical resize +2<CR>'
lvim.keys.normal_mode['<C-Down>'] = ':resize +2<CR>'
lvim.keys.normal_mode['<C-Up>'] = ':resize -2<CR>'
lvim.keys.normal_mode['<C-Right>'] = ':vertical resize -1<CR>'

-- Select all
lvim.keys.normal_mode['<C-a>'] = 'gg<S-v>G'

-- leader keymaps
lvim.builtin.which_key.mappings['q'] = { ':BufferKill<CR>', 'Kill Current Buffer' }
lvim.builtin.which_key.mappings['p'] = { ':Telescope find_files<CR>', 'Find File' }
lvim.builtin.which_key.mappings['f'] = { ':Telescope live_grep<CR>', 'Live Grep' }
lvim.builtin.which_key.mappings['si'] = { ':LvimReload<CR>', 'Reload' }

-- Bufferline
lvim.keys.normal_mode['<tab>'] = ':BufferLineCycleNext<CR>'
lvim.keys.normal_mode['<leader><tab>'] = ':BufferLineCyclePrev<CR>'

-- Fix * (Keep the cursor position, don't move to next match)
lvim.keys.normal_mode['*'] = '*N'

-- Fix n and N. Keeping cursor in center
lvim.keys.normal_mode['n'] = 'nzz'
lvim.keys.normal_mode['N'] = 'Nzz'

-- Fix (CTRL + d) and (CTRL + u). Keeping cursor in center
lvim.keys.normal_mode['<C-d>'] = '<C-d>zz'
lvim.keys.normal_mode['<C-u>'] = '<C-u>zz'

-- Remove letter without yank
lvim.keys.normal_mode['x'] = '"_x'
lvim.keys.normal_mode['X'] = '"_X'

-- Clear without yank
lvim.keys.normal_mode['c'] = '"_c'
lvim.keys.visual_mode['c'] = '"_c'
lvim.keys.normal_mode['C'] = '"_C'
lvim.keys.visual_mode['C'] = '"_C'

-- Lazygit
lvim.builtin.which_key.mappings['lg'] = { "<cmd>lua require 'lvim.core.terminal'.lazygit_toggle()<cr>", 'Lazygit' }

------------------- theme -----------------------
lvim.colorscheme = "lunar"

------------------- others -----------------------
lvim.builtin.treesitter.auto_install = true

------------------- plugins -----------------------
lvim.plugins = {
  { "LunarVim/Colorschemes" },
}

------------------- autocmds -----------------------
lvim.autocommands = {
  {
    "TextYankPost", {
      group = "_general_settings",
      pattern = "*",
      desc = "Highlight text on yank",
      callback = function()
        vim.highlight.on_yank { higroup = "Search", timeout = 50 }
      end,
    },
  },
}
