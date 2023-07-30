-- Remaps for default actions + custom commands

---------- Remaps ----------
-- Remap <leader> to <space>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--| ---- ThePrimeagen keybindings ---- |--
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Move things around in v mode w/ auto-indent
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor at start of line when using "J" append
vim.keymap.set("n", "J", "mzJ`z")

-- Center-screen ctrl + u/d movement
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Center-screen search terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste highlighted text without losing register ("Greatest remap ever")
vim.keymap.set("x", "<leader>p", "\"_dp")


---------- From Kickstart.nvim: ----------

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
-- If you're in a wrapped line, k and j will behave as normal. Nice!
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
