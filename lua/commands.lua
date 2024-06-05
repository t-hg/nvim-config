vim = vim

vim.api.nvim_create_user_command("Q", ":q", {})
vim.api.nvim_create_user_command("W", ":w", {})
vim.api.nvim_create_user_command("EditConfig", ":cd $HOME/.config/nvim | e init.lua", {})
vim.api.nvim_create_user_command("ReloadConfig", ":source $HOME/.config/nvim/init.lua", {})
vim.api.nvim_create_user_command("TrimLeadingWhitespaces", "<line1>,<line2>s/^\\s*// | noh", {range = "%"})
vim.api.nvim_create_user_command("TrimTrailingWhitespaces", "<line1>,<line2>s/\\s*$// | noh", {range = "%"})
vim.api.nvim_create_user_command("Redact", "norm gvr█", {range = true})
vim.api.nvim_create_user_command("Ellipsis", "norm gvc[...]", {range = true})
