return {
  "sbdchd/neoformat",
  config = function()
    vim.keymap.set("n", "<leader>cf", ":Neoformat<CR>", {})
  end
}
