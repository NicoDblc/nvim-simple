vim.cmd("set background=light")

-- Some languages will appear as comments if they're unknowned. This is the weak solution.
-- I must try to set the language feature per language.
vim.g.zenwritten = { italic_strings = false , italic_comments = false, darken_comments = 100}

vim.cmd.colorscheme('zenwritten')
