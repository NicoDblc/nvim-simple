local builtin = require 'telescope.builtin'
-- vim.keymap.set('n', '<leader>pf', builtin.find_files)
-- vim.keymap.set('n', '<leader>ps', builtin.live_grep)
vim.keymap.set('n', '<leader>pf', '<Cmd>FzfLua files<CR>')
vim.keymap.set('n', '<leader>ps', '<Cmd>FzfLua live_grep<CR>')
vim.keymap.set('n', '<leader>pr', builtin.oldfiles)

-- Searches for the visually selected word
vim.keymap.set("v", "<leader>ps", builtin.grep_string)

require('telescope').setup
{
    defaults = 
    {
        layout_strategy = 'vertical',
        file_ignore_patterns = 
        {
            "%.ico", "%.mp4", "%.exe", "%.pyc", "%.dll", "%.bin", 
            "%.uasset", "%.generated*", "%.uexp", "%.pak", "%.vcxproj.filters", "%.upak",
            "^Binaries/*", "^Intermediate/*", "^Build/*", "^DerivedDataCache/*"
        }
    },
}

