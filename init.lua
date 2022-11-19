if vim.g.vscode then
    -- VSCode extensions
else
    -- Ordinary Neovim
end

require("user.plugins-setup")
require("user.core.options")
require("user.core.keymaps")
require("user.core.colorscheme")
require("user.plugins.comment")
require("user.plugins.nvim-tree")

