-- Remap the use of <Ctrl> to <Tab>

-- Open and close windows
-- Remap CLOSE/OPEN A WINDOW: https://neovim.io/doc/user/windows.html#_-closing-a-window
-- Split current window in two, horizontally. The result is two viewports on the same file
vim.keymap.set({"n","v"},"<tab>ws",[[<Cmd>wincmd s<CR>]])
-- Split current window in two, vertically. The result is two viewports on the same file
vim.keymap.set({"n","v"},"<tab>wv",[[<Cmd>wincmd v<CR>]])

-- Cose the current window 
vim.keymap.set({"n","v"},"<tab>wc",[[<Cmd>wincmd c<CR>]])
-- Cose the current window 
vim.keymap.set({"n","v"},"<tab>wq",[[<Cmd>wincmd q<CR>]])
-- Make the current window the only window left
vim.keymap.set({"n","v"},"<tab>wo",[[<Cmd>wincmd o<CR>]])

-- Remap MOVE CURSOR between windows: https://neovim.io/doc/user/windows.html#window-move-cursor
-- need to save my left little finger.. do this for both normal and visual mode
-- move down
vim.keymap.set({"n","v"},"<Tab>wj",[[<Cmd>wincmd j<CR>]])
-- move up
vim.keymap.set({"n","v"},"<Tab>wk",[[<Cmd>wincmd k<CR>]])
-- move left
vim.keymap.set({"n","v"},"<Tab>wh",[[<Cmd>wincmd h<CR>]])
-- move right
vim.keymap.set({"n","v"},"<Tab>wl",[[<Cmd>wincmd l<CR>]])
-- move cursor to top-left window 
vim.keymap.set({"n","v"},"<Tab>wt",[[<Cmd>wincmd t<CR>]])
-- move cursor to bottom-right window 
vim.keymap.set({"n","v"},"<Tab>wb",[[<Cmd>wincmd b<CR>]])
-- move cursor to last accessed window 
vim.keymap.set({"n","v"},"<Tab>wp",[[<Cmd>wincmd p<CR>]])


-- Remap MOVE WINDOW: https://neovim.io/doc/user/windows.html#window-moving
-- Move window downards/right
vim.keymap.set({"n","v"},"<Tab>wr",[[<Cmd>wincmd r<CR>]])
-- Move window upwards/left
vim.keymap.set({"n","v"},"<Tab>wR",[[<Cmd>wincmd R<CR>]])
-- Move current window to be att the very TOP
vim.keymap.set({"n","v"},"<Tab>WK",[[<Cmd>wincmd K<CR>]], { remap = true})
-- Move current window to be att the very BOTTOM
vim.keymap.set({"n","v"},"<Tab>WJ",[[<Cmd>wincmd J<CR>]], { remap = true})
-- Move current window to be att the very far LEFT 
vim.keymap.set({"n","v"},"<Tab>WH",[[<Cmd>wincmd K<CR>]], { remap = true})
-- Move current window to be att the very far RIGHT
vim.keymap.set({"n","v"},"<Tab>WL",[[<Cmd>wincmd L<CR>]], { remap = true})
-- Move current window to a NEW tab.
vim.keymap.set({"n","v"},"<Tab>WT",[[<Cmd>wincmd T<CR>]], { remap = true})



