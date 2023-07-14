local function configure_lsp_and_autocompletion(use)
  use "neovim/nvim-lspconfig"

  use {
    "hrsh7th/cmp-nvim-lsp",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.gopls.setup { capabilities = capabilities }
      lspconfig.lua_ls.setup { capabilities = capabilities }
    end
  }

  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/vim-vsnip"

  use {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      cmp.setup {
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end
        },
        sources = cmp.config.sources({
          { name = "nvim_lsp" }
        }),
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
         }),
      }
    end
  }
end

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use "nvim-treesitter/nvim-treesitter"

  configure_lsp_and_autocompletion(use)

  use {
    "mg979/vim-visual-multi",
    config = function()
      vim.g.VM_leader = vim.g.mapleader
    end
  }
end)
