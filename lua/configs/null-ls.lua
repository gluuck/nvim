local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {}

-- webdev stuff
table.insert(sources, b.formatting.deno_fmt)
table.insert(sources, b.formatting.prettierd.with { filetypes = { "html", "markdown", "css", "json", "javascript", "yaml" } })

-- Lua
table.insert(sources, b.formatting.stylua)

-- cpp
table.insert(sources, b.formatting.clang_format)
-- table.insert(sources, b.formatting.rubocop.with { filetypes = { "ruby" } })
table.insert(sources, b.formatting.rubocop.with { filetypes = { "ruby" } })
table.insert(sources, b.diagnostics.rubocop.with { filetypes = { "ruby" } })

-- golang
table.insert(sources, b.formatting.gofmt)
table.insert(sources, b.diagnostics.golangci_lint.with { filetypes = { "go" } })

null_ls.setup {
  debug = true,
  sources = sources,
}
