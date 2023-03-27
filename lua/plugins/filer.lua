return {
  "lambdalisue/fern.vim",
  dependencies = {
    "lambdalisue/fern-git-status.vim",
    "lambdalisue/fern-hijack.vim",
    "lambdalisue/nerdfont.vim",
    "nvim-tree/nvim-web-devicons",
    "lambdalisue/fern-renderer-nerdfont.vim",
    "lambdalisue/glyph-palette.vim",
  },
  init = function()
    vim.g["fern#renderer"] = "nerdfont"
  end,
}
