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

-- Fzf
local fzf_plugins = {
    gh 'ibhagwan/fzf-lua',
    gh 'nvim-tree/nvim-web-devicons'
}
vim.pack.add(fzf_plugins)

-- require"fzf-lua".setup({"telescope",winopts={preview={default="cat"}}})
require"fzf-lua".setup({"telescope","fzf-native",
        ignore_patterns = 
        {
            "%.ico", "%.mp4", "%.exe", "%.pyc", "%.dll", "%.bin", 
            "%.uasset", "%.generated*", "%.uexp", "%.pak", "%.vcxproj.filters", "%.upak",
            "^Binaries/*", "^Intermediate/*", "^Build/*", "^DerivedDataCache/*"
        },
	  fzf_colors = {
      true,   -- inherit fzf colors that aren't specified below from
              -- the auto-generated theme similar to `fzf_colors=true`
      ["fg"]          = { "fg", "CursorLine" },
      ["bg"]          = { "bg", "Normal" },
      ["hl"]          = { "fg", "Comment" },
      ["fg+"]         = { "fg", "Normal", "underline" },
      ["bg+"]         = { "bg", { "CursorLine", "Normal" } },
      ["hl+"]         = { "fg", "Statement" },
      ["info"]        = { "fg", "PreProc" },
      ["prompt"]      = { "fg", "Conditional" },
      ["pointer"]     = { "fg", "Exception" },
      ["marker"]      = { "fg", "Keyword" },
      ["spinner"]     = { "fg", "Label" },
      ["header"]      = { "fg", "Comment" },
      ["gutter"]      = "-1",
  },
})

-- Themes
vim.pack.add { gh 'zenbones-theme/zenbones.nvim' }
vim.pack.add { gh 'rktjmp/lush.nvim' } -- zenbones dependency.
