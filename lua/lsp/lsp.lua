require("lsp.formatters")
require("lsp.linters")
require("lsp.code-actions")

-- Show function signature when you type
table.insert(lvim.plugins, {
  "ray-x/lsp_signature.nvim",
  config = function()
    require("lsp/lsp-signature").config()
  end,
  event = { "BufRead", "BufNew" },
})


table.insert(lvim.plugins, {

})
