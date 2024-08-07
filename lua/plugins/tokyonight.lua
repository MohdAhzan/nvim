return {
  {
    'folke/tokyonight.nvim',
    lazy = false, -- Load this during startup if it is your main colorscheme
    priority = 1000, -- Load this before all other start plugins
    config = function()
      -- Load the colorscheme here
     -- vim.cmd([[colorscheme tokyonight-night]])
     vim.cmd([[colorscheme tokyonight-moon]])
     -- vim.cmd([[colorscheme tokyonight-day]])
     -- vim.cmd([[colorscheme tokyonight-storm]])

    end,
  },
}


