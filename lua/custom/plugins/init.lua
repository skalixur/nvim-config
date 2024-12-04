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
  'hrsh7th/cmp-nvim-lsp-signature-help',
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
