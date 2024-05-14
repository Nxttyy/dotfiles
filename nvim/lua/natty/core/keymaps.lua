
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- nvim-tree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')



