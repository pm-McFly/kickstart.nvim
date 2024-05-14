return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  extensions = {
    file_browser = {
      hijack_netrw = true,
    },
  },
  keys = { {
    '<leader>fb',
    '<cmd>Telescope file_browser<cr>',
    desc = 'Toggle Explorer',
  } },
}
