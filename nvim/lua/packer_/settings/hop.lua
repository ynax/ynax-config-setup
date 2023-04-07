

require'hop'.setup({
	-- Very important setup: read the 
	-- [guide](https://github.com/phaazon/hop.nvim/wiki/Configuration#setting-up-your-keys)
	keys = 'lkjhgfdsa,mnbvcxzpoiurewqyt',
	quit_key = "<ESC>",
	jump_on_sole_occurence = true,
	upper_case_labels = true, -- upper case labels are only displayed
	multi_windows = true, -- madlad
	current_line_only = false,
	direction = nil, -- Look both before and after cursor
})
