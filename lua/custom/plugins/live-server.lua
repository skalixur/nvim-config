return {
  'barrett-ruth/live-server.nvim',
  build = 'npm i -g live-server',
  cmd = { 'LiveServerStart', 'LiveServerStop' },
  config = function()
    vim.keymap.set('n', '<leader>lo', vim.cmd.LiveServerStart, { desc = '[O]pen live server' })
    vim.keymap.set('n', '<leader>lp', vim.cmd.LiveServerStop, { desc = 'Sto[P] live server' })
  end,
}
