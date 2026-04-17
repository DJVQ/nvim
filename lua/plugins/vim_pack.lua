vim.pack.add({
        "https://www.github.com/lewis6991/gitsigns.nvim",
        "https://www.github.com/nvim-tree/nvim-tree.lua",
	    {
		    src = "https://github.com/nvim-treesitter/nvim-treesitter",
		    branch = "main",
		    build = ":TSUpdate",
	    },
        "https://www.github.com/neovim/nvim-lspconfig",
        "https://www.github.com/ibhagwan/fzf-lua",
        "https://github.com/mason-org/mason.nvim",
        "https://www.github.com/neovim/nvim-lspconfig",
        "https://github.com/creativenull/efmls-configs-nvim",
        {
                src = "https://github.com/saghen/blink.cmp",
                version = vim.version.range("1.*"),
        },
})

local function packadd(name)
        vim.cmd("packadd " .. name)
end
packadd("nvim-treesitter")
packadd("gitsigns.nvim")
packadd("nvim-tree.lua")
packadd("nvim-lspconfig")
packadd("fzf-lua")
packadd("mason.nvim")
packadd("nvim-lspconfig")
packadd("efmls-configs-nvim")
packadd("blink.cmp")
