
-- Hop keymaps
-- place this in one of your configuration file(s)
local hop = require('hop')
local directions = require('hop.hint').HintDirection
local position = require('hop.hint').HintPosition

vim.keymap.set('n','<leader><leader>r', hop.hint_lines, {remap=true})

-- Jump to start of word
vim.keymap.set('n','<leader>s', function()
	hop.hint_words({
		direction = nil,
		hint_position = position.BEGIN
})	
end, {remap=true})

-- Jump to end of word
vim.keymap.set('n','<leader>e', function()
	hop.hint_words({
		direction = nil,
		hint_position = position.END
	})	
end, {remap=true})

-- Jump to start of line
vim.keymap.set('n','<leader>h', function()
	hop.hint_lines({
		direction = nil,
		hint_position = position.BEGIN
})	
end, {remap=true})

-- Jump to letter (in all windows..) 
vim.keymap.set('n','f', function()
	hop.hint_char1({
		direction = nil,
		hint_position = position.END
})	
end, {remap=true})


