vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "<C-l>", "<Right>")
-- vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-h>", "<Esc>i")
vim.keymap.set("i", "<C-j>", "<Down>")
vim.keymap.set("i", "<C-k>", "<Up>")
