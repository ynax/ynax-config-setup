-- Initialize lsp modules 

require'lsp.rust'

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
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		['<C-y>'] = cmp.mapping.confirm({select=true}),
		['<C-Space>'] = cmp.mapping.complete(cmp_select),
		['<Tab>'] = nil,
		['S-Tab'] = nil

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

