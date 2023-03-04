
-- Toggle undo tree by leader u 
-- Saves previous changes for a file, can go back and forth like with git 
-- branches...
vim.keymap.set("n","<leader>u",vim.cmd.UndotreeToggle) 
