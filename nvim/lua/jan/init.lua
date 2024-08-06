require("jan.remap")

-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

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

-- Text width
vim.opt.textwidth = 80
-- vim.opt.wrap = false  -- Uncomment if you want to disable line wrapping

-- Custom commands
vim.api.nvim_create_user_command('W', 'write', {})
vim.api.nvim_create_user_command('Wq', 'wq', {})
vim.api.nvim_create_user_command('Q', 'q', {})

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
