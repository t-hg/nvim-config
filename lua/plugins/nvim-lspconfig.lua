return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.api.nvim_create_user_command("LspRename", function()
        vim.lsp.buf.rename()
      end, {})
      vim.api.nvim_create_user_command("LspQuickfix", function()
        vim.lsp.buf.code_action()
      end, {})
      vim.api.nvim_create_user_command("LspGoToDefinition", function()
        vim.lsp.buf.definition()
      end, {})
      vim.api.nvim_create_user_command("LspGoToDeclaration", function()
        vim.lsp.buf.declaration()
      end, {})
      vim.keymap.set("n", "<leader>cr", ":LspRename<CR>", {})
      vim.keymap.set("n", "<leader>cq", ":LspQuickfix<CR>", {})
      vim.keymap.set("n", "<leader>gd", ":LspGoToDefinition<CR>", {})
      vim.keymap.set("n", "<leader>gD", ":LspGoToDeclaration<CR>", {})
    end,
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.ccls.setup({ capabilities = capabilities })
      lspconfig.bashls.setup({ capabilities = capabilities })
      lspconfig.gopls.setup({ capabilities = capabilities })
      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.tsserver.setup({ capabilities = capabilities })
      lspconfig.cssls.setup({ capabilities = capabilities })
    end,
  },
  "hrsh7th/cmp-vsnip",
  "hrsh7th/vim-vsnip",
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end,
        },
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
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
      })
    end,
  }
}
