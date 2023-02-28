

-- Key maps for barbar plugin! 
local map = vim.keymap.set
local opts = { noremap = true, silent = true }


-- Close current tab
map("n","<C-c>","<Cmd>BufferClose<cr>", opts)


-- Move/Goto next tab ( dot )
map("n","<C-.>","<Cmd>BufferNext<cr>", opts)
-- Move/Goto previous tab ( comma ) 
map("n","<C-,>","<Cmd>BufferPrevious<cr>", opts)

-- Move tab to next position ( dot )
map("n","<A-.>","<Cmd>BufferMoveNext<cr>", opts)
-- Move tab to previous position ( comma )
map("n","<A-,>","<Cmd>BufferMovePrevious<cr>", opts)
