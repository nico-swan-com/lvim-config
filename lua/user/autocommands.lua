lvim.autocommands = {
  {
    "BufEnter",                                -- see `:h autocmd-events`
    {                                          -- this table is passed verbatim as `opts` to `nvim_create_autocmd`
      pattern = { "*.json", "*.jsonc" },       -- see `:h autocmd-events`
      command = "setlocal wrap",
    }
  },
}
