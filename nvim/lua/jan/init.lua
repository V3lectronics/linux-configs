require("jan.remap")

-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- change shell
vim.opt.shell = 'zsh'

-- Indentation settings
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4

-- Mouse support
vim.opt.mouse = 'a'

-- Encoding settings
vim.opt.encoding = 'UTF-8'
-- vim.opt.clipboard:append('unnamedplus')  -- Use system clipboard
vim.opt.clipboard = 'unnamedplus'


-- search hit highlight
-- vim.cmd('highlight Search guibg=LightCyan guifg=NONE')
vim.cmd('highlight Search guibg=NvimDarkGray4 guifg=NONE')

-- Scrolling settings
vim.opt.scrolloff = 15
vim.opt.updatetime = 250

-- List settings
vim.opt.list = true
-- vim.opt.listchars = { tab = '▸ ', trail = '·' }  -- Customize tab and trailing spaces
vim.opt.listchars = { tab = '  ', trail = '·' }  -- Customize tab and trailing spaces
-- vim.opt.listchars = { trail = '·' }  -- Customize tab and trailing spaces

-- Text formating
vim.opt.formatoptions:append('t')
vim.opt.formatoptions:append('c')
vim.opt.textwidth = 80
-- vim.opt.wrap = false  -- Uncomment if you want to disable line wrapping

-- Custom commands
vim.api.nvim_create_user_command('W', 'write', {})
vim.api.nvim_create_user_command('Wq', 'wq', {})
vim.api.nvim_create_user_command('Q', 'q', {})


-- Default path autocomp
-- vim.api.nvim_create_autocmd("InsertCharPre", {
--     pattern = "*",
--     callback = function()
--         local char = vim.fn.getline('.'):sub(vim.fn.col('.') - 1, vim.fn.col('.') - 1)
--         if char == '/' then
--             vim.cmd("startinsert")
--             vim.fn.feedkeys("<C-x><C-f>", "n")
--         end
--     end,
-- })
--
-- Default autocomp
-- local triggers = {"a"}
--
-- vim.api.nvim_create_autocmd("InsertCharPre", {
--   buffer = vim.api.nvim_get_current_buf(),
--   callback = function()
--     if vim.fn.pumvisible() == 1 or vim.fn.mode() == "i" then
--       return
--     end
--     local char = vim.v.char
--     if vim.list_contains(triggers, char) then
--       -- Trigger the completion menu without auto-selecting the first item
--       local key = vim.keycode("<C-x><C-n>")
--       vim.api.nvim_feedkeys(key, "n", false) -- Use "n" instead of "m"
--     end
--   end
-- })

-- Set colorscheme
-- vim.cmd [[colorscheme challenger_deep]]
-- Uncomment the following line if you want to use OceanicNext instead
-- vim.cmd [[colorscheme OceanicNext]]

-- Set airline theme
-- vim.g.airline_theme = 'minimalist'

-- Disable powerline fonts
-- vim.g.airline_powerline_fonts = 0

-- Initialize airline symbols if not already defined
-- if not vim.g.airline_symbols then
--     vim.g.airline_symbols = {}
-- end

-- Set airline symbols
-- vim.g.airline_symbols.maxlinenr = ' '
-- vim.g.airline_symbols.colnr = 'col '
-- vim.g.airline_symbols.linenr = '   line '

-- vim.cmd([[packadd vim-arduino]])
-- vim.cmd([[runtime! ftplugin/arduino.vim]])
