--[[--
File              : cyberdream.lua
License           : AGPL-3.0-or-later
Author            : Pierre 'McFly' Marty <pmarty@linagora.com>
Date              : 05.11.2024
Last Modified Date: 05.11.2024
Last Modified By  : Pierre 'McFly' Marty <pmarty@linagora.com>
--]]
--

return {
  {
    'scottmckendry/cyberdream.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      -- Enable transparent background
      transparent = true,

      -- Enable italics comments
      italic_comments = true,

      -- Replace all fillchars with ' ' for the ultimate clean look
      hide_fillchars = false,

      -- Modern borderless telescope theme - also applies to fzf-lua
      borderless_telescope = false,

      -- Set terminal colors used in `:terminal`
      terminal_colors = true,

      -- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
      cache = false,

      extensions = {
        alpha = true,
        blinkcmp = true,
        cmp = true,
        dashboard = true,
        fzflua = true,
        gitpad = true,
        gitsigns = true,
        grapple = true,
        grugfar = true,
        heirline = true,
        helpview = true,
        hop = true,
        indentblankline = true,
        kubectl = true,
        lazy = true,
        leap = true,
        markdown = true,
        markview = true,
        mini = true,
        noice = true,
        neogit = true,
        notify = true,
        rainbow_delimiters = true,
        telescope = true,
        treesitter = true,
        treesittercontext = true,
        trouble = true,
        whichkey = true,
      },
    },
    init = function()
      vim.cmd.colorscheme 'cyberdream'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et:
