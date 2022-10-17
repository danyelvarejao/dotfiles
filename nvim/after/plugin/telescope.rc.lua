local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
  return
end

local telescope_builtin_status_ok, telescope_buitin = pcall(require, 'telescope.builtin')
if not telescope_builtin_status_ok then
  return
end

local telescope_actions_status_ok, telescope_actions = pcall(require, 'telescope.actions')
if not telescope_actions_status_ok then
  return
end

vim.keymap.set('n', '<leader>ff', telescope_buitin.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope_buitin.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope_buitin.buffers, {})
--vim.keymap.set('n', 'fh', telescope_buitin.help_tags, {})

telescope.setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      -- map actions.which_key to <C-h> (default: <C-/>)
      -- actions.which_key shows the mappings for your picker,
      -- e.g. git_{create, delete, ...}_branch for the git_branches picker
      n = {
        ["q"] = telescope_actions.close
      },
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}