
local builtin = require('telescope.builtin')
-- Search files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- Only search for gitfiles 
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- Search for text 
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

