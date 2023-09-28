local builtin = require('telescope.builtin')

-- Primeagen: "I want 'PF' for PROJECT -> FILE..."
-- BUT... I don't
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = "telescope git_files"})
-- Primeagen grep_string
vim.keymap.set('n', '<leader>fs', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ")});
end, { desc = "telescope grep_string" })


-- etc
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "telescope find_files in cwd"})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'telescope live_grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'telescope help_tags' })
vim.keymap.set('n', '<leader>fd', builtin.lsp_document_symbols, { desc = 'telescope doc symbols' })
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'telescope oldfiles' })
