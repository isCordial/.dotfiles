-- Essentially the same as what is located in the kickstart.nvim plugins directory.
--

return {
---------- Primeagen Things
    'ThePrimeagen/harpoon', -- Quick-switcher; similar to vim marks
    'nvim-treesitter/playground',
    'mbbill/undotree',

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
    'github/copilot.vim', -- GitHub Copilot

    -- color & theme things (SET THESE UP ELSEWHERE)
    'norcalli/nvim-colorizer.lua', -- Colorizes color-codes
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
