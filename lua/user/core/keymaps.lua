-- Use space as the leader key
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local api = require("Comment.api")

-- General Keymaps
keymap.set("i", "jk", "<ESC>") -- Use jk in insert mode to exit insert mode

keymap.set("n", "<F3>", ":nohl<CR>") -- Remove highlight

keymap.set("n", "<leader>\\", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>-", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>=", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>w", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab

-- Ctrl-s for saving
keymap.set("n", "<C-s>", ":w<CR>") -- Save current file
keymap.set("i", "<C-s>", "<ESC>:w<CR>") -- Save current file

-- Comment
keymap.set("n", "<C-_>", api.toggle.linewise.current) -- comment line with Ctrl + /

-- Maximizer
keymap.set("n", "<leader>m", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Telescope
-- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
-- find string in current working directory as you type
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
-- find string under cursor in current working directory
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
-- list open buffers in current neovim instance
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
-- list available help tags
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- Quit
keymap.set("n", "<leader>q", "<CMD>lua require('user.utils.functions').smart_quit()<CR>")
