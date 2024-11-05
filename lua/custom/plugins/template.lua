--[[--
File              : template.lua
License           : AGPL-3.0-or-later
Author            : Pierre 'McFly' Marty <pmarty@linagora.com>
Date              : 05.11.2024
Last Modified Date: 05.11.2024
Last Modified By  : Pierre 'McFly' Marty <pmarty@linagora.com>
--]]
--

return {
  {
    'glepnir/template.nvim',
    cmd = { 'Template', 'TemProject' },
    config = function()
      require('template').setup {
        temp_dir = '~/.config/nvim/lua/custom/plugins/templates',
      }
      pcall(require('telescope').load_extension, 'find_template')
    end,
    vim.keymap.set('n', '<Leader>T', function()
      vim.fn.feedkeys ':Template '
    end, { remap = true }),
  },
}

-- vim: ts=2 sts=2 sw=2 et:
