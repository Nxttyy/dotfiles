-- Standalone plugins with less than 10 lines of config go here
return {

	{
		"echasnovski/mini.nvim",
		version = false,
		config = function()
			require("mini.surround").setup({
				mappings = {
					add = "sa", -- Add surrounding
					delete = "sd", -- Delete surrounding
					replace = "sr", -- Replace surrounding
					find = "sf", -- Find surrounding
					find_left = "sF", -- Find surrounding to the left
					highlight = "sh", -- Highlight surrounding
					update_n_lines = "sn", -- Update `n_lines`
				},
			})
		end,
	},
	{
		-- Tmux & split window navigation
		-- 'christoomey/vim-tmux-navigator',
	},
	{
		-- Detect tabstop and shiftwidth automatically
		"tpope/vim-sleuth",
	},
	{
		-- Powerful Git integration for Vim
		"tpope/vim-fugitive",
	},
	{
		-- GitHub integration for vim-fugitive
		"tpope/vim-rhubarb",
	},
	{
		-- Hints keybinds
		"folke/which-key.nvim",
	},
	{
		-- Autoclose parentheses, brackets, quotes, etc.
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		opts = {},
	},
	{
		-- Highlight todo, notes, etc in comments
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		-- High-performance color highlighter
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
}
