require("natty.plugins-setup")
require("natty.core.keymaps")
require("natty.core.options")
require("natty.core.colorscheme")


require("natty.plugins.nvim-cmp")

require("natty.plugins.nvim-tree")

--lsp
-- require("natty.plugins.lsp.mason")
require("natty.plugins.mason")
require("natty.plugins.lspconfig")
require("natty.plugins.lsp-saga")

-- enable comment
require("Comment").setup()



