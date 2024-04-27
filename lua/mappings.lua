vim = vim

vim.g.mapleader = " "

-- Autocorrect q: to :q
vim.keymap.set("n", "q:", ":q", { noremap = true })

-- Easier window managment in terminal mode
vim.keymap.set("t", "<C-w>N", "<C-\\><C-n>", { noremap = true })
vim.keymap.set("t", "<C-w>h", "<C-\\><C-n><C-w>h", { noremap = true })
vim.keymap.set("t", "<C-w>j", "<C-\\><C-n><C-w>j", { noremap = true })
vim.keymap.set("t", "<C-w>k", "<C-\\><C-n><C-w>k", { noremap = true })
vim.keymap.set("t", "<C-w>l", "<C-\\><C-n><C-w>l", { noremap = true })
vim.keymap.set("t", "<C-w>H", "<C-\\><C-n><C-w>H", { noremap = true })
vim.keymap.set("t", "<C-w>J", "<C-\\><C-n><C-w>J", { noremap = true })
vim.keymap.set("t", "<C-w>K", "<C-\\><C-n><C-w>K", { noremap = true })
vim.keymap.set("t", "<C-w>L", "<C-\\><C-n><C-w>L", { noremap = true })

-- Yank to clipboard
vim.keymap.set("n", "Y", "\"+y$", { noremap = true })
vim.keymap.set("n", "yy", "\"+yy", { noremap = true })
vim.keymap.set("n", "yi\"", "\"+yi\"", { noremap = true })
vim.keymap.set("n", "yi'", "\"+yi'", { noremap = true })
vim.keymap.set("n", "yit", "\"+yit", { noremap = true })
vim.keymap.set("n", "yi(", "\"+yi(", { noremap = true })
vim.keymap.set("n", "yi[", "\"+yi[", { noremap = true })
vim.keymap.set("v", "y", "\"+y", { noremap = true })

-- Cut to clipboard
vim.keymap.set("n", "D", "\"+d$", { noremap = true })
vim.keymap.set("n", "dd", "\"+dd", { noremap = true })
vim.keymap.set("n", "di\"", "\"+di\"", { noremap = true })
vim.keymap.set("n", "di'", "\"+di'", { noremap = true })
vim.keymap.set("n", "dit", "\"+dit", { noremap = true })
vim.keymap.set("n", "di(", "\"+di(", { noremap = true })
vim.keymap.set("n", "di[", "\"+di[", { noremap = true })
vim.keymap.set("v", "d", "\"+d", { noremap = true })

-- Paste from clipboard
vim.keymap.set("n", "p", "\"+p", { noremap = true })
vim.keymap.set("n", "P", "\"+P", { noremap = true })
vim.keymap.set("v", "p", "\"+p", { noremap = true })
vim.keymap.set("v", "P", "\"+P", { noremap = true })
