require('custom.config-after.themes') -- mainly for colored line numbers rn
require('Comment').setup() -- for comment.nvim:
require('colorizer').setup() -- for nvim-colorizer (currently declared in lua/custom/plugins/init.lua)
require('nvim-ts-autotag').setup() -- for nvim treesitter autotag


require('custom.config-after.treesitter')
require('custom.config-after.harpoon-maps') -- ThePrimeagen's harpoon keybinds
