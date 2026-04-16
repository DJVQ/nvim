vim.pack.add({
        "https://www.github.com/lewis6991/gitsigns.nvim",
        "https://www.github.com/nvim-tree/nvim-tree.lua",
        "https://www.github.com/neovim/nvim-lspconfig",
        "https://github.com/mason-org/mason.nvim",
        {
                src = "https://github.com/saghen/blink.cmp",
                version = vim.version.range("1.*"),
        },
})

local function packadd(name)
        vim.cmd("packadd " .. name)
end
packadd("gitsigns.nvim")
packadd("nvim-tree.lua")
packadd("nvim-lspconfig")
packadd("mason.nvim")
packadd("blink.cmp")
