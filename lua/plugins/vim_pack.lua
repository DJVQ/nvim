vim.pack.add({
    {
        src = "https://github.com/akinsho/toggleterm.nvim",
        name = "toggleterm.nvim"
    },
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        branch = "main",
        build = ":TSUpdate",
        name = "nvim-treesitter"
    },
    {
        src = "https://github.com/lewis6991/gitsigns.nvim",
        name = "gitsigns.nvim"
    },
    {
        src = "https://github.com/nvim-tree/nvim-tree.lua",
        name = "nvim-tree.lua"
    },
    {
        src = "https://github.com/ibhagwan/fzf-lua",
        name = "fzf-lua"
    },
    {
        src = "https://github.com/mason-org/mason.nvim",
        name = "mason.nvim"
    },
    {
        src = "https://github.com/saghen/blink.cmp",
        version = vim.version.range("1.*"),
        name = "blink.cmp"
    },
    {
        src = "https://github.com/catppuccin/nvim",
        name = "catppuccin"
    },
    {
        src = "https://github.com/nvim-tree/nvim-web-devicons",
        name = "nvim-web-devicons"
    },
    {
        src = "https://github.com/nvim-lualine/lualine.nvim",
        name = "lualine.nvim"
    }
})
