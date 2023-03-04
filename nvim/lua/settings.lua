
-- General NVIM settings

-- https://vi.stackexchange.com/questions/9366/set-formatoptions-in-vimrc-is-being-ignored
-- See ":h fo-table" for help
-- AUTO command (runs automatically on file open, for all files)
vim.cmd [[ autocmd FileType * set formatoptions-=o ]]

-- Set line numbering 
vim.opt.nu = true
vim.opt.relativenumber = true

--vim.opt.guicursor=""
vim.opt.smartindent =true -- Smart indenting 

vim.opt.swapfile = false -- Swap cache files

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8 -- Sets how many rows below/above active when scrolling 
vim.o.termguicolors = true
vim.opt.termguicolors = true
vim.opt.list = false -- Needed to make indent_blankline awesome! 

vim.opt.colorcolumn = "80" -- Line at X:s column

-- Specify split directions
vim.o.splitbelow = true
vim.o.splitright = true


-- Set tab views (shown,hidden, sometimes..)
vim.o.showtabline = 1 

-- Set how frequently the files are updated. This affects the following two 
-- things: 
-- 1. How often swapfiles are created  (if ture)
-- 2. When CursorHold is active
vim.o.updatetime = 50 

