-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

-- if running linux it means I'm working remotely so we should use
--
vim.g.mapleader = ","
vim.g.snacks_animate = false
vim.g.lazyvim_prettier_needs_config = false
vim.opt.autoread = true

vim.api.nvim_create_user_command("Cppath", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})
