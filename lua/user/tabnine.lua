local M = {}


M.config = function()
  local status_ok, tabnine = pcall(require, "tabnine")
  if not status_ok and not lvim.builtin.tabnine.active then
    return
  end

  tabnine.setup({
    disable_auto_comment = true,
    accept_keymap = "<Tab>",
    dismiss_keymap = "<C-]>",
    debounce_ms = 800,
    suggestion_color = { gui = "#808080", cterm = 244 },
    exclude_filetypes = { "TelescopePrompt", "NvimTree" },
    log_file_path = nil, -- absolute path to Tabnine log file
    ignore_certificate_errors = false,
  })
end
return M
