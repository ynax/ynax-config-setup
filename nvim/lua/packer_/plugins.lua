

return require('packer').startup(function(use)
	--packer  can manage itself 
	use 'wbthomason/packer.nvim'
	-- Homescreen/Startup screen
	-- Either alpha-nvim or 
	-- dashboard-nvim
	use {
		'goolord/alpha-nvim',
		config = function ()
			require'alpha'.setup(require'alpha.themes.dashboard'.config)
		end
	}

	-- Telescope for finding stuff 
	use'nvim-telescope/telescope.nvim'

	-- Trouble for warnings and other erros messages
	use{
		'folke/trouble.nvim', 
		config = function()			
			require('trouble').setup {
				icons = true,
				-- your configuration comes here
				-- or leave it empty to use default settings
				-- refer to the configuration selection below
			}
		end
		}
	-- Todos
	use'folke/todo-comments.nvim'

	-- Barbar, tabs/bars for NVIM
	use {'romgrk/barbar.nvim'}

	-- Tresitter, im good 
	-- use'nvim-tree/nvim-tree.lua'

	-- Terminals in nvim
	use {"akinsho/toggleterm.nvim", tag = '*'}
	
	-- Lualine, window information 
	-- https://github.com/nvim-lualine/lualine.nvim
	use'nvim-lualine/lualine.nvim'

	-- Gitgutter to show new/edited/removed lines in files
	-- Dont use Gitgutter (uses vim) instead use `gitsigns.nvim` 
	-- use'airblade/vim-gitgutter'
	use'lewis6991/gitsigns.nvim'

	-- Indentation: Show indentation lines 
	use'lukas-reineke/indent-blankline.nvim'

	-- Markdown preview
	-- install without yarn or npm
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})
	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

	-- Treesitter! Better syntax highlighting! 
	use('nvim-treesitter/nvim-treesitter', {run=':TSUpdate'})
	-- Treesitter playground, very nice to see groupings for hightlighting
	-- Use when actually needed 
	-- use('nvim-treesitter/playground')


	-- treesitter context
	use 'nvim-treesitter/nvim-treesitter-context'
	
	-- Undotree, like a git but for single files and always active. Can go 
	-- back within a session to see edits and forks.. Very nice if used
	use'mbbill/undotree'

	-- Harpoon, to quickly move between files! 
	use'ThePrimeagen/Harpoon'
	
	-- Move anywhere in 4 strokes! 
	-- Easymotion-vim is entierly written in vimscript, and I don't like 
	-- that...
	-- Instead we use [Hop](https://github.com/phaazon/hop.nvim)
	use {
		'phaazon/hop.nvim',
		branch = 'v2', -- optional but strongly recommended
--		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
--			require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
--		end
	}

	-- Git pluggin for vim. Or, Vim plugnin for Git ? 
	use'tpope/vim-fugitive'

	-- Surround, a plugin to swiftly surround a word and marked words
	use'tpope/vim-surround'

	-- Better hightlighting
	use { 'm-demare/hlargs.nvim',
		requires = { 'nvim-treesitter/nvim-treesitter' }
	}

	-- Hide color column when not available
	use "m4xshen/smartcolumn.nvim"

	-- See colors directly in NVIM! 
	use'norcalli/nvim-colorizer.lua'

	-- COLOR THEMES / COLOR SCALES 
	-- A very nice theme! 
	use'folke/tokyonight.nvim'
	-- Looks like something from Atom.. 
	use'arcticicestudio/nord-vim'

	-- Rust crates 
	use {
		'saecki/crates.nvim',
	}

	-- Faster NVIM startup times.. ? 
	use("nathom/filetype.nvim")

	-- LSP Setup
	-- Following this setup: https://sharksforarms.dev/posts/neovim-rust/
	use'neovim/nvim-lspconfig'
	-- Autocomplete framework
	use'hrsh7th/nvim-cmp'
	use({
		-- LSP completion
		'hrsh7th/cmp-nvim-lsp',
		-- cmp Snippet completion
		'hrsh7th/cmp-vsnip',
		-- cmp Path completion
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-buffer',
		after = {'hrsh7th/nvim-cmp'},
		requires = {'hrsh7th/nvim-cmp'}

	})
	
	-- Se hrsh7th other plugins for more great completion sources! 
	-- Snippet engine
	use'hrsh7th/vim-vsnip'
	-- Adds extra functionality over rust analyzer 
	use'simrat39/rust-tools.nvim'

	-- Extra ??? 
	use'nvim-lua/popup.nvim'
	use'nvim-lua/plenary.nvim'
end)
