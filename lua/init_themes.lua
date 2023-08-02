-- color & theme things (SET THESE UP ELSEWHERE)
return {
	'norcalli/nvim-colorizer.lua', -- Colorizes color-codes
    'xiyaowong/transparent.nvim', -- Makes EVERYTHING transparent
	{
		"catppuccin/nvim", -- catppuccin theme
		name = "catppuccin",
		priority = 1000,
		--[[ CONFIGURED ELSEWHERE
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
}
