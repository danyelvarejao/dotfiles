local status_ok, saga = pcall(require, 'lspsaga')
if not status_ok then
  return
end

saga.setup({
  ui = {
    border = 'single',
    title = true,
    winblend = 0,
    expand = '',
    collapse = '',
    code_action = '💡',
    incoming = ' ',
    outgoing = ' ',
    hover = ' ',
    diagnostic = ' ',
    kind = {},
  },
  hover = {
    max_width = 0.6,
  },
  diagnostic = {
    on_insert = false,
    on_insert_follow = false,
    insert_winblend = 0,
    show_virt_line = true,
    show_code_action = true,
    show_source = true,
    jump_num_shortcut = true,
    max_width = 0.7,
    text_hl_follow = false,
    border_follow = true,
    keys = {
      exec_action = 'o',
      quit = 'q',
      go_action = 'g',
    },
  },
  code_action = {
    num_shortcut = true,
    show_server_name = false,
    extend_gitsigns = false,
    keys = {
      quit = 'q',
      exec = '<CR>',
    },
  },
  lightbulb = {
    enable = false,
    enable_in_insert = false,
    -- cache_code_action = true,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
  },
  preview = {
    lines_above = 0,
    lines_below = 10,
  },
  scroll_preview = {
    scroll_down = '<C-f>',
    scroll_up = '<C-b>',
  },
  request_timeout = 2000,
  finder = {
    --percentage
    max_height = 0.5,
    force_max_height = false,
    keys = {
      jump_to = 'p',
      edit = { 'o', '<CR>' },
      vsplit = 's',
      split = 'i',
      tabe = 't',
      tabnew = 'r',
      quit = { 'q', '<ESC>' },
      close_in_preview = '<ESC>',
    },
  },
  definition = {
    edit = '<C-c>o',
    vsplit = '<C-c>v',
    split = '<C-c>i',
    tabe = '<C-c>t',
    quit = 'q',
  },
  rename = {
    quit = '<C-c>',
    exec = '<CR>',
    mark = 'x',
    confirm = '<CR>',
    in_select = true,
  },
  symbol_in_winbar = {
    enable = true,
    ignore_patterns = {},
    separator = ' ',
    hide_keyword = true,
    show_file = true,
    folder_level = 2,
    respect_root = false,
    color_mode = true,
  },
  outline = {
    win_position = 'right',
    win_with = '',
    win_width = 30,
    auto_preview = true,
    auto_refresh = true,
    auto_close = true,
    custom_sort = nil,
    keys = {
      jump = 'o',
      expand_collapse = 'u',
      quit = 'q',
    },
  },
  callhierarchy = {
    show_detail = false,
    keys = {
      edit = 'e',
      vsplit = 's',
      split = 'i',
      tabe = 't',
      jump = 'o',
      quit = 'q',
      expand_collapse = 'u',
    },
  },
  beacon = {
    enable = false,
    frequency = 10,
  },
  server_filetype_map = {},
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", opts)
vim.keymap.set("n", "gp", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
vim.keymap.set("n", "gn", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)

vim.keymap.set({"n", "v"}, "<leader>a", "<cmd>Lspsaga code_action<CR>", opts)
vim.keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

-- vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
