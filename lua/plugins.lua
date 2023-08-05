vim = vim

local function configure_syntax_highlighting(use)
  use({
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = "all",
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      })
    end,
  })
end

local function configure_lsp_and_autocompletion(use)
  use({
    "neovim/nvim-lspconfig",
    config = function()
      vim.api.nvim_create_user_command("LspRename", function()
        vim.lsp.buf.rename()
      end, {})
    end,
  })

  use({
    "hrsh7th/cmp-nvim-lsp",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.gopls.setup({ capabilities = capabilities })
      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.bashls.setup({ capabilities = capabilities })
    end,
  })

  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/vim-vsnip")

  use({
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
  })
end

local function configure_formatting(use)
  use("sbdchd/neoformat")
end

local function configure_fuzzy_finder(use)
  use({
    "nvim-telescope/telescope.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
    end,
  })
end

local function configure_file_tree(use)
  use({
    "nvim-neo-tree/neo-tree.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  })
end

local function configure_md_image_support(use)
  use({
    "t-hg/nvim-md-paste-image",
    config = function()
      require("nvim-md-paste-image").setup()
    end,
  })

  use({
    "t-hg/nvim-md-render-image",
    config = function()
      require("nvim-md-render-image").setup()
    end,
  })
end

local function configure_theme(use)
  use({
    "Mofiqul/dracula.nvim",
    config = function()
      local theme = require("dracula")
      theme.setup({
        colors = {
          bg = "#282C34",
          black = "#21222C",
          bright_blue = "#61AFEF",
          bright_cyan = "#56B6C2",
          bright_green = "#98C379",
          bright_magenta = "#FF92DF",
          bright_red = "#E06C75",
          bright_white = "#DCDFE4",
          bright_yellow = "#E5C07B",
          comment = "#6272A4",
          cyan = "#56B6C2",
          fg = "#F8F8F2",
          green = "#98C379",
          gutter_fg = "#4B5263",
          menu = "#21222C",
          nontext = "#4B5263",
          orange = "#FFB86C",
          pink = "#FF79C6",
          purple = "#C678DD",
          red = "#E06C75",
          selection = "#44475A",
          visual = "#3E4452",
          white = "#DCDFE4",
          yellow = "#E5C07B",
        },
      })
      theme.load()
    end,
  })
end

local function configure_text_manipulation_helpers(use)
  use({
    "t-hg/nvim-block-text",
    config = function()
      require("nvim-block-text").setup()
    end,
  })

  use({
    "t-hg/nvim-align-pattern",
    config = function()
      require("nvim-align-pattern").setup()
    end,
  })
end

return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  configure_syntax_highlighting(use)
  configure_lsp_and_autocompletion(use)
  configure_formatting(use)
  configure_fuzzy_finder(use)
  configure_file_tree(use)
  configure_md_image_support(use)
  configure_theme(use)
  configure_text_manipulation_helpers(use)
end)
