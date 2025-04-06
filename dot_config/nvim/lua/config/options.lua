-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

-- if running linux it means I'm working remotely so we should use
--
if vim.loop.os_uname().sysname == "Linux" then
  vim.opt.clipboard = "osc52"
else
  vim.opt.clipboard = "unnamedplus"
end
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"
