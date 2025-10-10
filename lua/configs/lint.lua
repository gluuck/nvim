require("lint").linters_by_ft = {
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
  typescriptreact = { "eslint_d" },
  javascriptreact = { "eslint_d" },
  css = { "stylelint" },
  markdown = { "markdownlint" },
  html = { "htmlbeautifier" },
  json = { "jsonlint" },
  yaml = { "yamllint" },
  ruby = { "rubocop" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
