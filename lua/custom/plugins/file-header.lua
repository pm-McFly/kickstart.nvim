--[[--
File              : file-header.lua
License           : AGPL-3.0-or-later
Author            : Pierre 'McFly' Marty <pmarty@linagora.com>
Date              : 05.11.2024
Last Modified Date: 05.11.2024
Last Modified By  : Pierre 'McFly' Marty <pmarty@linagora.com>
--]]
--

return {
  {
    'alpertuna/vim-header',
    init = function()
      vim.g.header_field_author = "Pierre 'McFly' Marty"
      vim.g.header_field_author_email = 'pmarty@linagora.com'
      vim.g.header_field_modified_by = 1
      vim.g.header_field_license_id = 'AGPL-3.0-or-later'
    end,
    vim.keymap.set('n', '<F4>', vim.cmd.AddHeader, { desc = 'Add File Comments Header' }),
  },
}

-- vim: ts=2 sts=2 sw=2 et:
