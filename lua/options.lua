-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- scrolling and line nums
vim.opt.number = true
vim.opt.scrolloff = 10

-- indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

-- backups and swaps
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

-- highlights
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- colors
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

vim.opt.cursorline = true
