local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files" })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = "Find git files" })
vim.keymap.set('n', '<leader>lg', builtin.live_grep, { desc = "Live grep" })
