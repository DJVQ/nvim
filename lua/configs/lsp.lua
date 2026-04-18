vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
})

-- lua
vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
                path = vim.split(package.path, ";"),
            },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
            format = {
                enable = true,
            },
        },
    },
})
vim.lsp.enable("lua_ls")

-- c c++
vim.lsp.config("clangd", {})
vim.lsp.enable("clangd")

-- go
vim.filetype.add({
    filename = {
        ["go.work"] = "gowork",
    },
    extension = {
        gtpl = "gotmpl",
    },
})
vim.lsp.config("gopls", {
    settings = {
        gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            staticcheck = true,
        },
    },
})
vim.lsp.enable("gopls")

-- lazy lsp
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format()
    end,
    pattern = "*",
})

vim.api.nvim_create_autocmd("BufReadPost", {
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})
