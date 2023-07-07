---------- Setup HARPOON ----------
-- (grab other settings from docs, like rotate through files)

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- add current file to harpoon --
vim.keymap.set("n", "<leader>h", mark.add_file)

-- quick toggle harpoon's quick menu -- no conflicts
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- navigation (will these conflict with tmux-navigator? Probably)
-- NOTE: in the video, he sets these to home row for dvorak (ctrl + h/t/n/s)
vim.keymap.set("n", "<M-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<M-j>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<M-k>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<M-l>", function() ui.nav_file(4) end)
