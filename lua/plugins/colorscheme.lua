return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function ()
            -- load the colorscheme here
            -- vim.cmd([[colorscheme tokyonight]])
        end,
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true
    },
    {
        'goolord/alpha-nvim',
        dependencies = { 'echasnovski/mini.icons' },
        config = function ()
            require 'alpha'.setup(require 'alpha.themes.startify'.config)
        end
    },
}
