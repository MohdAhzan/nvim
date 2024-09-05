local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

--code Indent
vim.keymap.set('n', 'III', 'ggVG=', opts)

vim.keymap.set('v', '<leader>ff', ':Telescope', opts)
vim.keymap.set('v', '<leader>tt', ':Neotree', opts)
vim.keymap.set('v', '<C-C>', '"+y', opts)
vim.keymap.set('n', '<C-V>', '"+p', opts)
vim.keymap.set('n', '<leader>ee', ':Ex<CR>', opts)
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", opts)
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts)


vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

vim.keymap.set('n', '<C-p>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<C-n>', ':bnext<CR>', opts)
vim.keymap.set('n', 'bc', ':bdelete<CR>', opts)
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

--nvim tree mapping
vim.keymap.set('n', '<leader>tt', ':Neotree<CR>', opts)

--colorscheme mapping
-- vim.keymap.set("n", "<leader>ts", ':CyberdreamToggleMode<CR>',  { desc = 'Theme switch' })

--enthooterminal mapping

vim.keymap.set('n', '<leader>tm', ':ToggleTerm<CR>', opts)
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
-- vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
local themes = {
    {name = "tokyonight", setup = {style = "night"}},
    {name = "tokyonight", setup = {style = "night"},custom_bg = true},
    {name = "visual_studio_code", setup = {mode = "dark"}, custom_bg = true},
    {name = "visual_studio_code", setup = {mode = "dark"}},
    {name = "bluloco", setup = {mode = "dark"}},
    {name = "bluloco", setup = {mode = "dark"},custom_bg=true},
    {name = "kanagawa", setup = {mode = "dragon"}},
    {name = "kanagawa", setup = {mode = "dragon"},custom_bg=true},
    {name = "kanagawa", setup = {mode = "lotus"},custom_bg=true},
}

local current_theme_index = 1

local function toggle_bg()
    local theme = themes[current_theme_index]

    if theme.setup then
        require(theme.name).setup(theme.setup)
    end

    vim.cmd("colorscheme " .. theme.name)

    if theme.custom_bg then
        vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
    end
    local th = themes[current_theme_index]
    local mode = theme.setup.style or theme.setup.mode or "" -- Safely handle `style` or `mode`

    vim.notify("Loaded " .. th.name .. " " .. mode .. " theme", vim.log.levels.INFO)

  current_theme_index = current_theme_index % #themes + 1
end




-- Set the keymap to call the toggle function
vim.keymap.set('n', '<leader>st', toggle_bg, { noremap = true, silent = true })
-- vim.keymap.set('n', '<leader>bg', vim.cmd.colorscheme 'bluloco'), opts?)
-- vim.cmd.colorscheme 'bluloco'
