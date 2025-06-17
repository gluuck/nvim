local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    html = { "prettierd" },
    -- ruby = { "rubocop" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescriptreact = { "prettierd" },
    eruby = { "erb_format" },
    sql = { "sleek" },
    go = { "gofmt" },
    yaml = { "prettierd" },
    yml = { "prettierd" },
    slim = { "rubocop_slim" },
  },
  formaters = {
    rubocop_slim = {
      command = "rubocop",
      args = { "-A", "--stdin", "%" },
      filetypes = { "ruby", "slim" },
    },
    --   html_beautify = {
    --     command = "html-beautify",
    --     args = { "--type", "html", "erb", "slim", "--indent-size", "2" },
    --   },
    -- sql_formatter = {
    --   command = "sql-formatter",
    --   args = { "--indent", "2" },
    --   on_unavailable = "skip",
    -- },
    -- sqlfmt = {
    --   command = "sqlfmt",
    --   args = { "--indent", "2" },
    -- },
    --   prettierd = {
    --     command = "prettierd",
    --     args = { "--stdin-filepath", "$FILENAME" },
    --   },
    --   rubocop = {
    --     command = "rubocop",
    --     args = {
    --       "--server",
    --       "-a",
    --       "-f",
    --       "quiet",
    --       "--stderr",
    --       "--stdin",
    --       "$FILENAME",
    --       "--auto-correct",
    --       "--format",
    --       "p",
    --       "--out",
    --       "$FILENAME",
    --       "--stdin-filename",
    --       "$FILENAME",
    --       "--display-cop-names",
    --       "--stdin",
    --       "--format",
    --       "p",
    --       "--out",
    --       "$FILENAME",
    --       "--stdin-filename",
    --     },
    --     exit_codes = { 0, 1 },
    --   },
    --   stylua = {
    --     command = "stylua",
    --     args = { "--stdin" },
    --   },
    --   rubyfmt = {
    --     command = "rubyfmt",
    --     args = { "--stdin", "--fix", "--verbose", "--format", "--singlequote" },
    --
    --   },
    --   rufo = {
    --     command = "rufo",
    --     args = { "--stdin", "--fix", "--verbose", "--format", "--singlequote" },
    --   },
    --   gofmt = {
    --     command = "gofmt",
    --     args = { "-w", "$FILENAME" },
    --   }
    --   -- standardrb = { args = { "--stdin", "--fix", "--verbose", "--format", "--singlequote" } },
  },
  --
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 5000,
    lsp_fallback = true,
  },
}

return options
