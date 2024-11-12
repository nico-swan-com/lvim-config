-- Neo an LunarVim configuration
require("user.lvim-options")
require("user.neovim-options")
require("user.keymappings")

-- Appearance
-- =================================================
require("user.appearance")

-- IDE
-- =================================================
require("user.noise").config()

-- LSP
-- =================================================
require("lsp.lsp")

-- Treesitter
-- =================================================
require("treesitter.lvim")

-- Plugins
-- =================================================
require("user.plugins")
require("user.codi")          -- Scratchpad for coding
require("user.todo-comments") -- Add style to TODO comments
-- Coding adds
require("user.copilot")       -- Github AI coding ass eistant


-- Debuggers
-- =================================================
require("user.dap")
require("debuggers.node")
