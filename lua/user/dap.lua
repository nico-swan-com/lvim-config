-- plugin for vscode debugger
table.insert(lvim.plugins, {
  "mxsdev/nvim-dap-vscode-js",
  dependencies = {
    "mfussenegger/nvim-dap",
  },
})

-- Plugin to install adapters
table.insert(lvim.plugins, {
  "jay-babu/mason-nvim-dap.nvim",
})

require("mason-nvim-dap").setup({
  ensure_installed = { "bash", "chrome", "js", "node2" },
  automatic_installation = true,
})

--  ['python'] = 'debugpy',
-- ['cppdbg'] = 'cpptools',
-- ['delve'] = 'delve',
-- ['node2'] = 'node-debug2-adapter',
-- ['chrome'] = 'chrome-debug-adapter',
-- ['firefox'] = 'firefox-debug-adapter',
-- ['php'] = 'php-debug-adapter',
-- ['coreclr'] = 'netcoredbg',
-- ['js'] = 'js-debug-adapter',
-- ['codelldb'] = 'codelldb',
-- ['bash'] = 'bash-debug-adapter',
-- ['javadbg'] = 'java-debug-adapter',
-- ['javatest'] = 'java-test',
-- ['mock'] = 'mockdebug',
-- ['puppet'] = 'puppet-editor-services',
-- ['elixir'] = 'elixir-ls',
-- ['kotlin'] = 'kotlin-debug-adapter',
-- ['dart'] = 'dart-debug-adapter',
-- ['haskell'] = 'haskell-debug-adapter',
-- ['erlang'] = 'erlang-debugger',
