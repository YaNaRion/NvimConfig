local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local on_init = require("plugins.configs.lspconfig").on_init

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "ts_ls", "golangci_lint_ls", "eslint", "clangd", "gopls", "pyright" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end --

-- require("lspconfig").grammarly.setup {}
-- lspconfig.pyright.setup {}

-- if not require("lspconfig.configs").hdl_checker then
--   require("lspconfig.configs").hdl_checker = {
--     default_config = {
--       cmd = { "hdl_checker", "--lsp" },
--       filetypes = { "vhdl", "verilog", "systemverilog" },
--       root_dir = function(fname)
--         -- will look for the .hdl_checker.config file in parent directory, a
--         -- .git directory, or else use the current directory, in that order.
--         local util = require("lspconfig").util
--         return util.root_pattern ".hdl_checker.config"(fname)
--           or util.find_git_ancestor(fname)
--           or util.path.dirname(fname)
--       end,
--       settings = {},
--     },
--   }
-- end
--
-- require("lspconfig").hdl_checker.setup {}
