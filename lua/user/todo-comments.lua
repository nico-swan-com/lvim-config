local M = {}

table.insert(lvim.plugins, {
  -- highlight your todo comments in different styles
  "folke/todo-comments.nvim",
  dependencies = "nvim-lua/plenary.nvim",
  config = function()
    M.config()
  end,
  event = "BufRead",
})



M.config = function()
  local status_ok, todo = pcall(require, "todo-comments")
  if not status_ok then
    return
  end

  local icons = require("user.lsp_kind").todo_comments
  todo.setup {
    keywords = {
      FIX = { icon = icons.FIX },
      TODO = { icon = icons.TODO, alt = { "WIP" } },
      HACK = { icon = icons.HACK, color = "hack" },
      WARN = { icon = icons.WARN },
      PERF = { icon = icons.PERF },
      NOTE = { icon = icons.NOTE, alt = { "INFO", "NB" } },
      ERROR = { icon = icons.ERROR, color = "error", alt = { "ERR" } },
      REFS = { icon = icons.REFS },
      SAFETY = { icon = icons.SHIELD, color = "hint" },
      audit = { icon = icons.WARN, color = "warning" },
      -- auditissue = { icon = icons.ERROR, color = "error", alt = { "audit-issue" } },
      -- auditinfo = { icon = icons.NOTE, color = "hint", alt = { "audit-info" } },
    },
    highlight = {
      max_line_len = 120,
      pattern = { [[.*<(KEYWORDS)\s*:]], [[\/\/.+(audit)\s+]] },
    },
    colors = {
      error = { "DiagnosticError" },
      warning = { "DiagnosticWarn" },
      info = { "DiagnosticInfo" },
      hint = { "DiagnosticHint" },
      hack = { "Function" },
      ref = { "FloatBorder" },
      default = { "Identifier" },
    },
  }
end

return M
