-- return{
--   "rcarriga/nvim-notify",
--   config = function()
--
--       local notify = require("notify")
--     notify.setup({
--       stages = "fade_in_slide_out",  
--       timeout = 3000,  
--     })
--     vim.notify = notify
--
--   end
-- }

return{
  "rcarriga/nvim-notify",
  config = function()
    local notify = require("notify")
    notify.setup({
      stages = "fade_in_slide_out", -- Animation style for notifications
      timeout = 3000,               -- Duration the notification is shown in milliseconds
    })
    vim.notify = notify
  end
}

