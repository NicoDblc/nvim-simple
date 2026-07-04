vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Moving selected text up and down.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Do not overwrite the paste buffer when pasting.
vim.keymap.set("x", "<leader>p", "\"_dP")

-- -- Copy to the system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- Ease of use
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>;", "A;<ESC>")
vim.keymap.set("n", "<leader>z", "zfa}")

-- Auto commands
vim.api.nvim_create_autocmd("TextYankPost", {
    pattern  = "*",
    callback = function() vim.highlight.on_yank { timeout = 400 } end
})

