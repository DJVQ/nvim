vim.cmd("packadd nvim-treesitter")

require("nvim-treesitter").setup({
    ensure_installed = {
        "c", "lua", "python"
    },
    highlight = { enable = true },
    indent = { enable = true },
    folding = { enable = true },
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "c", "lua", "python" },
    callback = function()
        vim.wo.foldmethod = "expr"
        vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.wo.foldlevel = 99
        vim.wo.foldenable = true
        vim.wo.foldcolumn = "1"
    end,
})
