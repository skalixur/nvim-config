-- Collection of various small independent plugins/modules
return {
  'echasnovski/mini.nvim',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']

    require('mini.surround').setup {
      custom_surroundings = {
        t = {
          input = { '%b<>', '^<(%w+)>', '</(%w+)>' },
          output = function()
            local tag = MiniSurround.user_input 'Enter HTML tag: '
            return { left = '<' .. tag .. '>', right = '</' .. tag .. '>' }
          end,
        },
      },
    }

    require('mini.move').setup {}
    require('mini.splitjoin').setup {}
    require('mini.jump').setup {}
    require('mini.icons').setup {}
    require('mini.cursorword').setup {}
    require('mini.indentscope').setup {}
    require('mini.sessions').setup {}
    local starter = require 'mini.starter'

    starter.setup {
      evaluate_single = true,
      items = {
        starter.sections.builtin_actions(),
        starter.sections.recent_files(10, false),
        starter.sections.sessions(5, true),
      },
      footer = '',
      content_hooks = {
        starter.gen_hook.aligning('center', 'center'),
        starter.gen_hook.adding_bullet('\t', false),
        starter.gen_hook.indexing('all', { 'Builtin actions' }),
        starter.gen_hook.padding(3, 2),
      },
    }
  end,
}
