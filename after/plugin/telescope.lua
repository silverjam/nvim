local telescope = require('telescope.builtin')

vim.keymap.set(
  "n", "<leader><leader>", "<Cmd>lua require('telescope').extensions.frecency.frecency({ workspace = 'CWD' })<CR>",
  {noremap = true, silent = true})

vim.keymap.set(
  "n", "<leader>a", "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>",
  {noremap = true, silent = true})

vim.keymap.set('n', '<leader>b', telescope.buffers, {})
vim.keymap.set('n', '<leader>fI', telescope.find_files, {})
vim.keymap.set('n', '<leader>fd', telescope.git_files, {})
vim.keymap.set('n', '<leader>rg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>h', telescope.help_tags, {})

local actions = require('telescope.actions')

require("telescope").setup {
    defaults = {
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            }
        }
    }
}
