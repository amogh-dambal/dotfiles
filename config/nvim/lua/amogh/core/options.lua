-- use tree-style tabs when looking at directories 
vim.cmd("let g:netrw_liststyle = 3")

-- start options configuration
local opt = vim.opt

-- use relative and absolute line numbers
opt.number = true

-- tabs and indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

-- search
opt.ignorecase = true
opt.smartcase = true

-- colors
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split behavior
opt.splitright = true
opt.splitbelow = true

opt.swapfile = false
