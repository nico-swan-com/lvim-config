-- Neo an LunarVim configuration
require("user.lvim-options")
require("user.neovim-options")
require("user.keymappings")

-- Customizations
-- =================================================
lvim.builtin.noice = { active = true }
lvim.builtin.fancy_wild_menu = { active = true }
lvim.builtin.fancy_statusline = { active = true }

-- LSP
-- =================================================
require("lsp.lsp")

-- Treesitter
-- =================================================
require("treesitter.lvim")

-- Plugins
-- =================================================
require("user.plugins")

-- Debuggers
-- =================================================
require("user.dap")
require("debuggers.node")

-- Appearance
-- =================================================
require("user.appearance")
-- StatusLine
if lvim.builtin.fancy_statusline.active then
  require("user.lualine").config()
end
