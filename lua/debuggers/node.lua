require('dap.ext.vscode').load_launchjs()

-- setup adapters
require("dap").adapters["node"] = {
  type = "executable",
  command = "node",
  args = { vim.fn.stdpath('data') .. '/mason/packages/node-debug2-adapter/out/src/nodeDebug.js' },
}

require("dap").adapters["chrome"] = {
  type = "executable",
  command = "node",
  args = { vim.fn.stdpath('data') .. '/mason/packages/chrome-debug-adapter/out/src/chromeDebug.js' },
}

for _, language in ipairs({ 'typescript', 'javascript' }) do
  require("dap").configurations[language] = {

    {
      name = 'Attach',
      port = 9229,
      request = 'attach',
      sourceMaps = true,
      skipFiles = { '<node_internals>/**' },
      type = 'node',
      protocol = 'inspector'
    },
    {
      name = "Launch Chrome against localhost",
      type = "chrome",
      request = "launch",
      url = "http://localhost:4200",
      webRoot = "${workspaceFolder}"
    }
    -- {
    --   name = 'Launch',
    --   type = 'pwa-node',
    --   request = 'launch',
    --   program = '${file}',
    --   rootPath = '${workspaceFolder}',
    --   cwd = '${workspaceFolder}',
    --   sourceMaps = true,
    --   skipFiles = { '<node_internals>/**' },
    --   protocol = 'inspector',
    --   console = 'integratedTerminal',
    -- },
    -- {
    --   name = 'Attach to node process',
    --   type = 'pwa-node',
    --   request = 'attach',
    --   rootPath = '${workspaceFolder}',
    --   processId = require('dap.utils').pick_process,
    -- }
  }
end
--
-- glanguage config
-- for _, language in ipairs({ 'typescript', 'javascript' }) do
--   dap.configurations[language] = {
--     {
--       name = 'Attach',
--       port = 9229,
--       request = 'attach',
--       sourceMaps = true,
--       skipFiles = { '<node_internals>/**' },
--       type = 'pwa-node',
--       protocol = 'inspector'
--     },
--     {
--       name = 'Launch',
--       type = 'pwa-node',
--       request = 'launch',
--       program = '${file}',
--       rootPath = '${workspaceFolder}',
--       cwd = '${workspaceFolder}',
--       sourceMaps = true,
--       skipFiles = { '<node_internals>/**' },
--       protocol = 'inspector',
--       console = 'integratedTerminal',
--     },
--     {
--       name = 'Attach to node process',
--       type = 'pwa-node',
--       request = 'attach',
--       rootPath = '${workspaceFolder}',
--       processId = require('dap.utils').pick_process,
--     }
--   }
-- end
