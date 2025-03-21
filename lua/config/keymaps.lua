-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

keymap.set("n", "x", '"_x', { noremap = true, silent = true, desc = "Delete single character" })
keymap.set("n", "<C-a>", "gg<S-v>G", { noremap = true, silent = true, desc = "Select All" })
keymap.set("n", "+", "<C-a>", { noremap = true, silent = true, desc = "Increment" })
keymap.set("n", "-", "<C-x>", { noremap = true, silent = true, desc = "Decrement" })
keymap.set("n", "<C-h>", "<Cmd>TmuxNavigateLeft<CR>", { noremap = true, silent = true, desc = "Window left" })
keymap.set("n", "<C-l>", "<Cmd>TmuxNavigateRight<CR>", { noremap = true, silent = true, desc = "Window right" })
keymap.set("n", "<C-j>", "<Cmd>TmuxNavigateDown<CR>", { noremap = true, silent = true, desc = "Window down" })
keymap.set("n", "<C-k>", "<Cmd>TmuxNavigateUp<CR>", { noremap = true, silent = true, desc = "Window up" })
keymap.set("n", "yc", "yy<Cmd>normal gcc<CR>p") -- Duplicate a line and comment out the first line
-- Delete word with Ctrl+Backspace
keymap.set("c", "<C-BS>", "<C-W>", { noremap = true, silent = true })
keymap.set("i", "<C-BS>", "<C-W>", { noremap = true, silent = true })
keymap.set("c", "<C-H>", "<C-W>", { noremap = true, silent = true })
keymap.set("i", "<C-H>", "<C-W>", { noremap = true, silent = true })
