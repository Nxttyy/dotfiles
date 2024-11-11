local ft = vim.api.nvim_create_augroup("filetype_gotmpl", { clear = true })
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	group = ft,
	pattern = "*.tmpl",
	callback = function()
		vim.bo.filetype = "html"
	end,
})
