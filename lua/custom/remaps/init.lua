require 'custom.remaps.harpoon'
require 'custom.remaps.undotree'
require 'custom.remaps.fugitive'
require 'custom.remaps.live-server'
require 'custom.remaps.jump-tag'

require('Comment').setup()

vim.keymap.set('n', '<leader>h', '<C-w>h', { desc = 'Focus window to the right' })

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open explorer' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>p', [["_dp]])

vim.keymap.set('n', '<leader>o', vim.cmd.only, { desc = '[O]nly' })

vim.keymap.set('n', '<leader>rn', function()
  return ':IncRename ' .. vim.fn.expand '<cword>'
end, { expr = true })

vim.keymap.set('n', '<C-s>', vim.cmd.w)
vim.keymap.set('i', '<C-s>', vim.cmd.w)
