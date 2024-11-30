-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Insert Mode Keymaps
vim.keymap.set("i", "jk", "<Esc>")

-- Normal Mode Keymaps
vim.keymap.set("n", "-", "ddp")
vim.keymap.set("n", "_", "ddkkp")
vim.keymap.set("n", "<Leader>w", ":w<CR>")
