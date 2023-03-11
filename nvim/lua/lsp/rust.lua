-- Rust LSP module using `rust-tools`
-- Inspiration form:https://sharksforarms.dev/posts/neovim-rust/

local on_attach = function(client)
	require("lsp.lsp-attach").on_attach()
	local rt = require('rust-tools')
	-- Dunno if I like this....
--	vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })

	-- Runnables 
	vim.keymap.set("n", "<C-i>", rt.runnables.runnables, {buffer = bufnr})
--	vim.keymap.set("n","Å", rt.cached_commands.execute_last_runnable, {buffer = bufnr})

	-- Move item up/down
	vim.keymap.set("n", "<A-Up>", function(_,bufnr)
		rt.move_item.move_item("Up")
	end, {buffer = bufnr})
	vim.keymap.set("n", "<A-Down>", function(_,bufnr)
		rt.move_item.move_item("Down")
	end, {buffer = bufnr})

end

-- SETUP LSP for rust with `rust-tools`
-- Configure LSP through rust-tools.nvim plugin.
-- rust-tools will configure and enable certain LSP features for us.
-- See https://github.com/simrat39/rust-tools.nvim#configuration
local opts = {
	tools = {
		executor = require("rust-tools/executors").termopen,
		runnables = {
			use_telescope = true,
		},
		-- Fix this so "H" and "W" doesn't show
		inlay_hints = {
			auto = true,
			show_parameter_hints = true,
			parameter_hints_prefix = "<- ",
			other_hints_prefix = "=> ",
			-- whether to align to the extreme right or not
			right_align = false,
			-- The color of the hints
			-- TODO: Change color 
			highlight = "Comment",

		},
		-- Not working, using dressing instead.
--		hover_actions = {
			-- the border that is used for the hover window
			-- see vim.api.nvim_open_win()
--			border = "shadow",
--			auto_focus = true,
--		}
	},

	-- all the opts to send to nvim-lspconfig
	-- these override the defaults set by rust-tools.nvim
	-- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
	server = {
		on_attach = on_attach,
		-- on_attach is a callback called when the language server attachs to the buffer
		settings = {
			-- to enable rust-analyzer settings visit:
			-- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
			["rust-analyzer"] = {
				-- enable clippy on save
				checkOnSave = {
					command = "clippy",
				},
				hoverActions = {
					references = true,
				},
				rustfmt = {
					enableRangeFormatting = true,
				},
			},
		},
	},
}

require('rust-tools').setup(opts)


