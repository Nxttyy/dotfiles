return {
	"tpope/vim-dispatch",
	config = function()
		-- Function to compile and run the C code with stdbuf
		function _G.compile_and_run()
			local filename = vim.fn.expand("%:r")
			vim.cmd("Dispatch gcc % -o " .. filename .. " && stdbuf -oL ./" .. filename)
		end

		-- Set the key mappings after the plugin is loaded
		vim.api.nvim_set_keymap("n", "<F5>", ":lua compile_and_run()<CR>", { noremap = true, silent = true })

		-- Add a key mapping to close the quickfix window manually
		vim.api.nvim_set_keymap("n", "<F6>", ":cclose<CR>", { noremap = true, silent = true })
	end,
}
