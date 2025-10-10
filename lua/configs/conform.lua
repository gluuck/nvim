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
    eruby = { "erb_format" },
    sql = { "sleek" },
    go = { "gofmt" },
    yaml = { "yamlfmt" },
    vue = { "prettierd" },
  },
  formaters = {
    prettierd = {
      command = "prettierd",
      args = { "--stdin-filepath", "$FILENAME" },
    },
    rubocop = {
      command = "rubocop",
      args = {
        "--autocorrect-all",
        "--format",
        "progress",
        "--stdin",
        "$FILENAME",
      },
      exit_codes = { 0, 1 },
    },
    stylua = {
      command = "stylua",
      args = { "--stdin" },
    },
    gofmt = {
      command = "gofmt",
      args = { "-w", "$FILENAME" },
    }
  },
  format_on_save = {
    timeout_ms = 5000,
    lsp_fallback = true,
    on_format = function(bufnr)
      local conform = require("conform")
      local formatters = conform.get_formatters(bufnr)
      if #formatters > 0 then
        vim.notify("Formatted with: " .. table.concat(formatters, ", "), vim.log.levels.INFO, { title = "Conform" })
      end
    end,
  },
}

return options
