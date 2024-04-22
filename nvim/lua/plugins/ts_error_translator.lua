return {
  {
    "dmmulroy/ts-error-translator.nvim",
    enabled = true,
    config = function()
      require("ts-error-translator").setup()
    end,
  },
}

