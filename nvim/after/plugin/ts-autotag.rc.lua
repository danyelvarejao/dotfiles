local ts_auto_tag_status_ok, autotag = pcall(require, 'nvim-ts-autotag')
if not ts_auto_tag_status_ok then
  return
end

autotag.setup({})
