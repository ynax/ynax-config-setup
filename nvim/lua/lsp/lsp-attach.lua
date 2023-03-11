-- Inspiration form [lesvim](https://github.com/MiaadTeam/lesvim/tree/main/lua/lsp)

local M = {}
local map = vim.keymap.set

local opts = {noremap = true, silent = true, buffer = 0}

M.on_attach = function()
	-- Only want column when we are using a file!
	require('smartcolumn').setup()
	-- I see the potential to go directly to the type definition, 
	-- For a variable of type `type` go to definition
	vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)
	-- For a function, trait, struct, enum et.c go to definition 
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	-- Go to declaration of variable
	vim.keymap.set("n", "ge", vim.lsp.buf.declaration, opts)
	-- Format code 
	vim.keymap.set("n","gf",vim.lsp.buf.format,opts)
	vim.keymap.set("n","gs",vim.lsp.buf.document_symbol,opts)
	-- List all implementations for symbol under cusor
	vim.keymap.set("n","gi",vim.lsp.buf.implementation,opts)
	vim.keymap.set("n","gl",vim.lsp.buf.list_workspace_folders,opts)

	-- How to enter buffer hover ?? <C-w>??
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	-- Search entire workspace for symbols matching **
	vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, opts) -- ?? 

	-- Loop through the diagnostics 
	vim.keymap.set("n", "<A-1>", vim.diagnostic.goto_prev, opts)
	vim.keymap.set("n", "<A-2>", vim.diagnostic.goto_next, opts)
	-- These are all very nice!! 
	vim.keymap.set("n", "<A-3>", vim.lsp.buf.code_action, opts)

	vim.keymap.set("n", "<leader>rr", vim.lsp.buf.references, opts)
	-- QUESTION: Rename where? 
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
end
return M
