
---------------------------------------------------------------------------------------------------

-- lua/ahzan/colorscheme.lua

return {
    "askfiy/visual_studio_code",
    priority = 100,
    config = function()
        vim.cmd([[colorscheme visual_studio_code]])
-- vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
    end,
} 
-- return {
--   {
--     'folke/tokyonight.nvim',
--     lazy = false, -- Load this during startup if it is your main colorscheme
--     priority = 1000, -- Load this before all other start plugins
--     config = function()
--       -- Load the colorscheme here
--      -- vim.cmd([[colorscheme tokyonight-night]])
--      vim.cmd([[colorscheme tokyonight-moon]])
--      -- vim.cmd([[colorscheme tokyonight-day]])
--      -- vim.cmd([[colorscheme tokyonight-storm]])
--
--     end,
--   },
-- }
--
-- return{
--   'uloco/bluloco.nvim',
--   lazy = false,
--   priority = 1000,
--   dependencies = { 'rktjmp/lush.nvim' },
--   config = function()
--     require("bluloco").setup({
--       style = "dark",               -- "auto" | "dark" | "light"
--       transparent = false,
--       italics = false,
--       terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
--       guicursor   = true,
--     })
--
--     -- your optional config goes here, see below.
--       vim.cmd([[colorscheme bluloco]])
--       -- vim.cmd([[colorscheme bluloco-dark]])
--   end,
-- }

-- return{
--   'rebelot/kanagawa.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     -- your optional config goes here, see below.
--     vim.cmd([[colorscheme kanagawa-wave]])
--   end,
-- }
-- return {
--   'scottmckendry/cyberdream.nvim',
--   lazy = false,
--   priority = 1000,
--   config = function()
--
--     vim.cmd([[colorscheme cyberdream]])
--     -- vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
--   end,
-- }
