lvim.plugins = {
  -- Appearance
  -- =================================================
  { "dracula/vim" }, -- dracula colorscheami
  -- Extensible UI for Neovim notifications and LSP progress messages.
  {
    "j-hui/fidget.nvim",
    config = function()
      require("user.fidget_spinner").config()
    end,
    -- disable = lvim.builtin.noice.active,
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

-- Coding adds
-- =================================================
require("user.copilot") -- Github AI coding ass eistant


-- IDE
-- =================================================
require("user.noise")
