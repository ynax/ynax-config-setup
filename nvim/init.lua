
 --require("ynx")

-- Settings 
require'settings'

-- Package configuration 

-- Package configuration with packer
require'packer_.init'

-- Key mappings
require'keymap'

-- Set theme/color schem
require'theme.init'

-- Set LSP 
require'lsp.init'
--vim.api.nvim_set_hl(0, "@function.rust", { link = "Comment" })
-- vim.api.nvim_set_hl(0, "Comment", { link = "Function" })
--vim.api.nvim_set_hl(0, 'Cursor', { reverse = true })
