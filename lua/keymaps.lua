-- [[ Basic Keymaps ]]

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- [[ Custom Keymaps ]]

vim.keymap.set('n', '<leader>h', '<C-w>h', { desc = 'Focus window to the right' })

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open explorer' })

-- vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
-- vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

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

vim.api.nvim_set_keymap('n', '<C-q>', 'o<Esc>O', { noremap = true, silent = true })

local function normalInsertCommentToggle()
  require('Comment.api').toggle.linewise.current()
end

vim.keymap.set('n', '<C-_>', normalInsertCommentToggle, { noremap = true, silent = true })
vim.keymap.set('i', '<C-_>', normalInsertCommentToggle, { noremap = true, silent = true })

local function visualCommentToggle()
  local api = require 'Comment.api'
  local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)
  vim.api.nvim_feedkeys(esc, 'nx', false)
  api.locked 'toggle.linewise'(vim.fn.visualmode())
  vim.cmd 'normal! gv'
end

vim.keymap.set('x', 'gc', visualCommentToggle, { desc = 'Comment toggle linewise (visual) and preserve the visual selection' })
vim.keymap.set('x', '<C-_>', visualCommentToggle, { desc = 'Comment toggle linewise (visual) and preserve the visual selection' })

-- Resize window horizontally
vim.keymap.set('n', '<A-0>', ':vertical resize -5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-9>', ':vertical resize +5<CR>', { noremap = true, silent = true })

-- Resize window vertically
vim.keymap.set('n', '<A-->', ':resize -5<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<A-=>', ':resize +5<CR>', { noremap = true, silent = true })

vim.keymap.set('v', '<leader>a', '<Esc>`>a', { noremap = true, silent = true, desc = '[A]ppend to end of previous selection' })
vim.keymap.set('n', '<leader>a', '<Esc>`>a', { noremap = true, silent = true, desc = '[A]ppend to end of previous selection' })
