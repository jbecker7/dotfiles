return {
    "cvigilv/esqueleto.nvim",
    config = function()
      require("esqueleto").setup({
        patterns = { "markdown" },
      })
    end,
  }
  