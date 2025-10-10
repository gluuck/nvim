-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local nvlsp = require "nvchad.configs.lspconfig"

-- EXAMPLE
local servers = {
  "html",
  "cssls",
  "ts_ls",
  "eslint",
}

-- lsps with default config
for _, server in ipairs(servers) do
  vim.lsp.config(server, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
  vim.lsp.enable(server)
end

vim.lsp.config("gopls", {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
})
vim.lsp.enable("gopls")

vim.lsp.config("ruby_lsp", {
  command = { "bundle", "exec", "ruby-lsp" },
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
})
vim.lsp.enable("ruby_lsp")

-- vim.lsp.config("solargraph", {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- })
-- vim.lsp.enable("solargraph")

vim.lsp.config("rubocop", {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
})
vim.lsp.enable("rubocop")

vim.lsp.config("tailwindcss", {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "vue",
    "svelte",
    "scss",
    "css",
    "less",
    "html",
  },
  init_options = {
    userLanguages = {
      erb = "html",
    },
  },
  settings = {
    tailwindCSS = {
      classAttributes = { "class", "className", "classlist", "classList", "ngClass" },
      lint = {
        cssConflict = "warning",
        invalidApply = "error",
        invalidConfigPath = "error",
        invalidScreen = "error",
        recommendedVariantOrder = "warning",
      },
      validate = true,
    },
  },
})
vim.lsp.enable("tailwindcss")
