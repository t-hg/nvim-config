return {
  "t-hg/nvim-search-replace",
  config = function()
    require("nvim-search-replace").setup()
    vim.keymap.set("v", "<leader>sr", ":ReplaceAll<CR>")
  end
}
