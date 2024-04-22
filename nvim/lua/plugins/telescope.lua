return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        "nvim-telescope/telescope-live-grep-args.nvim",
        build =
        "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
        cond = vim.fn.executable("cmake") == 1,
      },
    },
    config = function()
      local telescope = require('telescope')
      telescope.setup({
        defaults = {
          vimgrep_arguments = {
            "rg",
            "-L",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
          },
          prompt_prefix = "   ",
          selection_caret = "  ",
          entry_prefix = "  ",
          selection_strategy = "reset",
          sorting_strategy = "ascending",
          layout_strategy = "flex",
          layout_config = {
            horizontal = { preview_cutoff = 80, preview_width = 0.55 },
            vertical = { mirror = true, preview_cutoff = 25 },
            prompt_position = "top",
            width = 0.57,
            height = 0.70,
          },
          file_ignore_patterns = {
            "node_modules",
            "yarn.lock",
            ".git",
            ".sl",
            "_build",
            ".next",
          },
          extensions = {
            fzf = {
              fuzzy = true,
              override_generic_sorter = true,
              override_file_sorter = true,
              case_mode = "smart_case",
            },
          },
          hidden = true,
        },
      })

      -- Enable telescope fzf native, if installed
      pcall(telescope.load_extension, "fzf")
      pcall(telescope.load_extension, "live_grep_args")
    end,
  },
}
