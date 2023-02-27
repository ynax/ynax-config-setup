-- TODO: Add icons..

-- TODO: This is a todo comment
-- this is not a todo comment

-- PERF: for when something is perfected! :) 
-- HACK: when something is shady..
-- NOTE: comment something important
-- FIX: for when current soluton needs to be solved...
-- BUG: same tag as FIX 
-- WARNING: used when changes are BREAKING!
-- TEST: We can also test stuff! 


-- https://github.com/folke/todo-comments.nvim
-- To use telescope ripgrep needs to be installed on the system.
-- https://github.com/BurntSushi/ripgrep
require('todo-comments').setup{
	signs = false, -- show icons in the signs columns
	highlight = {
		-- Don't include text on more than one row..
		multiline = true,
		multiline_context = 5, -- Maximum of lines to be included.
	}
}
