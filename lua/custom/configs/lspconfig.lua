local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local on_init = require("plugins.configs.lspconfig").on_init

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "golangci_lint_ls", "eslint", "clangd", "prettier", "gopls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end --

-- require("lspconfig").grammarly.setup {}
lspconfig.pyright.setup {}
