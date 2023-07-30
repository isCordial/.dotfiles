-- Essentially the same as what is located in the kickstart.nvim plugins directory.
--

return {
---------- Primeagen Things
    {
	'nvim-telescope/telescope.nvim', tag = '0.1.2', -- Telescope Fuzzy Finder
	  dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {
    -- Highlight, edit, and navigate code
	'nvim-treesitter/nvim-treesitter', -- Treesitter
	dependencies = {
	  'nvim-treesitter/nvim-treesitter-textobjects', -- Treesitter Textobjects
	},
	build = ':TSUpdate',
    },
    'nvim-treesitter/playground', -- Treesitter Playground

    'ThePrimeagen/harpoon', -- Harpoon Quick-switcher; similar to vim marks
    'mbbill/undotree', -- Undotree
    'tpope/vim-fugitive', -- Git Integration | Fugitive

    ----- LSP -----
    -- I am delegating this to another file
    -- because there is so much to the config:
    -- See init.lua for alternate file.




---------- Misc Things
    -- Quality of Life
    {
        'windwp/nvim-autopairs', -- Automatically closes brackets, quotes, etc.
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) functions
    },
    'windwp/nvim-ts-autotag', -- Automatically closes HTML tags
    'numToStr/Comment.nvim', -- gc(c) and gb(b) for commenting highlighted things

    -- tmux things
	'christoomey/vim-tmux-navigator', -- Allows navigation of tmux panes inside nvim

    -- ai things
    --'github/copilot.vim', -- GitHub Copilot DEFAULT
     -- GitHub Copilot LUA

    {
      "zbirenbaum/copilot.lua",
      cmd = "Copilot",
      event = "InsertEnter",
      config = function()
        require("copilot").setup({})
      end,
    }
}
