return {
    {
        "catppuccin/nvim",
        config = function()
            require("catppuccin").setup({
                term_colors = false,
                transparent_background = false,
                no_italic = true,
                no_bold = true,
                no_underline = true,
                styles = {
                    comments = {},
                    conditionals = {},
                    loops = {},
                    functions = {},
                    keywords = {},
                    strings = {},
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = {},
                },
                highlight_overrides = {
                    all = function(colors)
                        return {
                            CurSearch = { bg = colors.sky },
                            IncSearch = { bg = colors.sky },
                            CursorLineNr = { fg = colors.blue, style = { "bold" } },
                            DashboardFooter = { fg = colors.overlay0 },
                            TreesitterContextBottom = { style = {} },
                            WinSeparator = { fg = colors.overlay0, style = { "bold" } },
                            ["@markup.italic"] = { fg = colors.blue, style = { "italic" } },
                            ["@markup.strong"] = { fg = colors.blue, style = { "bold" } },
                            Headline = { style = { "bold" } },
                            Headline1 = { fg = colors.blue, style = { "bold" } },
                            Headline2 = { fg = colors.pink, style = { "bold" } },
                            Headline3 = { fg = colors.lavender, style = { "bold" } },
                            Headline4 = { fg = colors.green, style = { "bold" } },
                            Headline5 = { fg = colors.peach, style = { "bold" } },
                            Headline6 = { fg = colors.flamingo, style = { "bold" } },
                            rainbow1 = { fg = colors.blue, style = { "bold" } },
                            rainbow2 = { fg = colors.pink, style = { "bold" } },
                            rainbow3 = { fg = colors.lavender, style = { "bold" } },
                            rainbow4 = { fg = colors.green, style = { "bold" } },
                            rainbow5 = { fg = colors.peach, style = { "bold" } },
                            rainbow6 = { fg = colors.flamingo, style = { "bold" } },
                        }
                    end,
                },
                color_overrides = {
                    mocha = {
                        rosewater = "#F5B8AB",
                        flamingo = "#F29D9D",
                        pink = "#AD6FF7",
                        mauve = "#FF8F40",
                        red = "#E66767",
                        maroon = "#EB788B",
                        peach = "#FAB770",
                        yellow = "#FACA64",
                        green = "#70CF67",
                        teal = "#4CD4BD",
                        sky = "#61BDFF",
                        sapphire = "#4BA8FA",
                        blue = "#00BFFF",
                        lavender = "#00BBCC",
                        text = "#C1C9E6",
                        subtext1 = "#A3AAC2",
                        subtext0 = "#8E94AB",
                        overlay2 = "#7D8296",
                        overlay1 = "#676B80",
                        overlay0 = "#464957",
                        surface2 = "#3A3D4A",
                        surface1 = "#2F313D",
                        surface0 = "#1D1E29",
                        base = "#0b0b12",
                        mantle = "#11111a",
                        crust = "#191926",
                    },
                },
                integrations = {
                    cmp = true,
                    fidget = false,
                    gitsigns = true,
                    harpoon = false,
                    mason = true,
                    native_lsp = { enabled = true },
                    noice = true,
                    notify = false,
                    symbols_outline = false,
                    telescope = {
                        enabled = true,
                        style = "nvchad"
                    },
                    treesitter = true,
                    treesitter_context = true,
                },
            })
            
            vim.cmd.colorscheme("catppuccin-mocha")
            
            -- Hide all semantic highlights until upstream issues are resolved (https://github.com/catppuccin/nvim/issues/480)
            for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
                vim.api.nvim_set_hl(0, group, {})
            end
        end,
    },
}
