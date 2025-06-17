return {

  local_root = vim.fn.getcwd(),

  oil_filetype = "oil",

  view_options = {

    show_hidden = true,
  },

  keymaps = {

    ["<CR>"] = "open_with_window_picker",
  },
}
