-- Tab manipulation

-- Open new tab with a blank file in the current directory.
vim.keymap.set({"n","v"},"<tab>tt",":tabnew<CR>")
-- Got to next tab ! 
vim.keymap.set({"n","v"},"ää",":tabnext<CR>")
-- Got to previous tab ! 
vim.keymap.set({"n","v"},"öö",":tabprevious<CR>")
-- Close all tabs except current
vim.keymap.set({"n","v"},"<tab>co",":tabonly<CR>")
-- Close current tab
vim.keymap.set({"n","v"},"<tab>cc",":tabclose<CR>")

