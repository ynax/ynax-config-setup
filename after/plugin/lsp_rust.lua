
-- Inspiration form:https://sharksforarms.dev/posts/neovim-rust/



vim.opt.updatetime = 100

-- SETUP LSP for rust with `rust-tools`
-- Configure LSP through rust-tools.nvim plugin.
-- rust-tools will configure and enable certain LSP features for us.
-- See https://github.com/simrat39/rust-tools.nvim#configuration
local opts = {
	tools = {
		runnables = {
			use_telescope = true,
		},
		inlay_hints = {
			auto = true,
			show_parameter_hints = false,
			parameter_hints_prefix = "",
			other_hints_prefix = "",
		},
	},

	-- all the opts to send to nvim-lspconfig
	-- these override the defaults set by rust-tools.nvim
	-- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
	server = {
		-- on_attach is a callback called when the language server attachs to the buffer
		--    on_attach = on_attach,
		settings = {
			-- to enable rust-analyzer settings visit:
			-- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
			["rust-analyzer"] = {
				-- enable clippy on save
				checkOnSave = {
					command = "clippy",
				},
			},
		},
	},
}

require('rust-tools').setup(opts)

-- See https://github.com/hrsh7th/nvim-cmp#basic-configuration
local cmp = require("cmp")
-- Dunno what this does! 
local cmp_select = {behaviour = cmp.SelectBehavior.Select}
-- Setup custom completions
cmp.setup({
	preselect = cmp.PreselectMode.None,
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	mapping = {
		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-y>'] = cmp.mapping.confirm({select=true}),
		['<C-Space>'] = cmp.mapping.complete(cmp_select),

	},

	-- Installed sources
	-- Don't now what this does..
	sources = {
		{ name = "nvim_lsp" },
		{ name = "vsnip" },
		{ name = "path" },
		{ name = "buffer" },
	},
})

