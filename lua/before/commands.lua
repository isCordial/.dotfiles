----------------- Custom commands -------------------
----------------- and their binds -------------------


-- Create command to copy current working directory
vim.api.nvim_create_user_command("Cppath", function()
    local path = vim.fn.expand("%:p")
    vim.fn.setreg("+", path)
    vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})
-- Set keymapping for command
vim.api.nvim_set_keymap("n", "<leader>cp", ':Cppath<CR>', { noremap = true })
