return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use "nvim-treesitter/nvim-treesitter"

  use {
    "mg979/vim-visual-multi",
    config = function() 
      vim.g.VM_leader = vim.g.mapleader
    end
  }

  use {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.gopls.setup {}
    end
  }
end)
