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
require('plugins.lazy')


-- Lazy setup. Add plugins to relevant files below
require('lazy').setup({

  -- Plugins I add will be imported from these files:
  { import = 'init_plugins' },
  { import = 'init_lsp' },
  { import = 'init_themes' },
}, {})


---------- AFTER ----------

require('after.themes') -- themes

-- plugin setup things. config + bindings, etc
-- anything without a file path is using default configs

-- customized configs
require('plugins.treesitter') -- treesitter
require('plugins.harpoon') -- Primeagen Harpoon
require('plugins.undotree') -- Undotree Toggle bind
require('plugins.fugitive') -- <leader>gs command
require('plugins.copilot') -- GitHub Copilot
require('plugins.lsp') -- LSP Zero


-- default configs
require('Comment').setup() -- comment.nvim
require('colorizer').setup() -- nvim-colorizer
require('nvim-ts-autotag').setup() -- for nvim treesitter autotag
