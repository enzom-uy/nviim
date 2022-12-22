local plugins = {
  -- LSP, autocompletion and Treesitter stuff.
  "onsails/lspkind-nvim",
  "hrsh7th/cmp-nvim-lsp",
  "neovim/nvim-lspconfig",
  "hrsh7th/nvim-cmp",
  "glepnir/lspsaga.nvim",
  "L3MON4D3/LuaSnip",
  { "nvim-treesitter/nvim-treesitter", cmd = "TSUpdate" },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufReadPre",
    config = function() require("treesitter-context").setup() end,
  },
  {
    "VonHeikemen/lsp-zero.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "rafamadriz/friendly-snippets",
    },
  },

  -- Formatting
  { "jose-elias-alvarez/null-ls.nvim", after = "BufEnter" },

  -- UI
  "nvim-lualine/lualine.nvim",
  { "folke/zen-mode.nvim", cmd = "ZenMode" },
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" }, tag = "nightly" },
  "akinsho/nvim-bufferline.lua",
  { "stevearc/dressing.nvim", event = "VeryLazy" },
  "goolord/alpha-nvim",

  -- Tools
  { "numToStr/Comment.nvim", event = "BufEnter" },
  { "kylechui/nvim-surround", event = "BufEnter" },
  { "JoosepAlviste/nvim-ts-context-commentstring", event = "BufEnter" },
  { "mbbill/undotree", event = "BufEnter" },
  { "David-Kunz/treesitter-unit", lazy = true },
  { "nvim-telescope/telescope.nvim", event = "VeryLazy" },
  { "nvim-telescope/telescope-ui-select.nvim", event = "VeryLazy" },
  { "windwp/nvim-autopairs", event = "BufEnter" },
  { "windwp/nvim-ts-autotag", event = "BufEnter" },
  { "norcalli/nvim-colorizer.lua", event = "BufEnter" },

  { "TimUntersberger/neogit", cmd = "Neogit" },
  { "lewis6991/gitsigns.nvim", event = "BufEnter" },

  -- Appearance
  { "luisiacc/gruvbox-baby", lazy = false },
  { "shaunsingh/oxocarbon.nvim", lazy = false, enabled = true },

  -- QOL
  { "ojroques/nvim-bufdel", event = "BufEnter" },
  { "fedepujol/move.nvim", event = "BufEnter" },
  { "mrjones2014/smart-splits.nvim", event = "VeryLazy" },

  -- Utilities
  "nvim-lua/plenary.nvim",
}

require("lazy").setup(plugins)
