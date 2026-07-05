vim.api.nvim_create_user_command('P4edit', 
    function(opts)
        vim.api.nvim_command("!p4 edit -c default " .. vim.fn.expand('%:p'))
    end,
    {nargs = 0}
)

vim.keymap.set("n", "<leader>cc", vim.cmd.P4edit)
