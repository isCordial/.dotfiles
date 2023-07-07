-- Post re-factor init.lua. Only require() statements will be here.


---------- RE-FACTORED INIT ----------
-- For the most part---only require() statements will be here...


-- These MUST run before lazy.setup()
-- <leader> has to be set prior to setup, or there will be issues

require('before.keymaps.lua')
require('before.setoptions.lua')
require('before.commands.lua')
require('before.functions.lua')

---------- Lazy.nvim setup ----------

-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)


-- Install plugins here:

require('lazy').setup({

  -- Plugins I add will be imported from this file:
  { import = 'plugins.init_plugins'}
}, {})


---------- AFTER ----------

require('after.themes') -- themes

-- plugin setup things. config + bindings, etc
-- anything without a file path is using default configs
--
require('plugins.treesitter') -- treesitter
require('plugins.harpoon') -- Primeagen Harpoon
require('plugins.copilot') -- GitHub Copilot


-- default configs
require('Comment').setup() -- comment.nvim
require('colorizer').setup() -- nvim-colorizer
require('nvim-ts-autotag').setup() -- for nvim treesitter autotag


