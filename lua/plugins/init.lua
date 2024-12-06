return {
  { "rubocop/rubocop", cmd = "RuboCop" },
  { "kuntoaji/kakvim" },
  { "luochen1990/rainbow" },
  { "declancm/cinnamon.nvim" },
  { "vim-ruby/vim-ruby" },
  { "tpope/vim-surround" },
  { "tpope/vim-endwise" },
  { "tpope/vim-repeat" },
  { "olimorris/neotest-rspec" },
  { "kassio/neoterm" },
  { "nvim-neotest/neotest-vim-test" },
  { "stephpy/vim-yaml" },
  { "Xuyuanp/nerdtree-git-plugin" },
  { "tpope/vim-fugitive" },
  { "tpope/vim-rhubarb" },
  { "vim-scripts/ReplaceWithRegister" },
  { "tpope/vim-commentary" },
  { "tpope/vim-sleuth" },
  { "tpope/vim-dadbod" },
  { "kristijanhusak/vim-hybrid-material" },
  { "kristijanhusak/vim-hybrid" },
  { "rhysd/vim-grammarous" },
  { "nelstrom/vim-textobj-rubyblock" },
  { "kana/vim-textobj-user" },
  { "mfussenegger/nvim-lint" },
  { "kana/vim-textobj-entire" },
  { "kana/vim-textobj-indent" },
  { "kana/vim-textobj-line" },
  { "kana/vim-textobj-syntax" },
  { "honza/vim-snippets" },
  { "sirver/ultisnips" },
  { "etordera/deoplete-rails" },
  { "ekalinin/dockerfile.vim" },
  { "ap/vim-css-color" },
  { "alvan/vim-closetag" },
  { "tpope/vim-abolish" },
  { "tpope/vim-ragtag" },
  { "vim-scripts/VimCompletesMe" },
  { "Shougo/neosnippet.vim" },
  { "Shougo/neosnippet-snippets" },
  { "Shougo/deoplete.nvim" },
  { "Shougo/echodoc.vim" },
  { "Shougo/context_filetype.vim" },
  { "Shougo/neco-vim" },
  { "Shougo/neco-syntax" },
  { "Keithbsmiley/rspec.vim" },
  { "stevearc/conform.nvim" },
  { "jose-elias-alvarez/null-ls.nvim" },
  { "nvim-neotest/nvim-nio" },
  { "nvim-lua/plenary.nvim" },
  { "nvim-treesitter/nvim-treesitter" },
  { "neovim/nvim-lspconfig" },
  { "williamboman/nvim-lsp-installer" },
  {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-emoji",
    },
    dependencies = {
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-buffer",
    },
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      table.insert(opts.sources, { name = "emoji" })
      table.insert(opts.sources, { name = "path" })
      table.insert(opts.sources, { name = "buffer" })
    end,
  },
  { "jose-elias-alvarez/null-ls.nvim" },
  { "mfussenegger/nvim-dap" },
  { "rcarriga/nvim-dap-ui" },
  { "nvim-telescope/telescope.nvim" },
  { "nvim-telescope/telescope-file-browser.nvim" },
  { "nvim-telescope/telescope-media-files.nvim" },
  { "nvim-telescope/telescope-ui-select.nvim" },
  { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
  { "nvim-telescope/telescope-fzy-native.nvim" },
  { "nvim-telescope/telescope-symbols.nvim" },
  { "nvim-telescope/telescope-project.nvim" },
  { "nvim-telescope/telescope-live-grep-args.nvim" },
  { "nvim-telescope/telescope-dap.nvim" },
  { "nvim-telescope/telescope-media-files.nvim" },
  {
    "nvim-neotest/neotest",
    event = "VeryLazy",
    config = function()
      require("neotest").setup {
        adapters = {
          require "neotest-jest" {
            jestCommand = "npm test --",
            jestConfigFile = "jest.config.ts",
            env = { CI = true },
            cwd = function(path)
              return vim.fn.getcwd()
            end,
          },
        },
      }
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "haydenmeade/neotest-jest",
    },
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      local ok, dap = pcall(require, "dap")
      if not ok then
        return
      end
      dap.configurations.typescript = {
        {
          type = "node2",
          name = "node attach",
          request = "attach",
          program = "${file}",
          cwd = vim.fn.getcwd(),
          sourceMaps = true,
          protocol = "inspector",
        },
      }
      dap.adapters.node2 = {
        type = "executable",
        command = "node-debug2-adapter",
        args = {},
      }
    end,
    dependencies = {
      "mxsdev/nvim-dap-vscode-js",
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function()
      require("dapui").setup()

      local dap, dapui = require "dap", require "dapui"

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open {}
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close {}
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close {}
      end
    end,
    dependencies = {
      "mfussenegger/nvim-dap",
    },
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "ruby",
        "go",
        "sql",
        "javascript",
        "typescript",
        "json",
        "jsonc",
        "toml",
        "yaml",
        "markdown",
        "markdown_inline",
      },
    },
  },
  {
    "nvim-neotest/nvim-nio",
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      local ok, dap = pcall(require, "dap")
      if not ok then
        return
      end
      dap.configurations.typescript = {
        {
          type = "node2",
          name = "node attach",
          request = "attach",
          program = "${file}",
          cwd = vim.fn.getcwd(),
          sourceMaps = true,
          protocol = "inspector",
        },
      }
      dap.adapters.node2 = {
        type = "executable",
        command = "node-debug2-adapter",
        args = {},
      }
    end,
    dependencies = {
      "mxsdev/nvim-dap-vscode-js",
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function()
      require("dapui").setup()

      local dap, dapui = require "dap", require "dapui"

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open {}
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close {}
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close {}
      end
    end,
    dependencies = {
      "mfussenegger/nvim-dap",
    },
  },
  {
    "Exafunction/codeium.vim",
    lazy = false,
  },
  {
    "slim-template/vim-slim", -- Syntax highlighting for VIM
    ft = "slim",
  },
  {
    "wnkz/monoglow.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "brenoprata10/nvim-highlight-colors",
    optional = true,
    opts = { enable_tailwind = true, enable_named_colors = true, virtual_symbol = "" },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      transparent = true,
    },
  },
  -- {
  --   "sql-formatter-org/sql-formatter",
  --   lazy = false,
  --   priority = 1000,
  --   build = "npm install",
  --   opts = {
  --     tab_width = 2,
  --     use_tabs = false,
  --   },
  --   config = function(_, opts)
  --     require("sql-formatter").setup(opts)
  --   end,
  -- },
  -- {
  --   "tpope/vim-dadbod-ui",
  --   lazy = false,
  --   priority = 1000,
  -- },
  {
    "tpope/vim-dadbod",
    lazy = false,
    priority = 1000,
  },
  {
    "echasnovski/mini.ai",
    event = "VeryLazy",
    opts = function()
      local ai = require "mini.ai"
      return {
        n_lines = 500,
        custom_textobjects = {
          o = ai.gen_spec.treesitter {
            a = { "@block.outer", "@conditional.outer", "@loop.outer" },
            i = { "@block.inner", "@conditional.inner", "@loop.inner" },
          },
          f = ai.gen_spec.treesitter { a = "@function.outer", i = "@function.inner" },
          c = ai.gen_spec.treesitter { a = "@class.outer", i = "@class.inner" },
          t = { "<([%p%w]-)%f[^<%w][^<>]->.-</%1>", "^<.->().*()</[^/]->$" },
          d = { "%f[%d]%d+" },
          e = {
            { "%u[%l%d]+%f[^%l%d]", "%f[%S][%l%d]+%f[^%l%d]", "%f[%P][%l%d]+%f[^%l%d]", "^[%l%d]+%f[^%l%d]" },
            "^().*()$",
          },
        },
      }
    end,
    config = function(_, opts)
      require("mini.ai").setup(opts)
    end,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      plugins = {
        presets = {
          operators = false,
        },
      },
    },
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n", "o" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
      {
        "R",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "Treesitter Search",
      },
      {
        "<c-s>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "Toggle Flash Search",
      },
    },
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
      },
    },
  },
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = {},
  },
  {
    "folke/twilight.nvim",
    event = "VeryLazy",
    opts = {},
  },
  {
    "folke/zen-mode.nvim",
    event = "VeryLazy",
    opts = {},
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
    },
  },
  { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim", "nvim-tree/nvim-web-devicons" },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy",
    main = "ibl",
    opts = {},
    config = function()
      require("indent_blankline").setup {
        char = "▏",
        use_treesitter = true,
        show_current_context = true,
        show_current_context_start = true,
        buftype_exclude = { "terminal" },
      }
    end,
  },

  -- Indent animations
  {
    "echasnovski/mini.indentscope",
    version = "*",
    event = "BufReadPre",
    opts = {
      symbol = "│",
      options = { try_as_border = true },
    },
    config = function(_, opts)
      require("mini.indentscope").setup(opts)
    end,
  },
  -- {
  --   "luckasRanarison/tailwind-tools.nvim",
  --   name = "tailwind-tools",
  --   build = ":UpdateRemotePlugins",
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --     "nvim-telescope/telescope.nvim",
  --     "neovim/nvim-lspconfig",
  --   },
  --   opts = {
  --     autocompletion = {
  --       complete = true,
  --     },
  --     require("cmp").setup {
  --       sources = {
  --         { name = "buffer" }, -- Для автозавершения из буфера
  --         { name = "path" }, -- Для автозавершения путей
  --         -- другие источники при необходимости
  --       },
  --     },
  --   },
  -- },
  {
    "themaxmarchuk/tailwindcss-colors.nvim",
    -- load only on require("tailwindcss-colors")
    module = "tailwindcss-colors",
    -- run the setup function after plugin is loaded
    config = function()
      -- pass config options here (or nothing to use defaults)
      require("tailwindcss-colors").setup()
    end,
  },
}
