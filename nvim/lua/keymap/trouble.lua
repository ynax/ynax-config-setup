
--  https://github.com/folke/trouble.nvim
--  shows all troubles in file
vim.keymap.set("n","<leader>xq","<cmd>TroubleToggle quickfix<cr>",{
	silent = true,
	noremap = true
})
