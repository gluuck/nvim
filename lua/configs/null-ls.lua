local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,                                                                                   -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettierd.with { filetypes = { "html", "markdown", "css", "json", "javascript", "yaml" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
  -- b.formatting.rubocop.with { filetypes = { "ruby" } },
  b.formatting.rubocop.with { filetypes = { "ruby" } },
  b.diagnostics.rubocop.with { filetypes = { "ruby" } },

  -- golang
  b.formatting.gofmt,
  b.diagnostics.golangci_lint.with { filetypes = { "go" } },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
