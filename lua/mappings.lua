vim = vim

vim.g.mapleader = " "

-- Autocorrect q: to :q
vim.keymap.set("n", "q:", ":q", { noremap = true })

-- Easier window managment
vim.keymap.set("n", "<M-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<M-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<M-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<M-l>", "<C-w>l", { noremap = true })
vim.keymap.set("n", "<M-H>", "<C-w>H", { noremap = true })
vim.keymap.set("n", "<M-J>", "<C-w>J", { noremap = true })
vim.keymap.set("n", "<M-K>", "<C-w>K", { noremap = true })
vim.keymap.set("n", "<M-L>", "<C-w>L", { noremap = true })
vim.keymap.set("i", "<M-h>", "<ESC><C-w>h", { noremap = true })
vim.keymap.set("i", "<M-j>", "<ESC><C-w>j", { noremap = true })
vim.keymap.set("i", "<M-k>", "<ESC><C-w>k", { noremap = true })
vim.keymap.set("i", "<M-l>", "<ESC><C-w>l", { noremap = true })
vim.keymap.set("i", "<M-H>", "<ESC><C-w>H", { noremap = true })
vim.keymap.set("i", "<M-J>", "<ESC><C-w>J", { noremap = true })
vim.keymap.set("i", "<M-K>", "<ESC><C-w>K", { noremap = true })
vim.keymap.set("i", "<M-L>", "<ESC><C-w>L", { noremap = true })
vim.keymap.set("t", "<M-h>", "<C-\\><C-n><C-w>h", { noremap = true })
vim.keymap.set("t", "<M-j>", "<C-\\><C-n><C-w>j", { noremap = true })
vim.keymap.set("t", "<M-k>", "<C-\\><C-n><C-w>k", { noremap = true })
vim.keymap.set("t", "<M-l>", "<C-\\><C-n><C-w>l", { noremap = true })
vim.keymap.set("t", "<M-H>", "<C-\\><C-n><C-w>H", { noremap = true })
vim.keymap.set("t", "<M-J>", "<C-\\><C-n><C-w>J", { noremap = true })
vim.keymap.set("t", "<M-K>", "<C-\\><C-n><C-w>K", { noremap = true })
vim.keymap.set("t", "<M-L>", "<C-\\><C-n><C-w>L", { noremap = true })
vim.keymap.set("t", "<C-w>N", "<C-\\><C-n>", { noremap = true })

-- Yank to clipboard
vim.keymap.set("n", "Y", "\"+y$", { noremap = true })
vim.keymap.set("n", "yy", "\"+yy", { noremap = true })
vim.keymap.set("n", "yi\"", "\"+yi\"", { noremap = true })
vim.keymap.set("n", "yi'", "\"+yi'", { noremap = true })
vim.keymap.set("n", "yit", "\"+yit", { noremap = true })
vim.keymap.set("n", "yi(", "\"+yi(", { noremap = true })
vim.keymap.set("n", "yi[", "\"+yi[", { noremap = true })
vim.keymap.set("n", "yiw", "\"+yiw", { noremap = true })
vim.keymap.set("n", "yip", "\"+yip", { noremap = true })
vim.keymap.set("v", "y", "\"+y", { noremap = true })

-- Cut to clipboard
vim.keymap.set("n", "D", "\"+d$", { noremap = true })
vim.keymap.set("n", "dd", "\"+dd", { noremap = true })
vim.keymap.set("n", "di\"", "\"+di\"", { noremap = true })
vim.keymap.set("n", "di'", "\"+di'", { noremap = true })
vim.keymap.set("n", "dit", "\"+dit", { noremap = true })
vim.keymap.set("n", "di(", "\"+di(", { noremap = true })
vim.keymap.set("n", "di[", "\"+di[", { noremap = true })
vim.keymap.set("n", "diw", "\"+diw", { noremap = true })
vim.keymap.set("n", "dip", "\"+dip", { noremap = true })
vim.keymap.set("v", "d", "\"+d", { noremap = true })

-- Change to clipboard
vim.keymap.set("n", "C", "\"+c$", { noremap = true })
vim.keymap.set("n", "cc", "\"+cc", { noremap = true })
vim.keymap.set("n", "ci\"", "\"+ci\"", { noremap = true })
vim.keymap.set("n", "ci'", "\"+ci'", { noremap = true })
vim.keymap.set("n", "cit", "\"+cit", { noremap = true })
vim.keymap.set("n", "ci(", "\"+ci(", { noremap = true })
vim.keymap.set("n", "ci[", "\"+ci[", { noremap = true })
vim.keymap.set("n", "ciw", "\"+ciw", { noremap = true })
vim.keymap.set("n", "cip", "\"+cip", { noremap = true })
vim.keymap.set("v", "c", "\"+c", { noremap = true })

-- Paste from clipboard
vim.keymap.set("n", "p", "\"+p", { noremap = true })
vim.keymap.set("n", "P", "\"+P", { noremap = true })
vim.keymap.set("v", "p", "\"+p", { noremap = true })
vim.keymap.set("v", "P", "\"+P", { noremap = true })
