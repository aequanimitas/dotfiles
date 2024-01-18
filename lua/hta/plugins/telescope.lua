local builtin = require('telescope.builtin')
-- project files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- just like ctrl-p
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- GREP
-- install ripgrep https://github.com/nvim-telescope/telescope.nvim/issues/506#issuecomment-774642083
vim.keymap.set('n', '<C-s>', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
--vim.keymap.set('n', '<C>pp', builtin.find_files, {})
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
