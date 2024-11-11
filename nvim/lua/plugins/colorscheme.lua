return {
	-- Decay colorscheme
	-- {
	--   "decaycs/decay.nvim",
	--   name = "decay",
	--   lazy = false,  -- Load the colorscheme immediately
	--   priority = 1000,  -- Ensure it's loaded before other UI plugins
	--   config = function ()
	--     vim.cmd.colorscheme "decay-default"
	--   end
	-- }
	--

	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		lazy = false, -- Load the colorscheme immediately
		priority = 1000, -- Ensure it's loaded before other UI plugins
		config = function()
			vim.cmd.colorscheme("kanagawa") -- Set kanagawa as the colorscheme
		end,
	},
}
