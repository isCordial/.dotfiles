-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	'christoomey/vim-tmux-navigator', -- Allows navigation of tmux panes inside nvim
	'ThePrimeagen/harpoon', -- Quick-switcher; similar to vim marks
	'mbbill/undotree',
	'norcalli/nvim-colorizer.lua', -- Colorizes color-codes
	'github/copilot.vim', -- GitHub Copilot
	'numToStr/Comment.nvim', -- gc(c) and gb(b) for commenting highlighted things
	'nvim-treesitter/playground',
	'windwp/nvim-ts-autotag', -- Automatically closes HTML tags
	{
    'windwp/nvim-autopairs', -- Automatically closes brackets, quotes, etc.
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) functions
	},
	{
		"catppuccin/nvim", -- catppuccin theme
		name = "catppuccin",
		priority = 1000,
		--[[ CONFIGURED IN INIT.LUA
		config = function()
			vim.cmd.colorscheme 'catppuccin'
		end,
		]]
	},
	{
		"nyoom-engineering/oxocarbon.nvim"
			-- Add in any other configuration; 
		  --   event = foo, 
		  --   config = bar
		  --   end,
	},
	{
		{ 'rose-pine/neovim', name = 'rose-pine' }
	}

	 --[[ DEFAULT KICKSTART THEME {
	    -- Theme inspired by Atom
	    'navarasu/onedark.nvim',
	    priority = 1000,
	    config = function()
	      vim.cmd.colorscheme 'onedark'
	    end,
	  }, ]]
}
