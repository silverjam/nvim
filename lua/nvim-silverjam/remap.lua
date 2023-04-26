vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader><leader>', telescope.buffers, {})
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>gf', telescope.git_files, {})
vim.keymap.set('n', '<leader>rg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>h', telescope.help_tags, {})
