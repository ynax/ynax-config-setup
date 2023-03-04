
-- Keymap for toggle terms


function _G.set_terminal_keymaps(t)
  local opts = {buffer = 0}
  -- Following two commands sets how we exit "terminal mode" (t)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  -- Exit terminal
  vim.keymap.set( {'t','n'}, '<tab>q', [[<C-\><C-n><C-w>c]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)

  -- "Starts" normal mode for keys pressed after  
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- Append the keymap to ALL terminal that opens.
-- if you only want these mappings for toggle term use term://*toggleterm#*
-- instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')	

-- My own floating terminal :) 
local Terminal = require('toggleterm.terminal').Terminal
local term_window = Terminal:new({
	close_on_exit = false, -- Terminal continues in the background
	auto_scroll = true, -- Scroll to bottom each time new output
	direction = "float", -- Options are: "float", "top", "???
	float_opts = {
		border = "double", -- ?? 
	},
	hide_numbers = false
})

function my_floating_terminal() 
	term_window:toggle()
end

-- New (vertical) terminal
local hori_term = Terminal:new({
	--cmd = "top", -- Options are: "float", 
	direction = "horizontal", -- Options are: horizontal, vertical, and
	-- float. 
	-- Use current directory (the directory from which nvim was started)
	dir = "."
})

function hori()
	hori_term:toggle()
end

-- Set mappings 
vim.api.nvim_set_keymap(
	"n","<leader>v", "<cmd>lua hori()<CR>", 
	{noremap = true}
	)
vim.api.nvim_set_keymap(
	"n","<leader>t", "<cmd>lua my_floating_terminal()<CR>", 
	{noremap = true}
	)


