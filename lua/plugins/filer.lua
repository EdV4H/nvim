return {
  "lambdalisue/fern.vim",
  dependencies = {
    "lambdalisue/fern-git-status.vim",
    "lambdalisue/fern-hijack.vim",
    "lambdalisue/nerdfont.vim",
    "nvim-tree/nvim-web-devicons",
    "lambdalisue/fern-renderer-nerdfont.vim",
    "TheLeoP/fern-renderer-web-devicons.nvim",
    "lambdalisue/glyph-palette.vim",
  },
  init = function()
    vim.g["fern#renderer"] = "nvim-web-devicons"
  end,
  config = function()
    vim.g["glyph_palette#palette"] = require("fr-web-icons").palette()
  end,
}
