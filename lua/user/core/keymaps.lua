-- Use space as the leader key
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local api = require('Comment.api')

-- General Keymaps
keymap.set("i", "jk", "<ESC>") -- Use jk in insert mode to exit insert mode

keymap.set("n", "<F3>", ":nohl<CR>") -- Remove highlight

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab

-- Comment
keymap.set("n", "<C-_>", api.toggle.linewise.current) -- comment line with Ctrl + /

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
