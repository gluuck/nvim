return {
  { import = "nvchad.blink.lazyspec" },
  {
    "nvchad/base46",
    lazy = true,
    build = function()
      require("base46").load_all_highlights()
    end,
  },
  { "NvChad/colorify", enabled = false },
  { "nvim-lualine/lualine.nvim" },
  { "rubocop/rubocop", cmd = "RuboCop" },
  { "kuntoaji/kakvim" },
  { "luochen1990/rainbow" },
  { "declancm/cinnamon.nvim" },
  { "vim-ruby/vim-ruby" },
  { "tpope/vim-surround" },
  -- { "tpope/vim-endwise" },
  { "RRethy/nvim-treesitter-endwise" },
  { "tpope/vim-repeat" },
  { "olimorris/neotest-rspec" },
  { "kassio/neoterm" },
  { "nvim-neotest/neotest-vim-test" },
  { "stephpy/vim-yaml" },
  { "Xuyuanp/nerdtree-git-plugin" },
  { "tpope/vim-fugitive" },
  { "airblade/vim-gitgutter" },
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
  -- {
  --   "jose-elias-alvarez/null-ls.nvim",
  --   event = "BufWritePre",
  -- },

  { "nvim-neotest/nvim-nio" },
  { "nvim-lua/plenary.nvim" },
  { "stevearc/oil.nvim" },
  { "nvim-treesitter/nvim-treesitter" },
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
    },
    dependencies = {
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-buffer",
    },
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      table.insert(opts.sources, { name = "path" })
      table.insert(opts.sources, { name = "buffer" })
    end,
  },
  { "nvim-telescope/telescope.nvim" },
  { "nvim-telescope/telescope-file-browser.nvim" },
  { "nvim-telescope/telescope-media-files.nvim" },
  { "nvim-telescope/telescope-ui-select.nvim" },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("fzf-lua").setup {
        -- Настройка внешнего вида
        fzf_opts = {
          ["--layout"] = "reverse",
          ["--height"] = "90%",
          ["--info"] = "inline",
          ["--border"] = "rounded",
          ["--prompt"] = "🔍 ",
          ["--pointer"] = "▶",
          ["--marker"] = "✓",
        },
        -- Настройка цветов
        color_icons = true,
        winopts = {
          height = 0.9,
          width = 0.9,
          row = 0.40,
          col = 0.50,
          preview = {
            default = "bat",
            layout = "vertical",
            vertical = "up:65%",
            delay = 50,
            winopts = {
              number = false,
              relativenumber = false,
            },
          },
        },
        -- Настройка файловых команд
        files = {
          prompt = " 🐢 ",
          cmd = "find . -type f -not -path '*/\\.git/*' | sed 's/^..//' ",
        },
        grep = {
          prompt = " 🔎 ",
          rg_opts = "--column --line-number --no-heading --color=always --smart-case --max-columns=400",
        },
      }
    end,
    keys = {
      { "<leader>ff", "<cmd>lua require('fzf-lua').files()<CR>", desc = "Find Files (fzf-lua)" },
      { "<leader>fg", "<cmd>lua require('fzf-lua').live_grep_native()<CR>", desc = "Find Text in Files (fzf-lua)" },
      { "<leader>fb", "<cmd>lua require('fzf-lua').buffers()<CR>", desc = "Find Buffers (fzf-lua)" },
      { "<leader>fh", "<cmd>lua require('fzf-lua').oldfiles()<CR>", desc = "Search History (fzf-lua)" },
    },
  },
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

      require("dap-ruby").setup()

      dap.adapters.go = {
        type = "server",
        port = "${port}",
        executable = {
          command = "dlv",
          args = { "dap", "-l", "127.0.0.1:${port}" },
        },
      }

      dap.configurations.go = {
        {
          type = "go",
          name = "Debug",
          request = "launch",
          program = "${fileDirname}",
        },
      }

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
      "suketa/nvim-dap-ruby",
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
  { "nrempel/sleek" },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      plugins = {
        spelling = {
          enabled = true,
          suggestions = 20,
        },
      },
    },
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "sbdchd/neoformat",
    config = function()
      require("neoformat").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
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
    dependencies = { "MunifTanjim/nui.nvim" },
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
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    cmd = { "Neotree" },
    opts = {
      sources = { "filesystem", "buffers", "git_status" },
      source_selector = {
        winbar = true,
        statusline = false,
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignore = false,
          hide_by_name = {
            -- ".git",  -- uncomment to hide .git directory
          },
          always_show = { -- Show all these files even if they are ignored
            ".env",
            ".env.local",
            ".env.development",
            ".env.production",
            ".env.test",
            ".gitignore",
            ".gitconfig",
            ".bashrc",
            ".zshrc",
            ".vimrc",
            ".config",
            "node_modules",
            ".bundle",
          },
          always_show_by_filetype = {
            ".env",
            ".gitconfig",
            "gitignore",
            "config",
            "bashrc",
            "zshrc",
          },
          never_show = { -- remains hidden even if `show_hidden` is true
            --".git", -- if you want to hide .git folder completely
          },
          never_show_by_filetype = {
            --"jpg", "png", "gif", -- example filetypes that would be hidden
          },
        },
        follow_current_file = {
          enabled = true,
        },
      },
      window = {
        width = 30,
        mappings = {
          ["<space>"] = "none", -- Disable space key
          ["H"] = "toggle_hidden", -- Toggle hidden files visibility
        },
      },
    },
    keys = {
      { "<C-n>", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
    },
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },

  -- Indent animations
  {
    "echasnovski/mini.indentscope",
    version = "2.0.0",
    event = "BufReadPre",
    opts = {
      symbol = "│",
      options = { try_as_border = true },
    },
    config = function(_, opts)
      require("mini.indentscope").setup(opts)
    end,
  },

  {
    "themaxmarchuk/tailwindcss-colors.nvim",
    -- load only on require("tailwindcss-colors")
    module = "tailwindcss-colors",
    opts = {
      autocompletion = {
        complete = true,
      },
      -- require("cmp").setup {
      --   sources = {
      --     { name = "buffer" }, -- Для автозавершения из буфера
      --     { name = "path" }, -- Для автозавершения путей
      --     -- другие источники при необходимости
      --   },
      -- },
    },
    config = function(_, opts)
      require("tailwindcss-colors").setup(opts)
    end,
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      indent = { enabled = true },
      input = { enabled = true },
      notifier = {
        enabled = true,
        timeout = 3000,
      },
      quickfile = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = { enabled = true },
      words = { enabled = true },
      styles = {
        notification = {
          -- wo = { wrap = true } -- Wrap notifications
        },
      },
    },
    keys = {
      {
        "<leader>z",
        function()
          Snacks.zen()
        end,
        desc = "Toggle Zen Mode",
      },
      {
        "<leader>Z",
        function()
          Snacks.zen.zoom()
        end,
        desc = "Toggle Zoom",
      },
      {
        "<leader>.",
        function()
          Snacks.scratch()
        end,
        desc = "Toggle Scratch Buffer",
      },
      {
        "<leader>S",
        function()
          Snacks.scratch.select()
        end,
        desc = "Select Scratch Buffer",
      },
      {
        "<leader>n",
        function()
          Snacks.notifier.show_history()
        end,
        desc = "Notification History",
      },
      {
        "<leader>bd",
        function()
          Snacks.bufdelete()
        end,
        desc = "Delete Buffer",
      },
      {
        "<leader>cR",
        function()
          Snacks.rename.rename_file()
        end,
        desc = "Rename File",
      },
      {
        "<leader>gB",
        function()
          Snacks.gitbrowse()
        end,
        desc = "Git Browse",
      },
      {
        "<leader>gb",
        function()
          Snacks.git.blame_line()
        end,
        desc = "Git Blame Line",
      },
      {
        "<leader>gf",
        function()
          Snacks.lazygit.log_file()
        end,
        desc = "Lazygit Current File History",
      },
      {
        "<leader>gg",
        function()
          Snacks.lazygit()
        end,
        desc = "Lazygit",
      },
      {
        "<leader>gl",
        function()
          Snacks.lazygit.log()
        end,
        desc = "Lazygit Log (cwd)",
      },
      {
        "<leader>un",
        function()
          Snacks.notifier.hide()
        end,
        desc = "Dismiss All Notifications",
      },
      {
        "<c-/>",
        function()
          Snacks.terminal()
        end,
        desc = "Toggle Terminal",
      },
      {
        "<c-_>",
        function()
          Snacks.terminal()
        end,
        desc = "which_key_ignore",
      },
      {
        "]]",
        function()
          Snacks.words.jump(vim.v.count1)
        end,
        desc = "Next Reference",
        mode = { "n", "t" },
      },
      {
        "[[",
        function()
          Snacks.words.jump(-vim.v.count1)
        end,
        desc = "Prev Reference",
        mode = { "n", "t" },
      },
      {
        "<leader>N",
        desc = "Neovim News",
        function()
          Snacks.win {
            file = vim.api.nvim_get_runtime_file("doc/news.txt", false)[1],
            width = 0.6,
            height = 0.6,
            wo = {
              spell = false,
              wrap = false,
              signcolumn = "yes",
              statuscolumn = " ",
              conceallevel = 3,
            },
          }
        end,
      },
    },
    init = function()
      vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        callback = function()
          -- Setup some globals for debugging (lazy-loaded)
          _G.dd = function(...)
            Snacks.debug.inspect(...)
          end
          _G.bt = function()
            Snacks.debug.backtrace()
          end
          vim.print = _G.dd -- Override print to use snacks for `:=` command

          -- Create some toggle mappings
          Snacks.toggle.option("spell", { name = "Spelling" }):map "<leader>us"
          Snacks.toggle.option("wrap", { name = "Wrap" }):map "<leader>uw"
          Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map "<leader>uL"
          Snacks.toggle.diagnostics():map "<leader>ud"
          Snacks.toggle.line_number():map "<leader>ul"
          Snacks.toggle
            .option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 })
            :map "<leader>uc"
          Snacks.toggle.treesitter():map "<leader>uT"
          Snacks.toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map "<leader>ub"
          Snacks.toggle.inlay_hints():map "<leader>uh"
          Snacks.toggle.indent():map "<leader>ug"
          Snacks.toggle.dim():map "<leader>uD"
        end,
      })
    end,
  },
  {
    "folke/todo-comments.nvim",
    event = "FileType",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = require "configs.todo-comments",
    config = function()
      require "configs.todo-comments-autocmd"
    end,
  },
  { "nvzone/volt", lazy = true },

  {
    "nvzone/minty",
    cmd = { "Shades", "Huefy" },
  },
}
