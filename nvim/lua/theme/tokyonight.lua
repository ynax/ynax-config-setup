-- We can specify default settings
-- Tokyo is a bit to damp for my liking
-- if only the colours would be stronger then we are A OK.
require("tokyonight").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	style = "night", -- the theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	light_style = "dark", -- the theme is used when the background is set to light
	transparent = true, -- enable this to disable setting the background color
	terminal_colors = true, -- configure the colors used when opening a `:terminal` in neovim
	styles = {
		-- style to be applied to different syntax groups
		-- value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = true },
		keywords = { italic = true },
		functions = { bold = true},
		variables = {},
		-- background styles. Can be "dark", "transparent" or "normal"
		sidebars = "transparent", -- style for sidebars, see below
		--floats = "normal", -- style for floating windows
		floats = "transparent", -- style for floating windows
	},
	sidebars = { "qf", "help", 'terminal','packer' }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
	day_brightness = 1.0, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
	hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
	dim_inactive = false, -- dims inactive windows
	lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

	--- You can override specific color groups to use other groups or a hex color
	--- function will be called with a ColorScheme table
	---@param colors ColorScheme
	on_colors = function(colors) 
		--colors.hint = "#42613b"
		--		colors.bg_statusline = "red"
		--		colors.comment = "#42613b"
	end,

	--- You can override specific highlights to use other groups or a hex color
	--- function will be called with a Highlights and ColorScheme table
	---@param highlights Highlights
	---@param colors ColorScheme
	on_highlights = function(hl, colors) 
		-- Set color for all line numbers 
		hl.LineNr.fg = "#42613b"
		--		hl.Comment.fg = ""
		hl.Comment.fg = "#ff7dcf"
		hl.TreesitterContext.link = "Background"
		hl.TreesitterContextBottom = {
			underline = true
		}
		hl.Hint = {fg="White"}
		
	end,

})

