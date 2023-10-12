vim.keymap.set("n", "<leader>gg", vim.cmd.Git, { desc = ":Git" }) -- <leader>gg meaning "git gud"

vim.keymap.set("n", "<leader>gs", ':Git status<CR>', { desc = "':Git [s]tatus'" }) -- <leader>gs meaning "git status"

vim.keymap.set("n", "<leader>ga", ':Git status<CR>', { desc = "':Git [a]dd .'" }) -- <leader>ga meaning"git add"
