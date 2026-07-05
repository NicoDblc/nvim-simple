require("base.remap")
require("base.formating")
require("base.plugins")

vim.loader.enable()

vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.cursorline = true
vim.o.scrolloff = 10

-- Auto commands
vim.api.nvim_create_autocmd("TextYankPost", {
    pattern  = "*",
    callback = function() vim.highlight.on_yank { timeout = 400 } end
})

