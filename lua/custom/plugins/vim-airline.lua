return {
  {
    'vim-airline/vim-airline',
    config = function()
      vim.g.airline_powerline_fonts = 1

      vim.g.airline_left_sep = ''
      vim.g.airline_left_alt_sep = ''
      vim.g.airline_right_sep = ''
      vim.g.airline_right_alt_sep = ''
      vim.g.airline_symbols.branch = ''
      vim.g.airline_symbols.colnr = ' ℅:'
      vim.g.airline_symbols.readonly = ''
      vim.g.airline_symbols.linenr = ' :'
      vim.g.airline_symbols.maxlinenr = '☰ '
      vim.g.airline_symbols.dirty = '⚡'
      vim.g.airline_theme = 'base16_horizon_dark'
    end,
  },
  {
    'vim-airline/vim-airline-themes',
    config = function()
      vim.g.airline_theme = 'base16_horizon_dark'
    end,
  },
}
