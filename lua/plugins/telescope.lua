local builtin = require('telescope.builtin')
-- Primeagen: "I want 'PF' for PROJECT -> FILE..."
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "telescope find_files in cwd"})
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = "telescope git_files"})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ")});
end, { desc = "telescope grep_string" })


-- etc
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'telescope live_grep - live results from cwd' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'telescope help_tags' })
