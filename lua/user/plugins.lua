lvim.plugins = {
  -- IDE
  -- ===============================================
  -- Enhance the comments
  {
    "folke/ts-comments.nvim",
    opts = {},
    event = "VeryLazy",
    enabled = vim.fn.has("nvim-0.10.0") == 1,
  },
  {
    -- Popup window to get color
    "max397574/colortils.nvim",
    cmd = "Colortils",
    config = function()
      require("user.colortils").config()
    end,
  },
  {
    -- Commonly used keymappings
    'tummetott/unimpaired.nvim',
    event = 'VeryLazy',
    opts = {
      -- add options here if you wish to override the default settings
    },
  },
  {
    -- Preview markdown
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
    enabled = lvim.builtin.markdown.active
  },
  {
    -- Sidebar symbol selection
    'stevearc/aerial.nvim',
    opts = function()
      require("user.aerial").config()
    end,
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
  },

  {
    -- Improves input windows and other UX
    'stevearc/dressing.nvim',
    opts = {},
  },
  {
    -- Creates notification message
    "rcarriga/nvim-notify",
    config = function()
      require("user.notify").config()
    end,
  },
  {
    --- imporves notification messages
    "folke/noice.nvim",
    event = "VeryLazy",
    config = function()
      require("user.noice").config()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "echasnovski/mini.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    "hrsh7th/cmp-cmdline",
    enabled = lvim.builtin.fancy_wild_menu.active,
  },
  {
    -- A high-performance color highlighter for Neovim which has no external dependencies! Written in performant Luajit.
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("user.colorizer").config()
    end,
    event = "BufReadPre",
  },
  {
    -- Extensible UI for Neovim notifications and LSP progress messages.
    "j-hui/fidget.nvim",
    config = function()
      -- require("user.fidget-spinner").config()
      require("user.fidget").config()
    end,
    -- disable = lvim.builtin.noice.active,
  },
  {
    -- highlight your todo comments in different styles
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("user.todo-comments").config()
    end,
    event = "BufRead",
  },
  -- {
  --   "neoclide/coc.nvim",
  --   branch = "master",
  --   build = "npm ci"
  -- },
  {
    --  Better folding
    "kevinhwang91/nvim-ufo",
    dependencies = {
      "kevinhwang91/promise-async",
    }
  },
  -- Markdown
  -- {
  --   "npxbr/glow.nvim",
  --   ft = { "markdown" }
  -- },

  -- Coding adds
  -- =================================================
  -- autoclose and autorename html tag
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  -- DAP
  -- =================================================
  {
    "mxsdev/nvim-dap-vscode-js",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
  },
  -- Plugin to install adapters
  {
    "jay-babu/mason-nvim-dap.nvim",
  },

  -- AI
  -- =================================================
  {
    "zbirenbaum/copilot-cmp",
    event = "InsertEnter",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup()   -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
        require("copilot_cmp").setup() -- https://github.com/zbirenbaum/copilot-cmp/blob/master/README.md#configuration
      end, 100)
    end,
  },
  { "codota/tabnine-nvim", build = "./dl_binaries.sh" },

}
-- Coding adds
