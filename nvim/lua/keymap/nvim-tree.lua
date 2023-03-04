
local api = require "nvim-tree.api"
local M = {}


vim.keymap.set({'n','v'},'--',api.tree.open, {
	desc = 'nvim-tree: Toggle Tree',
	noremap =true,	
})

vim.keymap.set({'n','v'},'<Tab>i',api.tree.close, {
	desc = 'nvim-tree: Close Tree',
	noremap =true,	
})

-- Se https://github.com/nvim-tree/nvim-tree.lua/wiki/Migrating-To-on_attach for
-- setup
M.on_attach = function(bufnr)
--	local api = require('nvim-tree.api')
	local opts = function(desc)
		return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true } 
	end

	-- Key mapping
	-- Set folder as root
	vim.keymap.set('n', '<C-ö>', api.tree.change_root_to_node,          opts('CD'))
	-- Rename file/folder inplace
	vim.keymap.set('n', 'r', api.fs.rename_sub,                     opts('Rename: Omit Filename'))
	-- Open file in new tab
	vim.keymap.set('n', '<C-t>', api.node.open.tab,                     opts('Open: New Tab'))
	-- Open file vertical
	vim.keymap.set('n', 'v', api.node.open.vertical,                opts('Open: Vertical Split'))
	-- Hpen file horizontal
	vim.keymap.set('n', 'x', api.node.open.horizontal,              opts('Open: Horizontal Split'))
	-- Close folder
	vim.keymap.set('n', '<BS>',  api.node.navigate.parent_close,        opts('Close Directory'))
	-- Preview, would be nice if this was in a float.. 
	vim.keymap.set('n', 'p', api.node.open.preview,                 opts('Open Preview'))
	-- Move to next sibling file/folder
	vim.keymap.set('n', '>',     api.node.navigate.sibling.next,        opts('Next Sibling'))
	-- Move to previous sibling file/folder
	vim.keymap.set('n', '<',     api.node.navigate.sibling.prev,        opts('Previous Sibling'))
	-- Run command with path after..
	vim.keymap.set('n', '.',     api.node.run.cmd,                      opts('Run Command'))
	-- Go up one layer
	vim.keymap.set('n', '-',     api.tree.change_root_to_parent,        opts('Up'))
	-- Create file/folder
	vim.keymap.set('n', 'a',     api.fs.create,                         opts('Create'))
	-- View only parent folders and sibling files/folders
	vim.keymap.set('n', 'B',     api.tree.toggle_no_buffer_filter,      opts('Toggle No Buffer'))
	-- COpy ??????
	vim.keymap.set('n', 'c',     api.fs.copy.node,                      opts('Copy'))
	-- Show only files with a git status
	vim.keymap.set('n', 'C',     api.tree.toggle_git_clean_filter,      opts('Toggle Git Clean'))
	-- Delete file/folder
	vim.keymap.set('n', 'd',     api.fs.remove,                         opts('Delete'))
	-- Move file/folder to trash
	vim.keymap.set('n', 'D',     api.fs.trash,                          opts('Trash'))
	-- Expand all
	vim.keymap.set('n', 'E',     api.tree.expand_all,                   opts('Expand All'))
	-- Clear live filter
	vim.keymap.set('n', 'F',     api.live_filter.clear,                 opts('Clean Filter'))
	-- Filter files
	vim.keymap.set('n', 'f',     api.live_filter.start,                 opts('Filter'))
	-- See all keymaps (for nvim-tree)
	vim.keymap.set('n', 'g?',    api.tree.toggle_help,                  opts('Help'))
	-- Copy absolute path to clippboard
	vim.keymap.set('n', 'gy',    api.fs.copy.absolute_path,             opts('Copy Absolute Path'))
	-- Move to last sibling file/folder
	vim.keymap.set('n', 'J',     api.node.navigate.sibling.last,        opts('Last Sibling'))
	-- Move to fist sibliing file/folder
	vim.keymap.set('n', 'K',     api.node.navigate.sibling.first,       opts('First Sibling'))
	-- Set mark on file (like bookmark)
	vim.keymap.set('n', 'm',     api.marks.toggle,                      opts('Toggle Bookmark'))
	-- Open file for editing
	vim.keymap.set('n', 'o',     api.node.open.edit,                    opts('Open'))
	-- Go to parent folder
	vim.keymap.set('n', 'P',     api.node.navigate.parent,              opts('Parent Directory'))
	-- Close nvim-tree
	vim.keymap.set('n', '<Tab>q',     api.tree.close,                        opts('Close'))
	-- Reload tree
	vim.keymap.set('n', 'R',     api.tree.reload,                       opts('Refresh'))
	-- Run file/folder (opens them in files mostly)
	vim.keymap.set('n', 's',     api.node.run.system,                   opts('Run System'))
	-- Collapse all
	vim.keymap.set('n', 'W',     api.tree.collapse_all,                 opts('Collapse'))
	-- Copy filename
	vim.keymap.set('n', 'y',     api.fs.copy.filename,                  opts('Copy Name'))
	-- Copy relative file path (from root node)
	vim.keymap.set('n', 'Y',     api.fs.copy.relative_path,             opts('Copy Relative Path'))
	-- Open folder
	vim.keymap.set('n', '<CR>',  api.node.open.edit,                    opts('Open'))


	-- Move to changed files
	-- Git move to next 
	vim.keymap.set('n', '<C-,>',    api.node.navigate.git.next,            opts('Next Git'))
	-- Git move to previous
	vim.keymap.set('n', '<C-.>',    api.node.navigate.git.prev,            opts('Prev Git'))


	-- Remove <Tab> as default preview
	vim.keymap.set('n', '<Tab>', '', { buffer = bufnr })
	vim.keymap.del('n', '<Tab>', { buffer = bufnr })

end

return M
