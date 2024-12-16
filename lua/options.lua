require "nvchad.options"
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local o = vim.o
local opt = vim.opt
o.cursorlineopt ='both' -- to enable cursorline!
opt.relativenumber = true
opt.termguicolors = true
o.showmatch = true -- Подсвечивать соответствующие скобки при нажатии на них
o.matchtime = 2
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2
o.expandtab = true
o.autoindent = true
o.number = true
o.wrap = false
o.clipboard = "unnamedplus"
o.scrolloff = 8
o.signcolumn = "yes"
-- o.iskeyword:append("-")
o.completeopt = "menu,menuone,noselect"
o.mouse = "a"
o.undofile = true
o.splitright = true
o.splitbelow = true
o.ignorecase = true
o.smartcase = true
o.updatetime = 50 -- Time in ms to wait for a mapped sequence to complete
o.timeoutlen = 300

-- Set completeopt to have a better completion experience
o.completeopt = "menuone,noselect"