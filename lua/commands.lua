vim = vim

vim.api.nvim_create_user_command("EditConfig", ":cd $HOME/.config/nvim | e init.lua", {})
vim.api.nvim_create_user_command("ReloadConfig", ":source $HOME/.config/nvim/init.lua", {})
