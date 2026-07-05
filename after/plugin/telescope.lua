local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>pf', builtin.find_files)
vim.keymap.set('n', '<leader>ps', builtin.live_grep)
vim.keymap.set('n', '<leader>pr', builtin.oldfiles)

-- Searches for the visually selected word
vim.keymap.set("v", "<leader>ps", builtin.grep_string)

require('telescope').setup
{
    defaults = 
    {
        layout_strategy = 'vertical'
    },
}

