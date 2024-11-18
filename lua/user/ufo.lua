local M = {}

M.config = function()
  local status_ok, ufo = pcall(require, "ufo")
  if not status_ok then
    return
  end
  if lvim.builtin.ufo.active then
    vim.o.foldcolumn = "auto:9"
    vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true
    vim.o.fillchars = 'foldopen:▶,foldclose:▼,foldsep: ,fold:▶'
    -- vim.opt.fillchars = {
    --   fold = " ",
    --   eob = " ", -- suppress ~ at EndOfBuffer
    --   diff = "╱", -- alternatives = ⣿ ░ ─
    --   msgsep = "‾",
    --   foldopen = "▾",
    --   foldsep = "│",
    --   foldclose = "▸",
    --   horiz = "━",
    --   horizup = "┻",
    --   horizdown = "┳",
    --   vert = "┃",
    --   vertleft = "┫",
    --   vertright = "┣",
    --   verthoriz = "╋",
    -- }

    -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
    vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

    ufo.setup({
      provider_selector = function(bufnr, filetype, buftype)
        return { 'treesitter', 'indent' }
      end
    })
  end
end
return M
