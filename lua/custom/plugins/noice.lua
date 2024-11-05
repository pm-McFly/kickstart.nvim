--[[--
File              : noice.lua
License           : AGPL-3.0-or-later
Author            : Pierre 'McFly' Marty <pmarty@linagora.com>
Date              : 05.11.2024
Last Modified Date: 05.11.2024
Last Modified By  : Pierre 'McFly' Marty <pmarty@linagora.com>
--]]
--

return {
  -- lazy.nvim
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      -- add any options here
    },
    setup = function()
      pcall(require('telescope').load_extension, 'noice')
    end,
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      'rcarriga/nvim-notify',
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et:
