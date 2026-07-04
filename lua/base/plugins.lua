-- A function to add gh to the beggining of the plugins paths
local function gh(repo) return 'https://github.com/' ..  repo end

-- Utilities
vim.pack.add { gh 'tpope/vim-surround' }
vim.pack.add { gh 'windwp/nvim-autopairs' }
require("nvim-autopairs").setup {}

-- Telescope
local telescope_plugins = {
    gh 'nvim-lua/plenary.nvim',
    gh 'nvim-telescope/telescope.nvim',
    gh 'nvim-telescope/telescope-ui-select.nvim',
}
vim.pack.add(telescope_plugins)

-- Themes
vim.pack.add { gh 'zenbones-theme/zenbones.nvim' }
vim.pack.add { gh 'rktjmp/lush.nvim' } -- zenbones dependency.
