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


---------- From Kickstart.nvim: ----------

-- Enable mouse mod
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Set completeopt to have a better completion experience
-- vim.o.completeopt = 'menuone,noselect'

