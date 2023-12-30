-- Basic shortcuts
vim.g.mapleader = ","
vim.keymap.set("n", ";", ":")
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>w", "C-w")

-- Windowpanes
vim.o.splitbelow		= true
vim.o.splitright		= true
vim.keymap.set("n", "<leader>w", "<C-w>",  {noremap = true, silent = true})
vim.keymap.set("n", "<C-h>", "<C-w>h",  {noremap = true, silent = true})
vim.keymap.set("n", "<C-j>", "<C-w>j",  {noremap = true, silent = true})
vim.keymap.set("n", "<C-k>", "<C-w>k",  {noremap = true, silent = true})
vim.keymap.set("n", "<C-l>", "<C-w>l",  {noremap = true, silent = true})

-- Tabs
vim.keymap.set("n", "<leader>tn", ":tab split<CR>",  {noremap = true, silent = true})
vim.keymap.set("n", "<C-S-tab>", ":tabp<CR>",  {noremap = true, silent = true})
vim.keymap.set("n", "<C-tab>", ":tabn<CR>",  {noremap = true, silent = true})
vim.keymap.set("n", "<S-h>", ":tabmove -1<CR>",  {noremap = true, silent = true})
vim.keymap.set("n", "<S-l>", ":tabmove +1<CR>",  {noremap = true, silent = true})

-- Clipboard
vim.opt.clipboard = 'unnamedplus'

-- Zen mode
vim.keymap.set("n", "<leader>z", ":ZenMode<CR>",  {noremap = true, silent = true})
