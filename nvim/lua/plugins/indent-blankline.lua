local status_ok, indent_blankline = pcall(require, 'indent_blankline')
if not status_ok then
  return
end

indent_blankline.setup {
  char = "▏",
  space_char_blankline = " ",
  show_current_context = true,
  show_first_indent_level = false,
}
