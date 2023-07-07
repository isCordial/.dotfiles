-- Remaps for default actions + custom commands

---------- Remaps ----------
-- Remap <leader> to <space>
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--| ---- ThePrimeagen keybindings ---- |--
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

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

---------- Editor Options ----------

-- Line + RelLine Numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- 4 space indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Enable break indent
vim.o.breakindent = true


-- Incremental search + Highlights
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Nice Colors
vim.opt.termguicolors = true

-- Keep a certain number of lines in the viewport on the top and bottom
vim.opt.scrolloff = 8

-- Controls the interval (in milliseconds) for triggering the "CursorHold" and "CursorHoldI" events. These events are triggered when the cursor is idle for a certain period of time. By default it is set to 4000 milliseconds (4 seconds). Setting it to 50 will reduce the idle time to 50 milliseconds, making the events trigger more quickly.
vim.opt.updatetime = 50
-- Decrease update time
-- vim.o.updatetime = 250
-- vim.o.timeout = true
-- vim.o.timeoutlen = 300

-- Vertical sign column
vim.opt.signcolumn = "yes"

