local null_ls = require "null-ls"
local b = null_ls.builtins
local helpers = require "null-ls.helpers"
null_ls.setup {
  debug = true,
  sources = {
    helpers.make_builtin {
      method = null_ls.methods.FORMATTING,
      filetypes = { "slim" },
      generator_opts = {
        command = "slimrb",
        args = { "--format", "-" },
        to_stdin = true,
      },
      factory = helpers.formatter_factory,
    },
    b.formatting.deno_fmt,
    b.formatting.prettierd.with {
      filetypes = { "html", "markdown", "css", "scss", "json", "javascript", "yaml", "yml" },
    },
    b.formatting.stylua.with { filetypes = { "lua" } },
    b.formatting.rubocop.with { filetypes = { "ruby" } },
    b.formatting.erb_format.with { filetypes = { "eruby" } },

    b.formatting.gofmt.with { filetypes = { "go" } },

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
