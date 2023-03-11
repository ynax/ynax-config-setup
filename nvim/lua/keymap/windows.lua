-- Remap the use of <Ctrl> to <Tab>

-- Open and close windows
-- Remap CLOSE/OPEN A WINDOW: https://neovim.io/doc/user/windows.html#_-closing-a-window
-- Split current window in two, horizontally. The result is two viewports on the same file
vim.keymap.set({"n","v"},"<tab>s",[[<Cmd>wincmd s<CR>]])
-- Split current window in two, vertically. The result is two viewports on the same file
vim.keymap.set({"n","v"},"<tab>v",[[<Cmd>wincmd v<CR>]])


-- Cose the current window 
vim.keymap.set({"n","v"},"<tab>q",[[<Cmd>wincmd q<CR>]])
-- Make the current window the only window left
vim.keymap.set({"n","v"},"<tab>O",[[<Cmd>wincmd o<CR>]])

-- Remap MOVE CURSOR between windows: https://neovim.io/doc/user/windows.html#window-move-cursor
-- need to save my left little finger.. do this for both normal and visual mode
-- move down
vim.keymap.set({"n","v"},"<Tab>j",[[<Cmd>wincmd j<CR>]])
-- move up
vim.keymap.set({"n","v"},"<Tab>k",[[<Cmd>wincmd k<CR>]])
-- move left
vim.keymap.set({"n","v"},"<Tab>h",[[<Cmd>wincmd h<CR>]])
-- move right
vim.keymap.set({"n","v"},"<Tab>l",[[<Cmd>wincmd l<CR>]])
-- move cursor to top-left window 
vim.keymap.set({"n","v"},"<Tab>t",[[<Cmd>wincmd t<CR>]])
-- move cursor to bottom-right window 
vim.keymap.set({"n","v"},"<Tab>b",[[<Cmd>wincmd b<CR>]])
-- move cursor to last accessed window 
vim.keymap.set({"n","v"},"<Tab>p",[[<Cmd>wincmd p<CR>]])
-- Move cursor to next (?) window ? 
vim.keymap.set({"n","v"},"<Tab>w",[[<Cmd>wincmd w<CR>]])

-- Remap MOVE WINDOW: https://neovim.io/doc/user/windows.html#window-moving
-- Move window downards/right
vim.keymap.set({"n","v"},"<Tab>r",[[<Cmd>wincmd r<CR>]])
-- Move window upwards/left
vim.keymap.set({"n","v"},"<Tab>R",[[<Cmd>wincmd R<CR>]])
-- Move current window to be att the very TOP
vim.keymap.set({"n","v"},"<Tab>K",[[<Cmd>wincmd K<CR>]], { remap = true})
-- Move current window to be att the very BOTTOM
vim.keymap.set({"n","v"},"<Tab>J",[[<Cmd>wincmd J<CR>]], { remap = true})
-- Move current window to be att the very far LEFT 
vim.keymap.set({"n","v"},"<Tab>H",[[<Cmd>wincmd K<CR>]], { remap = true})
-- Move current window to be att the very far RIGHT
vim.keymap.set({"n","v"},"<Tab>L",[[<Cmd>wincmd L<CR>]], { remap = true})
-- Move current window to a NEW tab.
vim.keymap.set({"n","v"},"<Tab>T",[[<Cmd>wincmd T<CR>]], { remap = true})

-- Resize current window 
-- Increase vertical size
vim.keymap.set("n","<C-Right>",":vertical resize +5<CR>"  , {remap = true, silent = true})
-- Reduce vertical size
vim.keymap.set("n","<C-Left>",":vertical resize -5<CR>"  , {remap = true, silent = true})

-- Increase horizontal size
vim.keymap.set("n","<C-Up>",":horizontal resize +5<CR>"  , {remap = true, silent = true})
-- Decrease horizontal size
vim.keymap.set("n","<C-Down>",":horizontal resize -5<CR>"  , {remap = true, silent = true})

