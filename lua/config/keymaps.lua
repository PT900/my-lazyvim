-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

keymap.set("n", "x", '"_x', { noremap = true, silent = true, desc = "Delete single character" })
keymap.set("n", "<C-a>", "gg<S-v>G", { noremap = true, silent = true, desc = "Select All" })
keymap.set("n", "+", "<C-a>", { noremap = true, silent = true, desc = "Increment" })
keymap.set("n", "-", "<C-x>", { noremap = true, silent = true, desc = "Decrement" })
