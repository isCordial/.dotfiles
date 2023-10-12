# nvim things
My post-kickstart nvim config

## Directories
### root directory
init.lua -> just a bunch of `require()` statements.

### ./lua/plugins
For imported plugins (`init_plugins.lua`) and their individual config files `<plugin-name>.lua`

### ./lua/before
For configurations needed to run prior to `lazy.setup()`
- custom commands (w/ paired keymaps)
- custom functions
- set options
- set keymaps

### ./lua/after
Remaining post-`lazy.setup()` configurations
- ./lua/after/themes.lua

## NOTE 1:
Plugins in kickstart.nvim that are not included (yet).
Through a process of elimination, I'll find out what I've taken for granted so far.

To include (maybe), but that I haven't (maybe) installed manually:
- 'tpope/vim-fugitive', -- git related
- 'tpope/vim-rhubarb', -- git related
- 'tpope/vim-sleuth', -- detect tabstop and shiftwidth automatically (this is prob what's f'ing me up)
- LSP related plugins
    - nvim-lspconfig + dependencies
        - mason.nvim + mason-lspconfig.nvim
        - j-hui/fidget.nvim -- status updates for lsp
        - folke/neodev.nvim
- Autocompletion related plugins
    - nvim-cmp + dependencies
        - LuaSnip -- snippet engine
        - cmp_luasnip -- snippet engine
        - cmp-nvim-lsp -- adds lsp completion capabilities
        - friendly-snippets -- adds a number of user-friendly snippets
- which-key.nvim -- useful plugin to show you pending keybinds
- gitsigns.nvim + config (extensive keymaps are in kickstart.nvim init.lua) -- adds related signs to the gutter, as well as utilities for managing changes
- lualine.nvim + config -- styleable status line along the bottom
- indent-blankline.nvim -- add indentation guides even on blank lines
- comment.nvim (installed this manually. didn't realize it was in here)
- **telescope.nvim** + dependencies
    - plenary.nvim
- telescope-fzf-native.nvim -- fzzy finder algorithm which requires local dependencies to be built. Only load if 'make' is available (linx / mac?), it must be on the system. Make sure requirements are installed.
- **treesitter** + dependencies (already manually installed)
    - nvim-treesitter-textobjects

## NOTE 2:
Find out what autoformat.lua and debug.lua from kickstart.nvim did.

## NOTE 3:
There are (seemingly) a lot of gems in the LSP config for kickstart.nvim. Because I know next to nothing about all of the specific functionality (and language servers in general), I'm going to wait till later to come back to that stuff.
- What intrigues me the most is the "local servers" variable assignment.
