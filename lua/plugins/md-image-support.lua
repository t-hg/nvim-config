return {
  {
    "t-hg/nvim-md-paste-image",
    config = function()
      require("nvim-md-paste-image").setup()
    end,
  },
  {
    "t-hg/nvim-md-render-image",
    config = function()
      require("nvim-md-render-image").setup()
    end,
  }
}
