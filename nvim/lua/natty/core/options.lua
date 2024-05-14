local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

--line wrapping
opt.wrap = false

--search settings
opt.ignorecase = true
opt.smartcase = true

--cursor line

--appearance
opt.termguicolors = true
opt.background = "dark"

--backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

--splitwindow
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
