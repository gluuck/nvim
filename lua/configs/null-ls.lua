local null_ls = require "null-ls"

local b = null_ls.builtins

null_ls.setup {
  debug = true,
  sources = {
    -- webdev stuff
    b.formatting.deno_fmt,
    b.formatting.prettierd.with {
      filetypes = { "html", "markdown", "css", "scss", "json", "javascript", "yaml", "yml" },
    },

    -- Lua
    b.formatting.stylua,

    -- cpp
    b.formatting.clang_format,

    -- ruby
    b.formatting.rubocop.with {
      filetypes = { "ruby" },
    },
    b.diagnostics.rubocop.with { filetypes = { "ruby" } },
    b.formatting.erb_format.with { filetypes = { "eruby" } },
    -- golang
    b.formatting.gofmt,
    b.diagnostics.golangci_lint.with { filetypes = { "go" } },

    -- sql
    b.formatting.sql_formatter.with { filetypes = { "sql" }, command = "sleek" },
  },
}
