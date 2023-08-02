---------- Setup HARPOON ----------
-- (grab other settings from docs, like rotate through files)

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local tmux = require("harpoon.tmux")

-- add current file to harpoon --
vim.keymap.set("n", "<leader>h", mark.add_file, { desc = 'HARPOON Mark'})

-- quick toggle harpoon's quick menu -- no conflicts
vim.keymap.set("n", "<M-h>", ui.toggle_quick_menu, { desc = 'HARPOON Quick Menu'})

-- navigation (will these conflict with tmux-navigator? Probably)
-- NOTE: in the video, he sets these to home row for dvorak (ctrl + h/t/n/s)
-- vim.keymap.set("n", "<M-h>", function() ui.nav_file(1) end)
-- vim.keymap.set("n", "<M-j>", function() ui.nav_file(2) end)
-- vim.keymap.set("n", "<M-k>", function() ui.nav_file(3) end)
-- vim.keymap.set("n", "<M-l>", function() ui.nav_file(4) end)

-- cycle through harpoon marks
vim.keymap.set("n", "<M-d>", function() ui.nav_next() end, { desc = 'HARPOON Next Mark'})
vim.keymap.set("n", "<M-u>", function() ui.nav_prev() end, { desc = 'HARPOON Prev Mark'})

-- tmux terminal navigation

-- vim.keymap.set("n", "<M-h>", function() tmux.gotoTerminal(1) end)
-- vim.keymap.set("n", "<M-j>", function() tmux.gotoTerminal(2) end)
-- vim.keymap.set("n", "<M-k>", function() tmux.gotoTerminal(3) end)
-- vim.keymap.set("n", "<M-l>", function() tmux.gotoTerminal(4) end)
