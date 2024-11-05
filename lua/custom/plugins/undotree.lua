--[[--
File              : undotree.lua
License           : AGPL-3.0-or-later
Author            : Pierre 'McFly' Marty <pmarty@linagora.com>
Date              : 05.11.2024
Last Modified Date: 05.11.2024
Last Modified By  : Pierre 'McFly' Marty <pmarty@linagora.com>
--]]
--

return {
  {
    'mbbill/undotree',

    -- setup F5 to display the Undo tree
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle [U]ndo Tree' }),
  },
}

-- vim: ts=2 sts=2 sw=2 et:
