-- Tab manipulation

-- Open new tab with a blank file in the current directory.
vim.keymap.set({"n","v"},"<tab>tt","<cmd>tabnew<CR>")
-- Got to next tab ! 
vim.keymap.set({"n","v"},"ää","<cmd>tabnext<CR>")
-- Got to previous tab ! 
vim.keymap.set({"n","v"},"öö","<cmd>abprevious<CR>")
-- Close all tabs except current
vim.keymap.set({"n","v"},"<tab>co","<cmd>tabonly<CR>")
-- Close current tab
vim.keymap.set({"n","v"},"<tab>cc","<cmd>tabclose<CR>")

