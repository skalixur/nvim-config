return {
  -- 'mattn/emmet-vim',
  'nvim-treesitter/nvim-treesitter-textobjects',
  'nvim-treesitter/nvim-treesitter-context',
  'theprimeagen/harpoon',
  'mbbill/undotree',
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
}
