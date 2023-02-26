
--  https://github.com/folke/trouble.nvim
--  Not really sure what this does....
vim.keymap.set("n","<leader>xq","<cmd>TroubleToggle quickfix<cr>",{
	silent = true,
	noremap = true
})

require('trouble').setup({
	position = "right",
	icons = false
})
-- TODO: Need to set icons = false !
