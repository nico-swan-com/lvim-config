local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "black" },
  {
    name = "prettier",
    filetypes = { "typescript", "typescriptangular" },
  },
  --  {
  --    "nix-community/nixpkgs-fmt"
  --  }
}
