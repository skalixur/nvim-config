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
  'numToStr/Comment.nvim',
  {
    'smjonas/inc-rename.nvim',
    opts = {},
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
  'harrisoncramer/jump-tag',
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
    {
      'folke/noice.nvim',
      event = 'VeryLazy',
      opts = {
        presets = { inc_rename = true },
      },
      dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        'MunifTanjim/nui.nvim',
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        'rcarriga/nvim-notify',
      },
    },
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
}
