-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

map("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>")
map("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>")
map("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>")
map("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>")
map("n", "cp", "<Cmd>Cppath<CR>")
