local cmp_status_ok, colorscheme = pcall(require, 'tokyodark')
if not cmp_status_ok then
  return
end

local configs = {
    transparent_background = true, -- set background to transparent
    gamma = 1.00, -- adjust the brightness of the theme
    styles = {
        comments = { italic = false }, -- style for comments
        keywords = { italic = false }, -- style for keywords
        identifiers = { italic = false }, -- style for identifiers
        functions = { italic = false }, -- style for functions
        variables = { italic = false }, -- style for variables
    },
    custom_highlights = {} or function(highlights, palette) return {} end, -- extend highlights
    custom_palette = {} or function(palette) return {} end, -- extend palette
    terminal_colors = true, -- enable terminal colors
}

colorscheme.setup(configs)
vim.cmd("colorscheme tokyodark")
