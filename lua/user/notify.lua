local M = {}


M.config = function()
  local status_ok, notify = pcall(require, "notify")
  if not status_ok then
    return
  end

  -- General border highlights
  -- vim.cmd([[highlight NotifyBorder guifg=#00FF00]])
  -- vim.cmd([[highlight NotifyBackground guibg=#000000]])

  -- vim.cmd([[highlight NotifyERRORBorder guifg=#FF0000]])
  -- vim.cmd([[highlight NotifyWARNBorder guifg=#FFA500]])
  -- vim.cmd([[highlight NotifyINFOBorder guifg=#00FF00]])
  -- vim.cmd([[highlight NotifyDEBUGBorder guifg=#0000FF]])
  -- vim.cmd([[highlight NotifyTRACEBorder guifg=#9400D3]])

  -- vim.cmd([[highlight NotifyERRORTitle guifg=#FF0000]])
  -- vim.cmd([[highlight NotifyWARNTitle guifg=#FFA500]])
  -- vim.cmd([[highlight NotifyINFOTitle guifg=#00FF00]])
  -- vim.cmd([[highlight NotifyDEBUGTitle guifg=#0000FF]])
  -- vim.cmd([[highlight NotifyTRACETitle guifg=#9400D3]])

  -- vim.cmd([[highlight NotifyERRORBody guifg=#FF0000]])
  -- vim.cmd([[highlight NotifyWARNBody guifg=#FFA500]])
  -- vim.cmd([[highlight NotifyINFOBody guifg=#00FF00]])
  -- vim.cmd([[highlight NotifyDEBUGBody guifg=#0000FF]])
  -- vim.cmd([[highlight NotifyTRACEBody guifg=#9400D3]])

  notify.setup({
    background_colour = "#000000",
    stages = "fade"
    -- fps = 30,
    -- icons = {
    --   DEBUG = "",
    --   ERROR = "",
    --   INFO = "",
    --   TRACE = "✎",
    --   WARN = ""
    -- },
    -- level = 2,
    -- minimum_width = 50,
    -- render = "fault",
    -- stages = "fade_in_slide_out",
    -- time_formats = {
    --   notification = "%T",
    --   notification_history = "%FT%T"
    -- },
    -- timeout = 5000,
    -- top_down = true
  })
end

return M
