lvim.plugins = {
  -- Appearance
  -- =================================================
  { "dracula/vim" }, -- dracula colorscheme
  --  {
  --    "folke/tokyonight.nvim",
  --    config = function()
  --      require("user.theme").tokyonight()
  --      local _time = os.date "*t"
  --      if (_time.hour >= 9 and _time.hour < 17) and lvim.builtin.time_based_themes then
  --        lvim.colorscheme = "tokyonight-moon"
  --      end
  --    end,
  -- },
  -- {
  --   "rose-pine/neovim",
  --   name = "rose-pine",
  --   config = function()
  --     require("user.theme").rose_pine()
  --     lvim.colorscheme = "rose-pine"
  --   end,
  --   cond = function()
  --     local _time = os.date "*t"
  --     return (_time.hour >= 1 and _time.hour < 9) and lvim.builtin.time_based_themes
  --   end,
  -- },
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   config = function()
  --     require("user.theme").catppuccin()
  --     local _time = os.date "*t"
  --     if (_time.hour >= 17 and _time.hour < 21) and lvim.builtin.time_based_themes then
  --       lvim.colorscheme = "catppuccin-mocha"
  --     end
  --   end,
  -- },
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
