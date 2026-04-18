vim.api.nvim_create_autocmd("InsertEnter", {
    once = true,
    callback = function()
        vim.cmd.packadd("blink.cmp")
        require("blink.cmp").setup({
            keymap = {
                preset = "default",
                ["<C-k>"] = { "select_prev", "fallback" },
                ["<C-j>"] = { "select_next", "fallback" },

                ["<CR>"] = { "accept", "fallback" },

                ["<C-e>"] = { "cancel", "fallback" },

                ["<Tab>"] = { "snippet_forward", "fallback" },
                ["<S-Tab>"] = { "snippet_backward", "fallback" },
            },
            completion = {
                menu = {
                    auto_show = true,
                },
            },
            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
            },
        })
    end,
})
