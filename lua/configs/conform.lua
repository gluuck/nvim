local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    html = { "prettierd" },
    ruby = { "rubocop" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescriptreact = { "prettierd" },
    erb = { "html_beautify" },
    sql = { "sql_formatter" },
  },
  formaters = {
    html_beautify = {
      command = "html-beautify",
      args = { "--type", "html", "--indent-size", "2" },
    },
    sql_formatter = {
      command = "sql-formatter",
      args = { "--indent", "2" },
    },
    prettierd = {
      command = "prettierd",
      args = { "--stdin-filepath", "$FILENAME" },
    },
    rubocop = {
      command = "rubocop",
      args = {
        "--server",
        "-a",
        "-f",
        "quiet",
        "--stderr",
        "--stdin",
        "$FILENAME",
        "--auto-correct",
        "--format",
        "p",
        "--out",
        "$FILENAME",
        "--stdin-filename",
        "$FILENAME",
        "--display-cop-names",
        "--stdin",
        "--format",
        "p",
        "--out",
        "$FILENAME",
        "--stdin-filename",
      },
      exit_codes = { 0, 1 },
    },
    stylua = {
      command = "stylua",
      args = { "--stdin" },
    },
    rubyfmt = {
      command = "rubyfmt",
      args = { "--stdin", "--fix", "--verbose", "--format", "--singlequote" },
          
    },
    -- standardrb = { args = { "--stdin", "--fix", "--verbose", "--format", "--singlequote" } },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 3000,
    lsp_fallback = true,
  },
}

return options
