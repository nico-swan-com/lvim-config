
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = { "*.lua", "*.py" }

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    name = "shellcheck",
    args = { "--severity", "warning" },
  },
}
