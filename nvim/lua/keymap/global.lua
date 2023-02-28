-- Heavily inspired by
-- [ThePrimeagen](https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/remap.lua)


-- Set leader key to space 
vim.g.mapleader = " "
-- Set how we exit a file and return to dir view..
-- vim.keymap.set("n","<leader>pv",vim.cmd.Ex) -- Old..
vim.keymap.set("n","--",vim.cmd.Ex)

-- Visual mode move rows/marked up and down..
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Lets Cursor be fixed at beginning of line instead of at the end 
vim.keymap.set("n", "J", "mzJ`z")
-- When up and down a page recenter the cursor in the middle of the screen.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Search terms stay in middle 
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- When pasting over a text don't copy the removed text
-- "greatest remap ever" - The Primeagen
vim.keymap.set("x", "<leader>p", [["_dP]])

-- "Next greatest remapping ever : asbjornHaland" - The Primeagen
-- Copy/Yank to clippborad instead of internal in vim
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- 
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- ??? 
-- Delete characters befoer and after  
vim.keymap.set({"n","v"},"<leader>d", [["_d]])
-- Same of pasting 
vim.keymap.set({"n","v"},"<leader>p", [["+p]])

-- Set exit of insert mode
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- ??? 
-- "Next greatest remapping ever : asbjornHaland" - The Primeagen
-- Copy/Yank to clippborad instead of internal in vim
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- 
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- ??? 
-- Delete characters befoer and after  
vim.keymap.set({"n","v"},"<leader>d", [["_d]])

-- Do same for insert mode 
vim.keymap.set("i","<C-S-v>", [["+<C-v>]])

vim.keymap.set("i", "jk", "<Esc>")


-- First remove the use of some standard keymappings..
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<Tab>cc", "<nop>")
vim.keymap.set("n", "<Tab>co", "<nop>")
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- ?
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)



-- Quick fix list.. (what is that??)
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


-- Quick and dirty way of :source a file
--vim.keymap.set("n", "<leader>", function()
--    vim.cmd("so")
--end)





