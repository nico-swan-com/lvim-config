-- Neo an LunarVim configuration
require("user.neovim-options").config()
require("user.lvim-options")
require("user.keymappings")

-- Customizations
-- =================================================
lvim.builtin.notify = { active = true }
lvim.builtin.noice = { active = true }            -- enables noice.nvim and inc-rename.nvim
lvim.builtin.fancy_statusline = { active = true } -- enable/disable fancy statusline
lvim.builtin.fancy_wild_menu = { active = true }  -- enable/disable cmp-cmdline
lvim.builtin.markdown = { active = true }         -- enable/disable markdown.nvim
-- lvim.builtin.dap = { active = true }              -- change this to enable/disable debugging
-- lvim.builtin.test_runner = { active = true, runner = "neotest" }             -- change this to enable/disable ultest or neotest
-- lvim.builtin.web_programming = { active = true, extra = "typescript.nvim" } -- (typescript.nvim or typescript-tools.nvim) + package-info.nvim

-- lvim.builtin.lastplace = { active = true }                                  -- change to false if you are jumping to future
-- lvim.builtin.trouble = { active = true }                                    -- enable/disable trouble.nvim
-- lvim.builtin.persistence = { active = true }                                -- change to false if you don't want persistence
-- lvim.builtin.tag_provider = "symbols-outline"                               -- change this to use different tag providers ( symbols-outline or vista or outline)
-- lvim.builtin.presence = { active = true }                                   -- change to true if you want discord presence
-- lvim.builtin.neoclip = { active = true, enable_persistent_history = false } -- clipboard manager
-- lvim.builtin.harpoon = { active = true }                                    -- use the harpoon plugin use fewr key strokes
-- lvim.builtin.sidebar = { active = false }                                   -- enable/disable sidebar
-- lvim.builtin.file_browser = { active = true }                               -- enable/disable telescope file browser
-- lvim.builtin.colored_args = true                                            -- if true then sets up hlargs.nvim
-- lvim.builtin.indentlines.mine = false                                       -- NOTE: using v3 till fixed upstream in lunarvim
-- -- lvim.builtin.which_key.active = false -- pin to v2.0.1
-- lvim.builtin.which_key.mine = true                                          -- pin to v2.0.1
-- lvim.builtin.fancy_diff = { active = false }                                -- enable/disable fancier git diff
-- lvim.builtin.project.mine = false

-- --   Development
-- lvim.builtin.sql_integration = { active = true }                            -- use sql integration
-- lvim.builtin.metals = {
--   active = false, -- enable/disable nvim-metals for scala development
--   fallbackScalaVersion = "3.2.0-RC3",
--   serverVersion = "1.0.1",
--   bloopVersion = "1.5.11",
-- }
-- lvim.builtin.refactoring = { active = false } -- enable to use refactoring.nvim code_actions



-- --    AI Tools
lvim.builtin.github_copilot = { active = true } -- enable/disable github copilot

-- LSP
-- =================================================
require("lsp.lsp")

-- Treesitter
-- ================================================-- =
require("treesitter.lvim")

-- Plugins
-- =================================================
require("user.plugins")
require("user.fidget")
require("user.ufo").config()
require("user.copilot") -- Github AI coding ass eistant

-- Debuggers
-- =================================================
require("user.dap").config()

-- Appearance
-- =================================================
require("user.appearance")

-- BuiltIn
-- =================================================
require("user.builtins")
