-- Neo an LunarVim configuration
require("user.lvim-options")
require("user.neovim-options")
require("user.keymappings")

-- Appearance
require("user.appearance")

-- IDE
require("user.noise").config()

-- LSP
require("lsp.lsp")

-- Treesitter
require("treesitter.lvim")

-- Plugins
require("user.plugins")
require("user.codi")
require("user.todo-comments")

-- Debuggers
require("user.dap")
require("debuggers.node")
