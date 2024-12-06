-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "gatekeeper",

  transparency = false,
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    ["@keyword"] = { italic = true },
    ["@operator"] = { italic = true },
    ["@type"] = { italic = true },
    ["@type.definition"] = { italic = true },
    ["@variable"] = { italic = true },
    ["@variable.builtin"] = { italic = true },
    ["@type.builtin"] = { italic = true },
    ["@field"] = { italic = true },
    ["@property"] = { italic = true },
    ["@constructor"] = { italic = true },
    ["@constant"] = { italic = true },
    ["@constant.builtin"] = { italic = true },
    ["@function"] = { italic = true },
    ["@function.builtin"] = { italic = true },
    ["@function.macro"] = { italic = true },
    ["@parameter"] = { italic = true },
    ["@tag"] = { italic = true },
    ["@tag.attribute"] = { italic = true },
    ["@tag.delimiter"] = { italic = true },
    ["@text"] = { italic = true },
    ["@text.strong"] = { bold = true },
    ["@text.emphasis"] = { italic = true },
    ["@text.underline"] = { underline = true },
    ["@text.strike"] = { strikethrough = true },
    ["@text.title"] = { bold = true },
    ["@text.literal"] = { italic = true },
    ["@text.uri"] = { underline = true },
    ["@text.math"] = { italic = true },
    ["@text.reference"] = { italic = true },
    ["@text.environment"] = { italic = true },
    ["@text.environment.name"] = { italic = true },
    ["@text.note"] = { italic = true },
    ["@text.todo"] = { italic = true },
    ["@text.warning"] = { italic = true },
    ["@text.danger"] = { italic = true },
    ["@text.diff.add"] = { bold = true },
    ["@text.diff.delete"] = { bold = true },
    ["@text.diff.header"] = { bold = true },
    ["@text.diff.new_file"] = { bold = true },
    ["@text.diff.old_file"] = { bold = true },
    ["@text.diff.renamed_file"] = { bold = true },
    Pmenu = { bg = "#ffffff" },
    PmenuSel = { bg = "#ffffff" },
    PmenuSbar = { bg = "#ffffff" },
    PmenuThumb = { bg = "#ffffff" },
    SignColumn = { bg = "#ffffff" },
    Normal = { bg = { "black", 2 } },
    NormalFloat = { bg = { "black", 2 } },
    ColorColumn = { bg = { "black", 2 } },
    LineNr = { bg = { "black", 2 } },
    CursorLine = { bg = { "black", 2 } },
    filter = {
      dotfiles = true, -- Делаем скрытые файлы видимыми
    },
  },
}

return M
