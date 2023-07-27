vim = vim

local function configure_syntax_highlighting(use)
  use {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = "all",
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        }
      }
    end
  }
end

local function configure_lsp_and_autocompletion(use)
  use "neovim/nvim-lspconfig"

  use {
    "hrsh7th/cmp-nvim-lsp",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.gopls.setup { capabilities = capabilities }
      lspconfig.lua_ls.setup { capabilities = capabilities }
      lspconfig.bashls.setup { capabilities = capabilities }
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

local function configure_telescope(use)
  use "nvim-lua/plenary.nvim"
  use {
    "nvim-telescope/telescope.nvim",
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
    end
  }
end

local function configure_md_image_support(use)
  use {
    "t-hg/nvim-md-paste-image",
    config = function()
      require("nvim-md-paste-image").setup()
    end
  }

  use {
    "t-hg/nvim-md-render-image",
    config = function()
      require("nvim-md-render-image").setup()
    end
  }
end

local function configure_file_tree(use)
  use {
  "nvim-neo-tree/neo-tree.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
end

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  configure_syntax_highlighting(use)
  configure_lsp_and_autocompletion(use)
  configure_telescope(use)
  configure_md_image_support(use)
  configure_file_tree(use)
end)
