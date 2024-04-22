return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = {
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
      }

      if not opts.sections then
        opts.sections = {}
      end

      opts.sections.lualine_a = {
        {
          function()
            return ""
          end,
          padding = { left = 1, right = 0 },
          separator = "",
        },
        "mode",
      }
      opts.sections.lualine_y = { "progress" }
      opts.sections.lualine_z = {
        { "location", separator = "" },
        {
          function()
            return ""
          end,
          padding = { left = 0, right = 1 },
        },
      }
      return opts
    end,
  },
}

