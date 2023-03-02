-- disable netrw at the very start of your init.lua (strongly advised)
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1
local on_attach = function(bufnr)
end
require("nvim-tree").setup({
	disable_netrw = false,--true,
	on_attach = require'keymap.nvim-tree'.on_attach, -- see /lua/keymap.lua
	renderer = {
		group_empty = true,
		icons = {
			webdev_colors = false,
		}
	},
	filters = {
		dotfiles = false,
	},
})



