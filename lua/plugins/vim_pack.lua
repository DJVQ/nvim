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
    {
        src = "https://github.com/saghen/blink.cmp",
        version = vim.version.range("1.*"),
    },
    { 
        src = "https://github.com/catppuccin/nvim",
        name = "catppuccin"
    },
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/nvim-lualine/lualine.nvim",
    "https://github.com/akinsho/toggleterm.nvim"
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
packadd("blink.cmp")
packadd("catppuccin")
packadd("nvim-web-devicons")
packadd("lualine.nvim")
packadd("toggleterm.nvim")
