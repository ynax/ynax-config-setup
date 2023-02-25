-- Set leader key to space 
vim.g.mapleader = " "
-- Set how we exit a file and return to dir view..
vim.keymap.set("n","<leader>pv",vim.cmd.Ex)

require('ynx.remap.window')
require('ynx.remap.tabs')
