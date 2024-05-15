-- vim.api.nvim_create_autocmd("VimEnter", {
--     callback = function()
--         vim.cmd("NoNeckPain")
--     end
-- })
return {
  'nvim-neo-tree/neo-tree.nvim',
  -- lazy = false,
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim', -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  init = function()
    if vim.fn.argc(-1) == 1 then
      local stat = vim.loop.fs_stat(vim.fn.argv(0))
      if stat and stat.type == 'directory' then
        require('neo-tree').setup {
          filesystem = {
            hijack_netrw_behavior = 'open_current',
          },
        }
      end
    end
  end,
  keys = {
    {
      '<leader>e',
      '<cmd>Neotree toggle right<cr>',
      desc = 'Toggle Explorer',
    },
    {
      '<leader>o',
      function()
        if vim.bo.filetype == 'neo-tree' then
          vim.cmd.wincmd 'p'
        else
          -- vim.cmd.Neotree "focus right"
          vim.cmd {
            cmd = 'Neotree',
            args = { 'focus', 'right' },
          }
        end
      end,
      desc = 'Toggle explorer focus',
    },
  },
}
