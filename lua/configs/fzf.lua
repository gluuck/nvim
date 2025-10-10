-- Configuration for fzf.vim
local M = {}

function M.setup()
  -- Configure fzf binary path if needed
  vim.g.fzf_binary = vim.g.fzf_binary or "fzf"

  -- Configure fzf layout
  vim.g.fzf_layout = {['down'] = '~40%'} 

  -- Configure fzf colors to match the current theme
  vim.g.fzf_colors = {
    ['fg']      = { 'fg', 'Normal' },
    ['bg']      = { 'bg', 'Normal' },
    ['hl']      = { 'fg', 'Comment' },
    ['fg+']     = { 'fg', 'CursorLine', 'CursorColumn', 'Normal' },
    ['bg+']     = { 'bg', 'CursorLine', 'CursorColumn' },
    ['hl+']     = { 'fg', 'Statement' },
    ['info']    = { 'fg', 'PreProc' },
    ['border']  = { 'fg', 'Ignore' },
    ['prompt']  = { 'fg', 'Conditional' },
    ['pointer'] = { 'fg', 'Exception' },
    ['marker']  = { 'fg', 'Keyword' },
    ['spinner'] = { 'fg', 'Label' },
    ['header']  = { 'fg', 'Comment' }
  }

  -- Set up ripgrep as the default search tool for Rg command
  vim.g.fzf_preview_window = { 'right:60%', 'ctrl-/' }
  vim.g.fzf_action = {
    ['ctrl-t'] = 'tab split',
    ['ctrl-x'] = 'split',
    ['ctrl-v'] = 'vsplit'
  }
end

return M