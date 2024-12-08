vim.api.nvim_set_keymap('n', '<leader>55', ':lua require("jump-tag").jumpParent()<CR>', { desc = 'Jump to parent HTML tag', noremap = true, silent = true })
vim.api.nvim_set_keymap(
  'n',
  '<leader>5n',
  ':lua require("jump-tag").jumpNextSibling()<CR>',
  { desc = 'Jump to next sibling HTML tag', noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  'n',
  '<leader>5p',
  ':lua require("jump-tag").jumpPrevSibling()<CR>',
  { desc = 'Jump to previous sibling HTML tag', noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<leader>5c', ':lua require("jump-tag").jumpChild()<CR>', { desc = 'Jump to child HTML tag', noremap = true, silent = true })
