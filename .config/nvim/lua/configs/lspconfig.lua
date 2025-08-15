-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"
local configs = require "lspconfig.configs"

-- 1. Define the Solidity LSP configuration
configs.solidity = {
  default_config = {
    cmd = {'nomicfoundation-solidity-language-server', '--stdio'},
    filetypes = { 'solidity' },
    root_dir = lspconfig.util.find_git_ancestor,
    single_file_support = true,
  },
}

-- 2. Add "solidity" to your list of servers
local servers = { "html", "cssls", "ts_ls", "tailwindcss", "eslint", "gopls", "solidity" }

-- 3. Loop through and set up all servers
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
