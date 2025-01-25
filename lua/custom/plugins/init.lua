return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  'nvim-treesitter/nvim-treesitter-context',
  'theprimeagen/harpoon',
  'mbbill/undotree',
  'tpope/vim-repeat',
  'tpope/vim-fugitive',
  {
    'barrett-ruth/live-server.nvim',
    build = 'npm i -g live-server',
    cmd = { 'LiveServerStart', 'LiveServerStop' },
    config = true,
  },
  'andweeb/presence.nvim',
  'lancewilhelm/horizon-extended.nvim',
  'lunarvim/horizon.nvim',
  {
    'stevearc/dressing.nvim',
    opts = {
      input = {
        default_prompt = 'Rename',
      },
    },
  },
  {
    'JoosepAlviste/nvim-ts-context-commentstring',
    opts = {
      enable_autocmd = false,
    },
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup {
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      }
    end,
  },
  {
    'smjonas/inc-rename.nvim',
    opts = {
      input_buffer_type = 'dressing',
    },
  },
  -- nvim-cmp sources (because they don't work when set as a dependency?)
  'hrsh7th/cmp-nvim-lsp',
  'saadparwaiz1/cmp_luasnip',
  'hrsh7th/cmp-nvim-lsp-signature-help',
  'hrsh7th/cmp-nvim-lua',
  'hrsh7th/cmp-calc',
  'hrsh7th/cmp-path',
  'roginfarrer/cmp-css-variables',
  --
  'ap/vim-css-color',
  'vim-airline/vim-airline',
  'vim-airline/vim-airline-themes',
  {
    'olrtg/nvim-emmet',
    config = function()
      vim.keymap.set({ 'n', 'v' }, '<leader>xe', require('nvim-emmet').wrap_with_abbreviation)
    end,
  },
  'tpope/vim-abolish',
  {
    'Aityz/usage.nvim',
    opts = {
      mode = 'notify',
    },
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
    -- lazy.nvim
  },
  {
    'b0o/schemastore.nvim',
    config = function()
      require('lspconfig').jsonls.setup {
        settings = {
          json = {
            schemas = require('schemastore').json.schemas(),
            validate = { enable = true },
          },
        },
      }
    end,
  },
  {
    'toppair/peek.nvim',
    event = { 'VeryLazy' },
    build = 'deno task --quiet build:fast',
    config = function()
      require('peek').setup {
        auto_load = true, -- whether to automatically load preview when entering another markdown buffer
        close_on_bdelete = true, -- close preview window on buffer delete

        syntax = true, -- enable syntax highlighting, affects performance

        theme = 'dark', -- 'dark' or 'light'

        update_on_change = true,

        app = 'browser', -- 'webview', 'browser', string or a table of strings explained below

        filetype = { 'markdown' }, -- list of filetypes to recognize as markdown

        -- relevant if update_on_change is true
        throttle_at = 200000, -- start throttling when file exceeds this
        -- amount of bytes in size
        throttle_time = 'auto', -- minimum amount of time in milliseconds
        -- that has to pass before starting new render
      }
      vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
      vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
    end,
  },
  {
    'windwp/nvim-ts-autotag',
    opts = {},
  },
}
