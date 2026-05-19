return {
  -- colorschemes
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "pineapplegiant/spaceduck"
  },
  -- lualine
  {
    'nvim-lualine/lualine.nvim',
    options = { theme = "kanagawa" },
    config = function()
      require("lualine").setup()
    end
  },
}
