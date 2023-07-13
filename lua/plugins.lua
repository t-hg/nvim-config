return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  use {
    "mg979/vim-visual-multi",
    config = function() 
      vim.g.VM_leader = vim.g.mapleader
    end
  }
end)
