
-- TODO: 


-- WARNING: DO NOT use these they suck..
--vim.opt.listchars:append "space:⋅"
--vim.opt.listchars:append "eol:↴"

-- Set this to false, though this should be done in `settings.lua`
-- vim.opt.list = false 

require("indent_blankline").setup {
	space_char_blankline = "",
	show_current_context = true,
	show_current_context_start = true,
	show_end_of_line = false,
}

