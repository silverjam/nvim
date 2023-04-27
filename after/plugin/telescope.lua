local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader><leader>', telescope.buffers, {})
vim.keymap.set('n', '<leader>fI', telescope.find_files, {})
vim.keymap.set('n', '<leader>fd', telescope.git_files, {})
vim.keymap.set('n', '<leader>rg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>h', telescope.help_tags, {})
