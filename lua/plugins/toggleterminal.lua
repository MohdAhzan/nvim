return {
  {'akinsho/toggleterm.nvim', version = "*", config = function()
    require("toggleterm").setup{
      -- size can be a number or function which is passed the current terminal
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<c-\>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
      on_create = function(t) end, -- function to run when the terminal is first created
      on_open = function(t) end, -- function to run when the terminal opens
      on_close = function(t) end, -- function to run when the terminal closes
      on_stdout = function(t, job, data, name) end, -- callback for processing output on stdout
      on_stderr = function(t, job, data, name) end, -- callback for processing output on stderr
      on_exit = function(t, job, exit_code, name) end, -- function to run when terminal process exits
      hide_numbers = true, -- hide the number column in toggleterm buffers
      shade_filetypes = {},
      autochdir = true, -- when neovim changes its current directory the terminal will change its own when next it's opened
      highlights = {
        -- highlights which map to a highlight group name and a table of its values
        -- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
        Normal = {
          guibg = "#282c34",
        },
        NormalFloat = {
          link = 'Normal'
        },
        FloatBorder = {
          guifg = "#abb2bf",
          guibg = "#282c34",
        },
      },
      shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
      shading_factor = -30, -- the percentage by which to lighten dark terminal background, default: -30
      start_in_insert = true,
      insert_mappings = true, -- whether or not the open mapping applies in insert mode
      terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      persist_size = true,
      persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
      direction = 'float', -- 'vertical' | 'horizontal' | 'tab' | 'float'
      close_on_exit = true, -- close the terminal window when the process exits
      -- Change the default shell. Can be a string or a function returning a string
      shell = vim.o.shell,
      auto_scroll = true, -- automatically scroll to the bottom on terminal output
      -- This field is only relevant if direction is set to 'float'
      float_opts = {
        -- The border key is *almost* the same as 'nvim_open_win'
        -- see :h nvim_open_win for details on borders however
        -- the 'curved' border is a custom border type
        -- not natively supported but implemented in this plugin.
        border = 'curved', -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
        -- like `size`, width, height, row, and col can be a number or function which is passed the current terminal
        width = 80,
        height = 30,
        row = 0,
        col = 130,
        winblend = 3,
        zindex = 50,
        title_pos = 'center', -- 'left' | 'center' | 'right', position of the title of the floating window
      },
      winbar = {
        enabled = false,
        name_formatter = function(term) --  term: Terminal
          return term.name
        end
      },
    }
  end}
}

  -- -- Custom key mappings for multiple terminals
  --   local Terminal = require('toggleterm.terminal').Terminal
  --   local term1 = Terminal:new({ cmd = "bash", hidden = true })
  --   local term2 = Terminal:new({ cmd = "bash", hidden = true })
  --   local term3 = Terminal:new({ cmd = "bash", hidden = true })
  --
  --
