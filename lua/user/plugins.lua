lvim.plugins = {
  -- IDE
  -- ===============================================
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },
  {
    "hrsh7th/cmp-cmdline",
    enabled = lvim.builtin.fancy_wild_menu.active,
  },
  -- Extensible UI for Neovim notifications and LSP progress messages.
  {
    "j-hui/fidget.nvim",
    config = function()
      require("user.fidget-spinner").config()
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

  -- Markdown
  {
    "npxbr/glow.nvim",
    ft = { "markdown" }
  },

  -- Coding adds
  -- =================================================
  -- autoclose and autorename html tag
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

}
