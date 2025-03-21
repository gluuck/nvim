local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "prisma",
    "go",
    "ruby",
    "sql",
    "slim",
  },
  indent = {
    enable = true,
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  dotfiles = true,
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "eslint_d",
    "clangd",
    "clang-format",
    "node-debug2-adapter",
    "gopls",
    "gradle_ls",
    "ruby-lsp",
  },
}

-- git support in nvimtree
-- M.nvimtree = {
--   git = {
--     enable = true,
--   },
--
--   renderer = {
--     highlight_git = true,
--     icons = {
--       show = {
--         git = true,
--       },
--       glyphs = {
--         git = {
--           unstaged = '!',
--           staged = '+',
--           unmerged = '',
--           renamed = '➜',
--           untracked = '?',
--           deleted = '',
--           ignored = '',
--         },
--       },
--     },
--   },
M.nvimtree = {
  view = {
    width = "20%",
  },
  git = {
    enable = true,
    ignore = false,
  },
  filters = {
    custom = {
      "^\\.git$",
    },
    dotfiles = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
      glyphs = {
        git = {
          unstaged = "!",
          staged = "+",
          unmerged = "",
          renamed = "➜",
          untracked = "?",
          deleted = "",
          ignored = "",
        },
      },
    },
  },
}

return M
