return {
  "folke/snacks.nvim",
  -- -@type snacks.Config
  opts = {
    picker = {
      hidden = true,
      ignored = true,
      sources = {
        explorer = {
          layout = {
            width = 0.10,
          },
        },
      },
      -- enabled = true,
      -- your explorer configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    -- picker = {
    --   sources = {
    --     explorer = {
    --       layout = {
    --         width = 10,
    --         -- preset = "default",
    --         -- preview = false,
    --       },
    --     },
    --   },
    -- },
  },
}
