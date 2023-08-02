---------- Theme Configs (only use one) ----------
---------- (theme selection is below setups)

----- Catppuccin -----
require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
    },
})


----- Rose Pine -----
require('rose-pine').setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = 'main',
	--- @usage 'main'|'moon'|'dawn'
	dark_variant = 'main',
	bold_vert_split = true,
	dim_nc_background = false,
	disable_background = false,
	disable_float_background = false,
	disable_italics = false,

	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = 'base',
		background_nc = '_experimental_nc',
		panel = 'surface',
		panel_nc = 'base',
		border = 'highlight_med',
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',

		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',

		headings = {
			h1 = 'iris',
			h2 = 'foam',
			h3 = 'rose',
			h4 = 'gold',
			h5 = 'pine',
			h6 = 'foam',
		}
		-- or set all headings at once
		-- headings = 'subtle'
	},

	-- Change specific vim highlight groups
	-- https://github.com/rose-pine/neovim/wiki/Recipes
	highlight_groups = {
		ColorColumn = { bg = 'rose' },

		-- Blend colours against the "base" background
		CursorLine = { bg = 'love', blend = 20 },
		StatusLine = { fg = 'rose', bg = 'overlay', blend = 69 },

		Search = { bg = 'gold'--, inherit = false
        },

	}
})

---------- Visual-Related Settings ----------
-- (some color choices have been commented out to facilitate easy switching)
--
-- lazy.setup must be called before loading
-- vim.cmd.colorscheme "catppuccin"
-- vim.cmd.colorscheme "oxocarbon"

-- Set your flavor (light/dark) and theme (colorscheme) here:
vim.opt.background = "dark"
vim.cmd.colorscheme "rose-pine"

-- Change the color of line numbers
vim.api.nvim_command('highlight LineNr guifg=#ffccff')

-- Change the color of active line numbers (when using cursorline)
vim.opt.cursorline = true
-- vim.api.nvim_command('highlight CursorLineNr guifg=#ff33cc')
vim.api.nvim_command('highlight CursorLineNr guifg=#ff1a75')

-- COLORCOLUMN (I don't like it... yet)
-- The `colorcolumn` option specifies a comma-separated list of column numbers or column ranges where a vertical line should be displayed. By setting it to `"80"`, a vertical line will be displayed at column 80. This is often used as a visual guide for adhering to coding style guidelines that require code lines to be within a certain width limit.
-- vim.opt.colorcolumn = "80"

-- transparent background options
ColorMyPencils()
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
