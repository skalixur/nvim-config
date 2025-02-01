return {
  'theprimeagen/harpoon',
  config = function()
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    vim.keymap.set('n', '<leader>ma', mark.add_file, { desc = 'Harpoon [M]ark [A]dd' })
    vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)
    vim.keymap.set('n', '<leader>sm', ':Telescope harpoon marks<CR>', { desc = '[S]earch harpoon [M]arks' })

    vim.keymap.set('n', '<leader>eh', function()
      ui.nav_file(1)
    end)

    vim.keymap.set('n', '<leader>ej', function()
      ui.nav_file(2)
    end)

    vim.keymap.set('n', '<leader>ek', function()
      ui.nav_file(3)
    end)

    vim.keymap.set('n', '<leader>el', function()
      ui.nav_file(4)
    end)
  end,
}
